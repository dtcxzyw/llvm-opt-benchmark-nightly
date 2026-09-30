Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/MeshToVolume?download=true
inline.NumInlined: 61374
inline.NumDeleted: 19461
loop-unroll.NumCompletelyUnrolled: 235
loop-unroll.NumRuntimeUnrolled: 314
loop-unroll.NumUnrolled: 949
begin_hunk_0_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSG_IjEEEEE15gatherFragmentsERSt6vectorINSK_8FragmentESaISM_EERKNSF_9CoordBBoxERKS9_RKNS8_IiLj3EEE:bb.a
  %i.bg = icmp sgt i32 %i.be, %i.bf
  br i1 %i.bg, label %._crit_edge67, label %.lr.ph66.split

._crit_edge67:                                    ; preds = %._crit_edge62, %.lr.ph66, %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE4dataEv.exit
  ret void

.lr.ph66.split:                                   ; preds = %.lr.ph66, %._crit_edge62
  %i.bh = phi i32 [ %i.bt, %._crit_edge62 ], [ %i.ax, %.lr.ph66 ] ; 2 uses
  %i.bi = phi i32 [ %i.bu, %._crit_edge62 ], [ %i.bf, %.lr.ph66 ] ; 3 uses
  %i.bj = phi i32 [ %i.bv, %._crit_edge62 ], [ %i.bf, %.lr.ph66 ] ; 3 uses
  %.03064 = phi i32 [ %i.bw, %._crit_edge62 ], [ %i.av, %.lr.ph66 ] ; 5 uses
  %i.bk = shl i32 %.03064, 6
  %i.bl = and i32 %i.bk, 448                      ; 2 uses
  %i.bm = load i32, ptr %i.ay, align 4, !tbaa !543 ; 2 uses
  %.not3158 = icmp sgt i32 %i.bm, %i.bj
  br i1 %.not3158, label %._crit_edge62, label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph66.split
  %i.bn = lshr exact i32 %i.bl, 6
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bo
  %i.bq = load i32, ptr %i.ba, align 4, !tbaa !543
  %i.br = load i32, ptr %i.bb, align 4, !tbaa !543 ; 2 uses
  %i.bs = icmp sgt i32 %i.bq, %i.br
  br i1 %i.bs, label %._crit_edge62, label %.lr.ph61.split

._crit_edge62.loopexit68:                         ; preds = %._crit_edge
  %.pre70 = load i32, ptr %i.aw, align 4, !tbaa !543
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %.lr.ph61, %._crit_edge62.loopexit68, %.lr.ph66.split
  %i.bt = phi i32 [ %.pre70, %._crit_edge62.loopexit68 ], [ %i.bh, %.lr.ph66.split ], [ %i.bh, %.lr.ph61 ] ; 2 uses
  %i.bu = phi i32 [ %i.cc, %._crit_edge62.loopexit68 ], [ %i.bi, %.lr.ph66.split ], [ %i.bi, %.lr.ph61 ]
  %i.bv = phi i32 [ %i.cc, %._crit_edge62.loopexit68 ], [ %i.bj, %.lr.ph66.split ], [ %i.bj, %.lr.ph61 ]
  %i.bw = add nsw i32 %.03064, 1
  %.not.not = icmp slt i32 %.03064, %i.bt
  br i1 %.not.not, label %.lr.ph66.split, label %._crit_edge67, !llvm.loop !9828

.lr.ph61.split:                                   ; preds = %.lr.ph61, %._crit_edge
  %i.bx = phi i32 [ %i.cc, %._crit_edge ], [ %i.bi, %.lr.ph61 ]
  %i.by = phi i32 [ %i.cd, %._crit_edge ], [ %i.br, %.lr.ph61 ] ; 2 uses
  %.02959 = phi i32 [ %i.ce, %._crit_edge ], [ %i.bm, %.lr.ph61 ] ; 5 uses
  %i.bz = shl i32 %.02959, 3
  %i.ca = and i32 %i.bz, 56
  %i.cb = load i32, ptr %i.ba, align 4, !tbaa !543 ; 2 uses
  %.not3256 = icmp sgt i32 %i.cb, %i.by
  br i1 %.not3256, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE9push_backEOSM_.exit
  %.pre = load i32, ptr %i.az, align 4, !tbaa !543
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph61.split
  %i.cc = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.bx, %.lr.ph61.split ] ; 4 uses
  %i.cd = phi i32 [ %i.dq, %._crit_edge.loopexit ], [ %i.by, %.lr.ph61.split ]
  %i.ce = add nsw i32 %.02959, 1
  %.not31.not = icmp slt i32 %.02959, %i.cc
  br i1 %.not31.not, label %.lr.ph61.split, label %._crit_edge62.loopexit68, !llvm.loop !9829

.lr.ph:                                           ; preds = %.lr.ph61.split, %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE9push_backEOSM_.exit
  %.057 = phi i32 [ %i.dp, %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE9push_backEOSM_.exit ], [ %i.cb, %.lr.ph61.split ] ; 5 uses
  %i.cf = and i32 %.057, 7
  %i.cg = or disjoint i32 %i.cf, %i.ca            ; 2 uses
  %i.ch = load i64, ptr %i.bp, align 8, !tbaa !791
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.ch, %i.cj
  %.not55 = icmp eq i64 %i.ck, 0
  br i1 %.not55, label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE9push_backEOSM_.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.cl = or disjoint i32 %i.cg, %i.bl
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !543 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cm
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !572
  %i.cr = tail call noundef float @llvm.fabs.f32(float %i.cq) ; 2 uses
  %i.cs = load ptr, ptr %i.bc, align 8, !tbaa !3853 ; 10 uses
  %i.ct = load ptr, ptr %i.bd, align 8, !tbaa !3855
  %.not.i.i44 = icmp eq ptr %i.cs, %i.ct
  br i1 %.not.i.i44, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.co, ptr %i.cs, align 4, !tbaa !543
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %.03064, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !543
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %.02959, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !543
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 %.057, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !543
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store float %i.cr, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !572
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  store ptr %i.cu, ptr %i.bc, align 8, !tbaa !3853
  br label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE9push_backEOSM_.exit

bb.p:                                             ; preds = %bb.n
  %i.cv = load ptr, ptr %1, align 8, !tbaa !3852  ; 5 uses
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 3 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.q, label %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #29
  unreachable

_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.da = sdiv exact i64 %i.cy, 20                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = tail call i64 @llvm.umin.i64(i64 %i.db, i64 461168601842738790)
  %i.de = select i1 %i.dc, i64 461168601842738790, i64 %i.dd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.de, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.df = mul nuw nsw i64 %i.de, 20
  %i.dg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #30 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy ; 5 uses
  store i32 %i.co, ptr %i.dh, align 4, !tbaa !543
  %.sroa.5.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %.03064, ptr %.sroa.5.0..sroa_idx47, align 4, !tbaa !543
  %.sroa.6.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 %.02959, ptr %.sroa.6.0..sroa_idx49, align 4, !tbaa !543
  %.sroa.7.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 %.057, ptr %.sroa.7.0..sroa_idx51, align 4, !tbaa !543
  %.sroa.8.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store float %i.cr, ptr %.sroa.8.0..sroa_idx53, align 4, !tbaa !572
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cv, %i.cs
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i45

.lr.ph.i.i.i.i.i.i45:                             ; preds = %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i45
  %.012.i.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i45 ], [ %i.dg, %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i45 ], [ %i.cv, %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !3854, !alias.scope !9834
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 20 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, %i.cs
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i45, !llvm.loop !398

_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i45, %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dg, %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.dj, %.lr.ph.i.i.i.i.i.i45 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 20
  %.not.i23.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE17_M_realloc_insertIJSM_EEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit22.i.i.i
  %i.dl = load ptr, ptr %i.bd, align 8, !tbaa !3855
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %i.cx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.dn) #32
  br label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE17_M_realloc_insertIJSM_EEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i.i

_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE17_M_realloc_insertIJSM_EEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit22.i.i.i
  store ptr %i.dg, ptr %1, align 8, !tbaa !3852
  store ptr %i.dk, ptr %i.bc, align 8, !tbaa !3853
  %i.do = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.do, ptr %i.bd, align 8, !tbaa !3855
  br label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE9push_backEOSM_.exit

