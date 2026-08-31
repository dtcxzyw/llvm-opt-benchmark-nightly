Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetMeasure?download=true
inline.NumInlined: 4217
inline.NumDeleted: 1899
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11MeasureAreaC2EPSH_:bb.a
_ZN7openvdb5v13_04math11BaseStencilINS1_11GradStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit: ; preds = %bb.s, %bb.t
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math11GradStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEC2ERKSE_(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 5 uses
  store ptr %1, ptr %0, align 8, !tbaa !182
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !183
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.a, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 9223372034707292159, ptr %i.f, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !76
  %.06.i.i.i.i.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i, align 4, !tbaa !76
  %.06.i.i.i.i.ptr.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i, align 8, !tbaa !76
  store ptr null, ptr %i.e, align 8, !tbaa !184
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %i.g, align 8, !tbaa !185
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = tail call noalias noundef nonnull dereferenceable(28) ptr @_Znwm(i64 noundef 28) #26 ; 3 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 28 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.k, i8 0, i64 28, i1 false)
  store ptr %i.l, ptr %i.n, align 8, !tbaa !186
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 9223372034707292159, ptr %i.o, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 2147483647, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61, !noalias !187
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66, !noalias !190 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56, !noalias !190
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !noalias !190
  invoke void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %_ZNK7openvdb5v13_08GridBase9voxelSizeEv.exit unwind label %bb.b, !inline_history !193

_ZNK7openvdb5v13_08GridBase9voxelSizeEv.exit:     ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.w = load double, ptr %2, align 8, !tbaa !86
  %i.x = fdiv double 5.000000e-01, %i.w
  %i.y = fptrunc double %i.x to float             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  store float %i.y, ptr %i.v, align 4, !tbaa !194
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aa = fpext float %i.y to double              ; 2 uses
  %i.ab = fmul double %i.aa, 4.000000e+00
  %i.ac = fmul double %i.ab, %i.aa
  %i.ad = fptrunc double %i.ac to float
  store float %i.ad, ptr %i.z, align 8, !tbaa !195
  ret void

bb.b:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !31  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04math11BaseStencilINS1_11GradStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #24
  br label %_ZN7openvdb5v13_04math11BaseStencilINS1_11GradStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit

_ZN7openvdb5v13_04math11BaseStencilINS1_11GradStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZNK7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11MeasureAreaclERKNS4_11LeafManagerIKSD_E9LeafRangeE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %7 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %8 = alloca %"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit, label %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i

_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i: ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef -1), !inline_history !196
  br i1 %i.g, label %bb.b, label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit

bb.b:                                             ; preds = %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i
  %i.h = tail call noundef ptr @_ZN3tbb6detail2r115current_contextEv() ; 4 uses
  %.not.i2.i = icmp eq ptr %i.h, null
  br i1 %.not.i2.i, label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %i.j = load atomic i8, ptr %i.i monotonic, align 1
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %bb.d, label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76
  br label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i

_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.h, %bb.c ]
  %i.n = tail call noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i) ; 0 uses
  br label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit

_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit: ; preds = %bb.a, %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i, %bb.b, %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i
  %i.o = load ptr, ptr %0, align 8, !tbaa !124    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load double, ptr %i.p, align 8, !tbaa !87
  %i.r = fdiv double 1.000000e+00, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !115
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !157  ; 2 uses
  %i.y = load i64, ptr %1, align 8, !tbaa !155
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %.lr.ph273, label %._crit_edge274

.lr.ph273:                                        ; preds = %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  %.sroa.220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 18 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 18 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 18 uses
  %.sroa.216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.e

._crit_edge274:                                   ; preds = %._crit_edge, %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  ret void

bb.e:                                             ; preds = %.lr.ph273, %._crit_edge
  %.sroa.5.0272 = phi i64 [ %i.x, %.lr.ph273 ], [ %i.bj, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.aw = load ptr, ptr %i.aa, align 8, !tbaa !197, !nonnull !30, !align !198
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !199
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.5.0272
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !200
  call void @_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %i.ba)
  %i.bb = load i32, ptr %i.ab, align 8, !tbaa !201 ; 2 uses
  %.not268 = icmp eq i32 %i.bb, 512
  br i1 %.not268, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader.a, %.lr.ph.i.i.i.i.a, %bb.e
  %9 = phi <2 x double> [ zeroinitializer, %bb.e ], [ %i.akw, %.lr.ph.i.i.i.i.a ], [ %i.akw, %.lr.ph.i.i.i.i.preheader.a ], [ %i.akw, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ], [ %i.akw, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.bc = load ptr, ptr %0, align 8, !tbaa !124
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !60
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.5.0272 ; 2 uses
  %i.bg = extractelement <2 x double> %9, i64 1
  store double %i.bg, ptr %i.bf, align 8, !tbaa !86
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.v
  %i.bi = extractelement <2 x double> %9, i64 0
  store double %i.bi, ptr %i.bh, align 8, !tbaa !86
  %i.bj = add nuw i64 %.sroa.5.0272, 1            ; 2 uses
  %i.bk = load i64, ptr %1, align 8, !tbaa !155
  %i.bl = icmp ult i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.e, label %._crit_edge274, !llvm.loop !204

.lr.ph:                                           ; preds = %bb.e, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit
  %i.bm = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ], [ %i.bb, %bb.e ]
  %i.bn = phi <2 x double> [ %i.akw, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ], [ zeroinitializer, %bb.e ] ; 3 uses
  %i.bo = load ptr, ptr %i.ac, align 8, !tbaa !206
  %i.bp = zext i32 %i.bm to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !211
  %i.bs = fpext float %i.br to double
  %i.bt = fmul double %i.r, %i.bs                 ; 2 uses
  %i.bu = call noundef double @llvm.fabs.f64(double %i.bt)
  %i.bv = fcmp ogt double %i.bu, 1.500000e+00
  br i1 %i.bv, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit

_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit: ; preds = %.lr.ph
  %i.bw = fmul double %i.bt, f0x4000C152382D7365
  %i.bx = call double @cos(double noundef %i.bw) #21
  %i.by = fadd double %i.bx, 1.000000e+00
  %i.bz = fmul double %i.by, f0x3FD5555555555555  ; 2 uses
  %i.ca = fcmp ogt double %i.bz, 0.000000e+00
  br i1 %i.ca, label %bb.f, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread

bb.f:                                             ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit
  %i.cb = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %8) ; 3 uses
  %i.cc = load i32, ptr %i.ab, align 8, !tbaa !201 ; 4 uses
  %i.cd = lshr i32 %i.cc, 6
  %i.ce = lshr i32 %i.cc, 3
  %i.cf = and i32 %i.ce, 7
  %i.cg = and i32 %i.cc, 7
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !212
  %i.cj = add nsw i32 %i.ci, %i.cd                ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 84
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !212
  %i.cm = add nsw i32 %i.cl, %i.cf                ; 11 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 88
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !212
  %i.cp = add nsw i32 %i.co, %i.cg                ; 12 uses
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.cm to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i9.i.i.i = zext i32 %i.cj to i64
  %.sroa.0.0.insert.insert.i10.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i9.i.i.i
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i, ptr %i.ad, align 8
  store i32 %i.cp, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !76
  %i.cq = load ptr, ptr %i.ac, align 8, !tbaa !206
  %i.cr = zext i32 %i.cc to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !211
  %i.cu = load ptr, ptr %i.ae, align 8, !tbaa !31
  store float %i.ct, ptr %i.cu, align 4, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.cv = add nsw i32 %i.cj, -1                   ; 8 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.cv to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %2, align 8
  store i32 %i.cp, ptr %.sroa.220.0..sroa_idx.i, align 8
  %i.cw = and i32 %i.cv, -8
  %i.cx = load i32, ptr %i.ah, align 8, !tbaa !212
  %i.cy = icmp eq i32 %i.cw, %i.cx
  br i1 %i.cy, label %bb.g, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i89

bb.g:                                             ; preds = %bb.f
  %i.cz = and i32 %i.cm, -8
  %i.da = load i32, ptr %i.ai, align 4, !tbaa !212
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i102, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i89

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i102: ; preds = %bb.g
  %i.dc = and i32 %i.cp, -8
  %i.dd = load i32, ptr %i.aj, align 8, !tbaa !212
  %i.de = icmp eq i32 %i.dc, %i.dd
  br i1 %i.de, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i103, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i89

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i103: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i102
  %i.df = load ptr, ptr %i.ak, align 8, !tbaa !184 ; 2 uses
  %i.dg = shl i32 %i.cv, 6
  %i.dh = and i32 %i.dg, 448
  %i.di = shl i32 %i.cm, 3
  %i.dj = and i32 %i.di, 56
  %i.dk = and i32 %i.cp, 7
  %i.dl = or disjoint i32 %i.dh, %i.dk
  %i.dm = or disjoint i32 %i.dl, %i.dj
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dn
  %.not.i.not.i104 = icmp eq ptr %i.df, null
  br i1 %.not.i.not.i104, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i89, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit105

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i89: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i103, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i102, %bb.g, %bb.f
  %i.dp = and i32 %i.cv, -128                     ; 3 uses
  %i.dq = load i32, ptr %i.al, align 4, !tbaa !212
  %i.dr = icmp eq i32 %i.dp, %i.dq
  br i1 %i.dr, label %bb.h, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.thread.i90

bb.h:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i89
  %i.ds = and i32 %i.cm, -128
  %i.dt = load i32, ptr %i.am, align 8, !tbaa !212
  %i.du = icmp eq i32 %i.ds, %i.dt
  br i1 %i.du, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i100, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.thread.i90

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i100: ; preds = %bb.h
  %i.dv = and i32 %i.cp, -128
  %i.dw = load i32, ptr %i.an, align 4, !tbaa !212
  %i.dx = icmp eq i32 %i.dv, %i.dw
  br i1 %i.dx, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i101, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.thread.i90

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i101: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i100
  %i.dy = load ptr, ptr %i.at, align 8, !tbaa !213
  %i.dz = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.dy, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.af)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit105

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.thread.i90: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i100, %bb.h, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i89
  %i.ea = and i32 %i.cv, -4096                    ; 2 uses
  %i.eb = load i32, ptr %i.ao, align 8, !tbaa !212
  %i.ec = icmp eq i32 %i.ea, %i.eb
  br i1 %i.ec, label %bb.i, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm3ELm4EEET0_SM_SQ_.exit.i91

bb.i:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.thread.i90
  %i.ed = and i32 %i.cm, -4096
  %i.ee = load i32, ptr %i.ap, align 4, !tbaa !212
  %i.ef = icmp eq i32 %i.ed, %i.ee
  br i1 %i.ef, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i93, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm3ELm4EEET0_SM_SQ_.exit.i91

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i93: ; preds = %bb.i
  %i.eg = and i32 %i.cp, -4096
  %i.eh = load i32, ptr %i.aq, align 8, !tbaa !212
  %i.ei = icmp eq i32 %i.eg, %i.eh
  br i1 %i.ei, label %bb.j, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm3ELm4EEET0_SM_SQ_.exit.i91

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i93
  %i.ej = load ptr, ptr %i.as, align 8, !tbaa !214 ; 2 uses
  %i.ek = shl i32 %i.cv, 3
  %i.el = and i32 %i.ek, 31744
  %i.em = lshr i32 %i.cm, 2
  %i.en = and i32 %i.em, 992
  %i.eo = or disjoint i32 %i.en, %i.el            ; 2 uses
  %i.ep = lshr i32 %i.cp, 7
  %i.eq = and i32 %i.ep, 31
  %i.er = or disjoint i32 %i.eo, %i.eq            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 262144
  %i.et = lshr i32 %i.eo, 6
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !215
  %i.ex = and i32 %i.er, 63
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = shl nuw i64 1, %i.ey
  %i.fa = and i64 %i.ew, %i.ez
  %.not.i.i.i94 = icmp eq i64 %i.fa, 0
  %i.fb = zext nneg i32 %i.er to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.fb ; 3 uses
  br i1 %.not.i.i.i94, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit105, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !76
  %i.fe = and i32 %i.cm, -128
  %i.ff = and i32 %i.cp, -128
  %.sroa.2.0.insert.ext.i.i.i.i95 = zext i32 %i.fe to i64
  %.sroa.2.0.insert.shift.i.i.i.i96 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i95, 32
  %.sroa.0.0.insert.ext.i.i.i.i97 = zext i32 %i.dp to i64
  %.sroa.0.0.insert.insert.i.i.i.i98 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i96, %.sroa.0.0.insert.ext.i.i.i.i97
  store i64 %.sroa.0.0.insert.insert.i.i.i.i98, ptr %i.al, align 4
  store i32 %i.ff, ptr %i.an, align 4, !tbaa !76
  store ptr %i.fd, ptr %i.at, align 8, !tbaa !213
  %i.fg = load ptr, ptr %i.fc, align 8, !tbaa !76
  %i.fh = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.fg, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.af)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit105

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm3ELm4EEET0_SM_SQ_.exit.i91: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i93, %bb.i, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.thread.i90
  %i.fi = load ptr, ptr %i.ar, align 8, !tbaa !185 ; 6 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !212
  %i.fl = sub nsw i32 %i.cm, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 60
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !212
  %i.fo = sub nsw i32 %i.cp, %i.fn
  %i.fp = and i32 %i.fl, -4096                    ; 4 uses
  %i.fq = and i32 %i.fo, -4096                    ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !216 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %.not12.i.i.i.i.i228 = icmp eq ptr %i.fs, null
  br i1 %.not12.i.i.i.i.i228, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i254, label %.lr.ph.i.i.i.i.i229

