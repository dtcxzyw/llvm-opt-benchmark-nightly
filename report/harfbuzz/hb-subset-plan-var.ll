Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan-var?download=true
inline.NumInlined: 3771
inline.NumDeleted: 1746
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_Z23normalize_axes_locationP9hb_face_tP16hb_subset_plan_t:bb.a

bb.cm:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit440
  store i32 %i.us, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit443

bb.cn:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit440
  %i.we = zext i32 %.sroa.0504.0929 to i64
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14630.010131079, i64 %i.we
  %.pre953.a = load float, ptr %i.wf, align 4, !tbaa !138
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit443

_ZN11hb_vector_tIfLb0EEixEi.exit443:              ; preds = %bb.cm, %bb.cn
  %i.wg = phi float [ %i.uw, %bb.cm ], [ %.pre953.a, %bb.cn ]
  %i.wh = fpext float %i.wg to double
  store <2 x double> %i.wd, ptr %7, align 16, !tbaa !140
  store double %i.wh, ptr %i.ut, align 16, !tbaa !137
  %i.wi = mul i32 %i.uy, -1640531535
  %i.wj = call noundef zeroext i1 @_ZN12hb_hashmap_tIj6TripleLb0EE13set_with_hashIRKjS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.ur, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i32 noundef %i.wi, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br i1 %.not.i435, label %bb.cp, label %bb.co, !prof !22

bb.co:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit443
  store i32 %i.us, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit447

bb.cp:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit443
  %i.wk = zext nneg i32 %.sroa.0504.0929 to i64
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15655.010171076, i64 %i.wk
  %.pre954 = load float, ptr %i.wl, align 4, !tbaa !138
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit447

_ZN11hb_vector_tIfLb0EEixEi.exit447:              ; preds = %bb.co, %bb.cp
  %i.wm = phi float [ %i.uw, %bb.co ], [ %.pre954, %bb.cp ] ; 2 uses
  %i.wn = fcmp oeq float %i.wm, 0.000000e+00
  %.0 = select i1 %i.wn, float 0.000000e+00, float %i.wm ; 2 uses
  %i.wo = fcmp une float %.0, 0.000000e+00
  br i1 %i.wo, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit447
  store i8 0, ptr %i.uu, align 1, !tbaa !77
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %_ZN11hb_vector_tIfLb0EEixEi.exit447
  %i.wp = fmul float %.0, 1.638400e+04
  %i.wq = fadd float %i.wp, 5.000000e-01
  %i.wr = call noundef float @llvm.floor.f32(float %i.wq)
  %i.ws = fptosi float %i.wr to i32
  %i.wt = load i32, ptr %i.am, align 4, !tbaa !65
  %.not.i448 = icmp ult i32 %.sroa.0504.0929, %i.wt
  br i1 %.not.i448, label %bb.ct, label %bb.cs, !prof !22

bb.cs:                                            ; preds = %bb.cr
  store i32 %i.us, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit450

bb.ct:                                            ; preds = %bb.cr
  %i.wu = load ptr, ptr %i.uv, align 8, !tbaa !63
  %i.wv = zext i32 %.sroa.0504.0929 to i64
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %i.wv
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit450

_ZN11hb_vector_tIiLb0EEixEi.exit450:              ; preds = %bb.cs, %bb.ct
  %.0.i449 = phi ptr [ @_hb_CrapPool, %bb.cs ], [ %i.ww, %bb.ct ]
  store i32 %i.ws, ptr %.0.i449, align 4, !tbaa !8
  br label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit434.thread

_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit434.thread: ; preds = %.lr.ph.i.i427, %bb.ch, %bb.cg, %_ZN11hb_vector_tIiLb0EEixEi.exit450, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  %i.wx = add i32 %.sroa.0504.0929, 1
  %.sroa.11.1 = call i32 @llvm.usub.sat.i32(i32 %.sroa.11.0927, i32 1)
  %.sroa.7.1.idx = select i1 %.not.i.i.i.i419.not, i64 0, i64 20, !prof !21
  %.sroa.7.1 = getelementptr inbounds nuw i8, ptr %.sroa.7.0928, i64 %.sroa.7.1.idx ; 2 uses
  %.not.i.i417 = icmp ne ptr %.sroa.7.1, %i.lf
  %i.wy = icmp ugt i32 %.sroa.11.0927, 1
  %i.wz = or i1 %i.wy, %.not.i.i417
  br i1 %i.wz, label %bb.cg, label %.critedge