_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE9push_backEOSM_.exit: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE17_M_realloc_insertIJSM_EEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i.i, %bb.o, %.lr.ph
  %i.dp = add nsw i32 %.057, 1
  %i.dq = load i32, ptr %i.bb, align 4, !tbaa !543 ; 2 uses
  %.not32.not = icmp slt i32 %.057, %i.dq
  br i1 %.not32.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !9833
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEElNS0_5__ops15_Iter_less_iterEEvT_SW_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %.sroa.4.i.i = alloca { i32, i32, i32, float }, align 8 ; 4 uses
  %3 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec3<unsigned int>>>::Fragment", align 4 ; 4 uses
  %4 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec3<unsigned int>>>::Fragment", align 4 ; 4 uses
  %5 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec3<unsigned int>>>::Fragment", align 4 ; 4 uses
  %6 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec3<unsigned int>>>::Fragment", align 4 ; 4 uses
  %7 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec3<unsigned int>>>::Fragment", align 4 ; 4 uses
  %8 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec3<unsigned int>>>::Fragment", align 4 ; 4 uses
  %9 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec3<unsigned int>>>::Fragment", align 4 ; 4 uses
  %.sroa.4.i.i.i = alloca { i32, i32, i32, float }, align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 320
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEET_SW_SW_T0_.exit
  %i.g = icmp eq i64 %i.bu, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43, !llvm.loop !9835

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa39 = phi i64 [ %i.c, %.lr.ph ], [ %i.co, %bb.b ]
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.h = udiv exact i64 %.lcssa39, 20             ; 3 uses
  %i.i = add nsw i64 %i.h, -2
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1                     ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.m, 0
  %i.o = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %i.k
  %i.p = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEElSO_NS0_5__ops15_Iter_less_iterEEvT_T0_SX_T1_T2_.exit.i.i, %._crit_edge
  %.07.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEElSO_NS0_5__ops15_Iter_less_iterEEvT_T0_SX_T1_T2_.exit.i.i ] ; 8 uses
  %i.q = getelementptr inbounds [20 x i8], ptr %0, i64 %.07.i.i ; 2 uses
  %.sroa.015.0.copyload.i.i = load i32, ptr %i.q, align 4, !tbaa !543 ; 2 uses
  %.sroa.416.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.416.0..sroa.0.0..sroa_idx.i.i, i64 16, i1 false)
  %i.r = icmp slt i64 %.07.i.i, %i.l
  br i1 %i.r, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.07.i.i, %bb.c ] ; 2 uses
  %i.s = shl i64 %.038.i.i.i, 1                   ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [20 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [20 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 4, !tbaa !3857
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3857
  %i.z = icmp slt i32 %i.x, %i.y
  %spec.select.i.i.i = select i1 %i.z, i64 %i.v, i64 %i.t ; 4 uses
  %i.aa = getelementptr inbounds [20 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ab = getelementptr inbounds [20 x i8], ptr %0, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ab, ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i64 20, i1 false), !tbaa.struct !3854
  %i.ac = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.ac, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !9836

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.07.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i, %i.j
  %or.cond.i.i = select i1 %i.n, i1 %i.ad, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.p, ptr noundef nonnull align 4 dereferenceable(20) %i.o, i64 20, i1 false), !tbaa.struct !3854
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ae = icmp sgt i64 %.1.i.i.i, %.07.i.i
  br i1 %i.ae, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEElSO_NS0_5__ops15_Iter_less_iterEEvT_T0_SX_T1_T2_.exit.i.i

.lr.ph.i.i.i.i11:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.af = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3857
  %i.ah = icmp slt i32 %i.ag, %.sroa.015.0.copyload.i.i
  br i1 %i.ah, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEElSO_NS0_5__ops15_Iter_less_iterEEvT_T0_SX_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.ai = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ai, ptr noundef nonnull align 4 dereferenceable(20) %i.af, i64 20, i1 false), !tbaa.struct !3854
  %i.aj = icmp sgt i64 %.0919.i.i.i.i, %.07.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEElSO_NS0_5__ops15_Iter_less_iterEEvT_T0_SX_T1_T2_.exit.i.i, !llvm.loop !9837

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEElSO_NS0_5__ops15_Iter_less_iterEEvT_T0_SX_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i11, %bb.e
  %.0.lcssa.i.i.i.i10 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i11 ]
  %i.ak = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i10 ; 2 uses
  store i32 %.sroa.015.0.copyload.i.i, ptr %i.ak, align 4, !tbaa !543
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  %.not.i.i = icmp eq i64 %.07.i.i, 0
  %i.al = add nsw i64 %.07.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !9838

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEElSO_NS0_5__ops15_Iter_less_iterEEvT_T0_SX_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.am, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_RT0_.exit.i.i ], [ %storemerge19.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEElSO_NS0_5__ops15_Iter_less_iterEEvT_T0_SX_T1_T2_.exit.i.i ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -20 ; 4 uses
  %.sroa.07.0.copyload.i.i.i = load i32, ptr %i.am, align 4, !tbaa !543 ; 2 uses
  %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.am, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !3854
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.a                     ; 3 uses
  %i.ap = sdiv exact i64 %i.ao, 20                ; 3 uses
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = sdiv i64 %i.aq, 2
  %i.as = icmp sgt i64 %i.ao, 40
  br i1 %i.as, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.at = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.au = add i64 %i.at, 2                        ; 2 uses
  %i.av = getelementptr inbounds [20 x i8], ptr %0, i64 %i.au
  %i.aw = or disjoint i64 %i.at, 1                ; 2 uses
  %i.ax = getelementptr inbounds [20 x i8], ptr %0, i64 %i.aw
  %i.ay = load i32, ptr %i.av, align 4, !tbaa !3857
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !3857
  %i.ba = icmp slt i32 %i.ay, %i.az
  %spec.select.i.i.i.i = select i1 %i.ba, i64 %i.aw, i64 %i.au ; 4 uses
  %i.bb = getelementptr inbounds [20 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bc = getelementptr inbounds [20 x i8], ptr %0, i64 %.038.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bc, ptr noundef nonnull align 4 dereferenceable(20) %i.bb, i64 20, i1 false), !tbaa.struct !3854
  %i.bd = icmp slt i64 %spec.select.i.i.i.i, %i.ar
  br i1 %i.bd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !9836

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.be = and i64 %i.ap, 1
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bg = add nsw i64 %i.ap, -2
  %i.bh = ashr exact i64 %i.bg, 1
  %i.bi = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bh
  br i1 %i.bi, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bj = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bk = or disjoint i64 %i.bj, 1                ; 2 uses
  %i.bl = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %i.bk
  %i.bm = getelementptr inbounds [20 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bm, ptr noundef nonnull align 4 dereferenceable(20) %i.bl, i64 20, i1 false), !tbaa.struct !3854
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.018.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bk, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i910.i.i.i, %bb.i ], [ %.018.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i910.i.i.i = lshr i64 %.0919.in.i.i.i.i.i, 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.0919.i.i910.i.i.i ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3857
  %i.bp = icmp slt i32 %i.bo, %.sroa.07.0.copyload.i.i.i
  br i1 %i.bp, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bq = getelementptr inbounds [20 x i8], ptr %0, i64 %.018.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bq, ptr noundef nonnull align 4 dereferenceable(20) %i.bn, i64 20, i1 false), !tbaa.struct !3854
  %.not11.i.i.i = icmp eq i64 %.0919.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9837

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.br = getelementptr inbounds [20 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i32 %.sroa.07.0.copyload.i.i.i, ptr %i.br, align 4, !tbaa !543
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.bs = icmp sgt i64 %i.ao, 20
  br i1 %i.bs, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_T0_.exit, !llvm.loop !9839

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1942 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02041 = phi i64 [ %i.bu, %bb.b ], [ %2, %.lr.ph ]
  %i.bt = phi i64 [ %i.co, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bu = add nsw i64 %.02041, -1                 ; 3 uses
  %i.bv = udiv i64 %i.bt, 40
  %i.bw = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %i.bv ; 5 uses
  %i.bx = getelementptr inbounds i8, ptr %storemerge1942, i64 -20 ; 5 uses
  %i.by = load i32, ptr %i.e, align 4, !tbaa !3857 ; 3 uses
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !3857 ; 3 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  %i.cb = load i32, ptr %i.bx, align 4, !tbaa !3857 ; 4 uses
  br i1 %i.ca, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph43
  %i.cc = icmp slt i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %9, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !3854
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.bw, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bw, ptr noundef nonnull align 4 dereferenceable(20) %9, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cd = icmp slt i32 %i.by, %i.cb
  br i1 %i.cd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !3854
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.bx, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bx, ptr noundef nonnull align 4 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !3854
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.e, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, ptr noundef nonnull align 4 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph43
  %i.ce = icmp slt i32 %i.by, %i.cb
  br i1 %i.ce, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !3854
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.e, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cf = icmp slt i32 %i.bz, %i.cb
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !3854
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.bx, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bx, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !3854
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.bw, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bw, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cj, %bb.v ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge1942, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader ]
  %i.cg = load i32, ptr %0, align 4, !tbaa !3857  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSG_IjEEEEE15gatherFragmentsERSt6vectorINSK_8FragmentESaISM_EERKNSF_9CoordBBoxERKS9_RKNS8_IiLj3EEE:bb.a
  %i.bg = icmp sgt i32 %i.be, %i.bf
  br i1 %i.bg, label %._crit_edge67, label %.lr.ph66.split

._crit_edge67:                                    ; preds = %._crit_edge62, %.lr.ph66, %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE4dataEv.exit
  ret void

.lr.ph66.split:                                   ; preds = %.lr.ph66, %._crit_edge62
  %i.bh = phi i32 [ %i.bt, %._crit_edge62 ], [ %i.ax, %.lr.ph66 ] ; 2 uses
  %i.bi = phi i32 [ %i.bu, %._crit_edge62 ], [ %i.bf, %.lr.ph66 ] ; 3 uses
  %i.bj = phi i32 [ %i.bv, %._crit_edge62 ], [ %i.bf, %.lr.ph66 ] ; 3 uses
  %.03064 = phi i32 [ %i.bw, %._crit_edge62 ], [ %i.av, %.lr.ph66 ] ; 5 uses
  %i.bk = shl i32 %.03064, 6
  %i.bl = and i32 %i.bk, 448                      ; 2 uses
  %i.bm = load i32, ptr %i.ay, align 4, !tbaa !543 ; 2 uses
  %.not3158 = icmp sgt i32 %i.bm, %i.bj
  br i1 %.not3158, label %._crit_edge62, label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph66.split
  %i.bn = lshr exact i32 %i.bl, 6
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bo
  %i.bq = load i32, ptr %i.ba, align 4, !tbaa !543
  %i.br = load i32, ptr %i.bb, align 4, !tbaa !543 ; 2 uses
  %i.bs = icmp sgt i32 %i.bq, %i.br
  br i1 %i.bs, label %._crit_edge62, label %.lr.ph61.split

._crit_edge62.loopexit68:                         ; preds = %._crit_edge
  %.pre70 = load i32, ptr %i.aw, align 4, !tbaa !543
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %.lr.ph61, %._crit_edge62.loopexit68, %.lr.ph66.split
  %i.bt = phi i32 [ %.pre70, %._crit_edge62.loopexit68 ], [ %i.bh, %.lr.ph66.split ], [ %i.bh, %.lr.ph61 ] ; 2 uses
  %i.bu = phi i32 [ %i.cc, %._crit_edge62.loopexit68 ], [ %i.bi, %.lr.ph66.split ], [ %i.bi, %.lr.ph61 ]
  %i.bv = phi i32 [ %i.cc, %._crit_edge62.loopexit68 ], [ %i.bj, %.lr.ph66.split ], [ %i.bj, %.lr.ph61 ]
  %i.bw = add nsw i32 %.03064, 1
  %.not.not = icmp slt i32 %.03064, %i.bt
  br i1 %.not.not, label %.lr.ph66.split, label %._crit_edge67, !llvm.loop !11330

.lr.ph61.split:                                   ; preds = %.lr.ph61, %._crit_edge
  %i.bx = phi i32 [ %i.cc, %._crit_edge ], [ %i.bi, %.lr.ph61 ]
  %i.by = phi i32 [ %i.cd, %._crit_edge ], [ %i.br, %.lr.ph61 ] ; 2 uses
  %.02959 = phi i32 [ %i.ce, %._crit_edge ], [ %i.bm, %.lr.ph61 ] ; 5 uses
  %i.bz = shl i32 %.02959, 3
  %i.ca = and i32 %i.bz, 56
  %i.cb = load i32, ptr %i.ba, align 4, !tbaa !543 ; 2 uses
  %.not3256 = icmp sgt i32 %i.cb, %i.by
  br i1 %.not3256, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE9push_backEOSM_.exit
  %.pre = load i32, ptr %i.az, align 4, !tbaa !543
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph61.split
  %i.cc = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.bx, %.lr.ph61.split ] ; 4 uses
  %i.cd = phi i32 [ %i.dq, %._crit_edge.loopexit ], [ %i.by, %.lr.ph61.split ]
  %i.ce = add nsw i32 %.02959, 1
  %.not31.not = icmp slt i32 %.02959, %i.cc
  br i1 %.not31.not, label %.lr.ph61.split, label %._crit_edge62.loopexit68, !llvm.loop !11331