.lr.ph.i.i.i.i.i229:                              ; preds = %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm3ELm4EEET0_SM_SQ_.exit.i91
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fi, i64 52
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !212
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11MeasureAreaclERKNS4_11LeafManagerIKSD_E9LeafRangeE:bb.a
  store ptr %i.agm, ptr %i.at, align 8, !tbaa !213
  %i.ago = load ptr, ptr %i.agl, align 8, !tbaa !76
  %i.agp = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.ago, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(96) %i.af)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm3ELm4EEET0_SM_SQ_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, %bb.ck, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.thread.i
  %i.agq = load ptr, ptr %i.ar, align 8, !tbaa !185 ; 6 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 56
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !212
  %i.agt = sub nsw i32 %i.aeh, %i.ags
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agq, i64 60
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !212
  %i.agw = sub nsw i32 %i.aeb, %i.agv
  %i.agx = and i32 %i.agt, -4096                  ; 4 uses
  %i.agy = and i32 %i.agw, -4096                  ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agq, i64 16
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !216 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agq, i64 8 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.aha, null
  br i1 %.not12.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm3ELm4EEET0_SM_SQ_.exit.i
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agq, i64 52
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !212
  %i.ahe = sub nsw i32 %i.aec, %i.ahd
  %i.ahf = and i32 %i.ahe, -4096                  ; 4 uses
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.aha, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ] ; 7 uses
  %.0813.i.i.i.i.i = phi ptr [ %i.ahb, %.lr.ph.i.i.i.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ]
  %i.ahg = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 32
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !212 ; 2 uses
  %i.ahi = icmp slt i32 %i.ahh, %i.ahf
  br i1 %i.ahi, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ahj = icmp sgt i32 %i.ahh, %i.ahf
  br i1 %i.ahj, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ahk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 36
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !212 ; 2 uses
  %i.ahm = icmp slt i32 %i.ahl, %i.agx
  br i1 %i.ahm, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ahn = icmp sgt i32 %i.ahl, %i.agx
  br i1 %i.ahn, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i: ; preds = %bb.cq
  %i.aho = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !212
  %i.ahq = icmp slt i32 %i.ahp, %i.agy
  br i1 %i.ahq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.cp, %bb.cn
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.cq, %bb.co
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ 16, %bb.cq ], [ 16, %bb.co ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0813.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ %.014.i.i.i.i.i, %bb.cq ], [ %.014.i.i.i.i.i, %bb.co ], [ %.014.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ] ; 7 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.ahr, align 8, !tbaa !221 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, label %bb.cn, !llvm.loop !222

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i
  %i.ahs = icmp eq ptr %.19.i.i.i.i.i, %i.ahb
  br i1 %i.ahs, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i
  %i.aht = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !212 ; 2 uses
  %i.ahv = icmp slt i32 %i.ahf, %i.ahu
  br i1 %i.ahv, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ahw = icmp sgt i32 %i.ahf, %i.ahu
  br i1 %i.ahw, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ahx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !212 ; 2 uses
  %i.ahz = icmp slt i32 %i.agx, %i.ahy
  br i1 %i.ahz, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aia = icmp sgt i32 %i.agx, %i.ahy
  br i1 %i.aia, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.cu
  %i.aib = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !212
  %i.aid = icmp slt i32 %i.agy, %i.aic
  br i1 %i.aid, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.ct, %bb.cr, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm3ELm4EEET0_SM_SQ_.exit.i
  %i.aie = getelementptr inbounds nuw i8, ptr %i.agq, i64 48
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.cu, %bb.cs
  %i.aif = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 48 ; 2 uses
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !223 ; 2 uses
  %.not.i = icmp eq ptr %i.aig, null
  br i1 %.not.i, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.aih = and i32 %i.aeb, -4096
  %.sroa.0.0.insert.insert.i.i109 = and i64 %i.adz, -17587891081216
  store i64 %.sroa.0.0.insert.insert.i.i109, ptr %i.ao, align 8
  store i32 %i.aih, ptr %i.aq, align 8, !tbaa !76
  store ptr %i.aig, ptr %i.as, align 8, !tbaa !214
  %i.aii = load ptr, ptr %i.aif, align 8, !tbaa !226 ; 2 uses
  %i.aij = shl i32 %i.aec, 3
  %i.aik = and i32 %i.aij, 31744
  %i.ail = lshr i32 %i.aeh, 2
  %i.aim = and i32 %i.ail, 992
  %i.ain = or disjoint i32 %i.aim, %i.aik         ; 2 uses
  %i.aio = lshr i32 %i.aeb, 7
  %i.aip = and i32 %i.aio, 31
  %i.aiq = or disjoint i32 %i.ain, %i.aip         ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.aii, i64 262144
  %i.ais = lshr i32 %i.ain, 6
  %i.ait = zext nneg i32 %i.ais to i64
  %i.aiu = getelementptr inbounds nuw [8 x i8], ptr %i.air, i64 %i.ait
  %i.aiv = load i64, ptr %i.aiu, align 8, !tbaa !215
  %i.aiw = and i32 %i.aiq, 63
  %i.aix = zext nneg i32 %i.aiw to i64
  %i.aiy = shl nuw i64 1, %i.aix
  %i.aiz = and i64 %i.aiv, %i.aiy
  %.not.i.i110 = icmp eq i64 %i.aiz, 0
  %i.aja = zext nneg i32 %i.aiq to i64
  %i.ajb = getelementptr inbounds nuw [8 x i8], ptr %i.aii, i64 %i.aja ; 3 uses
  br i1 %.not.i.i110, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !76
  %i.ajd = and i32 %i.aeb, -128
  %.sroa.0.0.insert.insert.i.i.i = and i64 %i.adz, -545460846720
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.al, align 4
  store i32 %i.ajd, ptr %i.an, align 4, !tbaa !76
  store ptr %i.ajc, ptr %i.at, align 8, !tbaa !213
  %i.aje = load ptr, ptr %i.ajb, align 8, !tbaa !76
  %i.ajf = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.aje, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(96) %i.af)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

bb.cx:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.ajg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit: ; preds = %bb.cx, %bb.cw, %bb.cv, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i, %bb.cl, %bb.cm
  %.1.i.i = phi ptr [ %i.aex, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i ], [ %i.afi, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i ], [ %i.agp, %bb.cm ], [ %i.agl, %bb.cl ], [ %i.aie, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.ajg, %bb.cx ], [ %i.ajf, %bb.cw ], [ %i.ajb, %bb.cv ]
  %i.ajh = load float, ptr %.1.i.i, align 4, !tbaa !211 ; 2 uses
  %i.aji = load ptr, ptr %i.ae, align 8, !tbaa !31 ; 6 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 24
  store float %i.ajh, ptr %i.ajj, align 4, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aji, i64 8
  %i.ajl = load float, ptr %i.ajk, align 4, !tbaa !211
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aji, i64 4
  %i.ajn = load float, ptr %i.ajm, align 4, !tbaa !211
  %i.ajo = fsub float %i.ajl, %i.ajn
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %i.ajq = load float, ptr %i.ajp, align 4, !tbaa !211
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.aji, i64 12
  %i.ajs = load float, ptr %i.ajr, align 4, !tbaa !211
  %i.ajt = fsub float %i.ajq, %i.ajs
  %i.aju = getelementptr inbounds nuw i8, ptr %i.aji, i64 20
  %i.ajv = load float, ptr %i.aju, align 4, !tbaa !211
  %i.ajw = fsub float %i.ajh, %i.ajv
  %i.ajx = load float, ptr %i.au, align 4, !tbaa !194 ; 3 uses
  %i.ajy = fmul float %i.ajo, %i.ajx              ; 3 uses
  %i.ajz = fmul float %i.ajt, %i.ajx              ; 3 uses
  %i.aka = fmul float %i.ajx, %i.ajw              ; 3 uses
  %i.akb = fmul float %i.ajz, %i.ajz
  %i.akc = call float @llvm.fmuladd.f32(float %i.ajy, float %i.ajy, float %i.akb)
  %i.akd = call float @llvm.fmuladd.f32(float %i.aka, float %i.aka, float %i.akc)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.akd)
  %i.ake = fpext float %i.ajy to double
  %i.akf = load i32, ptr %i.ad, align 8, !tbaa !212
  %i.akg = sitofp i32 %i.akf to double
  %i.akh = fpext float %i.ajz to double
  %i.aki = fpext float %i.aka to double
  %i.akj = load <2 x i32>, ptr %i.ag, align 4, !tbaa !212
  %i.akk = sitofp <2 x i32> %i.akj to <2 x double> ; 2 uses
  %i.akl = extractelement <2 x double> %i.akk, i64 0
  %i.akm = fmul double %i.akl, %i.akh
  %i.akn = fpext float %sqrt.i to double
  %i.ako = call double @llvm.fmuladd.f64(double %i.ake, double %i.akg, double %i.akm)
  %i.akp = extractelement <2 x double> %i.akk, i64 1
  %i.akq = call double @llvm.fmuladd.f64(double %i.aki, double %i.akp, double %i.ako)
  %i.akr = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.aks = shufflevector <2 x double> %i.akr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akt = insertelement <2 x double> poison, double %i.akq, i64 0
  %i.aku = insertelement <2 x double> %i.akt, double %i.akn, i64 1
  %i.akv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aks, <2 x double> %i.aku, <2 x double> %i.bn)
  br label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread

_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread: ; preds = %.lr.ph, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit
  %i.akw = phi <2 x double> [ %i.akv, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit ], [ %i.bn, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit ], [ %i.bn, %.lr.ph ] ; 5 uses
  %i.akx = load ptr, ptr %i.av, align 8, !tbaa !228 ; 2 uses
  %i.aky = load i32, ptr %i.ab, align 8, !tbaa !201
  %i.akz = add i32 %i.aky, 1                      ; 4 uses
  %i.ala = lshr i32 %i.akz, 6                     ; 3 uses
  %i.alb = icmp ugt i32 %i.akz, 511
  br i1 %i.alb, label %._crit_edge, label %bb.cy

bb.cy:                                            ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread
  %i.alc = and i32 %i.akz, 63
  %i.ald = zext nneg i32 %i.ala to i64            ; 2 uses
  %i.ale = getelementptr inbounds nuw [8 x i8], ptr %i.akx, i64 %i.ald
  %i.alf = load i64, ptr %i.ale, align 8, !tbaa !215 ; 2 uses
  %i.alg = zext nneg i32 %i.alc to i64            ; 2 uses
  %i.alh = shl nuw i64 1, %i.alg
  %i.ali = and i64 %i.alf, %i.alh
  %.not.i.i.i.i = icmp eq i64 %i.ali, 0
  br i1 %.not.i.i.i.i, label %bb.cz, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.cz:                                            ; preds = %bb.cy
  %i.alj = shl nsw i64 -1, %i.alg
  %i.alk = and i64 %i.alf, %i.alj                 ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.alk, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.a, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader.a:                       ; preds = %bb.cz
  %exitcond.not.i.i.i.i355.a = icmp eq i32 %i.ala, 7
  br i1 %exitcond.not.i.i.i.i355.a, label %._crit_edge, label %.lr.ph357

.lr.ph.i.i.i.i.a:                                 ; preds = %.lr.ph357
  %exitcond.not.i.i.i.i.a = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i.a, label %._crit_edge, label %.lr.ph357, !llvm.loop !229