.critedge:                                        ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit434.thread, %._crit_edge.thread, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit416.preheader, %bb.cc, %bb.cb, %bb.ca, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit373._crit_edge, %._crit_edge, %bb.bc, %bb.bb, %bb.ba, %bb.cf, %bb.ce, %bb.cd, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit281._crit_edge
  %.sroa.0622.010161058 = phi i32 [ %.sroa.0622.01038, %._crit_edge ], [ %.sroa.0622.010161077, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit281._crit_edge ], [ %.sroa.0622.010161077, %bb.cd ], [ %.sroa.0622.010161077, %bb.ce ], [ %.sroa.0622.010161077, %bb.cf ], [ %.sroa.0622.010161077, %bb.ba ], [ %.sroa.0622.010161077, %bb.bb ], [ %.sroa.0622.010161077, %bb.bc ], [ %.sroa.0622.010161077, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit373._crit_edge ], [ %.sroa.0622.010161077, %bb.ca ], [ %.sroa.0622.010161077, %bb.cb ], [ %.sroa.0622.010161077, %bb.cc ], [ %.sroa.0622.010161077, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit416.preheader ], [ 0, %._crit_edge.thread ], [ %.sroa.0622.010161077, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit434.thread ]
  %.sroa.0646.010201057 = phi i32 [ %.sroa.0646.01041, %._crit_edge ], [ %.sroa.0646.010201074, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit281._crit_edge ], [ %.sroa.0646.010201074, %bb.cd ], [ %.sroa.0646.010201074, %bb.ce ], [ %.sroa.0646.010201074, %bb.cf ], [ %.sroa.0646.010201074, %bb.ba ], [ %.sroa.0646.010201074, %bb.bb ], [ %.sroa.0646.010201074, %bb.bc ], [ %.sroa.0646.010201074, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit373._crit_edge ], [ %.sroa.0646.010201074, %bb.ca ], [ %.sroa.0646.010201074, %bb.cb ], [ %.sroa.0646.010201074, %bb.cc ], [ %.sroa.0646.010201074, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit416.preheader ], [ 0, %._crit_edge.thread ], [ %.sroa.0646.010201074, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit434.thread ]
  %.sroa.0673.010231056 = phi i32 [ %.sroa.0673.01043, %._crit_edge ], [ %.sroa.0673.010231072, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit281._crit_edge ], [ %.sroa.0673.010231072, %bb.cd ], [ %.sroa.0673.010231072, %bb.ce ], [ %.sroa.0673.010231072, %bb.cf ], [ %.sroa.0673.010231072, %bb.ba ], [ %.sroa.0673.010231072, %bb.bb ], [ %.sroa.0673.010231072, %bb.bc ], [ %.sroa.0673.010231072, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit373._crit_edge ], [ %.sroa.0673.010231072, %bb.ca ], [ %.sroa.0673.010231072, %bb.cb ], [ %.sroa.0673.010231072, %bb.cc ], [ %.sroa.0673.010231072, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit416.preheader ], [ 0, %._crit_edge.thread ], [ %.sroa.0673.010231072, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit434.thread ]
  %.sroa.14681.01022 = phi ptr [ %.sroa.14681.01042, %._crit_edge ], [ %.sroa.14681.010211073, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit281._crit_edge ], [ %.sroa.14681.010211073, %bb.cd ], [ %.sroa.14681.010211073, %bb.ce ], [ %.sroa.14681.010211073, %bb.cf ], [ %.sroa.14681.010211073, %bb.ba ], [ %.sroa.14681.010211073, %bb.bb ], [ %.sroa.14681.010211073, %bb.bc ], [ %.sroa.14681.010211073, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit373._crit_edge ], [ %.sroa.14681.010211073, %bb.ca ], [ %.sroa.14681.010211073, %bb.cb ], [ %.sroa.14681.010211073, %bb.cc ], [ %.sroa.14681.010211073, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit416.preheader ], [ null, %._crit_edge.thread ], [ %.sroa.14681.010211073, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit434.thread ]
  %.sroa.15655.01018 = phi ptr [ %.sroa.15655.01039, %._crit_edge ], [ %.sroa.15655.010171076, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit281._crit_edge ], [ %.sroa.15655.010171076, %bb.cd ], [ %.sroa.15655.010171076, %bb.ce ], [ %.sroa.15655.010171076, %bb.cf ], [ %.sroa.15655.010171076, %bb.ba ], [ %.sroa.15655.010171076, %bb.bb ], [ %.sroa.15655.010171076, %bb.bc ], [ %.sroa.15655.010171076, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit373._crit_edge ], [ %.sroa.15655.010171076, %bb.ca ], [ %.sroa.15655.010171076, %bb.cb ], [ %.sroa.15655.010171076, %bb.cc ], [ %.sroa.15655.010171076, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit416.preheader ], [ null, %._crit_edge.thread ], [ %.sroa.15655.010171076, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit434.thread ]
  %.sroa.14630.01014 = phi ptr [ %.sroa.14630.01036, %._crit_edge ], [ %.sroa.14630.010131079, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit281._crit_edge ], [ %.sroa.14630.010131079, %bb.cd ], [ %.sroa.14630.010131079, %bb.ce ], [ %.sroa.14630.010131079, %bb.cf ], [ %.sroa.14630.010131079, %bb.ba ], [ %.sroa.14630.010131079, %bb.bb ], [ %.sroa.14630.010131079, %bb.bc ], [ %.sroa.14630.010131079, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit373._crit_edge ], [ %.sroa.14630.010131079, %bb.ca ], [ %.sroa.14630.010131079, %bb.cb ], [ %.sroa.14630.010131079, %bb.cc ], [ %.sroa.14630.010131079, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit416.preheader ], [ null, %._crit_edge.thread ], [ %.sroa.14630.010131079, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit434.thread ]
  %.3 = phi i1 [ true, %._crit_edge ], [ false, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit281._crit_edge ], [ false, %bb.cd ], [ false, %bb.ce ], [ false, %bb.cf ], [ false, %bb.ba ], [ false, %bb.bb ], [ false, %bb.bc ], [ true, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit373._crit_edge ], [ true, %bb.ca ], [ true, %bb.cb ], [ true, %bb.cc ], [ true, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit416.preheader ], [ true, %._crit_edge.thread ], [ true, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit434.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.cu

bb.cu:                                            ; preds = %_ZN11hb_vector_tIfLb0EE6resizeEi.exit205, %.critedge
  %.sroa.14630.1 = phi ptr [ %.sroa.14630.01014, %.critedge ], [ %i.cw, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit205 ]
  %.sroa.0622.1 = phi i32 [ %.sroa.0622.010161058, %.critedge ], [ %i.cr, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit205 ]
  %.sroa.15655.1 = phi ptr [ %.sroa.15655.01018, %.critedge ], [ %i.cm, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit205 ] ; 2 uses
  %.sroa.0646.1 = phi i32 [ %.sroa.0646.010201057, %.critedge ], [ %i.ch, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit205 ] ; 2 uses
  %.sroa.14681.1 = phi ptr [ %.sroa.14681.01022, %.critedge ], [ %i.bw, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit205 ] ; 2 uses
  %.sroa.0673.1 = phi i32 [ %.sroa.0673.010231056, %.critedge ], [ %i.br, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit205 ] ; 2 uses
  %.4 = phi i1 [ %.3, %.critedge ], [ false, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit205 ] ; 2 uses
  %.not = icmp eq i32 %.sroa.0622.1, 0
  br i1 %.not, label %_ZN11hb_vector_tIfLb0EED2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @hb_free(ptr noundef %.sroa.14630.1) #10
  br label %_ZN11hb_vector_tIfLb0EED2Ev.exit

_ZN11hb_vector_tIfLb0EED2Ev.exit:                 ; preds = %_ZN11hb_vector_tIfLb0EE6resizeEi.exit205.thread, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit201, %bb.cu, %bb.cv
  %.4861 = phi i1 [ %.4, %bb.cv ], [ %.4, %bb.cu ], [ false, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit201 ], [ false, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit205.thread ] ; 2 uses
  %.sroa.0673.1860 = phi i32 [ %.sroa.0673.1, %bb.cv ], [ %.sroa.0673.1, %bb.cu ], [ %i.br, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit201 ], [ %i.br, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit205.thread ] ; 2 uses
  %.sroa.14681.1859 = phi ptr [ %.sroa.14681.1, %bb.cv ], [ %.sroa.14681.1, %bb.cu ], [ %i.bw, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit201 ], [ %i.bw, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit205.thread ] ; 2 uses
  %.sroa.0646.1858 = phi i32 [ %.sroa.0646.1, %bb.cv ], [ %.sroa.0646.1, %bb.cu ], [ %i.ch, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit201 ], [ %i.ch, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit205.thread ]
  %.sroa.15655.1857 = phi ptr [ %.sroa.15655.1, %bb.cv ], [ %.sroa.15655.1, %bb.cu ], [ %i.cm, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit201 ], [ %i.cm, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit205.thread ]
  %.not993 = icmp eq i32 %.sroa.0646.1858, 0
  br i1 %.not993, label %_ZN11hb_vector_tIfLb0EED2Ev.exit454, label %bb.cw

bb.cw:                                            ; preds = %_ZN11hb_vector_tIfLb0EED2Ev.exit
  call void @hb_free(ptr noundef %.sroa.15655.1857) #10
  br label %_ZN11hb_vector_tIfLb0EED2Ev.exit454

_ZN11hb_vector_tIfLb0EED2Ev.exit454:              ; preds = %_ZN11hb_vector_tIfLb0EE6resizeEi.exit, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit201.thread, %_ZN11hb_vector_tIfLb0EED2Ev.exit, %bb.cw
  %.sroa.14681.1859870 = phi ptr [ %.sroa.14681.1859, %bb.cw ], [ %.sroa.14681.1859, %_ZN11hb_vector_tIfLb0EED2Ev.exit ], [ %i.bw, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit ], [ %i.bw, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit201.thread ]
  %.sroa.0673.1860869 = phi i32 [ %.sroa.0673.1860, %bb.cw ], [ %.sroa.0673.1860, %_ZN11hb_vector_tIfLb0EED2Ev.exit ], [ %i.br, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit ], [ %i.br, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit201.thread ]
  %.4861868 = phi i1 [ %.4861, %bb.cw ], [ %.4861, %_ZN11hb_vector_tIfLb0EED2Ev.exit ], [ false, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit ], [ false, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit201.thread ] ; 2 uses
  %.not994 = icmp eq i32 %.sroa.0673.1860869, 0
  br i1 %.not994, label %_ZN11hb_vector_tIfLb0EED2Ev.exit456, label %bb.cx

bb.cx:                                            ; preds = %_ZN11hb_vector_tIfLb0EED2Ev.exit454
  call void @hb_free(ptr noundef %.sroa.14681.1859870) #10
  br label %_ZN11hb_vector_tIfLb0EED2Ev.exit456

_ZN11hb_vector_tIfLb0EED2Ev.exit456:              ; preds = %_ZN11hb_vector_tIfLb0EE6resizeEi.exit.thread731, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit.thread, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread, %_ZN11hb_vector_tIfLb0EED2Ev.exit454, %bb.cx, %bb.a
  %.6 = phi i1 [ true, %bb.a ], [ false, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread ], [ false, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ %.4861868, %_ZN11hb_vector_tIfLb0EED2Ev.exit454 ], [ %.4861868, %bb.cx ], [ false, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit.thread ], [ false, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit.thread731 ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !50   ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !51
  %.not = icmp slt i32 %i.b, %i.c
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, 1
  %i.e = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.d, i1 noundef zeroext false)
  br i1 %i.e, label %..critedge_crit_edge, label %bb.c, !prof !22

..critedge_crit_edge:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !50
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @_hb_NullPool, align 16
  store i32 %i.f, ptr @_hb_CrapPool, align 16
  br label %bb.d

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.a
  %i.g = phi i32 [ %.pre, %..critedge_crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.j = add i32 %i.g, 1
  store i32 %i.j, ptr %i.a, align 4, !tbaa !50
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !8
  store i32 %i.m, ptr %i.l, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.0 = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.l, %.critedge ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT4avar15map_coords_2_14EPfjb(ptr noundef nonnull align 1 dereferenceable(14) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br i1 %3, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %_ZN11hb_vector_tIiLb0EED2Ev.exit, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  %.not.i50.not = icmp eq i32 %2, 0
  br i1 %.not.i50.not, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread, label %.preheader.i, !prof !22

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.043.i = phi i32 [ %i.d, %.preheader.i ], [ 0, %bb.c ] ; 2 uses
  %i.b = lshr i32 %.043.i, 1
  %i.c = add nuw i32 %.043.i, 8
  %i.d = add nuw i32 %i.c, %i.b                   ; 4 uses
  %i.e = icmp ugt i32 %2, %i.d
  br i1 %i.e, label %.preheader.i, label %.thread.i, !llvm.loop !181

.thread.i:                                        ; preds = %.preheader.i
  %i.f = icmp ugt i32 %i.d, 1073741823
  br i1 %i.f, label %_ZN11hb_vector_tIiLb0EED2Ev.exit, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i, !prof !21

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.g = shl nuw i32 %i.d, 2
  %i.h = zext i32 %i.g to i64
  %i.i = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.h) #10 ; 4 uses
  %.not22.i = icmp eq ptr %i.i, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIiLb0EED2Ev.exit, label %4, !prof !129

4:                                                ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i
  %5 = shl i32 %2, 2                              ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread, label %bb.d, !prof !21

bb.d:                                             ; preds = %4
  %i.j = zext i32 %5 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.j, i1 false)
  br label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread

_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread:     ; preds = %4, %bb.d, %bb.c, %bb.a
  %.sroa.14.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.i, %4 ], [ %i.i, %bb.d ] ; 4 uses
  %.sroa.7.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %2, %4 ], [ %2, %bb.d ] ; 3 uses
  %.not134 = phi i1 [ true, %bb.a ], [ true, %bb.c ], [ false, %4 ], [ false, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %.val40 = load i16, ptr %i.k, align 1, !tbaa !53
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %.val40)
  %i.m = zext i16 %i.l to i32
  %spec.select.i = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 %2, i32 %i.m) ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not = icmp eq i32 %spec.select.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread
  %i.o = load i32, ptr @_hb_NullPool, align 16
  %i.p = zext nneg i32 %.sroa.7.0 to i64
  %wide.trip.count = zext nneg i32 %spec.select.i to i64
  br label %bb.e