.lr.ph:                                           ; preds = %.lr.ph61.split, %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE9push_backEOSM_.exit
  %.057 = phi i32 [ %i.dp, %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE9push_backEOSM_.exit ], [ %i.cb, %.lr.ph61.split ] ; 5 uses
  %i.cf = and i32 %.057, 7
  %i.cg = or disjoint i32 %i.cf, %i.ca            ; 2 uses
  %i.ch = load i64, ptr %i.bp, align 8, !tbaa !791
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.ch, %i.cj
  %.not55 = icmp eq i64 %i.ck, 0
  br i1 %.not55, label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE9push_backEOSM_.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.cl = or disjoint i32 %i.cg, %i.bl
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !543 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.cm
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !595
  %i.cr = tail call noundef double @llvm.fabs.f64(double %i.cq) ; 2 uses
  %i.cs = load ptr, ptr %i.bc, align 8, !tbaa !4585 ; 10 uses
  %i.ct = load ptr, ptr %i.bd, align 8, !tbaa !4587
  %.not.i.i44 = icmp eq ptr %i.cs, %i.ct
  br i1 %.not.i.i44, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.co, ptr %i.cs, align 8, !tbaa !543
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %.03064, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !543
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %.02959, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !543
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 %.057, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !543
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store double %i.cr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !595
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store ptr %i.cu, ptr %i.bc, align 8, !tbaa !4585
  br label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE9push_backEOSM_.exit

bb.p:                                             ; preds = %bb.n
  %i.cv = load ptr, ptr %1, align 8, !tbaa !4584  ; 5 uses
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 3 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.q, label %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #29
  unreachable

_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.da = sdiv exact i64 %i.cy, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = tail call i64 @llvm.umin.i64(i64 %i.db, i64 384307168202282325)
  %i.de = select i1 %i.dc, i64 384307168202282325, i64 %i.dd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.de, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.df = mul nuw nsw i64 %i.de, 24
  %i.dg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #30 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy ; 5 uses
  store i32 %i.co, ptr %i.dh, align 8, !tbaa !543
  %.sroa.5.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %.03064, ptr %.sroa.5.0..sroa_idx47, align 4, !tbaa !543
  %.sroa.6.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 %.02959, ptr %.sroa.6.0..sroa_idx49, align 8, !tbaa !543
  %.sroa.7.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 %.057, ptr %.sroa.7.0..sroa_idx51, align 4, !tbaa !543
  %.sroa.8.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store double %i.cr, ptr %.sroa.8.0..sroa_idx53, align 8, !tbaa !595
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cv, %i.cs
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i45

.lr.ph.i.i.i.i.i.i45:                             ; preds = %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i45
  %.012.i.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i45 ], [ %i.dg, %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i45 ], [ %i.cv, %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !4586, !alias.scope !11336
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, %i.cs
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i45, !llvm.loop !504

_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i45, %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dg, %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.dj, %.lr.ph.i.i.i.i.i.i45 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i23.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE17_M_realloc_insertIJSM_EEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit22.i.i.i
  %i.dl = load ptr, ptr %i.bd, align 8, !tbaa !4587
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %i.cx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.dn) #32
  br label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE17_M_realloc_insertIJSM_EEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i.i

_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE17_M_realloc_insertIJSM_EEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit22.i.i.i
  store ptr %i.dg, ptr %1, align 8, !tbaa !4584
  store ptr %i.dk, ptr %i.bc, align 8, !tbaa !4585
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.do, ptr %i.bd, align 8, !tbaa !4587
  br label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE9push_backEOSM_.exit