.lr.ph357:                                        ; preds = %.lr.ph.i.i.i.i.preheader.a, %.lr.ph.i.i.i.i.a
  %indvars.iv.i.i.i.i356 = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i.a ], [ %i.ald, %.lr.ph.i.i.i.i.preheader.a ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i356, 1 ; 4 uses
  %i.all = getelementptr inbounds nuw [8 x i8], ptr %i.akx, i64 %indvars.iv.next.i.i.i.i
  %i.alm = load i64, ptr %i.all, align 8, !tbaa !215 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.alm, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i.a, label %.critedge.loopexit.i.i.i.i, !llvm.loop !229

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph357
  %i.aln = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.cz
  %.016.lcssa.i.i.i.i = phi i32 [ %i.ala, %bb.cz ], [ %i.aln, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.alk, %bb.cz ], [ %i.alm, %.critedge.loopexit.i.i.i.i ]
  %i.alo = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.alp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.alq = trunc nuw nsw i64 %i.alp to i32
  %i.alr = or disjoint i32 %i.alo, %i.alq
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit: ; preds = %bb.cy, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.alr, %.critedge.i.i.i.i ], [ %i.akz, %bb.cy ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ab, align 8, !tbaa !201
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !230
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11MeasureAreaC2ERKSI_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #4 comdat($_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11MeasureAreaC5ERKSI_) align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !124    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78
  tail call void @_ZN7openvdb5v13_04math11GradStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEC2ERKSE_(ptr noundef nonnull align 8 dereferenceable(148) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13cbeginValueOnEv(ptr dead_on_unwind noalias writable sret(%"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %.critedge.thread.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !215  ; 2 uses
  %.not.1.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.1.i.i, label %bb.c, label %.critedge.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !215  ; 2 uses
  %.not.2.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.2.i.i, label %bb.d, label %.critedge.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !215  ; 2 uses
  %.not.3.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.3.i.i, label %bb.e, label %.critedge.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !215  ; 2 uses
  %.not.4.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.4.i.i, label %bb.f, label %.critedge.thread.i.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !215  ; 2 uses
  %.not.5.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.5.i.i, label %bb.g, label %.critedge.thread.i.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !215  ; 2 uses
  %.not.6.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.6.i.i, label %bb.h, label %.critedge.thread.i.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !215  ; 2 uses
  %.not.7.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.7.i.i, label %_ZNK7openvdb5v13_04util8NodeMaskILj3EE7beginOnEv.exit, label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.q = phi i64 [ %i.b, %bb.a ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ %i.n, %bb.g ], [ %i.p, %bb.h ]
  %.0712.lcssa.i.i = phi i32 [ 0, %bb.a ], [ 64, %bb.b ], [ 128, %bb.c ], [ 192, %bb.d ], [ 256, %bb.e ], [ 320, %bb.f ], [ 384, %bb.g ], [ 448, %bb.h ]
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.q, i1 true)
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = or disjoint i32 %.0712.lcssa.i.i, %i.s
  br label %_ZNK7openvdb5v13_04util8NodeMaskILj3EE7beginOnEv.exit

_ZNK7openvdb5v13_04util8NodeMaskILj3EE7beginOnEv.exit: ; preds = %bb.h, %.critedge.thread.i.i
  %i.u = phi i32 [ %i.t, %.critedge.thread.i.i ], [ 512, %bb.h ]
  store ptr %1, ptr %0, align 8, !tbaa !231
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.u, ptr %i.v, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.41.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load atomic i32, ptr %i.w seq_cst, align 8
  %.not.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK7openvdb5v13_04util8NodeMaskILj3EE7beginOnEv.exit
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %1)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i.i

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i.i: ; preds = %bb.i, %_ZNK7openvdb5v13_04util8NodeMaskILj3EE7beginOnEv.exit
  %i.y = load ptr, ptr %1, align 8, !tbaa !76     ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE9ValueIterINS0_4util14OnMaskIteratorINS5_8NodeMaskILj3EEEEEKS3_KfNS3_7ValueOnEEC2ERKS9_PSA_.exit

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.ab = atomicrmw xchg ptr %i.aa, i8 1 seq_cst, align 1
  %i.ac = trunc i8 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i ], [ 1, %bb.j ] ; 8 uses
  %i.ad = icmp slt i32 %.sroa.0.02.i.i.i.i.i.i, 17
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ae = icmp sgt i32 %.sroa.0.02.i.i.i.i.i.i, 0
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.k
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i.i.i, 7  ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.i.i.prol = phi i32 [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.af = add nsw i32 %.01.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !232

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ag = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i, 8
  br i1 %i.ag, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.01.i.i.i.i.i.i.i.i = phi i32 [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.ah = add nsw i32 %.01.i.i.i.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.ai = icmp sgt i32 %.01.i.i.i.i.i.i.i.i, 8
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i, !llvm.loop !234

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %bb.k
  %i.aj = shl i32 %.sroa.0.02.i.i.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ak = tail call noundef i32 @sched_yield() #21 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i: ; preds = %bb.l, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i = phi i32 [ %i.aj, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i.i.i, %bb.l ]
  %i.al = atomicrmw xchg ptr %i.aa, i8 1 seq_cst, align 1
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i, !llvm.loop !235

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i, %bb.j
  %i.an = load ptr, ptr %1, align 8, !tbaa !76    ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.m, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i.i

bb.m:                                             ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i
  %i.ap = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #26
          to label %bb.n unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i ; 2 uses

bb.n:                                             ; preds = %bb.m
  store ptr %i.ap, ptr %1, align 8, !tbaa !76
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i: ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.aa release, align 4
  resume { ptr, i32 } %i.aq

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i.i: ; preds = %bb.n, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i
  %i.ar = phi ptr [ %i.ap, %bb.n ], [ %i.an, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i ]
  store atomic i8 0, ptr %i.aa release, align 4
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE9ValueIterINS0_4util14OnMaskIteratorINS5_8NodeMaskILj3EEEEEKS3_KfNS3_7ValueOnEEC2ERKS9_PSA_.exit

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE9ValueIterINS0_4util14OnMaskIteratorINS5_8NodeMaskILj3EEEEEKS3_KfNS3_7ValueOnEEC2ERKS9_PSA_.exit: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i.i
  %i.as = phi ptr [ %i.ar, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i.i ], [ %i.y, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.as, ptr %i.at, align 8, !tbaa !206
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesC2EPSH_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %_ZN3tbb6detail2d115parallel_invokeIJZN7openvdb5v13_05tools15LevelSetMeasureINS4_4GridINS4_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS4_4util15NullInterrupterEE17MeasureCurvaturesC1EPSL_EUlvE_ZNSM_C1ESN_EUlvE0_EEEvDpOT_.exit
  ret void

bb.s:                                             ; preds = %bb.q, %bb.n, %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.au, %bb.q ], [ %eh.lpad-body, %.body ], [ %i.am, %bb.n ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !34
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #24
  br label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit

_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit: ; preds = %bb.s, %bb.t
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEC2ERKSE_(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 5 uses
  store ptr %1, ptr %0, align 8, !tbaa !246
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !183
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.a, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 9223372034707292159, ptr %i.f, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !76
  %.06.i.i.i.i.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i, align 4, !tbaa !76
  %.06.i.i.i.i.ptr.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i, align 8, !tbaa !76
  store ptr null, ptr %i.e, align 8, !tbaa !184
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %i.g, align 8, !tbaa !185
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = tail call noalias noundef nonnull dereferenceable(76) ptr @_Znwm(i64 noundef 76) #26 ; 3 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 76 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.k, i8 0, i64 76, i1 false)
  store ptr %i.l, ptr %i.n, align 8, !tbaa !186
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 9223372034707292159, ptr %i.o, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 2147483647, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61, !noalias !247
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66, !noalias !250 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56, !noalias !250
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !noalias !250
  invoke void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %_ZNK7openvdb5v13_08GridBase9voxelSizeEv.exit unwind label %bb.b, !inline_history !193

_ZNK7openvdb5v13_08GridBase9voxelSizeEv.exit:     ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.w = load double, ptr %2, align 8, !tbaa !86
  %i.x = fdiv double 5.000000e-01, %i.w
  %i.y = fptrunc double %i.x to float             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  store float %i.y, ptr %i.v, align 4, !tbaa !253
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aa = fpext float %i.y to double              ; 2 uses
  %i.ab = fmul double %i.aa, 4.000000e+00
  %i.ac = fmul double %i.ab, %i.aa
  %i.ad = fptrunc double %i.ac to float
  store float %i.ad, ptr %i.z, align 8, !tbaa !254
  ret void

bb.b:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !31  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #24
  br label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit

_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZNK7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesclERKNS4_11LeafManagerIKSD_E9LeafRangeE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !236
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit, label %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i

_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i: ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef -1), !inline_history !196
  br i1 %i.g, label %bb.b, label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit

bb.b:                                             ; preds = %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i
  %i.h = tail call noundef ptr @_ZN3tbb6detail2r115current_contextEv() ; 4 uses
  %.not.i2.i = icmp eq ptr %i.h, null
  br i1 %.not.i2.i, label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %i.j = load atomic i8, ptr %i.i monotonic, align 1
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %bb.d, label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76
  br label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i

_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.h, %bb.c ]
  %i.n = tail call noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i) ; 0 uses
  br label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit

_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit: ; preds = %bb.a, %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i, %bb.b, %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i
  %i.o = load ptr, ptr %0, align 8, !tbaa !236    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load double, ptr %i.p, align 8, !tbaa !87 ; 4 uses
  %i.r = fmul double %i.q, %i.q
  %i.s = fdiv double 1.000000e+00, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !115
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !116
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !157  ; 2 uses
  %i.z = load i64, ptr %1, align 8, !tbaa !155
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph50, label %._crit_edge51

.lr.ph50:                                         ; preds = %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = insertelement <2 x double> poison, double %i.q, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.r, i64 1
  br label %bb.e

._crit_edge51:                                    ; preds = %._crit_edge, %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  ret void

bb.e:                                             ; preds = %.lr.ph50, %._crit_edge
  %.sroa.525.049 = phi i64 [ %i.y, %.lr.ph50 ], [ %i.az, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !197, !nonnull !30, !align !198
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !199
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.sroa.525.049
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !200
  call void @_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter") align 8 %2, ptr noundef nonnull align 8 dereferenceable(96) %i.aq)
  %i.ar = load i32, ptr %i.ac, align 8, !tbaa !201 ; 2 uses
  %.not45 = icmp eq i32 %i.ar, 512
  br i1 %.not45, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader.a, %.lr.ph.i.i.i.i.a, %bb.e
  %3 = phi <2 x double> [ zeroinitializer, %bb.e ], [ %i.iv, %.lr.ph.i.i.i.i.a ], [ %i.iv, %.lr.ph.i.i.i.i.preheader.a ], [ %i.iv, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ], [ %i.iv, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.as = load ptr, ptr %0, align 8, !tbaa !236
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !60
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.sroa.525.049 ; 2 uses
  %i.aw = extractelement <2 x double> %3, i64 0
  store double %i.aw, ptr %i.av, align 8, !tbaa !86
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.w
  %i.ay = extractelement <2 x double> %3, i64 1
  store double %i.ay, ptr %i.ax, align 8, !tbaa !86
  %i.az = add nuw i64 %.sroa.525.049, 1           ; 2 uses
  %i.ba = load i64, ptr %1, align 8, !tbaa !155
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %._crit_edge51, !llvm.loop !255

.lr.ph:                                           ; preds = %bb.e, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit
  %i.bc = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ], [ %i.ar, %bb.e ] ; 3 uses
  %i.bd = phi <2 x double> [ %i.iv, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ], [ zeroinitializer, %bb.e ] ; 3 uses
  %i.be = load ptr, ptr %i.ad, align 8, !tbaa !206
  %i.bf = zext i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !211
  %i.bi = fpext float %i.bh to double
  %i.bj = fmul double %i.s, %i.bi                 ; 2 uses
  %i.bk = call noundef double @llvm.fabs.f64(double %i.bj)
  %i.bl = fcmp ogt double %i.bk, 1.500000e+00
  br i1 %i.bl, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit

_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit: ; preds = %.lr.ph
  %i.bm = fmul double %i.bj, f0x4000C152382D7365
  %i.bn = call double @cos(double noundef %i.bm) #21
  %i.bo = fadd double %i.bn, 1.000000e+00
  %i.bp = fmul double %i.bo, f0x3FD5555555555555  ; 2 uses
  %i.bq = fcmp ogt double %i.bp, 0.000000e+00
  br i1 %i.bq, label %bb.f, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread

bb.f:                                             ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit
  %i.br = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %2) ; 3 uses
  %i.bs = load i32, ptr %i.ac, align 8, !tbaa !201 ; 4 uses
  %i.bt = lshr i32 %i.bs, 6
  %i.bu = lshr i32 %i.bs, 3
  %i.bv = and i32 %i.bu, 7
  %i.bw = and i32 %i.bs, 7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !212
  %i.bz = add nsw i32 %i.by, %i.bt
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 84
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !212
  %i.cc = add nsw i32 %i.cb, %i.bv
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !212
  %i.cf = add nsw i32 %i.ce, %i.bw
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.cc to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i9.i.i.i = zext i32 %i.bz to i64
  %.sroa.0.0.insert.insert.i10.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i9.i.i.i
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i, ptr %i.af, align 8
  store i32 %i.cf, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !76
  %i.cg = load ptr, ptr %i.ad, align 8, !tbaa !206
  %i.ch = zext i32 %i.bs to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !211
  %i.ck = load ptr, ptr %i.ag, align 8, !tbaa !31
  store float %i.cj, ptr %i.ck, align 4, !tbaa !211
  call void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(148) %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %i.af)
  %i.cl = load ptr, ptr %i.ag, align 8, !tbaa !31 ; 17 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cq = load <4 x float>, ptr %i.cn, align 4, !tbaa !211 ; 3 uses
  %i.cr = load float, ptr %i.co, align 4, !tbaa !211
  %i.cs = load float, ptr %i.cp, align 4, !tbaa !211
  %i.ct = load float, ptr %i.cm, align 4, !tbaa !211
  %i.cu = extractelement <4 x float> %i.cq, i64 0
  %i.cv = fsub float %i.ct, %i.cu                 ; 2 uses
  %i.cw = fsub float %i.cr, %i.cs                 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !211 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cl, i64 20
  %i.da = load float, ptr %i.cz, align 4, !tbaa !211 ; 2 uses
  %i.db = fsub float %i.cy, %i.da                 ; 2 uses
  %i.dc = load float, ptr %i.ah, align 4, !tbaa !253 ; 4 uses
  %i.dd = fmul float %i.cv, %i.dc                 ; 2 uses
  %i.de = fmul float %i.cw, %i.dc                 ; 2 uses
  %i.df = fmul float %i.dc, %i.db                 ; 2 uses
  %i.dg = fmul float %i.de, %i.de
  %i.dh = call float @llvm.fmuladd.f32(float %i.dd, float %i.dd, float %i.dg)
  %i.di = call float @llvm.fmuladd.f32(float %i.df, float %i.df, float %i.dh)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.di)
  %i.dj = fpext float %sqrt.i to double
  %i.dk = fmul double %i.bp, %i.dj
  %i.dl = fpext float %i.cv to double
  %i.dm = fmul double %i.dl, 5.000000e-01         ; 5 uses
  %i.dn = fpext float %i.cw to double
  %i.do = fmul double %i.dn, 5.000000e-01         ; 5 uses
  %i.dp = fpext float %i.db to double
  %i.dq = fmul double %i.dp, 5.000000e-01         ; 5 uses
  %i.dr = fmul double %i.dm, %i.dm                ; 2 uses
  %i.ds = fmul double %i.do, %i.do                ; 2 uses
  %i.dt = fmul double %i.dq, %i.dq                ; 3 uses
  %i.du = fadd double %i.dr, %i.ds
  %i.dv = fadd double %i.du, %i.dt                ; 2 uses
  %i.dw = fcmp ugt double %i.dv, 1.000000e-15
  br i1 %i.dw, label %bb.g, label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit

bb.g:                                             ; preds = %bb.f
  %i.dx = load float, ptr %i.cl, align 4, !tbaa !211 ; 2 uses
  %i.dy = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = shufflevector <4 x float> %i.cq, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.eb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> splat (float -2.000000e+00), <2 x float> %i.ea)
  %i.ec = shufflevector <4 x float> %i.cq, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ed = fadd <2 x float> %i.ec, %i.eb
  %i.ee = fpext <2 x float> %i.ed to <2 x double> ; 6 uses
  %i.ef = call float @llvm.fmuladd.f32(float %i.dx, float -2.000000e+00, float %i.cy)
  %i.eg = fadd float %i.da, %i.ef
  %i.eh = fpext float %i.eg to double             ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !211
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cl, i64 28
  %i.el = getelementptr inbounds nuw i8, ptr %i.cl, i64 36
  %i.em = load float, ptr %i.el, align 4, !tbaa !211
  %i.en = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.eo = load float, ptr %i.en, align 4, !tbaa !211
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !211
  %i.er = fsub float %i.eo, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.cl, i64 44
  %i.et = load float, ptr %i.es, align 4, !tbaa !211
  %i.eu = fadd float %i.er, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cl, i64 52
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !211
  %i.ex = fsub float %i.eu, %i.ew
  %i.ey = fpext float %i.ex to double
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !211
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cl, i64 60
  %i.fc = load <2 x float>, ptr %i.ek, align 4, !tbaa !211 ; 2 uses
  %i.fd = load <2 x float>, ptr %i.fb, align 4, !tbaa !211 ; 2 uses
  %i.fe = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.fa, i64 1
  %i.fg = shufflevector <2 x float> %i.fc, <2 x float> %i.fd, <2 x i32> <i32 1, i32 3>
  %i.fh = fsub <2 x float> %i.ff, %i.fg
  %i.fi = shufflevector <2 x float> %i.fc, <2 x float> %i.fd, <2 x i32> <i32 0, i32 2>
  %i.fj = fadd <2 x float> %i.fh, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cl, i64 68
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !211
  %i.fm = fmul double %i.do, %i.dq                ; 2 uses
  %i.fn = extractelement <2 x double> %i.ee, i64 0 ; 2 uses
  %i.fo = fmul double %i.dm, %i.dq
  %i.fp = extractelement <2 x double> %i.ee, i64 1 ; 2 uses
  %i.fq = fmul double %i.dm, %i.do
  %i.fr = fneg double %i.eh
  %sqrt.i22 = call double @llvm.sqrt.f64(double %i.dv) ; 3 uses
  %i.fs = fmul double %sqrt.i22, %sqrt.i22
  %i.ft = load float, ptr %i.ai, align 8, !tbaa !254
  %i.fu = insertelement <2 x float> poison, float %i.em, i64 0
  %i.fv = insertelement <2 x float> %i.fu, float %i.fl, i64 1
  %i.fw = fsub <2 x float> %i.fj, %i.fv
  %i.fx = fpext <2 x float> %i.fw to <2 x double>
  %i.fy = fmul <2 x double> %i.fx, splat (double 2.500000e-01) ; 6 uses
  %i.fz = fadd double %i.fp, %i.eh
  %i.ga = fadd double %i.fn, %i.eh
  %i.gb = fadd double %i.fn, %i.fp
  %i.gc = extractelement <2 x double> %i.fy, i64 1
  %i.gd = fmul double %i.fm, %i.gc
  %i.ge = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gi = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gk = extractelement <2 x double> %i.fy, i64 0 ; 2 uses
  %i.gl = fneg double %i.gk
  %i.gm = fmul double %i.gk, %i.gl
  %i.gn = insertelement <2 x double> %i.ee, double %i.dt, i64 1
  %i.go = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gp = insertelement <2 x double> %i.go, double %i.gb, i64 1
  %i.gq = fneg <2 x double> %i.ee
  %i.gr = fmul double %i.ey, 2.500000e-01         ; 4 uses
  %i.gs = insertelement <2 x double> %i.fy, double %i.gr, i64 0 ; 3 uses
  %i.gt = fneg <2 x double> %i.gs
  %i.gu = fmul <2 x double> %i.gs, %i.gt
  %i.gv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> %i.gf, <2 x double> %i.gu) ; 2 uses
  %i.gw = insertelement <2 x double> %i.gv, double %i.ga, i64 1
  %i.gx = fmul <2 x double> %i.gh, %i.gw
  %i.gy = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gz = insertelement <2 x double> %i.gy, double %i.fz, i64 1
  %i.ha = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> %i.gz, <2 x double> %i.gx) ; 2 uses
  %i.hb = extractelement <2 x double> %i.ha, i64 0
  %i.hc = insertelement <2 x double> %i.ha, double %i.gm, i64 0
  %i.hd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %i.gp, <2 x double> %i.hc) ; 2 uses
  %i.he = extractelement <2 x double> %i.hd, i64 0
  %i.hf = call double @llvm.fmuladd.f64(double %i.dt, double %i.he, double %i.hb)
  %i.hg = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hh = insertelement <2 x double> %i.hg, double %i.gr, i64 1
  %i.hi = fmul <2 x double> %i.hh, %i.gq
  %i.hj = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> %i.gs, <2 x double> %i.hi) ; 2 uses
  %i.hl = extractelement <2 x double> %i.hk, i64 1
  %i.hm = fmul double %i.fo, %i.hl
  %i.hn = extractelement <2 x double> %i.hk, i64 0
  %i.ho = call double @llvm.fmuladd.f64(double %i.fm, double %i.hn, double %i.hm)
  %i.hp = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.hq = insertelement <2 x double> %i.hp, double %i.fr, i64 1
  %i.hr = insertelement <2 x double> %i.hg, double %i.gr, i64 0
  %i.hs = fmul <2 x double> %i.hq, %i.hr
  %i.ht = insertelement <2 x double> poison, double %i.do, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.gr, i64 1
  %i.hv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %i.fy, <2 x double> %i.hs)
  %i.hw = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.hx = insertelement <2 x double> %i.hw, double %i.fq, i64 1
  %i.hy = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.hz = insertelement <2 x double> %i.hy, double %i.ho, i64 1
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> %i.hv, <2 x double> %i.hz)
  %i.ib = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ic = insertelement <2 x double> %i.ib, double %i.hf, i64 1
  %i.id = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %i.ic)
  %i.ie = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.if = insertelement <2 x float> %i.ie, float %i.ft, i64 1
  %i.ig = fpext <2 x float> %i.if to <2 x double>
  %i.ih = fmul <2 x double> %i.id, %i.ig
  %i.ii = insertelement <2 x double> poison, double %sqrt.i22, i64 0
  %i.ij = insertelement <2 x double> %i.ii, double %i.fs, i64 1 ; 2 uses
  %i.ik = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.il = fmul <2 x double> %i.ij, %i.ik
  %i.im = fdiv <2 x double> %i.ih, %i.il
  %i.in = fptrunc <2 x double> %i.im to <2 x float>
  %i.io = fpext <2 x float> %i.in to <2 x double>
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit: ; preds = %bb.f, %bb.g
  %i.ip = phi <2 x double> [ %i.io, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.iq = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.ir = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.is = fmul <2 x double> %i.ir, %i.ip
  %i.it = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.is, <2 x double> %i.al, <2 x double> %i.bd)
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !201
  br label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread

_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread: ; preds = %.lr.ph, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit
  %i.iu = phi i32 [ %.pre, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit ], [ %i.bc, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit ], [ %i.bc, %.lr.ph ]
  %i.iv = phi <2 x double> [ %i.it, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit ], [ %i.bd, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit ], [ %i.bd, %.lr.ph ] ; 5 uses
  %i.iw = load ptr, ptr %i.aj, align 8, !tbaa !228 ; 2 uses
  %i.ix = add i32 %i.iu, 1                        ; 4 uses
  %i.iy = lshr i32 %i.ix, 6                       ; 3 uses
  %i.iz = icmp ugt i32 %i.ix, 511
  br i1 %i.iz, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread
  %i.ja = and i32 %i.ix, 63
  %i.jb = zext nneg i32 %i.iy to i64              ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.jb
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !215 ; 2 uses
  %i.je = zext nneg i32 %i.ja to i64              ; 2 uses
  %i.jf = shl nuw i64 1, %i.je
  %i.jg = and i64 %i.jd, %i.jf
  %.not.i.i.i.i = icmp eq i64 %i.jg, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.i:                                             ; preds = %bb.h
  %i.jh = shl nsw i64 -1, %i.je
  %i.ji = and i64 %i.jd, %i.jh                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ji, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.a, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader.a:                       ; preds = %bb.i
  %exitcond.not.i.i.i.i73.a = icmp eq i32 %i.iy, 7
  br i1 %exitcond.not.i.i.i.i73.a, label %._crit_edge, label %.lr.ph75

.lr.ph.i.i.i.i.a:                                 ; preds = %.lr.ph75
  %exitcond.not.i.i.i.i.a = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i.a, label %._crit_edge, label %.lr.ph75, !llvm.loop !229