._crit_edge:                                      ; preds = %bb.i, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread
  %.037.lcssa = phi ptr [ %i.n, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread ], [ %i.af, %bb.i ] ; 3 uses
  br i1 %3, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, label %bb.j

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %.037107 = phi ptr [ %i.n, %.lr.ph ], [ %i.af, %bb.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !138
  %i.s = tail call noundef float @_ZNK2OT11SegmentMaps9map_floatEfjj(ptr noundef nonnull align 1 dereferenceable(6) %.037107, float noundef %i.r, i32 noundef 0, i32 noundef 1)
  %i.t = fmul float %i.s, 1.638400e+04
  %i.u = fadd float %i.t, 5.000000e-01
  %i.v = tail call noundef float @llvm.floor.f32(float %i.u)
  %i.w = fptosi float %i.v to i32                 ; 2 uses
  br i1 %3, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.p
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  store i32 %i.o, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.0, i64 %indvars.iv
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit

_ZN11hb_vector_tIiLb0EEixEi.exit:                 ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.g ], [ %i.x, %bb.h ]
  store i32 %i.w, ptr %.0.i, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit, %bb.e
  %i.y = sitofp i32 %i.w to float
  %i.z = fmul nnan float %i.y, f0x38800000
  store float %i.z, ptr %i.q, align 4, !tbaa !138
  %i.aa = load i16, ptr %.037107, align 1, !tbaa !53
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %.037107, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !182

bb.j:                                             ; preds = %._crit_edge
  %i.ag = load i16, ptr %0, align 1, !tbaa !53
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %i.ag)
  %i.ai = icmp ult i16 %i.ah, 2
  br i1 %i.ai, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.aj = load i16, ptr %i.k, align 1, !tbaa !53
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj)
  %i.al = zext i16 %i.ak to i32                   ; 4 uses
  %i.am = icmp samesign ult i32 %spec.select.i, %i.al
  br i1 %i.am, label %.lr.ph112.preheader, label %._crit_edge113

.lr.ph112.preheader:                              ; preds = %bb.k
  %i.an = sub nuw nsw i32 %i.al, %spec.select.i
  %xtraiter = and i32 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph112.prol.loopexit, label %.lr.ph112.prol

.lr.ph112.prol:                                   ; preds = %.lr.ph112.preheader, %.lr.ph112.prol
  %.138110.prol = phi ptr [ %i.at, %.lr.ph112.prol ], [ %.037.lcssa, %.lr.ph112.preheader ] ; 2 uses
  %.039109.prol = phi i32 [ %i.au, %.lr.ph112.prol ], [ %spec.select.i, %.lr.ph112.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph112.prol ], [ 0, %.lr.ph112.preheader ]
  %i.ao = load i16, ptr %.138110.prol, align 1, !tbaa !53
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao)
  %i.aq = zext i16 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 2
  %i.as = getelementptr inbounds nuw i8, ptr %.138110.prol, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2 ; 3 uses
  %i.au = add nuw nsw i32 %.039109.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph112.prol.loopexit, label %.lr.ph112.prol, !llvm.loop !183

.lr.ph112.prol.loopexit:                          ; preds = %.lr.ph112.prol, %.lr.ph112.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph112.preheader ], [ %i.at, %.lr.ph112.prol ]
  %.138110.unr = phi ptr [ %.037.lcssa, %.lr.ph112.preheader ], [ %i.at, %.lr.ph112.prol ]
  %.039109.unr = phi i32 [ %spec.select.i, %.lr.ph112.preheader ], [ %i.au, %.lr.ph112.prol ]
  %i.av = sub nsw i32 %spec.select.i, %i.al
  %i.aw = icmp ugt i32 %i.av, -4
  br i1 %i.aw, label %._crit_edge113, label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.prol.loopexit, %.lr.ph112
  %.138110 = phi ptr [ %i.bu, %.lr.ph112 ], [ %.138110.unr, %.lr.ph112.prol.loopexit ] ; 2 uses
  %.039109 = phi i32 [ %i.bv, %.lr.ph112 ], [ %.039109.unr, %.lr.ph112.prol.loopexit ]
  %i.ax = load i16, ptr %.138110, align 1, !tbaa !53
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  %i.az = zext i16 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.138110, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 1, !tbaa !53
  %i.be = tail call noundef i16 @llvm.bswap.i16(i16 %i.bd)
  %i.bf = zext i16 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 1, !tbaa !53
  %i.bk = tail call noundef i16 @llvm.bswap.i16(i16 %i.bj)
  %i.bl = zext i16 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 2 ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 1, !tbaa !53
  %i.bq = tail call noundef i16 @llvm.bswap.i16(i16 %i.bp)
  %i.br = zext i16 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2 ; 2 uses
  %i.bv = add nuw nsw i32 %.039109, 4             ; 2 uses
  %exitcond122.not.3 = icmp eq i32 %i.bv, %i.al
  br i1 %exitcond122.not.3, label %._crit_edge113, label %.lr.ph112, !llvm.loop !184