_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE9push_backEOSM_.exit: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSH_IjEEEEE8FragmentESaISM_EE17_M_realloc_insertIJSM_EEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i.i, %bb.o, %.lr.ph
  %i.dp = add nsw i32 %.057, 1
  %i.dq = load i32, ptr %i.bb, align 4, !tbaa !543 ; 2 uses
  %.not32.not = icmp slt i32 %.057, %i.dq
  br i1 %.not32.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !11335
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEElNS0_5__ops15_Iter_less_iterEEvT_SW_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %.sroa.4.i.i = alloca [20 x i8], align 4        ; 4 uses
  %3 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec3<unsigned int>>>::Fragment", align 8 ; 4 uses
  %4 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec3<unsigned int>>>::Fragment", align 8 ; 4 uses
  %5 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec3<unsigned int>>>::Fragment", align 8 ; 4 uses
  %6 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec3<unsigned int>>>::Fragment", align 8 ; 4 uses
  %7 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec3<unsigned int>>>::Fragment", align 8 ; 4 uses
  %8 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec3<unsigned int>>>::Fragment", align 8 ; 4 uses
  %9 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec3<unsigned int>>>::Fragment", align 8 ; 4 uses
  %.sroa.4.i.i.i = alloca [20 x i8], align 4      ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEET_SW_SW_T0_.exit
  %i.g = icmp eq i64 %i.bu, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43, !llvm.loop !11337

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa39 = phi i64 [ %i.c, %.lr.ph ], [ %i.co, %bb.b ]
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.h = udiv exact i64 %.lcssa39, 24             ; 3 uses
  %i.i = add nsw i64 %i.h, -2
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1                     ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.m, 0
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.k
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEElSO_NS0_5__ops15_Iter_less_iterEEvT_T0_SX_T1_T2_.exit.i.i, %._crit_edge
  %.07.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEElSO_NS0_5__ops15_Iter_less_iterEEvT_T0_SX_T1_T2_.exit.i.i ] ; 8 uses
  %i.q = getelementptr inbounds [24 x i8], ptr %0, i64 %.07.i.i ; 2 uses
  %.sroa.015.0.copyload.i.i = load i32, ptr %i.q, align 8, !tbaa !543 ; 2 uses
  %.sroa.416.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.416.0..sroa.0.0..sroa_idx.i.i, i64 20, i1 false)
  %i.r = icmp slt i64 %.07.i.i, %i.l
  br i1 %i.r, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.07.i.i, %bb.c ] ; 2 uses
  %i.s = shl i64 %.038.i.i.i, 1                   ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [24 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [24 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 8, !tbaa !4589
  %i.y = load i32, ptr %i.w, align 8, !tbaa !4589
  %i.z = icmp slt i32 %i.x, %i.y
  %spec.select.i.i.i = select i1 %i.z, i64 %i.v, i64 %i.t ; 4 uses
  %i.aa = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ab = getelementptr inbounds [24 x i8], ptr %0, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !tbaa.struct !4586
  %i.ac = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.ac, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !11338

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.07.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i, %i.j
  %or.cond.i.i = select i1 %i.n, i1 %i.ad, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !tbaa.struct !4586
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ae = icmp sgt i64 %.1.i.i.i, %.07.i.i
  br i1 %i.ae, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEElSO_NS0_5__ops15_Iter_less_iterEEvT_T0_SX_T1_T2_.exit.i.i

.lr.ph.i.i.i.i11:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !4589
  %i.ah = icmp slt i32 %i.ag, %.sroa.015.0.copyload.i.i
  br i1 %i.ah, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEElSO_NS0_5__ops15_Iter_less_iterEEvT_T0_SX_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !4586
  %i.aj = icmp sgt i64 %.0919.i.i.i.i, %.07.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEElSO_NS0_5__ops15_Iter_less_iterEEvT_T0_SX_T1_T2_.exit.i.i, !llvm.loop !11339

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEElSO_NS0_5__ops15_Iter_less_iterEEvT_T0_SX_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i11, %bb.e
  %.0.lcssa.i.i.i.i10 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i11 ]
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i10 ; 2 uses
  store i32 %.sroa.015.0.copyload.i.i, ptr %i.ak, align 8, !tbaa !543
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.i.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  %.not.i.i = icmp eq i64 %.07.i.i, 0
  %i.al = add nsw i64 %.07.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !11340

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEElSO_NS0_5__ops15_Iter_less_iterEEvT_T0_SX_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.am, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_RT0_.exit.i.i ], [ %storemerge19.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEElSO_NS0_5__ops15_Iter_less_iterEEvT_T0_SX_T1_T2_.exit.i.i ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -24 ; 4 uses
  %.sroa.07.0.copyload.i.i.i = load i32, ptr %i.am, align 8, !tbaa !543 ; 2 uses
  %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -20
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !4586
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.a                     ; 3 uses
  %i.ap = sdiv exact i64 %i.ao, 24                ; 3 uses
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = sdiv i64 %i.aq, 2
  %i.as = icmp sgt i64 %i.ao, 48
  br i1 %i.as, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.at = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.au = add i64 %i.at, 2                        ; 2 uses
  %i.av = getelementptr inbounds [24 x i8], ptr %0, i64 %i.au
  %i.aw = or disjoint i64 %i.at, 1                ; 2 uses
  %i.ax = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aw
  %i.ay = load i32, ptr %i.av, align 8, !tbaa !4589
  %i.az = load i32, ptr %i.ax, align 8, !tbaa !4589
  %i.ba = icmp slt i32 %i.ay, %i.az
  %spec.select.i.i.i.i = select i1 %i.ba, i64 %i.aw, i64 %i.au ; 4 uses
  %i.bb = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bc = getelementptr inbounds [24 x i8], ptr %0, i64 %.038.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !tbaa.struct !4586
  %i.bd = icmp slt i64 %spec.select.i.i.i.i, %i.ar
  br i1 %i.bd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !11338

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.be = and i64 %i.ap, 1
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bg = add nsw i64 %i.ap, -2
  %i.bh = ashr exact i64 %i.bg, 1
  %i.bi = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bh
  br i1 %i.bi, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bj = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bk = or disjoint i64 %i.bj, 1                ; 2 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bk
  %i.bm = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !tbaa.struct !4586
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.018.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bk, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i910.i.i.i, %bb.i ], [ %.018.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i910.i.i.i = lshr i64 %.0919.in.i.i.i.i.i, 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0919.i.i910.i.i.i ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !4589
  %i.bp = icmp slt i32 %i.bo, %.sroa.07.0.copyload.i.i.i
  br i1 %i.bp, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bq = getelementptr inbounds [24 x i8], ptr %0, i64 %.018.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !tbaa.struct !4586
  %.not11.i.i.i = icmp eq i64 %.0919.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !11339

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.br = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i32 %.sroa.07.0.copyload.i.i.i, ptr %i.br, align 8, !tbaa !543
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.i.i.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.bs = icmp sgt i64 %i.ao, 24
  br i1 %i.bs, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_T0_.exit, !llvm.loop !11341

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1942 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02041 = phi i64 [ %i.bu, %bb.b ], [ %2, %.lr.ph ]
  %i.bt = phi i64 [ %i.co, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bu = add nsw i64 %.02041, -1                 ; 3 uses
  %i.bv = udiv i64 %i.bt, 48
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bv ; 5 uses
  %i.bx = getelementptr inbounds i8, ptr %storemerge1942, i64 -24 ; 5 uses
  %i.by = load i32, ptr %i.e, align 8, !tbaa !4589 ; 3 uses
  %i.bz = load i32, ptr %i.bw, align 8, !tbaa !4589 ; 3 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  %i.cb = load i32, ptr %i.bx, align 8, !tbaa !4589 ; 4 uses
  br i1 %i.ca, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph43
  %i.cc = icmp slt i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !4586
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cd = icmp slt i32 %i.by, %i.cb
  br i1 %i.cd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !4586
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !4586
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph43
  %i.ce = icmp slt i32 %i.by, %i.cb
  br i1 %i.ce, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !4586
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cf = icmp slt i32 %i.bz, %i.cb
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !4586
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !4586
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cj, %bb.v ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge1942, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSJ_IjEEEEE8FragmentESt6vectorISO_SaISO_EEEENS0_5__ops15_Iter_less_iterEEvT_SW_SW_SW_T0_.exit.i.preheader ]
  %i.cg = load i32, ptr %0, align 8, !tbaa !4589  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSF_4Vec4IjEEEEE15gatherFragmentsERSt6vectorINSL_8FragmentESaISN_EERKNSF_9CoordBBoxERKS9_RKNS8_IiLj3EEE:bb.a
  %i.bg = icmp sgt i32 %i.be, %i.bf
  br i1 %i.bg, label %._crit_edge67, label %.lr.ph66.split

._crit_edge67:                                    ; preds = %._crit_edge62, %.lr.ph66, %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE4dataEv.exit
  ret void

.lr.ph66.split:                                   ; preds = %.lr.ph66, %._crit_edge62
  %i.bh = phi i32 [ %i.bt, %._crit_edge62 ], [ %i.ax, %.lr.ph66 ] ; 2 uses
  %i.bi = phi i32 [ %i.bu, %._crit_edge62 ], [ %i.bf, %.lr.ph66 ] ; 3 uses
  %i.bj = phi i32 [ %i.bv, %._crit_edge62 ], [ %i.bf, %.lr.ph66 ] ; 3 uses
  %.03064 = phi i32 [ %i.bw, %._crit_edge62 ], [ %i.av, %.lr.ph66 ] ; 5 uses
  %i.bk = shl i32 %.03064, 6
  %i.bl = and i32 %i.bk, 448                      ; 2 uses
  %i.bm = load i32, ptr %i.ay, align 4, !tbaa !543 ; 2 uses
  %.not3158 = icmp sgt i32 %i.bm, %i.bj
  br i1 %.not3158, label %._crit_edge62, label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph66.split
  %i.bn = lshr exact i32 %i.bl, 6
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bo
  %i.bq = load i32, ptr %i.ba, align 4, !tbaa !543
  %i.br = load i32, ptr %i.bb, align 4, !tbaa !543 ; 2 uses
  %i.bs = icmp sgt i32 %i.bq, %i.br
  br i1 %i.bs, label %._crit_edge62, label %.lr.ph61.split

._crit_edge62.loopexit68:                         ; preds = %._crit_edge
  %.pre70 = load i32, ptr %i.aw, align 4, !tbaa !543
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %.lr.ph61, %._crit_edge62.loopexit68, %.lr.ph66.split
  %i.bt = phi i32 [ %.pre70, %._crit_edge62.loopexit68 ], [ %i.bh, %.lr.ph66.split ], [ %i.bh, %.lr.ph61 ] ; 2 uses
  %i.bu = phi i32 [ %i.cc, %._crit_edge62.loopexit68 ], [ %i.bi, %.lr.ph66.split ], [ %i.bi, %.lr.ph61 ]
  %i.bv = phi i32 [ %i.cc, %._crit_edge62.loopexit68 ], [ %i.bj, %.lr.ph66.split ], [ %i.bj, %.lr.ph61 ]
  %i.bw = add nsw i32 %.03064, 1
  %.not.not = icmp slt i32 %.03064, %i.bt
  br i1 %.not.not, label %.lr.ph66.split, label %._crit_edge67, !llvm.loop !11506

.lr.ph61.split:                                   ; preds = %.lr.ph61, %._crit_edge
  %i.bx = phi i32 [ %i.cc, %._crit_edge ], [ %i.bi, %.lr.ph61 ]
  %i.by = phi i32 [ %i.cd, %._crit_edge ], [ %i.br, %.lr.ph61 ] ; 2 uses
  %.02959 = phi i32 [ %i.ce, %._crit_edge ], [ %i.bm, %.lr.ph61 ] ; 5 uses
  %i.bz = shl i32 %.02959, 3
  %i.ca = and i32 %i.bz, 56
  %i.cb = load i32, ptr %i.ba, align 4, !tbaa !543 ; 2 uses
  %.not3256 = icmp sgt i32 %i.cb, %i.by
  br i1 %.not3256, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE9push_backEOSN_.exit
  %.pre = load i32, ptr %i.az, align 4, !tbaa !543
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph61.split
  %i.cc = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.bx, %.lr.ph61.split ] ; 4 uses
  %i.cd = phi i32 [ %i.dq, %._crit_edge.loopexit ], [ %i.by, %.lr.ph61.split ]
  %i.ce = add nsw i32 %.02959, 1
  %.not31.not = icmp slt i32 %.02959, %i.cc
  br i1 %.not31.not, label %.lr.ph61.split, label %._crit_edge62.loopexit68, !llvm.loop !11507