.lr.ph75:                                         ; preds = %.lr.ph.i.i.i.i.preheader.a, %.lr.ph.i.i.i.i.a
  %indvars.iv.i.i.i.i74 = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i.a ], [ %i.jb, %.lr.ph.i.i.i.i.preheader.a ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i74, 1 ; 4 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %indvars.iv.next.i.i.i.i
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !215 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.jk, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i.a, label %.critedge.loopexit.i.i.i.i, !llvm.loop !229

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph75
  %i.jl = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.i
  %.016.lcssa.i.i.i.i = phi i32 [ %i.iy, %bb.i ], [ %i.jl, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.ji, %bb.i ], [ %i.jk, %.critedge.loopexit.i.i.i.i ]
  %i.jm = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.jn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.jo = trunc nuw nsw i64 %i.jn to i32
  %i.jp = or disjoint i32 %i.jm, %i.jo
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit: ; preds = %bb.h, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.jp, %.critedge.i.i.i.i ], [ %i.ix, %bb.h ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ac, align 8, !tbaa !201
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !256
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesC2ERKSI_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #4 comdat($_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesC5ERKSI_) align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !236    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !236
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78
  tail call void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEC2ERKSE_(ptr noundef nonnull align 8 dereferenceable(148) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef double @_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE6reduceEi(ptr noundef nonnull align 8 dereferenceable(86) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::less.339", align 1    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !116  ; 5 uses
  %i.h = mul i64 %i.g, %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.h ; 6 uses
  %.idx = shl i64 %i.g, 3                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %.not10 = icmp eq i64 %i.g, 0
  br i1 %.not10, label %_ZN3tbb6detail2d113parallel_sortIPdEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %i.g, 500
  br i1 %i.k, label %_ZSt4sortIPdSt4lessIdEEvT_S3_T0_.exit.i.i, label %bb.c

_ZSt4sortIPdSt4lessIdEEvT_S3_T0_.exit.i.i:        ; preds = %bb.b
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  tail call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %i.i, ptr noundef nonnull %i.j, i64 noundef %i.n)
  tail call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %i.i, ptr noundef nonnull %i.j)
  br label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  call void @_ZN3tbb6detail2d119parallel_quick_sortIPdSt4lessIdEEEvT_S6_RKT0_(ptr noundef %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %.lr.ph.preheader

_ZN3tbb6detail2d113parallel_sortIPdEEvT_S4_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZSt4sortIPdSt4lessIdEEvT_S3_T0_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.o = add i64 %.idx, -8                        ; 2 uses
  %i.p = lshr exact i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 1
  %xtraiter = and i64 %i.q, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.013.prol = phi double [ %i.t, %.lr.ph.prol ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.0912.prol = phi ptr [ %i.r, %.lr.ph.prol ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %.0912.prol, i64 8 ; 2 uses
  %i.s = load double, ptr %.0912.prol, align 8, !tbaa !86
  %i.t = fadd double %.013.prol, %i.s             ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !257

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %.013.unr = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %.0912.unr = phi ptr [ %i.i, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %i.u = icmp ult i64 %i.o, 56
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.013 = phi double [ %i.as, %.lr.ph ], [ %.013.unr, %.lr.ph.prol.loopexit ]
  %.0912 = phi ptr [ %i.aq, %.lr.ph ], [ %.0912.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0912, i64 8
  %i.w = load double, ptr %.0912, align 8, !tbaa !86
  %i.x = fadd double %.013, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.0912, i64 16
  %i.z = load double, ptr %i.v, align 8, !tbaa !86
  %i.aa = fadd double %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.0912, i64 24
  %i.ac = load double, ptr %i.y, align 8, !tbaa !86
  %i.ad = fadd double %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.0912, i64 32
  %i.af = load double, ptr %i.ab, align 8, !tbaa !86
  %i.ag = fadd double %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.0912, i64 40
  %i.ai = load double, ptr %i.ae, align 8, !tbaa !86
  %i.aj = fadd double %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.0912, i64 48
  %i.al = load double, ptr %i.ah, align 8, !tbaa !86
  %i.am = fadd double %i.aj, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.0912, i64 56
  %i.ao = load double, ptr %i.ak, align 8, !tbaa !86
  %i.ap = fadd double %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.0912, i64 64 ; 2 uses
  %i.ar = load double, ptr %i.an, align 8, !tbaa !86
  %i.as = fadd double %i.ap, %i.ar                ; 2 uses
  %.not.7 = icmp eq ptr %i.aq, %i.j
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !258

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZN3tbb6detail2d113parallel_sortIPdEEvT_S4_.exit
  %.0.lcssa = phi double [ 0.000000e+00, %_ZN3tbb6detail2d113parallel_sortIPdEEvT_S4_.exit ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.as, %.lr.ph ]
  ret double %.0.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEC2ERKSE_PSG_(ptr noundef nonnull align 8 dereferenceable(86) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2) unnamed_addr #5 comdat($_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEC5ERKSE_PSG_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEE, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.b, align 8, !tbaa !259
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.c, align 8, !tbaa !260
  invoke void @_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE4initERKSE_(ptr noundef nonnull align 8 dereferenceable(86) %0, ptr noundef nonnull align 8 dereferenceable(88) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #24
  br label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  tail call void @_ZNSt10unique_ptrIN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #21
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE4initERKSE_(ptr noundef nonnull align 8 dereferenceable(86) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !69
  br i1 %i.g, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !73
  store i8 0, ptr %i.h, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.2, i64 noundef 73)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.d unwind label %bb.g
end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11MeasureAreaC2EPSH_:bb.a

bb.j:                                             ; preds = %.noexc
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.body

bb.k:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.p

bb.l:                                             ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.bm, %bb.l ], [ %i.bl, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.t

bb.m:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !293 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !294, !noalias !345
  store i64 %i.bp, ptr %6, align 8, !tbaa !341, !alias.scope !345
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.bq, align 8, !tbaa !343, !alias.scope !345
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 1, ptr %i.br, align 8, !tbaa !344, !alias.scope !345
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.bn, ptr %i.bs, align 8, !tbaa !293, !alias.scope !345
  invoke void @_ZNK7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11MeasureAreaclERKNS4_11LeafManagerIKSD_E9LeafRangeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.t

bb.p:                                             ; preds = %bb.n, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr %i.a, ptr %7, align 8, !tbaa !348
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %i.a, ptr %8, align 8, !tbaa !348
  invoke void @_ZN3tbb6detail2d120parallel_invoke_implIZN7openvdb5v13_05tools15LevelSetMeasureINS4_4GridINS4_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS4_4util15NullInterrupterEE11MeasureAreaC1EPSL_EUlvE0_JZNSM_C1ESN_EUlvE_EEEvRKT_DpRKT0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN3tbb6detail2d115parallel_invokeIJZN7openvdb5v13_05tools15LevelSetMeasureINS4_4GridINS4_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS4_4util15NullInterrupterEE11MeasureAreaC1EPSL_EUlvE_ZNSM_C1ESN_EUlvE0_EEEvDpOT_.exit unwind label %bb.r

_ZN3tbb6detail2d115parallel_invokeIJZN7openvdb5v13_05tools15LevelSetMeasureINS4_4GridINS4_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS4_4util15NullInterrupterEE11MeasureAreaC1EPSL_EUlvE_ZNSM_C1ESN_EUlvE0_EEEvDpOT_.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !299 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 84
  store i8 0, ptr %i.bv, align 4, !tbaa !36
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !259 ; 3 uses
  %.not5 = icmp eq ptr %i.bx, null
  br i1 %.not5, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZN3tbb6detail2d115parallel_invokeIJZN7openvdb5v13_05tools15LevelSetMeasureINS4_4GridINS4_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS4_4util15NullInterrupterEE11MeasureAreaC1EPSL_EUlvE_ZNSM_C1ESN_EUlvE0_EEEvDpOT_.exit
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !56
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %bb.s unwind label %bb.d

bb.r:                                             ; preds = %bb.p
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %_ZN3tbb6detail2d115parallel_invokeIJZN7openvdb5v13_05tools15LevelSetMeasureINS4_4GridINS4_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS4_4util15NullInterrupterEE11MeasureAreaC1EPSL_EUlvE_ZNSM_C1ESN_EUlvE0_EEEvDpOT_.exit
  ret void

bb.t:                                             ; preds = %bb.r, %bb.o, %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.d ], [ %i.cb, %bb.r ], [ %eh.lpad-body, %.body ], [ %i.bt, %bb.o ] ; 2 uses
  %i.cc = load ptr, ptr %i.n, align 8, !tbaa !46  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i, label %common.resume, label %common.resume.sink.split
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZNK7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11MeasureAreaclERKNS4_11LeafManagerIKSD_E9LeafRangeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %7 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %8 = alloca %"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !301
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !259  ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit, label %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i

_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i: ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef -1), !inline_history !350
  br i1 %i.g, label %bb.b, label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit

bb.b:                                             ; preds = %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i
  %i.h = tail call noundef ptr @_ZN3tbb6detail2r115current_contextEv() ; 4 uses
  %.not.i2.i = icmp eq ptr %i.h, null
  br i1 %.not.i2.i, label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %i.j = load atomic i8, ptr %i.i monotonic, align 1
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %bb.d, label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76
  br label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i

_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.h, %bb.c ]
  %i.n = tail call noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i) ; 0 uses
  br label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit

_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit: ; preds = %bb.a, %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i, %bb.b, %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i
  %i.o = load ptr, ptr %0, align 8, !tbaa !301    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load double, ptr %i.p, align 8, !tbaa !268
  %i.r = fdiv double 1.000000e+00, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !293
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !294
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !343  ; 2 uses
  %i.y = load i64, ptr %1, align 8, !tbaa !341
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %.lr.ph273, label %._crit_edge274

.lr.ph273:                                        ; preds = %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  %.sroa.220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 18 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 18 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 18 uses
  %.sroa.216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.e

._crit_edge274:                                   ; preds = %._crit_edge, %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  ret void

bb.e:                                             ; preds = %.lr.ph273, %._crit_edge
  %.sroa.5263.0272 = phi i64 [ %i.x, %.lr.ph273 ], [ %i.bj, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.aw = load ptr, ptr %i.aa, align 8, !tbaa !351, !nonnull !30, !align !198
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !352
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.5263.0272
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !353
  call void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %i.ba)
  %i.bb = load i32, ptr %i.ab, align 8, !tbaa !201 ; 2 uses
  %.not268 = icmp eq i32 %i.bb, 512
  br i1 %.not268, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader.a, %.lr.ph.i.i.i.i.a, %bb.e
  %9 = phi <2 x double> [ zeroinitializer, %bb.e ], [ %i.akw, %.lr.ph.i.i.i.i.a ], [ %i.akw, %.lr.ph.i.i.i.i.preheader.a ], [ %i.akw, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ %i.akw, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.bc = load ptr, ptr %0, align 8, !tbaa !301
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !60
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.5263.0272 ; 2 uses
  %i.bg = extractelement <2 x double> %9, i64 0
  store double %i.bg, ptr %i.bf, align 8, !tbaa !86
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.v
  %i.bi = extractelement <2 x double> %9, i64 1
  store double %i.bi, ptr %i.bh, align 8, !tbaa !86
  %i.bj = add nuw i64 %.sroa.5263.0272, 1         ; 2 uses
  %i.bk = load i64, ptr %1, align 8, !tbaa !341
  %i.bl = icmp ult i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.e, label %._crit_edge274, !llvm.loop !354

.lr.ph:                                           ; preds = %bb.e, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit
  %i.bm = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ %i.bb, %bb.e ]
  %i.bn = phi <2 x double> [ %i.akw, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ zeroinitializer, %bb.e ] ; 3 uses
  %i.bo = load ptr, ptr %i.ac, align 8, !tbaa !355
  %i.bp = zext i32 %i.bm to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !86
  %i.bs = fmul double %i.r, %i.br                 ; 2 uses
  %i.bt = call noundef double @llvm.fabs.f64(double %i.bs)
  %i.bu = fcmp ogt double %i.bt, 1.500000e+00
  br i1 %i.bu, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit

_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit: ; preds = %.lr.ph
  %i.bv = fmul double %i.bs, f0x4000C152382D7365
  %i.bw = call double @cos(double noundef %i.bv) #21
  %i.bx = fadd double %i.bw, 1.000000e+00
  %i.by = fmul double %i.bx, f0x3FD5555555555555  ; 2 uses
  %i.bz = fcmp ogt double %i.by, 0.000000e+00
  br i1 %i.bz, label %bb.f, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread

bb.f:                                             ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit
  %i.ca = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %8) ; 3 uses
  %i.cb = load i32, ptr %i.ab, align 8, !tbaa !201 ; 4 uses
  %i.cc = lshr i32 %i.cb, 6
  %i.cd = lshr i32 %i.cb, 3
  %i.ce = and i32 %i.cd, 7
  %i.cf = and i32 %i.cb, 7
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !212
  %i.ci = add nsw i32 %i.ch, %i.cc                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 84
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !212
  %i.cl = add nsw i32 %i.ck, %i.ce                ; 11 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 88
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !212
  %i.co = add nsw i32 %i.cn, %i.cf                ; 12 uses
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.cl to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i9.i.i.i = zext i32 %i.ci to i64
  %.sroa.0.0.insert.insert.i10.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i9.i.i.i
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i, ptr %i.ad, align 8
  store i32 %i.co, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !76
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !355
  %i.cq = zext i32 %i.cb to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !86
  %i.ct = load ptr, ptr %i.ae, align 8, !tbaa !46
  store double %i.cs, ptr %i.ct, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.cu = add nsw i32 %i.ci, -1                   ; 8 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.cu to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %2, align 8
  store i32 %i.co, ptr %.sroa.220.0..sroa_idx.i, align 8
  %i.cv = and i32 %i.cu, -8
  %i.cw = load i32, ptr %i.ah, align 8, !tbaa !212
  %i.cx = icmp eq i32 %i.cv, %i.cw
  br i1 %i.cx, label %bb.g, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i90

bb.g:                                             ; preds = %bb.f
  %i.cy = and i32 %i.cl, -8
  %i.cz = load i32, ptr %i.ai, align 4, !tbaa !212
  %i.da = icmp eq i32 %i.cy, %i.cz
  br i1 %i.da, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i103, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i90

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i103: ; preds = %bb.g
  %i.db = and i32 %i.co, -8
  %i.dc = load i32, ptr %i.aj, align 8, !tbaa !212
  %i.dd = icmp eq i32 %i.db, %i.dc
  br i1 %i.dd, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i104, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i90

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i104: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i103
  %i.de = load ptr, ptr %i.ak, align 8, !tbaa !327 ; 2 uses
  %i.df = shl i32 %i.cu, 6
  %i.dg = and i32 %i.df, 448
  %i.dh = shl i32 %i.cl, 3
  %i.di = and i32 %i.dh, 56
  %i.dj = and i32 %i.co, 7
  %i.dk = or disjoint i32 %i.dg, %i.dj
  %i.dl = or disjoint i32 %i.dk, %i.di
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dm
  %.not.i.not.i105 = icmp eq ptr %i.de, null
  br i1 %.not.i.not.i105, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i90, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit106

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i90: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i104, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i103, %bb.g, %bb.f
  %i.do = and i32 %i.cu, -128                     ; 3 uses
  %i.dp = load i32, ptr %i.al, align 4, !tbaa !212
  %i.dq = icmp eq i32 %i.do, %i.dp
  br i1 %i.dq, label %bb.h, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i91

bb.h:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i90
  %i.dr = and i32 %i.cl, -128
  %i.ds = load i32, ptr %i.am, align 8, !tbaa !212
  %i.dt = icmp eq i32 %i.dr, %i.ds
  br i1 %i.dt, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i101, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i91

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i101: ; preds = %bb.h
  %i.du = and i32 %i.co, -128
  %i.dv = load i32, ptr %i.an, align 4, !tbaa !212
  %i.dw = icmp eq i32 %i.du, %i.dv
  br i1 %i.dw, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i102, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i91

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i102: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i101
  %i.dx = load ptr, ptr %i.at, align 8, !tbaa !359
  %i.dy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.dx, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.af)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit106

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i91: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i101, %bb.h, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i90
  %i.dz = and i32 %i.cu, -4096                    ; 2 uses
  %i.ea = load i32, ptr %i.ao, align 8, !tbaa !212
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.i, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i92

bb.i:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i91
  %i.ec = and i32 %i.cl, -4096
  %i.ed = load i32, ptr %i.ap, align 4, !tbaa !212
  %i.ee = icmp eq i32 %i.ec, %i.ed
  br i1 %i.ee, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i94, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i92

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i94: ; preds = %bb.i
  %i.ef = and i32 %i.co, -4096
  %i.eg = load i32, ptr %i.aq, align 8, !tbaa !212
  %i.eh = icmp eq i32 %i.ef, %i.eg
  br i1 %i.eh, label %bb.j, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i92

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i94
  %i.ei = load ptr, ptr %i.as, align 8, !tbaa !360 ; 2 uses
  %i.ej = shl i32 %i.cu, 3
  %i.ek = and i32 %i.ej, 31744
  %i.el = lshr i32 %i.cl, 2
  %i.em = and i32 %i.el, 992
  %i.en = or disjoint i32 %i.em, %i.ek            ; 2 uses
  %i.eo = lshr i32 %i.co, 7
  %i.ep = and i32 %i.eo, 31
  %i.eq = or disjoint i32 %i.en, %i.ep            ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 262144
  %i.es = lshr i32 %i.en, 6
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !215
  %i.ew = and i32 %i.eq, 63
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = shl nuw i64 1, %i.ex
  %i.ez = and i64 %i.ev, %i.ey
  %.not.i.i.i95 = icmp eq i64 %i.ez, 0
  %i.fa = zext nneg i32 %i.eq to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.fa ; 3 uses
  br i1 %.not.i.i.i95, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit106, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !76
  %i.fd = and i32 %i.cl, -128
  %i.fe = and i32 %i.co, -128
  %.sroa.2.0.insert.ext.i.i.i.i96 = zext i32 %i.fd to i64
  %.sroa.2.0.insert.shift.i.i.i.i97 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i96, 32
  %.sroa.0.0.insert.ext.i.i.i.i98 = zext i32 %i.do to i64
  %.sroa.0.0.insert.insert.i.i.i.i99 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i97, %.sroa.0.0.insert.ext.i.i.i.i98
  store i64 %.sroa.0.0.insert.insert.i.i.i.i99, ptr %i.al, align 4
  store i32 %i.fe, ptr %i.an, align 4, !tbaa !76
  store ptr %i.fc, ptr %i.at, align 8, !tbaa !359
  %i.ff = load ptr, ptr %i.fb, align 8, !tbaa !76
  %i.fg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.ff, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.af)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit106

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i92: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i94, %bb.i, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i91
  %i.fh = load ptr, ptr %i.ar, align 8, !tbaa !328 ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 60
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !212
  %i.fk = sub nsw i32 %i.cl, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !212
  %i.fn = sub nsw i32 %i.co, %i.fm
  %i.fo = and i32 %i.fk, -4096                    ; 4 uses
  %i.fp = and i32 %i.fn, -4096                    ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !216 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %.not12.i.i.i.i.i229 = icmp eq ptr %i.fr, null
  br i1 %.not12.i.i.i.i.i229, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i255, label %.lr.ph.i.i.i.i.i230

.lr.ph.i.i.i.i.i230:                              ; preds = %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i92
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !212
  %i.fv = sub nsw i32 %i.cu, %i.fu