._crit_edge113:                                   ; preds = %.lr.ph112.prol.loopexit, %.lr.ph112, %bb.k
  %.138.lcssa = phi ptr [ %.037.lcssa, %bb.k ], [ %.lcssa.unr, %.lr.ph112.prol.loopexit ], [ %i.bu, %.lr.ph112 ] ; 2 uses
  %i.bw = load i32, ptr %.138.lcssa, align 1, !tbaa !55 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  %i.by = tail call i32 @llvm.bswap.i32(i32 %i.bw)
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz
  %.0.i.i = select i1 %i.bx, ptr @_hb_NullPool, ptr %i.ca, !prof !21
  %i.cb = getelementptr inbounds nuw i8, ptr %.138.lcssa, i64 4
  %i.cc = load i32, ptr %i.cb, align 1, !tbaa !55 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 0
  %i.ce = tail call i32 @llvm.bswap.i32(i32 %i.cc)
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  %.0.i.i41 = select i1 %i.cd, ptr @_hb_NullPool, ptr %i.cg, !prof !21 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 2 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 1, !tbaa !55 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  %i.ck = tail call i32 @llvm.bswap.i32(i32 %i.ci)
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 %i.cl
  %.0.i.i.i = select i1 %i.cj, ptr @_hb_NullPool, ptr %i.cm, !prof !21
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.co = load i16, ptr %i.cn, align 1, !tbaa !53 ; 2 uses
  %i.cp = tail call noundef i16 @llvm.bswap.i16(i16 %i.co) ; 3 uses
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %.not.i.i = icmp eq i16 %i.co, 0
  br i1 %.not.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge113
  %i.cr = zext i16 %i.cp to i64                   ; 5 uses
  %i.cs = shl nuw nsw i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 4
  %i.cu = tail call ptr @hb_malloc(i64 noundef %i.ct) #10 ; 6 uses
  %.not16.i.i = icmp eq ptr %i.cu, null
  br i1 %.not16.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  store i32 %i.cq, ptr %i.cu, align 4, !tbaa !57
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 12 uses
  %i.cw = icmp ugt i16 %i.cp, 3
  br i1 %i.cw, label %.lr.ph.i25.i.i.preheader, label %.preheader.i17.i.i

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.m
  %i.cx = add nsw i64 %i.cr, -4                   ; 2 uses
  %i.cy = lshr i64 %i.cx, 2                       ; 2 uses
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %i.da = icmp eq i64 %i.cy, 0
  br i1 %i.da, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i64 %i.cz, 9223372036854775806
  br label %.lr.ph.i25.i.i

.preheader.i17.i.loopexit.i.unr-lcssa:            ; preds = %.lr.ph.i25.i.i
  %i.db = and i64 %i.cx, 4
  %lcmp.mod142.not.not = icmp eq i64 %i.db, 0
  br i1 %lcmp.mod142.not.not, label %.lr.ph.i25.i.i.epil.preheader, label %.preheader.i17.i.loopexit.i

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i.preheader ], [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod144 = trunc i64 %i.cz to i1
  tail call void @llvm.assume(i1 %lcmp.mod144)
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.dc monotonic, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store atomic i32 -2147483648, ptr %i.dd monotonic, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store atomic i32 -2147483648, ptr %i.de monotonic, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store atomic i32 -2147483648, ptr %i.df monotonic, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil.init, 4
  br label %.preheader.i17.i.loopexit.i

.preheader.i17.i.loopexit.i:                      ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.epil.preheader
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i.epil, %.lr.ph.i25.i.i.epil.preheader ]
  %i.dg = trunc nuw nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.preheader.i17.i.i

.preheader.i17.i.i:                               ; preds = %.preheader.i17.i.loopexit.i, %bb.m
  %.0.lcssa.i18.i.i = phi i32 [ 0, %bb.m ], [ %i.dg, %.preheader.i17.i.loopexit.i ] ; 2 uses
  %i.dh = icmp samesign ult i32 %.0.lcssa.i18.i.i, %i.cq
  br i1 %i.dh, label %.lr.ph18.preheader.i19.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit

.lr.ph18.preheader.i19.i.i:                       ; preds = %.preheader.i17.i.i
  %i.di = zext i32 %.0.lcssa.i18.i.i to i64       ; 4 uses
  %i.dj = sub nsw i64 %i.cr, %i.di
  %xtraiter145 = and i64 %i.dj, 7                 ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol

.lr.ph18.i21.i.i.prol:                            ; preds = %.lr.ph18.preheader.i19.i.i, %.lr.ph18.i21.i.i.prol
  %indvars.iv.i22.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ], [ %i.di, %.lr.ph18.preheader.i19.i.i ] ; 2 uses
  %prol.iter147 = phi i64 [ %prol.iter147.next, %.lr.ph18.i21.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i22.i.i.prol
  store atomic i32 -2147483648, ptr %i.dk monotonic, align 4
  %indvars.iv.next.i23.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.prol, 1 ; 2 uses
  %prol.iter147.next = add i64 %prol.iter147, 1   ; 2 uses
  %prol.iter147.cmp.not = icmp eq i64 %prol.iter147.next, %xtraiter145
  br i1 %prol.iter147.cmp.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol, !llvm.loop !185

.lr.ph18.i21.i.i.prol.loopexit:                   ; preds = %.lr.ph18.i21.i.i.prol, %.lr.ph18.preheader.i19.i.i
  %indvars.iv.i22.i.i.unr = phi i64 [ %i.di, %.lr.ph18.preheader.i19.i.i ], [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ]
  %i.dl = sub nsw i64 %i.di, %i.cr
  %i.dm = icmp ugt i64 %i.dl, -8
  br i1 %i.dm, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i25.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i25.i.i ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.dn monotonic, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store atomic i32 -2147483648, ptr %i.do monotonic, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store atomic i32 -2147483648, ptr %i.dp monotonic, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  store atomic i32 -2147483648, ptr %i.dq monotonic, align 4
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store atomic i32 -2147483648, ptr %i.ds monotonic, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  store atomic i32 -2147483648, ptr %i.dt monotonic, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store atomic i32 -2147483648, ptr %i.du monotonic, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 28
  store atomic i32 -2147483648, ptr %i.dv monotonic, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.i.unr-lcssa, label %.lr.ph.i25.i.i, !llvm.loop !61

.lr.ph18.i21.i.i:                                 ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i
  %indvars.iv.i22.i.i = phi i64 [ %indvars.iv.next.i23.i.i.7, %.lr.ph18.i21.i.i ], [ %indvars.iv.i22.i.i.unr, %.lr.ph18.i21.i.i.prol.loopexit ] ; 9 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i22.i.i
  store atomic i32 -2147483648, ptr %i.dw monotonic, align 4
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i22.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  store atomic i32 -2147483648, ptr %i.dy monotonic, align 4
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i22.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store atomic i32 -2147483648, ptr %i.ea monotonic, align 4
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i22.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store atomic i32 -2147483648, ptr %i.ec monotonic, align 4
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i22.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store atomic i32 -2147483648, ptr %i.ee monotonic, align 4
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i22.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  store atomic i32 -2147483648, ptr %i.eg monotonic, align 4
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i22.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  store atomic i32 -2147483648, ptr %i.ei monotonic, align 4
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i22.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 28
  store atomic i32 -2147483648, ptr %i.ek monotonic, align 4
  %indvars.iv.next.i23.i.i.7 = add nuw nsw i64 %indvars.iv.i22.i.i, 8 ; 2 uses
  %exitcond.not.i24.i.i.7 = icmp eq i64 %indvars.iv.next.i23.i.i.7, %i.cr
  br i1 %exitcond.not.i24.i.i.7, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i, !llvm.loop !62

_ZNK2OT18ItemVariationStore12create_cacheEv.exit: ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i, %._crit_edge113, %bb.l, %.preheader.i17.i.i
  %.1.i.i42 = phi ptr [ @_hb_NullPool, %._crit_edge113 ], [ @_hb_NullPool, %bb.l ], [ %i.cu, %.preheader.i17.i.i ], [ %i.cu, %.lr.ph18.i21.i.i ], [ %i.cu, %.lr.ph18.i21.i.i.prol.loopexit ] ; 3 uses
  %.not118 = icmp eq i32 %2, 0
  br i1 %.not118, label %._crit_edge117, label %.lr.ph116

.lr.ph116:                                        ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit
  %i.el = load i32, ptr @_hb_NullPool, align 16   ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 6
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 8
  %i.eo = zext nneg i32 %.sroa.7.0 to i64
  %wide.trip.count126 = zext i32 %2 to i64
  br label %bb.o

._crit_edge117:                                   ; preds = %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit, %_ZNK2OT18ItemVariationStore12create_cacheEv.exit
  %.not.i.i43 = icmp eq ptr %.1.i.i42, @_hb_NullPool
  br i1 %.not.i.i43, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge117
  tail call void @hb_free(ptr noundef nonnull %.1.i.i42) #10
  br label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit

bb.o:                                             ; preds = %.lr.ph116, %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit
  %indvars.iv123 = phi i64 [ 0, %.lr.ph116 ], [ %indvars.iv.next124, %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit ] ; 5 uses
  %.not.i44 = icmp samesign ult i64 %indvars.iv123, %i.eo
  br i1 %.not.i44, label %bb.q, label %bb.p, !prof !22

bb.p:                                             ; preds = %bb.o
  store i32 %i.el, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit46

bb.q:                                             ; preds = %bb.o
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.0, i64 %indvars.iv123
  %.pre = load i32, ptr %i.ep, align 4, !tbaa !8
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit46

_ZN11hb_vector_tIiLb0EEixEi.exit46:               ; preds = %bb.p, %bb.q
  %i.eq = phi i32 [ %i.el, %bb.p ], [ %.pre, %bb.q ]
  %i.er = trunc nuw i64 %indvars.iv123 to i32
  %i.es = tail call noundef i32 @_ZNK2OT16DeltaSetIndexMap3mapEj(ptr noundef nonnull align 1 dereferenceable(7) %.0.i.i, i32 noundef %i.er) ; 2 uses
  %i.et = lshr i32 %i.es, 16                      ; 2 uses
  %i.eu = and i32 %i.es, 65535
  %i.ev = load i16, ptr %i.em, align 1, !tbaa !53
  %i.ew = tail call noundef i16 @llvm.bswap.i16(i16 %i.ev)
  %i.ex = zext i16 %i.ew to i32
  %.not.i.i47 = icmp samesign ult i32 %i.et, %i.ex
  br i1 %.not.i.i47, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i, label %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit, !prof !22

_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i: ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit46
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.ey = zext nneg i32 %i.et to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 1, !tbaa !55 ; 2 uses
  %i.fb = icmp eq i32 %i.fa, 0
  %i.fc = tail call i32 @llvm.bswap.i32(i32 %i.fa)
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 %i.fd
  %.0.i.i.i.i = select i1 %i.fb, ptr @_hb_NullPool, ptr %i.fe, !prof !21 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  %i.fg = load i16, ptr %i.ff, align 1, !tbaa !53
  %.not.i.i.i = icmp eq i16 %i.fg, 0
  br i1 %.not.i.i.i, label %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit, label %bb.r

bb.r:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i
  %i.fh = load i32, ptr %i.ch, align 1, !tbaa !55 ; 2 uses
  %i.fi = icmp eq i32 %i.fh, 0
  %i.fj = tail call i32 @llvm.bswap.i32(i32 %i.fh)
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 %i.fk
  %.0.i.i10.i.i = select i1 %i.fi, ptr @_hb_NullPool, ptr %i.fl, !prof !21
  %i.fm = tail call noundef float @_ZNK2OT7VarData10_get_deltaEjPKijRKNS_13VarRegionListEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i.i, i32 noundef %i.eu, ptr noundef %.sroa.14.0, i32 noundef %.sroa.7.0, ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i10.i.i, ptr noundef nonnull %.1.i.i42)
  %i.fn = fadd float %i.fm, 5.000000e-01
  %i.fo = tail call float @llvm.floor.f32(float %i.fn)
  br label %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit

_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit: ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit46, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i, %bb.r
  %.0.i.i48 = phi float [ 0.000000e+00, %_ZN11hb_vector_tIiLb0EEixEi.exit46 ], [ %i.fo, %bb.r ], [ 0.000000e+00, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i ] ; 2 uses
  %i.fp = fcmp oge float %.0.i.i48, -3.276800e+04
  %i.fq = select i1 %i.fp, float %.0.i.i48, float -3.276800e+04 ; 2 uses
  %i.fr = fcmp ole float %i.fq, 3.276800e+04
  %.sroa.speculated56 = select i1 %i.fr, float %i.fq, float 3.276800e+04
  %i.fs = fptosi float %.sroa.speculated56 to i32
  %i.ft = add nsw i32 %i.eq, %i.fs
  %.sroa.speculate.load.false.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.ft, i32 -16384)
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated, i32 16384)
  %i.fu = sitofp i32 %.sroa.speculated to float
  %i.fv = fmul nnan float %i.fu, f0x38800000
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv123
  store float %i.fv, ptr %i.fw, align 4, !tbaa !138
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge117, label %bb.o, !llvm.loop !186

_ZN11hb_vector_tIiLb0EE6resizeEi.exit:            ; preds = %bb.n, %._crit_edge117, %._crit_edge, %bb.j
  br i1 %.not134, label %_ZN11hb_vector_tIiLb0EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN11hb_vector_tIiLb0EE6resizeEi.exit
  tail call void @hb_free(ptr noundef %.sroa.14.0) #10
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit

_ZN11hb_vector_tIiLb0EED2Ev.exit:                 ; preds = %.thread.i, %bb.b, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, %bb.s
  %.1106 = phi i1 [ true, %bb.s ], [ true, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ false, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i ], [ false, %bb.b ], [ false, %.thread.i ]
  ret i1 %.1106
}