.lr.ph:                                           ; preds = %.lr.ph61.split, %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE9push_backEOSN_.exit
  %.057 = phi i32 [ %i.dp, %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE9push_backEOSN_.exit ], [ %i.cb, %.lr.ph61.split ] ; 5 uses
  %i.cf = and i32 %.057, 7
  %i.cg = or disjoint i32 %i.cf, %i.ca            ; 2 uses
  %i.ch = load i64, ptr %i.bp, align 8, !tbaa !791
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.ch, %i.cj
  %.not55 = icmp eq i64 %i.ck, 0
  br i1 %.not55, label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE9push_backEOSN_.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.cl = or disjoint i32 %i.cg, %i.bl
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !543 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cm
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !572
  %i.cr = tail call noundef float @llvm.fabs.f32(float %i.cq) ; 2 uses
  %i.cs = load ptr, ptr %i.bc, align 8, !tbaa !4633 ; 10 uses
  %i.ct = load ptr, ptr %i.bd, align 8, !tbaa !4634
  %.not.i.i44 = icmp eq ptr %i.cs, %i.ct
  br i1 %.not.i.i44, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.co, ptr %i.cs, align 4, !tbaa !543
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %.03064, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !543
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %.02959, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !543
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 %.057, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !543
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store float %i.cr, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !572
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  store ptr %i.cu, ptr %i.bc, align 8, !tbaa !4633
  br label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE9push_backEOSN_.exit

bb.p:                                             ; preds = %bb.n
  %i.cv = load ptr, ptr %1, align 8, !tbaa !4632  ; 5 uses
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 3 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.q, label %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #29
  unreachable

_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.da = sdiv exact i64 %i.cy, 20                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = tail call i64 @llvm.umin.i64(i64 %i.db, i64 461168601842738790)
  %i.de = select i1 %i.dc, i64 461168601842738790, i64 %i.dd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.de, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.df = mul nuw nsw i64 %i.de, 20
  %i.dg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #30 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy ; 5 uses
  store i32 %i.co, ptr %i.dh, align 4, !tbaa !543
  %.sroa.5.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %.03064, ptr %.sroa.5.0..sroa_idx47, align 4, !tbaa !543
  %.sroa.6.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 %.02959, ptr %.sroa.6.0..sroa_idx49, align 4, !tbaa !543
  %.sroa.7.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 %.057, ptr %.sroa.7.0..sroa_idx51, align 4, !tbaa !543
  %.sroa.8.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store float %i.cr, ptr %.sroa.8.0..sroa_idx53, align 4, !tbaa !572
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cv, %i.cs
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE11_S_relocateEPSN_SQ_SQ_RSO_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i45

.lr.ph.i.i.i.i.i.i45:                             ; preds = %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i45
  %.012.i.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i45 ], [ %i.dg, %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i45 ], [ %i.cv, %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !3854, !alias.scope !11512
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 20 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, %i.cs
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE11_S_relocateEPSN_SQ_SQ_RSO_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i45, !llvm.loop !514

_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE11_S_relocateEPSN_SQ_SQ_RSO_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i45, %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dg, %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.dj, %.lr.ph.i.i.i.i.i.i45 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 20
  %.not.i23.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE17_M_realloc_insertIJSN_EEEvN9__gnu_cxx17__normal_iteratorIPSN_SP_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE11_S_relocateEPSN_SQ_SQ_RSO_.exit22.i.i.i
  %i.dl = load ptr, ptr %i.bd, align 8, !tbaa !4634
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %i.cx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.dn) #32
  br label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE17_M_realloc_insertIJSN_EEEvN9__gnu_cxx17__normal_iteratorIPSN_SP_EEDpOT_.exit.i.i

_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE17_M_realloc_insertIJSN_EEEvN9__gnu_cxx17__normal_iteratorIPSN_SP_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE11_S_relocateEPSN_SQ_SQ_RSO_.exit22.i.i.i
  store ptr %i.dg, ptr %1, align 8, !tbaa !4632
  store ptr %i.dk, ptr %i.bc, align 8, !tbaa !4633
  %i.do = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.do, ptr %i.bd, align 8, !tbaa !4634
  br label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE9push_backEOSN_.exit

