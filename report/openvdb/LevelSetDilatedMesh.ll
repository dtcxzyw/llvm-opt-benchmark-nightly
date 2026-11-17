Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetDilatedMesh?download=true
inline.NumInlined: 79535
inline.NumDeleted: 25229
loop-unroll.NumCompletelyUnrolled: 204
loop-unroll.NumRuntimeUnrolled: 278
loop-unroll.NumUnrolled: 953
begin_hunk_0_@_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvv:bb.a
.loopexit37:                                      ; preds = %bb.p, %.thread.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.cc, %.thread.i.i.i.i ], [ 8, %bb.p ]
  %.sroa.speculated.i.i = call noundef i64 @llvm.umin.i64(i64 %.1.i.i.i.i, i64 %i.bu)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.bg, ptr %8, align 8, !tbaa !2256
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.speculated.i.i, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !937
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.bg, ptr %i.ce, align 8, !tbaa !2256
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 4, ptr %i.cf, align 8, !tbaa !2259
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  invoke void @_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeINS1_35enumerable_thread_specific_iteratorINS1_17concurrent_vectorINS0_2d06paddedINS1_11ets_elementIN7openvdb5v13_04tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELm128EEENS1_23cache_aligned_allocatorISM_EEEESK_EEEEZNSA_5tools15ConvexVoxelizerINSA_4GridISK_EENSS_6lvlset28OpenTriangularPrismVoxelizerISV_NSA_4util15NullInterrupterEEESZ_E10iterateXYZILb0EEEvvE2OpKNS1_16auto_partitionerEE3runERKSR_RS13_RS15_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %.loopexit37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.cg = load i8, ptr %7, align 8, !tbaa !2253, !range !788, !noundef !789
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.r, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ci = load ptr, ptr %i.bs, align 8, !tbaa !2254 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !743
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(1232) %i.ci) #24, !inline_history !6428
  br label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit

_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit: ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN3tbb6detail2d126enumerable_thread_specificIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread

bb.t:                                             ; preds = %bb.m
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.x

bb.u:                                             ; preds = %.loopexit37
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.cp = load i8, ptr %7, align 8, !tbaa !2253, !range !788, !noundef !789
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.v, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24

bb.v:                                             ; preds = %bb.u
  %i.cr = load ptr, ptr %i.bs, align 8, !tbaa !2254 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !743
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(1232) %i.cr) #24, !inline_history !6428
  br label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24

_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24: ; preds = %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.x

bb.x:                                             ; preds = %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.co, %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24 ], [ %i.cn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN3tbb6detail2d126enumerable_thread_specificIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ab

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !2180 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i25, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i26, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !2182
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i26

_ZNSt6vectorIiSaIiEED2Ev.exit.i26:                ; preds = %bb.y, %.critedge
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %3, align 8, !tbaa !743
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !2228 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.de, null
  br i1 %.not.i.i27, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit29, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i26
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %3, ptr %i.a, align 8, !tbaa !2230
  %i.dg = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE14internal_eraseISH_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i28 unwind label %bb.aa, !inline_history !2231 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i28: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit29

bb.aa:                                            ; preds = %bb.z
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #33, !inline_history !2231
  unreachable

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit29: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i26, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread

_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread: ; preds = %bb.b, %bb.a, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit29, %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit
  ret void

bb.ab:                                            ; preds = %bb.x, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn16 = phi { ptr, i32 } [ %lpad.loopexit.split-lp54, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn, %bb.x ]
  resume { ptr, i32 } %.pn16
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE14setXYRangeDataERKj(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1791 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 3 uses
  %i.h = load float, ptr %i.c, align 4, !tbaa !1161 ; 4 uses
  %i.i = load float, ptr %i.b, align 4, !tbaa !1161 ; 4 uses
  %i.j = fcmp olt float %i.h, %i.i                ; 2 uses
  %..i.i.i.i = select i1 %i.j, ptr %i.c, ptr %i.b
  %i.k = load float, ptr %i.d, align 4, !tbaa !1161 ; 2 uses
  %i.l = select i1 %i.j, float %i.h, float %i.i
  %i.m = fcmp olt float %i.k, %i.l
  %..i.i3.i.i = select i1 %i.m, ptr %i.d, ptr %..i.i.i.i
  %i.n = load float, ptr %i.f, align 4, !tbaa !1161 ; 4 uses
  %i.o = load float, ptr %i.e, align 4, !tbaa !1161 ; 4 uses
  %i.p = fcmp olt float %i.n, %i.o                ; 2 uses
  %..i.i.i6.i = select i1 %i.p, ptr %i.f, ptr %i.e
  %i.q = load float, ptr %i.g, align 4, !tbaa !1161 ; 2 uses
  %i.r = select i1 %i.p, float %i.n, float %i.o
  %i.s = fcmp olt float %i.q, %i.r
  %..i.i3.i7.i = select i1 %i.s, ptr %i.g, ptr %..i.i.i6.i
  %i.t = load float, ptr %..i.i3.i7.i, align 4, !tbaa !1161 ; 2 uses
  %i.u = load float, ptr %..i.i3.i.i, align 4, !tbaa !1161 ; 2 uses
  %i.v = fcmp olt float %i.i, %i.h                ; 2 uses
  %..i.i.i.i23 = select i1 %i.v, ptr %i.c, ptr %i.b
  %i.w = select i1 %i.v, float %i.h, float %i.i
  %i.x = fcmp olt float %i.w, %i.k
  %..i.i3.i.i24 = select i1 %i.x, ptr %i.d, ptr %..i.i.i.i23
  %i.y = fcmp olt float %i.o, %i.n                ; 2 uses
  %..i.i.i6.i25 = select i1 %i.y, ptr %i.f, ptr %i.e
  %i.z = select i1 %i.y, float %i.n, float %i.o
  %i.aa = fcmp olt float %i.z, %i.q
  %..i.i3.i7.i26 = select i1 %i.aa, ptr %i.g, ptr %..i.i.i6.i25
  %i.ab = load float, ptr %..i.i3.i.i24, align 4, !tbaa !1161 ; 2 uses
  %i.ac = load float, ptr %..i.i3.i7.i26, align 4, !tbaa !1161 ; 2 uses
  %i.ad = fcmp olt float %i.t, %i.u
  %i.ae = select i1 %i.ad, float %i.t, float %i.u ; 2 uses
  %i.af = fcmp olt float %i.ab, %i.ac
  %i.ag = select i1 %i.af, float %i.ac, float %i.ab ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load i32, ptr %1, align 4, !tbaa !741   ; 3 uses
  store i32 %i.ai, ptr %i.ah, align 8, !tbaa !2224
  %i.aj = uitofp i32 %i.ai to float               ; 3 uses
  %i.ak = fdiv float 1.000000e+00, %i.aj          ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.ak, ptr %i.al, align 8, !tbaa !2260
  %i.am = icmp eq i32 %i.ai, 1
  br i1 %i.am, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.an = fadd float %i.ae, -5.000000e-04
  %i.ao = tail call noundef float @llvm.ceil.f32(float %i.an)
  %i.ap = fadd float %i.ag, 5.000000e-04
  %i.aq = tail call noundef float @llvm.floor.f32(float %i.ap)
  %i.ar = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %i.aq, i64 1
  %i.at = fptosi <2 x float> %i.as to <2 x i32>
  %i.au = sitofp <2 x i32> %i.at to <2 x float>
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit

bb.c:                                             ; preds = %bb.a
  %i.av = fadd nnan ninf float %i.aj, -1.000000e+00
  %i.aw = fmul nnan float %i.av, 5.000000e-01
  %i.ax = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.ag, i64 1
  %i.az = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bb = fsub <2 x float> %i.ay, %i.ba
  %i.bc = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.be = fdiv <2 x float> %i.bb, %i.bd
  %i.bf = fadd <2 x float> %i.be, <float -5.000000e-04, float 5.000000e-04> ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  %i.bh = tail call noundef float @llvm.ceil.f32(float %i.bg)
  %i.bi = extractelement <2 x float> %i.bf, i64 1
  %i.bj = tail call noundef float @llvm.floor.f32(float %i.bi)
  %i.bk = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.bj, i64 1
  %i.bm = fptosi <2 x float> %i.bl to <2 x i32>
  %i.bn = sitofp <2 x i32> %i.bm to <2 x float>
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bn, <2 x float> %i.ba)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit: ; preds = %bb.b, %bb.c
  %i.bp = phi <2 x float> [ %i.au, %bb.b ], [ %i.bo, %bb.c ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <2 x float> %i.bp, ptr %i.bq, align 4, !tbaa !1161
  %shift = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.bp
  %i.br = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bs = tail call noundef float @llvm.fabs.f32(float %i.br)
  %i.bt = fmul float %i.ak, %i.bs
  %i.bu = fadd float %i.bt, 5.000000e-01
  %i.bv = tail call noundef float @llvm.floor.f32(float %i.bu)
  %i.bw = fptoui float %i.bv to i32
  %i.bx = add i32 %i.bw, 1                        ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !2226
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ca = zext i32 %i.bx to i64
  tail call void @_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 noundef %i.ca, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MAXVALUEE)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cc = load i32, ptr %i.by, align 4, !tbaa !2226
  %i.cd = zext i32 %i.cc to i64
  tail call void @_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 noundef %i.cd, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MINVALUEE)
  tail call void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj0ELj1ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  tail call void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj1ELj2ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  tail call void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj2ELj0ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  tail call void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj3ELj4ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  tail call void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj4ELj5ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  tail call void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj5ELj3ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  tail call void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj0ELj3ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  tail call void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj1ELj4ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  tail call void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj2ELj5ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj0ELj1ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1791 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 5 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !741    ; 2 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14: ; preds = %bb.a
  %i.f = load float, ptr %i.b, align 4, !tbaa !1161 ; 4 uses
  %i.g = load float, ptr %i.c, align 4, !tbaa !1161 ; 4 uses
  %i.h = insertelement <2 x float> poison, float %i.f, i64 0
  %i.i = insertelement <2 x float> %i.h, float %i.g, i64 1
  %i.j = fadd <2 x float> %i.i, splat (float -5.000000e-04)
  %i.k = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.j)
  %i.l = fptosi <2 x float> %i.k to <2 x i32>
  %i.m = sitofp <2 x i32> %i.l to <2 x float>     ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 0
  %i.o = extractelement <2 x float> %i.m, i64 1
  %i.p = fcmp oeq float %i.n, %i.o
  br i1 %i.p, label %.loopexit, label %bb.b

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread: ; preds = %bb.a
  %i.q = uitofp i32 %i.d to float                 ; 5 uses
  %i.r = fadd nnan ninf float %i.q, -1.000000e+00
  %i.s = fmul nnan float %i.r, 5.000000e-01       ; 3 uses
  %i.t = load float, ptr %i.b, align 4, !tbaa !1161 ; 4 uses
  %i.u = load float, ptr %i.c, align 4, !tbaa !1161 ; 4 uses
  %i.v = insertelement <2 x float> poison, float %i.t, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.u, i64 1
  %i.x = insertelement <2 x float> poison, float %i.s, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = fsub <2 x float> %i.w, %i.y
  %i.aa = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = fdiv <2 x float> %i.z, %i.ab
  %i.ad = fadd <2 x float> %i.ac, splat (float -5.000000e-04)
  %i.ae = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ad)
  %i.af = fptosi <2 x float> %i.ae to <2 x i32>
  %i.ag = sitofp <2 x i32> %i.af to <2 x float>
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ag, <2 x float> %i.y) ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0
  %i.aj = extractelement <2 x float> %i.ah, i64 1
  %i.ak = fcmp oeq float %i.ai, %i.aj
  br i1 %i.ak, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14
  %i.al = fcmp olt float %i.g, %i.f
  %i.am = select i1 %i.al, float %i.g, float %i.f
  %i.an = fadd float %i.am, -5.000000e-04
  %i.ao = tail call noundef float @llvm.ceil.f32(float %i.an)
  %i.ap = fptosi float %i.ao to i32
  %i.aq = sitofp i32 %i.ap to float
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread
  %i.ar = fcmp olt float %i.u, %i.t
  %i.as = select i1 %i.ar, float %i.u, float %i.t
  %i.at = fsub float %i.as, %i.s
  %i.au = fdiv float %i.at, %i.q
  %i.av = fadd float %i.au, -5.000000e-04
  %i.aw = tail call noundef float @llvm.ceil.f32(float %i.av)
  %i.ax = fptosi float %i.aw to i32
  %i.ay = sitofp i32 %i.ax to float
  %i.az = tail call float @llvm.fmuladd.f32(float %i.q, float %i.ay, float %i.s)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15: ; preds = %bb.b, %bb.c
  %.pre-phi = phi float [ 1.000000e+00, %bb.b ], [ %i.q, %bb.c ]
  %i.ba = phi float [ %i.f, %bb.b ], [ %i.t, %bb.c ]
  %i.bb = phi float [ %i.g, %bb.b ], [ %i.u, %bb.c ]
  %i.bc = phi float [ %i.aq, %bb.b ], [ %i.az, %bb.c ] ; 2 uses
  %i.bd = fcmp olt float %i.ba, %i.bb
  %..i.i.i16 = select i1 %i.bd, ptr %i.c, ptr %i.b
  %i.be = load float, ptr %..i.i.i16, align 4, !tbaa !1161 ; 2 uses
  %i.bf = fcmp ugt float %i.bc, %i.be
  br i1 %i.bf, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit
  %storemerge27 = phi float [ %i.bc, %.lr.ph ], [ %i.dc, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit ] ; 5 uses
  %i.bk = load <2 x float>, ptr %i.b, align 4, !tbaa !1161 ; 3 uses
  %i.bl = load <2 x float>, ptr %i.c, align 4, !tbaa !1161
  %i.bm = fsub <2 x float> %i.bl, %i.bk           ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  %i.bo = extractelement <2 x float> %i.bm, i64 1
  %i.bp = fdiv float %i.bo, %i.bn
  %i.bq = extractelement <2 x float> %i.bk, i64 0
  %i.br = fsub float %storemerge27, %i.bq
  %i.bs = extractelement <2 x float> %i.bk, i64 1
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %i.bp, float %i.br, float %i.bs) ; 5 uses
  %i.bu = tail call float @llvm.fabs.f32(float %i.bt) ; 3 uses
  %i.bv = fcmp ueq float %i.bu, +inf
  br i1 %i.bv, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = load float, ptr %i.bg, align 8, !tbaa !2260
  %i.bx = load float, ptr %i.bh, align 4, !tbaa !2261
  %i.by = fsub float %storemerge27, %i.bx
  %i.bz = fmul float %i.bw, %i.by
  %i.ca = fadd float %i.bz, 5.000000e-01
  %i.cb = tail call noundef float @llvm.floor.f32(float %i.ca)
  %i.cc = fptoui float %i.cb to i32
  %i.cd = zext i32 %i.cc to i64
  %i.ce = load ptr, ptr %i.bi, align 8, !tbaa !1857
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cd ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !1161
  %i.ch = fcmp olt float %i.bt, %i.cg
  br i1 %i.ch, label %bb.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit

bb.f:                                             ; preds = %bb.e
  store float %i.bt, ptr %i.cf, align 4, !tbaa !1161
  %i.ci = load <2 x float>, ptr %i.b, align 4, !tbaa !1161 ; 3 uses
  %i.cj = load <2 x float>, ptr %i.c, align 4, !tbaa !1161
  %i.ck = fsub <2 x float> %i.cj, %i.ci           ; 2 uses
  %i.cl = extractelement <2 x float> %i.ck, i64 0
  %i.cm = extractelement <2 x float> %i.ck, i64 1
  %.pre36 = fdiv float %i.cm, %i.cl
  %i.cn = extractelement <2 x float> %i.ci, i64 0
  %.pre38 = fsub float %storemerge27, %i.cn
  %i.co = extractelement <2 x float> %i.ci, i64 1
  %.pre40 = tail call noundef float @llvm.fmuladd.f32(float %.pre36, float %.pre38, float %i.co) ; 2 uses
  %.pre42 = tail call float @llvm.fabs.f32(float %.pre40)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi43 = phi float [ %i.bu, %bb.d ], [ %i.bu, %bb.e ], [ %.pre42, %bb.f ]
  %.pre-phi41 = phi float [ %i.bt, %bb.d ], [ %i.bt, %bb.e ], [ %.pre40, %bb.f ] ; 2 uses
  %i.cp = fcmp ueq float %.pre-phi43, +inf
  br i1 %i.cp, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit
  %i.cq = load float, ptr %i.bg, align 8, !tbaa !2260
  %i.cr = load float, ptr %i.bh, align 4, !tbaa !2261
  %i.cs = fsub float %storemerge27, %i.cr
  %i.ct = fmul float %i.cq, %i.cs
  %i.cu = fadd float %i.ct, 5.000000e-01
  %i.cv = tail call noundef float @llvm.floor.f32(float %i.cu)
  %i.cw = fptoui float %i.cv to i32
  %i.cx = zext i32 %i.cw to i64
  %i.cy = load ptr, ptr %i.bj, align 8, !tbaa !1857
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cx ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !1161
  %i.db = fcmp ogt float %.pre-phi41, %i.da
  br i1 %i.db, label %bb.h, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit

bb.h:                                             ; preds = %bb.g
  store float %.pre-phi41, ptr %i.cz, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit, %bb.g, %bb.h
  %i.dc = fadd float %storemerge27, %.pre-phi     ; 2 uses
  %i.dd = fcmp ugt float %i.dc, %i.be
  br i1 %i.dd, label %.loopexit, label %bb.d, !llvm.loop !6430

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj1ELj2ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1791 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 5 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !741    ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14: ; preds = %bb.a
  %i.g = load float, ptr %i.c, align 4, !tbaa !1161 ; 4 uses
  %i.h = load float, ptr %i.d, align 4, !tbaa !1161 ; 4 uses
  %i.i = insertelement <2 x float> poison, float %i.g, i64 0
  %i.j = insertelement <2 x float> %i.i, float %i.h, i64 1
  %i.k = fadd <2 x float> %i.j, splat (float -5.000000e-04)
  %i.l = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.k)
  %i.m = fptosi <2 x float> %i.l to <2 x i32>
  %i.n = sitofp <2 x i32> %i.m to <2 x float>     ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = extractelement <2 x float> %i.n, i64 1
  %i.q = fcmp oeq float %i.o, %i.p
  br i1 %i.q, label %.loopexit, label %bb.b

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread: ; preds = %bb.a
  %i.r = uitofp i32 %i.e to float                 ; 5 uses
  %i.s = fadd nnan ninf float %i.r, -1.000000e+00
  %i.t = fmul nnan float %i.s, 5.000000e-01       ; 3 uses
  %i.u = load float, ptr %i.c, align 4, !tbaa !1161 ; 4 uses
  %i.v = load float, ptr %i.d, align 4, !tbaa !1161 ; 4 uses
  %i.w = insertelement <2 x float> poison, float %i.u, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.v, i64 1
  %i.y = insertelement <2 x float> poison, float %i.t, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fsub <2 x float> %i.x, %i.z
  %i.ab = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = fdiv <2 x float> %i.aa, %i.ac
  %i.ae = fadd <2 x float> %i.ad, splat (float -5.000000e-04)
  %i.af = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ae)
  %i.ag = fptosi <2 x float> %i.af to <2 x i32>
  %i.ah = sitofp <2 x i32> %i.ag to <2 x float>
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ah, <2 x float> %i.z) ; 2 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 0
  %i.ak = extractelement <2 x float> %i.ai, i64 1
  %i.al = fcmp oeq float %i.aj, %i.ak
  br i1 %i.al, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14
  %i.am = fcmp olt float %i.h, %i.g
  %i.an = select i1 %i.am, float %i.h, float %i.g
  %i.ao = fadd float %i.an, -5.000000e-04
  %i.ap = tail call noundef float @llvm.ceil.f32(float %i.ao)
  %i.aq = fptosi float %i.ap to i32
  %i.ar = sitofp i32 %i.aq to float
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread
  %i.as = fcmp olt float %i.v, %i.u
  %i.at = select i1 %i.as, float %i.v, float %i.u
  %i.au = fsub float %i.at, %i.t
  %i.av = fdiv float %i.au, %i.r
  %i.aw = fadd float %i.av, -5.000000e-04
  %i.ax = tail call noundef float @llvm.ceil.f32(float %i.aw)
  %i.ay = fptosi float %i.ax to i32
  %i.az = sitofp i32 %i.ay to float
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.r, float %i.az, float %i.t)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15: ; preds = %bb.b, %bb.c
  %.pre-phi = phi float [ 1.000000e+00, %bb.b ], [ %i.r, %bb.c ]
  %i.bb = phi float [ %i.g, %bb.b ], [ %i.u, %bb.c ]
  %i.bc = phi float [ %i.h, %bb.b ], [ %i.v, %bb.c ]
  %i.bd = phi float [ %i.ar, %bb.b ], [ %i.ba, %bb.c ] ; 2 uses
  %i.be = fcmp olt float %i.bb, %i.bc
  %..i.i.i16 = select i1 %i.be, ptr %i.d, ptr %i.c
  %i.bf = load float, ptr %..i.i.i16, align 4, !tbaa !1161 ; 2 uses
  %i.bg = fcmp ugt float %i.bd, %i.bf
  br i1 %i.bg, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit
  %storemerge27 = phi float [ %i.bd, %.lr.ph ], [ %i.dd, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit ] ; 5 uses
  %i.bl = load <2 x float>, ptr %i.c, align 4, !tbaa !1161 ; 3 uses
  %i.bm = load <2 x float>, ptr %i.d, align 4, !tbaa !1161
  %i.bn = fsub <2 x float> %i.bm, %i.bl           ; 2 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 0
  %i.bp = extractelement <2 x float> %i.bn, i64 1
  %i.bq = fdiv float %i.bp, %i.bo
  %i.br = extractelement <2 x float> %i.bl, i64 0
  %i.bs = fsub float %storemerge27, %i.br
  %i.bt = extractelement <2 x float> %i.bl, i64 1
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.bs, float %i.bt) ; 5 uses
  %i.bv = tail call float @llvm.fabs.f32(float %i.bu) ; 3 uses
  %i.bw = fcmp ueq float %i.bv, +inf
  br i1 %i.bw, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bx = load float, ptr %i.bh, align 8, !tbaa !2260
  %i.by = load float, ptr %i.bi, align 4, !tbaa !2261
  %i.bz = fsub float %storemerge27, %i.by
  %i.ca = fmul float %i.bx, %i.bz
  %i.cb = fadd float %i.ca, 5.000000e-01
  %i.cc = tail call noundef float @llvm.floor.f32(float %i.cb)
  %i.cd = fptoui float %i.cc to i32
  %i.ce = zext i32 %i.cd to i64
  %i.cf = load ptr, ptr %i.bj, align 8, !tbaa !1857
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ce ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !1161
  %i.ci = fcmp olt float %i.bu, %i.ch
  br i1 %i.ci, label %bb.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit

bb.f:                                             ; preds = %bb.e
  store float %i.bu, ptr %i.cg, align 4, !tbaa !1161
  %i.cj = load <2 x float>, ptr %i.c, align 4, !tbaa !1161 ; 3 uses
  %i.ck = load <2 x float>, ptr %i.d, align 4, !tbaa !1161
  %i.cl = fsub <2 x float> %i.ck, %i.cj           ; 2 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 0
  %i.cn = extractelement <2 x float> %i.cl, i64 1
  %.pre36 = fdiv float %i.cn, %i.cm
  %i.co = extractelement <2 x float> %i.cj, i64 0
  %.pre38 = fsub float %storemerge27, %i.co
  %i.cp = extractelement <2 x float> %i.cj, i64 1
  %.pre40 = tail call noundef float @llvm.fmuladd.f32(float %.pre36, float %.pre38, float %i.cp) ; 2 uses
  %.pre42 = tail call float @llvm.fabs.f32(float %.pre40)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi43 = phi float [ %i.bv, %bb.d ], [ %i.bv, %bb.e ], [ %.pre42, %bb.f ]
  %.pre-phi41 = phi float [ %i.bu, %bb.d ], [ %i.bu, %bb.e ], [ %.pre40, %bb.f ] ; 2 uses
  %i.cq = fcmp ueq float %.pre-phi43, +inf
  br i1 %i.cq, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit
  %i.cr = load float, ptr %i.bh, align 8, !tbaa !2260
  %i.cs = load float, ptr %i.bi, align 4, !tbaa !2261
  %i.ct = fsub float %storemerge27, %i.cs
  %i.cu = fmul float %i.cr, %i.ct
  %i.cv = fadd float %i.cu, 5.000000e-01
  %i.cw = tail call noundef float @llvm.floor.f32(float %i.cv)
  %i.cx = fptoui float %i.cw to i32
  %i.cy = zext i32 %i.cx to i64
  %i.cz = load ptr, ptr %i.bk, align 8, !tbaa !1857
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cy ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !1161
  %i.dc = fcmp ogt float %.pre-phi41, %i.db
  br i1 %i.dc, label %bb.h, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit

bb.h:                                             ; preds = %bb.g
  store float %.pre-phi41, ptr %i.da, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit, %bb.g, %bb.h
  %i.dd = fadd float %storemerge27, %.pre-phi     ; 2 uses
  %i.de = fcmp ugt float %i.dd, %i.bf
  br i1 %i.de, label %.loopexit, label %bb.d, !llvm.loop !6431

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj2ELj0ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1791 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 5 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !741    ; 2 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14: ; preds = %bb.a
  %i.f = load float, ptr %i.c, align 4, !tbaa !1161 ; 4 uses
  %i.g = load float, ptr %i.b, align 4, !tbaa !1161 ; 4 uses
  %i.h = insertelement <2 x float> poison, float %i.f, i64 0
  %i.i = insertelement <2 x float> %i.h, float %i.g, i64 1
  %i.j = fadd <2 x float> %i.i, splat (float -5.000000e-04)
  %i.k = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.j)
  %i.l = fptosi <2 x float> %i.k to <2 x i32>
  %i.m = sitofp <2 x i32> %i.l to <2 x float>     ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 0
  %i.o = extractelement <2 x float> %i.m, i64 1
  %i.p = fcmp oeq float %i.n, %i.o
  br i1 %i.p, label %.loopexit, label %bb.b

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread: ; preds = %bb.a
  %i.q = uitofp i32 %i.d to float                 ; 5 uses
  %i.r = fadd nnan ninf float %i.q, -1.000000e+00
  %i.s = fmul nnan float %i.r, 5.000000e-01       ; 3 uses
  %i.t = load float, ptr %i.c, align 4, !tbaa !1161 ; 4 uses
  %i.u = load float, ptr %i.b, align 4, !tbaa !1161 ; 4 uses
  %i.v = insertelement <2 x float> poison, float %i.t, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.u, i64 1
  %i.x = insertelement <2 x float> poison, float %i.s, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = fsub <2 x float> %i.w, %i.y
  %i.aa = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = fdiv <2 x float> %i.z, %i.ab
  %i.ad = fadd <2 x float> %i.ac, splat (float -5.000000e-04)
  %i.ae = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ad)
  %i.af = fptosi <2 x float> %i.ae to <2 x i32>
  %i.ag = sitofp <2 x i32> %i.af to <2 x float>
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ag, <2 x float> %i.y) ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0
  %i.aj = extractelement <2 x float> %i.ah, i64 1
  %i.ak = fcmp oeq float %i.ai, %i.aj
  br i1 %i.ak, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14
  %i.al = fcmp olt float %i.g, %i.f
  %i.am = select i1 %i.al, float %i.g, float %i.f
  %i.an = fadd float %i.am, -5.000000e-04
  %i.ao = tail call noundef float @llvm.ceil.f32(float %i.an)
  %i.ap = fptosi float %i.ao to i32
  %i.aq = sitofp i32 %i.ap to float
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread
  %i.ar = fcmp olt float %i.u, %i.t
  %i.as = select i1 %i.ar, float %i.u, float %i.t
  %i.at = fsub float %i.as, %i.s
  %i.au = fdiv float %i.at, %i.q
  %i.av = fadd float %i.au, -5.000000e-04
  %i.aw = tail call noundef float @llvm.ceil.f32(float %i.av)
  %i.ax = fptosi float %i.aw to i32
  %i.ay = sitofp i32 %i.ax to float
  %i.az = tail call float @llvm.fmuladd.f32(float %i.q, float %i.ay, float %i.s)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15: ; preds = %bb.b, %bb.c
  %.pre-phi = phi float [ 1.000000e+00, %bb.b ], [ %i.q, %bb.c ]
  %i.ba = phi float [ %i.f, %bb.b ], [ %i.t, %bb.c ]
  %i.bb = phi float [ %i.g, %bb.b ], [ %i.u, %bb.c ]
  %i.bc = phi float [ %i.aq, %bb.b ], [ %i.az, %bb.c ] ; 2 uses
  %i.bd = fcmp olt float %i.ba, %i.bb
  %..i.i.i16 = select i1 %i.bd, ptr %i.b, ptr %i.c
  %i.be = load float, ptr %..i.i.i16, align 4, !tbaa !1161 ; 2 uses
  %i.bf = fcmp ugt float %i.bc, %i.be
  br i1 %i.bf, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit
  %storemerge27 = phi float [ %i.bc, %.lr.ph ], [ %i.dc, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit ] ; 5 uses
  %i.bk = load <2 x float>, ptr %i.c, align 4, !tbaa !1161 ; 3 uses
  %i.bl = load <2 x float>, ptr %i.b, align 4, !tbaa !1161
  %i.bm = fsub <2 x float> %i.bl, %i.bk           ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  %i.bo = extractelement <2 x float> %i.bm, i64 1
  %i.bp = fdiv float %i.bo, %i.bn
  %i.bq = extractelement <2 x float> %i.bk, i64 0
  %i.br = fsub float %storemerge27, %i.bq
  %i.bs = extractelement <2 x float> %i.bk, i64 1
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %i.bp, float %i.br, float %i.bs) ; 5 uses
  %i.bu = tail call float @llvm.fabs.f32(float %i.bt) ; 3 uses
  %i.bv = fcmp ueq float %i.bu, +inf
  br i1 %i.bv, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = load float, ptr %i.bg, align 8, !tbaa !2260
  %i.bx = load float, ptr %i.bh, align 4, !tbaa !2261
  %i.by = fsub float %storemerge27, %i.bx
  %i.bz = fmul float %i.bw, %i.by
  %i.ca = fadd float %i.bz, 5.000000e-01
  %i.cb = tail call noundef float @llvm.floor.f32(float %i.ca)
  %i.cc = fptoui float %i.cb to i32
  %i.cd = zext i32 %i.cc to i64
  %i.ce = load ptr, ptr %i.bi, align 8, !tbaa !1857
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cd ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !1161
  %i.ch = fcmp olt float %i.bt, %i.cg
  br i1 %i.ch, label %bb.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit

bb.f:                                             ; preds = %bb.e
  store float %i.bt, ptr %i.cf, align 4, !tbaa !1161
  %i.ci = load <2 x float>, ptr %i.c, align 4, !tbaa !1161 ; 3 uses
  %i.cj = load <2 x float>, ptr %i.b, align 4, !tbaa !1161
  %i.ck = fsub <2 x float> %i.cj, %i.ci           ; 2 uses
  %i.cl = extractelement <2 x float> %i.ck, i64 0
  %i.cm = extractelement <2 x float> %i.ck, i64 1
  %.pre36 = fdiv float %i.cm, %i.cl
  %i.cn = extractelement <2 x float> %i.ci, i64 0
  %.pre38 = fsub float %storemerge27, %i.cn
  %i.co = extractelement <2 x float> %i.ci, i64 1
  %.pre40 = tail call noundef float @llvm.fmuladd.f32(float %.pre36, float %.pre38, float %i.co) ; 2 uses
  %.pre42 = tail call float @llvm.fabs.f32(float %.pre40)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi43 = phi float [ %i.bu, %bb.d ], [ %i.bu, %bb.e ], [ %.pre42, %bb.f ]
  %.pre-phi41 = phi float [ %i.bt, %bb.d ], [ %i.bt, %bb.e ], [ %.pre40, %bb.f ] ; 2 uses
  %i.cp = fcmp ueq float %.pre-phi43, +inf
  br i1 %i.cp, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit
  %i.cq = load float, ptr %i.bg, align 8, !tbaa !2260
  %i.cr = load float, ptr %i.bh, align 4, !tbaa !2261
  %i.cs = fsub float %storemerge27, %i.cr
  %i.ct = fmul float %i.cq, %i.cs
  %i.cu = fadd float %i.ct, 5.000000e-01
  %i.cv = tail call noundef float @llvm.floor.f32(float %i.cu)
  %i.cw = fptoui float %i.cv to i32
  %i.cx = zext i32 %i.cw to i64
  %i.cy = load ptr, ptr %i.bj, align 8, !tbaa !1857
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cx ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !1161
  %i.db = fcmp ogt float %.pre-phi41, %i.da
  br i1 %i.db, label %bb.h, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit

bb.h:                                             ; preds = %bb.g
  store float %.pre-phi41, ptr %i.cz, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit, %bb.g, %bb.h
  %i.dc = fadd float %storemerge27, %.pre-phi     ; 2 uses
  %i.dd = fcmp ugt float %i.dc, %i.be
  br i1 %i.dd, label %.loopexit, label %bb.d, !llvm.loop !6432

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj3ELj4ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1791 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 5 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !741    ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14: ; preds = %bb.a
  %i.g = load float, ptr %i.c, align 4, !tbaa !1161 ; 4 uses
  %i.h = load float, ptr %i.d, align 4, !tbaa !1161 ; 4 uses
  %i.i = insertelement <2 x float> poison, float %i.g, i64 0
  %i.j = insertelement <2 x float> %i.i, float %i.h, i64 1
  %i.k = fadd <2 x float> %i.j, splat (float -5.000000e-04)
  %i.l = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.k)
  %i.m = fptosi <2 x float> %i.l to <2 x i32>
  %i.n = sitofp <2 x i32> %i.m to <2 x float>     ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = extractelement <2 x float> %i.n, i64 1
  %i.q = fcmp oeq float %i.o, %i.p
  br i1 %i.q, label %.loopexit, label %bb.b

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread: ; preds = %bb.a
  %i.r = uitofp i32 %i.e to float                 ; 5 uses
  %i.s = fadd nnan ninf float %i.r, -1.000000e+00
  %i.t = fmul nnan float %i.s, 5.000000e-01       ; 3 uses
  %i.u = load float, ptr %i.c, align 4, !tbaa !1161 ; 4 uses
  %i.v = load float, ptr %i.d, align 4, !tbaa !1161 ; 4 uses
  %i.w = insertelement <2 x float> poison, float %i.u, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.v, i64 1
  %i.y = insertelement <2 x float> poison, float %i.t, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fsub <2 x float> %i.x, %i.z
  %i.ab = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = fdiv <2 x float> %i.aa, %i.ac
  %i.ae = fadd <2 x float> %i.ad, splat (float -5.000000e-04)
  %i.af = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ae)
  %i.ag = fptosi <2 x float> %i.af to <2 x i32>
  %i.ah = sitofp <2 x i32> %i.ag to <2 x float>
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ah, <2 x float> %i.z) ; 2 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 0
  %i.ak = extractelement <2 x float> %i.ai, i64 1
  %i.al = fcmp oeq float %i.aj, %i.ak
  br i1 %i.al, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14
  %i.am = fcmp olt float %i.h, %i.g
  %i.an = select i1 %i.am, float %i.h, float %i.g
  %i.ao = fadd float %i.an, -5.000000e-04
  %i.ap = tail call noundef float @llvm.ceil.f32(float %i.ao)
  %i.aq = fptosi float %i.ap to i32
  %i.ar = sitofp i32 %i.aq to float
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread
  %i.as = fcmp olt float %i.v, %i.u
  %i.at = select i1 %i.as, float %i.v, float %i.u
  %i.au = fsub float %i.at, %i.t
  %i.av = fdiv float %i.au, %i.r
  %i.aw = fadd float %i.av, -5.000000e-04
  %i.ax = tail call noundef float @llvm.ceil.f32(float %i.aw)
  %i.ay = fptosi float %i.ax to i32
  %i.az = sitofp i32 %i.ay to float
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.r, float %i.az, float %i.t)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15: ; preds = %bb.b, %bb.c
  %.pre-phi = phi float [ 1.000000e+00, %bb.b ], [ %i.r, %bb.c ]
  %i.bb = phi float [ %i.g, %bb.b ], [ %i.u, %bb.c ]
  %i.bc = phi float [ %i.h, %bb.b ], [ %i.v, %bb.c ]
  %i.bd = phi float [ %i.ar, %bb.b ], [ %i.ba, %bb.c ] ; 2 uses
  %i.be = fcmp olt float %i.bb, %i.bc
  %..i.i.i16 = select i1 %i.be, ptr %i.d, ptr %i.c
  %i.bf = load float, ptr %..i.i.i16, align 4, !tbaa !1161 ; 2 uses
  %i.bg = fcmp ugt float %i.bd, %i.bf
  br i1 %i.bg, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit
  %storemerge27 = phi float [ %i.bd, %.lr.ph ], [ %i.dd, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit ] ; 5 uses
  %i.bl = load <2 x float>, ptr %i.c, align 4, !tbaa !1161 ; 3 uses
  %i.bm = load <2 x float>, ptr %i.d, align 4, !tbaa !1161
  %i.bn = fsub <2 x float> %i.bm, %i.bl           ; 2 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 0
  %i.bp = extractelement <2 x float> %i.bn, i64 1
  %i.bq = fdiv float %i.bp, %i.bo
  %i.br = extractelement <2 x float> %i.bl, i64 0
  %i.bs = fsub float %storemerge27, %i.br
  %i.bt = extractelement <2 x float> %i.bl, i64 1
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.bs, float %i.bt) ; 5 uses
  %i.bv = tail call float @llvm.fabs.f32(float %i.bu) ; 3 uses
  %i.bw = fcmp ueq float %i.bv, +inf
  br i1 %i.bw, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bx = load float, ptr %i.bh, align 8, !tbaa !2260
  %i.by = load float, ptr %i.bi, align 4, !tbaa !2261
  %i.bz = fsub float %storemerge27, %i.by
  %i.ca = fmul float %i.bx, %i.bz
  %i.cb = fadd float %i.ca, 5.000000e-01
  %i.cc = tail call noundef float @llvm.floor.f32(float %i.cb)
  %i.cd = fptoui float %i.cc to i32
  %i.ce = zext i32 %i.cd to i64
  %i.cf = load ptr, ptr %i.bj, align 8, !tbaa !1857
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ce ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !1161
  %i.ci = fcmp olt float %i.bu, %i.ch
  br i1 %i.ci, label %bb.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit

bb.f:                                             ; preds = %bb.e
  store float %i.bu, ptr %i.cg, align 4, !tbaa !1161
  %i.cj = load <2 x float>, ptr %i.c, align 4, !tbaa !1161 ; 3 uses
  %i.ck = load <2 x float>, ptr %i.d, align 4, !tbaa !1161
  %i.cl = fsub <2 x float> %i.ck, %i.cj           ; 2 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 0
  %i.cn = extractelement <2 x float> %i.cl, i64 1
  %.pre36 = fdiv float %i.cn, %i.cm
  %i.co = extractelement <2 x float> %i.cj, i64 0
  %.pre38 = fsub float %storemerge27, %i.co
  %i.cp = extractelement <2 x float> %i.cj, i64 1
  %.pre40 = tail call noundef float @llvm.fmuladd.f32(float %.pre36, float %.pre38, float %i.cp) ; 2 uses
  %.pre42 = tail call float @llvm.fabs.f32(float %.pre40)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi43 = phi float [ %i.bv, %bb.d ], [ %i.bv, %bb.e ], [ %.pre42, %bb.f ]
  %.pre-phi41 = phi float [ %i.bu, %bb.d ], [ %i.bu, %bb.e ], [ %.pre40, %bb.f ] ; 2 uses
  %i.cq = fcmp ueq float %.pre-phi43, +inf
  br i1 %i.cq, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit
  %i.cr = load float, ptr %i.bh, align 8, !tbaa !2260
  %i.cs = load float, ptr %i.bi, align 4, !tbaa !2261
  %i.ct = fsub float %storemerge27, %i.cs
  %i.cu = fmul float %i.cr, %i.ct
  %i.cv = fadd float %i.cu, 5.000000e-01
  %i.cw = tail call noundef float @llvm.floor.f32(float %i.cv)
  %i.cx = fptoui float %i.cw to i32
  %i.cy = zext i32 %i.cx to i64
  %i.cz = load ptr, ptr %i.bk, align 8, !tbaa !1857
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cy ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !1161
  %i.dc = fcmp ogt float %.pre-phi41, %i.db
  br i1 %i.dc, label %bb.h, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit

bb.h:                                             ; preds = %bb.g
  store float %.pre-phi41, ptr %i.da, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit, %bb.g, %bb.h
  %i.dd = fadd float %storemerge27, %.pre-phi     ; 2 uses
  %i.de = fcmp ugt float %i.dd, %i.bf
  br i1 %i.de, label %.loopexit, label %bb.d, !llvm.loop !6433

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj4ELj5ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1791 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 5 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !741    ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14: ; preds = %bb.a
  %i.g = load float, ptr %i.c, align 4, !tbaa !1161 ; 4 uses
  %i.h = load float, ptr %i.d, align 4, !tbaa !1161 ; 4 uses
  %i.i = insertelement <2 x float> poison, float %i.g, i64 0
  %i.j = insertelement <2 x float> %i.i, float %i.h, i64 1
  %i.k = fadd <2 x float> %i.j, splat (float -5.000000e-04)
  %i.l = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.k)
  %i.m = fptosi <2 x float> %i.l to <2 x i32>
  %i.n = sitofp <2 x i32> %i.m to <2 x float>     ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = extractelement <2 x float> %i.n, i64 1
  %i.q = fcmp oeq float %i.o, %i.p
  br i1 %i.q, label %.loopexit, label %bb.b

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread: ; preds = %bb.a
  %i.r = uitofp i32 %i.e to float                 ; 5 uses
  %i.s = fadd nnan ninf float %i.r, -1.000000e+00
  %i.t = fmul nnan float %i.s, 5.000000e-01       ; 3 uses
  %i.u = load float, ptr %i.c, align 4, !tbaa !1161 ; 4 uses
  %i.v = load float, ptr %i.d, align 4, !tbaa !1161 ; 4 uses
  %i.w = insertelement <2 x float> poison, float %i.u, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.v, i64 1
  %i.y = insertelement <2 x float> poison, float %i.t, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fsub <2 x float> %i.x, %i.z
  %i.ab = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = fdiv <2 x float> %i.aa, %i.ac
  %i.ae = fadd <2 x float> %i.ad, splat (float -5.000000e-04)
  %i.af = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ae)
  %i.ag = fptosi <2 x float> %i.af to <2 x i32>
  %i.ah = sitofp <2 x i32> %i.ag to <2 x float>
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ah, <2 x float> %i.z) ; 2 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 0
  %i.ak = extractelement <2 x float> %i.ai, i64 1
  %i.al = fcmp oeq float %i.aj, %i.ak
  br i1 %i.al, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14
  %i.am = fcmp olt float %i.h, %i.g
  %i.an = select i1 %i.am, float %i.h, float %i.g
  %i.ao = fadd float %i.an, -5.000000e-04
  %i.ap = tail call noundef float @llvm.ceil.f32(float %i.ao)
  %i.aq = fptosi float %i.ap to i32
  %i.ar = sitofp i32 %i.aq to float
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread
  %i.as = fcmp olt float %i.v, %i.u
  %i.at = select i1 %i.as, float %i.v, float %i.u
  %i.au = fsub float %i.at, %i.t
  %i.av = fdiv float %i.au, %i.r
  %i.aw = fadd float %i.av, -5.000000e-04
  %i.ax = tail call noundef float @llvm.ceil.f32(float %i.aw)
  %i.ay = fptosi float %i.ax to i32
  %i.az = sitofp i32 %i.ay to float
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.r, float %i.az, float %i.t)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15: ; preds = %bb.b, %bb.c
  %.pre-phi = phi float [ 1.000000e+00, %bb.b ], [ %i.r, %bb.c ]
  %i.bb = phi float [ %i.g, %bb.b ], [ %i.u, %bb.c ]
  %i.bc = phi float [ %i.h, %bb.b ], [ %i.v, %bb.c ]
  %i.bd = phi float [ %i.ar, %bb.b ], [ %i.ba, %bb.c ] ; 2 uses
  %i.be = fcmp olt float %i.bb, %i.bc
  %..i.i.i16 = select i1 %i.be, ptr %i.d, ptr %i.c
  %i.bf = load float, ptr %..i.i.i16, align 4, !tbaa !1161 ; 2 uses
  %i.bg = fcmp ugt float %i.bd, %i.bf
  br i1 %i.bg, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit
  %storemerge27 = phi float [ %i.bd, %.lr.ph ], [ %i.dd, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit ] ; 5 uses
  %i.bl = load <2 x float>, ptr %i.c, align 4, !tbaa !1161 ; 3 uses
  %i.bm = load <2 x float>, ptr %i.d, align 4, !tbaa !1161
  %i.bn = fsub <2 x float> %i.bm, %i.bl           ; 2 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 0
  %i.bp = extractelement <2 x float> %i.bn, i64 1
  %i.bq = fdiv float %i.bp, %i.bo
  %i.br = extractelement <2 x float> %i.bl, i64 0
  %i.bs = fsub float %storemerge27, %i.br
  %i.bt = extractelement <2 x float> %i.bl, i64 1
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.bs, float %i.bt) ; 5 uses
  %i.bv = tail call float @llvm.fabs.f32(float %i.bu) ; 3 uses
  %i.bw = fcmp ueq float %i.bv, +inf
  br i1 %i.bw, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bx = load float, ptr %i.bh, align 8, !tbaa !2260
  %i.by = load float, ptr %i.bi, align 4, !tbaa !2261
  %i.bz = fsub float %storemerge27, %i.by
  %i.ca = fmul float %i.bx, %i.bz
  %i.cb = fadd float %i.ca, 5.000000e-01
  %i.cc = tail call noundef float @llvm.floor.f32(float %i.cb)
  %i.cd = fptoui float %i.cc to i32
  %i.ce = zext i32 %i.cd to i64
  %i.cf = load ptr, ptr %i.bj, align 8, !tbaa !1857
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ce ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !1161
  %i.ci = fcmp olt float %i.bu, %i.ch
  br i1 %i.ci, label %bb.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit

bb.f:                                             ; preds = %bb.e
  store float %i.bu, ptr %i.cg, align 4, !tbaa !1161
  %i.cj = load <2 x float>, ptr %i.c, align 4, !tbaa !1161 ; 3 uses
  %i.ck = load <2 x float>, ptr %i.d, align 4, !tbaa !1161
  %i.cl = fsub <2 x float> %i.ck, %i.cj           ; 2 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 0
  %i.cn = extractelement <2 x float> %i.cl, i64 1
  %.pre36 = fdiv float %i.cn, %i.cm
  %i.co = extractelement <2 x float> %i.cj, i64 0
  %.pre38 = fsub float %storemerge27, %i.co
  %i.cp = extractelement <2 x float> %i.cj, i64 1
  %.pre40 = tail call noundef float @llvm.fmuladd.f32(float %.pre36, float %.pre38, float %i.cp) ; 2 uses
  %.pre42 = tail call float @llvm.fabs.f32(float %.pre40)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi43 = phi float [ %i.bv, %bb.d ], [ %i.bv, %bb.e ], [ %.pre42, %bb.f ]
  %.pre-phi41 = phi float [ %i.bu, %bb.d ], [ %i.bu, %bb.e ], [ %.pre40, %bb.f ] ; 2 uses
  %i.cq = fcmp ueq float %.pre-phi43, +inf
  br i1 %i.cq, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit
  %i.cr = load float, ptr %i.bh, align 8, !tbaa !2260
  %i.cs = load float, ptr %i.bi, align 4, !tbaa !2261
  %i.ct = fsub float %storemerge27, %i.cs
  %i.cu = fmul float %i.cr, %i.ct
  %i.cv = fadd float %i.cu, 5.000000e-01
  %i.cw = tail call noundef float @llvm.floor.f32(float %i.cv)
  %i.cx = fptoui float %i.cw to i32
  %i.cy = zext i32 %i.cx to i64
  %i.cz = load ptr, ptr %i.bk, align 8, !tbaa !1857
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cy ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !1161
  %i.dc = fcmp ogt float %.pre-phi41, %i.db
  br i1 %i.dc, label %bb.h, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit

bb.h:                                             ; preds = %bb.g
  store float %.pre-phi41, ptr %i.da, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit, %bb.g, %bb.h
  %i.dd = fadd float %storemerge27, %.pre-phi     ; 2 uses
  %i.de = fcmp ugt float %i.dd, %i.bf
  br i1 %i.de, label %.loopexit, label %bb.d, !llvm.loop !6434

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj5ELj3ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1791 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 5 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !741    ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14: ; preds = %bb.a
  %i.g = load float, ptr %i.c, align 4, !tbaa !1161 ; 4 uses
  %i.h = load float, ptr %i.d, align 4, !tbaa !1161 ; 4 uses
  %i.i = insertelement <2 x float> poison, float %i.g, i64 0
  %i.j = insertelement <2 x float> %i.i, float %i.h, i64 1
  %i.k = fadd <2 x float> %i.j, splat (float -5.000000e-04)
  %i.l = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.k)
  %i.m = fptosi <2 x float> %i.l to <2 x i32>
  %i.n = sitofp <2 x i32> %i.m to <2 x float>     ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = extractelement <2 x float> %i.n, i64 1
  %i.q = fcmp oeq float %i.o, %i.p
  br i1 %i.q, label %.loopexit, label %bb.b

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread: ; preds = %bb.a
  %i.r = uitofp i32 %i.e to float                 ; 5 uses
  %i.s = fadd nnan ninf float %i.r, -1.000000e+00
  %i.t = fmul nnan float %i.s, 5.000000e-01       ; 3 uses
  %i.u = load float, ptr %i.c, align 4, !tbaa !1161 ; 4 uses
  %i.v = load float, ptr %i.d, align 4, !tbaa !1161 ; 4 uses
  %i.w = insertelement <2 x float> poison, float %i.u, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.v, i64 1
  %i.y = insertelement <2 x float> poison, float %i.t, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fsub <2 x float> %i.x, %i.z
  %i.ab = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = fdiv <2 x float> %i.aa, %i.ac
  %i.ae = fadd <2 x float> %i.ad, splat (float -5.000000e-04)
  %i.af = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ae)
  %i.ag = fptosi <2 x float> %i.af to <2 x i32>
  %i.ah = sitofp <2 x i32> %i.ag to <2 x float>
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ah, <2 x float> %i.z) ; 2 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 0
  %i.ak = extractelement <2 x float> %i.ai, i64 1
  %i.al = fcmp oeq float %i.aj, %i.ak
  br i1 %i.al, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14
  %i.am = fcmp olt float %i.h, %i.g
  %i.an = select i1 %i.am, float %i.h, float %i.g
  %i.ao = fadd float %i.an, -5.000000e-04
  %i.ap = tail call noundef float @llvm.ceil.f32(float %i.ao)
  %i.aq = fptosi float %i.ap to i32
  %i.ar = sitofp i32 %i.aq to float
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread
  %i.as = fcmp olt float %i.v, %i.u
  %i.at = select i1 %i.as, float %i.v, float %i.u
  %i.au = fsub float %i.at, %i.t
  %i.av = fdiv float %i.au, %i.r
  %i.aw = fadd float %i.av, -5.000000e-04
  %i.ax = tail call noundef float @llvm.ceil.f32(float %i.aw)
  %i.ay = fptosi float %i.ax to i32
  %i.az = sitofp i32 %i.ay to float
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.r, float %i.az, float %i.t)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15: ; preds = %bb.b, %bb.c
  %.pre-phi = phi float [ 1.000000e+00, %bb.b ], [ %i.r, %bb.c ]
  %i.bb = phi float [ %i.g, %bb.b ], [ %i.u, %bb.c ]
  %i.bc = phi float [ %i.h, %bb.b ], [ %i.v, %bb.c ]
  %i.bd = phi float [ %i.ar, %bb.b ], [ %i.ba, %bb.c ] ; 2 uses
  %i.be = fcmp olt float %i.bb, %i.bc
  %..i.i.i16 = select i1 %i.be, ptr %i.d, ptr %i.c
  %i.bf = load float, ptr %..i.i.i16, align 4, !tbaa !1161 ; 2 uses
  %i.bg = fcmp ugt float %i.bd, %i.bf
  br i1 %i.bg, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit
  %storemerge27 = phi float [ %i.bd, %.lr.ph ], [ %i.dd, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit ] ; 5 uses
  %i.bl = load <2 x float>, ptr %i.c, align 4, !tbaa !1161 ; 3 uses
  %i.bm = load <2 x float>, ptr %i.d, align 4, !tbaa !1161
  %i.bn = fsub <2 x float> %i.bm, %i.bl           ; 2 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 0
  %i.bp = extractelement <2 x float> %i.bn, i64 1
  %i.bq = fdiv float %i.bp, %i.bo
  %i.br = extractelement <2 x float> %i.bl, i64 0
  %i.bs = fsub float %storemerge27, %i.br
  %i.bt = extractelement <2 x float> %i.bl, i64 1
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.bs, float %i.bt) ; 5 uses
  %i.bv = tail call float @llvm.fabs.f32(float %i.bu) ; 3 uses
  %i.bw = fcmp ueq float %i.bv, +inf
  br i1 %i.bw, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bx = load float, ptr %i.bh, align 8, !tbaa !2260
  %i.by = load float, ptr %i.bi, align 4, !tbaa !2261
  %i.bz = fsub float %storemerge27, %i.by
  %i.ca = fmul float %i.bx, %i.bz
  %i.cb = fadd float %i.ca, 5.000000e-01
  %i.cc = tail call noundef float @llvm.floor.f32(float %i.cb)
  %i.cd = fptoui float %i.cc to i32
  %i.ce = zext i32 %i.cd to i64
  %i.cf = load ptr, ptr %i.bj, align 8, !tbaa !1857
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ce ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !1161
  %i.ci = fcmp olt float %i.bu, %i.ch
  br i1 %i.ci, label %bb.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit

bb.f:                                             ; preds = %bb.e
  store float %i.bu, ptr %i.cg, align 4, !tbaa !1161
  %i.cj = load <2 x float>, ptr %i.c, align 4, !tbaa !1161 ; 3 uses
  %i.ck = load <2 x float>, ptr %i.d, align 4, !tbaa !1161
  %i.cl = fsub <2 x float> %i.ck, %i.cj           ; 2 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 0
  %i.cn = extractelement <2 x float> %i.cl, i64 1
  %.pre36 = fdiv float %i.cn, %i.cm
  %i.co = extractelement <2 x float> %i.cj, i64 0
  %.pre38 = fsub float %storemerge27, %i.co
  %i.cp = extractelement <2 x float> %i.cj, i64 1
  %.pre40 = tail call noundef float @llvm.fmuladd.f32(float %.pre36, float %.pre38, float %i.cp) ; 2 uses
  %.pre42 = tail call float @llvm.fabs.f32(float %.pre40)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi43 = phi float [ %i.bv, %bb.d ], [ %i.bv, %bb.e ], [ %.pre42, %bb.f ]
  %.pre-phi41 = phi float [ %i.bu, %bb.d ], [ %i.bu, %bb.e ], [ %.pre40, %bb.f ] ; 2 uses
  %i.cq = fcmp ueq float %.pre-phi43, +inf
  br i1 %i.cq, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit
  %i.cr = load float, ptr %i.bh, align 8, !tbaa !2260
  %i.cs = load float, ptr %i.bi, align 4, !tbaa !2261
  %i.ct = fsub float %storemerge27, %i.cs
  %i.cu = fmul float %i.cr, %i.ct
  %i.cv = fadd float %i.cu, 5.000000e-01
  %i.cw = tail call noundef float @llvm.floor.f32(float %i.cv)
  %i.cx = fptoui float %i.cw to i32
  %i.cy = zext i32 %i.cx to i64
  %i.cz = load ptr, ptr %i.bk, align 8, !tbaa !1857
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cy ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !1161
  %i.dc = fcmp ogt float %.pre-phi41, %i.db
  br i1 %i.dc, label %bb.h, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit

bb.h:                                             ; preds = %bb.g
  store float %.pre-phi41, ptr %i.da, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit, %bb.g, %bb.h
  %i.dd = fadd float %storemerge27, %.pre-phi     ; 2 uses
  %i.de = fcmp ugt float %i.dd, %i.bf
  br i1 %i.de, label %.loopexit, label %bb.d, !llvm.loop !6435

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj0ELj3ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1791 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 5 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !741    ; 2 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14: ; preds = %bb.a
  %i.f = load float, ptr %i.b, align 4, !tbaa !1161 ; 4 uses
  %i.g = load float, ptr %i.c, align 4, !tbaa !1161 ; 4 uses
  %i.h = insertelement <2 x float> poison, float %i.f, i64 0
  %i.i = insertelement <2 x float> %i.h, float %i.g, i64 1
  %i.j = fadd <2 x float> %i.i, splat (float -5.000000e-04)
  %i.k = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.j)
  %i.l = fptosi <2 x float> %i.k to <2 x i32>
  %i.m = sitofp <2 x i32> %i.l to <2 x float>     ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 0
  %i.o = extractelement <2 x float> %i.m, i64 1
  %i.p = fcmp oeq float %i.n, %i.o
  br i1 %i.p, label %.loopexit, label %bb.b

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread: ; preds = %bb.a
  %i.q = uitofp i32 %i.d to float                 ; 5 uses
  %i.r = fadd nnan ninf float %i.q, -1.000000e+00
  %i.s = fmul nnan float %i.r, 5.000000e-01       ; 3 uses
  %i.t = load float, ptr %i.b, align 4, !tbaa !1161 ; 4 uses
  %i.u = load float, ptr %i.c, align 4, !tbaa !1161 ; 4 uses
  %i.v = insertelement <2 x float> poison, float %i.t, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.u, i64 1
  %i.x = insertelement <2 x float> poison, float %i.s, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = fsub <2 x float> %i.w, %i.y
  %i.aa = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = fdiv <2 x float> %i.z, %i.ab
  %i.ad = fadd <2 x float> %i.ac, splat (float -5.000000e-04)
  %i.ae = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ad)
  %i.af = fptosi <2 x float> %i.ae to <2 x i32>
  %i.ag = sitofp <2 x i32> %i.af to <2 x float>
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ag, <2 x float> %i.y) ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0
  %i.aj = extractelement <2 x float> %i.ah, i64 1
  %i.ak = fcmp oeq float %i.ai, %i.aj
  br i1 %i.ak, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14
  %i.al = fcmp olt float %i.g, %i.f
  %i.am = select i1 %i.al, float %i.g, float %i.f
  %i.an = fadd float %i.am, -5.000000e-04
  %i.ao = tail call noundef float @llvm.ceil.f32(float %i.an)
  %i.ap = fptosi float %i.ao to i32
  %i.aq = sitofp i32 %i.ap to float
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread
  %i.ar = fcmp olt float %i.u, %i.t
  %i.as = select i1 %i.ar, float %i.u, float %i.t
  %i.at = fsub float %i.as, %i.s
  %i.au = fdiv float %i.at, %i.q
  %i.av = fadd float %i.au, -5.000000e-04
  %i.aw = tail call noundef float @llvm.ceil.f32(float %i.av)
  %i.ax = fptosi float %i.aw to i32
  %i.ay = sitofp i32 %i.ax to float
  %i.az = tail call float @llvm.fmuladd.f32(float %i.q, float %i.ay, float %i.s)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15: ; preds = %bb.b, %bb.c
  %.pre-phi = phi float [ 1.000000e+00, %bb.b ], [ %i.q, %bb.c ]
  %i.ba = phi float [ %i.f, %bb.b ], [ %i.t, %bb.c ]
  %i.bb = phi float [ %i.g, %bb.b ], [ %i.u, %bb.c ]
  %i.bc = phi float [ %i.aq, %bb.b ], [ %i.az, %bb.c ] ; 2 uses
  %i.bd = fcmp olt float %i.ba, %i.bb
  %..i.i.i16 = select i1 %i.bd, ptr %i.c, ptr %i.b
  %i.be = load float, ptr %..i.i.i16, align 4, !tbaa !1161 ; 2 uses
  %i.bf = fcmp ugt float %i.bc, %i.be
  br i1 %i.bf, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit
  %storemerge27 = phi float [ %i.bc, %.lr.ph ], [ %i.dc, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit ] ; 5 uses
  %i.bk = load <2 x float>, ptr %i.b, align 4, !tbaa !1161 ; 3 uses
  %i.bl = load <2 x float>, ptr %i.c, align 4, !tbaa !1161
  %i.bm = fsub <2 x float> %i.bl, %i.bk           ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  %i.bo = extractelement <2 x float> %i.bm, i64 1
  %i.bp = fdiv float %i.bo, %i.bn
  %i.bq = extractelement <2 x float> %i.bk, i64 0
  %i.br = fsub float %storemerge27, %i.bq
  %i.bs = extractelement <2 x float> %i.bk, i64 1
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %i.bp, float %i.br, float %i.bs) ; 5 uses
  %i.bu = tail call float @llvm.fabs.f32(float %i.bt) ; 3 uses
  %i.bv = fcmp ueq float %i.bu, +inf
  br i1 %i.bv, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = load float, ptr %i.bg, align 8, !tbaa !2260
  %i.bx = load float, ptr %i.bh, align 4, !tbaa !2261
  %i.by = fsub float %storemerge27, %i.bx
  %i.bz = fmul float %i.bw, %i.by
  %i.ca = fadd float %i.bz, 5.000000e-01
  %i.cb = tail call noundef float @llvm.floor.f32(float %i.ca)
  %i.cc = fptoui float %i.cb to i32
  %i.cd = zext i32 %i.cc to i64
  %i.ce = load ptr, ptr %i.bi, align 8, !tbaa !1857
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cd ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !1161
  %i.ch = fcmp olt float %i.bt, %i.cg
  br i1 %i.ch, label %bb.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit

bb.f:                                             ; preds = %bb.e
  store float %i.bt, ptr %i.cf, align 4, !tbaa !1161
  %i.ci = load <2 x float>, ptr %i.b, align 4, !tbaa !1161 ; 3 uses
  %i.cj = load <2 x float>, ptr %i.c, align 4, !tbaa !1161
  %i.ck = fsub <2 x float> %i.cj, %i.ci           ; 2 uses
  %i.cl = extractelement <2 x float> %i.ck, i64 0
  %i.cm = extractelement <2 x float> %i.ck, i64 1
  %.pre36 = fdiv float %i.cm, %i.cl
  %i.cn = extractelement <2 x float> %i.ci, i64 0
  %.pre38 = fsub float %storemerge27, %i.cn
  %i.co = extractelement <2 x float> %i.ci, i64 1
  %.pre40 = tail call noundef float @llvm.fmuladd.f32(float %.pre36, float %.pre38, float %i.co) ; 2 uses
  %.pre42 = tail call float @llvm.fabs.f32(float %.pre40)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi43 = phi float [ %i.bu, %bb.d ], [ %i.bu, %bb.e ], [ %.pre42, %bb.f ]
  %.pre-phi41 = phi float [ %i.bt, %bb.d ], [ %i.bt, %bb.e ], [ %.pre40, %bb.f ] ; 2 uses
  %i.cp = fcmp ueq float %.pre-phi43, +inf
  br i1 %i.cp, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit
  %i.cq = load float, ptr %i.bg, align 8, !tbaa !2260
  %i.cr = load float, ptr %i.bh, align 4, !tbaa !2261
  %i.cs = fsub float %storemerge27, %i.cr
  %i.ct = fmul float %i.cq, %i.cs
  %i.cu = fadd float %i.ct, 5.000000e-01
  %i.cv = tail call noundef float @llvm.floor.f32(float %i.cu)
  %i.cw = fptoui float %i.cv to i32
  %i.cx = zext i32 %i.cw to i64
  %i.cy = load ptr, ptr %i.bj, align 8, !tbaa !1857
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cx ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !1161
  %i.db = fcmp ogt float %.pre-phi41, %i.da
  br i1 %i.db, label %bb.h, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit

bb.h:                                             ; preds = %bb.g
  store float %.pre-phi41, ptr %i.cz, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit, %bb.g, %bb.h
  %i.dc = fadd float %storemerge27, %.pre-phi     ; 2 uses
  %i.dd = fcmp ugt float %i.dc, %i.be
  br i1 %i.dd, label %.loopexit, label %bb.d, !llvm.loop !6436

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj1ELj4ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1791 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 5 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !741    ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14: ; preds = %bb.a
  %i.g = load float, ptr %i.c, align 4, !tbaa !1161 ; 4 uses
  %i.h = load float, ptr %i.d, align 4, !tbaa !1161 ; 4 uses
  %i.i = insertelement <2 x float> poison, float %i.g, i64 0
  %i.j = insertelement <2 x float> %i.i, float %i.h, i64 1
  %i.k = fadd <2 x float> %i.j, splat (float -5.000000e-04)
  %i.l = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.k)
  %i.m = fptosi <2 x float> %i.l to <2 x i32>
  %i.n = sitofp <2 x i32> %i.m to <2 x float>     ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = extractelement <2 x float> %i.n, i64 1
  %i.q = fcmp oeq float %i.o, %i.p
  br i1 %i.q, label %.loopexit, label %bb.b

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread: ; preds = %bb.a
  %i.r = uitofp i32 %i.e to float                 ; 5 uses
  %i.s = fadd nnan ninf float %i.r, -1.000000e+00
  %i.t = fmul nnan float %i.s, 5.000000e-01       ; 3 uses
  %i.u = load float, ptr %i.c, align 4, !tbaa !1161 ; 4 uses
  %i.v = load float, ptr %i.d, align 4, !tbaa !1161 ; 4 uses
  %i.w = insertelement <2 x float> poison, float %i.u, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.v, i64 1
  %i.y = insertelement <2 x float> poison, float %i.t, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fsub <2 x float> %i.x, %i.z
  %i.ab = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = fdiv <2 x float> %i.aa, %i.ac
  %i.ae = fadd <2 x float> %i.ad, splat (float -5.000000e-04)
  %i.af = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ae)
  %i.ag = fptosi <2 x float> %i.af to <2 x i32>
  %i.ah = sitofp <2 x i32> %i.ag to <2 x float>
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ah, <2 x float> %i.z) ; 2 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 0
  %i.ak = extractelement <2 x float> %i.ai, i64 1
  %i.al = fcmp oeq float %i.aj, %i.ak
  br i1 %i.al, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14
  %i.am = fcmp olt float %i.h, %i.g
  %i.an = select i1 %i.am, float %i.h, float %i.g
  %i.ao = fadd float %i.an, -5.000000e-04
  %i.ap = tail call noundef float @llvm.ceil.f32(float %i.ao)
  %i.aq = fptosi float %i.ap to i32
  %i.ar = sitofp i32 %i.aq to float
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread
  %i.as = fcmp olt float %i.v, %i.u
  %i.at = select i1 %i.as, float %i.v, float %i.u
  %i.au = fsub float %i.at, %i.t
  %i.av = fdiv float %i.au, %i.r
  %i.aw = fadd float %i.av, -5.000000e-04
  %i.ax = tail call noundef float @llvm.ceil.f32(float %i.aw)
  %i.ay = fptosi float %i.ax to i32
  %i.az = sitofp i32 %i.ay to float
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.r, float %i.az, float %i.t)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15: ; preds = %bb.b, %bb.c
  %.pre-phi = phi float [ 1.000000e+00, %bb.b ], [ %i.r, %bb.c ]
  %i.bb = phi float [ %i.g, %bb.b ], [ %i.u, %bb.c ]
  %i.bc = phi float [ %i.h, %bb.b ], [ %i.v, %bb.c ]
  %i.bd = phi float [ %i.ar, %bb.b ], [ %i.ba, %bb.c ] ; 2 uses
  %i.be = fcmp olt float %i.bb, %i.bc
  %..i.i.i16 = select i1 %i.be, ptr %i.d, ptr %i.c
  %i.bf = load float, ptr %..i.i.i16, align 4, !tbaa !1161 ; 2 uses
  %i.bg = fcmp ugt float %i.bd, %i.bf
  br i1 %i.bg, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit
  %storemerge27 = phi float [ %i.bd, %.lr.ph ], [ %i.dd, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit ] ; 5 uses
  %i.bl = load <2 x float>, ptr %i.c, align 4, !tbaa !1161 ; 3 uses
  %i.bm = load <2 x float>, ptr %i.d, align 4, !tbaa !1161
  %i.bn = fsub <2 x float> %i.bm, %i.bl           ; 2 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 0
  %i.bp = extractelement <2 x float> %i.bn, i64 1
  %i.bq = fdiv float %i.bp, %i.bo
  %i.br = extractelement <2 x float> %i.bl, i64 0
  %i.bs = fsub float %storemerge27, %i.br
  %i.bt = extractelement <2 x float> %i.bl, i64 1
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.bs, float %i.bt) ; 5 uses
  %i.bv = tail call float @llvm.fabs.f32(float %i.bu) ; 3 uses
  %i.bw = fcmp ueq float %i.bv, +inf
  br i1 %i.bw, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bx = load float, ptr %i.bh, align 8, !tbaa !2260
  %i.by = load float, ptr %i.bi, align 4, !tbaa !2261
  %i.bz = fsub float %storemerge27, %i.by
  %i.ca = fmul float %i.bx, %i.bz
  %i.cb = fadd float %i.ca, 5.000000e-01
  %i.cc = tail call noundef float @llvm.floor.f32(float %i.cb)
  %i.cd = fptoui float %i.cc to i32
  %i.ce = zext i32 %i.cd to i64
  %i.cf = load ptr, ptr %i.bj, align 8, !tbaa !1857
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ce ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !1161
  %i.ci = fcmp olt float %i.bu, %i.ch
  br i1 %i.ci, label %bb.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit

bb.f:                                             ; preds = %bb.e
  store float %i.bu, ptr %i.cg, align 4, !tbaa !1161
  %i.cj = load <2 x float>, ptr %i.c, align 4, !tbaa !1161 ; 3 uses
  %i.ck = load <2 x float>, ptr %i.d, align 4, !tbaa !1161
  %i.cl = fsub <2 x float> %i.ck, %i.cj           ; 2 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 0
  %i.cn = extractelement <2 x float> %i.cl, i64 1
  %.pre36 = fdiv float %i.cn, %i.cm
  %i.co = extractelement <2 x float> %i.cj, i64 0
  %.pre38 = fsub float %storemerge27, %i.co
  %i.cp = extractelement <2 x float> %i.cj, i64 1
  %.pre40 = tail call noundef float @llvm.fmuladd.f32(float %.pre36, float %.pre38, float %i.cp) ; 2 uses
  %.pre42 = tail call float @llvm.fabs.f32(float %.pre40)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi43 = phi float [ %i.bv, %bb.d ], [ %i.bv, %bb.e ], [ %.pre42, %bb.f ]
  %.pre-phi41 = phi float [ %i.bu, %bb.d ], [ %i.bu, %bb.e ], [ %.pre40, %bb.f ] ; 2 uses
  %i.cq = fcmp ueq float %.pre-phi43, +inf
  br i1 %i.cq, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit
  %i.cr = load float, ptr %i.bh, align 8, !tbaa !2260
  %i.cs = load float, ptr %i.bi, align 4, !tbaa !2261
  %i.ct = fsub float %storemerge27, %i.cs
  %i.cu = fmul float %i.cr, %i.ct
  %i.cv = fadd float %i.cu, 5.000000e-01
  %i.cw = tail call noundef float @llvm.floor.f32(float %i.cv)
  %i.cx = fptoui float %i.cw to i32
  %i.cy = zext i32 %i.cx to i64
  %i.cz = load ptr, ptr %i.bk, align 8, !tbaa !1857
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cy ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !1161
  %i.dc = fcmp ogt float %.pre-phi41, %i.db
  br i1 %i.dc, label %bb.h, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit

bb.h:                                             ; preds = %bb.g
  store float %.pre-phi41, ptr %i.da, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit, %bb.g, %bb.h
  %i.dd = fadd float %storemerge27, %.pre-phi     ; 2 uses
  %i.de = fcmp ugt float %i.dd, %i.bf
  br i1 %i.de, label %.loopexit, label %bb.d, !llvm.loop !6437

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj2ELj5ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1791 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 5 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !741    ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14: ; preds = %bb.a
  %i.g = load float, ptr %i.c, align 4, !tbaa !1161 ; 4 uses
  %i.h = load float, ptr %i.d, align 4, !tbaa !1161 ; 4 uses
  %i.i = insertelement <2 x float> poison, float %i.g, i64 0
  %i.j = insertelement <2 x float> %i.i, float %i.h, i64 1
  %i.k = fadd <2 x float> %i.j, splat (float -5.000000e-04)
  %i.l = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.k)
  %i.m = fptosi <2 x float> %i.l to <2 x i32>
  %i.n = sitofp <2 x i32> %i.m to <2 x float>     ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = extractelement <2 x float> %i.n, i64 1
  %i.q = fcmp oeq float %i.o, %i.p
  br i1 %i.q, label %.loopexit, label %bb.b

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread: ; preds = %bb.a
  %i.r = uitofp i32 %i.e to float                 ; 5 uses
  %i.s = fadd nnan ninf float %i.r, -1.000000e+00
  %i.t = fmul nnan float %i.s, 5.000000e-01       ; 3 uses
  %i.u = load float, ptr %i.c, align 4, !tbaa !1161 ; 4 uses
  %i.v = load float, ptr %i.d, align 4, !tbaa !1161 ; 4 uses
  %i.w = insertelement <2 x float> poison, float %i.u, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.v, i64 1
  %i.y = insertelement <2 x float> poison, float %i.t, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fsub <2 x float> %i.x, %i.z
  %i.ab = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = fdiv <2 x float> %i.aa, %i.ac
  %i.ae = fadd <2 x float> %i.ad, splat (float -5.000000e-04)
  %i.af = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ae)
  %i.ag = fptosi <2 x float> %i.af to <2 x i32>
  %i.ah = sitofp <2 x i32> %i.ag to <2 x float>
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ah, <2 x float> %i.z) ; 2 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 0
  %i.ak = extractelement <2 x float> %i.ai, i64 1
  %i.al = fcmp oeq float %i.aj, %i.ak
  br i1 %i.al, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14
  %i.am = fcmp olt float %i.h, %i.g
  %i.an = select i1 %i.am, float %i.h, float %i.g
  %i.ao = fadd float %i.an, -5.000000e-04
  %i.ap = tail call noundef float @llvm.ceil.f32(float %i.ao)
  %i.aq = fptosi float %i.ap to i32
  %i.ar = sitofp i32 %i.aq to float
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread
  %i.as = fcmp olt float %i.v, %i.u
  %i.at = select i1 %i.as, float %i.v, float %i.u
  %i.au = fsub float %i.at, %i.t
  %i.av = fdiv float %i.au, %i.r
  %i.aw = fadd float %i.av, -5.000000e-04
  %i.ax = tail call noundef float @llvm.ceil.f32(float %i.aw)
  %i.ay = fptosi float %i.ax to i32
  %i.az = sitofp i32 %i.ay to float
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.r, float %i.az, float %i.t)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15: ; preds = %bb.b, %bb.c
  %.pre-phi = phi float [ 1.000000e+00, %bb.b ], [ %i.r, %bb.c ]
  %i.bb = phi float [ %i.g, %bb.b ], [ %i.u, %bb.c ]
  %i.bc = phi float [ %i.h, %bb.b ], [ %i.v, %bb.c ]
  %i.bd = phi float [ %i.ar, %bb.b ], [ %i.ba, %bb.c ] ; 2 uses
  %i.be = fcmp olt float %i.bb, %i.bc
  %..i.i.i16 = select i1 %i.be, ptr %i.d, ptr %i.c
  %i.bf = load float, ptr %..i.i.i16, align 4, !tbaa !1161 ; 2 uses
  %i.bg = fcmp ugt float %i.bd, %i.bf
  br i1 %i.bg, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit
  %storemerge27 = phi float [ %i.bd, %.lr.ph ], [ %i.dd, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit ] ; 5 uses
  %i.bl = load <2 x float>, ptr %i.c, align 4, !tbaa !1161 ; 3 uses
  %i.bm = load <2 x float>, ptr %i.d, align 4, !tbaa !1161
  %i.bn = fsub <2 x float> %i.bm, %i.bl           ; 2 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 0
  %i.bp = extractelement <2 x float> %i.bn, i64 1
  %i.bq = fdiv float %i.bp, %i.bo
  %i.br = extractelement <2 x float> %i.bl, i64 0
  %i.bs = fsub float %storemerge27, %i.br
  %i.bt = extractelement <2 x float> %i.bl, i64 1
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.bs, float %i.bt) ; 5 uses
  %i.bv = tail call float @llvm.fabs.f32(float %i.bu) ; 3 uses
  %i.bw = fcmp ueq float %i.bv, +inf
  br i1 %i.bw, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bx = load float, ptr %i.bh, align 8, !tbaa !2260
  %i.by = load float, ptr %i.bi, align 4, !tbaa !2261
  %i.bz = fsub float %storemerge27, %i.by
  %i.ca = fmul float %i.bx, %i.bz
  %i.cb = fadd float %i.ca, 5.000000e-01
  %i.cc = tail call noundef float @llvm.floor.f32(float %i.cb)
  %i.cd = fptoui float %i.cc to i32
  %i.ce = zext i32 %i.cd to i64
  %i.cf = load ptr, ptr %i.bj, align 8, !tbaa !1857
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ce ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !1161
  %i.ci = fcmp olt float %i.bu, %i.ch
  br i1 %i.ci, label %bb.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit

bb.f:                                             ; preds = %bb.e
  store float %i.bu, ptr %i.cg, align 4, !tbaa !1161
  %i.cj = load <2 x float>, ptr %i.c, align 4, !tbaa !1161 ; 3 uses
  %i.ck = load <2 x float>, ptr %i.d, align 4, !tbaa !1161
  %i.cl = fsub <2 x float> %i.ck, %i.cj           ; 2 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 0
  %i.cn = extractelement <2 x float> %i.cl, i64 1
  %.pre36 = fdiv float %i.cn, %i.cm
  %i.co = extractelement <2 x float> %i.cj, i64 0
  %.pre38 = fsub float %storemerge27, %i.co
  %i.cp = extractelement <2 x float> %i.cj, i64 1
  %.pre40 = tail call noundef float @llvm.fmuladd.f32(float %.pre36, float %.pre38, float %i.cp) ; 2 uses
  %.pre42 = tail call float @llvm.fabs.f32(float %.pre40)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi43 = phi float [ %i.bv, %bb.d ], [ %i.bv, %bb.e ], [ %.pre42, %bb.f ]
  %.pre-phi41 = phi float [ %i.bu, %bb.d ], [ %i.bu, %bb.e ], [ %.pre40, %bb.f ] ; 2 uses
  %i.cq = fcmp ueq float %.pre-phi43, +inf
  br i1 %i.cq, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit
  %i.cr = load float, ptr %i.bh, align 8, !tbaa !2260
  %i.cs = load float, ptr %i.bi, align 4, !tbaa !2261
  %i.ct = fsub float %storemerge27, %i.cs
  %i.cu = fmul float %i.cr, %i.ct
  %i.cv = fadd float %i.cu, 5.000000e-01
  %i.cw = tail call noundef float @llvm.floor.f32(float %i.cv)
  %i.cx = fptoui float %i.cw to i32
  %i.cy = zext i32 %i.cx to i64
  %i.cz = load ptr, ptr %i.bk, align 8, !tbaa !1857
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cy ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !1161
  %i.dc = fcmp ogt float %.pre-phi41, %i.db
  br i1 %i.dc, label %bb.h, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit

bb.h:                                             ; preds = %bb.g
  store float %.pre-phi41, ptr %i.da, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit, %bb.g, %bb.h
  %i.dd = fadd float %storemerge27, %.pre-phi     ; 2 uses
  %i.de = fcmp ugt float %i.dd, %i.bf
  br i1 %i.de, label %.loopexit, label %bb.d, !llvm.loop !6438

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKfSN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit15, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14.thread, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorC2ERSD_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(1232) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, true> *, bool>::accessor", align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %0, align 8, !tbaa !743
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !2228
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr null, ptr %2, align 8, !tbaa !2264
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i8 0, ptr %i.c, align 8, !tbaa !2265
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %0, ptr %i.a, align 8, !tbaa !2230
  %i.f = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE6lookupILb1ESH_PFPNSQ_4nodeERNSL_INS1_13hash_map_baseISP_NSI_13spin_rw_mutexEE6bucketEEERSN_PKbEEEbRKT0_S12_PNSQ_14const_accessorEbT1_ST_(ptr noundef nonnull align 8 dereferenceable(570) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE31allocate_node_default_constructISH_EEPNSQ_4nodeERNSL_INS1_13hash_map_baseISP_NSI_13spin_rw_mutexEE6bucketEEERKT_PKb, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE6insertERNSQ_8accessorERSN_.exit.i.i.i unwind label %bb.e ; 0 uses

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE6insertERNSQ_8accessorERSN_.exit.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.d, align 8, !tbaa !2268
  %i.g = load ptr, ptr %2, align 8, !tbaa !2264   ; 3 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i3.i.i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE6insertERNSQ_8accessorERSN_.exit.i.i.i
  store ptr null, ptr %2, align 8, !tbaa !2264
  %i.h = load i8, ptr %i.c, align 8, !tbaa !2265, !range !788, !noundef !789
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = atomicrmw and ptr %i.g, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw add ptr %i.g, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.d, align 8, !tbaa !2268
  %i.m = load ptr, ptr %2, align 8, !tbaa !2264   ; 3 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i4.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE14const_accessorD2Ev.exit5.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %2, align 8, !tbaa !2264
  %i.n = load i8, ptr %i.c, align 8, !tbaa !2265, !range !788, !noundef !789
  %i.o = trunc nuw i8 %i.n to i1
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvv:bb.a
bb.q:                                             ; preds = %.loopexit37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.cg = load i8, ptr %7, align 8, !tbaa !3014, !range !788, !noundef !789
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.r, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ci = load ptr, ptr %i.bs, align 8, !tbaa !3015 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !743
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(1232) %i.ci) #24, !inline_history !7776
  br label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit

_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit: ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN3tbb6detail2d126enumerable_thread_specificIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread

bb.t:                                             ; preds = %bb.m
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.x

bb.u:                                             ; preds = %.loopexit37
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.cp = load i8, ptr %7, align 8, !tbaa !3014, !range !788, !noundef !789
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.v, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24

bb.v:                                             ; preds = %bb.u
  %i.cr = load ptr, ptr %i.bs, align 8, !tbaa !3015 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !743
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(1232) %i.cr) #24, !inline_history !7776
  br label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24

_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24: ; preds = %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.x

bb.x:                                             ; preds = %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.co, %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24 ], [ %i.cn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN3tbb6detail2d126enumerable_thread_specificIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ab

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !2180 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i25, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i26, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !2182
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i26

_ZNSt6vectorIiSaIiEED2Ev.exit.i26:                ; preds = %bb.y, %.critedge
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %3, align 8, !tbaa !743
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !2228 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.de, null
  br i1 %.not.i.i27, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit29, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i26
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %3, ptr %i.a, align 8, !tbaa !2230
  %i.dg = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE14internal_eraseISH_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i28 unwind label %bb.aa, !inline_history !2231 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i28: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit29

bb.aa:                                            ; preds = %bb.z
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #33, !inline_history !2231
  unreachable

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit29: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i26, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread

_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread: ; preds = %bb.b, %bb.a, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit29, %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit
  ret void

bb.ab:                                            ; preds = %bb.x, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn16 = phi { ptr, i32 } [ %lpad.loopexit.split-lp54, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn, %bb.x ]
  resume { ptr, i32 } %.pn16
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE14setXYRangeDataERKj(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Vec2", align 8 ; 6 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec2", align 8 ; 7 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec2", align 4 ; 6 uses
  %5 = alloca %"class.openvdb::v13_0::math::Vec2", align 4 ; 6 uses
  %6 = alloca %"class.openvdb::v13_0::math::Vec2", align 8 ; 6 uses
  %7 = alloca %"class.openvdb::v13_0::math::Vec2", align 8 ; 7 uses
  %8 = alloca %"class.openvdb::v13_0::math::Vec2", align 4 ; 6 uses
  %9 = alloca %"class.openvdb::v13_0::math::Vec2", align 4 ; 6 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !741    ; 5 uses
  %i.b = uitofp i32 %i.a to float                 ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 11 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !2203 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 13 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !3004 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 6 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !2204 ; 2 uses
  %i.i = fsub float %i.d, %i.f                    ; 5 uses
  %i.j = fadd float %i.f, %i.h                    ; 5 uses
  %i.k = fcmp ogt float %i.i, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.l, align 8, !tbaa !3007
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> <float 1.000000e+00, float f0x7F7FFFFF>, ptr %i.m, align 8, !tbaa !1161
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float f0xFF7FFFFF, ptr %i.n, align 8, !tbaa !3008
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.o, align 4, !tbaa !3009
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1857 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1856
  %.not.i.i.i = icmp eq ptr %i.s, %i.q
  br i1 %.not.i.i.i, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5clearEv.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.b
  store ptr %i.q, ptr %i.r, align 8, !tbaa !1856
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5clearEv.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5clearEv.exit: ; preds = %bb.b, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1857 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1856
  %.not.i.i = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5clearEv.exit
  store ptr %i.u, ptr %i.v, align 8, !tbaa !1856
  br label %_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf.exit

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.y = load i8, ptr %i.x, align 8, !tbaa !3006, !range !788, !noundef !789
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = fadd float %i.d, %i.f                   ; 2 uses
  store i32 %i.a, ptr %i.aa, align 8, !tbaa !3007
  %i.ac = fdiv float 1.000000e+00, %i.b           ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store float %i.ac, ptr %i.ad, align 8, !tbaa !3016
  %i.ae = icmp eq i32 %i.a, 1
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = fadd float %i.i, -5.000000e-04
  %i.ag = tail call noundef float @llvm.ceil.f32(float %i.af)
  %i.ah = fadd float %i.ab, 5.000000e-04
  %i.ai = tail call noundef float @llvm.floor.f32(float %i.ah)
  %i.aj = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ai, i64 1
  %i.al = fptosi <2 x float> %i.ak to <2 x i32>
  %i.am = sitofp <2 x i32> %i.al to <2 x float>
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit

bb.f:                                             ; preds = %bb.d
  %i.an = fadd nnan ninf float %i.b, -1.000000e+00
  %i.ao = fmul nnan float %i.an, 5.000000e-01
  %i.ap = insertelement <2 x float> poison, float %i.i, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.ab, i64 1
  %i.ar = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = fsub <2 x float> %i.aq, %i.as
  %i.au = insertelement <2 x float> poison, float %i.b, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aw = fdiv <2 x float> %i.at, %i.av
  %i.ax = fadd <2 x float> %i.aw, <float -5.000000e-04, float 5.000000e-04> ; 2 uses
  %i.ay = extractelement <2 x float> %i.ax, i64 0
  %i.az = tail call noundef float @llvm.ceil.f32(float %i.ay)
  %i.ba = extractelement <2 x float> %i.ax, i64 1
  %i.bb = tail call noundef float @llvm.floor.f32(float %i.ba)
  %i.bc = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %i.bb, i64 1
  %i.be = fptosi <2 x float> %i.bd to <2 x i32>
  %i.bf = sitofp <2 x i32> %i.be to <2 x float>
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.bf, <2 x float> %i.as)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit: ; preds = %bb.e, %bb.f
  %i.bh = phi <2 x float> [ %i.am, %bb.e ], [ %i.bg, %bb.f ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  store <2 x float> %i.bh, ptr %i.bi, align 4, !tbaa !1161
  %shift = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.bh
  %i.bj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bk = tail call noundef float @llvm.fabs.f32(float %i.bj)
  %i.bl = fmul float %i.ac, %i.bk
  %i.bm = fadd float %i.bl, 5.000000e-01
  %i.bn = tail call noundef float @llvm.floor.f32(float %i.bm)
  %i.bo = fptoui float %i.bn to i32
  %i.bp = add i32 %i.bo, 1                        ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !3009
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bs = zext i32 %i.bp to i64
  tail call void @_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 noundef %i.bs, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MAXVALUEE)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bu = load i32, ptr %i.bq, align 4, !tbaa !3009
  %i.bv = zext i32 %i.bu to i64
  tail call void @_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 noundef %i.bv, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MINVALUEE)
  %i.bw = load float, ptr %i.c, align 8, !tbaa !2203 ; 3 uses
  %i.bx = load float, ptr %i.e, align 4, !tbaa !3004 ; 4 uses
  %i.by = fsub float %i.bw, %i.bx                 ; 2 uses
  %i.bz = load i32, ptr %1, align 4, !tbaa !741   ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit
  %i.cb = fadd float %i.by, -5.000000e-04
  %i.cc = tail call noundef float @llvm.ceil.f32(float %i.cb)
  %i.cd = fptosi float %i.cc to i32
  %i.ce = sitofp i32 %i.cd to float
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit

bb.h:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit
  %i.cf = uitofp i32 %i.bz to float               ; 3 uses
  %i.cg = fadd nnan ninf float %i.cf, -1.000000e+00
  %i.ch = fmul nnan float %i.cg, 5.000000e-01     ; 2 uses
  %i.ci = fsub float %i.by, %i.ch
  %i.cj = fdiv float %i.ci, %i.cf
  %i.ck = fadd float %i.cj, -5.000000e-04
  %i.cl = tail call noundef float @llvm.ceil.f32(float %i.ck)
  %i.cm = fptosi float %i.cl to i32
  %i.cn = sitofp i32 %i.cm to float
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cn, float %i.ch)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit: ; preds = %bb.g, %bb.h
  %i.cp = phi float [ %i.ce, %bb.g ], [ %i.co, %bb.h ] ; 2 uses
  %i.cq = fadd float %i.bw, %i.bx
  %i.cr = fcmp ugt float %i.cp, %i.cq
  br i1 %i.cr, label %._crit_edge242, label %.lr.ph241

.lr.ph241:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 348
  br label %bb.q

._crit_edge242:                                   ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit
  %.lcssa = phi float [ %i.bx, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit ], [ %i.hk, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !1161 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !1161 ; 2 uses
  %i.cx = fmul float %i.cw, %i.cw
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.cx)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.da = load float, ptr %i.cz, align 8, !tbaa !1161 ; 2 uses
  %i.db = tail call noundef float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.cy) ; 2 uses
  %i.dc = tail call float @llvm.fabs.f32(float %i.db)
  %i.dd = fcmp ule float %i.dc, f0x322BCC77
  br i1 %i.dd, label %_ZNK7openvdb5v13_04math4Vec3IfE8unitSafeEv.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge242
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.db)
  %.sroa.0.0.copyload4.i.i.i = load <2 x float>, ptr %i.ct, align 8
  %i.de = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fdiv <2 x float> %.sroa.0.0.copyload4.i.i.i, %i.df
  br label %_ZNK7openvdb5v13_04math4Vec3IfE8unitSafeEv.exit.i

_ZNK7openvdb5v13_04math4Vec3IfE8unitSafeEv.exit.i: ; preds = %bb.i, %._crit_edge242
  %.sroa.0.0.i.i = phi <2 x float> [ %i.dg, %bb.i ], [ <float 1.000000e+00, float 0.000000e+00>, %._crit_edge242 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.sroa.0.0.copyload4.i.i = load <2 x float>, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 260
  %.sroa.0.0.copyload4.i21.i = load <2 x float>, ptr %i.di, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.dj = insertelement <2 x float> poison, float %.lcssa, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x float> %i.dk, %.sroa.0.0.i.i  ; 2 uses
  %i.dm = fsub <2 x float> %.sroa.0.0.copyload4.i.i, %i.dl ; 2 uses
  store <2 x float> %i.dm, ptr %6, align 8, !tbaa !1161
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.dn = fadd <2 x float> %i.dl, %.sroa.0.0.copyload4.i21.i
  store <2 x float> %i.dn, ptr %7, align 8, !tbaa !1161
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1791 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !1161
  %i.ds = load <2 x float>, ptr %i.dp, align 4, !tbaa !1161
  %i.dt = fneg <2 x float> %i.ds                  ; 2 uses
  %i.du = extractelement <2 x float> %i.dt, i64 0
  %i.dv = fsub float %i.du, %i.dr                 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !1161
  %i.dy = extractelement <2 x float> %i.dt, i64 1
  %i.dz = fsub float %i.dy, %i.dx                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1791 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !1161 ; 3 uses
  %i.ee = fneg float %i.ed                        ; 3 uses
  %i.ef = load float, ptr %i.eb, align 4, !tbaa !1161 ; 4 uses
  store float %i.ee, ptr %8, align 4, !tbaa !1161
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  store float %i.ef, ptr %i.eg, align 4, !tbaa !1161
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !1161 ; 3 uses
  %i.ek = fneg float %i.ej                        ; 3 uses
  %i.el = load float, ptr %i.eh, align 4, !tbaa !1161 ; 4 uses
  store float %i.ek, ptr %9, align 4, !tbaa !1161
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  store float %i.el, ptr %i.em, align 4, !tbaa !1161
  %i.en = fmul float %i.dz, %i.ef
  %i.eo = tail call noundef float @llvm.fmuladd.f32(float %i.ee, float %i.dv, float %i.en)
  %i.ep = fcmp ogt float %i.eo, 0.000000e+00
  br i1 %i.ep, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04math4Vec3IfE8unitSafeEv.exit.i
  store float %i.ed, ptr %8, align 4, !tbaa !1161
  %i.eq = fneg float %i.ef                        ; 2 uses
  store float %i.eq, ptr %i.eg, align 4, !tbaa !1161
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK7openvdb5v13_04math4Vec3IfE8unitSafeEv.exit.i
  %i.er = phi float [ %i.eq, %bb.j ], [ %i.ef, %_ZNK7openvdb5v13_04math4Vec3IfE8unitSafeEv.exit.i ] ; 3 uses
  %i.es = phi float [ %i.ed, %bb.j ], [ %i.ee, %_ZNK7openvdb5v13_04math4Vec3IfE8unitSafeEv.exit.i ] ; 3 uses
  %i.et = fmul float %i.dz, %i.el
  %i.eu = tail call noundef float @llvm.fmuladd.f32(float %i.ek, float %i.dv, float %i.et)
  %i.ev = fcmp ogt float %i.eu, 0.000000e+00
  br i1 %i.ev, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float %i.ej, ptr %9, align 4, !tbaa !1161
  %i.ew = fneg float %i.el                        ; 2 uses
  store float %i.ew, ptr %i.em, align 4, !tbaa !1161
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ex = phi float [ %i.ew, %bb.l ], [ %i.el, %bb.k ] ; 3 uses
  %i.ey = phi float [ %i.ej, %bb.l ], [ %i.ek, %bb.k ] ; 3 uses
  %i.ez = fmul float %i.er, %i.er
  %i.fa = tail call noundef float @llvm.fmuladd.f32(float %i.es, float %i.es, float %i.ez)
  %i.fb = tail call float @llvm.fabs.f32(float %i.fa)
  %i.fc = fcmp ule float %i.fb, f0x322BCC77
  br i1 %i.fc, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fd = load <2 x float>, ptr %7, align 8
  %i.fe = fsub <2 x float> %i.fd, %i.dm           ; 2 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 1
  %i.fg = fmul float %i.er, %i.ff
  %i.fh = extractelement <2 x float> %i.fe, i64 0
  %i.fi = tail call noundef float @llvm.fmuladd.f32(float %i.es, float %i.fh, float %i.fg)
  %i.fj = fcmp olt float %i.fi, 0.000000e+00
  %..i = select i1 %i.fj, ptr %6, ptr %7
  call void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE24intersectWithXYHalfSpaceERKNS0_4math4Vec2IfEESN_(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %..i)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.fk = fmul float %i.ex, %i.ex
  %i.fl = call noundef float @llvm.fmuladd.f32(float %i.ey, float %i.ey, float %i.fk)
  %i.fm = call float @llvm.fabs.f32(float %i.fl)
  %i.fn = fcmp ule float %i.fm, f0x322BCC77
  br i1 %i.fn, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE25intersectWithXYWedgeLinesEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fo = load <2 x float>, ptr %7, align 8
  %i.fp = load <2 x float>, ptr %6, align 8, !tbaa !1161
  %i.fq = fsub <2 x float> %i.fo, %i.fp           ; 2 uses
  %i.fr = extractelement <2 x float> %i.fq, i64 1
  %i.fs = fmul float %i.ex, %i.fr
  %i.ft = extractelement <2 x float> %i.fq, i64 0
  %i.fu = call noundef float @llvm.fmuladd.f32(float %i.ey, float %i.ft, float %i.fs)
  %i.fv = fcmp olt float %i.fu, 0.000000e+00
  %.1.i = select i1 %i.fv, ptr %6, ptr %7
  call void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE24intersectWithXYHalfSpaceERKNS0_4math4Vec2IfEESN_(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %.1.i)
  br label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE25intersectWithXYWedgeLinesEv.exit

_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE25intersectWithXYWedgeLinesEv.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf.exit

bb.q:                                             ; preds = %.lr.ph241, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit
  %i.fw = phi float [ %i.bx, %.lr.ph241 ], [ %i.hk, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit ] ; 2 uses
  %i.fx = phi float [ %i.bw, %.lr.ph241 ], [ %i.hj, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit ]
  %storemerge36240 = phi float [ %i.cp, %.lr.ph241 ], [ %i.hi, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit ] ; 4 uses
  %i.fy = load float, ptr %i.cs, align 4, !tbaa !1161 ; 2 uses
  %i.fz = fmul float %i.fw, %i.fw
  %i.ga = fsub float %storemerge36240, %i.fx      ; 2 uses
  %i.gb = fmul float %i.ga, %i.ga
  %i.gc = fsub float %i.fz, %i.gb
  %i.gd = tail call noundef float @sqrtf(float noundef %i.gc) #24 ; 2 uses
  %i.ge = fsub float %i.fy, %i.gd                 ; 3 uses
  %i.gf = fadd float %i.fy, %i.gd                 ; 3 uses
  %i.gg = tail call float @llvm.fabs.f32(float %i.ge)
  %i.gh = fcmp ueq float %i.gg, +inf
  br i1 %i.gh, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gi = load float, ptr %i.ad, align 8, !tbaa !3016
  %i.gj = load float, ptr %i.bi, align 4, !tbaa !3017
  %i.gk = fsub float %storemerge36240, %i.gj
  %i.gl = fmul float %i.gi, %i.gk
  %i.gm = fadd float %i.gl, 5.000000e-01
  %i.gn = tail call noundef float @llvm.floor.f32(float %i.gm)
  %i.go = fptoui float %i.gn to i32
  %i.gp = zext i32 %i.go to i64
  %i.gq = load ptr, ptr %i.br, align 8, !tbaa !1857
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gp ; 2 uses
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !1161
  %i.gt = fcmp olt float %i.ge, %i.gs
  br i1 %i.gt, label %bb.s, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i

bb.s:                                             ; preds = %bb.r
  store float %i.ge, ptr %i.gr, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.gu = tail call float @llvm.fabs.f32(float %i.gf)
  %i.gv = fcmp ueq float %i.gu, +inf
  br i1 %i.gv, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i
  %i.gw = load float, ptr %i.ad, align 8, !tbaa !3016
  %i.gx = load float, ptr %i.bi, align 4, !tbaa !3017
  %i.gy = fsub float %storemerge36240, %i.gx
  %i.gz = fmul float %i.gw, %i.gy
  %i.ha = fadd float %i.gz, 5.000000e-01
  %i.hb = tail call noundef float @llvm.floor.f32(float %i.ha)
  %i.hc = fptoui float %i.hb to i32
  %i.hd = zext i32 %i.hc to i64
  %i.he = load ptr, ptr %i.bt, align 8, !tbaa !1857
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.hd ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !1161
  %i.hh = fcmp ogt float %i.gf, %i.hg
  br i1 %i.hh, label %bb.u, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit

bb.u:                                             ; preds = %bb.t
  store float %i.gf, ptr %i.hf, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i, %bb.t, %bb.u
  %i.hi = fadd float %storemerge36240, %i.b       ; 2 uses
  %i.hj = load float, ptr %i.c, align 8, !tbaa !2203 ; 2 uses
  %i.hk = load float, ptr %i.e, align 4, !tbaa !3004 ; 3 uses
  %i.hl = fadd float %i.hj, %i.hk
  %i.hm = fcmp ugt float %i.hi, %i.hl
  br i1 %i.hm, label %._crit_edge242, label %bb.q, !llvm.loop !7778

bb.v:                                             ; preds = %bb.c
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 6 uses
  %i.ho = load float, ptr %i.hn, align 8, !tbaa !2207
  %i.hp = tail call noundef float @llvm.fabs.f32(float %i.ho)
  %i.hq = fmul float %i.f, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  %i.hs = load float, ptr %i.hr, align 8, !tbaa !3005
  %i.ht = fdiv float %i.hq, %i.hs                 ; 2 uses
  %i.hu = fcmp olt float %i.ht, %i.f
  %.sroa.speculated194 = select i1 %i.hu, float %i.ht, float %i.f
  %i.hv = insertelement <4 x float> poison, float %i.h, i64 0
  %i.hw = insertelement <4 x float> %i.hv, float %i.d, i64 1
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0> ; 2 uses
  %i.hy = insertelement <4 x float> poison, float %.sroa.speculated194, i64 0
  %i.hz = shufflevector <4 x float> %i.hy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ia = fadd <4 x float> %i.hx, %i.hz           ; 4 uses
  %i.ib = fsub <4 x float> %i.hx, %i.hz           ; 4 uses
  %i.ic = shufflevector <4 x float> %i.ia, <4 x float> %i.ib, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 2 uses
  %i.id = icmp eq i32 %i.a, 1
  br i1 %i.id, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ie = fadd float %i.i, -5.000000e-04
  %i.if = tail call noundef float @llvm.ceil.f32(float %i.ie)
  %i.ig = fadd <4 x float> %i.ic, splat (float -5.000000e-04)
  %i.ih = tail call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.ig)
  %i.ii = fptosi <4 x float> %i.ih to <4 x i32>
  %i.ij = sitofp <4 x i32> %i.ii to <4 x float>
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.ik, align 8, !tbaa !3007
  %i.il = fdiv float 1.000000e+00, %i.b           ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store float %i.il, ptr %i.im, align 8, !tbaa !3016
  %i.in = fadd float %i.j, 5.000000e-04
  %i.io = tail call noundef float @llvm.floor.f32(float %i.in)
  %i.ip = insertelement <2 x float> poison, float %i.if, i64 0
  %i.iq = insertelement <2 x float> %i.ip, float %i.io, i64 1
  %i.ir = fptosi <2 x float> %i.iq to <2 x i32>
  %i.is = sitofp <2 x i32> %i.ir to <2 x float>
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit42

bb.x:                                             ; preds = %bb.v
  %i.it = fadd nnan ninf float %i.b, -1.000000e+00
  %i.iu = fmul nnan float %i.it, 5.000000e-01     ; 2 uses
  %i.iv = insertelement <4 x float> poison, float %i.iu, i64 0
  %i.iw = shufflevector <4 x float> %i.iv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ix = fsub <4 x float> %i.ic, %i.iw
  %i.iy = insertelement <4 x float> poison, float %i.b, i64 0
  %i.iz = shufflevector <4 x float> %i.iy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ja = fdiv <4 x float> %i.ix, %i.iz
  %i.jb = fadd <4 x float> %i.ja, splat (float -5.000000e-04)
  %i.jc = tail call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.jb)
  %i.jd = fptosi <4 x float> %i.jc to <4 x i32>
  %i.je = sitofp <4 x i32> %i.jd to <4 x float>
  %i.jf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iz, <4 x float> %i.je, <4 x float> %i.iw)
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.a, ptr %i.jg, align 8, !tbaa !3007
  %i.jh = fdiv float 1.000000e+00, %i.b           ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store float %i.jh, ptr %i.ji, align 8, !tbaa !3016
  %i.jj = insertelement <2 x float> poison, float %i.i, i64 0
  %i.jk = insertelement <2 x float> %i.jj, float %i.j, i64 1
  %i.jl = insertelement <2 x float> poison, float %i.iu, i64 0
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jn = fsub <2 x float> %i.jk, %i.jm
  %i.jo = insertelement <2 x float> poison, float %i.b, i64 0
  %i.jp = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jq = fdiv <2 x float> %i.jn, %i.jp
  %i.jr = fadd <2 x float> %i.jq, <float -5.000000e-04, float 5.000000e-04> ; 2 uses
  %i.js = extractelement <2 x float> %i.jr, i64 0
  %i.jt = tail call noundef float @llvm.ceil.f32(float %i.js)
  %i.ju = extractelement <2 x float> %i.jr, i64 1
  %i.jv = tail call noundef float @llvm.floor.f32(float %i.ju)
  %i.jw = insertelement <2 x float> poison, float %i.jt, i64 0
  %i.jx = insertelement <2 x float> %i.jw, float %i.jv, i64 1
  %i.jy = fptosi <2 x float> %i.jx to <2 x i32>
  %i.jz = sitofp <2 x i32> %i.jy to <2 x float>
  %i.ka = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jp, <2 x float> %i.jz, <2 x float> %i.jm)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit42

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit42: ; preds = %bb.w, %bb.x
  %i.kb = phi ptr [ %i.im, %bb.w ], [ %i.ji, %bb.x ] ; 18 uses
  %i.kc = phi float [ %i.il, %bb.w ], [ %i.jh, %bb.x ]
  %i.kd = phi <2 x float> [ %i.is, %bb.w ], [ %i.ka, %bb.x ] ; 4 uses
  %i.ke = phi <4 x float> [ %i.ij, %bb.w ], [ %i.jf, %bb.x ] ; 6 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 19 uses
  store <2 x float> %i.kd, ptr %i.kf, align 4, !tbaa !1161
  %i.kg = extractelement <2 x float> %i.kd, i64 0 ; 2 uses
  %shift306 = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop307 = fsub <2 x float> %shift306, %i.kd
  %i.kh = extractelement <2 x float> %foldExtExtBinop307, i64 0
  %i.ki = tail call noundef float @llvm.fabs.f32(float %i.kh)
  %i.kj = fmul float %i.kc, %i.ki
  %i.kk = fadd float %i.kj, 5.000000e-01
  %i.kl = tail call noundef float @llvm.floor.f32(float %i.kk)
  %i.km = fptoui float %i.kl to i32
  %i.kn = add i32 %i.km, 1                        ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !3009
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.kq = zext i32 %i.kn to i64
  tail call void @_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.kp, i64 noundef %i.kq, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MAXVALUEE)
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 10 uses
  %i.ks = load i32, ptr %i.ko, align 4, !tbaa !3009
  %i.kt = zext i32 %i.ks to i64
  tail call void @_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.kr, i64 noundef %i.kt, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MINVALUEE)
  %i.ku = extractelement <4 x float> %i.ib, i64 1 ; 2 uses
  %i.kv = fcmp ugt float %i.kg, %i.ku
  br i1 %i.kv, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit42
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 348
  br label %bb.y

._crit_edge:                                      ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit42
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 7 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !1161
  %i.kz = tail call float @llvm.fabs.f32(float %i.ky)
  %i.la = fcmp ule float %i.kz, f0x322BCC77
  br i1 %i.la, label %.loopexit216, label %bb.ad

bb.y:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44
  %storemerge219 = phi float [ %i.kg, %.lr.ph ], [ %i.mn, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44 ] ; 4 uses
  %i.lb = load float, ptr %i.kw, align 4, !tbaa !1161 ; 2 uses
  %i.lc = load float, ptr %i.e, align 4, !tbaa !1161 ; 2 uses
  %i.ld = fmul float %i.lc, %i.lc
  %i.le = load float, ptr %i.c, align 8, !tbaa !1161
  %i.lf = fsub float %storemerge219, %i.le        ; 2 uses
  %i.lg = fmul float %i.lf, %i.lf
  %i.lh = fsub float %i.ld, %i.lg
  %i.li = tail call noundef float @sqrtf(float noundef %i.lh) #24 ; 2 uses
  %i.lj = fsub float %i.lb, %i.li                 ; 3 uses
  %i.lk = fadd float %i.lb, %i.li                 ; 3 uses
  %i.ll = tail call float @llvm.fabs.f32(float %i.lj)
  %i.lm = fcmp ueq float %i.ll, +inf
  br i1 %i.lm, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i43, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ln = load float, ptr %i.kb, align 8, !tbaa !3016
  %i.lo = load float, ptr %i.kf, align 4, !tbaa !3017
  %i.lp = fsub float %storemerge219, %i.lo
  %i.lq = fmul float %i.ln, %i.lp
  %i.lr = fadd float %i.lq, 5.000000e-01
  %i.ls = tail call noundef float @llvm.floor.f32(float %i.lr)
  %i.lt = fptoui float %i.ls to i32
  %i.lu = zext i32 %i.lt to i64
  %i.lv = load ptr, ptr %i.kp, align 8, !tbaa !1857
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.lu ; 2 uses
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !1161
  %i.ly = fcmp olt float %i.lj, %i.lx
  br i1 %i.ly, label %bb.aa, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i43

bb.aa:                                            ; preds = %bb.z
  store float %i.lj, ptr %i.lw, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i43

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i43: ; preds = %bb.aa, %bb.z, %bb.y
  %i.lz = tail call float @llvm.fabs.f32(float %i.lk)
  %i.ma = fcmp ueq float %i.lz, +inf
  br i1 %i.ma, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44, label %bb.ab

bb.ab:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i43
  %i.mb = load float, ptr %i.kb, align 8, !tbaa !3016
  %i.mc = load float, ptr %i.kf, align 4, !tbaa !3017
  %i.md = fsub float %storemerge219, %i.mc
  %i.me = fmul float %i.mb, %i.md
  %i.mf = fadd float %i.me, 5.000000e-01
  %i.mg = tail call noundef float @llvm.floor.f32(float %i.mf)
  %i.mh = fptoui float %i.mg to i32
  %i.mi = zext i32 %i.mh to i64
  %i.mj = load ptr, ptr %i.kr, align 8, !tbaa !1857
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.mi ; 2 uses
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !1161
  %i.mm = fcmp ogt float %i.lk, %i.ml
  br i1 %i.mm, label %bb.ac, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44

bb.ac:                                            ; preds = %bb.ab
  store float %i.lk, ptr %i.mk, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i43, %bb.ab, %bb.ac
  %i.mn = fadd float %storemerge219, %i.b         ; 2 uses
  %i.mo = fcmp ugt float %i.mn, %i.ku
  br i1 %i.mo, label %._crit_edge, label %bb.y, !llvm.loop !7779

bb.ad:                                            ; preds = %._crit_edge
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 3 uses
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !2206
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ms = load float, ptr %i.mr, align 8, !tbaa !7788
  %i.mt = fcmp ogt float %i.mq, %i.ms
  %i.mu = extractelement <4 x float> %i.ia, i64 2 ; 2 uses
  %i.mv = extractelement <4 x float> %i.ib, i64 3 ; 2 uses
  %i.mw = fcmp olt float %i.mv, %i.mu
  %.sroa.speculated176 = select i1 %i.mw, float %i.mv, float %i.mu ; 3 uses
  %i.mx = extractelement <4 x float> %i.ke, i64 1 ; 3 uses
  %i.my = fcmp ugt float %i.mx, %.sroa.speculated176 ; 2 uses
  br i1 %i.mt, label %.preheader215, label %.preheader217

.preheader217:                                    ; preds = %bb.ad
  br i1 %i.my, label %.loopexit216, label %.lr.ph221

.preheader215:                                    ; preds = %bb.ad
  br i1 %i.my, label %.loopexit216, label %.lr.ph223

.lr.ph223:                                        ; preds = %.preheader215, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47
  %storemerge29222 = phi float [ %i.os, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47 ], [ %i.mx, %.preheader215 ] ; 4 uses
  %i.mz = load float, ptr %i.mp, align 4, !tbaa !2206 ; 2 uses
  %i.na = load float, ptr %i.hn, align 8, !tbaa !2207
  %i.nb = load float, ptr %i.c, align 8, !tbaa !2203
  %i.nc = fsub float %storemerge29222, %i.nb      ; 3 uses
  %i.nd = load float, ptr %i.e, align 4, !tbaa !3004 ; 3 uses
  %i.ne = load float, ptr %i.hr, align 8, !tbaa !3005
  %i.nf = fneg float %i.ne
  %i.ng = fmul float %i.nd, %i.nf
  %i.nh = tail call float @llvm.fmuladd.f32(float %i.na, float %i.nc, float %i.ng)
  %i.ni = load float, ptr %i.kx, align 4, !tbaa !2205
  %i.nj = fdiv float %i.nh, %i.ni
  %i.nk = fadd float %i.mz, %i.nj                 ; 3 uses
  %i.nl = fmul float %i.nd, %i.nd
  %i.nm = fmul float %i.nc, %i.nc
  %i.nn = fsub float %i.nl, %i.nm
  %i.no = tail call noundef float @sqrtf(float noundef %i.nn) #24
  %i.np = fadd float %i.mz, %i.no                 ; 3 uses
  %i.nq = tail call float @llvm.fabs.f32(float %i.nk)
  %i.nr = fcmp ueq float %i.nq, +inf
  br i1 %i.nr, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph223
  %i.ns = load float, ptr %i.kb, align 8, !tbaa !3016
  %i.nt = load float, ptr %i.kf, align 4, !tbaa !3017
  %i.nu = fsub float %storemerge29222, %i.nt
  %i.nv = fmul float %i.ns, %i.nu
  %i.nw = fadd float %i.nv, 5.000000e-01
  %i.nx = tail call noundef float @llvm.floor.f32(float %i.nw)
  %i.ny = fptoui float %i.nx to i32
  %i.nz = zext i32 %i.ny to i64
  %i.oa = load ptr, ptr %i.kp, align 8, !tbaa !1857
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.nz ; 2 uses
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !1161
  %i.od = fcmp olt float %i.nk, %i.oc
  br i1 %i.od, label %bb.af, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46

end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvv:bb.a
.loopexit37:                                      ; preds = %bb.p, %.thread.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.cc, %.thread.i.i.i.i ], [ 8, %bb.p ]
  %.sroa.speculated.i.i = call noundef i64 @llvm.umin.i64(i64 %.1.i.i.i.i, i64 %i.bu)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.bg, ptr %8, align 8, !tbaa !3182
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.speculated.i.i, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !959
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.bg, ptr %i.ce, align 8, !tbaa !3182
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 4, ptr %i.cf, align 8, !tbaa !3185
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  invoke void @_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeINS1_35enumerable_thread_specific_iteratorINS1_17concurrent_vectorINS0_2d06paddedINS1_11ets_elementIN7openvdb5v13_04tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELm128EEENS1_23cache_aligned_allocatorISM_EEEESK_EEEEZNSA_5tools15ConvexVoxelizerINSA_4GridISK_EENSS_6lvlset28OpenTriangularPrismVoxelizerISV_NSA_4util15NullInterrupterEEESZ_E10iterateXYZILb0EEEvvE2OpKNS1_16auto_partitionerEE3runERKSR_RS13_RS15_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %.loopexit37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.cg = load i8, ptr %7, align 8, !tbaa !3179, !range !788, !noundef !789
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.r, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ci = load ptr, ptr %i.bs, align 8, !tbaa !3180 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !743
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(1232) %i.ci) #24, !inline_history !8186
  br label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit

_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit: ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN3tbb6detail2d126enumerable_thread_specificIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread

bb.t:                                             ; preds = %bb.m
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.x

bb.u:                                             ; preds = %.loopexit37
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.cp = load i8, ptr %7, align 8, !tbaa !3179, !range !788, !noundef !789
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.v, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24

bb.v:                                             ; preds = %bb.u
  %i.cr = load ptr, ptr %i.bs, align 8, !tbaa !3180 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !743
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(1232) %i.cr) #24, !inline_history !8186
  br label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24

_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24: ; preds = %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.x

bb.x:                                             ; preds = %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.co, %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24 ], [ %i.cn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN3tbb6detail2d126enumerable_thread_specificIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ab

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !2180 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i25, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i26, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !2182
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i26

_ZNSt6vectorIiSaIiEED2Ev.exit.i26:                ; preds = %bb.y, %.critedge
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %3, align 8, !tbaa !743
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !3159 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.de, null
  br i1 %.not.i.i27, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit29, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i26
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %3, ptr %i.a, align 8, !tbaa !3161
  %i.dg = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE14internal_eraseISH_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i28 unwind label %bb.aa, !inline_history !3162 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i28: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit29

bb.aa:                                            ; preds = %bb.z
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #33, !inline_history !3162
  unreachable

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit29: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i26, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread

_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread: ; preds = %bb.b, %bb.a, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit29, %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit
  ret void

bb.ab:                                            ; preds = %bb.x, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn16 = phi { ptr, i32 } [ %lpad.loopexit.split-lp54, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn, %bb.x ]
  resume { ptr, i32 } %.pn16
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE14setXYRangeDataERKj(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3113 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  %i.h = load double, ptr %i.c, align 8, !tbaa !1192 ; 4 uses
  %i.i = load double, ptr %i.b, align 8, !tbaa !1192 ; 4 uses
  %i.j = fcmp olt double %i.h, %i.i               ; 2 uses
  %..i.i.i.i = select i1 %i.j, ptr %i.c, ptr %i.b
  %i.k = load double, ptr %i.d, align 8, !tbaa !1192 ; 2 uses
  %i.l = select i1 %i.j, double %i.h, double %i.i
  %i.m = fcmp olt double %i.k, %i.l
  %..i.i3.i.i = select i1 %i.m, ptr %i.d, ptr %..i.i.i.i
  %i.n = load double, ptr %i.f, align 8, !tbaa !1192 ; 4 uses
  %i.o = load double, ptr %i.e, align 8, !tbaa !1192 ; 4 uses
  %i.p = fcmp olt double %i.n, %i.o               ; 2 uses
  %..i.i.i6.i = select i1 %i.p, ptr %i.f, ptr %i.e
  %i.q = load double, ptr %i.g, align 8, !tbaa !1192 ; 2 uses
  %i.r = select i1 %i.p, double %i.n, double %i.o
  %i.s = fcmp olt double %i.q, %i.r
  %..i.i3.i7.i = select i1 %i.s, ptr %i.g, ptr %..i.i.i6.i
  %i.t = load double, ptr %..i.i3.i7.i, align 8, !tbaa !1192 ; 2 uses
  %i.u = load double, ptr %..i.i3.i.i, align 8, !tbaa !1192 ; 2 uses
  %i.v = fcmp olt double %i.i, %i.h               ; 2 uses
  %..i.i.i.i23 = select i1 %i.v, ptr %i.c, ptr %i.b
  %i.w = select i1 %i.v, double %i.h, double %i.i
  %i.x = fcmp olt double %i.w, %i.k
  %..i.i3.i.i24 = select i1 %i.x, ptr %i.d, ptr %..i.i.i.i23
  %i.y = fcmp olt double %i.o, %i.n               ; 2 uses
  %..i.i.i6.i25 = select i1 %i.y, ptr %i.f, ptr %i.e
  %i.z = select i1 %i.y, double %i.n, double %i.o
  %i.aa = fcmp olt double %i.z, %i.q
  %..i.i3.i7.i26 = select i1 %i.aa, ptr %i.g, ptr %..i.i.i6.i25
  %i.ab = load double, ptr %..i.i3.i.i24, align 8, !tbaa !1192 ; 2 uses
  %i.ac = load double, ptr %..i.i3.i7.i26, align 8, !tbaa !1192 ; 2 uses
  %i.ad = fcmp olt double %i.t, %i.u
  %i.ae = select i1 %i.ad, double %i.t, double %i.u ; 2 uses
  %i.af = fcmp olt double %i.ab, %i.ac
  %i.ag = select i1 %i.af, double %i.ac, double %i.ab ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load i32, ptr %1, align 4, !tbaa !741   ; 3 uses
  store i32 %i.ai, ptr %i.ah, align 8, !tbaa !3155
  %i.aj = uitofp i32 %i.ai to double              ; 3 uses
  %i.ak = fdiv double 1.000000e+00, %i.aj         ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.ak, ptr %i.al, align 8, !tbaa !3186
  %i.am = icmp eq i32 %i.ai, 1
  br i1 %i.am, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.an = fadd double %i.ae, f0xBF40624DE0000000
  %i.ao = tail call noundef double @llvm.ceil.f64(double %i.an)
  %i.ap = fadd double %i.ag, f0x3F40624DE0000000
  %i.aq = tail call noundef double @llvm.floor.f64(double %i.ap)
  %i.ar = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.aq, i64 1
  %i.at = fptosi <2 x double> %i.as to <2 x i32>
  %i.au = sitofp <2 x i32> %i.at to <2 x double>
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit

bb.c:                                             ; preds = %bb.a
  %i.av = fadd nnan ninf double %i.aj, -1.000000e+00
  %i.aw = fmul nnan double %i.av, 5.000000e-01
  %i.ax = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.ag, i64 1
  %i.az = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bb = fsub <2 x double> %i.ay, %i.ba
  %i.bc = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.be = fdiv <2 x double> %i.bb, %i.bd          ; 2 uses
  %i.bf = extractelement <2 x double> %i.be, i64 0
  %i.bg = fadd double %i.bf, f0xBF40624DE0000000
  %i.bh = tail call noundef double @llvm.ceil.f64(double %i.bg)
  %i.bi = extractelement <2 x double> %i.be, i64 1
  %i.bj = fadd double %i.bi, f0x3F40624DE0000000
  %i.bk = tail call noundef double @llvm.floor.f64(double %i.bj)
  %i.bl = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.bk, i64 1
  %i.bn = fptosi <2 x double> %i.bm to <2 x i32>
  %i.bo = sitofp <2 x i32> %i.bn to <2 x double>
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.bo, <2 x double> %i.ba)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit: ; preds = %bb.b, %bb.c
  %i.bq = phi <2 x double> [ %i.au, %bb.b ], [ %i.bp, %bb.c ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x double> %i.bq, ptr %i.br, align 8, !tbaa !1192
  %shift = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.bq
  %i.bs = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bt = tail call noundef double @llvm.fabs.f64(double %i.bs)
  %i.bu = fmul double %i.ak, %i.bt
  %i.bv = fadd double %i.bu, 5.000000e-01
  %i.bw = tail call noundef double @llvm.floor.f64(double %i.bv)
  %i.bx = fptoui double %i.bw to i32
  %i.by = add i32 %i.bx, 1                        ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !3157
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cb = zext i32 %i.by to i64
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 noundef %i.cb, ptr noundef nonnull align 8 dereferenceable(8) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MAXVALUEE)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !3157
  %i.ce = zext i32 %i.cd to i64
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 noundef %i.ce, ptr noundef nonnull align 8 dereferenceable(8) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MINVALUEE)
  tail call void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj0ELj1ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  tail call void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj1ELj2ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  tail call void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj2ELj0ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  tail call void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj3ELj4ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  tail call void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj4ELj5ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  tail call void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj5ELj3ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  tail call void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj0ELj3ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  tail call void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj1ELj4ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  tail call void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj2ELj5ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj0ELj1ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3113 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 5 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !741    ; 2 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14: ; preds = %bb.a
  %i.f = load double, ptr %i.b, align 8, !tbaa !1192 ; 4 uses
  %i.g = fadd double %i.f, f0xBF40624DE0000000
  %i.h = tail call noundef double @llvm.ceil.f64(double %i.g)
  %i.i = fptosi double %i.h to i32
  %i.j = load double, ptr %i.c, align 8, !tbaa !1192 ; 4 uses
  %i.k = fadd double %i.j, f0xBF40624DE0000000
  %i.l = tail call noundef double @llvm.ceil.f64(double %i.k)
  %i.m = fptosi double %i.l to i32
  %i.n = icmp eq i32 %i.i, %i.m
  br i1 %i.n, label %.loopexit, label %bb.b

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread: ; preds = %bb.a
  %i.o = uitofp i32 %i.d to double                ; 5 uses
  %i.p = fadd nnan ninf double %i.o, -1.000000e+00
  %i.q = fmul nnan double %i.p, 5.000000e-01      ; 3 uses
  %i.r = load double, ptr %i.b, align 8, !tbaa !1192 ; 4 uses
  %i.s = load double, ptr %i.c, align 8, !tbaa !1192 ; 4 uses
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.s, i64 1
  %i.v = insertelement <2 x double> poison, double %i.q, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.x = fsub <2 x double> %i.u, %i.w
  %i.y = insertelement <2 x double> poison, double %i.o, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fdiv <2 x double> %i.x, %i.z
  %i.ab = fadd <2 x double> %i.aa, splat (double f0xBF40624DE0000000)
  %i.ac = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.ab)
  %i.ad = fptosi <2 x double> %i.ac to <2 x i32>
  %i.ae = sitofp <2 x i32> %i.ad to <2 x double>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.ae, <2 x double> %i.w) ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0
  %i.ah = extractelement <2 x double> %i.af, i64 1
  %i.ai = fcmp oeq double %i.ag, %i.ah
  br i1 %i.ai, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14
  %i.aj = fcmp olt double %i.j, %i.f
  %i.ak = select i1 %i.aj, double %i.j, double %i.f
  %i.al = fadd double %i.ak, f0xBF40624DE0000000
  %i.am = tail call noundef double @llvm.ceil.f64(double %i.al)
  %i.an = fptosi double %i.am to i32
  %i.ao = sitofp i32 %i.an to double
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread
  %i.ap = fcmp olt double %i.s, %i.r
  %i.aq = select i1 %i.ap, double %i.s, double %i.r
  %i.ar = fsub double %i.aq, %i.q
  %i.as = fdiv double %i.ar, %i.o
  %i.at = fadd double %i.as, f0xBF40624DE0000000
  %i.au = tail call noundef double @llvm.ceil.f64(double %i.at)
  %i.av = fptosi double %i.au to i32
  %i.aw = sitofp i32 %i.av to double
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.o, double %i.aw, double %i.q)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15: ; preds = %bb.b, %bb.c
  %.pre-phi = phi double [ 1.000000e+00, %bb.b ], [ %i.o, %bb.c ]
  %i.ay = phi double [ %i.f, %bb.b ], [ %i.r, %bb.c ]
  %i.az = phi double [ %i.j, %bb.b ], [ %i.s, %bb.c ]
  %i.ba = phi double [ %i.ao, %bb.b ], [ %i.ax, %bb.c ] ; 2 uses
  %i.bb = fcmp olt double %i.ay, %i.az
  %..i.i.i16 = select i1 %i.bb, ptr %i.c, ptr %i.b
  %i.bc = load double, ptr %..i.i.i16, align 8, !tbaa !1192 ; 2 uses
  %i.bd = fcmp ugt double %i.ba, %i.bc
  br i1 %i.bd, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit
  %storemerge27 = phi double [ %i.ba, %.lr.ph ], [ %i.da, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit ] ; 5 uses
  %i.bi = load <2 x double>, ptr %i.b, align 8, !tbaa !1192 ; 3 uses
  %i.bj = load <2 x double>, ptr %i.c, align 8, !tbaa !1192
  %i.bk = fsub <2 x double> %i.bj, %i.bi          ; 2 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 0
  %i.bm = extractelement <2 x double> %i.bk, i64 1
  %i.bn = fdiv double %i.bm, %i.bl
  %i.bo = extractelement <2 x double> %i.bi, i64 0
  %i.bp = fsub double %storemerge27, %i.bo
  %i.bq = extractelement <2 x double> %i.bi, i64 1
  %i.br = tail call noundef double @llvm.fmuladd.f64(double %i.bn, double %i.bp, double %i.bq) ; 5 uses
  %i.bs = tail call double @llvm.fabs.f64(double %i.br) ; 3 uses
  %i.bt = fcmp ueq double %i.bs, +inf
  br i1 %i.bt, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bu = load double, ptr %i.be, align 8, !tbaa !3186
  %i.bv = load double, ptr %i.bf, align 8, !tbaa !3187
  %i.bw = fsub double %storemerge27, %i.bv
  %i.bx = fmul double %i.bu, %i.bw
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = tail call noundef double @llvm.floor.f64(double %i.by)
  %i.ca = fptoui double %i.bz to i32
  %i.cb = zext i32 %i.ca to i64
  %i.cc = load ptr, ptr %i.bg, align 8, !tbaa !3116
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !1192
  %i.cf = fcmp olt double %i.br, %i.ce
  br i1 %i.cf, label %bb.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit

bb.f:                                             ; preds = %bb.e
  store double %i.br, ptr %i.cd, align 8, !tbaa !1192
  %i.cg = load <2 x double>, ptr %i.b, align 8, !tbaa !1192 ; 3 uses
  %i.ch = load <2 x double>, ptr %i.c, align 8, !tbaa !1192
  %i.ci = fsub <2 x double> %i.ch, %i.cg          ; 2 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 0
  %i.ck = extractelement <2 x double> %i.ci, i64 1
  %.pre36 = fdiv double %i.ck, %i.cj
  %i.cl = extractelement <2 x double> %i.cg, i64 0
  %.pre38 = fsub double %storemerge27, %i.cl
  %i.cm = extractelement <2 x double> %i.cg, i64 1
  %.pre40 = tail call noundef double @llvm.fmuladd.f64(double %.pre36, double %.pre38, double %i.cm) ; 2 uses
  %.pre42 = tail call double @llvm.fabs.f64(double %.pre40)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi43 = phi double [ %i.bs, %bb.d ], [ %i.bs, %bb.e ], [ %.pre42, %bb.f ]
  %.pre-phi41 = phi double [ %i.br, %bb.d ], [ %i.br, %bb.e ], [ %.pre40, %bb.f ] ; 2 uses
  %i.cn = fcmp ueq double %.pre-phi43, +inf
  br i1 %i.cn, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit
  %i.co = load double, ptr %i.be, align 8, !tbaa !3186
  %i.cp = load double, ptr %i.bf, align 8, !tbaa !3187
  %i.cq = fsub double %storemerge27, %i.cp
  %i.cr = fmul double %i.co, %i.cq
  %i.cs = fadd double %i.cr, 5.000000e-01
  %i.ct = tail call noundef double @llvm.floor.f64(double %i.cs)
  %i.cu = fptoui double %i.ct to i32
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load ptr, ptr %i.bh, align 8, !tbaa !3116
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cv ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !1192
  %i.cz = fcmp ogt double %.pre-phi41, %i.cy
  br i1 %i.cz, label %bb.h, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit

bb.h:                                             ; preds = %bb.g
  store double %.pre-phi41, ptr %i.cx, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit, %bb.g, %bb.h
  %i.da = fadd double %storemerge27, %.pre-phi    ; 2 uses
  %i.db = fcmp ugt double %i.da, %i.bc
  br i1 %i.db, label %.loopexit, label %bb.d, !llvm.loop !8188

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj1ELj2ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3113 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 5 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !741    ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14: ; preds = %bb.a
  %i.g = load double, ptr %i.c, align 8, !tbaa !1192 ; 4 uses
  %i.h = fadd double %i.g, f0xBF40624DE0000000
  %i.i = tail call noundef double @llvm.ceil.f64(double %i.h)
  %i.j = fptosi double %i.i to i32
  %i.k = load double, ptr %i.d, align 8, !tbaa !1192 ; 4 uses
  %i.l = fadd double %i.k, f0xBF40624DE0000000
  %i.m = tail call noundef double @llvm.ceil.f64(double %i.l)
  %i.n = fptosi double %i.m to i32
  %i.o = icmp eq i32 %i.j, %i.n
  br i1 %i.o, label %.loopexit, label %bb.b

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread: ; preds = %bb.a
  %i.p = uitofp i32 %i.e to double                ; 5 uses
  %i.q = fadd nnan ninf double %i.p, -1.000000e+00
  %i.r = fmul nnan double %i.q, 5.000000e-01      ; 3 uses
  %i.s = load double, ptr %i.c, align 8, !tbaa !1192 ; 4 uses
  %i.t = load double, ptr %i.d, align 8, !tbaa !1192 ; 4 uses
  %i.u = insertelement <2 x double> poison, double %i.s, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.t, i64 1
  %i.w = insertelement <2 x double> poison, double %i.r, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.y = fsub <2 x double> %i.v, %i.x
  %i.z = insertelement <2 x double> poison, double %i.p, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = fdiv <2 x double> %i.y, %i.aa
  %i.ac = fadd <2 x double> %i.ab, splat (double f0xBF40624DE0000000)
  %i.ad = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.ac)
  %i.ae = fptosi <2 x double> %i.ad to <2 x i32>
  %i.af = sitofp <2 x i32> %i.ae to <2 x double>
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.af, <2 x double> %i.x) ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = extractelement <2 x double> %i.ag, i64 1
  %i.aj = fcmp oeq double %i.ah, %i.ai
  br i1 %i.aj, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14
  %i.ak = fcmp olt double %i.k, %i.g
  %i.al = select i1 %i.ak, double %i.k, double %i.g
  %i.am = fadd double %i.al, f0xBF40624DE0000000
  %i.an = tail call noundef double @llvm.ceil.f64(double %i.am)
  %i.ao = fptosi double %i.an to i32
  %i.ap = sitofp i32 %i.ao to double
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread
  %i.aq = fcmp olt double %i.t, %i.s
  %i.ar = select i1 %i.aq, double %i.t, double %i.s
  %i.as = fsub double %i.ar, %i.r
  %i.at = fdiv double %i.as, %i.p
  %i.au = fadd double %i.at, f0xBF40624DE0000000
  %i.av = tail call noundef double @llvm.ceil.f64(double %i.au)
  %i.aw = fptosi double %i.av to i32
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.p, double %i.ax, double %i.r)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15: ; preds = %bb.b, %bb.c
  %.pre-phi = phi double [ 1.000000e+00, %bb.b ], [ %i.p, %bb.c ]
  %i.az = phi double [ %i.g, %bb.b ], [ %i.s, %bb.c ]
  %i.ba = phi double [ %i.k, %bb.b ], [ %i.t, %bb.c ]
  %i.bb = phi double [ %i.ap, %bb.b ], [ %i.ay, %bb.c ] ; 2 uses
  %i.bc = fcmp olt double %i.az, %i.ba
  %..i.i.i16 = select i1 %i.bc, ptr %i.d, ptr %i.c
  %i.bd = load double, ptr %..i.i.i16, align 8, !tbaa !1192 ; 2 uses
  %i.be = fcmp ugt double %i.bb, %i.bd
  br i1 %i.be, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit
  %storemerge27 = phi double [ %i.bb, %.lr.ph ], [ %i.db, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit ] ; 5 uses
  %i.bj = load <2 x double>, ptr %i.c, align 8, !tbaa !1192 ; 3 uses
  %i.bk = load <2 x double>, ptr %i.d, align 8, !tbaa !1192
  %i.bl = fsub <2 x double> %i.bk, %i.bj          ; 2 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0
  %i.bn = extractelement <2 x double> %i.bl, i64 1
  %i.bo = fdiv double %i.bn, %i.bm
  %i.bp = extractelement <2 x double> %i.bj, i64 0
  %i.bq = fsub double %storemerge27, %i.bp
  %i.br = extractelement <2 x double> %i.bj, i64 1
  %i.bs = tail call noundef double @llvm.fmuladd.f64(double %i.bo, double %i.bq, double %i.br) ; 5 uses
  %i.bt = tail call double @llvm.fabs.f64(double %i.bs) ; 3 uses
  %i.bu = fcmp ueq double %i.bt, +inf
  br i1 %i.bu, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bv = load double, ptr %i.bf, align 8, !tbaa !3186
  %i.bw = load double, ptr %i.bg, align 8, !tbaa !3187
  %i.bx = fsub double %storemerge27, %i.bw
  %i.by = fmul double %i.bv, %i.bx
  %i.bz = fadd double %i.by, 5.000000e-01
  %i.ca = tail call noundef double @llvm.floor.f64(double %i.bz)
  %i.cb = fptoui double %i.ca to i32
  %i.cc = zext i32 %i.cb to i64
  %i.cd = load ptr, ptr %i.bh, align 8, !tbaa !3116
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !1192
  %i.cg = fcmp olt double %i.bs, %i.cf
  br i1 %i.cg, label %bb.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit

bb.f:                                             ; preds = %bb.e
  store double %i.bs, ptr %i.ce, align 8, !tbaa !1192
  %i.ch = load <2 x double>, ptr %i.c, align 8, !tbaa !1192 ; 3 uses
  %i.ci = load <2 x double>, ptr %i.d, align 8, !tbaa !1192
  %i.cj = fsub <2 x double> %i.ci, %i.ch          ; 2 uses
  %i.ck = extractelement <2 x double> %i.cj, i64 0
  %i.cl = extractelement <2 x double> %i.cj, i64 1
  %.pre36 = fdiv double %i.cl, %i.ck
  %i.cm = extractelement <2 x double> %i.ch, i64 0
  %.pre38 = fsub double %storemerge27, %i.cm
  %i.cn = extractelement <2 x double> %i.ch, i64 1
  %.pre40 = tail call noundef double @llvm.fmuladd.f64(double %.pre36, double %.pre38, double %i.cn) ; 2 uses
  %.pre42 = tail call double @llvm.fabs.f64(double %.pre40)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi43 = phi double [ %i.bt, %bb.d ], [ %i.bt, %bb.e ], [ %.pre42, %bb.f ]
  %.pre-phi41 = phi double [ %i.bs, %bb.d ], [ %i.bs, %bb.e ], [ %.pre40, %bb.f ] ; 2 uses
  %i.co = fcmp ueq double %.pre-phi43, +inf
  br i1 %i.co, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit
  %i.cp = load double, ptr %i.bf, align 8, !tbaa !3186
  %i.cq = load double, ptr %i.bg, align 8, !tbaa !3187
  %i.cr = fsub double %storemerge27, %i.cq
  %i.cs = fmul double %i.cp, %i.cr
  %i.ct = fadd double %i.cs, 5.000000e-01
  %i.cu = tail call noundef double @llvm.floor.f64(double %i.ct)
  %i.cv = fptoui double %i.cu to i32
  %i.cw = zext i32 %i.cv to i64
  %i.cx = load ptr, ptr %i.bi, align 8, !tbaa !3116
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cw ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !1192
  %i.da = fcmp ogt double %.pre-phi41, %i.cz
  br i1 %i.da, label %bb.h, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit

bb.h:                                             ; preds = %bb.g
  store double %.pre-phi41, ptr %i.cy, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit, %bb.g, %bb.h
  %i.db = fadd double %storemerge27, %.pre-phi    ; 2 uses
  %i.dc = fcmp ugt double %i.db, %i.bd
  br i1 %i.dc, label %.loopexit, label %bb.d, !llvm.loop !8189

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj2ELj0ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3113 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 5 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !741    ; 2 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14: ; preds = %bb.a
  %i.f = load double, ptr %i.c, align 8, !tbaa !1192 ; 4 uses
  %i.g = fadd double %i.f, f0xBF40624DE0000000
  %i.h = tail call noundef double @llvm.ceil.f64(double %i.g)
  %i.i = fptosi double %i.h to i32
  %i.j = load double, ptr %i.b, align 8, !tbaa !1192 ; 4 uses
  %i.k = fadd double %i.j, f0xBF40624DE0000000
  %i.l = tail call noundef double @llvm.ceil.f64(double %i.k)
  %i.m = fptosi double %i.l to i32
  %i.n = icmp eq i32 %i.i, %i.m
  br i1 %i.n, label %.loopexit, label %bb.b

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread: ; preds = %bb.a
  %i.o = uitofp i32 %i.d to double                ; 5 uses
  %i.p = fadd nnan ninf double %i.o, -1.000000e+00
  %i.q = fmul nnan double %i.p, 5.000000e-01      ; 3 uses
  %i.r = load double, ptr %i.c, align 8, !tbaa !1192 ; 4 uses
  %i.s = load double, ptr %i.b, align 8, !tbaa !1192 ; 4 uses
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.s, i64 1
  %i.v = insertelement <2 x double> poison, double %i.q, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.x = fsub <2 x double> %i.u, %i.w
  %i.y = insertelement <2 x double> poison, double %i.o, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fdiv <2 x double> %i.x, %i.z
  %i.ab = fadd <2 x double> %i.aa, splat (double f0xBF40624DE0000000)
  %i.ac = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.ab)
  %i.ad = fptosi <2 x double> %i.ac to <2 x i32>
  %i.ae = sitofp <2 x i32> %i.ad to <2 x double>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.ae, <2 x double> %i.w) ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0
  %i.ah = extractelement <2 x double> %i.af, i64 1
  %i.ai = fcmp oeq double %i.ag, %i.ah
  br i1 %i.ai, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14
  %i.aj = fcmp olt double %i.j, %i.f
  %i.ak = select i1 %i.aj, double %i.j, double %i.f
  %i.al = fadd double %i.ak, f0xBF40624DE0000000
  %i.am = tail call noundef double @llvm.ceil.f64(double %i.al)
  %i.an = fptosi double %i.am to i32
  %i.ao = sitofp i32 %i.an to double
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread
  %i.ap = fcmp olt double %i.s, %i.r
  %i.aq = select i1 %i.ap, double %i.s, double %i.r
  %i.ar = fsub double %i.aq, %i.q
  %i.as = fdiv double %i.ar, %i.o
  %i.at = fadd double %i.as, f0xBF40624DE0000000
  %i.au = tail call noundef double @llvm.ceil.f64(double %i.at)
  %i.av = fptosi double %i.au to i32
  %i.aw = sitofp i32 %i.av to double
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.o, double %i.aw, double %i.q)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15: ; preds = %bb.b, %bb.c
  %.pre-phi = phi double [ 1.000000e+00, %bb.b ], [ %i.o, %bb.c ]
  %i.ay = phi double [ %i.f, %bb.b ], [ %i.r, %bb.c ]
  %i.az = phi double [ %i.j, %bb.b ], [ %i.s, %bb.c ]
  %i.ba = phi double [ %i.ao, %bb.b ], [ %i.ax, %bb.c ] ; 2 uses
  %i.bb = fcmp olt double %i.ay, %i.az
  %..i.i.i16 = select i1 %i.bb, ptr %i.b, ptr %i.c
  %i.bc = load double, ptr %..i.i.i16, align 8, !tbaa !1192 ; 2 uses
  %i.bd = fcmp ugt double %i.ba, %i.bc
  br i1 %i.bd, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit
  %storemerge27 = phi double [ %i.ba, %.lr.ph ], [ %i.da, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit ] ; 5 uses
  %i.bi = load <2 x double>, ptr %i.c, align 8, !tbaa !1192 ; 3 uses
  %i.bj = load <2 x double>, ptr %i.b, align 8, !tbaa !1192
  %i.bk = fsub <2 x double> %i.bj, %i.bi          ; 2 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 0
  %i.bm = extractelement <2 x double> %i.bk, i64 1
  %i.bn = fdiv double %i.bm, %i.bl
  %i.bo = extractelement <2 x double> %i.bi, i64 0
  %i.bp = fsub double %storemerge27, %i.bo
  %i.bq = extractelement <2 x double> %i.bi, i64 1
  %i.br = tail call noundef double @llvm.fmuladd.f64(double %i.bn, double %i.bp, double %i.bq) ; 5 uses
  %i.bs = tail call double @llvm.fabs.f64(double %i.br) ; 3 uses
  %i.bt = fcmp ueq double %i.bs, +inf
  br i1 %i.bt, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bu = load double, ptr %i.be, align 8, !tbaa !3186
  %i.bv = load double, ptr %i.bf, align 8, !tbaa !3187
  %i.bw = fsub double %storemerge27, %i.bv
  %i.bx = fmul double %i.bu, %i.bw
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = tail call noundef double @llvm.floor.f64(double %i.by)
  %i.ca = fptoui double %i.bz to i32
  %i.cb = zext i32 %i.ca to i64
  %i.cc = load ptr, ptr %i.bg, align 8, !tbaa !3116
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !1192
  %i.cf = fcmp olt double %i.br, %i.ce
  br i1 %i.cf, label %bb.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit

bb.f:                                             ; preds = %bb.e
  store double %i.br, ptr %i.cd, align 8, !tbaa !1192
  %i.cg = load <2 x double>, ptr %i.c, align 8, !tbaa !1192 ; 3 uses
  %i.ch = load <2 x double>, ptr %i.b, align 8, !tbaa !1192
  %i.ci = fsub <2 x double> %i.ch, %i.cg          ; 2 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 0
  %i.ck = extractelement <2 x double> %i.ci, i64 1
  %.pre36 = fdiv double %i.ck, %i.cj
  %i.cl = extractelement <2 x double> %i.cg, i64 0
  %.pre38 = fsub double %storemerge27, %i.cl
  %i.cm = extractelement <2 x double> %i.cg, i64 1
  %.pre40 = tail call noundef double @llvm.fmuladd.f64(double %.pre36, double %.pre38, double %i.cm) ; 2 uses
  %.pre42 = tail call double @llvm.fabs.f64(double %.pre40)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi43 = phi double [ %i.bs, %bb.d ], [ %i.bs, %bb.e ], [ %.pre42, %bb.f ]
  %.pre-phi41 = phi double [ %i.br, %bb.d ], [ %i.br, %bb.e ], [ %.pre40, %bb.f ] ; 2 uses
  %i.cn = fcmp ueq double %.pre-phi43, +inf
  br i1 %i.cn, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit
  %i.co = load double, ptr %i.be, align 8, !tbaa !3186
  %i.cp = load double, ptr %i.bf, align 8, !tbaa !3187
  %i.cq = fsub double %storemerge27, %i.cp
  %i.cr = fmul double %i.co, %i.cq
  %i.cs = fadd double %i.cr, 5.000000e-01
  %i.ct = tail call noundef double @llvm.floor.f64(double %i.cs)
  %i.cu = fptoui double %i.ct to i32
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load ptr, ptr %i.bh, align 8, !tbaa !3116
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cv ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !1192
  %i.cz = fcmp ogt double %.pre-phi41, %i.cy
  br i1 %i.cz, label %bb.h, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit

bb.h:                                             ; preds = %bb.g
  store double %.pre-phi41, ptr %i.cx, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit, %bb.g, %bb.h
  %i.da = fadd double %storemerge27, %.pre-phi    ; 2 uses
  %i.db = fcmp ugt double %i.da, %i.bc
  br i1 %i.db, label %.loopexit, label %bb.d, !llvm.loop !8190

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj3ELj4ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3113 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 5 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !741    ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14: ; preds = %bb.a
  %i.g = load double, ptr %i.c, align 8, !tbaa !1192 ; 4 uses
  %i.h = fadd double %i.g, f0xBF40624DE0000000
  %i.i = tail call noundef double @llvm.ceil.f64(double %i.h)
  %i.j = fptosi double %i.i to i32
  %i.k = load double, ptr %i.d, align 8, !tbaa !1192 ; 4 uses
  %i.l = fadd double %i.k, f0xBF40624DE0000000
  %i.m = tail call noundef double @llvm.ceil.f64(double %i.l)
  %i.n = fptosi double %i.m to i32
  %i.o = icmp eq i32 %i.j, %i.n
  br i1 %i.o, label %.loopexit, label %bb.b

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread: ; preds = %bb.a
  %i.p = uitofp i32 %i.e to double                ; 5 uses
  %i.q = fadd nnan ninf double %i.p, -1.000000e+00
  %i.r = fmul nnan double %i.q, 5.000000e-01      ; 3 uses
  %i.s = load double, ptr %i.c, align 8, !tbaa !1192 ; 4 uses
  %i.t = load double, ptr %i.d, align 8, !tbaa !1192 ; 4 uses
  %i.u = insertelement <2 x double> poison, double %i.s, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.t, i64 1
  %i.w = insertelement <2 x double> poison, double %i.r, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.y = fsub <2 x double> %i.v, %i.x
  %i.z = insertelement <2 x double> poison, double %i.p, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = fdiv <2 x double> %i.y, %i.aa
  %i.ac = fadd <2 x double> %i.ab, splat (double f0xBF40624DE0000000)
  %i.ad = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.ac)
  %i.ae = fptosi <2 x double> %i.ad to <2 x i32>
  %i.af = sitofp <2 x i32> %i.ae to <2 x double>
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.af, <2 x double> %i.x) ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = extractelement <2 x double> %i.ag, i64 1
  %i.aj = fcmp oeq double %i.ah, %i.ai
  br i1 %i.aj, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14
  %i.ak = fcmp olt double %i.k, %i.g
  %i.al = select i1 %i.ak, double %i.k, double %i.g
  %i.am = fadd double %i.al, f0xBF40624DE0000000
  %i.an = tail call noundef double @llvm.ceil.f64(double %i.am)
  %i.ao = fptosi double %i.an to i32
  %i.ap = sitofp i32 %i.ao to double
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread
  %i.aq = fcmp olt double %i.t, %i.s
  %i.ar = select i1 %i.aq, double %i.t, double %i.s
  %i.as = fsub double %i.ar, %i.r
  %i.at = fdiv double %i.as, %i.p
  %i.au = fadd double %i.at, f0xBF40624DE0000000
  %i.av = tail call noundef double @llvm.ceil.f64(double %i.au)
  %i.aw = fptosi double %i.av to i32
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.p, double %i.ax, double %i.r)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15: ; preds = %bb.b, %bb.c
  %.pre-phi = phi double [ 1.000000e+00, %bb.b ], [ %i.p, %bb.c ]
  %i.az = phi double [ %i.g, %bb.b ], [ %i.s, %bb.c ]
  %i.ba = phi double [ %i.k, %bb.b ], [ %i.t, %bb.c ]
  %i.bb = phi double [ %i.ap, %bb.b ], [ %i.ay, %bb.c ] ; 2 uses
  %i.bc = fcmp olt double %i.az, %i.ba
  %..i.i.i16 = select i1 %i.bc, ptr %i.d, ptr %i.c
  %i.bd = load double, ptr %..i.i.i16, align 8, !tbaa !1192 ; 2 uses
  %i.be = fcmp ugt double %i.bb, %i.bd
  br i1 %i.be, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit
  %storemerge27 = phi double [ %i.bb, %.lr.ph ], [ %i.db, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit ] ; 5 uses
  %i.bj = load <2 x double>, ptr %i.c, align 8, !tbaa !1192 ; 3 uses
  %i.bk = load <2 x double>, ptr %i.d, align 8, !tbaa !1192
  %i.bl = fsub <2 x double> %i.bk, %i.bj          ; 2 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0
  %i.bn = extractelement <2 x double> %i.bl, i64 1
  %i.bo = fdiv double %i.bn, %i.bm
  %i.bp = extractelement <2 x double> %i.bj, i64 0
  %i.bq = fsub double %storemerge27, %i.bp
  %i.br = extractelement <2 x double> %i.bj, i64 1
  %i.bs = tail call noundef double @llvm.fmuladd.f64(double %i.bo, double %i.bq, double %i.br) ; 5 uses
  %i.bt = tail call double @llvm.fabs.f64(double %i.bs) ; 3 uses
  %i.bu = fcmp ueq double %i.bt, +inf
  br i1 %i.bu, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bv = load double, ptr %i.bf, align 8, !tbaa !3186
  %i.bw = load double, ptr %i.bg, align 8, !tbaa !3187
  %i.bx = fsub double %storemerge27, %i.bw
  %i.by = fmul double %i.bv, %i.bx
  %i.bz = fadd double %i.by, 5.000000e-01
  %i.ca = tail call noundef double @llvm.floor.f64(double %i.bz)
  %i.cb = fptoui double %i.ca to i32
  %i.cc = zext i32 %i.cb to i64
  %i.cd = load ptr, ptr %i.bh, align 8, !tbaa !3116
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !1192
  %i.cg = fcmp olt double %i.bs, %i.cf
  br i1 %i.cg, label %bb.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit

bb.f:                                             ; preds = %bb.e
  store double %i.bs, ptr %i.ce, align 8, !tbaa !1192
  %i.ch = load <2 x double>, ptr %i.c, align 8, !tbaa !1192 ; 3 uses
  %i.ci = load <2 x double>, ptr %i.d, align 8, !tbaa !1192
  %i.cj = fsub <2 x double> %i.ci, %i.ch          ; 2 uses
  %i.ck = extractelement <2 x double> %i.cj, i64 0
  %i.cl = extractelement <2 x double> %i.cj, i64 1
  %.pre36 = fdiv double %i.cl, %i.ck
  %i.cm = extractelement <2 x double> %i.ch, i64 0
  %.pre38 = fsub double %storemerge27, %i.cm
  %i.cn = extractelement <2 x double> %i.ch, i64 1
  %.pre40 = tail call noundef double @llvm.fmuladd.f64(double %.pre36, double %.pre38, double %i.cn) ; 2 uses
  %.pre42 = tail call double @llvm.fabs.f64(double %.pre40)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi43 = phi double [ %i.bt, %bb.d ], [ %i.bt, %bb.e ], [ %.pre42, %bb.f ]
  %.pre-phi41 = phi double [ %i.bs, %bb.d ], [ %i.bs, %bb.e ], [ %.pre40, %bb.f ] ; 2 uses
  %i.co = fcmp ueq double %.pre-phi43, +inf
  br i1 %i.co, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit
  %i.cp = load double, ptr %i.bf, align 8, !tbaa !3186
  %i.cq = load double, ptr %i.bg, align 8, !tbaa !3187
  %i.cr = fsub double %storemerge27, %i.cq
  %i.cs = fmul double %i.cp, %i.cr
  %i.ct = fadd double %i.cs, 5.000000e-01
  %i.cu = tail call noundef double @llvm.floor.f64(double %i.ct)
  %i.cv = fptoui double %i.cu to i32
  %i.cw = zext i32 %i.cv to i64
  %i.cx = load ptr, ptr %i.bi, align 8, !tbaa !3116
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cw ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !1192
  %i.da = fcmp ogt double %.pre-phi41, %i.cz
  br i1 %i.da, label %bb.h, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit

bb.h:                                             ; preds = %bb.g
  store double %.pre-phi41, ptr %i.cy, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit, %bb.g, %bb.h
  %i.db = fadd double %storemerge27, %.pre-phi    ; 2 uses
  %i.dc = fcmp ugt double %i.db, %i.bd
  br i1 %i.dc, label %.loopexit, label %bb.d, !llvm.loop !8191

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj4ELj5ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3113 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 5 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !741    ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14: ; preds = %bb.a
  %i.g = load double, ptr %i.c, align 8, !tbaa !1192 ; 4 uses
  %i.h = fadd double %i.g, f0xBF40624DE0000000
  %i.i = tail call noundef double @llvm.ceil.f64(double %i.h)
  %i.j = fptosi double %i.i to i32
  %i.k = load double, ptr %i.d, align 8, !tbaa !1192 ; 4 uses
  %i.l = fadd double %i.k, f0xBF40624DE0000000
  %i.m = tail call noundef double @llvm.ceil.f64(double %i.l)
  %i.n = fptosi double %i.m to i32
  %i.o = icmp eq i32 %i.j, %i.n
  br i1 %i.o, label %.loopexit, label %bb.b

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread: ; preds = %bb.a
  %i.p = uitofp i32 %i.e to double                ; 5 uses
  %i.q = fadd nnan ninf double %i.p, -1.000000e+00
  %i.r = fmul nnan double %i.q, 5.000000e-01      ; 3 uses
  %i.s = load double, ptr %i.c, align 8, !tbaa !1192 ; 4 uses
  %i.t = load double, ptr %i.d, align 8, !tbaa !1192 ; 4 uses
  %i.u = insertelement <2 x double> poison, double %i.s, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.t, i64 1
  %i.w = insertelement <2 x double> poison, double %i.r, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.y = fsub <2 x double> %i.v, %i.x
  %i.z = insertelement <2 x double> poison, double %i.p, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = fdiv <2 x double> %i.y, %i.aa
  %i.ac = fadd <2 x double> %i.ab, splat (double f0xBF40624DE0000000)
  %i.ad = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.ac)
  %i.ae = fptosi <2 x double> %i.ad to <2 x i32>
  %i.af = sitofp <2 x i32> %i.ae to <2 x double>
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.af, <2 x double> %i.x) ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = extractelement <2 x double> %i.ag, i64 1
  %i.aj = fcmp oeq double %i.ah, %i.ai
  br i1 %i.aj, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14
  %i.ak = fcmp olt double %i.k, %i.g
  %i.al = select i1 %i.ak, double %i.k, double %i.g
  %i.am = fadd double %i.al, f0xBF40624DE0000000
  %i.an = tail call noundef double @llvm.ceil.f64(double %i.am)
  %i.ao = fptosi double %i.an to i32
  %i.ap = sitofp i32 %i.ao to double
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread
  %i.aq = fcmp olt double %i.t, %i.s
  %i.ar = select i1 %i.aq, double %i.t, double %i.s
  %i.as = fsub double %i.ar, %i.r
  %i.at = fdiv double %i.as, %i.p
  %i.au = fadd double %i.at, f0xBF40624DE0000000
  %i.av = tail call noundef double @llvm.ceil.f64(double %i.au)
  %i.aw = fptosi double %i.av to i32
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.p, double %i.ax, double %i.r)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15: ; preds = %bb.b, %bb.c
  %.pre-phi = phi double [ 1.000000e+00, %bb.b ], [ %i.p, %bb.c ]
  %i.az = phi double [ %i.g, %bb.b ], [ %i.s, %bb.c ]
  %i.ba = phi double [ %i.k, %bb.b ], [ %i.t, %bb.c ]
  %i.bb = phi double [ %i.ap, %bb.b ], [ %i.ay, %bb.c ] ; 2 uses
  %i.bc = fcmp olt double %i.az, %i.ba
  %..i.i.i16 = select i1 %i.bc, ptr %i.d, ptr %i.c
  %i.bd = load double, ptr %..i.i.i16, align 8, !tbaa !1192 ; 2 uses
  %i.be = fcmp ugt double %i.bb, %i.bd
  br i1 %i.be, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit
  %storemerge27 = phi double [ %i.bb, %.lr.ph ], [ %i.db, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit ] ; 5 uses
  %i.bj = load <2 x double>, ptr %i.c, align 8, !tbaa !1192 ; 3 uses
  %i.bk = load <2 x double>, ptr %i.d, align 8, !tbaa !1192
  %i.bl = fsub <2 x double> %i.bk, %i.bj          ; 2 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0
  %i.bn = extractelement <2 x double> %i.bl, i64 1
  %i.bo = fdiv double %i.bn, %i.bm
  %i.bp = extractelement <2 x double> %i.bj, i64 0
  %i.bq = fsub double %storemerge27, %i.bp
  %i.br = extractelement <2 x double> %i.bj, i64 1
  %i.bs = tail call noundef double @llvm.fmuladd.f64(double %i.bo, double %i.bq, double %i.br) ; 5 uses
  %i.bt = tail call double @llvm.fabs.f64(double %i.bs) ; 3 uses
  %i.bu = fcmp ueq double %i.bt, +inf
  br i1 %i.bu, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bv = load double, ptr %i.bf, align 8, !tbaa !3186
  %i.bw = load double, ptr %i.bg, align 8, !tbaa !3187
  %i.bx = fsub double %storemerge27, %i.bw
  %i.by = fmul double %i.bv, %i.bx
  %i.bz = fadd double %i.by, 5.000000e-01
  %i.ca = tail call noundef double @llvm.floor.f64(double %i.bz)
  %i.cb = fptoui double %i.ca to i32
  %i.cc = zext i32 %i.cb to i64
  %i.cd = load ptr, ptr %i.bh, align 8, !tbaa !3116
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !1192
  %i.cg = fcmp olt double %i.bs, %i.cf
  br i1 %i.cg, label %bb.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit

bb.f:                                             ; preds = %bb.e
  store double %i.bs, ptr %i.ce, align 8, !tbaa !1192
  %i.ch = load <2 x double>, ptr %i.c, align 8, !tbaa !1192 ; 3 uses
  %i.ci = load <2 x double>, ptr %i.d, align 8, !tbaa !1192
  %i.cj = fsub <2 x double> %i.ci, %i.ch          ; 2 uses
  %i.ck = extractelement <2 x double> %i.cj, i64 0
  %i.cl = extractelement <2 x double> %i.cj, i64 1
  %.pre36 = fdiv double %i.cl, %i.ck
  %i.cm = extractelement <2 x double> %i.ch, i64 0
  %.pre38 = fsub double %storemerge27, %i.cm
  %i.cn = extractelement <2 x double> %i.ch, i64 1
  %.pre40 = tail call noundef double @llvm.fmuladd.f64(double %.pre36, double %.pre38, double %i.cn) ; 2 uses
  %.pre42 = tail call double @llvm.fabs.f64(double %.pre40)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi43 = phi double [ %i.bt, %bb.d ], [ %i.bt, %bb.e ], [ %.pre42, %bb.f ]
  %.pre-phi41 = phi double [ %i.bs, %bb.d ], [ %i.bs, %bb.e ], [ %.pre40, %bb.f ] ; 2 uses
  %i.co = fcmp ueq double %.pre-phi43, +inf
  br i1 %i.co, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit
  %i.cp = load double, ptr %i.bf, align 8, !tbaa !3186
  %i.cq = load double, ptr %i.bg, align 8, !tbaa !3187
  %i.cr = fsub double %storemerge27, %i.cq
  %i.cs = fmul double %i.cp, %i.cr
  %i.ct = fadd double %i.cs, 5.000000e-01
  %i.cu = tail call noundef double @llvm.floor.f64(double %i.ct)
  %i.cv = fptoui double %i.cu to i32
  %i.cw = zext i32 %i.cv to i64
  %i.cx = load ptr, ptr %i.bi, align 8, !tbaa !3116
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cw ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !1192
  %i.da = fcmp ogt double %.pre-phi41, %i.cz
  br i1 %i.da, label %bb.h, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit

bb.h:                                             ; preds = %bb.g
  store double %.pre-phi41, ptr %i.cy, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit, %bb.g, %bb.h
  %i.db = fadd double %storemerge27, %.pre-phi    ; 2 uses
  %i.dc = fcmp ugt double %i.db, %i.bd
  br i1 %i.dc, label %.loopexit, label %bb.d, !llvm.loop !8192

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj5ELj3ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3113 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 5 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !741    ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14: ; preds = %bb.a
  %i.g = load double, ptr %i.c, align 8, !tbaa !1192 ; 4 uses
  %i.h = fadd double %i.g, f0xBF40624DE0000000
  %i.i = tail call noundef double @llvm.ceil.f64(double %i.h)
  %i.j = fptosi double %i.i to i32
  %i.k = load double, ptr %i.d, align 8, !tbaa !1192 ; 4 uses
  %i.l = fadd double %i.k, f0xBF40624DE0000000
  %i.m = tail call noundef double @llvm.ceil.f64(double %i.l)
  %i.n = fptosi double %i.m to i32
  %i.o = icmp eq i32 %i.j, %i.n
  br i1 %i.o, label %.loopexit, label %bb.b

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread: ; preds = %bb.a
  %i.p = uitofp i32 %i.e to double                ; 5 uses
  %i.q = fadd nnan ninf double %i.p, -1.000000e+00
  %i.r = fmul nnan double %i.q, 5.000000e-01      ; 3 uses
  %i.s = load double, ptr %i.c, align 8, !tbaa !1192 ; 4 uses
  %i.t = load double, ptr %i.d, align 8, !tbaa !1192 ; 4 uses
  %i.u = insertelement <2 x double> poison, double %i.s, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.t, i64 1
  %i.w = insertelement <2 x double> poison, double %i.r, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.y = fsub <2 x double> %i.v, %i.x
  %i.z = insertelement <2 x double> poison, double %i.p, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = fdiv <2 x double> %i.y, %i.aa
  %i.ac = fadd <2 x double> %i.ab, splat (double f0xBF40624DE0000000)
  %i.ad = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.ac)
  %i.ae = fptosi <2 x double> %i.ad to <2 x i32>
  %i.af = sitofp <2 x i32> %i.ae to <2 x double>
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.af, <2 x double> %i.x) ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = extractelement <2 x double> %i.ag, i64 1
  %i.aj = fcmp oeq double %i.ah, %i.ai
  br i1 %i.aj, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14
  %i.ak = fcmp olt double %i.k, %i.g
  %i.al = select i1 %i.ak, double %i.k, double %i.g
  %i.am = fadd double %i.al, f0xBF40624DE0000000
  %i.an = tail call noundef double @llvm.ceil.f64(double %i.am)
  %i.ao = fptosi double %i.an to i32
  %i.ap = sitofp i32 %i.ao to double
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread
  %i.aq = fcmp olt double %i.t, %i.s
  %i.ar = select i1 %i.aq, double %i.t, double %i.s
  %i.as = fsub double %i.ar, %i.r
  %i.at = fdiv double %i.as, %i.p
  %i.au = fadd double %i.at, f0xBF40624DE0000000
  %i.av = tail call noundef double @llvm.ceil.f64(double %i.au)
  %i.aw = fptosi double %i.av to i32
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.p, double %i.ax, double %i.r)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15: ; preds = %bb.b, %bb.c
  %.pre-phi = phi double [ 1.000000e+00, %bb.b ], [ %i.p, %bb.c ]
  %i.az = phi double [ %i.g, %bb.b ], [ %i.s, %bb.c ]
  %i.ba = phi double [ %i.k, %bb.b ], [ %i.t, %bb.c ]
  %i.bb = phi double [ %i.ap, %bb.b ], [ %i.ay, %bb.c ] ; 2 uses
  %i.bc = fcmp olt double %i.az, %i.ba
  %..i.i.i16 = select i1 %i.bc, ptr %i.d, ptr %i.c
  %i.bd = load double, ptr %..i.i.i16, align 8, !tbaa !1192 ; 2 uses
  %i.be = fcmp ugt double %i.bb, %i.bd
  br i1 %i.be, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit
  %storemerge27 = phi double [ %i.bb, %.lr.ph ], [ %i.db, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit ] ; 5 uses
  %i.bj = load <2 x double>, ptr %i.c, align 8, !tbaa !1192 ; 3 uses
  %i.bk = load <2 x double>, ptr %i.d, align 8, !tbaa !1192
  %i.bl = fsub <2 x double> %i.bk, %i.bj          ; 2 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0
  %i.bn = extractelement <2 x double> %i.bl, i64 1
  %i.bo = fdiv double %i.bn, %i.bm
  %i.bp = extractelement <2 x double> %i.bj, i64 0
  %i.bq = fsub double %storemerge27, %i.bp
  %i.br = extractelement <2 x double> %i.bj, i64 1
  %i.bs = tail call noundef double @llvm.fmuladd.f64(double %i.bo, double %i.bq, double %i.br) ; 5 uses
  %i.bt = tail call double @llvm.fabs.f64(double %i.bs) ; 3 uses
  %i.bu = fcmp ueq double %i.bt, +inf
  br i1 %i.bu, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bv = load double, ptr %i.bf, align 8, !tbaa !3186
  %i.bw = load double, ptr %i.bg, align 8, !tbaa !3187
  %i.bx = fsub double %storemerge27, %i.bw
  %i.by = fmul double %i.bv, %i.bx
  %i.bz = fadd double %i.by, 5.000000e-01
  %i.ca = tail call noundef double @llvm.floor.f64(double %i.bz)
  %i.cb = fptoui double %i.ca to i32
  %i.cc = zext i32 %i.cb to i64
  %i.cd = load ptr, ptr %i.bh, align 8, !tbaa !3116
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !1192
  %i.cg = fcmp olt double %i.bs, %i.cf
  br i1 %i.cg, label %bb.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit

bb.f:                                             ; preds = %bb.e
  store double %i.bs, ptr %i.ce, align 8, !tbaa !1192
  %i.ch = load <2 x double>, ptr %i.c, align 8, !tbaa !1192 ; 3 uses
  %i.ci = load <2 x double>, ptr %i.d, align 8, !tbaa !1192
  %i.cj = fsub <2 x double> %i.ci, %i.ch          ; 2 uses
  %i.ck = extractelement <2 x double> %i.cj, i64 0
  %i.cl = extractelement <2 x double> %i.cj, i64 1
  %.pre36 = fdiv double %i.cl, %i.ck
  %i.cm = extractelement <2 x double> %i.ch, i64 0
  %.pre38 = fsub double %storemerge27, %i.cm
  %i.cn = extractelement <2 x double> %i.ch, i64 1
  %.pre40 = tail call noundef double @llvm.fmuladd.f64(double %.pre36, double %.pre38, double %i.cn) ; 2 uses
  %.pre42 = tail call double @llvm.fabs.f64(double %.pre40)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi43 = phi double [ %i.bt, %bb.d ], [ %i.bt, %bb.e ], [ %.pre42, %bb.f ]
  %.pre-phi41 = phi double [ %i.bs, %bb.d ], [ %i.bs, %bb.e ], [ %.pre40, %bb.f ] ; 2 uses
  %i.co = fcmp ueq double %.pre-phi43, +inf
  br i1 %i.co, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit
  %i.cp = load double, ptr %i.bf, align 8, !tbaa !3186
  %i.cq = load double, ptr %i.bg, align 8, !tbaa !3187
  %i.cr = fsub double %storemerge27, %i.cq
  %i.cs = fmul double %i.cp, %i.cr
  %i.ct = fadd double %i.cs, 5.000000e-01
  %i.cu = tail call noundef double @llvm.floor.f64(double %i.ct)
  %i.cv = fptoui double %i.cu to i32
  %i.cw = zext i32 %i.cv to i64
  %i.cx = load ptr, ptr %i.bi, align 8, !tbaa !3116
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cw ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !1192
  %i.da = fcmp ogt double %.pre-phi41, %i.cz
  br i1 %i.da, label %bb.h, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit

bb.h:                                             ; preds = %bb.g
  store double %.pre-phi41, ptr %i.cy, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit, %bb.g, %bb.h
  %i.db = fadd double %storemerge27, %.pre-phi    ; 2 uses
  %i.dc = fcmp ugt double %i.db, %i.bd
  br i1 %i.dc, label %.loopexit, label %bb.d, !llvm.loop !8193

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj0ELj3ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3113 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 5 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !741    ; 2 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14: ; preds = %bb.a
  %i.f = load double, ptr %i.b, align 8, !tbaa !1192 ; 4 uses
  %i.g = fadd double %i.f, f0xBF40624DE0000000
  %i.h = tail call noundef double @llvm.ceil.f64(double %i.g)
  %i.i = fptosi double %i.h to i32
  %i.j = load double, ptr %i.c, align 8, !tbaa !1192 ; 4 uses
  %i.k = fadd double %i.j, f0xBF40624DE0000000
  %i.l = tail call noundef double @llvm.ceil.f64(double %i.k)
  %i.m = fptosi double %i.l to i32
  %i.n = icmp eq i32 %i.i, %i.m
  br i1 %i.n, label %.loopexit, label %bb.b

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread: ; preds = %bb.a
  %i.o = uitofp i32 %i.d to double                ; 5 uses
  %i.p = fadd nnan ninf double %i.o, -1.000000e+00
  %i.q = fmul nnan double %i.p, 5.000000e-01      ; 3 uses
  %i.r = load double, ptr %i.b, align 8, !tbaa !1192 ; 4 uses
  %i.s = load double, ptr %i.c, align 8, !tbaa !1192 ; 4 uses
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.s, i64 1
  %i.v = insertelement <2 x double> poison, double %i.q, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.x = fsub <2 x double> %i.u, %i.w
  %i.y = insertelement <2 x double> poison, double %i.o, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fdiv <2 x double> %i.x, %i.z
  %i.ab = fadd <2 x double> %i.aa, splat (double f0xBF40624DE0000000)
  %i.ac = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.ab)
  %i.ad = fptosi <2 x double> %i.ac to <2 x i32>
  %i.ae = sitofp <2 x i32> %i.ad to <2 x double>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.ae, <2 x double> %i.w) ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0
  %i.ah = extractelement <2 x double> %i.af, i64 1
  %i.ai = fcmp oeq double %i.ag, %i.ah
  br i1 %i.ai, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14
  %i.aj = fcmp olt double %i.j, %i.f
  %i.ak = select i1 %i.aj, double %i.j, double %i.f
  %i.al = fadd double %i.ak, f0xBF40624DE0000000
  %i.am = tail call noundef double @llvm.ceil.f64(double %i.al)
  %i.an = fptosi double %i.am to i32
  %i.ao = sitofp i32 %i.an to double
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread
  %i.ap = fcmp olt double %i.s, %i.r
  %i.aq = select i1 %i.ap, double %i.s, double %i.r
  %i.ar = fsub double %i.aq, %i.q
  %i.as = fdiv double %i.ar, %i.o
  %i.at = fadd double %i.as, f0xBF40624DE0000000
  %i.au = tail call noundef double @llvm.ceil.f64(double %i.at)
  %i.av = fptosi double %i.au to i32
  %i.aw = sitofp i32 %i.av to double
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.o, double %i.aw, double %i.q)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15: ; preds = %bb.b, %bb.c
  %.pre-phi = phi double [ 1.000000e+00, %bb.b ], [ %i.o, %bb.c ]
  %i.ay = phi double [ %i.f, %bb.b ], [ %i.r, %bb.c ]
  %i.az = phi double [ %i.j, %bb.b ], [ %i.s, %bb.c ]
  %i.ba = phi double [ %i.ao, %bb.b ], [ %i.ax, %bb.c ] ; 2 uses
  %i.bb = fcmp olt double %i.ay, %i.az
  %..i.i.i16 = select i1 %i.bb, ptr %i.c, ptr %i.b
  %i.bc = load double, ptr %..i.i.i16, align 8, !tbaa !1192 ; 2 uses
  %i.bd = fcmp ugt double %i.ba, %i.bc
  br i1 %i.bd, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit
  %storemerge27 = phi double [ %i.ba, %.lr.ph ], [ %i.da, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit ] ; 5 uses
  %i.bi = load <2 x double>, ptr %i.b, align 8, !tbaa !1192 ; 3 uses
  %i.bj = load <2 x double>, ptr %i.c, align 8, !tbaa !1192
  %i.bk = fsub <2 x double> %i.bj, %i.bi          ; 2 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 0
  %i.bm = extractelement <2 x double> %i.bk, i64 1
  %i.bn = fdiv double %i.bm, %i.bl
  %i.bo = extractelement <2 x double> %i.bi, i64 0
  %i.bp = fsub double %storemerge27, %i.bo
  %i.bq = extractelement <2 x double> %i.bi, i64 1
  %i.br = tail call noundef double @llvm.fmuladd.f64(double %i.bn, double %i.bp, double %i.bq) ; 5 uses
  %i.bs = tail call double @llvm.fabs.f64(double %i.br) ; 3 uses
  %i.bt = fcmp ueq double %i.bs, +inf
  br i1 %i.bt, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bu = load double, ptr %i.be, align 8, !tbaa !3186
  %i.bv = load double, ptr %i.bf, align 8, !tbaa !3187
  %i.bw = fsub double %storemerge27, %i.bv
  %i.bx = fmul double %i.bu, %i.bw
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = tail call noundef double @llvm.floor.f64(double %i.by)
  %i.ca = fptoui double %i.bz to i32
  %i.cb = zext i32 %i.ca to i64
  %i.cc = load ptr, ptr %i.bg, align 8, !tbaa !3116
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !1192
  %i.cf = fcmp olt double %i.br, %i.ce
  br i1 %i.cf, label %bb.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit

bb.f:                                             ; preds = %bb.e
  store double %i.br, ptr %i.cd, align 8, !tbaa !1192
  %i.cg = load <2 x double>, ptr %i.b, align 8, !tbaa !1192 ; 3 uses
  %i.ch = load <2 x double>, ptr %i.c, align 8, !tbaa !1192
  %i.ci = fsub <2 x double> %i.ch, %i.cg          ; 2 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 0
  %i.ck = extractelement <2 x double> %i.ci, i64 1
  %.pre36 = fdiv double %i.ck, %i.cj
  %i.cl = extractelement <2 x double> %i.cg, i64 0
  %.pre38 = fsub double %storemerge27, %i.cl
  %i.cm = extractelement <2 x double> %i.cg, i64 1
  %.pre40 = tail call noundef double @llvm.fmuladd.f64(double %.pre36, double %.pre38, double %i.cm) ; 2 uses
  %.pre42 = tail call double @llvm.fabs.f64(double %.pre40)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi43 = phi double [ %i.bs, %bb.d ], [ %i.bs, %bb.e ], [ %.pre42, %bb.f ]
  %.pre-phi41 = phi double [ %i.br, %bb.d ], [ %i.br, %bb.e ], [ %.pre40, %bb.f ] ; 2 uses
  %i.cn = fcmp ueq double %.pre-phi43, +inf
  br i1 %i.cn, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit
  %i.co = load double, ptr %i.be, align 8, !tbaa !3186
  %i.cp = load double, ptr %i.bf, align 8, !tbaa !3187
  %i.cq = fsub double %storemerge27, %i.cp
  %i.cr = fmul double %i.co, %i.cq
  %i.cs = fadd double %i.cr, 5.000000e-01
  %i.ct = tail call noundef double @llvm.floor.f64(double %i.cs)
  %i.cu = fptoui double %i.ct to i32
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load ptr, ptr %i.bh, align 8, !tbaa !3116
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cv ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !1192
  %i.cz = fcmp ogt double %.pre-phi41, %i.cy
  br i1 %i.cz, label %bb.h, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit

bb.h:                                             ; preds = %bb.g
  store double %.pre-phi41, ptr %i.cx, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit, %bb.g, %bb.h
  %i.da = fadd double %storemerge27, %.pre-phi    ; 2 uses
  %i.db = fcmp ugt double %i.da, %i.bc
  br i1 %i.db, label %.loopexit, label %bb.d, !llvm.loop !8194

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj1ELj4ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3113 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 5 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !741    ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14: ; preds = %bb.a
  %i.g = load double, ptr %i.c, align 8, !tbaa !1192 ; 4 uses
  %i.h = fadd double %i.g, f0xBF40624DE0000000
  %i.i = tail call noundef double @llvm.ceil.f64(double %i.h)
  %i.j = fptosi double %i.i to i32
  %i.k = load double, ptr %i.d, align 8, !tbaa !1192 ; 4 uses
  %i.l = fadd double %i.k, f0xBF40624DE0000000
  %i.m = tail call noundef double @llvm.ceil.f64(double %i.l)
  %i.n = fptosi double %i.m to i32
  %i.o = icmp eq i32 %i.j, %i.n
  br i1 %i.o, label %.loopexit, label %bb.b

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread: ; preds = %bb.a
  %i.p = uitofp i32 %i.e to double                ; 5 uses
  %i.q = fadd nnan ninf double %i.p, -1.000000e+00
  %i.r = fmul nnan double %i.q, 5.000000e-01      ; 3 uses
  %i.s = load double, ptr %i.c, align 8, !tbaa !1192 ; 4 uses
  %i.t = load double, ptr %i.d, align 8, !tbaa !1192 ; 4 uses
  %i.u = insertelement <2 x double> poison, double %i.s, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.t, i64 1
  %i.w = insertelement <2 x double> poison, double %i.r, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.y = fsub <2 x double> %i.v, %i.x
  %i.z = insertelement <2 x double> poison, double %i.p, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = fdiv <2 x double> %i.y, %i.aa
  %i.ac = fadd <2 x double> %i.ab, splat (double f0xBF40624DE0000000)
  %i.ad = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.ac)
  %i.ae = fptosi <2 x double> %i.ad to <2 x i32>
  %i.af = sitofp <2 x i32> %i.ae to <2 x double>
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.af, <2 x double> %i.x) ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = extractelement <2 x double> %i.ag, i64 1
  %i.aj = fcmp oeq double %i.ah, %i.ai
  br i1 %i.aj, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14
  %i.ak = fcmp olt double %i.k, %i.g
  %i.al = select i1 %i.ak, double %i.k, double %i.g
  %i.am = fadd double %i.al, f0xBF40624DE0000000
  %i.an = tail call noundef double @llvm.ceil.f64(double %i.am)
  %i.ao = fptosi double %i.an to i32
  %i.ap = sitofp i32 %i.ao to double
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread
  %i.aq = fcmp olt double %i.t, %i.s
  %i.ar = select i1 %i.aq, double %i.t, double %i.s
  %i.as = fsub double %i.ar, %i.r
  %i.at = fdiv double %i.as, %i.p
  %i.au = fadd double %i.at, f0xBF40624DE0000000
  %i.av = tail call noundef double @llvm.ceil.f64(double %i.au)
  %i.aw = fptosi double %i.av to i32
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.p, double %i.ax, double %i.r)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15: ; preds = %bb.b, %bb.c
  %.pre-phi = phi double [ 1.000000e+00, %bb.b ], [ %i.p, %bb.c ]
  %i.az = phi double [ %i.g, %bb.b ], [ %i.s, %bb.c ]
  %i.ba = phi double [ %i.k, %bb.b ], [ %i.t, %bb.c ]
  %i.bb = phi double [ %i.ap, %bb.b ], [ %i.ay, %bb.c ] ; 2 uses
  %i.bc = fcmp olt double %i.az, %i.ba
  %..i.i.i16 = select i1 %i.bc, ptr %i.d, ptr %i.c
  %i.bd = load double, ptr %..i.i.i16, align 8, !tbaa !1192 ; 2 uses
  %i.be = fcmp ugt double %i.bb, %i.bd
  br i1 %i.be, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit
  %storemerge27 = phi double [ %i.bb, %.lr.ph ], [ %i.db, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit ] ; 5 uses
  %i.bj = load <2 x double>, ptr %i.c, align 8, !tbaa !1192 ; 3 uses
  %i.bk = load <2 x double>, ptr %i.d, align 8, !tbaa !1192
  %i.bl = fsub <2 x double> %i.bk, %i.bj          ; 2 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0
  %i.bn = extractelement <2 x double> %i.bl, i64 1
  %i.bo = fdiv double %i.bn, %i.bm
  %i.bp = extractelement <2 x double> %i.bj, i64 0
  %i.bq = fsub double %storemerge27, %i.bp
  %i.br = extractelement <2 x double> %i.bj, i64 1
  %i.bs = tail call noundef double @llvm.fmuladd.f64(double %i.bo, double %i.bq, double %i.br) ; 5 uses
  %i.bt = tail call double @llvm.fabs.f64(double %i.bs) ; 3 uses
  %i.bu = fcmp ueq double %i.bt, +inf
  br i1 %i.bu, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bv = load double, ptr %i.bf, align 8, !tbaa !3186
  %i.bw = load double, ptr %i.bg, align 8, !tbaa !3187
  %i.bx = fsub double %storemerge27, %i.bw
  %i.by = fmul double %i.bv, %i.bx
  %i.bz = fadd double %i.by, 5.000000e-01
  %i.ca = tail call noundef double @llvm.floor.f64(double %i.bz)
  %i.cb = fptoui double %i.ca to i32
  %i.cc = zext i32 %i.cb to i64
  %i.cd = load ptr, ptr %i.bh, align 8, !tbaa !3116
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !1192
  %i.cg = fcmp olt double %i.bs, %i.cf
  br i1 %i.cg, label %bb.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit

bb.f:                                             ; preds = %bb.e
  store double %i.bs, ptr %i.ce, align 8, !tbaa !1192
  %i.ch = load <2 x double>, ptr %i.c, align 8, !tbaa !1192 ; 3 uses
  %i.ci = load <2 x double>, ptr %i.d, align 8, !tbaa !1192
  %i.cj = fsub <2 x double> %i.ci, %i.ch          ; 2 uses
  %i.ck = extractelement <2 x double> %i.cj, i64 0
  %i.cl = extractelement <2 x double> %i.cj, i64 1
  %.pre36 = fdiv double %i.cl, %i.ck
  %i.cm = extractelement <2 x double> %i.ch, i64 0
  %.pre38 = fsub double %storemerge27, %i.cm
  %i.cn = extractelement <2 x double> %i.ch, i64 1
  %.pre40 = tail call noundef double @llvm.fmuladd.f64(double %.pre36, double %.pre38, double %i.cn) ; 2 uses
  %.pre42 = tail call double @llvm.fabs.f64(double %.pre40)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi43 = phi double [ %i.bt, %bb.d ], [ %i.bt, %bb.e ], [ %.pre42, %bb.f ]
  %.pre-phi41 = phi double [ %i.bs, %bb.d ], [ %i.bs, %bb.e ], [ %.pre40, %bb.f ] ; 2 uses
  %i.co = fcmp ueq double %.pre-phi43, +inf
  br i1 %i.co, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit
  %i.cp = load double, ptr %i.bf, align 8, !tbaa !3186
  %i.cq = load double, ptr %i.bg, align 8, !tbaa !3187
  %i.cr = fsub double %storemerge27, %i.cq
  %i.cs = fmul double %i.cp, %i.cr
  %i.ct = fadd double %i.cs, 5.000000e-01
  %i.cu = tail call noundef double @llvm.floor.f64(double %i.ct)
  %i.cv = fptoui double %i.cu to i32
  %i.cw = zext i32 %i.cv to i64
  %i.cx = load ptr, ptr %i.bi, align 8, !tbaa !3116
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cw ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !1192
  %i.da = fcmp ogt double %.pre-phi41, %i.cz
  br i1 %i.da, label %bb.h, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit

bb.h:                                             ; preds = %bb.g
  store double %.pre-phi41, ptr %i.cy, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit, %bb.g, %bb.h
  %i.db = fadd double %storemerge27, %.pre-phi    ; 2 uses
  %i.dc = fcmp ugt double %i.db, %i.bd
  br i1 %i.dc, label %.loopexit, label %bb.d, !llvm.loop !8195

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE21setXYSegmentRangeDataILj2ELj5ELi0EEEvRKj(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3113 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 5 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !741    ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14: ; preds = %bb.a
  %i.g = load double, ptr %i.c, align 8, !tbaa !1192 ; 4 uses
  %i.h = fadd double %i.g, f0xBF40624DE0000000
  %i.i = tail call noundef double @llvm.ceil.f64(double %i.h)
  %i.j = fptosi double %i.i to i32
  %i.k = load double, ptr %i.d, align 8, !tbaa !1192 ; 4 uses
  %i.l = fadd double %i.k, f0xBF40624DE0000000
  %i.m = tail call noundef double @llvm.ceil.f64(double %i.l)
  %i.n = fptosi double %i.m to i32
  %i.o = icmp eq i32 %i.j, %i.n
  br i1 %i.o, label %.loopexit, label %bb.b

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread: ; preds = %bb.a
  %i.p = uitofp i32 %i.e to double                ; 5 uses
  %i.q = fadd nnan ninf double %i.p, -1.000000e+00
  %i.r = fmul nnan double %i.q, 5.000000e-01      ; 3 uses
  %i.s = load double, ptr %i.c, align 8, !tbaa !1192 ; 4 uses
  %i.t = load double, ptr %i.d, align 8, !tbaa !1192 ; 4 uses
  %i.u = insertelement <2 x double> poison, double %i.s, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.t, i64 1
  %i.w = insertelement <2 x double> poison, double %i.r, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.y = fsub <2 x double> %i.v, %i.x
  %i.z = insertelement <2 x double> poison, double %i.p, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = fdiv <2 x double> %i.y, %i.aa
  %i.ac = fadd <2 x double> %i.ab, splat (double f0xBF40624DE0000000)
  %i.ad = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.ac)
  %i.ae = fptosi <2 x double> %i.ad to <2 x i32>
  %i.af = sitofp <2 x i32> %i.ae to <2 x double>
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.af, <2 x double> %i.x) ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = extractelement <2 x double> %i.ag, i64 1
  %i.aj = fcmp oeq double %i.ah, %i.ai
  br i1 %i.aj, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14
  %i.ak = fcmp olt double %i.k, %i.g
  %i.al = select i1 %i.ak, double %i.k, double %i.g
  %i.am = fadd double %i.al, f0xBF40624DE0000000
  %i.an = tail call noundef double @llvm.ceil.f64(double %i.am)
  %i.ao = fptosi double %i.an to i32
  %i.ap = sitofp i32 %i.ao to double
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread
  %i.aq = fcmp olt double %i.t, %i.s
  %i.ar = select i1 %i.aq, double %i.t, double %i.s
  %i.as = fsub double %i.ar, %i.r
  %i.at = fdiv double %i.as, %i.p
  %i.au = fadd double %i.at, f0xBF40624DE0000000
  %i.av = tail call noundef double @llvm.ceil.f64(double %i.au)
  %i.aw = fptosi double %i.av to i32
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.p, double %i.ax, double %i.r)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15: ; preds = %bb.b, %bb.c
  %.pre-phi = phi double [ 1.000000e+00, %bb.b ], [ %i.p, %bb.c ]
  %i.az = phi double [ %i.g, %bb.b ], [ %i.s, %bb.c ]
  %i.ba = phi double [ %i.k, %bb.b ], [ %i.t, %bb.c ]
  %i.bb = phi double [ %i.ap, %bb.b ], [ %i.ay, %bb.c ] ; 2 uses
  %i.bc = fcmp olt double %i.az, %i.ba
  %..i.i.i16 = select i1 %i.bc, ptr %i.d, ptr %i.c
  %i.bd = load double, ptr %..i.i.i16, align 8, !tbaa !1192 ; 2 uses
  %i.be = fcmp ugt double %i.bb, %i.bd
  br i1 %i.be, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit
  %storemerge27 = phi double [ %i.bb, %.lr.ph ], [ %i.db, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit ] ; 5 uses
  %i.bj = load <2 x double>, ptr %i.c, align 8, !tbaa !1192 ; 3 uses
  %i.bk = load <2 x double>, ptr %i.d, align 8, !tbaa !1192
  %i.bl = fsub <2 x double> %i.bk, %i.bj          ; 2 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0
  %i.bn = extractelement <2 x double> %i.bl, i64 1
  %i.bo = fdiv double %i.bn, %i.bm
  %i.bp = extractelement <2 x double> %i.bj, i64 0
  %i.bq = fsub double %storemerge27, %i.bp
  %i.br = extractelement <2 x double> %i.bj, i64 1
  %i.bs = tail call noundef double @llvm.fmuladd.f64(double %i.bo, double %i.bq, double %i.br) ; 5 uses
  %i.bt = tail call double @llvm.fabs.f64(double %i.bs) ; 3 uses
  %i.bu = fcmp ueq double %i.bt, +inf
  br i1 %i.bu, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bv = load double, ptr %i.bf, align 8, !tbaa !3186
  %i.bw = load double, ptr %i.bg, align 8, !tbaa !3187
  %i.bx = fsub double %storemerge27, %i.bw
  %i.by = fmul double %i.bv, %i.bx
  %i.bz = fadd double %i.by, 5.000000e-01
  %i.ca = tail call noundef double @llvm.floor.f64(double %i.bz)
  %i.cb = fptoui double %i.ca to i32
  %i.cc = zext i32 %i.cb to i64
  %i.cd = load ptr, ptr %i.bh, align 8, !tbaa !3116
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !1192
  %i.cg = fcmp olt double %i.bs, %i.cf
  br i1 %i.cg, label %bb.f, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit

bb.f:                                             ; preds = %bb.e
  store double %i.bs, ptr %i.ce, align 8, !tbaa !1192
  %i.ch = load <2 x double>, ptr %i.c, align 8, !tbaa !1192 ; 3 uses
  %i.ci = load <2 x double>, ptr %i.d, align 8, !tbaa !1192
  %i.cj = fsub <2 x double> %i.ci, %i.ch          ; 2 uses
  %i.ck = extractelement <2 x double> %i.cj, i64 0
  %i.cl = extractelement <2 x double> %i.cj, i64 1
  %.pre36 = fdiv double %i.cl, %i.ck
  %i.cm = extractelement <2 x double> %i.ch, i64 0
  %.pre38 = fsub double %storemerge27, %i.cm
  %i.cn = extractelement <2 x double> %i.ch, i64 1
  %.pre40 = tail call noundef double @llvm.fmuladd.f64(double %.pre36, double %.pre38, double %i.cn) ; 2 uses
  %.pre42 = tail call double @llvm.fabs.f64(double %.pre40)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi43 = phi double [ %i.bt, %bb.d ], [ %i.bt, %bb.e ], [ %.pre42, %bb.f ]
  %.pre-phi41 = phi double [ %i.bs, %bb.d ], [ %i.bs, %bb.e ], [ %.pre40, %bb.f ] ; 2 uses
  %i.co = fcmp ueq double %.pre-phi43, +inf
  br i1 %i.co, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit
  %i.cp = load double, ptr %i.bf, align 8, !tbaa !3186
  %i.cq = load double, ptr %i.bg, align 8, !tbaa !3187
  %i.cr = fsub double %storemerge27, %i.cq
  %i.cs = fmul double %i.cp, %i.cr
  %i.ct = fadd double %i.cs, 5.000000e-01
  %i.cu = tail call noundef double @llvm.floor.f64(double %i.ct)
  %i.cv = fptoui double %i.cu to i32
  %i.cw = zext i32 %i.cv to i64
  %i.cx = load ptr, ptr %i.bi, align 8, !tbaa !3116
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cw ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !1192
  %i.da = fcmp ogt double %.pre-phi41, %i.cz
  br i1 %i.da, label %bb.h, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit

bb.h:                                             ; preds = %bb.g
  store double %.pre-phi41, ptr %i.cy, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit, %bb.g, %bb.h
  %i.db = fadd double %storemerge27, %.pre-phi    ; 2 uses
  %i.dc = fcmp ugt double %i.db, %i.bd
  br i1 %i.dc, label %.loopexit, label %bb.d, !llvm.loop !8196

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMaxERKdSN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit15, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14.thread, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorC2ERSD_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(1232) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, true> *, bool>::accessor", align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %0, align 8, !tbaa !743
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !3159
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr null, ptr %2, align 8, !tbaa !2264
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i8 0, ptr %i.c, align 8, !tbaa !2265
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %0, ptr %i.a, align 8, !tbaa !3161
  %i.f = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE6lookupILb1ESH_PFPNSQ_4nodeERNSL_INS1_13hash_map_baseISP_NSI_13spin_rw_mutexEE6bucketEEERSN_PKbEEEbRKT0_S12_PNSQ_14const_accessorEbT1_ST_(ptr noundef nonnull align 8 dereferenceable(570) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE31allocate_node_default_constructISH_EEPNSQ_4nodeERNSL_INS1_13hash_map_baseISP_NSI_13spin_rw_mutexEE6bucketEEERKT_PKb, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE6insertERNSQ_8accessorERSN_.exit.i.i.i unwind label %bb.e ; 0 uses

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE6insertERNSQ_8accessorERSN_.exit.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.d, align 8, !tbaa !3190
  %i.g = load ptr, ptr %2, align 8, !tbaa !2264   ; 3 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i3.i.i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE6insertERNSQ_8accessorERSN_.exit.i.i.i
  store ptr null, ptr %2, align 8, !tbaa !2264
  %i.h = load i8, ptr %i.c, align 8, !tbaa !2265, !range !788, !noundef !789
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = atomicrmw and ptr %i.g, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw add ptr %i.g, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.d, align 8, !tbaa !3190
  %i.m = load ptr, ptr %2, align 8, !tbaa !2264   ; 3 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i4.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE14const_accessorD2Ev.exit5.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %2, align 8, !tbaa !2264
  %i.n = load i8, ptr %i.c, align 8, !tbaa !2265, !range !788, !noundef !789
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvv:bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.bg, ptr %i.ce, align 8, !tbaa !3182
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 4, ptr %i.cf, align 8, !tbaa !3185
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  invoke void @_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeINS1_35enumerable_thread_specific_iteratorINS1_17concurrent_vectorINS0_2d06paddedINS1_11ets_elementIN7openvdb5v13_04tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELm128EEENS1_23cache_aligned_allocatorISM_EEEESK_EEEEZNSA_5tools15ConvexVoxelizerINSA_4GridISK_EENSS_6lvlset25OpenCapsuleWedgeVoxelizerISV_NSA_4util15NullInterrupterEEESZ_E10iterateXYZILb0EEEvvE2OpKNS1_16auto_partitionerEE3runERKSR_RS13_RS15_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %.loopexit37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.cg = load i8, ptr %7, align 8, !tbaa !3854, !range !788, !noundef !789
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.r, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ci = load ptr, ptr %i.bs, align 8, !tbaa !3855 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !743
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(1232) %i.ci) #24, !inline_history !9613
  br label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit

_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit: ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN3tbb6detail2d126enumerable_thread_specificIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread

bb.t:                                             ; preds = %bb.m
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.x

bb.u:                                             ; preds = %.loopexit37
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.cp = load i8, ptr %7, align 8, !tbaa !3854, !range !788, !noundef !789
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.v, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24

bb.v:                                             ; preds = %bb.u
  %i.cr = load ptr, ptr %i.bs, align 8, !tbaa !3855 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !743
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(1232) %i.cr) #24, !inline_history !9613
  br label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24

_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24: ; preds = %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.x

bb.x:                                             ; preds = %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.co, %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit24 ], [ %i.cn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN3tbb6detail2d126enumerable_thread_specificIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ab

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !2180 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i25, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i26, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !2182
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i26

_ZNSt6vectorIiSaIiEED2Ev.exit.i26:                ; preds = %bb.y, %.critedge
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %3, align 8, !tbaa !743
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !3159 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.de, null
  br i1 %.not.i.i27, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit29, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i26
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %3, ptr %i.a, align 8, !tbaa !3161
  %i.dg = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE14internal_eraseISH_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i28 unwind label %bb.aa, !inline_history !3162 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i28: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit29

bb.aa:                                            ; preds = %bb.z
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #33, !inline_history !3162
  unreachable

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit29: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i26, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread

_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread: ; preds = %bb.b, %bb.a, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit29, %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit
  ret void

bb.ab:                                            ; preds = %bb.x, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn16 = phi { ptr, i32 } [ %lpad.loopexit.split-lp54, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn, %bb.x ]
  resume { ptr, i32 } %.pn16
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE14setXYRangeDataERKj(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !741    ; 5 uses
  %i.b = uitofp i32 %i.a to double                ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 11 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !3143 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 12 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !3844 ; 6 uses
  %i.g = fsub double %i.d, %i.f                   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 6 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !3144 ; 3 uses
  %i.j = fadd double %i.f, %i.i                   ; 5 uses
  %i.k = fcmp ogt double %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.l, align 8, !tbaa !3847
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> <double 1.000000e+00, double f0x7FEFFFFFFFFFFFFF>, ptr %i.m, align 8, !tbaa !1192
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.n, align 8, !tbaa !3848
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.o, align 4, !tbaa !3849
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3116 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3118
  %.not.i.i.i = icmp eq ptr %i.s, %i.q
  br i1 %.not.i.i.i, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5clearEv.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.b
  store ptr %i.q, ptr %i.r, align 8, !tbaa !3118
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5clearEv.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5clearEv.exit: ; preds = %bb.b, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3116 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3118
  %.not.i.i = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5clearEv.exit
  store ptr %i.u, ptr %i.v, align 8, !tbaa !3118
  br label %_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd.exit

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.y = load i8, ptr %i.x, align 8, !tbaa !3846, !range !788, !noundef !789
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = fadd double %i.d, %i.f                  ; 2 uses
  store i32 %i.a, ptr %i.aa, align 8, !tbaa !3847
  %i.ac = fdiv double 1.000000e+00, %i.b          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store double %i.ac, ptr %i.ad, align 8, !tbaa !3856
  %i.ae = icmp eq i32 %i.a, 1
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = fadd double %i.g, f0xBF40624DE0000000
  %i.ag = tail call noundef double @llvm.ceil.f64(double %i.af)
  %i.ah = fadd double %i.ab, f0x3F40624DE0000000
  %i.ai = tail call noundef double @llvm.floor.f64(double %i.ah)
  %i.aj = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ai, i64 1
  %i.al = fptosi <2 x double> %i.ak to <2 x i32>
  %i.am = sitofp <2 x i32> %i.al to <2 x double>
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit

bb.f:                                             ; preds = %bb.d
  %i.an = fadd nnan ninf double %i.b, -1.000000e+00
  %i.ao = fmul nnan double %i.an, 5.000000e-01
  %i.ap = insertelement <2 x double> poison, double %i.g, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ab, i64 1
  %i.ar = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = fsub <2 x double> %i.aq, %i.as
  %i.au = insertelement <2 x double> poison, double %i.b, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aw = fdiv <2 x double> %i.at, %i.av          ; 2 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 0
  %i.ay = fadd double %i.ax, f0xBF40624DE0000000
  %i.az = tail call noundef double @llvm.ceil.f64(double %i.ay)
  %i.ba = extractelement <2 x double> %i.aw, i64 1
  %i.bb = fadd double %i.ba, f0x3F40624DE0000000
  %i.bc = tail call noundef double @llvm.floor.f64(double %i.bb)
  %i.bd = insertelement <2 x double> poison, double %i.az, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bc, i64 1
  %i.bf = fptosi <2 x double> %i.be to <2 x i32>
  %i.bg = sitofp <2 x i32> %i.bf to <2 x double>
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.bg, <2 x double> %i.as)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit: ; preds = %bb.e, %bb.f
  %i.bi = phi <2 x double> [ %i.am, %bb.e ], [ %i.bh, %bb.f ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store <2 x double> %i.bi, ptr %i.bj, align 8, !tbaa !1192
  %shift = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.bi
  %i.bk = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bl = tail call noundef double @llvm.fabs.f64(double %i.bk)
  %i.bm = fmul double %i.ac, %i.bl
  %i.bn = fadd double %i.bm, 5.000000e-01
  %i.bo = tail call noundef double @llvm.floor.f64(double %i.bn)
  %i.bp = fptoui double %i.bo to i32
  %i.bq = add i32 %i.bp, 1                        ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !3849
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bt = zext i32 %i.bq to i64
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 noundef %i.bt, ptr noundef nonnull align 8 dereferenceable(8) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MAXVALUEE)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bv = load i32, ptr %i.br, align 4, !tbaa !3849
  %i.bw = zext i32 %i.bv to i64
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(8) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MINVALUEE)
  %i.bx = load double, ptr %i.c, align 8, !tbaa !3143 ; 3 uses
  %i.by = load double, ptr %i.e, align 8, !tbaa !3844 ; 3 uses
  %i.bz = fsub double %i.bx, %i.by                ; 2 uses
  %i.ca = load i32, ptr %1, align 4, !tbaa !741   ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit
  %i.cc = fadd double %i.bz, f0xBF40624DE0000000
  %i.cd = tail call noundef double @llvm.ceil.f64(double %i.cc)
  %i.ce = fptosi double %i.cd to i32
  %i.cf = sitofp i32 %i.ce to double
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit

bb.h:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit
  %i.cg = uitofp i32 %i.ca to double              ; 3 uses
  %i.ch = fadd nnan ninf double %i.cg, -1.000000e+00
  %i.ci = fmul nnan double %i.ch, 5.000000e-01    ; 2 uses
  %i.cj = fsub double %i.bz, %i.ci
  %i.ck = fdiv double %i.cj, %i.cg
  %i.cl = fadd double %i.ck, f0xBF40624DE0000000
  %i.cm = tail call noundef double @llvm.ceil.f64(double %i.cl)
  %i.cn = fptosi double %i.cm to i32
  %i.co = sitofp i32 %i.cn to double
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.co, double %i.ci)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit: ; preds = %bb.g, %bb.h
  %i.cq = phi double [ %i.cf, %bb.g ], [ %i.cp, %bb.h ] ; 2 uses
  %i.cr = fadd double %i.bx, %i.by
  %i.cs = fcmp ugt double %i.cq, %i.cr
  br i1 %i.cs, label %._crit_edge219, label %.lr.ph218

.lr.ph218:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.i

._crit_edge219:                                   ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit
  tail call void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE25intersectWithXYWedgeLinesEv(ptr noundef nonnull align 8 dereferenceable(664) %0)
  br label %_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd.exit

bb.i:                                             ; preds = %.lr.ph218, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit
  %i.cu = phi double [ %i.by, %.lr.ph218 ], [ %i.ei, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit ] ; 2 uses
  %i.cv = phi double [ %i.bx, %.lr.ph218 ], [ %i.eh, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit ]
  %storemerge36217 = phi double [ %i.cq, %.lr.ph218 ], [ %i.eg, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit ] ; 4 uses
  %i.cw = load double, ptr %i.ct, align 8, !tbaa !1192 ; 2 uses
  %i.cx = fmul double %i.cu, %i.cu
  %i.cy = fsub double %storemerge36217, %i.cv     ; 2 uses
  %i.cz = fmul double %i.cy, %i.cy
  %i.da = fsub double %i.cx, %i.cz
  %i.db = tail call noundef double @sqrt(double noundef %i.da) #24 ; 2 uses
  %i.dc = fsub double %i.cw, %i.db                ; 3 uses
  %i.dd = fadd double %i.cw, %i.db                ; 3 uses
  %i.de = tail call double @llvm.fabs.f64(double %i.dc)
  %i.df = fcmp ueq double %i.de, +inf
  br i1 %i.df, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dg = load double, ptr %i.ad, align 8, !tbaa !3856
  %i.dh = load double, ptr %i.bj, align 8, !tbaa !3857
  %i.di = fsub double %storemerge36217, %i.dh
  %i.dj = fmul double %i.dg, %i.di
  %i.dk = fadd double %i.dj, 5.000000e-01
  %i.dl = tail call noundef double @llvm.floor.f64(double %i.dk)
  %i.dm = fptoui double %i.dl to i32
  %i.dn = zext i32 %i.dm to i64
  %i.do = load ptr, ptr %i.bs, align 8, !tbaa !3116
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dn ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !1192
  %i.dr = fcmp olt double %i.dc, %i.dq
  br i1 %i.dr, label %bb.k, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i

bb.k:                                             ; preds = %bb.j
  store double %i.dc, ptr %i.dp, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.ds = tail call double @llvm.fabs.f64(double %i.dd)
  %i.dt = fcmp ueq double %i.ds, +inf
  br i1 %i.dt, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i
  %i.du = load double, ptr %i.ad, align 8, !tbaa !3856
  %i.dv = load double, ptr %i.bj, align 8, !tbaa !3857
  %i.dw = fsub double %storemerge36217, %i.dv
  %i.dx = fmul double %i.du, %i.dw
  %i.dy = fadd double %i.dx, 5.000000e-01
  %i.dz = tail call noundef double @llvm.floor.f64(double %i.dy)
  %i.ea = fptoui double %i.dz to i32
  %i.eb = zext i32 %i.ea to i64
  %i.ec = load ptr, ptr %i.bu, align 8, !tbaa !3116
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !1192
  %i.ef = fcmp ogt double %i.dd, %i.ee
  br i1 %i.ef, label %bb.m, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit

bb.m:                                             ; preds = %bb.l
  store double %i.dd, ptr %i.ed, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i, %bb.l, %bb.m
  %i.eg = fadd double %storemerge36217, %i.b      ; 2 uses
  %i.eh = load double, ptr %i.c, align 8, !tbaa !3143 ; 2 uses
  %i.ei = load double, ptr %i.e, align 8, !tbaa !3844 ; 2 uses
  %i.ej = fadd double %i.eh, %i.ei
  %i.ek = fcmp ugt double %i.eg, %i.ej
  br i1 %i.ek, label %._crit_edge219, label %bb.i, !llvm.loop !9615

bb.n:                                             ; preds = %bb.c
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 6 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !3858
  %i.en = tail call noundef double @llvm.fabs.f64(double %i.em)
  %i.eo = fmul double %i.f, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 6 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !3845
  %i.er = fdiv double %i.eo, %i.eq                ; 2 uses
  %i.es = fcmp olt double %i.er, %i.f
  %.sroa.speculated171 = select i1 %i.es, double %i.er, double %i.f ; 4 uses
  %i.et = fsub double %i.d, %.sroa.speculated171  ; 4 uses
  %i.eu = fadd double %i.d, %.sroa.speculated171  ; 8 uses
  %i.ev = fsub double %i.i, %.sroa.speculated171  ; 7 uses
  %i.ew = fadd double %i.i, %.sroa.speculated171  ; 5 uses
  %i.ex = icmp eq i32 %i.a, 1
  br i1 %i.ex, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ey = fadd double %i.g, f0xBF40624DE0000000
  %i.ez = tail call noundef double @llvm.ceil.f64(double %i.ey)
  %i.fa = insertelement <4 x double> poison, double %i.ew, i64 0
  %i.fb = insertelement <4 x double> %i.fa, double %i.et, i64 1
  %i.fc = insertelement <4 x double> %i.fb, double %i.eu, i64 2
  %i.fd = insertelement <4 x double> %i.fc, double %i.ev, i64 3
  %i.fe = fadd <4 x double> %i.fd, splat (double f0xBF40624DE0000000)
  %i.ff = tail call <4 x double> @llvm.ceil.v4f64(<4 x double> %i.fe)
  %i.fg = fptosi <4 x double> %i.ff to <4 x i32>
  %i.fh = sitofp <4 x i32> %i.fg to <4 x double>
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.fi, align 8, !tbaa !3847
  %i.fj = fdiv double 1.000000e+00, %i.b          ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store double %i.fj, ptr %i.fk, align 8, !tbaa !3856
  %i.fl = fadd double %i.j, f0x3F40624DE0000000
  %i.fm = tail call noundef double @llvm.floor.f64(double %i.fl)
  %i.fn = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fo = insertelement <2 x double> %i.fn, double %i.fm, i64 1
  %i.fp = fptosi <2 x double> %i.fo to <2 x i32>
  %i.fq = sitofp <2 x i32> %i.fp to <2 x double>
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit42

bb.p:                                             ; preds = %bb.n
  %i.fr = fadd nnan ninf double %i.b, -1.000000e+00
  %i.fs = fmul nnan double %i.fr, 5.000000e-01    ; 4 uses
  %i.ft = fsub double %i.g, %i.fs
  %i.fu = fdiv double %i.ft, %i.b
  %i.fv = fadd double %i.fu, f0xBF40624DE0000000
  %i.fw = tail call noundef double @llvm.ceil.f64(double %i.fv)
  %i.fx = insertelement <4 x double> poison, double %i.ew, i64 0
  %i.fy = insertelement <4 x double> %i.fx, double %i.et, i64 1
  %i.fz = insertelement <4 x double> %i.fy, double %i.eu, i64 2
  %i.ga = insertelement <4 x double> %i.fz, double %i.ev, i64 3
  %i.gb = insertelement <4 x double> poison, double %i.fs, i64 0
  %i.gc = shufflevector <4 x double> %i.gb, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gd = fsub <4 x double> %i.ga, %i.gc
  %i.ge = insertelement <4 x double> poison, double %i.b, i64 0
  %i.gf = shufflevector <4 x double> %i.ge, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gg = fdiv <4 x double> %i.gd, %i.gf
  %i.gh = fadd <4 x double> %i.gg, splat (double f0xBF40624DE0000000)
  %i.gi = tail call <4 x double> @llvm.ceil.v4f64(<4 x double> %i.gh)
  %i.gj = fptosi <4 x double> %i.gi to <4 x i32>
  %i.gk = sitofp <4 x i32> %i.gj to <4 x double>
  %i.gl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gf, <4 x double> %i.gk, <4 x double> %i.gc)
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.a, ptr %i.gm, align 8, !tbaa !3847
  %i.gn = fdiv double 1.000000e+00, %i.b          ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store double %i.gn, ptr %i.go, align 8, !tbaa !3856
  %i.gp = fsub double %i.j, %i.fs
  %i.gq = fdiv double %i.gp, %i.b
  %i.gr = fadd double %i.gq, f0x3F40624DE0000000
  %i.gs = tail call noundef double @llvm.floor.f64(double %i.gr)
  %i.gt = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.gu = insertelement <2 x double> %i.gt, double %i.gs, i64 1
  %i.gv = fptosi <2 x double> %i.gu to <2 x i32>
  %i.gw = sitofp <2 x i32> %i.gv to <2 x double>
  %i.gx = insertelement <2 x double> poison, double %i.b, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.gw, <2 x double> %i.ha)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit42

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit42: ; preds = %bb.o, %bb.p
  %i.hc = phi ptr [ %i.fk, %bb.o ], [ %i.go, %bb.p ] ; 18 uses
  %i.hd = phi double [ %i.fj, %bb.o ], [ %i.gn, %bb.p ]
  %i.he = phi <2 x double> [ %i.fq, %bb.o ], [ %i.hb, %bb.p ] ; 4 uses
  %i.hf = phi <4 x double> [ %i.fh, %bb.o ], [ %i.gl, %bb.p ] ; 6 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 19 uses
  store <2 x double> %i.he, ptr %i.hg, align 8, !tbaa !1192
  %i.hh = extractelement <2 x double> %i.he, i64 0 ; 2 uses
  %shift280 = shufflevector <2 x double> %i.he, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop281 = fsub <2 x double> %shift280, %i.he
  %i.hi = extractelement <2 x double> %foldExtExtBinop281, i64 0
  %i.hj = tail call noundef double @llvm.fabs.f64(double %i.hi)
  %i.hk = fmul double %i.hd, %i.hj
  %i.hl = fadd double %i.hk, 5.000000e-01
  %i.hm = tail call noundef double @llvm.floor.f64(double %i.hl)
  %i.hn = fptoui double %i.hm to i32
  %i.ho = add i32 %i.hn, 1                        ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !3849
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  %i.hr = zext i32 %i.ho to i64
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.hq, i64 noundef %i.hr, ptr noundef nonnull align 8 dereferenceable(8) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MAXVALUEE)
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 10 uses
  %i.ht = load i32, ptr %i.hp, align 4, !tbaa !3849
  %i.hu = zext i32 %i.ht to i64
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i64 noundef %i.hu, ptr noundef nonnull align 8 dereferenceable(8) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MINVALUEE)
  %i.hv = fcmp ugt double %i.hh, %i.et
  br i1 %i.hv, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit42
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.q

._crit_edge:                                      ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit42
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 7 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !1192
  %i.hz = tail call double @llvm.fabs.f64(double %i.hy)
  %i.ia = fcmp ule double %i.hz, 1.000000e-15
  br i1 %i.ia, label %.loopexit193, label %bb.v

bb.q:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44
  %storemerge196 = phi double [ %i.hh, %.lr.ph ], [ %i.jn, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44 ] ; 4 uses
  %i.ib = load double, ptr %i.hw, align 8, !tbaa !1192 ; 2 uses
  %i.ic = load double, ptr %i.e, align 8, !tbaa !1192 ; 2 uses
  %i.id = fmul double %i.ic, %i.ic
  %i.ie = load double, ptr %i.c, align 8, !tbaa !1192
  %i.if = fsub double %storemerge196, %i.ie       ; 2 uses
  %i.ig = fmul double %i.if, %i.if
  %i.ih = fsub double %i.id, %i.ig
  %i.ii = tail call noundef double @sqrt(double noundef %i.ih) #24 ; 2 uses
  %i.ij = fsub double %i.ib, %i.ii                ; 3 uses
  %i.ik = fadd double %i.ib, %i.ii                ; 3 uses
  %i.il = tail call double @llvm.fabs.f64(double %i.ij)
  %i.im = fcmp ueq double %i.il, +inf
  br i1 %i.im, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i43, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.in = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.io = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.ip = fsub double %storemerge196, %i.io
  %i.iq = fmul double %i.in, %i.ip
  %i.ir = fadd double %i.iq, 5.000000e-01
  %i.is = tail call noundef double @llvm.floor.f64(double %i.ir)
  %i.it = fptoui double %i.is to i32
  %i.iu = zext i32 %i.it to i64
  %i.iv = load ptr, ptr %i.hq, align 8, !tbaa !3116
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.iu ; 2 uses
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !1192
  %i.iy = fcmp olt double %i.ij, %i.ix
  br i1 %i.iy, label %bb.s, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i43

bb.s:                                             ; preds = %bb.r
  store double %i.ij, ptr %i.iw, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i43

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i43: ; preds = %bb.s, %bb.r, %bb.q
  %i.iz = tail call double @llvm.fabs.f64(double %i.ik)
  %i.ja = fcmp ueq double %i.iz, +inf
  br i1 %i.ja, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44, label %bb.t

bb.t:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i43
  %i.jb = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.jc = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.jd = fsub double %storemerge196, %i.jc
  %i.je = fmul double %i.jb, %i.jd
  %i.jf = fadd double %i.je, 5.000000e-01
  %i.jg = tail call noundef double @llvm.floor.f64(double %i.jf)
  %i.jh = fptoui double %i.jg to i32
  %i.ji = zext i32 %i.jh to i64
  %i.jj = load ptr, ptr %i.hs, align 8, !tbaa !3116
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.ji ; 2 uses
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !1192
  %i.jm = fcmp ogt double %i.ik, %i.jl
  br i1 %i.jm, label %bb.u, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44

bb.u:                                             ; preds = %bb.t
  store double %i.ik, ptr %i.jk, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i43, %bb.t, %bb.u
  %i.jn = fadd double %storemerge196, %i.b        ; 2 uses
  %i.jo = fcmp ugt double %i.jn, %i.et
  br i1 %i.jo, label %._crit_edge, label %bb.q, !llvm.loop !9616

bb.v:                                             ; preds = %._crit_edge
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !9625
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.js = load double, ptr %i.jr, align 8, !tbaa !9626
  %i.jt = fcmp ogt double %i.jq, %i.js
  %i.ju = fcmp olt double %i.ev, %i.eu
  %.sroa.speculated153 = select i1 %i.ju, double %i.ev, double %i.eu ; 3 uses
  %i.jv = extractelement <4 x double> %i.hf, i64 1 ; 3 uses
  %i.jw = fcmp ugt double %i.jv, %.sroa.speculated153 ; 2 uses
  br i1 %i.jt, label %.preheader192, label %.preheader194

.preheader194:                                    ; preds = %bb.v
  br i1 %i.jw, label %.loopexit193, label %.lr.ph198

.preheader192:                                    ; preds = %bb.v
  br i1 %i.jw, label %.loopexit193, label %.lr.ph200

.lr.ph200:                                        ; preds = %.preheader192, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47
  %storemerge29199 = phi double [ %i.lq, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47 ], [ %i.jv, %.preheader192 ] ; 4 uses
  %i.jx = load double, ptr %i.jp, align 8, !tbaa !9625 ; 2 uses
  %i.jy = load double, ptr %i.el, align 8, !tbaa !3858
  %i.jz = load double, ptr %i.c, align 8, !tbaa !3143
  %i.ka = fsub double %storemerge29199, %i.jz     ; 3 uses
  %i.kb = load double, ptr %i.e, align 8, !tbaa !3844 ; 3 uses
  %i.kc = load double, ptr %i.ep, align 8, !tbaa !3845
  %i.kd = fneg double %i.kc
  %i.ke = fmul double %i.kb, %i.kd
  %i.kf = tail call double @llvm.fmuladd.f64(double %i.jy, double %i.ka, double %i.ke)
  %i.kg = load double, ptr %i.hx, align 8, !tbaa !9627
  %i.kh = fdiv double %i.kf, %i.kg
  %i.ki = fadd double %i.jx, %i.kh                ; 3 uses
  %i.kj = fmul double %i.kb, %i.kb
  %i.kk = fmul double %i.ka, %i.ka
  %i.kl = fsub double %i.kj, %i.kk
  %i.km = tail call noundef double @sqrt(double noundef %i.kl) #24
  %i.kn = fadd double %i.jx, %i.km                ; 3 uses
  %i.ko = tail call double @llvm.fabs.f64(double %i.ki)
  %i.kp = fcmp ueq double %i.ko, +inf
  br i1 %i.kp, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46, label %bb.w

bb.w:                                             ; preds = %.lr.ph200
  %i.kq = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.kr = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.ks = fsub double %storemerge29199, %i.kr
  %i.kt = fmul double %i.kq, %i.ks
  %i.ku = fadd double %i.kt, 5.000000e-01
  %i.kv = tail call noundef double @llvm.floor.f64(double %i.ku)
  %i.kw = fptoui double %i.kv to i32
  %i.kx = zext i32 %i.kw to i64
  %i.ky = load ptr, ptr %i.hq, align 8, !tbaa !3116
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.kx ; 2 uses
  %i.la = load double, ptr %i.kz, align 8, !tbaa !1192
  %i.lb = fcmp olt double %i.ki, %i.la
  br i1 %i.lb, label %bb.x, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46

end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvv:bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.bg, ptr %i.ce, align 8, !tbaa !2256
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 4, ptr %i.cf, align 8, !tbaa !2259
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  invoke void @_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeINS1_35enumerable_thread_specific_iteratorINS1_17concurrent_vectorINS0_2d06paddedINS1_11ets_elementIN7openvdb5v13_04tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELm128EEENS1_23cache_aligned_allocatorISM_EEEESK_EEEEZNSA_5tools15ConvexVoxelizerINSA_4GridISK_EENSS_6lvlset16CapsuleVoxelizerISV_NSA_4util15NullInterrupterEEESZ_E10iterateXYZILb0EEEvvE2OpKNS1_16auto_partitionerEE3runERKSR_RS13_RS15_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %.loopexit35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.cg = load i8, ptr %7, align 8, !tbaa !5096, !range !788, !noundef !789
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.r, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ci = load ptr, ptr %i.bs, align 8, !tbaa !5097 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !743
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(1232) %i.ci) #24, !inline_history !13011
  br label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit

_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit: ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN3tbb6detail2d126enumerable_thread_specificIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread

bb.t:                                             ; preds = %bb.m
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.x

bb.u:                                             ; preds = %.loopexit35
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.cp = load i8, ptr %7, align 8, !tbaa !5096, !range !788, !noundef !789
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.v, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22

bb.v:                                             ; preds = %bb.u
  %i.cr = load ptr, ptr %i.bs, align 8, !tbaa !5097 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !743
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(1232) %i.cr) #24, !inline_history !13011
  br label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22

_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22: ; preds = %bb.u, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.x

bb.x:                                             ; preds = %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22, %bb.t
  %.pn = phi { ptr, i32 } [ %i.co, %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22 ], [ %i.cn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN3tbb6detail2d126enumerable_thread_specificIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ab

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !2180 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i23, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i24, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !2182
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i24

_ZNSt6vectorIiSaIiEED2Ev.exit.i24:                ; preds = %bb.y, %.critedge
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %3, align 8, !tbaa !743
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !2228 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.de, null
  br i1 %.not.i.i25, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit27, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i24
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %3, ptr %i.a, align 8, !tbaa !2230
  %i.dg = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE14internal_eraseISH_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i26 unwind label %bb.aa, !inline_history !2231 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i26: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit27

bb.aa:                                            ; preds = %bb.z
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #33, !inline_history !2231
  unreachable

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit27: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i24, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread

_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread: ; preds = %bb.b, %bb.a, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit27, %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit
  ret void

bb.ab:                                            ; preds = %bb.x, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn14 = phi { ptr, i32 } [ %lpad.loopexit.split-lp52, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %bb.x ]
  resume { ptr, i32 } %.pn14
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE14setXYRangeDataERKj(ptr noundef nonnull align 8 dereferenceable(369) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !741    ; 5 uses
  %i.b = uitofp i32 %i.a to float                 ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 11 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !1907 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 12 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !1902 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 6 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !1909 ; 2 uses
  %i.i = fsub float %i.d, %i.f                    ; 5 uses
  %i.j = fadd float %i.f, %i.h                    ; 5 uses
  %i.k = fcmp ogt float %i.i, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.l, align 8, !tbaa !5089
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> <float 1.000000e+00, float f0x7F7FFFFF>, ptr %i.m, align 8, !tbaa !1161
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float f0xFF7FFFFF, ptr %i.n, align 8, !tbaa !5090
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.o, align 4, !tbaa !5091
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1857 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1856
  %.not.i.i.i = icmp eq ptr %i.s, %i.q
  br i1 %.not.i.i.i, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5clearEv.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.b
  store ptr %i.q, ptr %i.r, align 8, !tbaa !1856
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5clearEv.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5clearEv.exit: ; preds = %bb.b, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1857 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1856
  %.not.i.i = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5clearEv.exit
  store ptr %i.u, ptr %i.v, align 8, !tbaa !1856
  br label %_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf.exit

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.y = load i8, ptr %i.x, align 8, !tbaa !1916, !range !788, !noundef !789
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = fadd float %i.d, %i.f                   ; 2 uses
  store i32 %i.a, ptr %i.aa, align 8, !tbaa !5089
  %i.ac = fdiv float 1.000000e+00, %i.b           ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store float %i.ac, ptr %i.ad, align 8, !tbaa !13023
  %i.ae = icmp eq i32 %i.a, 1
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = fadd float %i.i, -5.000000e-04
  %i.ag = tail call noundef float @llvm.ceil.f32(float %i.af)
  %i.ah = fadd float %i.ab, 5.000000e-04
  %i.ai = tail call noundef float @llvm.floor.f32(float %i.ah)
  %i.aj = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ai, i64 1
  %i.al = fptosi <2 x float> %i.ak to <2 x i32>
  %i.am = sitofp <2 x i32> %i.al to <2 x float>
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit

bb.f:                                             ; preds = %bb.d
  %i.an = fadd nnan ninf float %i.b, -1.000000e+00
  %i.ao = fmul nnan float %i.an, 5.000000e-01
  %i.ap = insertelement <2 x float> poison, float %i.i, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.ab, i64 1
  %i.ar = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = fsub <2 x float> %i.aq, %i.as
  %i.au = insertelement <2 x float> poison, float %i.b, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aw = fdiv <2 x float> %i.at, %i.av
  %i.ax = fadd <2 x float> %i.aw, <float -5.000000e-04, float 5.000000e-04> ; 2 uses
  %i.ay = extractelement <2 x float> %i.ax, i64 0
  %i.az = tail call noundef float @llvm.ceil.f32(float %i.ay)
  %i.ba = extractelement <2 x float> %i.ax, i64 1
  %i.bb = tail call noundef float @llvm.floor.f32(float %i.ba)
  %i.bc = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %i.bb, i64 1
  %i.be = fptosi <2 x float> %i.bd to <2 x i32>
  %i.bf = sitofp <2 x i32> %i.be to <2 x float>
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.bf, <2 x float> %i.as)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit: ; preds = %bb.e, %bb.f
  %i.bh = phi <2 x float> [ %i.am, %bb.e ], [ %i.bg, %bb.f ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  store <2 x float> %i.bh, ptr %i.bi, align 4, !tbaa !1161
  %shift = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.bh
  %i.bj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bk = tail call noundef float @llvm.fabs.f32(float %i.bj)
  %i.bl = fmul float %i.ac, %i.bk
  %i.bm = fadd float %i.bl, 5.000000e-01
  %i.bn = tail call noundef float @llvm.floor.f32(float %i.bm)
  %i.bo = fptoui float %i.bn to i32
  %i.bp = add i32 %i.bo, 1                        ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !5091
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bs = zext i32 %i.bp to i64
  tail call void @_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 noundef %i.bs, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MAXVALUEE)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bu = load i32, ptr %i.bq, align 4, !tbaa !5091
  %i.bv = zext i32 %i.bu to i64
  tail call void @_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 noundef %i.bv, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MINVALUEE)
  %i.bw = load float, ptr %i.c, align 8, !tbaa !1907 ; 3 uses
  %i.bx = load float, ptr %i.e, align 4, !tbaa !1902 ; 3 uses
  %i.by = fsub float %i.bw, %i.bx                 ; 2 uses
  %i.bz = load i32, ptr %1, align 4, !tbaa !741   ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit
  %i.cb = fadd float %i.by, -5.000000e-04
  %i.cc = tail call noundef float @llvm.ceil.f32(float %i.cb)
  %i.cd = fptosi float %i.cc to i32
  %i.ce = sitofp i32 %i.cd to float
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit

bb.h:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit
  %i.cf = uitofp i32 %i.bz to float               ; 3 uses
  %i.cg = fadd nnan ninf float %i.cf, -1.000000e+00
  %i.ch = fmul nnan float %i.cg, 5.000000e-01     ; 2 uses
  %i.ci = fsub float %i.by, %i.ch
  %i.cj = fdiv float %i.ci, %i.cf
  %i.ck = fadd float %i.cj, -5.000000e-04
  %i.cl = tail call noundef float @llvm.ceil.f32(float %i.ck)
  %i.cm = fptosi float %i.cl to i32
  %i.cn = sitofp i32 %i.cm to float
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cn, float %i.ch)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit: ; preds = %bb.g, %bb.h
  %i.cp = phi float [ %i.ce, %bb.g ], [ %i.co, %bb.h ] ; 2 uses
  %i.cq = fadd float %i.bw, %i.bx
  %i.cr = fcmp ugt float %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf.exit, label %.lr.ph218

.lr.ph218:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 348
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph218, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit
  %i.ct = phi float [ %i.bx, %.lr.ph218 ], [ %i.eh, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit ] ; 2 uses
  %i.cu = phi float [ %i.bw, %.lr.ph218 ], [ %i.eg, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit ]
  %storemerge36217 = phi float [ %i.cp, %.lr.ph218 ], [ %i.ef, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit ] ; 4 uses
  %i.cv = load float, ptr %i.cs, align 4, !tbaa !1161 ; 2 uses
  %i.cw = fmul float %i.ct, %i.ct
  %i.cx = fsub float %storemerge36217, %i.cu      ; 2 uses
  %i.cy = fmul float %i.cx, %i.cx
  %i.cz = fsub float %i.cw, %i.cy
  %i.da = tail call noundef float @sqrtf(float noundef %i.cz) #24 ; 2 uses
  %i.db = fsub float %i.cv, %i.da                 ; 3 uses
  %i.dc = fadd float %i.cv, %i.da                 ; 3 uses
  %i.dd = tail call float @llvm.fabs.f32(float %i.db)
  %i.de = fcmp ueq float %i.dd, +inf
  br i1 %i.de, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.df = load float, ptr %i.ad, align 8, !tbaa !13023
  %i.dg = load float, ptr %i.bi, align 4, !tbaa !5098
  %i.dh = fsub float %storemerge36217, %i.dg
  %i.di = fmul float %i.df, %i.dh
  %i.dj = fadd float %i.di, 5.000000e-01
  %i.dk = tail call noundef float @llvm.floor.f32(float %i.dj)
  %i.dl = fptoui float %i.dk to i32
  %i.dm = zext i32 %i.dl to i64
  %i.dn = load ptr, ptr %i.br, align 8, !tbaa !1857
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dm ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !1161
  %i.dq = fcmp olt float %i.db, %i.dp
  br i1 %i.dq, label %bb.k, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i

bb.k:                                             ; preds = %bb.j
  store float %i.db, ptr %i.do, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.dr = tail call float @llvm.fabs.f32(float %i.dc)
  %i.ds = fcmp ueq float %i.dr, +inf
  br i1 %i.ds, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i
  %i.dt = load float, ptr %i.ad, align 8, !tbaa !13023
  %i.du = load float, ptr %i.bi, align 4, !tbaa !5098
  %i.dv = fsub float %storemerge36217, %i.du
  %i.dw = fmul float %i.dt, %i.dv
  %i.dx = fadd float %i.dw, 5.000000e-01
  %i.dy = tail call noundef float @llvm.floor.f32(float %i.dx)
  %i.dz = fptoui float %i.dy to i32
  %i.ea = zext i32 %i.dz to i64
  %i.eb = load ptr, ptr %i.bt, align 8, !tbaa !1857
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ea ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !1161
  %i.ee = fcmp ogt float %i.dc, %i.ed
  br i1 %i.ee, label %bb.m, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit

bb.m:                                             ; preds = %bb.l
  store float %i.dc, ptr %i.ec, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i, %bb.l, %bb.m
  %i.ef = fadd float %storemerge36217, %i.b       ; 2 uses
  %i.eg = load float, ptr %i.c, align 8, !tbaa !1907 ; 2 uses
  %i.eh = load float, ptr %i.e, align 4, !tbaa !1902 ; 2 uses
  %i.ei = fadd float %i.eg, %i.eh
  %i.ej = fcmp ugt float %i.ef, %i.ei
  br i1 %i.ej, label %_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf.exit, label %bb.i, !llvm.loop !13013

bb.n:                                             ; preds = %bb.c
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 6 uses
  %i.el = load float, ptr %i.ek, align 8, !tbaa !1912
  %i.em = tail call noundef float @llvm.fabs.f32(float %i.el)
  %i.en = fmul float %i.f, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !1915
  %i.eq = fdiv float %i.en, %i.ep                 ; 2 uses
  %i.er = fcmp olt float %i.eq, %i.f
  %.sroa.speculated171 = select i1 %i.er, float %i.eq, float %i.f
  %i.es = insertelement <4 x float> poison, float %i.h, i64 0
  %i.et = insertelement <4 x float> %i.es, float %i.d, i64 1
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0> ; 2 uses
  %i.ev = insertelement <4 x float> poison, float %.sroa.speculated171, i64 0
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ex = fadd <4 x float> %i.eu, %i.ew           ; 4 uses
  %i.ey = fsub <4 x float> %i.eu, %i.ew           ; 4 uses
  %i.ez = shufflevector <4 x float> %i.ex, <4 x float> %i.ey, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 2 uses
  %i.fa = icmp eq i32 %i.a, 1
  br i1 %i.fa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fb = fadd float %i.i, -5.000000e-04
  %i.fc = tail call noundef float @llvm.ceil.f32(float %i.fb)
  %i.fd = fadd <4 x float> %i.ez, splat (float -5.000000e-04)
  %i.fe = tail call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.fd)
  %i.ff = fptosi <4 x float> %i.fe to <4 x i32>
  %i.fg = sitofp <4 x i32> %i.ff to <4 x float>
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 1, ptr %i.fh, align 8, !tbaa !5089
  %i.fi = fdiv float 1.000000e+00, %i.b           ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store float %i.fi, ptr %i.fj, align 8, !tbaa !13023
  %i.fk = fadd float %i.j, 5.000000e-04
  %i.fl = tail call noundef float @llvm.floor.f32(float %i.fk)
  %i.fm = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.fl, i64 1
  %i.fo = fptosi <2 x float> %i.fn to <2 x i32>
  %i.fp = sitofp <2 x i32> %i.fo to <2 x float>
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit42

bb.p:                                             ; preds = %bb.n
  %i.fq = fadd nnan ninf float %i.b, -1.000000e+00
  %i.fr = fmul nnan float %i.fq, 5.000000e-01     ; 2 uses
  %i.fs = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fu = fsub <4 x float> %i.ez, %i.ft
  %i.fv = insertelement <4 x float> poison, float %i.b, i64 0
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fx = fdiv <4 x float> %i.fu, %i.fw
  %i.fy = fadd <4 x float> %i.fx, splat (float -5.000000e-04)
  %i.fz = tail call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.fy)
  %i.ga = fptosi <4 x float> %i.fz to <4 x i32>
  %i.gb = sitofp <4 x i32> %i.ga to <4 x float>
  %i.gc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fw, <4 x float> %i.gb, <4 x float> %i.ft)
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 %i.a, ptr %i.gd, align 8, !tbaa !5089
  %i.ge = fdiv float 1.000000e+00, %i.b           ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store float %i.ge, ptr %i.gf, align 8, !tbaa !13023
  %i.gg = insertelement <2 x float> poison, float %i.i, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %i.j, i64 1
  %i.gi = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gk = fsub <2 x float> %i.gh, %i.gj
  %i.gl = insertelement <2 x float> poison, float %i.b, i64 0
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gn = fdiv <2 x float> %i.gk, %i.gm
  %i.go = fadd <2 x float> %i.gn, <float -5.000000e-04, float 5.000000e-04> ; 2 uses
  %i.gp = extractelement <2 x float> %i.go, i64 0
  %i.gq = tail call noundef float @llvm.ceil.f32(float %i.gp)
  %i.gr = extractelement <2 x float> %i.go, i64 1
  %i.gs = tail call noundef float @llvm.floor.f32(float %i.gr)
  %i.gt = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.gu = insertelement <2 x float> %i.gt, float %i.gs, i64 1
  %i.gv = fptosi <2 x float> %i.gu to <2 x i32>
  %i.gw = sitofp <2 x i32> %i.gv to <2 x float>
  %i.gx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> %i.gw, <2 x float> %i.gj)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit42

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit42: ; preds = %bb.o, %bb.p
  %i.gy = phi ptr [ %i.fj, %bb.o ], [ %i.gf, %bb.p ] ; 18 uses
  %i.gz = phi float [ %i.fi, %bb.o ], [ %i.ge, %bb.p ]
  %i.ha = phi ptr [ %i.fh, %bb.o ], [ %i.gd, %bb.p ]
  %i.hb = phi <2 x float> [ %i.fp, %bb.o ], [ %i.gx, %bb.p ] ; 4 uses
  %i.hc = phi <4 x float> [ %i.fg, %bb.o ], [ %i.gc, %bb.p ] ; 6 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 19 uses
  store <2 x float> %i.hb, ptr %i.hd, align 4, !tbaa !1161
  %i.he = extractelement <2 x float> %i.hb, i64 0 ; 2 uses
  %shift279 = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop280 = fsub <2 x float> %shift279, %i.hb
  %i.hf = extractelement <2 x float> %foldExtExtBinop280, i64 0
  %i.hg = tail call noundef float @llvm.fabs.f32(float %i.hf)
  %i.hh = fmul float %i.gz, %i.hg
  %i.hi = fadd float %i.hh, 5.000000e-01
  %i.hj = tail call noundef float @llvm.floor.f32(float %i.hi)
  %i.hk = fptoui float %i.hj to i32
  %i.hl = add i32 %i.hk, 1                        ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !5091
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.ho = zext i32 %i.hl to i64
  tail call void @_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.hn, i64 noundef %i.ho, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MAXVALUEE)
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 10 uses
  %i.hq = load i32, ptr %i.hm, align 4, !tbaa !5091
  %i.hr = zext i32 %i.hq to i64
  tail call void @_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.hp, i64 noundef %i.hr, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MINVALUEE)
  %i.hs = extractelement <4 x float> %i.ey, i64 1 ; 2 uses
  %i.ht = fcmp ugt float %i.he, %i.hs
  br i1 %i.ht, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit42
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 348
  br label %bb.q

._crit_edge:                                      ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit42
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 7 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !1161
  %i.hx = tail call float @llvm.fabs.f32(float %i.hw)
  %i.hy = fcmp ule float %i.hx, f0x322BCC77
  br i1 %i.hy, label %.loopexit193, label %bb.v

bb.q:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44
  %storemerge196 = phi float [ %i.he, %.lr.ph ], [ %i.jl, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44 ] ; 4 uses
  %i.hz = load float, ptr %i.hu, align 4, !tbaa !1161 ; 2 uses
  %i.ia = load float, ptr %i.e, align 4, !tbaa !1161 ; 2 uses
  %i.ib = fmul float %i.ia, %i.ia
  %i.ic = load float, ptr %i.c, align 8, !tbaa !1161
  %i.id = fsub float %storemerge196, %i.ic        ; 2 uses
  %i.ie = fmul float %i.id, %i.id
  %i.if = fsub float %i.ib, %i.ie
  %i.ig = tail call noundef float @sqrtf(float noundef %i.if) #24 ; 2 uses
  %i.ih = fsub float %i.hz, %i.ig                 ; 3 uses
  %i.ii = fadd float %i.hz, %i.ig                 ; 3 uses
  %i.ij = tail call float @llvm.fabs.f32(float %i.ih)
  %i.ik = fcmp ueq float %i.ij, +inf
  br i1 %i.ik, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i43, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.il = load float, ptr %i.gy, align 8, !tbaa !13023
  %i.im = load float, ptr %i.hd, align 4, !tbaa !5098
  %i.in = fsub float %storemerge196, %i.im
  %i.io = fmul float %i.il, %i.in
  %i.ip = fadd float %i.io, 5.000000e-01
  %i.iq = tail call noundef float @llvm.floor.f32(float %i.ip)
  %i.ir = fptoui float %i.iq to i32
  %i.is = zext i32 %i.ir to i64
  %i.it = load ptr, ptr %i.hn, align 8, !tbaa !1857
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.is ; 2 uses
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !1161
  %i.iw = fcmp olt float %i.ih, %i.iv
  br i1 %i.iw, label %bb.s, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i43

bb.s:                                             ; preds = %bb.r
  store float %i.ih, ptr %i.iu, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i43

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i43: ; preds = %bb.s, %bb.r, %bb.q
  %i.ix = tail call float @llvm.fabs.f32(float %i.ii)
  %i.iy = fcmp ueq float %i.ix, +inf
  br i1 %i.iy, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44, label %bb.t

bb.t:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i43
  %i.iz = load float, ptr %i.gy, align 8, !tbaa !13023
  %i.ja = load float, ptr %i.hd, align 4, !tbaa !5098
  %i.jb = fsub float %storemerge196, %i.ja
  %i.jc = fmul float %i.iz, %i.jb
  %i.jd = fadd float %i.jc, 5.000000e-01
  %i.je = tail call noundef float @llvm.floor.f32(float %i.jd)
  %i.jf = fptoui float %i.je to i32
  %i.jg = zext i32 %i.jf to i64
  %i.jh = load ptr, ptr %i.hp, align 8, !tbaa !1857
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jg ; 2 uses
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !1161
  %i.jk = fcmp ogt float %i.ii, %i.jj
  br i1 %i.jk, label %bb.u, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44

bb.u:                                             ; preds = %bb.t
  store float %i.ii, ptr %i.ji, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i43, %bb.t, %bb.u
  %i.jl = fadd float %storemerge196, %i.b         ; 2 uses
  %i.jm = fcmp ugt float %i.jl, %i.hs
  br i1 %i.jm, label %._crit_edge, label %bb.q, !llvm.loop !13014

bb.v:                                             ; preds = %._crit_edge
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 3 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !1908
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.jq = load float, ptr %i.jp, align 8, !tbaa !1910
  %i.jr = fcmp ogt float %i.jo, %i.jq
  %i.js = extractelement <4 x float> %i.ex, i64 2 ; 2 uses
  %i.jt = extractelement <4 x float> %i.ey, i64 3 ; 2 uses
  %i.ju = fcmp olt float %i.jt, %i.js
  %.sroa.speculated153 = select i1 %i.ju, float %i.jt, float %i.js ; 3 uses
  %i.jv = extractelement <4 x float> %i.hc, i64 1 ; 3 uses
  %i.jw = fcmp ugt float %i.jv, %.sroa.speculated153 ; 2 uses
  br i1 %i.jr, label %.preheader192, label %.preheader194

.preheader194:                                    ; preds = %bb.v
  br i1 %i.jw, label %.loopexit193, label %.lr.ph198

.preheader192:                                    ; preds = %bb.v
  br i1 %i.jw, label %.loopexit193, label %.lr.ph200

.lr.ph200:                                        ; preds = %.preheader192, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47
  %storemerge29199 = phi float [ %i.lq, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47 ], [ %i.jv, %.preheader192 ] ; 4 uses
  %i.jx = load float, ptr %i.jn, align 4, !tbaa !1908 ; 2 uses
  %i.jy = load float, ptr %i.ek, align 8, !tbaa !1912
  %i.jz = load float, ptr %i.c, align 8, !tbaa !1907
  %i.ka = fsub float %storemerge29199, %i.jz      ; 3 uses
  %i.kb = load float, ptr %i.e, align 4, !tbaa !1902 ; 3 uses
  %i.kc = load float, ptr %i.eo, align 8, !tbaa !1915
  %i.kd = fneg float %i.kc
  %i.ke = fmul float %i.kb, %i.kd
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.jy, float %i.ka, float %i.ke)
  %i.kg = load float, ptr %i.hv, align 4, !tbaa !1911
  %i.kh = fdiv float %i.kf, %i.kg
  %i.ki = fadd float %i.jx, %i.kh                 ; 3 uses
  %i.kj = fmul float %i.kb, %i.kb
  %i.kk = fmul float %i.ka, %i.ka
  %i.kl = fsub float %i.kj, %i.kk
  %i.km = tail call noundef float @sqrtf(float noundef %i.kl) #24
  %i.kn = fadd float %i.jx, %i.km                 ; 3 uses
  %i.ko = tail call float @llvm.fabs.f32(float %i.ki)
  %i.kp = fcmp ueq float %i.ko, +inf
  br i1 %i.kp, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46, label %bb.w

bb.w:                                             ; preds = %.lr.ph200
  %i.kq = load float, ptr %i.gy, align 8, !tbaa !13023
  %i.kr = load float, ptr %i.hd, align 4, !tbaa !5098
  %i.ks = fsub float %storemerge29199, %i.kr
  %i.kt = fmul float %i.kq, %i.ks
  %i.ku = fadd float %i.kt, 5.000000e-01
  %i.kv = tail call noundef float @llvm.floor.f32(float %i.ku)
  %i.kw = fptoui float %i.kv to i32
  %i.kx = zext i32 %i.kw to i64
  %i.ky = load ptr, ptr %i.hn, align 8, !tbaa !1857
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.kx ; 2 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !1161
  %i.lb = fcmp olt float %i.ki, %i.la
  br i1 %i.lb, label %bb.x, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46
end_hunk_4
begin_hunk_5_@_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvv:bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.bg, ptr %i.ce, align 8, !tbaa !3182
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 4, ptr %i.cf, align 8, !tbaa !3185
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  invoke void @_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeINS1_35enumerable_thread_specific_iteratorINS1_17concurrent_vectorINS0_2d06paddedINS1_11ets_elementIN7openvdb5v13_04tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELm128EEENS1_23cache_aligned_allocatorISM_EEEESK_EEEEZNSA_5tools15ConvexVoxelizerINSA_4GridISK_EENSS_6lvlset16CapsuleVoxelizerISV_NSA_4util15NullInterrupterEEESZ_E10iterateXYZILb0EEEvvE2OpKNS1_16auto_partitionerEE3runERKSR_RS13_RS15_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %.loopexit35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.cg = load i8, ptr %7, align 8, !tbaa !5163, !range !788, !noundef !789
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.r, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ci = load ptr, ptr %i.bs, align 8, !tbaa !5164 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !743
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(1232) %i.ci) #24, !inline_history !13221
  br label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit

_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit: ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN3tbb6detail2d126enumerable_thread_specificIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread

bb.t:                                             ; preds = %bb.m
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.x

bb.u:                                             ; preds = %.loopexit35
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.cp = load i8, ptr %7, align 8, !tbaa !5163, !range !788, !noundef !789
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.v, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22

bb.v:                                             ; preds = %bb.u
  %i.cr = load ptr, ptr %i.bs, align 8, !tbaa !5164 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !743
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(1232) %i.cr) #24, !inline_history !13221
  br label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22

_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22: ; preds = %bb.u, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.x

bb.x:                                             ; preds = %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22, %bb.t
  %.pn = phi { ptr, i32 } [ %i.co, %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22 ], [ %i.cn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN3tbb6detail2d126enumerable_thread_specificIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ab

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !2180 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i23, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i24, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !2182
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i24

_ZNSt6vectorIiSaIiEED2Ev.exit.i24:                ; preds = %bb.y, %.critedge
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %3, align 8, !tbaa !743
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !3159 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.de, null
  br i1 %.not.i.i25, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit27, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i24
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %3, ptr %i.a, align 8, !tbaa !3161
  %i.dg = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE14internal_eraseISH_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i26 unwind label %bb.aa, !inline_history !3162 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i26: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit27

bb.aa:                                            ; preds = %bb.z
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #33, !inline_history !3162
  unreachable

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit27: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i24, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread

_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread: ; preds = %bb.b, %bb.a, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit27, %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit
  ret void

bb.ab:                                            ; preds = %bb.x, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn14 = phi { ptr, i32 } [ %lpad.loopexit.split-lp52, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %bb.x ]
  resume { ptr, i32 } %.pn14
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE14setXYRangeDataERKj(ptr noundef nonnull align 8 dereferenceable(513) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !741    ; 5 uses
  %i.b = uitofp i32 %i.a to double                ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 11 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !5145 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 12 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !5149 ; 6 uses
  %i.g = fsub double %i.d, %i.f                   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 6 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !5146 ; 3 uses
  %i.j = fadd double %i.f, %i.i                   ; 5 uses
  %i.k = fcmp ogt double %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.l, align 8, !tbaa !5156
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> <double 1.000000e+00, double f0x7FEFFFFFFFFFFFFF>, ptr %i.m, align 8, !tbaa !1192
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.n, align 8, !tbaa !5157
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.o, align 4, !tbaa !5158
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3116 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3118
  %.not.i.i.i = icmp eq ptr %i.s, %i.q
  br i1 %.not.i.i.i, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5clearEv.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.b
  store ptr %i.q, ptr %i.r, align 8, !tbaa !3118
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5clearEv.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5clearEv.exit: ; preds = %bb.b, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3116 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3118
  %.not.i.i = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5clearEv.exit
  store ptr %i.u, ptr %i.v, align 8, !tbaa !3118
  br label %_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd.exit

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.y = load i8, ptr %i.x, align 8, !tbaa !5155, !range !788, !noundef !789
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = fadd double %i.d, %i.f                  ; 2 uses
  store i32 %i.a, ptr %i.aa, align 8, !tbaa !5156
  %i.ac = fdiv double 1.000000e+00, %i.b          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store double %i.ac, ptr %i.ad, align 8, !tbaa !13233
  %i.ae = icmp eq i32 %i.a, 1
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = fadd double %i.g, f0xBF40624DE0000000
  %i.ag = tail call noundef double @llvm.ceil.f64(double %i.af)
  %i.ah = fadd double %i.ab, f0x3F40624DE0000000
  %i.ai = tail call noundef double @llvm.floor.f64(double %i.ah)
  %i.aj = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ai, i64 1
  %i.al = fptosi <2 x double> %i.ak to <2 x i32>
  %i.am = sitofp <2 x i32> %i.al to <2 x double>
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit

bb.f:                                             ; preds = %bb.d
  %i.an = fadd nnan ninf double %i.b, -1.000000e+00
  %i.ao = fmul nnan double %i.an, 5.000000e-01
  %i.ap = insertelement <2 x double> poison, double %i.g, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ab, i64 1
  %i.ar = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = fsub <2 x double> %i.aq, %i.as
  %i.au = insertelement <2 x double> poison, double %i.b, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aw = fdiv <2 x double> %i.at, %i.av          ; 2 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 0
  %i.ay = fadd double %i.ax, f0xBF40624DE0000000
  %i.az = tail call noundef double @llvm.ceil.f64(double %i.ay)
  %i.ba = extractelement <2 x double> %i.aw, i64 1
  %i.bb = fadd double %i.ba, f0x3F40624DE0000000
  %i.bc = tail call noundef double @llvm.floor.f64(double %i.bb)
  %i.bd = insertelement <2 x double> poison, double %i.az, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bc, i64 1
  %i.bf = fptosi <2 x double> %i.be to <2 x i32>
  %i.bg = sitofp <2 x i32> %i.bf to <2 x double>
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.bg, <2 x double> %i.as)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit: ; preds = %bb.e, %bb.f
  %i.bi = phi <2 x double> [ %i.am, %bb.e ], [ %i.bh, %bb.f ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store <2 x double> %i.bi, ptr %i.bj, align 8, !tbaa !1192
  %shift = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.bi
  %i.bk = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bl = tail call noundef double @llvm.fabs.f64(double %i.bk)
  %i.bm = fmul double %i.ac, %i.bl
  %i.bn = fadd double %i.bm, 5.000000e-01
  %i.bo = tail call noundef double @llvm.floor.f64(double %i.bn)
  %i.bp = fptoui double %i.bo to i32
  %i.bq = add i32 %i.bp, 1                        ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !5158
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bt = zext i32 %i.bq to i64
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 noundef %i.bt, ptr noundef nonnull align 8 dereferenceable(8) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MAXVALUEE)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bv = load i32, ptr %i.br, align 4, !tbaa !5158
  %i.bw = zext i32 %i.bv to i64
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(8) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MINVALUEE)
  %i.bx = load double, ptr %i.c, align 8, !tbaa !5145 ; 3 uses
  %i.by = load double, ptr %i.e, align 8, !tbaa !5149 ; 3 uses
  %i.bz = fsub double %i.bx, %i.by                ; 2 uses
  %i.ca = load i32, ptr %1, align 4, !tbaa !741   ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit
  %i.cc = fadd double %i.bz, f0xBF40624DE0000000
  %i.cd = tail call noundef double @llvm.ceil.f64(double %i.cc)
  %i.ce = fptosi double %i.cd to i32
  %i.cf = sitofp i32 %i.ce to double
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit

bb.h:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit
  %i.cg = uitofp i32 %i.ca to double              ; 3 uses
  %i.ch = fadd nnan ninf double %i.cg, -1.000000e+00
  %i.ci = fmul nnan double %i.ch, 5.000000e-01    ; 2 uses
  %i.cj = fsub double %i.bz, %i.ci
  %i.ck = fdiv double %i.cj, %i.cg
  %i.cl = fadd double %i.ck, f0xBF40624DE0000000
  %i.cm = tail call noundef double @llvm.ceil.f64(double %i.cl)
  %i.cn = fptosi double %i.cm to i32
  %i.co = sitofp i32 %i.cn to double
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.co, double %i.ci)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit: ; preds = %bb.g, %bb.h
  %i.cq = phi double [ %i.cf, %bb.g ], [ %i.cp, %bb.h ] ; 2 uses
  %i.cr = fadd double %i.bx, %i.by
  %i.cs = fcmp ugt double %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd.exit, label %.lr.ph218

.lr.ph218:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph218, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit
  %i.cu = phi double [ %i.by, %.lr.ph218 ], [ %i.ei, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit ] ; 2 uses
  %i.cv = phi double [ %i.bx, %.lr.ph218 ], [ %i.eh, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit ]
  %storemerge36217 = phi double [ %i.cq, %.lr.ph218 ], [ %i.eg, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit ] ; 4 uses
  %i.cw = load double, ptr %i.ct, align 8, !tbaa !1192 ; 2 uses
  %i.cx = fmul double %i.cu, %i.cu
  %i.cy = fsub double %storemerge36217, %i.cv     ; 2 uses
  %i.cz = fmul double %i.cy, %i.cy
  %i.da = fsub double %i.cx, %i.cz
  %i.db = tail call noundef double @sqrt(double noundef %i.da) #24 ; 2 uses
  %i.dc = fsub double %i.cw, %i.db                ; 3 uses
  %i.dd = fadd double %i.cw, %i.db                ; 3 uses
  %i.de = tail call double @llvm.fabs.f64(double %i.dc)
  %i.df = fcmp ueq double %i.de, +inf
  br i1 %i.df, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dg = load double, ptr %i.ad, align 8, !tbaa !13233
  %i.dh = load double, ptr %i.bj, align 8, !tbaa !5165
  %i.di = fsub double %storemerge36217, %i.dh
  %i.dj = fmul double %i.dg, %i.di
  %i.dk = fadd double %i.dj, 5.000000e-01
  %i.dl = tail call noundef double @llvm.floor.f64(double %i.dk)
  %i.dm = fptoui double %i.dl to i32
  %i.dn = zext i32 %i.dm to i64
  %i.do = load ptr, ptr %i.bs, align 8, !tbaa !3116
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dn ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !1192
  %i.dr = fcmp olt double %i.dc, %i.dq
  br i1 %i.dr, label %bb.k, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i

bb.k:                                             ; preds = %bb.j
  store double %i.dc, ptr %i.dp, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.ds = tail call double @llvm.fabs.f64(double %i.dd)
  %i.dt = fcmp ueq double %i.ds, +inf
  br i1 %i.dt, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i
  %i.du = load double, ptr %i.ad, align 8, !tbaa !13233
  %i.dv = load double, ptr %i.bj, align 8, !tbaa !5165
  %i.dw = fsub double %storemerge36217, %i.dv
  %i.dx = fmul double %i.du, %i.dw
  %i.dy = fadd double %i.dx, 5.000000e-01
  %i.dz = tail call noundef double @llvm.floor.f64(double %i.dy)
  %i.ea = fptoui double %i.dz to i32
  %i.eb = zext i32 %i.ea to i64
  %i.ec = load ptr, ptr %i.bu, align 8, !tbaa !3116
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !1192
  %i.ef = fcmp ogt double %i.dd, %i.ee
  br i1 %i.ef, label %bb.m, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit

bb.m:                                             ; preds = %bb.l
  store double %i.dd, ptr %i.ed, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i, %bb.l, %bb.m
  %i.eg = fadd double %storemerge36217, %i.b      ; 2 uses
  %i.eh = load double, ptr %i.c, align 8, !tbaa !5145 ; 2 uses
  %i.ei = load double, ptr %i.e, align 8, !tbaa !5149 ; 2 uses
  %i.ej = fadd double %i.eh, %i.ei
  %i.ek = fcmp ugt double %i.eg, %i.ej
  br i1 %i.ek, label %_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd.exit, label %bb.i, !llvm.loop !13223

bb.n:                                             ; preds = %bb.c
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 6 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !5153
  %i.en = tail call noundef double @llvm.fabs.f64(double %i.em)
  %i.eo = fmul double %i.f, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 6 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !5154
  %i.er = fdiv double %i.eo, %i.eq                ; 2 uses
  %i.es = fcmp olt double %i.er, %i.f
  %.sroa.speculated171 = select i1 %i.es, double %i.er, double %i.f ; 4 uses
  %i.et = fsub double %i.d, %.sroa.speculated171  ; 4 uses
  %i.eu = fadd double %i.d, %.sroa.speculated171  ; 8 uses
  %i.ev = fsub double %i.i, %.sroa.speculated171  ; 7 uses
  %i.ew = fadd double %i.i, %.sroa.speculated171  ; 5 uses
  %i.ex = icmp eq i32 %i.a, 1
  br i1 %i.ex, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ey = fadd double %i.g, f0xBF40624DE0000000
  %i.ez = tail call noundef double @llvm.ceil.f64(double %i.ey)
  %i.fa = insertelement <4 x double> poison, double %i.ew, i64 0
  %i.fb = insertelement <4 x double> %i.fa, double %i.et, i64 1
  %i.fc = insertelement <4 x double> %i.fb, double %i.eu, i64 2
  %i.fd = insertelement <4 x double> %i.fc, double %i.ev, i64 3
  %i.fe = fadd <4 x double> %i.fd, splat (double f0xBF40624DE0000000)
  %i.ff = tail call <4 x double> @llvm.ceil.v4f64(<4 x double> %i.fe)
  %i.fg = fptosi <4 x double> %i.ff to <4 x i32>
  %i.fh = sitofp <4 x i32> %i.fg to <4 x double>
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 1, ptr %i.fi, align 8, !tbaa !5156
  %i.fj = fdiv double 1.000000e+00, %i.b          ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store double %i.fj, ptr %i.fk, align 8, !tbaa !13233
  %i.fl = fadd double %i.j, f0x3F40624DE0000000
  %i.fm = tail call noundef double @llvm.floor.f64(double %i.fl)
  %i.fn = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fo = insertelement <2 x double> %i.fn, double %i.fm, i64 1
  %i.fp = fptosi <2 x double> %i.fo to <2 x i32>
  %i.fq = sitofp <2 x i32> %i.fp to <2 x double>
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit42

bb.p:                                             ; preds = %bb.n
  %i.fr = fadd nnan ninf double %i.b, -1.000000e+00
  %i.fs = fmul nnan double %i.fr, 5.000000e-01    ; 4 uses
  %i.ft = fsub double %i.g, %i.fs
  %i.fu = fdiv double %i.ft, %i.b
  %i.fv = fadd double %i.fu, f0xBF40624DE0000000
  %i.fw = tail call noundef double @llvm.ceil.f64(double %i.fv)
  %i.fx = insertelement <4 x double> poison, double %i.ew, i64 0
  %i.fy = insertelement <4 x double> %i.fx, double %i.et, i64 1
  %i.fz = insertelement <4 x double> %i.fy, double %i.eu, i64 2
  %i.ga = insertelement <4 x double> %i.fz, double %i.ev, i64 3
  %i.gb = insertelement <4 x double> poison, double %i.fs, i64 0
  %i.gc = shufflevector <4 x double> %i.gb, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gd = fsub <4 x double> %i.ga, %i.gc
  %i.ge = insertelement <4 x double> poison, double %i.b, i64 0
  %i.gf = shufflevector <4 x double> %i.ge, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gg = fdiv <4 x double> %i.gd, %i.gf
  %i.gh = fadd <4 x double> %i.gg, splat (double f0xBF40624DE0000000)
  %i.gi = tail call <4 x double> @llvm.ceil.v4f64(<4 x double> %i.gh)
  %i.gj = fptosi <4 x double> %i.gi to <4 x i32>
  %i.gk = sitofp <4 x i32> %i.gj to <4 x double>
  %i.gl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gf, <4 x double> %i.gk, <4 x double> %i.gc)
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 %i.a, ptr %i.gm, align 8, !tbaa !5156
  %i.gn = fdiv double 1.000000e+00, %i.b          ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store double %i.gn, ptr %i.go, align 8, !tbaa !13233
  %i.gp = fsub double %i.j, %i.fs
  %i.gq = fdiv double %i.gp, %i.b
  %i.gr = fadd double %i.gq, f0x3F40624DE0000000
  %i.gs = tail call noundef double @llvm.floor.f64(double %i.gr)
  %i.gt = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.gu = insertelement <2 x double> %i.gt, double %i.gs, i64 1
  %i.gv = fptosi <2 x double> %i.gu to <2 x i32>
  %i.gw = sitofp <2 x i32> %i.gv to <2 x double>
  %i.gx = insertelement <2 x double> poison, double %i.b, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.gw, <2 x double> %i.ha)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit42

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit42: ; preds = %bb.o, %bb.p
  %i.hc = phi ptr [ %i.fk, %bb.o ], [ %i.go, %bb.p ] ; 18 uses
  %i.hd = phi double [ %i.fj, %bb.o ], [ %i.gn, %bb.p ]
  %i.he = phi ptr [ %i.fi, %bb.o ], [ %i.gm, %bb.p ]
  %i.hf = phi <2 x double> [ %i.fq, %bb.o ], [ %i.hb, %bb.p ] ; 4 uses
  %i.hg = phi <4 x double> [ %i.fh, %bb.o ], [ %i.gl, %bb.p ] ; 6 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 19 uses
  store <2 x double> %i.hf, ptr %i.hh, align 8, !tbaa !1192
  %i.hi = extractelement <2 x double> %i.hf, i64 0 ; 2 uses
  %shift279 = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop280 = fsub <2 x double> %shift279, %i.hf
  %i.hj = extractelement <2 x double> %foldExtExtBinop280, i64 0
  %i.hk = tail call noundef double @llvm.fabs.f64(double %i.hj)
  %i.hl = fmul double %i.hd, %i.hk
  %i.hm = fadd double %i.hl, 5.000000e-01
  %i.hn = tail call noundef double @llvm.floor.f64(double %i.hm)
  %i.ho = fptoui double %i.hn to i32
  %i.hp = add i32 %i.ho, 1                        ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !5158
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  %i.hs = zext i32 %i.hp to i64
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, i64 noundef %i.hs, ptr noundef nonnull align 8 dereferenceable(8) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MAXVALUEE)
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 10 uses
  %i.hu = load i32, ptr %i.hq, align 4, !tbaa !5158
  %i.hv = zext i32 %i.hu to i64
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.ht, i64 noundef %i.hv, ptr noundef nonnull align 8 dereferenceable(8) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MINVALUEE)
  %i.hw = fcmp ugt double %i.hi, %i.et
  br i1 %i.hw, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit42
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.q

._crit_edge:                                      ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit42
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 7 uses
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !1192
  %i.ia = tail call double @llvm.fabs.f64(double %i.hz)
  %i.ib = fcmp ule double %i.ia, 1.000000e-15
  br i1 %i.ib, label %.loopexit193, label %bb.v

bb.q:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44
  %storemerge196 = phi double [ %i.hi, %.lr.ph ], [ %i.jo, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44 ] ; 4 uses
  %i.ic = load double, ptr %i.hx, align 8, !tbaa !1192 ; 2 uses
  %i.id = load double, ptr %i.e, align 8, !tbaa !1192 ; 2 uses
  %i.ie = fmul double %i.id, %i.id
  %i.if = load double, ptr %i.c, align 8, !tbaa !1192
  %i.ig = fsub double %storemerge196, %i.if       ; 2 uses
  %i.ih = fmul double %i.ig, %i.ig
  %i.ii = fsub double %i.ie, %i.ih
  %i.ij = tail call noundef double @sqrt(double noundef %i.ii) #24 ; 2 uses
  %i.ik = fsub double %i.ic, %i.ij                ; 3 uses
  %i.il = fadd double %i.ic, %i.ij                ; 3 uses
  %i.im = tail call double @llvm.fabs.f64(double %i.ik)
  %i.in = fcmp ueq double %i.im, +inf
  br i1 %i.in, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i43, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.io = load double, ptr %i.hc, align 8, !tbaa !13233
  %i.ip = load double, ptr %i.hh, align 8, !tbaa !5165
  %i.iq = fsub double %storemerge196, %i.ip
  %i.ir = fmul double %i.io, %i.iq
  %i.is = fadd double %i.ir, 5.000000e-01
  %i.it = tail call noundef double @llvm.floor.f64(double %i.is)
  %i.iu = fptoui double %i.it to i32
  %i.iv = zext i32 %i.iu to i64
  %i.iw = load ptr, ptr %i.hr, align 8, !tbaa !3116
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.iv ; 2 uses
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !1192
  %i.iz = fcmp olt double %i.ik, %i.iy
  br i1 %i.iz, label %bb.s, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i43

bb.s:                                             ; preds = %bb.r
  store double %i.ik, ptr %i.ix, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i43

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i43: ; preds = %bb.s, %bb.r, %bb.q
  %i.ja = tail call double @llvm.fabs.f64(double %i.il)
  %i.jb = fcmp ueq double %i.ja, +inf
  br i1 %i.jb, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44, label %bb.t

bb.t:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i43
  %i.jc = load double, ptr %i.hc, align 8, !tbaa !13233
  %i.jd = load double, ptr %i.hh, align 8, !tbaa !5165
  %i.je = fsub double %storemerge196, %i.jd
  %i.jf = fmul double %i.jc, %i.je
  %i.jg = fadd double %i.jf, 5.000000e-01
  %i.jh = tail call noundef double @llvm.floor.f64(double %i.jg)
  %i.ji = fptoui double %i.jh to i32
  %i.jj = zext i32 %i.ji to i64
  %i.jk = load ptr, ptr %i.ht, align 8, !tbaa !3116
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.jj ; 2 uses
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !1192
  %i.jn = fcmp ogt double %i.il, %i.jm
  br i1 %i.jn, label %bb.u, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44

bb.u:                                             ; preds = %bb.t
  store double %i.il, ptr %i.jl, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i43, %bb.t, %bb.u
  %i.jo = fadd double %storemerge196, %i.b        ; 2 uses
  %i.jp = fcmp ugt double %i.jo, %i.et
  br i1 %i.jp, label %._crit_edge, label %bb.q, !llvm.loop !13224

bb.v:                                             ; preds = %._crit_edge
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !5150
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.jt = load double, ptr %i.js, align 8, !tbaa !5151
  %i.ju = fcmp ogt double %i.jr, %i.jt
  %i.jv = fcmp olt double %i.ev, %i.eu
  %.sroa.speculated153 = select i1 %i.jv, double %i.ev, double %i.eu ; 3 uses
  %i.jw = extractelement <4 x double> %i.hg, i64 1 ; 3 uses
  %i.jx = fcmp ugt double %i.jw, %.sroa.speculated153 ; 2 uses
  br i1 %i.ju, label %.preheader192, label %.preheader194

.preheader194:                                    ; preds = %bb.v
  br i1 %i.jx, label %.loopexit193, label %.lr.ph198

.preheader192:                                    ; preds = %bb.v
  br i1 %i.jx, label %.loopexit193, label %.lr.ph200

.lr.ph200:                                        ; preds = %.preheader192, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47
  %storemerge29199 = phi double [ %i.lr, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47 ], [ %i.jw, %.preheader192 ] ; 4 uses
  %i.jy = load double, ptr %i.jq, align 8, !tbaa !5150 ; 2 uses
  %i.jz = load double, ptr %i.el, align 8, !tbaa !5153
  %i.ka = load double, ptr %i.c, align 8, !tbaa !5145
  %i.kb = fsub double %storemerge29199, %i.ka     ; 3 uses
  %i.kc = load double, ptr %i.e, align 8, !tbaa !5149 ; 3 uses
  %i.kd = load double, ptr %i.ep, align 8, !tbaa !5154
  %i.ke = fneg double %i.kd
  %i.kf = fmul double %i.kc, %i.ke
  %i.kg = tail call double @llvm.fmuladd.f64(double %i.jz, double %i.kb, double %i.kf)
  %i.kh = load double, ptr %i.hy, align 8, !tbaa !5152
  %i.ki = fdiv double %i.kg, %i.kh
  %i.kj = fadd double %i.jy, %i.ki                ; 3 uses
  %i.kk = fmul double %i.kc, %i.kc
  %i.kl = fmul double %i.kb, %i.kb
  %i.km = fsub double %i.kk, %i.kl
  %i.kn = tail call noundef double @sqrt(double noundef %i.km) #24
  %i.ko = fadd double %i.jy, %i.kn                ; 3 uses
  %i.kp = tail call double @llvm.fabs.f64(double %i.kj)
  %i.kq = fcmp ueq double %i.kp, +inf
  br i1 %i.kq, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46, label %bb.w

bb.w:                                             ; preds = %.lr.ph200
  %i.kr = load double, ptr %i.hc, align 8, !tbaa !13233
  %i.ks = load double, ptr %i.hh, align 8, !tbaa !5165
  %i.kt = fsub double %storemerge29199, %i.ks
  %i.ku = fmul double %i.kr, %i.kt
  %i.kv = fadd double %i.ku, 5.000000e-01
  %i.kw = tail call noundef double @llvm.floor.f64(double %i.kv)
  %i.kx = fptoui double %i.kw to i32
  %i.ky = zext i32 %i.kx to i64
  %i.kz = load ptr, ptr %i.hr, align 8, !tbaa !3116
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.ky ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !1192
  %i.lc = fcmp olt double %i.kj, %i.lb
  br i1 %i.lc, label %bb.x, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46
end_hunk_5
begin_hunk_6_@_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvv:bb.a

.thread.i.i.i.i:                                  ; preds = %bb.o
  %i.cb = shl nuw i64 1, %.01015.i.i.i.i
  %i.cc = and i64 %i.cb, -2
  br label %.loopexit35

bb.p:                                             ; preds = %bb.o
  %i.cd = add nuw nsw i64 %.01015.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cd, %i.bx
  br i1 %exitcond.not.i.i.i.i, label %.loopexit35, label %bb.o, !llvm.loop !155

.loopexit35:                                      ; preds = %bb.p, %.thread.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.cc, %.thread.i.i.i.i ], [ 8, %bb.p ]
  %.sroa.speculated.i.i = call noundef i64 @llvm.umin.i64(i64 %.1.i.i.i.i, i64 %i.bu)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.bg, ptr %8, align 8, !tbaa !2256
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.speculated.i.i, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !937
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.bg, ptr %i.ce, align 8, !tbaa !2256
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 4, ptr %i.cf, align 8, !tbaa !2259
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  invoke void @_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeINS1_35enumerable_thread_specific_iteratorINS1_17concurrent_vectorINS0_2d06paddedINS1_11ets_elementIN7openvdb5v13_04tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELm128EEENS1_23cache_aligned_allocatorISM_EEEESK_EEEEZNSA_5tools15ConvexVoxelizerINSA_4GridISK_EENSS_6lvlset23TaperedCapsuleVoxelizerISV_NSA_4util15NullInterrupterEEESZ_E10iterateXYZILb0EEEvvE2OpKNS1_16auto_partitionerEE3runERKSR_RS13_RS15_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %.loopexit35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.cg = load i8, ptr %7, align 8, !tbaa !5229, !range !788, !noundef !789
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.r, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ci = load ptr, ptr %i.bs, align 8, !tbaa !5230 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !743
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(1232) %i.ci) #24, !inline_history !13486
  br label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit

_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit: ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN3tbb6detail2d126enumerable_thread_specificIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread

bb.t:                                             ; preds = %bb.m
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.x

bb.u:                                             ; preds = %.loopexit35
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.cp = load i8, ptr %7, align 8, !tbaa !5229, !range !788, !noundef !789
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.v, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22

bb.v:                                             ; preds = %bb.u
  %i.cr = load ptr, ptr %i.bs, align 8, !tbaa !5230 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !743
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(1232) %i.cr) #24, !inline_history !13486
  br label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22

_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22: ; preds = %bb.u, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.x

bb.x:                                             ; preds = %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22, %bb.t
  %.pn = phi { ptr, i32 } [ %i.co, %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22 ], [ %i.cn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN3tbb6detail2d126enumerable_thread_specificIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ab

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !2180 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i23, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i24, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !2182
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i24

_ZNSt6vectorIiSaIiEED2Ev.exit.i24:                ; preds = %bb.y, %.critedge
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %3, align 8, !tbaa !743
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !2228 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.de, null
  br i1 %.not.i.i25, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit27, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i24
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %3, ptr %i.a, align 8, !tbaa !2230
  %i.dg = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE14internal_eraseISH_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i26 unwind label %bb.aa, !inline_history !2231 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i26: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit27

bb.aa:                                            ; preds = %bb.z
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #33, !inline_history !2231
  unreachable

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit27: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i24, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread

_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread: ; preds = %bb.b, %bb.a, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit27, %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit
  ret void

bb.ab:                                            ; preds = %bb.x, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn14 = phi { ptr, i32 } [ %lpad.loopexit.split-lp52, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %bb.x ]
  resume { ptr, i32 } %.pn14
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE14setXYRangeDataERKj(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 7 uses
  %2 = alloca %"class.openvdb::v13_0::math::Vec2", align 8 ; 5 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec2", align 8 ; 5 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec2", align 8 ; 5 uses
  %5 = alloca %"class.openvdb::v13_0::math::Vec2", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = load i32, ptr %1, align 4, !tbaa !741    ; 5 uses
  %i.c = uitofp i32 %i.b to float                 ; 11 uses
  store float %i.c, ptr %i.a, align 4, !tbaa !1161
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !5218
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.g = load float, ptr %i.f, align 8, !tbaa !5217
  %i.h = fcmp ugt float %i.e, %i.g
  br i1 %i.h, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.j = load float, ptr %i.i, align 8, !tbaa !5215 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 3 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !13490 ; 2 uses
  %i.m = fsub float %i.j, %i.l                    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 3 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !13491 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !13492 ; 2 uses
  %i.r = fsub float %i.o, %i.q                    ; 3 uses
  %i.s = fcmp ugt float %i.m, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.b, ptr %i.t, align 8, !tbaa !5222
  %i.u = fdiv float 1.000000e+00, %i.c            ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store float %i.u, ptr %i.v, align 8, !tbaa !5231
  %i.w = icmp eq i32 %i.b, 1                      ; 2 uses
  br i1 %i.s, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = fadd float %i.j, %i.l                    ; 2 uses
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = fadd float %i.m, -5.000000e-04
  %i.z = tail call noundef float @llvm.ceil.f32(float %i.y)
  %i.aa = fadd float %i.x, 5.000000e-04
  %i.ab = tail call noundef float @llvm.floor.f32(float %i.aa)
  %i.ac = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.ab, i64 1
  %i.ae = fptosi <2 x float> %i.ad to <2 x i32>
  %i.af = sitofp <2 x i32> %i.ae to <2 x float>
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = fadd nnan ninf float %i.c, -1.000000e+00
  %i.ah = fmul nnan float %i.ag, 5.000000e-01
  %i.ai = insertelement <2 x float> poison, float %i.m, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.x, i64 1
  %i.ak = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.am = fsub <2 x float> %i.aj, %i.al
  %i.an = insertelement <2 x float> poison, float %i.c, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ap = fdiv <2 x float> %i.am, %i.ao
  %i.aq = fadd <2 x float> %i.ap, <float -5.000000e-04, float 5.000000e-04> ; 2 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0
  %i.as = tail call noundef float @llvm.ceil.f32(float %i.ar)
  %i.at = extractelement <2 x float> %i.aq, i64 1
  %i.au = tail call noundef float @llvm.floor.f32(float %i.at)
  %i.av = insertelement <2 x float> poison, float %i.as, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.au, i64 1
  %i.ax = fptosi <2 x float> %i.aw to <2 x i32>
  %i.ay = sitofp <2 x i32> %i.ax to <2 x float>
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.ay, <2 x float> %i.al)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit: ; preds = %bb.d, %bb.e
  %i.ba = phi <2 x float> [ %i.af, %bb.d ], [ %i.az, %bb.e ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  store <2 x float> %i.ba, ptr %i.bb, align 4, !tbaa !1161
  %shift = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.ba
  %i.bc = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bd = tail call noundef float @llvm.fabs.f32(float %i.bc)
  %i.be = fmul float %i.u, %i.bd
  %i.bf = fadd float %i.be, 5.000000e-01
  %i.bg = tail call noundef float @llvm.floor.f32(float %i.bf)
  %i.bh = fptoui float %i.bg to i32
  %i.bi = add i32 %i.bh, 1                        ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !5224
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bl = zext i32 %i.bi to i64
  tail call void @_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 noundef %i.bl, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MAXVALUEE)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bn = load i32, ptr %i.bj, align 4, !tbaa !5224
  %i.bo = zext i32 %i.bn to i64
  tail call void @_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 noundef %i.bo, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MINVALUEE)
  %i.bp = load float, ptr %i.i, align 8, !tbaa !5215 ; 3 uses
  %i.bq = load float, ptr %i.k, align 4, !tbaa !13490 ; 3 uses
  %i.br = fsub float %i.bp, %i.bq                 ; 2 uses
  %i.bs = load i32, ptr %1, align 4, !tbaa !741   ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit
  %i.bu = fadd float %i.br, -5.000000e-04
  %i.bv = tail call noundef float @llvm.ceil.f32(float %i.bu)
  %i.bw = fptosi float %i.bv to i32
  %i.bx = sitofp i32 %i.bw to float
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit
  %i.by = uitofp i32 %i.bs to float               ; 3 uses
  %i.bz = fadd nnan ninf float %i.by, -1.000000e+00
  %i.ca = fmul nnan float %i.bz, 5.000000e-01     ; 2 uses
  %i.cb = fsub float %i.br, %i.ca
  %i.cc = fdiv float %i.cb, %i.by
  %i.cd = fadd float %i.cc, -5.000000e-04
  %i.ce = tail call noundef float @llvm.ceil.f32(float %i.cd)
  %i.cf = fptosi float %i.ce to i32
  %i.cg = sitofp i32 %i.cf to float
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.by, float %i.cg, float %i.ca)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit: ; preds = %bb.f, %bb.g
  %i.ci = phi float [ %i.bx, %bb.f ], [ %i.ch, %bb.g ] ; 2 uses
  %i.cj = fadd float %i.bp, %i.bq
  %i.ck = fcmp ugt float %i.ci, %i.cj
  br i1 %i.ck, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 348
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit
  %i.cm = phi float [ %i.bq, %.lr.ph ], [ %i.ea, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit ] ; 2 uses
  %i.cn = phi float [ %i.bp, %.lr.ph ], [ %i.dz, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit ]
  %storemerge752 = phi float [ %i.ci, %.lr.ph ], [ %i.dy, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit ] ; 4 uses
  %i.co = load float, ptr %i.cl, align 4, !tbaa !1161 ; 2 uses
  %i.cp = fmul float %i.cm, %i.cm
  %i.cq = fsub float %storemerge752, %i.cn        ; 2 uses
  %i.cr = fmul float %i.cq, %i.cq
  %i.cs = fsub float %i.cp, %i.cr
  %i.ct = tail call noundef float @sqrtf(float noundef %i.cs) #24 ; 2 uses
  %i.cu = fsub float %i.co, %i.ct                 ; 3 uses
  %i.cv = fadd float %i.co, %i.ct                 ; 3 uses
  %i.cw = tail call float @llvm.fabs.f32(float %i.cu)
  %i.cx = fcmp ueq float %i.cw, +inf
  br i1 %i.cx, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cy = load float, ptr %i.v, align 8, !tbaa !5231
  %i.cz = load float, ptr %i.bb, align 4, !tbaa !5232
  %i.da = fsub float %storemerge752, %i.cz
  %i.db = fmul float %i.cy, %i.da
  %i.dc = fadd float %i.db, 5.000000e-01
  %i.dd = tail call noundef float @llvm.floor.f32(float %i.dc)
  %i.de = fptoui float %i.dd to i32
  %i.df = zext i32 %i.de to i64
  %i.dg = load ptr, ptr %i.bk, align 8, !tbaa !1857
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.df ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !1161
  %i.dj = fcmp olt float %i.cu, %i.di
  br i1 %i.dj, label %bb.j, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i

bb.j:                                             ; preds = %bb.i
  store float %i.cu, ptr %i.dh, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.dk = tail call float @llvm.fabs.f32(float %i.cv)
  %i.dl = fcmp ueq float %i.dk, +inf
  br i1 %i.dl, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i
  %i.dm = load float, ptr %i.v, align 8, !tbaa !5231
  %i.dn = load float, ptr %i.bb, align 4, !tbaa !5232
  %i.do = fsub float %storemerge752, %i.dn
  %i.dp = fmul float %i.dm, %i.do
  %i.dq = fadd float %i.dp, 5.000000e-01
  %i.dr = tail call noundef float @llvm.floor.f32(float %i.dq)
  %i.ds = fptoui float %i.dr to i32
  %i.dt = zext i32 %i.ds to i64
  %i.du = load ptr, ptr %i.bm, align 8, !tbaa !1857
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dt ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !1161
  %i.dx = fcmp ogt float %i.cv, %i.dw
  br i1 %i.dx, label %bb.l, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit

bb.l:                                             ; preds = %bb.k
  store float %i.cv, ptr %i.dv, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i, %bb.k, %bb.l
  %i.dy = fadd float %storemerge752, %i.c         ; 2 uses
  %i.dz = load float, ptr %i.i, align 8, !tbaa !5215 ; 2 uses
  %i.ea = load float, ptr %i.k, align 4, !tbaa !13490 ; 2 uses
  %i.eb = fadd float %i.dz, %i.ea
  %i.ec = fcmp ugt float %i.dy, %i.eb
  br i1 %i.ec, label %.loopexit, label %bb.h, !llvm.loop !13488

bb.m:                                             ; preds = %bb.b
  %i.ed = fadd float %i.o, %i.q                   ; 2 uses
  br i1 %i.w, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ee = fadd float %i.r, -5.000000e-04
  %i.ef = tail call noundef float @llvm.ceil.f32(float %i.ee)
  %i.eg = fadd float %i.ed, 5.000000e-04
  %i.eh = tail call noundef float @llvm.floor.f32(float %i.eg)
  %i.ei = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.eh, i64 1
  %i.ek = fptosi <2 x float> %i.ej to <2 x i32>
  %i.el = sitofp <2 x i32> %i.ek to <2 x float>
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit8

bb.o:                                             ; preds = %bb.m
  %i.em = fadd nnan ninf float %i.c, -1.000000e+00
  %i.en = fmul nnan float %i.em, 5.000000e-01
  %i.eo = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %i.ed, i64 1
  %i.eq = insertelement <2 x float> poison, float %i.en, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.es = fsub <2 x float> %i.ep, %i.er
  %i.et = insertelement <2 x float> poison, float %i.c, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ev = fdiv <2 x float> %i.es, %i.eu
  %i.ew = fadd <2 x float> %i.ev, <float -5.000000e-04, float 5.000000e-04> ; 2 uses
  %i.ex = extractelement <2 x float> %i.ew, i64 0
  %i.ey = tail call noundef float @llvm.ceil.f32(float %i.ex)
  %i.ez = extractelement <2 x float> %i.ew, i64 1
  %i.fa = tail call noundef float @llvm.floor.f32(float %i.ez)
  %i.fb = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fc = insertelement <2 x float> %i.fb, float %i.fa, i64 1
  %i.fd = fptosi <2 x float> %i.fc to <2 x i32>
  %i.fe = sitofp <2 x i32> %i.fd to <2 x float>
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.fe, <2 x float> %i.er)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit8

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit8: ; preds = %bb.n, %bb.o
  %i.fg = phi <2 x float> [ %i.el, %bb.n ], [ %i.ff, %bb.o ] ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  store <2 x float> %i.fg, ptr %i.fh, align 4, !tbaa !1161
  %shift73 = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop74 = fsub <2 x float> %shift73, %i.fg
  %i.fi = extractelement <2 x float> %foldExtExtBinop74, i64 0
  %i.fj = tail call noundef float @llvm.fabs.f32(float %i.fi)
  %i.fk = fmul float %i.u, %i.fj
  %i.fl = fadd float %i.fk, 5.000000e-01
  %i.fm = tail call noundef float @llvm.floor.f32(float %i.fl)
  %i.fn = fptoui float %i.fm to i32
  %i.fo = add i32 %i.fn, 1                        ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !5224
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.fr = zext i32 %i.fo to i64
  tail call void @_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, i64 noundef %i.fr, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MAXVALUEE)
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ft = load i32, ptr %i.fp, align 4, !tbaa !5224
  %i.fu = zext i32 %i.ft to i64
  tail call void @_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.fs, i64 noundef %i.fu, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MINVALUEE)
  %i.fv = load float, ptr %i.n, align 4, !tbaa !13491 ; 3 uses
  %i.fw = load float, ptr %i.p, align 8, !tbaa !13492 ; 3 uses
  %i.fx = fsub float %i.fv, %i.fw                 ; 2 uses
  %i.fy = load i32, ptr %1, align 4, !tbaa !741   ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 1
  br i1 %i.fz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit8
  %i.ga = fadd float %i.fx, -5.000000e-04
  %i.gb = tail call noundef float @llvm.ceil.f32(float %i.ga)
  %i.gc = fptosi float %i.gb to i32
  %i.gd = sitofp i32 %i.gc to float
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit9

bb.q:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit8
  %i.ge = uitofp i32 %i.fy to float               ; 3 uses
  %i.gf = fadd nnan ninf float %i.ge, -1.000000e+00
  %i.gg = fmul nnan float %i.gf, 5.000000e-01     ; 2 uses
  %i.gh = fsub float %i.fx, %i.gg
  %i.gi = fdiv float %i.gh, %i.ge
  %i.gj = fadd float %i.gi, -5.000000e-04
  %i.gk = tail call noundef float @llvm.ceil.f32(float %i.gj)
  %i.gl = fptosi float %i.gk to i32
  %i.gm = sitofp i32 %i.gl to float
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.ge, float %i.gm, float %i.gg)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit9

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit9: ; preds = %bb.p, %bb.q
  %i.go = phi float [ %i.gd, %bb.p ], [ %i.gn, %bb.q ] ; 2 uses
  %i.gp = fadd float %i.fv, %i.fw
  %i.gq = fcmp ugt float %i.go, %i.gp
  br i1 %i.gq, label %.loopexit, label %.lr.ph54

.lr.ph54:                                         ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit9
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph54, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit11
  %i.gs = phi float [ %i.fw, %.lr.ph54 ], [ %i.ig, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit11 ] ; 2 uses
  %i.gt = phi float [ %i.fv, %.lr.ph54 ], [ %i.if, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit11 ]
  %storemerge53 = phi float [ %i.go, %.lr.ph54 ], [ %i.ie, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit11 ] ; 4 uses
  %i.gu = load float, ptr %i.gr, align 8, !tbaa !1161 ; 2 uses
  %i.gv = fmul float %i.gs, %i.gs
  %i.gw = fsub float %storemerge53, %i.gt         ; 2 uses
  %i.gx = fmul float %i.gw, %i.gw
  %i.gy = fsub float %i.gv, %i.gx
  %i.gz = tail call noundef float @sqrtf(float noundef %i.gy) #24 ; 2 uses
  %i.ha = fsub float %i.gu, %i.gz                 ; 3 uses
  %i.hb = fadd float %i.gu, %i.gz                 ; 3 uses
  %i.hc = tail call float @llvm.fabs.f32(float %i.ha)
  %i.hd = fcmp ueq float %i.hc, +inf
  br i1 %i.hd, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i10, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.he = load float, ptr %i.v, align 8, !tbaa !5231
  %i.hf = load float, ptr %i.fh, align 4, !tbaa !5232
  %i.hg = fsub float %storemerge53, %i.hf
  %i.hh = fmul float %i.he, %i.hg
  %i.hi = fadd float %i.hh, 5.000000e-01
  %i.hj = tail call noundef float @llvm.floor.f32(float %i.hi)
  %i.hk = fptoui float %i.hj to i32
  %i.hl = zext i32 %i.hk to i64
  %i.hm = load ptr, ptr %i.fq, align 8, !tbaa !1857
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hl ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !1161
  %i.hp = fcmp olt float %i.ha, %i.ho
  br i1 %i.hp, label %bb.t, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i10

bb.t:                                             ; preds = %bb.s
  store float %i.ha, ptr %i.hn, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i10

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i10: ; preds = %bb.t, %bb.s, %bb.r
  %i.hq = tail call float @llvm.fabs.f32(float %i.hb)
  %i.hr = fcmp ueq float %i.hq, +inf
  br i1 %i.hr, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit11, label %bb.u

bb.u:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i10
  %i.hs = load float, ptr %i.v, align 8, !tbaa !5231
  %i.ht = load float, ptr %i.fh, align 4, !tbaa !5232
  %i.hu = fsub float %storemerge53, %i.ht
  %i.hv = fmul float %i.hs, %i.hu
  %i.hw = fadd float %i.hv, 5.000000e-01
  %i.hx = tail call noundef float @llvm.floor.f32(float %i.hw)
  %i.hy = fptoui float %i.hx to i32
  %i.hz = zext i32 %i.hy to i64
  %i.ia = load ptr, ptr %i.fs, align 8, !tbaa !1857
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.hz ; 2 uses
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !1161
  %i.id = fcmp ogt float %i.hb, %i.ic
  br i1 %i.id, label %bb.v, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit11

bb.v:                                             ; preds = %bb.u
  store float %i.hb, ptr %i.ib, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit11

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit11: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i10, %bb.u, %bb.v
  %i.ie = fadd float %storemerge53, %i.c          ; 2 uses
  %i.if = load float, ptr %i.n, align 4, !tbaa !13491 ; 2 uses
  %i.ig = load float, ptr %i.p, align 8, !tbaa !13492 ; 2 uses
  %i.ih = fadd float %i.if, %i.ig
  %i.ii = fcmp ugt float %i.ie, %i.ih
  br i1 %i.ii, label %.loopexit, label %bb.r, !llvm.loop !13489

bb.w:                                             ; preds = %bb.a
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.in = load <4 x float>, ptr %i.ik, align 8, !tbaa !1161
  %i.io = shufflevector <4 x float> %i.in, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ip = load <2 x float>, ptr %i.il, align 4, !tbaa !1161 ; 2 uses
  %i.iq = fsub <2 x float> %i.io, %i.ip           ; 2 uses
  %i.ir = fadd <2 x float> %i.io, %i.ip           ; 2 uses
  %i.is = shufflevector <2 x float> %i.iq, <2 x float> %i.ir, <2 x i32> <i32 1, i32 2> ; 5 uses
  %i.it = shufflevector <2 x float> %i.iq, <2 x float> %i.ir, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.iu = fcmp olt <2 x float> %i.is, %i.it       ; 2 uses
  store i32 %i.b, ptr %i.ij, align 8, !tbaa !5222
  %i.iv = fdiv float 1.000000e+00, %i.c           ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.iv, ptr %i.iw, align 8, !tbaa !5231
  %i.ix = icmp eq i32 %i.b, 1
  br i1 %i.ix, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.iy = shufflevector <2 x float> %i.is, <2 x float> %i.it, <2 x i32> <i32 0, i32 3>
  %i.iz = shufflevector <2 x float> %i.it, <2 x float> %i.is, <2 x i32> <i32 0, i32 3>
  %i.ja = select <2 x i1> %i.iu, <2 x float> %i.iy, <2 x float> %i.iz
  %i.jb = fadd <2 x float> %i.ja, <float -5.000000e-04, float 5.000000e-04> ; 2 uses
  %i.jc = extractelement <2 x float> %i.jb, i64 0
  %i.jd = tail call noundef float @llvm.ceil.f32(float %i.jc)
  %i.je = extractelement <2 x float> %i.jb, i64 1
  %i.jf = tail call noundef float @llvm.floor.f32(float %i.je)
  %i.jg = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.jh = insertelement <2 x float> %i.jg, float %i.jf, i64 1
  %i.ji = fptosi <2 x float> %i.jh to <2 x i32>
  %i.jj = sitofp <2 x i32> %i.ji to <2 x float>
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit13

bb.y:                                             ; preds = %bb.w
  %i.jk = fadd nnan ninf float %i.c, -1.000000e+00
  %i.jl = fmul nnan float %i.jk, 5.000000e-01
  %i.jm = shufflevector <2 x float> %i.is, <2 x float> %i.it, <2 x i32> <i32 0, i32 3>
  %i.jn = shufflevector <2 x float> %i.it, <2 x float> %i.is, <2 x i32> <i32 0, i32 3>
  %i.jo = select <2 x i1> %i.iu, <2 x float> %i.jm, <2 x float> %i.jn
  %i.jp = insertelement <2 x float> poison, float %i.jl, i64 0
  %i.jq = shufflevector <2 x float> %i.jp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jr = fsub <2 x float> %i.jo, %i.jq
  %i.js = insertelement <2 x float> poison, float %i.c, i64 0
  %i.jt = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ju = fdiv <2 x float> %i.jr, %i.jt
  %i.jv = fadd <2 x float> %i.ju, <float -5.000000e-04, float 5.000000e-04> ; 2 uses
  %i.jw = extractelement <2 x float> %i.jv, i64 0
  %i.jx = tail call noundef float @llvm.ceil.f32(float %i.jw)
  %i.jy = extractelement <2 x float> %i.jv, i64 1
  %i.jz = tail call noundef float @llvm.floor.f32(float %i.jy)
  %i.ka = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.kb = insertelement <2 x float> %i.ka, float %i.jz, i64 1
  %i.kc = fptosi <2 x float> %i.kb to <2 x i32>
  %i.kd = sitofp <2 x i32> %i.kc to <2 x float>
  %i.ke = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jt, <2 x float> %i.kd, <2 x float> %i.jq)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit13

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit13: ; preds = %bb.x, %bb.y
  %i.kf = phi <2 x float> [ %i.jj, %bb.x ], [ %i.ke, %bb.y ] ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <2 x float> %i.kf, ptr %i.kg, align 4, !tbaa !1161
  %shift76 = shufflevector <2 x float> %i.kf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop77 = fsub <2 x float> %shift76, %i.kf
  %i.kh = extractelement <2 x float> %foldExtExtBinop77, i64 0
  %i.ki = tail call noundef float @llvm.fabs.f32(float %i.kh)
  %i.kj = fmul float %i.iv, %i.ki
  %i.kk = fadd float %i.kj, 5.000000e-01
  %i.kl = tail call noundef float @llvm.floor.f32(float %i.kk)
  %i.km = fptoui float %i.kl to i32
  %i.kn = add i32 %i.km, 1                        ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !5224
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kq = zext i32 %i.kn to i64
  tail call void @_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.kp, i64 noundef %i.kq, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MAXVALUEE)
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ks = load i32, ptr %i.ko, align 4, !tbaa !5224
  %i.kt = zext i32 %i.ks to i64
  tail call void @_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.kr, i64 noundef %i.kt, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MINVALUEE)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ku = load float, ptr %i.d, align 4, !tbaa !5218
  %i.kv = load float, ptr %i.f, align 8, !tbaa !5217
  %i.kw = fsub float %i.ku, %i.kv                 ; 2 uses
  %i.kx = fcmp uge float %i.kw, 0.000000e+00
  br i1 %i.kx, label %bb.z, label %_ZNK7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11pullyPointsERNS0_4math4Vec2IfEESM_SM_SM_.exit

bb.z:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit13
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.kz = load float, ptr %i.ky, align 8, !tbaa !13493
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.lb = load float, ptr %i.la, align 4, !tbaa !13494
  %i.lc = tail call noundef float @atan2f(float noundef %i.kz, float noundef %i.lb) #24 ; 2 uses
  %i.ld = tail call noundef float @sqrtf(float noundef %i.kw) #24
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.lf = load float, ptr %i.le, align 4, !tbaa !5216
  %i.lg = tail call noundef float @atan2f(float noundef %i.ld, float noundef %i.lf) #24 ; 2 uses
  %i.lh = fadd float %i.lc, %i.lg                 ; 2 uses
  %i.li = tail call noundef float @sinf(float noundef %i.lh) #24
  %i.lj = fsub float %i.lg, %i.lc                 ; 2 uses
  %i.lk = tail call noundef float @sinf(float noundef %i.lj) #24
  %i.ll = tail call noundef float @cosf(float noundef %i.lh) #24
  %i.lm = tail call noundef float @cosf(float noundef %i.lj) #24
  %i.ln = load <2 x float>, ptr %i.ik, align 8, !tbaa !1161 ; 2 uses
  %i.lo = insertelement <2 x float> poison, float %i.ll, i64 0
  %i.lp = insertelement <2 x float> %i.lo, float %i.li, i64 1 ; 2 uses
  %i.lq = load <2 x float>, ptr %i.im, align 4, !tbaa !1161 ; 2 uses
  %i.lr = insertelement <2 x float> poison, float %i.lm, i64 0
  %i.ls = insertelement <2 x float> %i.lr, float %i.lk, i64 1 ; 2 uses
  %i.lt = load <2 x float>, ptr %i.il, align 4, !tbaa !1161 ; 5 uses
  %i.lu = shufflevector <2 x float> %i.lt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lu, <2 x float> %i.lp, <2 x float> %i.ln)
  store <2 x float> %i.lv, ptr %2, align 8, !tbaa !1161
  %i.lw = shufflevector <2 x float> %i.lt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lw, <2 x float> %i.lp, <2 x float> %i.lq)
  store <2 x float> %i.lx, ptr %3, align 8, !tbaa !1161
  %i.ly = fneg <2 x float> %i.lt                  ; 2 uses
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> %i.lt, <2 x i32> <i32 3, i32 1>
  %i.ma = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lz, <2 x float> %i.ls, <2 x float> %i.lq)
  store <2 x float> %i.ma, ptr %5, align 8, !tbaa !1161
  %i.mb = shufflevector <2 x float> %i.ly, <2 x float> %i.lt, <2 x i32> <i32 2, i32 0>
  %i.mc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mb, <2 x float> %i.ls, <2 x float> %i.ln)
  store <2 x float> %i.mc, ptr %4, align 8, !tbaa !1161
  call void @_ZN7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE13setLineXYDataERKNS0_4math4Vec2IfEESN_RKf(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @_ZN7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE13setLineXYDataERKNS0_4math4Vec2IfEESN_RKf(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @_ZN7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE15setCircleXYDataERKNS0_4math4Vec2IfEESN_RKfb(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true)
  call void @_ZN7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE15setCircleXYDataERKNS0_4math4Vec2IfEESN_RKfb(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext false)
  br label %_ZNK7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11pullyPointsERNS0_4math4Vec2IfEESM_SM_SM_.exit

_ZNK7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11pullyPointsERNS0_4math4Vec2IfEESM_SM_SM_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKfSN_RKj.exit13, %bb.z
  call void @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData4trimEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ij)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit11, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEfRKfRKT_.exit9, %_ZNK7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11pullyPointsERNS0_4math4Vec2IfEESM_SM_SM_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE13setLineXYDataERKNS0_4math4Vec2IfEESN_RKf(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !1161 ; 7 uses
  %i.b = load float, ptr %2, align 4, !tbaa !1161 ; 4 uses
  %i.c = fsub float %i.a, %i.b
  %i.d = tail call noundef float @llvm.fabs.f32(float %i.c)
  %i.e = fcmp olt float %i.d, f0x322BCC77
  br i1 %i.e, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.f = load float, ptr %3, align 4, !tbaa !1161 ; 4 uses
  %i.g = fcmp oeq float %i.f, 1.000000e+00
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = fadd float %i.a, -5.000000e-04
  %i.i = tail call noundef float @llvm.ceil.f32(float %i.h)
  %i.j = fptosi float %i.i to i32
  %i.k = sitofp i32 %i.j to float
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilERKfSM_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = fadd float %i.f, -1.000000e+00
  %i.m = fmul float %i.l, 5.000000e-01            ; 2 uses
  %i.n = fsub float %i.a, %i.m
  %i.o = fdiv float %i.n, %i.f
  %i.p = fadd float %i.o, -5.000000e-04
  %i.q = tail call noundef float @llvm.ceil.f32(float %i.p)
  %i.r = fptosi float %i.q to i32
  %i.s = sitofp i32 %i.r to float
  %i.t = tail call float @llvm.fmuladd.f32(float %i.f, float %i.s, float %i.m)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilERKfSM_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilERKfSM_.exit: ; preds = %bb.c, %bb.d
  %i.u = phi float [ %i.k, %bb.c ], [ %i.t, %bb.d ] ; 3 uses
  %i.v = fcmp oeq float %i.a, %i.u
  br i1 %i.v, label %bb.e, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_.exit40

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilERKfSM_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !1161 ; 5 uses
  %i.y = tail call float @llvm.fabs.f32(float %i.x)
  %i.z = fcmp ueq float %i.y, +inf
  br i1 %i.z, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !5231
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !5232
  %i.ae = fsub float %i.u, %i.ad
  %i.af = fmul float %i.ab, %i.ae
  %i.ag = fadd float %i.af, 5.000000e-01
  %i.ah = tail call noundef float @llvm.floor.f32(float %i.ag)
  %i.ai = fptoui float %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = zext i32 %i.ai to i64                   ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !1857
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !1161
  %i.ao = fcmp olt float %i.x, %i.an
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store float %i.x, ptr %i.am, align 4, !tbaa !1161
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1857
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ak ; 2 uses
  %i.as = load float, ptr %i.ar, align 4, !tbaa !1161
  %i.at = fcmp ogt float %i.x, %i.as
  br i1 %i.at, label %bb.i, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_.exit

bb.i:                                             ; preds = %bb.h
  store float %i.x, ptr %i.ar, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_.exit: ; preds = %bb.e, %bb.h, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !1161 ; 5 uses
  %i.aw = tail call float @llvm.fabs.f32(float %i.av)
  %i.ax = fcmp ueq float %i.aw, +inf
  br i1 %i.ax, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_.exit40, label %bb.j

bb.j:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = load float, ptr %i.ay, align 8, !tbaa !5231
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 52
end_hunk_6
begin_hunk_7_@_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvv:bb.a

.thread.i.i.i.i:                                  ; preds = %bb.o
  %i.cb = shl nuw i64 1, %.01015.i.i.i.i
  %i.cc = and i64 %i.cb, -2
  br label %.loopexit35

bb.p:                                             ; preds = %bb.o
  %i.cd = add nuw nsw i64 %.01015.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cd, %i.bx
  br i1 %exitcond.not.i.i.i.i, label %.loopexit35, label %bb.o, !llvm.loop !291

.loopexit35:                                      ; preds = %bb.p, %.thread.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.cc, %.thread.i.i.i.i ], [ 8, %bb.p ]
  %.sroa.speculated.i.i = call noundef i64 @llvm.umin.i64(i64 %.1.i.i.i.i, i64 %i.bu)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.bg, ptr %8, align 8, !tbaa !3182
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.speculated.i.i, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !959
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.bg, ptr %i.ce, align 8, !tbaa !3182
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 4, ptr %i.cf, align 8, !tbaa !3185
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  invoke void @_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeINS1_35enumerable_thread_specific_iteratorINS1_17concurrent_vectorINS0_2d06paddedINS1_11ets_elementIN7openvdb5v13_04tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELm128EEENS1_23cache_aligned_allocatorISM_EEEESK_EEEEZNSA_5tools15ConvexVoxelizerINSA_4GridISK_EENSS_6lvlset23TaperedCapsuleVoxelizerISV_NSA_4util15NullInterrupterEEESZ_E10iterateXYZILb0EEEvvE2OpKNS1_16auto_partitionerEE3runERKSR_RS13_RS15_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %.loopexit35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.cg = load i8, ptr %7, align 8, !tbaa !5298, !range !788, !noundef !789
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.r, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ci = load ptr, ptr %i.bs, align 8, !tbaa !5299 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !743
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(1232) %i.ci) #24, !inline_history !13635
  br label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit

_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit: ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN3tbb6detail2d126enumerable_thread_specificIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread

bb.t:                                             ; preds = %bb.m
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.x

bb.u:                                             ; preds = %.loopexit35
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.cp = load i8, ptr %7, align 8, !tbaa !5298, !range !788, !noundef !789
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.v, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22

bb.v:                                             ; preds = %bb.u
  %i.cr = load ptr, ptr %i.bs, align 8, !tbaa !5299 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !743
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(1232) %i.cr) #24, !inline_history !13635
  br label %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22

_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22: ; preds = %bb.u, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.x

bb.x:                                             ; preds = %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22, %bb.t
  %.pn = phi { ptr, i32 } [ %i.co, %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit22 ], [ %i.cn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN3tbb6detail2d126enumerable_thread_specificIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ab

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !2180 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i23, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i24, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !2182
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i24

_ZNSt6vectorIiSaIiEED2Ev.exit.i24:                ; preds = %bb.y, %.critedge
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %3, align 8, !tbaa !743
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !3159 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.de, null
  br i1 %.not.i.i25, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit27, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i24
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %3, ptr %i.a, align 8, !tbaa !3161
  %i.dg = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE14internal_eraseISH_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i26 unwind label %bb.aa, !inline_history !3162 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i26: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit27

bb.aa:                                            ; preds = %bb.z
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #33, !inline_history !3162
  unreachable

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit27: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i24, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseISA_Lb1EEE.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread

_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData7isEmptyEv.exit.thread: ; preds = %bb.b, %bb.a, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E21CacheLastLeafAccessorD2Ev.exit27, %_ZZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E10iterateXYZILb0EEEvvEN2OpD2Ev.exit
  ret void

bb.ab:                                            ; preds = %bb.x, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn14 = phi { ptr, i32 } [ %lpad.loopexit.split-lp52, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %bb.x ]
  resume { ptr, i32 } %.pn14
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE14setXYRangeDataERKj(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 7 uses
  %2 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 16 ; 5 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 16 ; 5 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 16 ; 5 uses
  %5 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = load i32, ptr %1, align 4, !tbaa !741    ; 5 uses
  %i.c = uitofp i32 %i.b to double                ; 11 uses
  store double %i.c, ptr %i.a, align 8, !tbaa !1192
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !5286
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !5288
  %i.h = fcmp ugt double %i.e, %i.g
  br i1 %i.h, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !5280 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !5278 ; 2 uses
  %i.m = fsub double %i.j, %i.l                   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !5281 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !5279 ; 2 uses
  %i.r = fsub double %i.o, %i.q                   ; 3 uses
  %i.s = fcmp ugt double %i.m, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.b, ptr %i.t, align 8, !tbaa !5291
  %i.u = fdiv double 1.000000e+00, %i.c           ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store double %i.u, ptr %i.v, align 8, !tbaa !5300
  %i.w = icmp eq i32 %i.b, 1                      ; 2 uses
  br i1 %i.s, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = fadd double %i.j, %i.l                   ; 2 uses
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = fadd double %i.m, f0xBF40624DE0000000
  %i.z = tail call noundef double @llvm.ceil.f64(double %i.y)
  %i.aa = fadd double %i.x, f0x3F40624DE0000000
  %i.ab = tail call noundef double @llvm.floor.f64(double %i.aa)
  %i.ac = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.ab, i64 1
  %i.ae = fptosi <2 x double> %i.ad to <2 x i32>
  %i.af = sitofp <2 x i32> %i.ae to <2 x double>
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = fadd nnan ninf double %i.c, -1.000000e+00
  %i.ah = fmul nnan double %i.ag, 5.000000e-01
  %i.ai = insertelement <2 x double> poison, double %i.m, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.x, i64 1
  %i.ak = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.am = fsub <2 x double> %i.aj, %i.al
  %i.an = insertelement <2 x double> poison, double %i.c, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ap = fdiv <2 x double> %i.am, %i.ao          ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 0
  %i.ar = fadd double %i.aq, f0xBF40624DE0000000
  %i.as = tail call noundef double @llvm.ceil.f64(double %i.ar)
  %i.at = extractelement <2 x double> %i.ap, i64 1
  %i.au = fadd double %i.at, f0x3F40624DE0000000
  %i.av = tail call noundef double @llvm.floor.f64(double %i.au)
  %i.aw = insertelement <2 x double> poison, double %i.as, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.av, i64 1
  %i.ay = fptosi <2 x double> %i.ax to <2 x i32>
  %i.az = sitofp <2 x i32> %i.ay to <2 x double>
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.az, <2 x double> %i.al)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit: ; preds = %bb.d, %bb.e
  %i.bb = phi <2 x double> [ %i.af, %bb.d ], [ %i.ba, %bb.e ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store <2 x double> %i.bb, ptr %i.bc, align 8, !tbaa !1192
  %shift = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.bb
  %i.bd = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.be = tail call noundef double @llvm.fabs.f64(double %i.bd)
  %i.bf = fmul double %i.u, %i.be
  %i.bg = fadd double %i.bf, 5.000000e-01
  %i.bh = tail call noundef double @llvm.floor.f64(double %i.bg)
  %i.bi = fptoui double %i.bh to i32
  %i.bj = add i32 %i.bi, 1                        ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !5293
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bm = zext i32 %i.bj to i64
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(8) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MAXVALUEE)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bo = load i32, ptr %i.bk, align 4, !tbaa !5293
  %i.bp = zext i32 %i.bo to i64
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(8) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MINVALUEE)
  %i.bq = load double, ptr %i.i, align 8, !tbaa !5280 ; 3 uses
  %i.br = load double, ptr %i.k, align 8, !tbaa !5278 ; 3 uses
  %i.bs = fsub double %i.bq, %i.br                ; 2 uses
  %i.bt = load i32, ptr %1, align 4, !tbaa !741   ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit
  %i.bv = fadd double %i.bs, f0xBF40624DE0000000
  %i.bw = tail call noundef double @llvm.ceil.f64(double %i.bv)
  %i.bx = fptosi double %i.bw to i32
  %i.by = sitofp i32 %i.bx to double
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit
  %i.bz = uitofp i32 %i.bt to double              ; 3 uses
  %i.ca = fadd nnan ninf double %i.bz, -1.000000e+00
  %i.cb = fmul nnan double %i.ca, 5.000000e-01    ; 2 uses
  %i.cc = fsub double %i.bs, %i.cb
  %i.cd = fdiv double %i.cc, %i.bz
  %i.ce = fadd double %i.cd, f0xBF40624DE0000000
  %i.cf = tail call noundef double @llvm.ceil.f64(double %i.ce)
  %i.cg = fptosi double %i.cf to i32
  %i.ch = sitofp i32 %i.cg to double
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.ch, double %i.cb)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit: ; preds = %bb.f, %bb.g
  %i.cj = phi double [ %i.by, %bb.f ], [ %i.ci, %bb.g ] ; 2 uses
  %i.ck = fadd double %i.bq, %i.br
  %i.cl = fcmp ugt double %i.cj, %i.ck
  br i1 %i.cl, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 504
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit
  %i.cn = phi double [ %i.br, %.lr.ph ], [ %i.eb, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit ] ; 2 uses
  %i.co = phi double [ %i.bq, %.lr.ph ], [ %i.ea, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit ]
  %storemerge752 = phi double [ %i.cj, %.lr.ph ], [ %i.dz, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit ] ; 4 uses
  %i.cp = load double, ptr %i.cm, align 8, !tbaa !1192 ; 2 uses
  %i.cq = fmul double %i.cn, %i.cn
  %i.cr = fsub double %storemerge752, %i.co       ; 2 uses
  %i.cs = fmul double %i.cr, %i.cr
  %i.ct = fsub double %i.cq, %i.cs
  %i.cu = tail call noundef double @sqrt(double noundef %i.ct) #24 ; 2 uses
  %i.cv = fsub double %i.cp, %i.cu                ; 3 uses
  %i.cw = fadd double %i.cp, %i.cu                ; 3 uses
  %i.cx = tail call double @llvm.fabs.f64(double %i.cv)
  %i.cy = fcmp ueq double %i.cx, +inf
  br i1 %i.cy, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cz = load double, ptr %i.v, align 8, !tbaa !5300
  %i.da = load double, ptr %i.bc, align 8, !tbaa !5301
  %i.db = fsub double %storemerge752, %i.da
  %i.dc = fmul double %i.cz, %i.db
  %i.dd = fadd double %i.dc, 5.000000e-01
  %i.de = tail call noundef double @llvm.floor.f64(double %i.dd)
  %i.df = fptoui double %i.de to i32
  %i.dg = zext i32 %i.df to i64
  %i.dh = load ptr, ptr %i.bl, align 8, !tbaa !3116
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dg ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !1192
  %i.dk = fcmp olt double %i.cv, %i.dj
  br i1 %i.dk, label %bb.j, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i

bb.j:                                             ; preds = %bb.i
  store double %i.cv, ptr %i.di, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.dl = tail call double @llvm.fabs.f64(double %i.cw)
  %i.dm = fcmp ueq double %i.dl, +inf
  br i1 %i.dm, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i
  %i.dn = load double, ptr %i.v, align 8, !tbaa !5300
  %i.do = load double, ptr %i.bc, align 8, !tbaa !5301
  %i.dp = fsub double %storemerge752, %i.do
  %i.dq = fmul double %i.dn, %i.dp
  %i.dr = fadd double %i.dq, 5.000000e-01
  %i.ds = tail call noundef double @llvm.floor.f64(double %i.dr)
  %i.dt = fptoui double %i.ds to i32
  %i.du = zext i32 %i.dt to i64
  %i.dv = load ptr, ptr %i.bn, align 8, !tbaa !3116
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.du ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !1192
  %i.dy = fcmp ogt double %i.cw, %i.dx
  br i1 %i.dy, label %bb.l, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit

bb.l:                                             ; preds = %bb.k
  store double %i.cw, ptr %i.dw, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i, %bb.k, %bb.l
  %i.dz = fadd double %storemerge752, %i.c        ; 2 uses
  %i.ea = load double, ptr %i.i, align 8, !tbaa !5280 ; 2 uses
  %i.eb = load double, ptr %i.k, align 8, !tbaa !5278 ; 2 uses
  %i.ec = fadd double %i.ea, %i.eb
  %i.ed = fcmp ugt double %i.dz, %i.ec
  br i1 %i.ed, label %.loopexit, label %bb.h, !llvm.loop !13637

bb.m:                                             ; preds = %bb.b
  %i.ee = fadd double %i.o, %i.q                  ; 2 uses
  br i1 %i.w, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ef = fadd double %i.r, f0xBF40624DE0000000
  %i.eg = tail call noundef double @llvm.ceil.f64(double %i.ef)
  %i.eh = fadd double %i.ee, f0x3F40624DE0000000
  %i.ei = tail call noundef double @llvm.floor.f64(double %i.eh)
  %i.ej = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.ei, i64 1
  %i.el = fptosi <2 x double> %i.ek to <2 x i32>
  %i.em = sitofp <2 x i32> %i.el to <2 x double>
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit8

bb.o:                                             ; preds = %bb.m
  %i.en = fadd nnan ninf double %i.c, -1.000000e+00
  %i.eo = fmul nnan double %i.en, 5.000000e-01
  %i.ep = insertelement <2 x double> poison, double %i.r, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.ee, i64 1
  %i.er = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.et = fsub <2 x double> %i.eq, %i.es
  %i.eu = insertelement <2 x double> poison, double %i.c, i64 0
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ew = fdiv <2 x double> %i.et, %i.ev          ; 2 uses
  %i.ex = extractelement <2 x double> %i.ew, i64 0
  %i.ey = fadd double %i.ex, f0xBF40624DE0000000
  %i.ez = tail call noundef double @llvm.ceil.f64(double %i.ey)
  %i.fa = extractelement <2 x double> %i.ew, i64 1
  %i.fb = fadd double %i.fa, f0x3F40624DE0000000
  %i.fc = tail call noundef double @llvm.floor.f64(double %i.fb)
  %i.fd = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %i.fc, i64 1
  %i.ff = fptosi <2 x double> %i.fe to <2 x i32>
  %i.fg = sitofp <2 x i32> %i.ff to <2 x double>
  %i.fh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ev, <2 x double> %i.fg, <2 x double> %i.es)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit8

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit8: ; preds = %bb.n, %bb.o
  %i.fi = phi <2 x double> [ %i.em, %bb.n ], [ %i.fh, %bb.o ] ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store <2 x double> %i.fi, ptr %i.fj, align 8, !tbaa !1192
  %shift73 = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop74 = fsub <2 x double> %shift73, %i.fi
  %i.fk = extractelement <2 x double> %foldExtExtBinop74, i64 0
  %i.fl = tail call noundef double @llvm.fabs.f64(double %i.fk)
  %i.fm = fmul double %i.u, %i.fl
  %i.fn = fadd double %i.fm, 5.000000e-01
  %i.fo = tail call noundef double @llvm.floor.f64(double %i.fn)
  %i.fp = fptoui double %i.fo to i32
  %i.fq = add i32 %i.fp, 1                        ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !5293
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ft = zext i32 %i.fq to i64
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.fs, i64 noundef %i.ft, ptr noundef nonnull align 8 dereferenceable(8) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MAXVALUEE)
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.fv = load i32, ptr %i.fr, align 4, !tbaa !5293
  %i.fw = zext i32 %i.fv to i64
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, i64 noundef %i.fw, ptr noundef nonnull align 8 dereferenceable(8) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MINVALUEE)
  %i.fx = load double, ptr %i.n, align 8, !tbaa !5281 ; 3 uses
  %i.fy = load double, ptr %i.p, align 8, !tbaa !5279 ; 3 uses
  %i.fz = fsub double %i.fx, %i.fy                ; 2 uses
  %i.ga = load i32, ptr %1, align 4, !tbaa !741   ; 2 uses
  %i.gb = icmp eq i32 %i.ga, 1
  br i1 %i.gb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit8
  %i.gc = fadd double %i.fz, f0xBF40624DE0000000
  %i.gd = tail call noundef double @llvm.ceil.f64(double %i.gc)
  %i.ge = fptosi double %i.gd to i32
  %i.gf = sitofp i32 %i.ge to double
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit9

bb.q:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit8
  %i.gg = uitofp i32 %i.ga to double              ; 3 uses
  %i.gh = fadd nnan ninf double %i.gg, -1.000000e+00
  %i.gi = fmul nnan double %i.gh, 5.000000e-01    ; 2 uses
  %i.gj = fsub double %i.fz, %i.gi
  %i.gk = fdiv double %i.gj, %i.gg
  %i.gl = fadd double %i.gk, f0xBF40624DE0000000
  %i.gm = tail call noundef double @llvm.ceil.f64(double %i.gl)
  %i.gn = fptosi double %i.gm to i32
  %i.go = sitofp i32 %i.gn to double
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.gg, double %i.go, double %i.gi)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit9

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit9: ; preds = %bb.p, %bb.q
  %i.gq = phi double [ %i.gf, %bb.p ], [ %i.gp, %bb.q ] ; 2 uses
  %i.gr = fadd double %i.fx, %i.fy
  %i.gs = fcmp ugt double %i.gq, %i.gr
  br i1 %i.gs, label %.loopexit, label %.lr.ph54

.lr.ph54:                                         ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit9
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 528
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph54, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit11
  %i.gu = phi double [ %i.fy, %.lr.ph54 ], [ %i.ii, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit11 ] ; 2 uses
  %i.gv = phi double [ %i.fx, %.lr.ph54 ], [ %i.ih, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit11 ]
  %storemerge53 = phi double [ %i.gq, %.lr.ph54 ], [ %i.ig, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit11 ] ; 4 uses
  %i.gw = load double, ptr %i.gt, align 8, !tbaa !1192 ; 2 uses
  %i.gx = fmul double %i.gu, %i.gu
  %i.gy = fsub double %storemerge53, %i.gv        ; 2 uses
  %i.gz = fmul double %i.gy, %i.gy
  %i.ha = fsub double %i.gx, %i.gz
  %i.hb = tail call noundef double @sqrt(double noundef %i.ha) #24 ; 2 uses
  %i.hc = fsub double %i.gw, %i.hb                ; 3 uses
  %i.hd = fadd double %i.gw, %i.hb                ; 3 uses
  %i.he = tail call double @llvm.fabs.f64(double %i.hc)
  %i.hf = fcmp ueq double %i.he, +inf
  br i1 %i.hf, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i10, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hg = load double, ptr %i.v, align 8, !tbaa !5300
  %i.hh = load double, ptr %i.fj, align 8, !tbaa !5301
  %i.hi = fsub double %storemerge53, %i.hh
  %i.hj = fmul double %i.hg, %i.hi
  %i.hk = fadd double %i.hj, 5.000000e-01
  %i.hl = tail call noundef double @llvm.floor.f64(double %i.hk)
  %i.hm = fptoui double %i.hl to i32
  %i.hn = zext i32 %i.hm to i64
  %i.ho = load ptr, ptr %i.fs, align 8, !tbaa !3116
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hn ; 2 uses
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !1192
  %i.hr = fcmp olt double %i.hc, %i.hq
  br i1 %i.hr, label %bb.t, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i10

bb.t:                                             ; preds = %bb.s
  store double %i.hc, ptr %i.hp, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i10

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i10: ; preds = %bb.t, %bb.s, %bb.r
  %i.hs = tail call double @llvm.fabs.f64(double %i.hd)
  %i.ht = fcmp ueq double %i.hs, +inf
  br i1 %i.ht, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit11, label %bb.u

bb.u:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i10
  %i.hu = load double, ptr %i.v, align 8, !tbaa !5300
  %i.hv = load double, ptr %i.fj, align 8, !tbaa !5301
  %i.hw = fsub double %storemerge53, %i.hv
  %i.hx = fmul double %i.hu, %i.hw
  %i.hy = fadd double %i.hx, 5.000000e-01
  %i.hz = tail call noundef double @llvm.floor.f64(double %i.hy)
  %i.ia = fptoui double %i.hz to i32
  %i.ib = zext i32 %i.ia to i64
  %i.ic = load ptr, ptr %i.fu, align 8, !tbaa !3116
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.ib ; 2 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !1192
  %i.if = fcmp ogt double %i.hd, %i.ie
  br i1 %i.if, label %bb.v, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit11

bb.v:                                             ; preds = %bb.u
  store double %i.hd, ptr %i.id, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit11

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit11: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i10, %bb.u, %bb.v
  %i.ig = fadd double %storemerge53, %i.c         ; 2 uses
  %i.ih = load double, ptr %i.n, align 8, !tbaa !5281 ; 2 uses
  %i.ii = load double, ptr %i.p, align 8, !tbaa !5279 ; 2 uses
  %i.ij = fadd double %i.ih, %i.ii
  %i.ik = fcmp ugt double %i.ig, %i.ij
  br i1 %i.ik, label %.loopexit, label %bb.r, !llvm.loop !13638

bb.w:                                             ; preds = %bb.a
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.in = load <2 x double>, ptr %i.im, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !5281
  %i.ir = load <2 x double>, ptr %i.io, align 8, !tbaa !1192 ; 2 uses
  %i.is = insertelement <2 x double> %i.in, double %i.iq, i64 1 ; 2 uses
  %i.it = fsub <2 x double> %i.is, %i.ir          ; 6 uses
  %i.iu = fadd <2 x double> %i.is, %i.ir          ; 6 uses
  %i.iv = shufflevector <2 x double> %i.it, <2 x double> %i.iu, <2 x i32> <i32 1, i32 2>
  %i.iw = shufflevector <2 x double> %i.it, <2 x double> %i.iu, <2 x i32> <i32 0, i32 3>
  %i.ix = fcmp olt <2 x double> %i.iv, %i.iw      ; 2 uses
  store i32 %i.b, ptr %i.il, align 8, !tbaa !5291
  %i.iy = fdiv double 1.000000e+00, %i.c          ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.iy, ptr %i.iz, align 8, !tbaa !5300
  %i.ja = icmp eq i32 %i.b, 1
  br i1 %i.ja, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.jb = shufflevector <2 x double> %i.it, <2 x double> %i.iu, <2 x i32> <i32 1, i32 3>
  %i.jc = shufflevector <2 x double> %i.it, <2 x double> %i.iu, <2 x i32> <i32 0, i32 2>
  %i.jd = select <2 x i1> %i.ix, <2 x double> %i.jb, <2 x double> %i.jc
  %i.je = fadd <2 x double> %i.jd, <double f0xBF40624DE0000000, double f0x3F40624DE0000000> ; 2 uses
  %i.jf = extractelement <2 x double> %i.je, i64 0
  %i.jg = tail call noundef double @llvm.ceil.f64(double %i.jf)
  %i.jh = extractelement <2 x double> %i.je, i64 1
  %i.ji = tail call noundef double @llvm.floor.f64(double %i.jh)
  %i.jj = insertelement <2 x double> poison, double %i.jg, i64 0
  %i.jk = insertelement <2 x double> %i.jj, double %i.ji, i64 1
  %i.jl = fptosi <2 x double> %i.jk to <2 x i32>
  %i.jm = sitofp <2 x i32> %i.jl to <2 x double>
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit13

bb.y:                                             ; preds = %bb.w
  %i.jn = fadd nnan ninf double %i.c, -1.000000e+00
  %i.jo = fmul nnan double %i.jn, 5.000000e-01
  %i.jp = shufflevector <2 x double> %i.it, <2 x double> %i.iu, <2 x i32> <i32 1, i32 3>
  %i.jq = shufflevector <2 x double> %i.it, <2 x double> %i.iu, <2 x i32> <i32 0, i32 2>
  %i.jr = select <2 x i1> %i.ix, <2 x double> %i.jp, <2 x double> %i.jq
  %i.js = insertelement <2 x double> poison, double %i.jo, i64 0
  %i.jt = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ju = fsub <2 x double> %i.jr, %i.jt
  %i.jv = insertelement <2 x double> poison, double %i.c, i64 0
  %i.jw = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jx = fdiv <2 x double> %i.ju, %i.jw          ; 2 uses
  %i.jy = extractelement <2 x double> %i.jx, i64 0
  %i.jz = fadd double %i.jy, f0xBF40624DE0000000
  %i.ka = tail call noundef double @llvm.ceil.f64(double %i.jz)
  %i.kb = extractelement <2 x double> %i.jx, i64 1
  %i.kc = fadd double %i.kb, f0x3F40624DE0000000
  %i.kd = tail call noundef double @llvm.floor.f64(double %i.kc)
  %i.ke = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.kf = insertelement <2 x double> %i.ke, double %i.kd, i64 1
  %i.kg = fptosi <2 x double> %i.kf to <2 x i32>
  %i.kh = sitofp <2 x i32> %i.kg to <2 x double>
  %i.ki = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> %i.kh, <2 x double> %i.jt)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit13

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit13: ; preds = %bb.x, %bb.y
  %i.kj = phi <2 x double> [ %i.jm, %bb.x ], [ %i.ki, %bb.y ] ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x double> %i.kj, ptr %i.kk, align 8, !tbaa !1192
  %shift76 = shufflevector <2 x double> %i.kj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop77 = fsub <2 x double> %shift76, %i.kj
  %i.kl = extractelement <2 x double> %foldExtExtBinop77, i64 0
  %i.km = tail call noundef double @llvm.fabs.f64(double %i.kl)
  %i.kn = fmul double %i.iy, %i.km
  %i.ko = fadd double %i.kn, 5.000000e-01
  %i.kp = tail call noundef double @llvm.floor.f64(double %i.ko)
  %i.kq = fptoui double %i.kp to i32
  %i.kr = add i32 %i.kq, 1                        ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !5293
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ku = zext i32 %i.kr to i64
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.kt, i64 noundef %i.ku, ptr noundef nonnull align 8 dereferenceable(8) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MAXVALUEE)
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.kw = load i32, ptr %i.ks, align 4, !tbaa !5293
  %i.kx = zext i32 %i.kw to i64
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.kv, i64 noundef %i.kx, ptr noundef nonnull align 8 dereferenceable(8) @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData8MINVALUEE)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ky = load double, ptr %i.d, align 8, !tbaa !5286
  %i.kz = load double, ptr %i.f, align 8, !tbaa !5288
  %i.la = fsub double %i.ky, %i.kz                ; 2 uses
  %i.lb = fcmp uge double %i.la, 0.000000e+00
  br i1 %i.lb, label %bb.z, label %_ZNK7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11pullyPointsERNS0_4math4Vec2IdEESM_SM_SM_.exit

bb.z:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit13
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !5283
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.lf = load double, ptr %i.le, align 8, !tbaa !5282
  %i.lg = tail call double @atan2(double noundef %i.ld, double noundef %i.lf) #24 ; 2 uses
  %i.lh = tail call noundef double @sqrt(double noundef %i.la) #24
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.lj = load double, ptr %i.li, align 8, !tbaa !5287
  %i.lk = tail call double @atan2(double noundef %i.lh, double noundef %i.lj) #24 ; 2 uses
  %i.ll = fadd double %i.lg, %i.lk                ; 2 uses
  %i.lm = tail call noundef double @sin(double noundef %i.ll) #24
  %i.ln = fsub double %i.lk, %i.lg                ; 2 uses
  %i.lo = tail call noundef double @sin(double noundef %i.ln) #24
  %i.lp = tail call noundef double @cos(double noundef %i.ll) #24
  %i.lq = tail call noundef double @cos(double noundef %i.ln) #24
  %i.lr = load <2 x double>, ptr %i.im, align 8, !tbaa !1192 ; 2 uses
  %i.ls = insertelement <2 x double> poison, double %i.lp, i64 0
  %i.lt = insertelement <2 x double> %i.ls, double %i.lm, i64 1 ; 2 uses
  %i.lu = load <2 x double>, ptr %i.ip, align 8, !tbaa !1192 ; 2 uses
  %i.lv = insertelement <2 x double> poison, double %i.lq, i64 0
  %i.lw = insertelement <2 x double> %i.lv, double %i.lo, i64 1 ; 2 uses
  %i.lx = load <2 x double>, ptr %i.io, align 8, !tbaa !1192 ; 5 uses
  %i.ly = shufflevector <2 x double> %i.lx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> %i.lt, <2 x double> %i.lr)
  store <2 x double> %i.lz, ptr %2, align 16, !tbaa !1192
  %i.ma = shufflevector <2 x double> %i.lx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.mb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.lt, <2 x double> %i.lu)
  store <2 x double> %i.mb, ptr %3, align 16, !tbaa !1192
  %i.mc = fneg <2 x double> %i.lx                 ; 2 uses
  %i.md = shufflevector <2 x double> %i.mc, <2 x double> %i.lx, <2 x i32> <i32 3, i32 1>
  %i.me = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> %i.lw, <2 x double> %i.lu)
  store <2 x double> %i.me, ptr %5, align 16, !tbaa !1192
  %i.mf = shufflevector <2 x double> %i.mc, <2 x double> %i.lx, <2 x i32> <i32 2, i32 0>
  %i.mg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mf, <2 x double> %i.lw, <2 x double> %i.lr)
  store <2 x double> %i.mg, ptr %4, align 16, !tbaa !1192
  call void @_ZN7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE13setLineXYDataERKNS0_4math4Vec2IdEESN_RKd(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZN7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE13setLineXYDataERKNS0_4math4Vec2IdEESN_RKd(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZN7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE15setCircleXYDataERKNS0_4math4Vec2IdEESN_RKdb(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext true)
  call void @_ZN7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE15setCircleXYDataERKNS0_4math4Vec2IdEESN_RKdb(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  br label %_ZNK7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11pullyPointsERNS0_4math4Vec2IdEESM_SM_SM_.exit

_ZNK7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11pullyPointsERNS0_4math4Vec2IdEESM_SM_SM_.exit: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5resetERKdSN_RKj.exit13, %bb.z
  call void @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData4trimEv(ptr noundef nonnull align 8 dereferenceable(80) %i.il)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit11, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilIjEEdRKdRKT_.exit9, %_ZNK7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11pullyPointsERNS0_4math4Vec2IdEESM_SM_SM_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE13setLineXYDataERKNS0_4math4Vec2IdEESN_RKd(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !1192 ; 7 uses
  %i.b = load double, ptr %2, align 8, !tbaa !1192 ; 4 uses
  %i.c = fsub double %i.a, %i.b
  %i.d = tail call noundef double @llvm.fabs.f64(double %i.c)
  %i.e = fcmp olt double %i.d, 1.000000e-15
  br i1 %i.e, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.f = load double, ptr %3, align 8, !tbaa !1192 ; 4 uses
  %i.g = fcmp oeq double %i.f, 1.000000e+00
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = fadd double %i.a, f0xBF40624DE0000000
  %i.i = tail call noundef double @llvm.ceil.f64(double %i.h)
  %i.j = fptosi double %i.i to i32
  %i.k = sitofp i32 %i.j to double
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilERKdSM_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = fadd double %i.f, -1.000000e+00
  %i.m = fmul double %i.l, 5.000000e-01           ; 2 uses
  %i.n = fsub double %i.a, %i.m
  %i.o = fdiv double %i.n, %i.f
  %i.p = fadd double %i.o, f0xBF40624DE0000000
  %i.q = tail call noundef double @llvm.ceil.f64(double %i.p)
  %i.r = fptosi double %i.q to i32
  %i.s = sitofp i32 %i.r to double
  %i.t = tail call double @llvm.fmuladd.f64(double %i.f, double %i.s, double %i.m)
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilERKdSM_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilERKdSM_.exit: ; preds = %bb.c, %bb.d
  %i.u = phi double [ %i.k, %bb.c ], [ %i.t, %bb.d ] ; 3 uses
  %i.v = fcmp oeq double %i.a, %i.u
  br i1 %i.v, label %bb.e, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_.exit40

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileCeilERKdSM_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !1192 ; 5 uses
  %i.y = tail call double @llvm.fabs.f64(double %i.x)
  %i.z = fcmp ueq double %i.y, +inf
  br i1 %i.z, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !5300
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !5301
  %i.ae = fsub double %i.u, %i.ad
  %i.af = fmul double %i.ab, %i.ae
  %i.ag = fadd double %i.af, 5.000000e-01
  %i.ah = tail call noundef double @llvm.floor.f64(double %i.ag)
  %i.ai = fptoui double %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = zext i32 %i.ai to i64                   ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !3116
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !1192
  %i.ao = fcmp olt double %i.x, %i.an
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double %i.x, ptr %i.am, align 8, !tbaa !1192
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !3116
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ak ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !1192
  %i.at = fcmp ogt double %i.x, %i.as
  br i1 %i.at, label %bb.i, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_.exit

bb.i:                                             ; preds = %bb.h
  store double %i.x, ptr %i.ar, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_.exit: ; preds = %bb.e, %bb.h, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !1192 ; 5 uses
  %i.aw = tail call double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp ueq double %i.aw, +inf
  br i1 %i.ax, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_.exit40, label %bb.j

bb.j:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset23TaperedCapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = load double, ptr %i.ay, align 8, !tbaa !5300
end_hunk_7