declare ptr @hb_face_reference_table(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @hb_blob_get_length(ptr noundef) local_unnamed_addr #2

declare void @hb_blob_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL31_compute_avar2_reachable_rangesP16hb_subset_plan_t10hb_array_tIKN2OT10AxisRecordEEPKNS2_4avarEb(ptr noundef %0, ptr nofree readonly captures(address) %1, i64 %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.hb_hashmap_t.304, align 8   ; 12 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %i.c = alloca double, align 8                   ; 7 uses
  %6 = alloca %struct.hb_pair_t.305, align 8      ; 5 uses
  %7 = alloca %struct.hb_vector_t.306, align 8    ; 10 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %8 = alloca %struct.Triple, align 8             ; 6 uses
  %i.f = load i16, ptr %3, align 1, !tbaa !53
  %i.g = tail call noundef i16 @llvm.bswap.i16(i16 %i.f)
  %i.h = icmp ugt i16 %i.g, 1
  br i1 %i.h, label %bb.b, label %_ZNK2OT4avar20get_v2_store_and_mapEPPKNS_18ItemVariationStoreEPPKNS_16DeltaSetIndexMapE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.k = load i16, ptr %i.j, align 1, !tbaa !53   ; 2 uses
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k) ; 2 uses
  %i.m = zext i16 %i.l to i32                     ; 2 uses
  %.not.i = icmp eq i16 %i.k, 0
  br i1 %.not.i, label %.loopexit346, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i32 %i.m, 3                     ; 3 uses
  %i.n = icmp ult i16 %i.l, 4
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.m, 65532
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.01013.i = phi ptr [ %i.i, %.lr.ph.i.preheader.new ], [ %i.al, %.lr.ph.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.o = load i16, ptr %.01013.i, align 1, !tbaa !53
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = zext i16 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = getelementptr inbounds nuw i8, ptr %.01013.i, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  %i.u = load i16, ptr %i.t, align 1, !tbaa !53
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  %i.w = zext i16 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 1, !tbaa !53
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !53
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %i.ag)
  %i.ai = zext i16 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit346.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !187

.loopexit346.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit346, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit346.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.01013.i.epil.init = phi ptr [ %i.i, %.lr.ph.i.preheader ], [ %i.al, %.loopexit346.loopexit.unr-lcssa ]
  %lcmp.mod603 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod603)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.01013.i.epil = phi ptr [ %i.ar, %.lr.ph.i.epil ], [ %.01013.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.am = load i16, ptr %.01013.i.epil, align 1, !tbaa !53
  %i.an = tail call noundef i16 @llvm.bswap.i16(i16 %i.am)
  %i.ao = zext i16 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.01013.i.epil, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit346, label %.lr.ph.i.epil, !llvm.loop !188

.loopexit346:                                     ; preds = %.loopexit346.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  %.010.lcssa.i = phi ptr [ %i.i, %bb.b ], [ %i.al, %.loopexit346.loopexit.unr-lcssa ], [ %i.ar, %.lr.ph.i.epil ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.010.lcssa.i, i64 4
  %i.at = load i32, ptr %i.as, align 1, !tbaa !55 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  %i.av = tail call i32 @llvm.bswap.i32(i32 %i.at)
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %i.aw
  %.0.i.i.i = select i1 %i.au, ptr @_hb_NullPool, ptr %i.ax, !prof !21 ; 5 uses
  %i.ay = load i32, ptr %.010.lcssa.i, align 1, !tbaa !55 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb
  %.0.i.i11.i = select i1 %i.az, ptr @_hb_NullPool, ptr %i.bc, !prof !21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store atomic i32 1, ptr %5 monotonic, align 8
  store atomic i8 1, ptr %i.bd monotonic, align 4
  store atomic ptr null, ptr %i.be monotonic, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.bf, align 8, !tbaa !189
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr null, ptr %i.bh, align 8, !tbaa !192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.bg, i8 0, i64 18, i1 false)
  %i.bi = and i64 %2, 4294967295                  ; 3 uses
  %.idx = mul nuw nsw i64 %i.bi, 20
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not368 = icmp ne i64 %i.bi, 0                 ; 2 uses
  br i1 %.not368, label %.lr.ph, label %.critedge146

.lr.ph:                                           ; preds = %.loopexit346
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2396
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2552
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2544
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2540
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %.0112369, i64 20 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.bj
  br i1 %.not, label %.critedge146, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.0112369 = phi ptr [ %1, %.lr.ph ], [ %i.br, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.bs = load i32, ptr %.0112369, align 1, !tbaa !55
  %i.bt = call noundef i32 @llvm.bswap.i32(i32 %i.bs) ; 7 uses
  store i32 %i.bt, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store double -1.000000e+00, ptr %i.b, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !140
  %i.bu = load ptr, ptr %i.bk, align 8, !tbaa !130 ; 3 uses
  %.not.i157 = icmp eq ptr %i.bu, null
  br i1 %.not.i157, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bv = mul i32 %i.bt, 506952113
  %i.bw = and i32 %i.bv, 1073741823               ; 2 uses
  %i.bx = load i32, ptr %i.bl, align 8, !tbaa !131
  %i.by = urem i32 %i.bw, %i.bx                   ; 2 uses
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = and i32 %i.cc, 2
  %.not15.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.ce = load i32, ptr %i.bm, align 4
  %i.cf = load i32, ptr %i.ca, align 4, !tbaa !8
  %i.cg = icmp eq i32 %i.cf, %i.bt
  br i1 %i.cg, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit, label %.lr.ph.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ch = load i32, ptr %i.cn, align 4, !tbaa !8
  %i.ci = icmp eq i32 %i.ch, %i.bt
  br i1 %i.ci, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit, label %.lr.ph.i.i, !llvm.loop !132

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.f
  %.01016.i20.i.i = phi i32 [ %i.cl, %bb.f ], [ %i.by, %.lr.ph.i.i.i ]
  %.017.i19.i.i = phi i32 [ %i.cj, %bb.f ], [ 0, %.lr.ph.i.i.i ]
  %i.cj = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.ck = add i32 %i.cj, %.01016.i20.i.i
  %i.cl = and i32 %i.ck, %i.ce                    ; 2 uses
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
end_hunk_0
begin_hunk_1_@_ZNK2OT16FeatMinMaxRecord25collect_variation_indicesEPK16hb_subset_plan_tPKvR8hb_set_t:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bm = load i16, ptr %i.bl, align 1, !tbaa !53 ; 2 uses
  %i.bn = icmp eq i16 %i.bm, 0
  %i.bo = tail call i16 @llvm.bswap.i16(i16 %i.bm)
  %i.bp = zext i16 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bp
  %.0.i.i4 = select i1 %i.bn, ptr @_hb_NullPool, ptr %i.bq, !prof !21 ; 3 uses
  %i.br = load i16, ptr %.0.i.i4, align 1, !tbaa !53
  %cond.i5 = icmp eq i16 %i.br, 768
  br i1 %cond.i5, label %bb.m, label %_ZNK2OT9BaseCoord25collect_variation_indicesER8hb_set_t.exit10

bb.m:                                             ; preds = %_ZNK2OT9BaseCoord25collect_variation_indicesER8hb_set_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i4, i64 4
  %i.bt = load i16, ptr %i.bs, align 1, !tbaa !53 ; 2 uses
  %i.bu = icmp eq i16 %i.bt, 0
  %i.bv = tail call i16 @llvm.bswap.i16(i16 %i.bt)
  %i.bw = zext i16 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i4, i64 %i.bw
  %.0.i.i.i.i6 = select i1 %i.bu, ptr @_hb_NullPool, ptr %i.bx, !prof !21 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i6, i64 4
  %i.bz = load i16, ptr %i.by, align 1, !tbaa !53
  %cond.i.i.i7 = icmp eq i16 %i.bz, 128
  br i1 %cond.i.i.i7, label %bb.n, label %_ZNK2OT6Device19get_variation_indexEv.exit.i.i8

bb.n:                                             ; preds = %bb.m
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.ca = load i32, ptr %.0.i.i.i.i6, align 1, !tbaa !55
  %i.cb = tail call noundef i32 @llvm.bswap.i32(i32 %i.ca)
  br label %_ZNK2OT6Device19get_variation_indexEv.exit.i.i8

_ZNK2OT6Device19get_variation_indexEv.exit.i.i8:  ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.cb, %bb.n ], [ -1, %bb.m ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !9, !range !19, !noundef !20
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.o, label %bb.p, !prof !21

bb.o:                                             ; preds = %_ZNK2OT6Device19get_variation_indexEv.exit.i.i8
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.cc, i32 noundef %.0.i.i.i9)
  br label %_ZNK2OT9BaseCoord25collect_variation_indicesER8hb_set_t.exit10

bb.p:                                             ; preds = %_ZNK2OT6Device19get_variation_indexEv.exit.i.i8
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.cc, i32 noundef %.0.i.i.i9)
  br label %_ZNK2OT9BaseCoord25collect_variation_indicesER8hb_set_t.exit10