_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE9push_backEOSN_.exit: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE17_M_realloc_insertIJSN_EEEvN9__gnu_cxx17__normal_iteratorIPSN_SP_EEDpOT_.exit.i.i, %bb.o, %.lr.ph
  %i.dp = add nsw i32 %.057, 1
  %i.dq = load i32, ptr %i.bb, align 4, !tbaa !543 ; 2 uses
  %.not32.not = icmp slt i32 %.057, %i.dq
  br i1 %.not32.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !11511
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEElNS0_5__ops15_Iter_less_iterEEvT_SX_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %.sroa.4.i.i = alloca { i32, i32, i32, float }, align 8 ; 4 uses
  %3 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec4<unsigned int>>>::Fragment", align 4 ; 4 uses
  %4 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec4<unsigned int>>>::Fragment", align 4 ; 4 uses
  %5 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec4<unsigned int>>>::Fragment", align 4 ; 4 uses
  %6 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec4<unsigned int>>>::Fragment", align 4 ; 4 uses
  %7 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec4<unsigned int>>>::Fragment", align 4 ; 4 uses
  %8 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec4<unsigned int>>>::Fragment", align 4 ; 4 uses
  %9 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec4<unsigned int>>>::Fragment", align 4 ; 4 uses
  %.sroa.4.i.i.i = alloca { i32, i32, i32, float }, align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 320
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEET_SX_SX_T0_.exit
  %i.g = icmp eq i64 %i.bu, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43, !llvm.loop !11513

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa39 = phi i64 [ %i.c, %.lr.ph ], [ %i.co, %bb.b ]
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.h = udiv exact i64 %.lcssa39, 20             ; 3 uses
  %i.i = add nsw i64 %i.h, -2
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1                     ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.m, 0
  %i.o = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %i.k
  %i.p = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEElSP_NS0_5__ops15_Iter_less_iterEEvT_T0_SY_T1_T2_.exit.i.i, %._crit_edge
  %.07.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEElSP_NS0_5__ops15_Iter_less_iterEEvT_T0_SY_T1_T2_.exit.i.i ] ; 8 uses
  %i.q = getelementptr inbounds [20 x i8], ptr %0, i64 %.07.i.i ; 2 uses
  %.sroa.015.0.copyload.i.i = load i32, ptr %i.q, align 4, !tbaa !543 ; 2 uses
  %.sroa.416.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.416.0..sroa.0.0..sroa_idx.i.i, i64 16, i1 false)
  %i.r = icmp slt i64 %.07.i.i, %i.l
  br i1 %i.r, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.07.i.i, %bb.c ] ; 2 uses
  %i.s = shl i64 %.038.i.i.i, 1                   ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [20 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [20 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 4, !tbaa !4636
  %i.y = load i32, ptr %i.w, align 4, !tbaa !4636
  %i.z = icmp slt i32 %i.x, %i.y
  %spec.select.i.i.i = select i1 %i.z, i64 %i.v, i64 %i.t ; 4 uses
  %i.aa = getelementptr inbounds [20 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ab = getelementptr inbounds [20 x i8], ptr %0, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ab, ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i64 20, i1 false), !tbaa.struct !3854
  %i.ac = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.ac, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !11514

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.07.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i, %i.j
  %or.cond.i.i = select i1 %i.n, i1 %i.ad, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.p, ptr noundef nonnull align 4 dereferenceable(20) %i.o, i64 20, i1 false), !tbaa.struct !3854
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ae = icmp sgt i64 %.1.i.i.i, %.07.i.i
  br i1 %i.ae, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEElSP_NS0_5__ops15_Iter_less_iterEEvT_T0_SY_T1_T2_.exit.i.i

.lr.ph.i.i.i.i11:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.af = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4636
  %i.ah = icmp slt i32 %i.ag, %.sroa.015.0.copyload.i.i
  br i1 %i.ah, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEElSP_NS0_5__ops15_Iter_less_iterEEvT_T0_SY_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.ai = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ai, ptr noundef nonnull align 4 dereferenceable(20) %i.af, i64 20, i1 false), !tbaa.struct !3854
  %i.aj = icmp sgt i64 %.0919.i.i.i.i, %.07.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEElSP_NS0_5__ops15_Iter_less_iterEEvT_T0_SY_T1_T2_.exit.i.i, !llvm.loop !11515

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEElSP_NS0_5__ops15_Iter_less_iterEEvT_T0_SY_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i11, %bb.e
  %.0.lcssa.i.i.i.i10 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i11 ]
  %i.ak = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i10 ; 2 uses
  store i32 %.sroa.015.0.copyload.i.i, ptr %i.ak, align 4, !tbaa !543
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  %.not.i.i = icmp eq i64 %.07.i.i, 0
  %i.al = add nsw i64 %.07.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !11516

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEElSP_NS0_5__ops15_Iter_less_iterEEvT_T0_SY_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.am, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_RT0_.exit.i.i ], [ %storemerge19.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEElSP_NS0_5__ops15_Iter_less_iterEEvT_T0_SY_T1_T2_.exit.i.i ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -20 ; 4 uses
  %.sroa.07.0.copyload.i.i.i = load i32, ptr %i.am, align 4, !tbaa !543 ; 2 uses
  %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.am, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !3854
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.a                     ; 3 uses
  %i.ap = sdiv exact i64 %i.ao, 20                ; 3 uses
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = sdiv i64 %i.aq, 2
  %i.as = icmp sgt i64 %i.ao, 40
  br i1 %i.as, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.at = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.au = add i64 %i.at, 2                        ; 2 uses
  %i.av = getelementptr inbounds [20 x i8], ptr %0, i64 %i.au
  %i.aw = or disjoint i64 %i.at, 1                ; 2 uses
  %i.ax = getelementptr inbounds [20 x i8], ptr %0, i64 %i.aw
  %i.ay = load i32, ptr %i.av, align 4, !tbaa !4636
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !4636
  %i.ba = icmp slt i32 %i.ay, %i.az
  %spec.select.i.i.i.i = select i1 %i.ba, i64 %i.aw, i64 %i.au ; 4 uses
  %i.bb = getelementptr inbounds [20 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bc = getelementptr inbounds [20 x i8], ptr %0, i64 %.038.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bc, ptr noundef nonnull align 4 dereferenceable(20) %i.bb, i64 20, i1 false), !tbaa.struct !3854
  %i.bd = icmp slt i64 %spec.select.i.i.i.i, %i.ar
  br i1 %i.bd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !11514

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.be = and i64 %i.ap, 1
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bg = add nsw i64 %i.ap, -2
  %i.bh = ashr exact i64 %i.bg, 1
  %i.bi = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bh
  br i1 %i.bi, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bj = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bk = or disjoint i64 %i.bj, 1                ; 2 uses
  %i.bl = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %i.bk
  %i.bm = getelementptr inbounds [20 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bm, ptr noundef nonnull align 4 dereferenceable(20) %i.bl, i64 20, i1 false), !tbaa.struct !3854
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.018.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bk, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i910.i.i.i, %bb.i ], [ %.018.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i910.i.i.i = lshr i64 %.0919.in.i.i.i.i.i, 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.0919.i.i910.i.i.i ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4636
  %i.bp = icmp slt i32 %i.bo, %.sroa.07.0.copyload.i.i.i
  br i1 %i.bp, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bq = getelementptr inbounds [20 x i8], ptr %0, i64 %.018.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bq, ptr noundef nonnull align 4 dereferenceable(20) %i.bn, i64 20, i1 false), !tbaa.struct !3854
  %.not11.i.i.i = icmp eq i64 %.0919.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !11515

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.br = getelementptr inbounds [20 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i32 %.sroa.07.0.copyload.i.i.i, ptr %i.br, align 4, !tbaa !543
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.bs = icmp sgt i64 %i.ao, 20
  br i1 %i.bs, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_T0_.exit, !llvm.loop !11517

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1942 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02041 = phi i64 [ %i.bu, %bb.b ], [ %2, %.lr.ph ]
  %i.bt = phi i64 [ %i.co, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bu = add nsw i64 %.02041, -1                 ; 3 uses
  %i.bv = udiv i64 %i.bt, 40
  %i.bw = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %i.bv ; 5 uses
  %i.bx = getelementptr inbounds i8, ptr %storemerge1942, i64 -20 ; 5 uses
  %i.by = load i32, ptr %i.e, align 4, !tbaa !4636 ; 3 uses
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !4636 ; 3 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  %i.cb = load i32, ptr %i.bx, align 4, !tbaa !4636 ; 4 uses
  br i1 %i.ca, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph43
  %i.cc = icmp slt i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %9, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !3854
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.bw, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bw, ptr noundef nonnull align 4 dereferenceable(20) %9, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cd = icmp slt i32 %i.by, %i.cb
  br i1 %i.cd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !3854
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.bx, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bx, ptr noundef nonnull align 4 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !3854
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.e, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, ptr noundef nonnull align 4 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph43
  %i.ce = icmp slt i32 %i.by, %i.cb
  br i1 %i.ce, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !3854
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.e, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cf = icmp slt i32 %i.bz, %i.cb
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !3854
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.bx, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bx, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !3854
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.bw, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bw, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !3854
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cj, %bb.v ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge1942, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader ]
  %i.cg = load i32, ptr %0, align 4, !tbaa !4636  ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSF_4Vec4IjEEEEE15gatherFragmentsERSt6vectorINSL_8FragmentESaISN_EERKNSF_9CoordBBoxERKS9_RKNS8_IiLj3EEE:bb.a
  %i.bg = icmp sgt i32 %i.be, %i.bf
  br i1 %i.bg, label %._crit_edge67, label %.lr.ph66.split

._crit_edge67:                                    ; preds = %._crit_edge62, %.lr.ph66, %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE4dataEv.exit
  ret void

.lr.ph66.split:                                   ; preds = %.lr.ph66, %._crit_edge62
  %i.bh = phi i32 [ %i.bt, %._crit_edge62 ], [ %i.ax, %.lr.ph66 ] ; 2 uses
  %i.bi = phi i32 [ %i.bu, %._crit_edge62 ], [ %i.bf, %.lr.ph66 ] ; 3 uses
  %i.bj = phi i32 [ %i.bv, %._crit_edge62 ], [ %i.bf, %.lr.ph66 ] ; 3 uses
  %.03064 = phi i32 [ %i.bw, %._crit_edge62 ], [ %i.av, %.lr.ph66 ] ; 5 uses
  %i.bk = shl i32 %.03064, 6
  %i.bl = and i32 %i.bk, 448                      ; 2 uses
  %i.bm = load i32, ptr %i.ay, align 4, !tbaa !543 ; 2 uses
  %.not3158 = icmp sgt i32 %i.bm, %i.bj
  br i1 %.not3158, label %._crit_edge62, label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph66.split
  %i.bn = lshr exact i32 %i.bl, 6
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bo
  %i.bq = load i32, ptr %i.ba, align 4, !tbaa !543
  %i.br = load i32, ptr %i.bb, align 4, !tbaa !543 ; 2 uses
  %i.bs = icmp sgt i32 %i.bq, %i.br
  br i1 %i.bs, label %._crit_edge62, label %.lr.ph61.split

._crit_edge62.loopexit68:                         ; preds = %._crit_edge
  %.pre70 = load i32, ptr %i.aw, align 4, !tbaa !543
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %.lr.ph61, %._crit_edge62.loopexit68, %.lr.ph66.split
  %i.bt = phi i32 [ %.pre70, %._crit_edge62.loopexit68 ], [ %i.bh, %.lr.ph66.split ], [ %i.bh, %.lr.ph61 ] ; 2 uses
  %i.bu = phi i32 [ %i.cc, %._crit_edge62.loopexit68 ], [ %i.bi, %.lr.ph66.split ], [ %i.bi, %.lr.ph61 ]
  %i.bv = phi i32 [ %i.cc, %._crit_edge62.loopexit68 ], [ %i.bj, %.lr.ph66.split ], [ %i.bj, %.lr.ph61 ]
  %i.bw = add nsw i32 %.03064, 1
  %.not.not = icmp slt i32 %.03064, %i.bt
  br i1 %.not.not, label %.lr.ph66.split, label %._crit_edge67, !llvm.loop !11649

.lr.ph61.split:                                   ; preds = %.lr.ph61, %._crit_edge
  %i.bx = phi i32 [ %i.cc, %._crit_edge ], [ %i.bi, %.lr.ph61 ]
  %i.by = phi i32 [ %i.cd, %._crit_edge ], [ %i.br, %.lr.ph61 ] ; 2 uses
  %.02959 = phi i32 [ %i.ce, %._crit_edge ], [ %i.bm, %.lr.ph61 ] ; 5 uses
  %i.bz = shl i32 %.02959, 3
  %i.ca = and i32 %i.bz, 56
  %i.cb = load i32, ptr %i.ba, align 4, !tbaa !543 ; 2 uses
  %.not3256 = icmp sgt i32 %i.cb, %i.by
  br i1 %.not3256, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE9push_backEOSN_.exit
  %.pre = load i32, ptr %i.az, align 4, !tbaa !543
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph61.split
  %i.cc = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.bx, %.lr.ph61.split ] ; 4 uses
  %i.cd = phi i32 [ %i.dq, %._crit_edge.loopexit ], [ %i.by, %.lr.ph61.split ]
  %i.ce = add nsw i32 %.02959, 1
  %.not31.not = icmp slt i32 %.02959, %i.cc
  br i1 %.not31.not, label %.lr.ph61.split, label %._crit_edge62.loopexit68, !llvm.loop !11650