end_hunk_3
begin_hunk_4_@_ZNK7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11MeasureAreaclERKNS4_11LeafManagerIKSD_E9LeafRangeE:bb.a
  %i.agn = load ptr, ptr %i.agk, align 8, !tbaa !76
  %i.ago = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.agn, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(96) %i.af)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, %bb.ck, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i
  %i.agp = load ptr, ptr %i.ar, align 8, !tbaa !328 ; 6 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 60
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !212
  %i.ags = sub nsw i32 %i.aeg, %i.agr
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agp, i64 64
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !212
  %i.agv = sub nsw i32 %i.aea, %i.agu
  %i.agw = and i32 %i.ags, -4096                  ; 4 uses
  %i.agx = and i32 %i.agv, -4096                  ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agp, i64 16
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !216 ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agp, i64 8 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.agz, null
  br i1 %.not12.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agp, i64 56
  %i.ahc = load i32, ptr %i.ahb, align 8, !tbaa !212
  %i.ahd = sub nsw i32 %i.aeb, %i.ahc
  %i.ahe = and i32 %i.ahd, -4096                  ; 4 uses
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.agz, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ] ; 7 uses
  %.0813.i.i.i.i.i = phi ptr [ %i.aha, %.lr.ph.i.i.i.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ]
  %i.ahf = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 32
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !212 ; 2 uses
  %i.ahh = icmp slt i32 %i.ahg, %i.ahe
  br i1 %i.ahh, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ahi = icmp sgt i32 %i.ahg, %i.ahe
  br i1 %i.ahi, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ahj = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 36
  %i.ahk = load i32, ptr %i.ahj, align 4, !tbaa !212 ; 2 uses
  %i.ahl = icmp slt i32 %i.ahk, %i.agw
  br i1 %i.ahl, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ahm = icmp sgt i32 %i.ahk, %i.agw
  br i1 %i.ahm, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i: ; preds = %bb.cq
  %i.ahn = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !212
  %i.ahp = icmp slt i32 %i.aho, %i.agx
  br i1 %i.ahp, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.cp, %bb.cn
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.cq, %bb.co
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ 16, %bb.cq ], [ 16, %bb.co ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0813.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ %.014.i.i.i.i.i, %bb.cq ], [ %.014.i.i.i.i.i, %bb.co ], [ %.014.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ] ; 7 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.ahq, align 8, !tbaa !221 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, label %bb.cn, !llvm.loop !361

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i
  %i.ahr = icmp eq ptr %.19.i.i.i.i.i, %i.aha
  br i1 %i.ahr, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i
  %i.ahs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !212 ; 2 uses
  %i.ahu = icmp slt i32 %i.ahe, %i.aht
  br i1 %i.ahu, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ahv = icmp sgt i32 %i.ahe, %i.aht
  br i1 %i.ahv, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ahw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !212 ; 2 uses
  %i.ahy = icmp slt i32 %i.agw, %i.ahx
  br i1 %i.ahy, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ahz = icmp sgt i32 %i.agw, %i.ahx
  br i1 %i.ahz, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.cu
  %i.aia = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !212
  %i.aic = icmp slt i32 %i.agx, %i.aib
  br i1 %i.aic, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.ct, %bb.cr, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i
  %i.aid = getelementptr inbounds nuw i8, ptr %i.agp, i64 48
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.cu, %bb.cs
  %i.aie = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 48 ; 2 uses
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !362 ; 2 uses
  %.not.i = icmp eq ptr %i.aif, null
  br i1 %.not.i, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.aig = and i32 %i.aea, -4096
  %.sroa.0.0.insert.insert.i.i110 = and i64 %i.ady, -17587891081216
  store i64 %.sroa.0.0.insert.insert.i.i110, ptr %i.ao, align 8
  store i32 %i.aig, ptr %i.aq, align 8, !tbaa !76
  store ptr %i.aif, ptr %i.as, align 8, !tbaa !360
  %i.aih = load ptr, ptr %i.aie, align 8, !tbaa !365 ; 2 uses
  %i.aii = shl i32 %i.aeb, 3
  %i.aij = and i32 %i.aii, 31744
  %i.aik = lshr i32 %i.aeg, 2
  %i.ail = and i32 %i.aik, 992
  %i.aim = or disjoint i32 %i.ail, %i.aij         ; 2 uses
  %i.ain = lshr i32 %i.aea, 7
  %i.aio = and i32 %i.ain, 31
  %i.aip = or disjoint i32 %i.aim, %i.aio         ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aih, i64 262144
  %i.air = lshr i32 %i.aim, 6
  %i.ais = zext nneg i32 %i.air to i64
  %i.ait = getelementptr inbounds nuw [8 x i8], ptr %i.aiq, i64 %i.ais
  %i.aiu = load i64, ptr %i.ait, align 8, !tbaa !215
  %i.aiv = and i32 %i.aip, 63
  %i.aiw = zext nneg i32 %i.aiv to i64
  %i.aix = shl nuw i64 1, %i.aiw
  %i.aiy = and i64 %i.aiu, %i.aix
  %.not.i.i111 = icmp eq i64 %i.aiy, 0
  %i.aiz = zext nneg i32 %i.aip to i64
  %i.aja = getelementptr inbounds nuw [8 x i8], ptr %i.aih, i64 %i.aiz ; 3 uses
  br i1 %.not.i.i111, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !76
  %i.ajc = and i32 %i.aea, -128
  %.sroa.0.0.insert.insert.i.i.i = and i64 %i.ady, -545460846720
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.al, align 4
  store i32 %i.ajc, ptr %i.an, align 4, !tbaa !76
  store ptr %i.ajb, ptr %i.at, align 8, !tbaa !359
  %i.ajd = load ptr, ptr %i.aja, align 8, !tbaa !76
  %i.aje = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.ajd, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(96) %i.af)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

bb.cx:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.ajf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit: ; preds = %bb.cx, %bb.cw, %bb.cv, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i, %bb.cl, %bb.cm
  %.1.i.i = phi ptr [ %i.aew, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i ], [ %i.afh, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i ], [ %i.ago, %bb.cm ], [ %i.agk, %bb.cl ], [ %i.aid, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.ajf, %bb.cx ], [ %i.aje, %bb.cw ], [ %i.aja, %bb.cv ]
  %i.ajg = load double, ptr %.1.i.i, align 8, !tbaa !86 ; 2 uses
  %i.ajh = load ptr, ptr %i.ae, align 8, !tbaa !46 ; 6 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 48
  store double %i.ajg, ptr %i.aji, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajh, i64 16
  %i.ajk = load double, ptr %i.ajj, align 8, !tbaa !86, !noalias !367
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  %i.ajm = load double, ptr %i.ajl, align 8, !tbaa !86, !noalias !367
  %i.ajn = fsub double %i.ajk, %i.ajm
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajh, i64 32
  %i.ajp = load double, ptr %i.ajo, align 8, !tbaa !86, !noalias !367
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajh, i64 24
  %i.ajr = load double, ptr %i.ajq, align 8, !tbaa !86, !noalias !367
  %i.ajs = fsub double %i.ajp, %i.ajr
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajh, i64 40
  %i.aju = load double, ptr %i.ajt, align 8, !tbaa !86, !noalias !367
  %i.ajv = fsub double %i.ajg, %i.aju
  %i.ajw = load double, ptr %i.au, align 8, !tbaa !336, !noalias !367 ; 3 uses
  %i.ajx = fmul double %i.ajn, %i.ajw
  %i.ajy = fmul double %i.ajs, %i.ajw
  %i.ajz = fmul double %i.ajw, %i.ajv             ; 3 uses
  %i.aka = load i32, ptr %i.ad, align 8, !tbaa !212
  %i.akb = sitofp i32 %i.aka to double
  %i.akc = load <2 x i32>, ptr %i.ag, align 4, !tbaa !212
  %i.akd = sitofp <2 x i32> %i.akc to <2 x double> ; 2 uses
  %i.ake = insertelement <2 x double> poison, double %i.ajy, i64 0 ; 2 uses
  %i.akf = shufflevector <2 x double> %i.ake, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akg = shufflevector <2 x double> %i.ake, <2 x double> %i.akd, <2 x i32> <i32 0, i32 2>
  %i.akh = fmul <2 x double> %i.akf, %i.akg
  %i.aki = insertelement <2 x double> poison, double %i.ajx, i64 0
  %i.akj = shufflevector <2 x double> %i.aki, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.akk = insertelement <2 x double> %i.akj, double %i.akb, i64 1
  %i.akl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akj, <2 x double> %i.akk, <2 x double> %i.akh) ; 2 uses
  %i.akm = extractelement <2 x double> %i.akl, i64 0
  %i.akn = call double @llvm.fmuladd.f64(double %i.ajz, double %i.ajz, double %i.akm)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.akn)
  %i.ako = extractelement <2 x double> %i.akl, i64 1
  %i.akp = extractelement <2 x double> %i.akd, i64 1
  %i.akq = call double @llvm.fmuladd.f64(double %i.ajz, double %i.akp, double %i.ako)
  %i.akr = insertelement <2 x double> poison, double %i.by, i64 0
  %i.aks = shufflevector <2 x double> %i.akr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akt = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.aku = insertelement <2 x double> %i.akt, double %i.akq, i64 1
  %i.akv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aks, <2 x double> %i.aku, <2 x double> %i.bn)
  br label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread

_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread: ; preds = %.lr.ph, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit
  %i.akw = phi <2 x double> [ %i.akv, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit ], [ %i.bn, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit ], [ %i.bn, %.lr.ph ] ; 5 uses
  %i.akx = load ptr, ptr %i.av, align 8, !tbaa !228 ; 2 uses
  %i.aky = load i32, ptr %i.ab, align 8, !tbaa !201
  %i.akz = add i32 %i.aky, 1                      ; 4 uses
  %i.ala = lshr i32 %i.akz, 6                     ; 3 uses
  %i.alb = icmp ugt i32 %i.akz, 511
  br i1 %i.alb, label %._crit_edge, label %bb.cy

bb.cy:                                            ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread
  %i.alc = and i32 %i.akz, 63
  %i.ald = zext nneg i32 %i.ala to i64            ; 2 uses
  %i.ale = getelementptr inbounds nuw [8 x i8], ptr %i.akx, i64 %i.ald
  %i.alf = load i64, ptr %i.ale, align 8, !tbaa !215 ; 2 uses
  %i.alg = zext nneg i32 %i.alc to i64            ; 2 uses
  %i.alh = shl nuw i64 1, %i.alg
  %i.ali = and i64 %i.alf, %i.alh
  %.not.i.i.i.i = icmp eq i64 %i.ali, 0
  br i1 %.not.i.i.i.i, label %bb.cz, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.cz:                                            ; preds = %bb.cy
  %i.alj = shl nsw i64 -1, %i.alg
  %i.alk = and i64 %i.alf, %i.alj                 ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.alk, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.a, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader.a:                       ; preds = %bb.cz
  %exitcond.not.i.i.i.i355.a = icmp eq i32 %i.ala, 7
  br i1 %exitcond.not.i.i.i.i355.a, label %._crit_edge, label %.lr.ph357

.lr.ph.i.i.i.i.a:                                 ; preds = %.lr.ph357
  %exitcond.not.i.i.i.i.a = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i.a, label %._crit_edge, label %.lr.ph357, !llvm.loop !229

.lr.ph357:                                        ; preds = %.lr.ph.i.i.i.i.preheader.a, %.lr.ph.i.i.i.i.a
  %indvars.iv.i.i.i.i356 = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i.a ], [ %i.ald, %.lr.ph.i.i.i.i.preheader.a ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i356, 1 ; 4 uses
  %i.all = getelementptr inbounds nuw [8 x i8], ptr %i.akx, i64 %indvars.iv.next.i.i.i.i
  %i.alm = load i64, ptr %i.all, align 8, !tbaa !215 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.alm, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i.a, label %.critedge.loopexit.i.i.i.i, !llvm.loop !229

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph357
  %i.aln = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.cz
  %.016.lcssa.i.i.i.i = phi i32 [ %i.ala, %bb.cz ], [ %i.aln, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.alk, %bb.cz ], [ %i.alm, %.critedge.loopexit.i.i.i.i ]
  %i.alo = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.alp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.alq = trunc nuw nsw i64 %i.alp to i32
  %i.alr = or disjoint i32 %i.alo, %i.alq
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit: ; preds = %bb.cy, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.alr, %.critedge.i.i.i.i ], [ %i.akz, %bb.cy ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ab, align 8, !tbaa !201
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !370
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11MeasureAreaC2ERKSI_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #4 comdat($_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11MeasureAreaC5ERKSI_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !301    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !301
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !261  ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !325
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !269  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.e, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 9223372034707292159, ptr %i.j, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !76
  %.06.i.i.i.i.ptr.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i, align 4, !tbaa !76
  %.06.i.i.i.i.ptr.2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i.i, align 8, !tbaa !76
  store ptr null, ptr %i.i, align 8, !tbaa !327
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.m, ptr %i.k, align 8, !tbaa !328
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  store ptr %i.p, ptr %i.r, align 8, !tbaa !329
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 9223372034707292159, ptr %i.s, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 2147483647, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61, !noalias !371
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !66, !noalias !374 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56, !noalias !374
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !noalias !374
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN7openvdb5v13_04math11GradStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EEC2ERKSE_.exit unwind label %bb.b, !inline_history !193

bb.b:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !46  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %_ZN7openvdb5v13_04math11BaseStencilINS1_11GradStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #24
  br label %_ZN7openvdb5v13_04math11BaseStencilINS1_11GradStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit.i

_ZN7openvdb5v13_04math11BaseStencilINS1_11GradStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.z

_ZN7openvdb5v13_04math11GradStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EEC2ERKSE_.exit: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ag = load double, ptr %2, align 8, !tbaa !86
  %i.ah = fdiv double 5.000000e-01, %i.ag         ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  store double %i.ah, ptr %i.af, align 8, !tbaa !336
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aj = fmul double %i.ah, 4.000000e+00
  %i.ak = fmul double %i.ah, %i.aj
  store double %i.ak, ptr %i.ai, align 8, !tbaa !337
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind noalias writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %.critedge.thread.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !215  ; 2 uses
  %.not.1.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.1.i.i, label %bb.c, label %.critedge.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !215  ; 2 uses
  %.not.2.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.2.i.i, label %bb.d, label %.critedge.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !215  ; 2 uses
  %.not.3.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.3.i.i, label %bb.e, label %.critedge.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !215  ; 2 uses
  %.not.4.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.4.i.i, label %bb.f, label %.critedge.thread.i.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !215  ; 2 uses
  %.not.5.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.5.i.i, label %bb.g, label %.critedge.thread.i.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !215  ; 2 uses
  %.not.6.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.6.i.i, label %bb.h, label %.critedge.thread.i.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !215  ; 2 uses
  %.not.7.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.7.i.i, label %_ZNK7openvdb5v13_04util8NodeMaskILj3EE7beginOnEv.exit, label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.q = phi i64 [ %i.b, %bb.a ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ %i.n, %bb.g ], [ %i.p, %bb.h ]
  %.0712.lcssa.i.i = phi i32 [ 0, %bb.a ], [ 64, %bb.b ], [ 128, %bb.c ], [ 192, %bb.d ], [ 256, %bb.e ], [ 320, %bb.f ], [ 384, %bb.g ], [ 448, %bb.h ]
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.q, i1 true)
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = or disjoint i32 %.0712.lcssa.i.i, %i.s
  br label %_ZNK7openvdb5v13_04util8NodeMaskILj3EE7beginOnEv.exit