_ZNK2OT9BaseCoord25collect_variation_indicesER8hb_set_t.exit10: ; preds = %bb.p, %bb.o, %_ZNK2OT9BaseCoord25collect_variation_indicesER8hb_set_t.exit, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !481
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !485
  %i.d = add i32 %i.c, -1
  %spec.select.i.i = icmp ult i32 %i.d, -2
  br i1 %spec.select.i.i, label %bb.c, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !486
  tail call void @hb_free(ptr noundef %i.f) #10
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit: ; preds = %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #10 ; 0 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !481  ; 2 uses
  %.not59 = icmp eq i32 %i.h, 0
  br i1 %.not59, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit
  %i.j = phi i32 [ %i.h, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph ], [ %i.q, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit ]
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !486
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %.sroa.3.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..0.i.i.sroa_idx, align 8, !tbaa !487
  %.sroa.4.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..0.i.i.sroa_idx, align 8, !tbaa !487 ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !488, !noalias !489
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #10 ; 0 uses
  %.not.i6 = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i6, label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit
  tail call void %.sroa.4.0.copyload(ptr noundef %.sroa.3.0.copyload) #10, !inline_history !492
  br label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit

_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, %bb.e
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #10 ; 0 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !481  ; 2 uses
  %.not5 = icmp eq i32 %i.q, 0
  br i1 %.not5, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, !llvm.loop !493

._crit_edge:                                      ; preds = %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, %bb.d
  %i.r = load i32, ptr %0, align 8, !tbaa !485
  %i.s = add i32 %i.r, -1
  %spec.select.i.i7 = icmp ult i32 %i.s, -2
  br i1 %spec.select.i.i7, label %bb.f, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

bb.f:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.a, align 4, !tbaa !488
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !486
  tail call void @hb_free(ptr noundef %i.u) #10
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8: ; preds = %._crit_edge, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK2OT11SegmentMaps9map_floatEfjj(ptr noundef nonnull align 1 dereferenceable(6) %0, float noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 14 uses
  %i.b = load i16, ptr %0, align 1, !tbaa !53     ; 2 uses
  %i.c = tail call noundef i16 @llvm.bswap.i16(i16 %i.b) ; 3 uses
  %i.d = zext i16 %i.c to i32                     ; 4 uses
  %i.e = icmp ult i16 %i.c, 2
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext i32 %2 to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.f
  %i.h = load i16, ptr %i.g, align 1, !tbaa !53
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h)
  %i.j = sitofp i16 %i.i to float
  %i.k = fmul nnan float %i.j, f0x38800000
  %i.l = fsub float %1, %i.k
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.m
  %i.o = load i16, ptr %i.n, align 1, !tbaa !53
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = sitofp i16 %i.p to float
  %i.r = fmul nnan float %i.q, f0x38800000
  %i.s = fadd float %i.l, %i.r
  br label %bb.x

bb.d:                                             ; preds = %bb.a
  %i.t = zext i32 %2 to i64                       ; 8 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load i16, ptr %i.u, align 1, !tbaa !53
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = sitofp i16 %i.w to float
  %i.y = fmul nnan float %i.x, f0x38800000        ; 2 uses
  %i.z = fcmp oeq float %i.y, -1.000000e+00
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %3 to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !53
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %i.ae = sitofp i16 %i.ad to float
  %i.af = fmul nnan float %i.ae, f0x38800000
  %i.ag = fcmp oeq float %i.af, -1.000000e+00
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.t
  %i.aj = load i16, ptr %i.ai, align 1, !tbaa !53
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj)
  %i.al = sitofp i16 %i.ak to float
  %i.am = fmul nnan float %i.al, f0x38800000
  %i.an = fcmp oeq float %i.am, -1.000000e+00
  br i1 %i.an, label %4, label %bb.g

4:                                                ; preds = %bb.f
  br label %bb.g