.lr.ph:                                           ; preds = %.lr.ph61.split, %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE9push_backEOSN_.exit
  %.057 = phi i32 [ %i.dp, %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE9push_backEOSN_.exit ], [ %i.cb, %.lr.ph61.split ] ; 5 uses
  %i.cf = and i32 %.057, 7
  %i.cg = or disjoint i32 %i.cf, %i.ca            ; 2 uses
  %i.ch = load i64, ptr %i.bp, align 8, !tbaa !791
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.ch, %i.cj
  %.not55 = icmp eq i64 %i.ck, 0
  br i1 %.not55, label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE9push_backEOSN_.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.cl = or disjoint i32 %i.cg, %i.bl
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !543 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.cm
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !595
  %i.cr = tail call noundef double @llvm.fabs.f64(double %i.cq) ; 2 uses
  %i.cs = load ptr, ptr %i.bc, align 8, !tbaa !4659 ; 10 uses
  %i.ct = load ptr, ptr %i.bd, align 8, !tbaa !4660
  %.not.i.i44 = icmp eq ptr %i.cs, %i.ct
  br i1 %.not.i.i44, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.co, ptr %i.cs, align 8, !tbaa !543
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %.03064, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !543
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %.02959, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !543
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 %.057, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !543
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store double %i.cr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !595
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store ptr %i.cu, ptr %i.bc, align 8, !tbaa !4659
  br label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE9push_backEOSN_.exit

bb.p:                                             ; preds = %bb.n
  %i.cv = load ptr, ptr %1, align 8, !tbaa !4658  ; 5 uses
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 3 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.q, label %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #29
  unreachable

_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.da = sdiv exact i64 %i.cy, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = tail call i64 @llvm.umin.i64(i64 %i.db, i64 384307168202282325)
  %i.de = select i1 %i.dc, i64 384307168202282325, i64 %i.dd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.de, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.df = mul nuw nsw i64 %i.de, 24
  %i.dg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #30 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy ; 5 uses
  store i32 %i.co, ptr %i.dh, align 8, !tbaa !543
  %.sroa.5.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %.03064, ptr %.sroa.5.0..sroa_idx47, align 4, !tbaa !543
  %.sroa.6.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 %.02959, ptr %.sroa.6.0..sroa_idx49, align 8, !tbaa !543
  %.sroa.7.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 %.057, ptr %.sroa.7.0..sroa_idx51, align 4, !tbaa !543
  %.sroa.8.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store double %i.cr, ptr %.sroa.8.0..sroa_idx53, align 8, !tbaa !595
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cv, %i.cs
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE11_S_relocateEPSN_SQ_SQ_RSO_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i45

.lr.ph.i.i.i.i.i.i45:                             ; preds = %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i45
  %.012.i.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i45 ], [ %i.dg, %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i45 ], [ %i.cv, %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !4586, !alias.scope !11655
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, %i.cs
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE11_S_relocateEPSN_SQ_SQ_RSO_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i45, !llvm.loop !518

_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE11_S_relocateEPSN_SQ_SQ_RSO_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i45, %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dg, %_ZNKSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.dj, %.lr.ph.i.i.i.i.i.i45 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i23.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE17_M_realloc_insertIJSN_EEEvN9__gnu_cxx17__normal_iteratorIPSN_SP_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE11_S_relocateEPSN_SQ_SQ_RSO_.exit22.i.i.i
  %i.dl = load ptr, ptr %i.bd, align 8, !tbaa !4660
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %i.cx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.dn) #32
  br label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE17_M_realloc_insertIJSN_EEEvN9__gnu_cxx17__normal_iteratorIPSN_SP_EEDpOT_.exit.i.i

_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE17_M_realloc_insertIJSN_EEEvN9__gnu_cxx17__normal_iteratorIPSN_SP_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE11_S_relocateEPSN_SQ_SQ_RSO_.exit22.i.i.i
  store ptr %i.dg, ptr %1, align 8, !tbaa !4658
  store ptr %i.dk, ptr %i.bc, align 8, !tbaa !4659
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.do, ptr %i.bd, align 8, !tbaa !4660
  br label %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE9push_backEOSN_.exit