_ZNK7openvdb5v13_04util8NodeMaskILj3EE7beginOnEv.exit: ; preds = %bb.h, %.critedge.thread.i.i
  %i.u = phi i32 [ %i.t, %.critedge.thread.i.i ], [ 512, %bb.h ]
  store ptr %1, ptr %0, align 8, !tbaa !377
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.u, ptr %i.v, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.41.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load atomic i32, ptr %i.w seq_cst, align 8
  %.not.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK7openvdb5v13_04util8NodeMaskILj3EE7beginOnEv.exit
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %1)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i.i

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i.i: ; preds = %bb.i, %_ZNK7openvdb5v13_04util8NodeMaskILj3EE7beginOnEv.exit
  %i.y = load ptr, ptr %1, align 8, !tbaa !76     ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE9ValueIterINS0_4util14OnMaskIteratorINS5_8NodeMaskILj3EEEEEKS3_KdNS3_7ValueOnEEC2ERKS9_PSA_.exit

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.ab = atomicrmw xchg ptr %i.aa, i8 1 seq_cst, align 1
  %i.ac = trunc i8 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i ], [ 1, %bb.j ] ; 8 uses
  %i.ad = icmp slt i32 %.sroa.0.02.i.i.i.i.i.i, 17
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ae = icmp sgt i32 %.sroa.0.02.i.i.i.i.i.i, 0
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.k
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i.i.i, 7  ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesC2EPSH_:bb.a
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.f
  invoke void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRangeENS4_5tools15LevelSetMeasureINS4_4GridISF_EENS4_4util15NullInterrupterEE17MeasureCurvaturesEKNS1_16auto_partitionerEE3runERKSI_RKSQ_RSS_RNS1_18task_group_contextE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %.noexc
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.bh = load atomic i8, ptr %i.bg monotonic, align 1
  %i.bi = icmp eq i8 %i.bh, -1
  br i1 %i.bi, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #27
  unreachable

bb.j:                                             ; preds = %.noexc
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.body

bb.k:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.p

bb.l:                                             ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.bm, %bb.l ], [ %i.bl, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.t

bb.m:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !293 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !294, !noalias !395
  store i64 %i.bp, ptr %6, align 8, !tbaa !341, !alias.scope !395
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.bq, align 8, !tbaa !343, !alias.scope !395
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 1, ptr %i.br, align 8, !tbaa !344, !alias.scope !395
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.bn, ptr %i.bs, align 8, !tbaa !293, !alias.scope !395
  invoke void @_ZNK7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesclERKNS4_11LeafManagerIKSD_E9LeafRangeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.t

bb.p:                                             ; preds = %bb.n, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr %i.a, ptr %7, align 8, !tbaa !348
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %i.a, ptr %8, align 8, !tbaa !348
  invoke void @_ZN3tbb6detail2d120parallel_invoke_implIZN7openvdb5v13_05tools15LevelSetMeasureINS4_4GridINS4_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS4_4util15NullInterrupterEE17MeasureCurvaturesC1EPSL_EUlvE0_JZNSM_C1ESN_EUlvE_EEEvRKT_DpRKT0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN3tbb6detail2d115parallel_invokeIJZN7openvdb5v13_05tools15LevelSetMeasureINS4_4GridINS4_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS4_4util15NullInterrupterEE17MeasureCurvaturesC1EPSL_EUlvE_ZNSM_C1ESN_EUlvE0_EEEvDpOT_.exit unwind label %bb.r

_ZN3tbb6detail2d115parallel_invokeIJZN7openvdb5v13_05tools15LevelSetMeasureINS4_4GridINS4_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS4_4util15NullInterrupterEE17MeasureCurvaturesC1EPSL_EUlvE_ZNSM_C1ESN_EUlvE0_EEEvDpOT_.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !299 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 85
  store i8 0, ptr %i.bv, align 1, !tbaa !54
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !259 ; 3 uses
  %.not5 = icmp eq ptr %i.bx, null
  br i1 %.not5, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZN3tbb6detail2d115parallel_invokeIJZN7openvdb5v13_05tools15LevelSetMeasureINS4_4GridINS4_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS4_4util15NullInterrupterEE17MeasureCurvaturesC1EPSL_EUlvE_ZNSM_C1ESN_EUlvE0_EEEvDpOT_.exit
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !56
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %bb.s unwind label %bb.d

bb.r:                                             ; preds = %bb.p
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %_ZN3tbb6detail2d115parallel_invokeIJZN7openvdb5v13_05tools15LevelSetMeasureINS4_4GridINS4_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS4_4util15NullInterrupterEE17MeasureCurvaturesC1EPSL_EUlvE_ZNSM_C1ESN_EUlvE0_EEEvDpOT_.exit
  ret void

bb.t:                                             ; preds = %bb.r, %bb.o, %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.d ], [ %i.cb, %bb.r ], [ %eh.lpad-body, %.body ], [ %i.bt, %bb.o ] ; 2 uses
  %i.cc = load ptr, ptr %i.n, align 8, !tbaa !46  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i, label %common.resume, label %common.resume.sink.split
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZNK7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesclERKNS4_11LeafManagerIKSD_E9LeafRangeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !379
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !259  ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit, label %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i

_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i: ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef -1), !inline_history !350
  br i1 %i.g, label %bb.b, label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit

bb.b:                                             ; preds = %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i
  %i.h = tail call noundef ptr @_ZN3tbb6detail2r115current_contextEv() ; 4 uses
  %.not.i2.i = icmp eq ptr %i.h, null
  br i1 %.not.i2.i, label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %i.j = load atomic i8, ptr %i.i monotonic, align 1
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %bb.d, label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76
  br label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i

_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.h, %bb.c ]
  %i.n = tail call noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i) ; 0 uses
  br label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit

_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit: ; preds = %bb.a, %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i, %bb.b, %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i
  %i.o = load ptr, ptr %0, align 8, !tbaa !379    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load double, ptr %i.p, align 8, !tbaa !268 ; 4 uses
  %i.r = fmul double %i.q, %i.q
  %i.s = fdiv double 1.000000e+00, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !293
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !294
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !343  ; 2 uses
  %i.z = load i64, ptr %1, align 8, !tbaa !341
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph52, label %._crit_edge53

.lr.ph52:                                         ; preds = %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = insertelement <2 x double> poison, double %i.q, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.r, i64 1
  br label %bb.e

._crit_edge53:                                    ; preds = %._crit_edge, %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  ret void

bb.e:                                             ; preds = %.lr.ph52, %._crit_edge
  %.sroa.5.051 = phi i64 [ %i.y, %.lr.ph52 ], [ %i.az, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !351, !nonnull !30, !align !198
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !352
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.sroa.5.051
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !353
  call void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %2, ptr noundef nonnull align 8 dereferenceable(96) %i.aq)
  %i.ar = load i32, ptr %i.ac, align 8, !tbaa !201 ; 2 uses
  %.not47 = icmp eq i32 %i.ar, 512
  br i1 %.not47, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader.a, %.lr.ph.i.i.i.i.a, %bb.e
  %3 = phi <2 x double> [ zeroinitializer, %bb.e ], [ %i.ih, %.lr.ph.i.i.i.i.a ], [ %i.ih, %.lr.ph.i.i.i.i.preheader.a ], [ %i.ih, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ %i.ih, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.as = load ptr, ptr %0, align 8, !tbaa !379
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !60
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.sroa.5.051 ; 2 uses
  %i.aw = extractelement <2 x double> %3, i64 0
  store double %i.aw, ptr %i.av, align 8, !tbaa !86
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.w
  %i.ay = extractelement <2 x double> %3, i64 1
  store double %i.ay, ptr %i.ax, align 8, !tbaa !86
  %i.az = add nuw i64 %.sroa.5.051, 1             ; 2 uses
  %i.ba = load i64, ptr %1, align 8, !tbaa !341
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %._crit_edge53, !llvm.loop !398

.lr.ph:                                           ; preds = %bb.e, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit
  %i.bc = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ %i.ar, %bb.e ] ; 3 uses
  %i.bd = phi <2 x double> [ %i.ih, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ zeroinitializer, %bb.e ] ; 3 uses
  %i.be = load ptr, ptr %i.ad, align 8, !tbaa !355
  %i.bf = zext i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !86
  %i.bi = fmul double %i.s, %i.bh                 ; 2 uses
  %i.bj = call noundef double @llvm.fabs.f64(double %i.bi)
  %i.bk = fcmp ogt double %i.bj, 1.500000e+00
  br i1 %i.bk, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit

_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit: ; preds = %.lr.ph
  %i.bl = fmul double %i.bi, f0x4000C152382D7365
  %i.bm = call double @cos(double noundef %i.bl) #21
  %i.bn = fadd double %i.bm, 1.000000e+00
  %i.bo = fmul double %i.bn, f0x3FD5555555555555  ; 2 uses
  %i.bp = fcmp ogt double %i.bo, 0.000000e+00
  br i1 %i.bp, label %bb.f, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread

bb.f:                                             ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit
  %i.bq = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %2) ; 3 uses
  %i.br = load i32, ptr %i.ac, align 8, !tbaa !201 ; 4 uses
  %i.bs = lshr i32 %i.br, 6
  %i.bt = lshr i32 %i.br, 3
  %i.bu = and i32 %i.bt, 7
  %i.bv = and i32 %i.br, 7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !212
  %i.by = add nsw i32 %i.bx, %i.bs
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 84
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !212
  %i.cb = add nsw i32 %i.ca, %i.bu
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !212
  %i.ce = add nsw i32 %i.cd, %i.bv
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.cb to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i9.i.i.i = zext i32 %i.by to i64
  %.sroa.0.0.insert.insert.i10.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i9.i.i.i
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i, ptr %i.af, align 8
  store i32 %i.ce, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !76
  %i.cf = load ptr, ptr %i.ad, align 8, !tbaa !355
  %i.cg = zext i32 %i.br to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !86
  %i.cj = load ptr, ptr %i.ag, align 8, !tbaa !46
  store double %i.ci, ptr %i.cj, align 8, !tbaa !86
  call void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(160) %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %i.af)
  %i.ck = load ptr, ptr %i.ag, align 8, !tbaa !46, !noalias !399 ; 16 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.co = load <4 x double>, ptr %i.cm, align 8, !tbaa !86, !noalias !399 ; 4 uses
  %i.cp = load double, ptr %i.cn, align 8, !tbaa !86, !noalias !399
  %i.cq = load double, ptr %i.cl, align 8, !tbaa !86, !noalias !399
  %i.cr = extractelement <4 x double> %i.co, i64 0
  %i.cs = fsub double %i.cq, %i.cr                ; 2 uses
  %i.ct = extractelement <4 x double> %i.co, i64 2
  %i.cu = fsub double %i.cp, %i.ct                ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !86, !noalias !399 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !86, !noalias !399 ; 2 uses
  %i.cz = fsub double %i.cw, %i.cy                ; 2 uses
  %i.da = load double, ptr %i.ah, align 8, !tbaa !390, !noalias !399 ; 4 uses
  %i.db = fmul double %i.cs, %i.da                ; 2 uses
  %i.dc = fmul double %i.cu, %i.da                ; 2 uses
  %i.dd = fmul double %i.da, %i.cz                ; 2 uses
  %i.de = fmul double %i.dc, %i.dc
  %i.df = call double @llvm.fmuladd.f64(double %i.db, double %i.db, double %i.de)
  %i.dg = call double @llvm.fmuladd.f64(double %i.dd, double %i.dd, double %i.df)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.dg)
  %i.dh = fmul double %i.bo, %sqrt.i
  %i.di = fmul double %i.cs, 5.000000e-01         ; 5 uses
  %i.dj = fmul double %i.cu, 5.000000e-01         ; 5 uses
  %i.dk = fmul double %i.cz, 5.000000e-01         ; 5 uses
  %i.dl = fmul double %i.di, %i.di                ; 2 uses
  %i.dm = fmul double %i.dj, %i.dj                ; 2 uses
  %i.dn = fmul double %i.dk, %i.dk                ; 2 uses
  %i.do = fadd double %i.dl, %i.dm
  %i.dp = fadd double %i.do, %i.dn                ; 2 uses
  %i.dq = fcmp ugt double %i.dp, 1.000000e-15
  br i1 %i.dq, label %bb.g, label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERdSG_.exit