bb.g:                                             ; preds = %4, %bb.f, %bb.e, %bb.d
  %.0120 = phi i32 [ 1, %4 ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.ao = add nsw i32 %i.d, -1                    ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.t
  %i.as = load i16, ptr %i.ar, align 1, !tbaa !53
  %i.at = tail call noundef i16 @llvm.bswap.i16(i16 %i.as)
  %i.au = sitofp i16 %i.at to float
  %i.av = fmul nnan float %i.au, f0x38800000
  %i.aw = fcmp oeq float %i.av, 1.000000e+00
  br i1 %i.aw, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ax = zext i32 %3 to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 1, !tbaa !53
  %i.ba = tail call noundef i16 @llvm.bswap.i16(i16 %i.az)
  %i.bb = sitofp i16 %i.ba to float
  %i.bc = fmul nnan float %i.bb, f0x38800000
  %i.bd = fcmp oeq float %i.bc, 1.000000e+00
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.be = zext i16 %i.c to i64
  %i.bf = getelementptr [4 x i8], ptr %i.a, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -8
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.t
  %i.bi = load i16, ptr %i.bh, align 1, !tbaa !53
  %i.bj = tail call noundef i16 @llvm.bswap.i16(i16 %i.bi)
  %i.bk = sitofp i16 %i.bj to float
  %i.bl = fmul nnan float %i.bk, f0x38800000
  %i.bm = fcmp oeq float %i.bl, 1.000000e+00
  br i1 %i.bm, label %5, label %bb.j

5:                                                ; preds = %bb.i
  br label %bb.j

bb.j:                                             ; preds = %5, %bb.i, %bb.h, %bb.g
  %.0119 = phi i32 [ %i.ao, %5 ], [ %i.d, %bb.i ], [ %i.d, %bb.h ], [ %i.d, %bb.g ] ; 7 uses
  %i.bn = icmp samesign ult i32 %.0120, %.0119
  br i1 %i.bn, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.bo = zext nneg i32 %.0120 to i64
  br label %.lr.ph

.lr.ph126.preheader:                              ; preds = %bb.k
  %i.bp = zext nneg i32 %.0120 to i64
  br label %.lr.ph126

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ %i.bo, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 8 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.t
  %i.bs = load i16, ptr %i.br, align 1, !tbaa !53
  %i.bt = tail call noundef i16 @llvm.bswap.i16(i16 %i.bs)
  %i.bu = sitofp i16 %i.bt to float
  %i.bv = fmul nnan float %i.bu, f0x38800000
  %i.bw = fcmp oeq float %1, %i.bv
  br i1 %i.bw, label %.preheader, label %bb.k

.preheader:                                       ; preds = %.lr.ph
  %i.bx = trunc nuw i64 %indvars.iv to i32
  %i.by = zext i32 %.0119 to i64                  ; 2 uses
  %indvars.iv.next140156 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = icmp samesign ult i64 %indvars.iv.next140156, %i.by
  br i1 %i.bz, label %.lr.ph159, label %._crit_edge161

bb.k:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %.0119, %lftr.wideiv
  br i1 %exitcond.not, label %.lr.ph126.preheader, label %.lr.ph, !llvm.loop !494

bb.l:                                             ; preds = %.lr.ph159
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv.next140158, 1 ; 2 uses
  %i.ca = icmp samesign ult i64 %indvars.iv.next140, %i.by
  br i1 %i.ca, label %.lr.ph159, label %._crit_edge161, !llvm.loop !495

.lr.ph159:                                        ; preds = %.preheader, %bb.l
  %indvars.iv.next140158 = phi i64 [ %indvars.iv.next140, %bb.l ], [ %indvars.iv.next140156, %.preheader ] ; 4 uses
  %indvars.iv139157 = phi i64 [ %indvars.iv.next140158, %bb.l ], [ %indvars.iv, %.preheader ]
  %gep129 = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next140158
  %i.cb = load i16, ptr %gep129, align 1, !tbaa !53
  %i.cc = tail call noundef i16 @llvm.bswap.i16(i16 %i.cb)
  %i.cd = sitofp i16 %i.cc to float
  %i.ce = fmul nnan float %i.cd, f0x38800000
  %i.cf = fcmp une float %1, %i.ce
  br i1 %i.cf, label %._crit_edge160, label %bb.l, !llvm.loop !495

._crit_edge160:                                   ; preds = %.lr.ph159
  br label %._crit_edge161, !llvm.loop !495

._crit_edge161:                                   ; preds = %bb.l, %._crit_edge160, %.preheader
  %indvars.iv139.lcssa = phi i64 [ %indvars.iv139157, %._crit_edge160 ], [ %indvars.iv, %.preheader ], [ %indvars.iv.next140158, %bb.l ] ; 4 uses
  %i.cg = icmp eq i64 %indvars.iv, %indvars.iv139.lcssa
  br i1 %i.cg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge161
  %i.ch = zext i32 %3 to i64
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 1, !tbaa !53
  %i.ck = tail call noundef i16 @llvm.bswap.i16(i16 %i.cj)
  %i.cl = sitofp i16 %i.ck to float
  %i.cm = fmul nnan float %i.cl, f0x38800000
  br label %bb.x

bb.n:                                             ; preds = %._crit_edge161
  %i.cn = trunc nuw i64 %indvars.iv139.lcssa to i32
  %i.co = add i32 %i.bx, 2
  %i.cp = icmp eq i32 %i.co, %i.cn
  br i1 %i.cp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cq = add nuw i64 %indvars.iv, 1
  %i.cr = and i64 %i.cq, 4294967295
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cr
  %i.ct = zext i32 %3 to i64
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 1, !tbaa !53
  %i.cw = tail call noundef i16 @llvm.bswap.i16(i16 %i.cv)
  %i.cx = sitofp i16 %i.cw to float
  %i.cy = fmul nnan float %i.cx, f0x38800000
  br label %bb.x

bb.p:                                             ; preds = %bb.n
  %i.cz = fcmp olt float %1, 0.000000e+00
  %i.da = zext i32 %3 to i64                      ; 3 uses
  br i1 %i.cz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv139.lcssa
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.da
  %i.dd = load i16, ptr %i.dc, align 1, !tbaa !53
  %i.de = tail call noundef i16 @llvm.bswap.i16(i16 %i.dd)
  %i.df = sitofp i16 %i.de to float
  %i.dg = fmul nnan float %i.df, f0x38800000
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  %i.dh = fcmp ogt float %1, 0.000000e+00
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.da
  %i.dj = load i16, ptr %i.di, align 1, !tbaa !53
  %i.dk = tail call noundef i16 @llvm.bswap.i16(i16 %i.dj)
  %i.dl = sitofp i16 %i.dk to float
  %i.dm = fmul nnan float %i.dl, f0x38800000      ; 3 uses
  br i1 %i.dh, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dn = tail call float @llvm.fabs.f32(float %i.dm)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv139.lcssa
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.da
  %i.dq = load i16, ptr %i.dp, align 1, !tbaa !53
  %i.dr = tail call noundef i16 @llvm.bswap.i16(i16 %i.dq)
  %i.ds = sitofp i16 %i.dr to float
  %i.dt = fmul nnan float %i.ds, f0x38800000      ; 2 uses
  %i.du = tail call float @llvm.fabs.f32(float %i.dt)
  %i.dv = fcmp olt float %i.dn, %i.du
  br i1 %i.dv, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  br label %bb.x

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %.critedge
  %indvars.iv133 = phi i64 [ %i.bp, %.lr.ph126.preheader ], [ %indvars.iv.next134, %.critedge ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv133
  %i.dw = load i16, ptr %gep, align 1, !tbaa !53
  %i.dx = tail call noundef i16 @llvm.bswap.i16(i16 %i.dw)
  %i.dy = sitofp i16 %i.dx to float
  %i.dz = fmul nnan float %i.dy, f0x38800000
  %i.ea = fcmp olt float %1, %i.dz
  br i1 %i.ea, label %._crit_edge.split.loop.exit150, label %.critedge

.critedge:                                        ; preds = %.lr.ph126
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %lftr.wideiv136 = trunc i64 %indvars.iv.next134 to i32
  %exitcond137.not = icmp eq i32 %.0119, %lftr.wideiv136
  br i1 %exitcond137.not, label %._crit_edge, label %.lr.ph126, !llvm.loop !496

._crit_edge.split.loop.exit150:                   ; preds = %.lr.ph126
  %i.eb = trunc nuw i64 %indvars.iv133 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %._crit_edge.split.loop.exit150
  %.1118.lcssa = phi i32 [ %i.eb, %._crit_edge.split.loop.exit150 ], [ %.0119, %.critedge ] ; 2 uses
  %i.ec = icmp eq i32 %.1118.lcssa, 0
  br i1 %i.ec, label %bb.u, label %._crit_edge.thread

bb.u:                                             ; preds = %._crit_edge
  %i.ed = fsub float %1, %i.y
  %i.ee = zext i32 %3 to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 1, !tbaa !53
  %i.eh = tail call noundef i16 @llvm.bswap.i16(i16 %i.eg)
  %i.ei = sitofp i16 %i.eh to float
  %i.ej = fmul nnan float %i.ei, f0x38800000
  %i.ek = fadd float %i.ed, %i.ej
  br label %bb.x

._crit_edge.thread:                               ; preds = %bb.j, %._crit_edge
  %.1118.lcssa146 = phi i32 [ %.1118.lcssa, %._crit_edge ], [ 1, %bb.j ] ; 3 uses
  %i.el = icmp eq i32 %.1118.lcssa146, %.0119
  br i1 %i.el, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.thread
  %i.em = add nsw i32 %.0119, -1
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.t
  %i.eq = load i16, ptr %i.ep, align 1, !tbaa !53
  %i.er = tail call noundef i16 @llvm.bswap.i16(i16 %i.eq)
  %i.es = sitofp i16 %i.er to float
  %i.et = fmul nnan float %i.es, f0x38800000
  %i.eu = fsub float %1, %i.et
  %i.ev = zext i32 %3 to i64
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 1, !tbaa !53
  %i.ey = tail call noundef i16 @llvm.bswap.i16(i16 %i.ex)
  %i.ez = sitofp i16 %i.ey to float
  %i.fa = fmul nnan float %i.ez, f0x38800000
  %i.fb = fadd float %i.eu, %i.fa
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.thread
  %i.fc = add i32 %.1118.lcssa146, -1
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fd ; 2 uses
  %i.ff = zext i32 %.1118.lcssa146 to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %i.t
  %i.fi = load i16, ptr %i.fh, align 1, !tbaa !53
  %i.fj = tail call noundef i16 @llvm.bswap.i16(i16 %i.fi)
  %i.fk = sitofp i16 %i.fj to float
  %i.fl = fmul nnan float %i.fk, f0x38800000
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %i.t
  %i.fn = load i16, ptr %i.fm, align 1, !tbaa !53
  %i.fo = tail call noundef i16 @llvm.bswap.i16(i16 %i.fn)
  %i.fp = sitofp i16 %i.fo to float
  %i.fq = fmul nnan float %i.fp, f0x38800000      ; 2 uses
end_hunk_1