_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE9push_backEOSN_.exit: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS2_26QuadAndTriangleDataAdapterINS1_4math4Vec3IfEENSG_4Vec4IjEEEEE8FragmentESaISN_EE17_M_realloc_insertIJSN_EEEvN9__gnu_cxx17__normal_iteratorIPSN_SP_EEDpOT_.exit.i.i, %bb.o, %.lr.ph
  %i.dp = add nsw i32 %.057, 1
  %i.dq = load i32, ptr %i.bb, align 4, !tbaa !543 ; 2 uses
  %.not32.not = icmp slt i32 %.057, %i.dq
  br i1 %.not32.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !11654
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEElNS0_5__ops15_Iter_less_iterEEvT_SX_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %.sroa.4.i.i = alloca [20 x i8], align 4        ; 4 uses
  %3 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec4<unsigned int>>>::Fragment", align 8 ; 4 uses
  %4 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec4<unsigned int>>>::Fragment", align 8 ; 4 uses
  %5 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec4<unsigned int>>>::Fragment", align 8 ; 4 uses
  %6 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec4<unsigned int>>>::Fragment", align 8 ; 4 uses
  %7 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec4<unsigned int>>>::Fragment", align 8 ; 4 uses
  %8 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec4<unsigned int>>>::Fragment", align 8 ; 4 uses
  %9 = alloca %"struct.openvdb::v13_0::tools::mesh_to_volume_internal::ExpandNarrowband<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, openvdb::v13_0::tools::QuadAndTriangleDataAdapter<openvdb::v13_0::math::Vec3<float>, openvdb::v13_0::math::Vec4<unsigned int>>>::Fragment", align 8 ; 4 uses
  %.sroa.4.i.i.i = alloca [20 x i8], align 4      ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEET_SX_SX_T0_.exit
  %i.g = icmp eq i64 %i.bu, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43, !llvm.loop !11656

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa39 = phi i64 [ %i.c, %.lr.ph ], [ %i.co, %bb.b ]
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.h = udiv exact i64 %.lcssa39, 24             ; 3 uses
  %i.i = add nsw i64 %i.h, -2
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1                     ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.m, 0
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.k
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEElSP_NS0_5__ops15_Iter_less_iterEEvT_T0_SY_T1_T2_.exit.i.i, %._crit_edge
  %.07.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEElSP_NS0_5__ops15_Iter_less_iterEEvT_T0_SY_T1_T2_.exit.i.i ] ; 8 uses
  %i.q = getelementptr inbounds [24 x i8], ptr %0, i64 %.07.i.i ; 2 uses
  %.sroa.015.0.copyload.i.i = load i32, ptr %i.q, align 8, !tbaa !543 ; 2 uses
  %.sroa.416.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.416.0..sroa.0.0..sroa_idx.i.i, i64 20, i1 false)
  %i.r = icmp slt i64 %.07.i.i, %i.l
  br i1 %i.r, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.07.i.i, %bb.c ] ; 2 uses
  %i.s = shl i64 %.038.i.i.i, 1                   ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [24 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [24 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 8, !tbaa !4662
  %i.y = load i32, ptr %i.w, align 8, !tbaa !4662
  %i.z = icmp slt i32 %i.x, %i.y
  %spec.select.i.i.i = select i1 %i.z, i64 %i.v, i64 %i.t ; 4 uses
  %i.aa = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ab = getelementptr inbounds [24 x i8], ptr %0, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !tbaa.struct !4586
  %i.ac = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.ac, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !11657

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.07.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i, %i.j
  %or.cond.i.i = select i1 %i.n, i1 %i.ad, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !tbaa.struct !4586
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ae = icmp sgt i64 %.1.i.i.i, %.07.i.i
  br i1 %i.ae, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEElSP_NS0_5__ops15_Iter_less_iterEEvT_T0_SY_T1_T2_.exit.i.i

.lr.ph.i.i.i.i11:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !4662
  %i.ah = icmp slt i32 %i.ag, %.sroa.015.0.copyload.i.i
  br i1 %i.ah, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEElSP_NS0_5__ops15_Iter_less_iterEEvT_T0_SY_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !4586
  %i.aj = icmp sgt i64 %.0919.i.i.i.i, %.07.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEElSP_NS0_5__ops15_Iter_less_iterEEvT_T0_SY_T1_T2_.exit.i.i, !llvm.loop !11658

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEElSP_NS0_5__ops15_Iter_less_iterEEvT_T0_SY_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i11, %bb.e
  %.0.lcssa.i.i.i.i10 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i11 ]
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i10 ; 2 uses
  store i32 %.sroa.015.0.copyload.i.i, ptr %i.ak, align 8, !tbaa !543
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.i.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  %.not.i.i = icmp eq i64 %.07.i.i, 0
  %i.al = add nsw i64 %.07.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !11659

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEElSP_NS0_5__ops15_Iter_less_iterEEvT_T0_SY_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.am, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_RT0_.exit.i.i ], [ %storemerge19.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEElSP_NS0_5__ops15_Iter_less_iterEEvT_T0_SY_T1_T2_.exit.i.i ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -24 ; 4 uses
  %.sroa.07.0.copyload.i.i.i = load i32, ptr %i.am, align 8, !tbaa !543 ; 2 uses
  %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -20
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !4586
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.a                     ; 3 uses
  %i.ap = sdiv exact i64 %i.ao, 24                ; 3 uses
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = sdiv i64 %i.aq, 2
  %i.as = icmp sgt i64 %i.ao, 48
  br i1 %i.as, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.at = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.au = add i64 %i.at, 2                        ; 2 uses
  %i.av = getelementptr inbounds [24 x i8], ptr %0, i64 %i.au
  %i.aw = or disjoint i64 %i.at, 1                ; 2 uses
  %i.ax = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aw
  %i.ay = load i32, ptr %i.av, align 8, !tbaa !4662
  %i.az = load i32, ptr %i.ax, align 8, !tbaa !4662
  %i.ba = icmp slt i32 %i.ay, %i.az
  %spec.select.i.i.i.i = select i1 %i.ba, i64 %i.aw, i64 %i.au ; 4 uses
  %i.bb = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bc = getelementptr inbounds [24 x i8], ptr %0, i64 %.038.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !tbaa.struct !4586
  %i.bd = icmp slt i64 %spec.select.i.i.i.i, %i.ar
  br i1 %i.bd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !11657

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.be = and i64 %i.ap, 1
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bg = add nsw i64 %i.ap, -2
  %i.bh = ashr exact i64 %i.bg, 1
  %i.bi = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bh
  br i1 %i.bi, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bj = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bk = or disjoint i64 %i.bj, 1                ; 2 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bk
  %i.bm = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !tbaa.struct !4586
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.018.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bk, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i910.i.i.i, %bb.i ], [ %.018.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i910.i.i.i = lshr i64 %.0919.in.i.i.i.i.i, 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0919.i.i910.i.i.i ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !4662
  %i.bp = icmp slt i32 %i.bo, %.sroa.07.0.copyload.i.i.i
  br i1 %i.bp, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bq = getelementptr inbounds [24 x i8], ptr %0, i64 %.018.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !tbaa.struct !4586
  %.not11.i.i.i = icmp eq i64 %.0919.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !11658

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.br = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i32 %.sroa.07.0.copyload.i.i.i, ptr %i.br, align 8, !tbaa !543
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.i.i.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.bs = icmp sgt i64 %i.ao, 24
  br i1 %i.bs, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_T0_.exit, !llvm.loop !11660

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1942 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02041 = phi i64 [ %i.bu, %bb.b ], [ %2, %.lr.ph ]
  %i.bt = phi i64 [ %i.co, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bu = add nsw i64 %.02041, -1                 ; 3 uses
  %i.bv = udiv i64 %i.bt, 48
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bv ; 5 uses
  %i.bx = getelementptr inbounds i8, ptr %storemerge1942, i64 -24 ; 5 uses
  %i.by = load i32, ptr %i.e, align 8, !tbaa !4662 ; 3 uses
  %i.bz = load i32, ptr %i.bw, align 8, !tbaa !4662 ; 3 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  %i.cb = load i32, ptr %i.bx, align 8, !tbaa !4662 ; 4 uses
  br i1 %i.ca, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph43
  %i.cc = icmp slt i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !4586
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cd = icmp slt i32 %i.by, %i.cb
  br i1 %i.cd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !4586
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !4586
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph43
  %i.ce = icmp slt i32 %i.by, %i.cb
  br i1 %i.ce, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !4586
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cf = icmp slt i32 %i.bz, %i.cb
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !4586
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !4586
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !4586
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cj, %bb.v ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge1942, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7openvdb5v13_05tools23mesh_to_volume_internal16ExpandNarrowbandINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS4_26QuadAndTriangleDataAdapterINS3_4math4Vec3IfEENSI_4Vec4IjEEEEE8FragmentESt6vectorISP_SaISP_EEEENS0_5__ops15_Iter_less_iterEEvT_SX_SX_SX_T0_.exit.i.preheader ]
  %i.cg = load i32, ptr %0, align 8, !tbaa !4662  ; 2 uses
end_hunk_3