bb.g:                                             ; preds = %bb.f
  %i.dr = load double, ptr %i.ck, align 8, !tbaa !86 ; 2 uses
  %i.ds = call double @llvm.fmuladd.f64(double %i.dr, double -2.000000e+00, double %i.cw)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ck, i64 80
  %i.du = load double, ptr %i.dt, align 8, !tbaa !86
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !86
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ck, i64 112
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !86
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !86
  %i.ec = fsub double %i.dz, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ck, i64 88
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !86
  %i.ef = fadd double %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ck, i64 104
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !86
  %i.ei = fsub double %i.ef, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ck, i64 144
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !86
  %i.el = getelementptr inbounds nuw i8, ptr %i.ck, i64 120
  %i.em = load <2 x double>, ptr %i.dv, align 8, !tbaa !86 ; 2 uses
  %i.en = load <2 x double>, ptr %i.el, align 8, !tbaa !86 ; 2 uses
  %i.eo = insertelement <2 x double> poison, double %i.du, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %i.ek, i64 1
  %i.eq = shufflevector <2 x double> %i.em, <2 x double> %i.en, <2 x i32> <i32 1, i32 3>
  %i.er = fsub <2 x double> %i.ep, %i.eq
  %i.es = shufflevector <2 x double> %i.em, <2 x double> %i.en, <2 x i32> <i32 0, i32 2>
  %i.et = fadd <2 x double> %i.er, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ck, i64 136
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !86
  %i.ew = fmul double %i.dj, %i.dk                ; 2 uses
  %i.ex = fmul double %i.di, %i.dk
  %i.ey = fmul double %i.di, %i.dj
  %sqrt.i23 = call double @llvm.sqrt.f64(double %i.dp) ; 3 uses
  %i.ez = fmul double %sqrt.i23, %sqrt.i23
  %i.fa = load double, ptr %i.ai, align 8, !tbaa !391
  %i.fb = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.fc = insertelement <2 x double> %i.fb, double %i.ev, i64 1
  %i.fd = fsub <2 x double> %i.et, %i.fc
  %i.fe = fmul double %i.ei, 2.500000e-01         ; 6 uses
  %i.ff = fmul <2 x double> %i.fd, splat (double 2.500000e-01) ; 6 uses
  %i.fg = extractelement <2 x double> %i.ff, i64 1 ; 3 uses
  %i.fh = fneg double %i.fg
  %i.fi = fmul double %i.fg, %i.fh
  %i.fj = fadd double %i.cy, %i.ds                ; 5 uses
  %i.fk = extractelement <2 x double> %i.ff, i64 0 ; 2 uses
  %i.fl = fneg double %i.fk
  %i.fm = fmul double %i.fk, %i.fl
  %i.fn = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = shufflevector <4 x double> %i.co, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.fq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> splat (double -2.000000e+00), <2 x double> %i.fp)
  %i.fr = shufflevector <4 x double> %i.co, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.fs = fadd <2 x double> %i.fr, %i.fq          ; 3 uses
  %i.ft = extractelement <2 x double> %i.fs, i64 0 ; 4 uses
  %i.fu = extractelement <2 x double> %i.fs, i64 1 ; 4 uses
  %i.fv = fmul double %i.ew, %i.fg
  %i.fw = fneg double %i.fe
  %i.fx = fadd double %i.fu, %i.fj
  %i.fy = fadd double %i.ft, %i.fj
  %i.fz = fadd double %i.ft, %i.fu
  %i.ga = call double @llvm.fmuladd.f64(double %i.fu, double %i.fj, double %i.fi)
  %i.gb = fmul double %i.fe, %i.fw
  %i.gc = call double @llvm.fmuladd.f64(double %i.ft, double %i.fj, double %i.gb)
  %i.gd = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gf = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %i.fy, i64 1
  %i.gh = fmul <2 x double> %i.ge, %i.gg
  %i.gi = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gk = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.gl = insertelement <2 x double> %i.gk, double %i.fx, i64 1
  %i.gm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> %i.gl, <2 x double> %i.gh)
  %i.gn = call double @llvm.fmuladd.f64(double %i.ft, double %i.fu, double %i.fm)
  %i.go = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gq = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %i.fz, i64 1
  %i.gs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> %i.gr, <2 x double> %i.gm)
  %i.gt = fneg <2 x double> %i.fs
  %i.gu = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gv = insertelement <2 x double> %i.gu, double %i.fe, i64 1
  %i.gw = fmul <2 x double> %i.gv, %i.gt
  %i.gx = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gy = insertelement <2 x double> %i.ff, double %i.fe, i64 0
  %i.gz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gx, <2 x double> %i.gy, <2 x double> %i.gw) ; 2 uses
  %i.ha = extractelement <2 x double> %i.gz, i64 1
  %i.hb = fmul double %i.ex, %i.ha
  %i.hc = extractelement <2 x double> %i.gz, i64 0
  %i.hd = call double @llvm.fmuladd.f64(double %i.ew, double %i.hc, double %i.hb)
  %i.he = fneg double %i.fj
  %i.hf = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.hg = insertelement <2 x double> %i.hf, double %i.he, i64 1
  %i.hh = insertelement <2 x double> %i.gu, double %i.fe, i64 0
  %i.hi = fmul <2 x double> %i.hg, %i.hh
  %i.hj = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.hk = insertelement <2 x double> %i.hj, double %i.fe, i64 1
  %i.hl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> %i.ff, <2 x double> %i.hi)
  %i.hm = insertelement <2 x double> poison, double %i.di, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.ey, i64 1
  %i.ho = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.hp = insertelement <2 x double> %i.ho, double %i.hd, i64 1
  %i.hq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hn, <2 x double> %i.hl, <2 x double> %i.hp)
  %i.hr = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %i.hr)
  %i.ht = insertelement <2 x double> poison, double %i.da, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.fa, i64 1
  %i.hv = fmul <2 x double> %i.hu, %i.hs
  %i.hw = insertelement <2 x double> poison, double %sqrt.i23, i64 0
  %i.hx = insertelement <2 x double> %i.hw, double %i.ez, i64 1 ; 2 uses
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hz = fmul <2 x double> %i.hx, %i.hy
  %i.ia = fdiv <2 x double> %i.hv, %i.hz
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERdSG_.exit

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERdSG_.exit: ; preds = %bb.f, %bb.g
  %i.ib = phi <2 x double> [ %i.ia, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.ic = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = fmul <2 x double> %i.id, %i.ib
  %i.if = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> %i.al, <2 x double> %i.bd)
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !201
  br label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread

_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread: ; preds = %.lr.ph, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERdSG_.exit, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit
  %i.ig = phi i32 [ %.pre, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERdSG_.exit ], [ %i.bc, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit ], [ %i.bc, %.lr.ph ]
  %i.ih = phi <2 x double> [ %i.if, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERdSG_.exit ], [ %i.bd, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit ], [ %i.bd, %.lr.ph ] ; 5 uses
  %i.ii = load ptr, ptr %i.aj, align 8, !tbaa !228 ; 2 uses
  %i.ij = add i32 %i.ig, 1                        ; 4 uses
  %i.ik = lshr i32 %i.ij, 6                       ; 3 uses
  %i.il = icmp ugt i32 %i.ij, 511
  br i1 %i.il, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread
  %i.im = and i32 %i.ij, 63
  %i.in = zext nneg i32 %i.ik to i64              ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.in
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !215 ; 2 uses
  %i.iq = zext nneg i32 %i.im to i64              ; 2 uses
  %i.ir = shl nuw i64 1, %i.iq
  %i.is = and i64 %i.ip, %i.ir
  %.not.i.i.i.i = icmp eq i64 %i.is, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.i:                                             ; preds = %bb.h
  %i.it = shl nsw i64 -1, %i.iq
  %i.iu = and i64 %i.ip, %i.it                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.iu, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.a, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader.a:                       ; preds = %bb.i
  %exitcond.not.i.i.i.i75.a = icmp eq i32 %i.ik, 7
  br i1 %exitcond.not.i.i.i.i75.a, label %._crit_edge, label %.lr.ph77

.lr.ph.i.i.i.i.a:                                 ; preds = %.lr.ph77
  %exitcond.not.i.i.i.i.a = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i.a, label %._crit_edge, label %.lr.ph77, !llvm.loop !229

.lr.ph77:                                         ; preds = %.lr.ph.i.i.i.i.preheader.a, %.lr.ph.i.i.i.i.a
  %indvars.iv.i.i.i.i76 = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i.a ], [ %i.in, %.lr.ph.i.i.i.i.preheader.a ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i76, 1 ; 4 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.next.i.i.i.i
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !215 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.iw, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i.a, label %.critedge.loopexit.i.i.i.i, !llvm.loop !229

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph77
  %i.ix = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.i
  %.016.lcssa.i.i.i.i = phi i32 [ %i.ik, %bb.i ], [ %i.ix, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.iu, %bb.i ], [ %i.iw, %.critedge.loopexit.i.i.i.i ]
  %i.iy = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.iz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.ja = trunc nuw nsw i64 %i.iz to i32
  %i.jb = or disjoint i32 %i.iy, %i.ja
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit: ; preds = %bb.h, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.jb, %.critedge.i.i.i.i ], [ %i.ij, %bb.h ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ac, align 8, !tbaa !201
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !402
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesC2ERKSI_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #4 comdat($_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesC5ERKSI_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !379    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !379
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !261  ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !383
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !269  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.e, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 9223372034707292159, ptr %i.j, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !76
  %.06.i.i.i.i.ptr.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i, align 4, !tbaa !76
  %.06.i.i.i.i.ptr.2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i.i, align 8, !tbaa !76
  store ptr null, ptr %i.i, align 8, !tbaa !327
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.m, ptr %i.k, align 8, !tbaa !328
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #26 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.o, i8 0, i64 152, i1 false)
  store ptr %i.p, ptr %i.r, align 8, !tbaa !329
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 9223372034707292159, ptr %i.s, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 2147483647, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61, !noalias !403
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !66, !noalias !406 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56, !noalias !406
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !noalias !406
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EEC2ERKSE_.exit unwind label %bb.b, !inline_history !193

bb.b:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !46  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #24
  br label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit.i

_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.z

_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EEC2ERKSE_.exit: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ag = load double, ptr %2, align 8, !tbaa !86
  %i.ah = fdiv double 5.000000e-01, %i.ag         ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  store double %i.ah, ptr %i.af, align 8, !tbaa !390
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aj = fmul double %i.ah, 4.000000e+00
  %i.ak = fmul double %i.ah, %i.aj
  store double %i.ak, ptr %i.ai, align 8, !tbaa !391
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef double @_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE6reduceEi(ptr noundef nonnull align 8 dereferenceable(86) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::less.339", align 1    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !293
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !294  ; 5 uses
  %i.h = mul i64 %i.g, %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.h ; 6 uses
  %.idx = shl i64 %i.g, 3                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %.not10 = icmp eq i64 %i.g, 0
  br i1 %.not10, label %_ZN3tbb6detail2d113parallel_sortIPdEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %i.g, 500
  br i1 %i.k, label %_ZSt4sortIPdSt4lessIdEEvT_S3_T0_.exit.i.i, label %bb.c

_ZSt4sortIPdSt4lessIdEEvT_S3_T0_.exit.i.i:        ; preds = %bb.b
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  tail call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %i.i, ptr noundef nonnull %i.j, i64 noundef %i.n)
  tail call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %i.i, ptr noundef nonnull %i.j)
  br label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  call void @_ZN3tbb6detail2d119parallel_quick_sortIPdSt4lessIdEEEvT_S6_RKT0_(ptr noundef %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %.lr.ph.preheader

_ZN3tbb6detail2d113parallel_sortIPdEEvT_S4_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZSt4sortIPdSt4lessIdEEvT_S3_T0_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.o = add i64 %.idx, -8                        ; 2 uses
  %i.p = lshr exact i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 1
  %xtraiter = and i64 %i.q, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.013.prol = phi double [ %i.t, %.lr.ph.prol ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.0912.prol = phi ptr [ %i.r, %.lr.ph.prol ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %.0912.prol, i64 8 ; 2 uses
  %i.s = load double, ptr %.0912.prol, align 8, !tbaa !86
  %i.t = fadd double %.013.prol, %i.s             ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !409

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %.013.unr = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %.0912.unr = phi ptr [ %i.i, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %i.u = icmp ult i64 %i.o, 56
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.013 = phi double [ %i.as, %.lr.ph ], [ %.013.unr, %.lr.ph.prol.loopexit ]
  %.0912 = phi ptr [ %i.aq, %.lr.ph ], [ %.0912.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0912, i64 8
  %i.w = load double, ptr %.0912, align 8, !tbaa !86
  %i.x = fadd double %.013, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.0912, i64 16
  %i.z = load double, ptr %i.v, align 8, !tbaa !86
  %i.aa = fadd double %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.0912, i64 24
  %i.ac = load double, ptr %i.y, align 8, !tbaa !86
  %i.ad = fadd double %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.0912, i64 32
  %i.af = load double, ptr %i.ab, align 8, !tbaa !86
  %i.ag = fadd double %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.0912, i64 40
  %i.ai = load double, ptr %i.ae, align 8, !tbaa !86
  %i.aj = fadd double %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.0912, i64 48
  %i.al = load double, ptr %i.ah, align 8, !tbaa !86
  %i.am = fadd double %i.aj, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.0912, i64 56
  %i.ao = load double, ptr %i.ak, align 8, !tbaa !86
  %i.ap = fadd double %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.0912, i64 64 ; 2 uses
  %i.ar = load double, ptr %i.an, align 8, !tbaa !86
  %i.as = fadd double %i.ap, %i.ar                ; 2 uses
  %.not.7 = icmp eq ptr %i.aq, %i.j
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !410

end_hunk_5
