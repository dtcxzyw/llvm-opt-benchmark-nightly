Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Morphology?download=true
inline.NumInlined: 68333
inline.NumDeleted: 20965
loop-unroll.NumCompletelyUnrolled: 255
loop-unroll.NumRuntimeUnrolled: 335
loop-unroll.NumUnrolled: 1705
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeINSC_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINSC_4util8NodeMaskILj3EEESaISV_EEEUlRKSA_E_KNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.nj = phi i8 [ %i.ng, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeINS6_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISP_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit17 ], [ %i.jn, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.nk = phi i8 [ %i.ni, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeINS6_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISP_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit17 ], [ %i.jo, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.nl = icmp eq i8 %i.nj, 0
  br i1 %i.nl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split24
  %i.nm = phi i8 [ %i.lf, %.noexc ], [ %i.bc, %thread-pre-split24 ]
  %i.nn = phi i8 [ %i.ld, %.noexc ], [ %i.nj, %thread-pre-split24 ]
  %i.no = phi i8 [ %i.kd, %.noexc ], [ %i.nk, %thread-pre-split24 ]
  %i.np = load ptr, ptr %3, align 8, !tbaa !1557  ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 15
  %i.nr = load atomic i8, ptr %i.nq monotonic, align 1
  %i.ns = icmp eq i8 %i.nr, -1
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8
  %.0.i.i = select i1 %i.ns, ptr %i.nu, ptr %i.np
  %i.nv = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.nv, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %bb.f, !llvm.loop !4403

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23: ; preds = %thread-pre-split24, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeINS6_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISP_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeINS6_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISP_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerISE_EEEEDaSI_bENKUlSI_mE_clISA_EEDaSI_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !4411, !nonnull !528, !align !535
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1128
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %2 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !513
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, -1
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.u, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.x, i1 false
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.aa, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !4412, !nonnull !528, !align !535 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1129 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.ae to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ah, %i.ai
  %i.aj = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.aj, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  store ptr %1, ptr %i.ae, align 8, !tbaa !1115
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !1130
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1125
  switch i32 %i.am, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !4413, !nonnull !528
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !514, !range !512, !noundef !528
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !4414, !nonnull !528, !align !535
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !4415, !nonnull !528
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(88) %i.as, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.au, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !4416, !nonnull !528
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !4417, !nonnull !528, !align !535 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !4418, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !514
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9stealNodeIS6_EEPT_RKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(68) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext true) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1584 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %.not.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !558
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !1584
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !1583 ; 7 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #29 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store ptr %i.be, ptr %i.bw, align 8, !tbaa !558
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = add i64 %i.bl, -8
  %i.by = sub i64 %i.bx, %i.bm                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bv, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bk, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bk, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4419)
  call void @llvm.experimental.noalias.scope.decl(metadata !4420)
  %i.cf = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !558, !alias.scope !4420
  %wide.load13 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !558, !alias.scope !4420
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !558, !alias.scope !4419
  store <2 x i64> %wide.load13, ptr %i.cg, align 8, !tbaa !558, !alias.scope !4419
  %3 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !558, !alias.scope !4420
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !558, !alias.scope !4420
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !4408

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4419)
  call void @llvm.experimental.noalias.scope.decl(metadata !4420)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !4420
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !4419
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !4420
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4409

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.co) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !1583
  store ptr %i.cl, ptr %i.bf, align 8, !tbaa !1584
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cp, ptr %i.bh, align 8, !tbaa !1585
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %4) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %2, align 4, !tbaa !464    ; 2 uses
  %i.c = and i32 %i.b, -128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !464
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSF_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSK_OT0_ENKUlSN_E_clISt17integral_constantImLm1EEEEbSN_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !464
  %i.i = and i32 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !464
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSF_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSK_OT0_ENKUlSN_E_clISt17integral_constantImLm1EEEEbSN_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSF_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSK_OT0_ENKUlSN_E_clISt17integral_constantImLm1EEEEbSN_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSF_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSK_OT0_ENKUlSN_E_clISt17integral_constantImLm1EEEEbSN_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !464
  %i.o = and i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !464
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSF_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSK_OT0_ENKUlSN_E_clISt17integral_constantImLm1EEEEbSN_.exit.thread

bb.c:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSF_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSK_OT0_ENKUlSN_E_clISt17integral_constantImLm1EEEEbSN_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1473
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS6_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKbbRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.t, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(88) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSM_OT0_EUlSP_E_SQ_St5tupleIJPSA_PSB_PSC_PSD_EELm1ELm4EEEvSP_SR_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSF_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSK_OT0_ENKUlSN_E_clISt17integral_constantImLm1EEEEbSN_.exit.thread: ; preds = %bb.a, %bb.b, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSF_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSK_OT0_ENKUlSN_E_clISt17integral_constantImLm1EEEEbSN_.exit
  %i.u = and i32 %i.b, -4096
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !464
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSM_OT0_EUlSP_E_SQ_St5tupleIJPSA_PSB_PSC_PSD_EELm3ELm4EEEvSP_SR_RT1_.exit

bb.d:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSF_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSK_OT0_ENKUlSN_E_clISt17integral_constantImLm1EEEEbSN_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !464
  %i.aa = and i32 %i.z, -4096
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !464
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSF_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSK_OT0_ENKUlSN_E_clISt17integral_constantImLm2EEEEbSN_.exit, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSM_OT0_EUlSP_E_SQ_St5tupleIJPSA_PSB_PSC_PSD_EELm3ELm4EEEvSP_SR_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSF_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSK_OT0_ENKUlSN_E_clISt17integral_constantImLm2EEEEbSN_.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !464
  %i.ag = and i32 %i.af, -4096
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !464
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSM_OT0_EUlSP_E_SQ_St5tupleIJPSA_PSB_PSC_PSD_EELm3ELm4EEEvSP_SR_RT1_.exit

bb.e:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSF_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSK_OT0_ENKUlSN_E_clISt17integral_constantImLm2EEEEbSN_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1592
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS7_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKbbRT_(ptr noundef nonnull align 8 dereferenceable(270352) %i.al, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(88) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSM_OT0_EUlSP_E_SQ_St5tupleIJPSA_PSB_PSC_PSD_EELm1ELm4EEEvSP_SR_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSM_OT0_EUlSP_E_SQ_St5tupleIJPSA_PSB_PSC_PSD_EELm3ELm4EEEvSP_SR_RT1_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSF_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSK_OT0_ENKUlSN_E_clISt17integral_constantImLm1EEEEbSN_.exit.thread, %bb.d, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSF_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSK_OT0_ENKUlSN_E_clISt17integral_constantImLm2EEEEbSN_.exit
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !1109
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeIS9_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKbbRT_(ptr noundef nonnull align 8 dereferenceable(68) %i.am, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(88) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSM_OT0_EUlSP_E_SQ_St5tupleIJPSA_PSB_PSC_PSD_EELm1ELm4EEEvSP_SR_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSM_OT0_EUlSP_E_SQ_St5tupleIJPSA_PSB_PSC_PSD_EELm1ELm4EEEvSP_SR_RT1_.exit: ; preds = %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSM_OT0_EUlSP_E_SQ_St5tupleIJPSA_PSB_PSC_PSD_EELm3ELm4EEEvSP_SR_RT1_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 10 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = load ptr, ptr %0, align 8, !tbaa !1130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !tbaa.struct !1605
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = load i64, ptr %4, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !464  ; 2 uses
  %i.e = add nsw i32 %i.d, -8
  store i64 %i.b, ptr %5, align 8
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.e, ptr %.sroa.232.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.f = add nsw i32 %i.d, 8
  store i64 %i.b, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i46 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.03551 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.d ] ; 5 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.p
  %i.k = add nuw nsw i32 %.03551, 1               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond55.not = icmp eq i32 %i.k, 8
  br i1 %exitcond55.not, label %bb.b, label %bb.c, !llvm.loop !4421

bb.e:                                             ; preds = %bb.c, %bb.p
  %indvars.iv52 = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next53, %bb.p ] ; 6 uses
  %.03449 = phi i32 [ 0, %bb.c ], [ %i.bl, %bb.p ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv52
  %i.m = load i8, ptr %i.l, align 1, !tbaa !485   ; 8 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = lshr i8 %i.m, 1
  %i.o = shl i8 %i.m, 1
  %i.p = or i8 %i.o, %i.n
  %i.q = or i8 %i.p, %i.m                         ; 2 uses
  store i8 %i.q, ptr %i.g, align 8, !tbaa !1606
  store ptr %4, ptr %0, align 8, !tbaa !1130
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !1112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1115
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv52 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !485
  %i.v = or i8 %i.u, %i.q
  store i8 %i.v, ptr %i.t, align 1, !tbaa !485
  %i.w = trunc nuw nsw i64 %indvars.iv52 to i32   ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeINSC_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINSC_4util8NodeMaskILj3EEESaISX_EEEUlRKSA_E_KNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.nm = phi i8 [ %i.nk, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeINS6_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISR_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit17 ], [ %i.jp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.nn = icmp eq i8 %i.nl, 0
  br i1 %i.nn, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split24
  %i.no = phi i8 [ %i.lg, %.noexc ], [ %i.bd, %thread-pre-split24 ]
  %i.np = phi i8 [ %i.le, %.noexc ], [ %i.nl, %thread-pre-split24 ]
  %i.nq = phi i8 [ %i.ke, %.noexc ], [ %i.nm, %thread-pre-split24 ]
  %i.nr = load ptr, ptr %3, align 8, !tbaa !1557  ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 15
  %i.nt = load atomic i8, ptr %i.ns monotonic, align 1
  %i.nu = icmp eq i8 %i.nt, -1
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8
  %.0.i.i = select i1 %i.nu, ptr %i.nw, ptr %i.nr
  %i.nx = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.nx, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %bb.f, !llvm.loop !5937

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23: ; preds = %thread-pre-split24, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeINS6_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISR_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeINS6_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISR_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerISG_EEEEDaSK_bENKUlSK_mE_clISC_EEDaSK_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::internal::half", align 2 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !5945, !nonnull !528, !align !535
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1128
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %2 ; 11 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !513
  %i.e = icmp eq i64 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, -1
  %or.cond.i = select i1 %i.e, i1 %i.h, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.k, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.n, i1 false
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.p, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.q, i1 false
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp eq i64 %i.s, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.t, i1 false
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %i.v, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.w, i1 false
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp eq i64 %i.y, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.z, i1 false
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !5946, !nonnull !528, !align !535 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1129 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = ptrtoaddr ptr %i.ad to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ag, %i.ah
  %i.ai = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ai, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.aj, ptr %i.ad, align 8, !tbaa !1115
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store ptr %i.ak, ptr %i.ab, align 8, !tbaa !1165
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1163
  switch i32 %i.am, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !5947, !nonnull !528
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !514, !range !512, !noundef !528
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !5948, !nonnull !528, !align !535
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !5949, !nonnull !528, !align !2367
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS7_5CoordERKS9_b(ptr noundef nonnull align 8 dereferenceable(96) %i.as, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 2 dereferenceable(2) %i.au, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !5950, !nonnull !528
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !5951, !nonnull !528, !align !535 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !5952, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i16 0, ptr %3, align 2
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEE9stealNodeIS8_EEPT_RKNS5_5CoordERKS7_b(ptr noundef nonnull align 8 dereferenceable(68) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 2 dereferenceable(2) %3, i1 noundef zeroext true) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2356 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2357
  %.not.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !1145
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !2356
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math8internal4halfELj3EEESt14default_deleteIS8_EESaISB_EE12emplace_backIJPS8_EEERSB_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !2355 ; 7 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math8internal4halfELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math8internal4halfELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #29 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store ptr %i.be, ptr %i.bw, align 8, !tbaa !1145
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math8internal4halfELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math8internal4halfELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = add i64 %i.bl, -8
  %i.by = sub i64 %i.bx, %i.bm                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bv, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bk, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bk, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5953)
  call void @llvm.experimental.noalias.scope.decl(metadata !5954)
  %i.cf = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !1145, !alias.scope !5954
  %wide.load13 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !1145, !alias.scope !5954
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1145, !alias.scope !5953
  store <2 x i64> %wide.load13, ptr %i.cg, align 8, !tbaa !1145, !alias.scope !5953
  %4 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !1145, !alias.scope !5954
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !1145, !alias.scope !5954
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !5942

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math8internal4halfELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5953)
  call void @llvm.experimental.noalias.scope.decl(metadata !5954)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1145, !alias.scope !5954
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !1145, !alias.scope !5953
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1145, !alias.scope !5954
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math8internal4halfELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5943

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math8internal4halfELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math8internal4halfELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math8internal4halfELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math8internal4halfELj3EEESt14default_deleteIS8_EESaISB_EE17_M_realloc_insertIJPS8_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math8internal4halfELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !2357
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.co) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math8internal4halfELj3EEESt14default_deleteIS8_EESaISB_EE17_M_realloc_insertIJPS8_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math8internal4halfELj3EEESt14default_deleteIS8_EESaISB_EE17_M_realloc_insertIJPS8_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math8internal4halfELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !2355
  store ptr %i.cl, ptr %i.bf, align 8, !tbaa !2356
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cp, ptr %i.bh, align 8, !tbaa !2357
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math8internal4halfELj3EEESt14default_deleteIS8_EESaISB_EE12emplace_backIJPS8_EEERSB_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math8internal4halfELj3EEESt14default_deleteIS8_EESaISB_EE12emplace_backIJPS8_EEERSB_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math8internal4halfELj3EEESt14default_deleteIS8_EESaISB_EE17_M_realloc_insertIJPS8_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math8internal4halfELj3EEESt14default_deleteIS8_EESaISB_EE12emplace_backIJPS8_EEERSB_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS7_5CoordERKS9_b(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 2 dereferenceable(2) %3, i1 noundef zeroext %4) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %2, align 4, !tbaa !464    ; 2 uses
  %i.c = and i32 %i.b, -128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !464
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !464
  %i.i = and i32 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !464
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !464
  %i.o = and i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !464
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread

bb.c:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2315
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS8_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS4_5CoordERKS6_bRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.t, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 2 dereferenceable(2) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSQ_SS_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread: ; preds = %bb.a, %bb.b, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit
  %i.u = and i32 %i.b, -4096
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !464
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit

bb.d:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !464
  %i.aa = and i32 %i.z, -4096
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !464
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm2EEEEbSO_.exit, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm2EEEEbSO_.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !464
  %i.ag = and i32 %i.af, -4096
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !464
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit

bb.e:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm2EEEEbSO_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2353
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS9_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS4_5CoordERKS6_bRT_(ptr noundef nonnull align 8 dereferenceable(270352) %i.al, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 2 dereferenceable(2) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSQ_SS_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread, %bb.d, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm2EEEEbSO_.exit
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !665
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeISB_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS5_5CoordERKS7_bRT_(ptr noundef nonnull align 8 dereferenceable(68) %i.am, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 2 dereferenceable(2) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSQ_SS_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSQ_SS_RT1_.exit: ; preds = %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 10 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = load ptr, ptr %0, align 8, !tbaa !1165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !tbaa.struct !1605
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = load i64, ptr %4, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !464  ; 2 uses
  %i.e = add nsw i32 %i.d, -8
  store i64 %i.b, ptr %5, align 8
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.e, ptr %.sroa.232.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.f = add nsw i32 %i.d, 8
  store i64 %i.b, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i46 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.035177 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.d ] ; 5 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.bt
  %i.k = add nuw nsw i32 %.035177, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond185.not = icmp eq i32 %i.k, 8
  br i1 %exitcond185.not, label %bb.b, label %bb.c, !llvm.loop !5955

bb.e:                                             ; preds = %bb.c, %bb.bt
  %indvars.iv182 = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next183, %bb.bt ] ; 6 uses
  %.034175 = phi i32 [ 0, %bb.c ], [ %i.sg, %bb.bt ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv182
  %i.m = load i8, ptr %i.l, align 1, !tbaa !485   ; 8 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.bt, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = lshr i8 %i.m, 1
  %i.o = shl i8 %i.m, 1
  %i.p = or i8 %i.o, %i.n
  %i.q = or i8 %i.p, %i.m                         ; 2 uses
  store i8 %i.q, ptr %i.g, align 8, !tbaa !2368
  store ptr %4, ptr %0, align 8, !tbaa !1165
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !1112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1115
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv182 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !485
  %i.v = or i8 %i.u, %i.q
  store i8 %i.v, ptr %i.t, align 1, !tbaa !485
  %i.w = trunc nuw nsw i64 %indvars.iv182 to i32  ; 4 uses
end_hunk_1
begin_hunk_2_@_ZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS8_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSK_b:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.dh = load ptr, ptr %i.ag, align 8, !tbaa !1112 ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i49, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48
  %i.di = load ptr, ptr %i.ak, align 8, !tbaa !1113
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dl) #30
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50: ; preds = %bb.aa, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48, %bb.l
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.l ], [ %lpad.loopexit.split-lp99, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48 ], [ %lpad.loopexit.split-lp99, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %6) #21
  br label %.body

.body:                                            ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50 ], [ %i.u, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn34.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS8_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSK_bENKUlSK_mE_clISP_EEDaSK_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !6030, !nonnull !528, !align !535
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1128
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %2 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !513
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, -1
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.u, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.x, i1 false
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.aa, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !6031, !nonnull !528, !align !535 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1129 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.ae to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ah, %i.ai
  %i.aj = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.aj, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  store ptr %1, ptr %i.ae, align 8, !tbaa !1115
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !1130
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1125
  switch i32 %i.am, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !6032, !nonnull !528
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !514, !range !512, !noundef !528
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !6033, !nonnull !528, !align !535
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !6034, !nonnull !528
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(88) %i.as, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.au, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !6035, !nonnull !528
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !6036, !nonnull !528, !align !535 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !6037, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !514
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9stealNodeIS6_EEPT_RKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(68) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext true) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1584 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %.not.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !558
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !1584
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !1583 ; 7 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #29 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store ptr %i.be, ptr %i.bw, align 8, !tbaa !558
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = add i64 %i.bl, -8
  %i.by = sub i64 %i.bx, %i.bm                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bv, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bk, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bk, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6038)
  call void @llvm.experimental.noalias.scope.decl(metadata !6039)
  %i.cf = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !558, !alias.scope !6039
  %wide.load13 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !558, !alias.scope !6039
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !558, !alias.scope !6038
  store <2 x i64> %wide.load13, ptr %i.cg, align 8, !tbaa !558, !alias.scope !6038
  %3 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !558, !alias.scope !6039
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !558, !alias.scope !6039
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !6027

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6038)
  call void @llvm.experimental.noalias.scope.decl(metadata !6039)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !6039
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !6038
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !6039
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6028

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.co) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !1583
  store ptr %i.cl, ptr %i.bf, align 8, !tbaa !1584
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cp, ptr %i.bh, align 8, !tbaa !1585
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math8internal4halfELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1523
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1524
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !485
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !524
  %i.g = load i32, ptr %0, align 8, !tbaa !523
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math8internal4halfELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !1527
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math8internal4halfELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !466
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1664
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.l = load i64, ptr %1, align 8, !tbaa !2353
  store i64 %i.l, ptr %i.k, align 16, !tbaa !2353
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !2394
  %i.n = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i32 0, ptr %i.q, align 8, !tbaa !1540
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 108
  store i8 5, ptr %i.r, align 4, !tbaa !1541
  %i.s = shl nsw i64 %i.p, 1
  %i.t = and i64 %i.s, 9223372036854775806
  store i64 %i.t, ptr %i.o, align 32, !tbaa !1542
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.v = load i64, ptr %3, align 8, !tbaa !1543
  store i64 %i.v, ptr %i.u, align 16, !tbaa !1543
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !1547
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !1548
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.x, align 8, !tbaa !1550
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.y, align 8, !tbaa !654
  store ptr %4, ptr %i.m, align 8, !tbaa !2394
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math8internal4halfELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math8internal4halfELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.aa = load atomic i8, ptr %i.z monotonic, align 1
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math8internal4halfELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math8internal4halfELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math8internal4halfELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(120) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math8internal4halfELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1553 ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = load i64, ptr %i.g, align 32, !tbaa !1542
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeINSC_4math8internal4halfELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 32, !tbaa !1542
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1554
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeINSC_4math8internal4halfELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2394
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeINSC_4math8internal4halfELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit
end_hunk_2
begin_hunk_3_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSC_6points17PointDataLeafNodeINSC_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINSC_4util8NodeMaskILj3EEESaISX_EEEUlRKSA_E_KNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.nm = phi i8 [ %i.nk, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISR_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit17 ], [ %i.jp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.nn = icmp eq i8 %i.nl, 0
  br i1 %i.nn, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split24
  %i.no = phi i8 [ %i.lg, %.noexc ], [ %i.bd, %thread-pre-split24 ]
  %i.np = phi i8 [ %i.le, %.noexc ], [ %i.nl, %thread-pre-split24 ]
  %i.nq = phi i8 [ %i.ke, %.noexc ], [ %i.nm, %thread-pre-split24 ]
  %i.nr = load ptr, ptr %3, align 8, !tbaa !1557  ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 15
  %i.nt = load atomic i8, ptr %i.ns monotonic, align 1
  %i.nu = icmp eq i8 %i.nt, -1
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8
  %.0.i.i = select i1 %i.nu, ptr %i.nw, ptr %i.nr
  %i.nx = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.nx, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %bb.f, !llvm.loop !6452

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23: ; preds = %thread-pre-split24, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISR_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISR_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerISG_EEEEDaSK_bENKUlSK_mE_clISC_EEDaSK_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(106) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.openvdb::v13_0::PointIndex", align 4 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !6460, !nonnull !528, !align !535
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1128
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %2 ; 11 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !513
  %i.e = icmp eq i64 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, -1
  %or.cond.i = select i1 %i.e, i1 %i.h, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.k, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.n, i1 false
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.p, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.q, i1 false
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp eq i64 %i.s, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.t, i1 false
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %i.v, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.w, i1 false
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp eq i64 %i.y, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.z, i1 false
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !6461, !nonnull !528, !align !535 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1129 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = ptrtoaddr ptr %i.ad to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ag, %i.ah
  %i.ai = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ai, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.aj, ptr %i.ad, align 8, !tbaa !1115
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store ptr %i.ak, ptr %i.ab, align 8, !tbaa !1195
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1193
  switch i32 %i.am, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !6462, !nonnull !528
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !514, !range !512, !noundef !528
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !6463, !nonnull !528, !align !535
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !6464, !nonnull !528, !align !2559
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKS9_b(ptr noundef nonnull align 8 dereferenceable(96) %i.as, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 4 dereferenceable(4) %i.au, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !6465, !nonnull !528
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !6466, !nonnull !528, !align !535 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !6467, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i32 0, ptr %3, align 4
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9stealNodeIS8_EEPT_RKNS0_4math5CoordERKS7_b(ptr noundef nonnull align 8 dereferenceable(68) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext true) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2545 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2546
  %.not.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !1175
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !2545
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_06points17PointDataLeafNodeINS2_10PointIndexIjLj1EEELj3EEESt14default_deleteIS7_EESaISA_EE12emplace_backIJPS7_EEERSA_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !2544 ; 7 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_06points17PointDataLeafNodeINS2_10PointIndexIjLj1EEELj3EEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_06points17PointDataLeafNodeINS2_10PointIndexIjLj1EEELj3EEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #29 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store ptr %i.be, ptr %i.bw, align 8, !tbaa !1175
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_06points17PointDataLeafNodeINS2_10PointIndexIjLj1EEELj3EEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_06points17PointDataLeafNodeINS2_10PointIndexIjLj1EEELj3EEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = add i64 %i.bl, -8
  %i.by = sub i64 %i.bx, %i.bm                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bv, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bk, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bk, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6468)
  call void @llvm.experimental.noalias.scope.decl(metadata !6469)
  %i.cf = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !1175, !alias.scope !6469
  %wide.load13 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !1175, !alias.scope !6469
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1175, !alias.scope !6468
  store <2 x i64> %wide.load13, ptr %i.cg, align 8, !tbaa !1175, !alias.scope !6468
  %4 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !1175, !alias.scope !6469
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !1175, !alias.scope !6469
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !6457

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_06points17PointDataLeafNodeINS2_10PointIndexIjLj1EEELj3EEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6468)
  call void @llvm.experimental.noalias.scope.decl(metadata !6469)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1175, !alias.scope !6469
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !1175, !alias.scope !6468
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1175, !alias.scope !6469
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_06points17PointDataLeafNodeINS2_10PointIndexIjLj1EEELj3EEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6458

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_06points17PointDataLeafNodeINS2_10PointIndexIjLj1EEELj3EEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_06points17PointDataLeafNodeINS2_10PointIndexIjLj1EEELj3EEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_06points17PointDataLeafNodeINS2_10PointIndexIjLj1EEELj3EEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_06points17PointDataLeafNodeINS2_10PointIndexIjLj1EEELj3EEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJPS7_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_06points17PointDataLeafNodeINS2_10PointIndexIjLj1EEELj3EEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !2546
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.co) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_06points17PointDataLeafNodeINS2_10PointIndexIjLj1EEELj3EEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJPS7_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_06points17PointDataLeafNodeINS2_10PointIndexIjLj1EEELj3EEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJPS7_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_06points17PointDataLeafNodeINS2_10PointIndexIjLj1EEELj3EEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !2544
  store ptr %i.cl, ptr %i.bf, align 8, !tbaa !2545
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cp, ptr %i.bh, align 8, !tbaa !2546
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_06points17PointDataLeafNodeINS2_10PointIndexIjLj1EEELj3EEESt14default_deleteIS7_EESaISA_EE12emplace_backIJPS7_EEERSA_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_06points17PointDataLeafNodeINS2_10PointIndexIjLj1EEELj3EEESt14default_deleteIS7_EESaISA_EE12emplace_backIJPS7_EEERSA_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_06points17PointDataLeafNodeINS2_10PointIndexIjLj1EEELj3EEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJPS7_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_06points17PointDataLeafNodeINS2_10PointIndexIjLj1EEELj3EEESt14default_deleteIS7_EESaISA_EE12emplace_backIJPS7_EEERSA_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKS9_b(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %2, align 4, !tbaa !464    ; 2 uses
  %i.c = and i32 %i.b, -128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !464
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKS9_bEUlT_E_EEDaSM_OT0_ENKUlSP_E_clISt17integral_constantImLm1EEEEbSP_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !464
  %i.i = and i32 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !464
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKS9_bEUlT_E_EEDaSM_OT0_ENKUlSP_E_clISt17integral_constantImLm1EEEEbSP_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKS9_bEUlT_E_EEDaSM_OT0_ENKUlSP_E_clISt17integral_constantImLm1EEEEbSP_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKS9_bEUlT_E_EEDaSM_OT0_ENKUlSP_E_clISt17integral_constantImLm1EEEEbSP_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !464
  %i.o = and i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !464
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKS9_bEUlT_E_EEDaSM_OT0_ENKUlSP_E_clISt17integral_constantImLm1EEEEbSP_.exit.thread

bb.c:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKS9_bEUlT_E_EEDaSM_OT0_ENKUlSP_E_clISt17integral_constantImLm1EEEEbSP_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2506
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS8_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKS6_bRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.t, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS0_4math5CoordERKSB_bEUlT_E_EEDaSO_OT0_EUlSR_E_SS_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSR_ST_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKS9_bEUlT_E_EEDaSM_OT0_ENKUlSP_E_clISt17integral_constantImLm1EEEEbSP_.exit.thread: ; preds = %bb.a, %bb.b, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKS9_bEUlT_E_EEDaSM_OT0_ENKUlSP_E_clISt17integral_constantImLm1EEEEbSP_.exit
  %i.u = and i32 %i.b, -4096
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !464
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS0_4math5CoordERKSB_bEUlT_E_EEDaSO_OT0_EUlSR_E_SS_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSR_ST_RT1_.exit

bb.d:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKS9_bEUlT_E_EEDaSM_OT0_ENKUlSP_E_clISt17integral_constantImLm1EEEEbSP_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !464
  %i.aa = and i32 %i.z, -4096
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !464
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKS9_bEUlT_E_EEDaSM_OT0_ENKUlSP_E_clISt17integral_constantImLm2EEEEbSP_.exit, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS0_4math5CoordERKSB_bEUlT_E_EEDaSO_OT0_EUlSR_E_SS_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSR_ST_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKS9_bEUlT_E_EEDaSM_OT0_ENKUlSP_E_clISt17integral_constantImLm2EEEEbSP_.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !464
  %i.ag = and i32 %i.af, -4096
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !464
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS0_4math5CoordERKSB_bEUlT_E_EEDaSO_OT0_EUlSR_E_SS_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSR_ST_RT1_.exit

bb.e:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKS9_bEUlT_E_EEDaSM_OT0_ENKUlSP_E_clISt17integral_constantImLm2EEEEbSP_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2549
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS9_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKS6_bRT_(ptr noundef nonnull align 8 dereferenceable(270352) %i.al, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS0_4math5CoordERKSB_bEUlT_E_EEDaSO_OT0_EUlSR_E_SS_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSR_ST_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS0_4math5CoordERKSB_bEUlT_E_EEDaSO_OT0_EUlSR_E_SS_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSR_ST_RT1_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKS9_bEUlT_E_EEDaSM_OT0_ENKUlSP_E_clISt17integral_constantImLm1EEEEbSP_.exit.thread, %bb.d, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS0_4math5CoordERKS9_bEUlT_E_EEDaSM_OT0_ENKUlSP_E_clISt17integral_constantImLm2EEEEbSP_.exit
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !721
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeISB_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKS7_bRT_(ptr noundef nonnull align 8 dereferenceable(68) %i.am, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS0_4math5CoordERKSB_bEUlT_E_EEDaSO_OT0_EUlSR_E_SS_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSR_ST_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS0_4math5CoordERKSB_bEUlT_E_EEDaSO_OT0_EUlSR_E_SS_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSR_ST_RT1_.exit: ; preds = %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS0_4math5CoordERKSB_bEUlT_E_EEDaSO_OT0_EUlSR_E_SS_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSR_ST_RT1_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 10 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = load ptr, ptr %0, align 8, !tbaa !1195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !tbaa.struct !1605
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = load i64, ptr %4, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !464  ; 2 uses
  %i.e = add nsw i32 %i.d, -8
  store i64 %i.b, ptr %5, align 8
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.e, ptr %.sroa.232.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.f = add nsw i32 %i.d, 8
  store i64 %i.b, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i46 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.035181 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.d ] ; 5 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.bo
  %i.k = add nuw nsw i32 %.035181, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond189.not = icmp eq i32 %i.k, 8
  br i1 %exitcond189.not, label %bb.b, label %bb.c, !llvm.loop !6470

bb.e:                                             ; preds = %bb.c, %bb.bo
  %indvars.iv186 = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next187, %bb.bo ] ; 6 uses
  %.034179 = phi i32 [ 0, %bb.c ], [ %i.sg, %bb.bo ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv186
  %i.m = load i8, ptr %i.l, align 1, !tbaa !485   ; 8 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.bo, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = lshr i8 %i.m, 1
  %i.o = shl i8 %i.m, 1
  %i.p = or i8 %i.o, %i.n
  %i.q = or i8 %i.p, %i.m                         ; 2 uses
  store i8 %i.q, ptr %i.g, align 8, !tbaa !2560
  store ptr %4, ptr %0, align 8, !tbaa !1195
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !1112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1115
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv186 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !485
  %i.v = or i8 %i.u, %i.q
  store i8 %i.v, ptr %i.t, align 1, !tbaa !485
  %i.w = trunc nuw nsw i64 %indvars.iv186 to i32  ; 4 uses
end_hunk_3
begin_hunk_4_@_ZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSK_b:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.dh = load ptr, ptr %i.ag, align 8, !tbaa !1112 ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i49, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48
  %i.di = load ptr, ptr %i.ak, align 8, !tbaa !1113
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dl) #30
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50: ; preds = %bb.aa, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48, %bb.l
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.l ], [ %lpad.loopexit.split-lp99, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48 ], [ %lpad.loopexit.split-lp99, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %6) #21
  br label %.body

.body:                                            ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50 ], [ %i.u, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn34.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSK_bENKUlSK_mE_clISQ_EEDaSK_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !6552, !nonnull !528, !align !535
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1128
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %2 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !513
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, -1
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.u, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.x, i1 false
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.aa, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !6553, !nonnull !528, !align !535 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1129 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.ae to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ah, %i.ai
  %i.aj = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.aj, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  store ptr %1, ptr %i.ae, align 8, !tbaa !1115
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !1130
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1125
  switch i32 %i.am, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !6554, !nonnull !528
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !514, !range !512, !noundef !528
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !6555, !nonnull !528, !align !535
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !6556, !nonnull !528
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(88) %i.as, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.au, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !6557, !nonnull !528
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !6558, !nonnull !528, !align !535 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !6559, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !514
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9stealNodeIS6_EEPT_RKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(68) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext true) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1584 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %.not.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !558
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !1584
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !1583 ; 7 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #29 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store ptr %i.be, ptr %i.bw, align 8, !tbaa !558
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = add i64 %i.bl, -8
  %i.by = sub i64 %i.bx, %i.bm                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bv, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bk, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bk, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6560)
  call void @llvm.experimental.noalias.scope.decl(metadata !6561)
  %i.cf = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !558, !alias.scope !6561
  %wide.load13 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !558, !alias.scope !6561
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !558, !alias.scope !6560
  store <2 x i64> %wide.load13, ptr %i.cg, align 8, !tbaa !558, !alias.scope !6560
  %3 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !558, !alias.scope !6561
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !558, !alias.scope !6561
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !6549

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6560)
  call void @llvm.experimental.noalias.scope.decl(metadata !6561)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !6561
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !6560
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !6561
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6550

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.co) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !1583
  store ptr %i.cl, ptr %i.bf, align 8, !tbaa !1584
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cp, ptr %i.bh, align 8, !tbaa !1585
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1523
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1524
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !485
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !524
  %i.g = load i32, ptr %0, align 8, !tbaa !523
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !1527
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !466
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1664
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.l = load i64, ptr %1, align 8, !tbaa !2549
  store i64 %i.l, ptr %i.k, align 16, !tbaa !2549
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !2584
  %i.n = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i32 0, ptr %i.q, align 8, !tbaa !1540
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 108
  store i8 5, ptr %i.r, align 4, !tbaa !1541
  %i.s = shl nsw i64 %i.p, 1
  %i.t = and i64 %i.s, 9223372036854775806
  store i64 %i.t, ptr %i.o, align 32, !tbaa !1542
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.v = load i64, ptr %3, align 8, !tbaa !1543
  store i64 %i.v, ptr %i.u, align 16, !tbaa !1543
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !1547
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !1548
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.x, align 8, !tbaa !1550
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.y, align 8, !tbaa !654
  store ptr %4, ptr %i.m, align 8, !tbaa !2584
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.aa = load atomic i8, ptr %i.z monotonic, align 1
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(120) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1553 ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = load i64, ptr %i.g, align 32, !tbaa !1542
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSC_6points17PointDataLeafNodeINSC_10PointIndexIjLj1EEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 32, !tbaa !1542
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1554
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSC_6points17PointDataLeafNodeINSC_10PointIndexIjLj1EEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2584
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSC_6points17PointDataLeafNodeINSC_10PointIndexIjLj1EEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit
end_hunk_4
begin_hunk_5_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINSC_4util8NodeMaskILj3EEESaISU_EEEUlRKSA_E_KNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.nj = phi i8 [ %i.ng, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISO_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit17 ], [ %i.jn, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.nk = phi i8 [ %i.ni, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISO_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit17 ], [ %i.jo, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.nl = icmp eq i8 %i.nj, 0
  br i1 %i.nl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split24
  %i.nm = phi i8 [ %i.lf, %.noexc ], [ %i.bc, %thread-pre-split24 ]
  %i.nn = phi i8 [ %i.ld, %.noexc ], [ %i.nj, %thread-pre-split24 ]
  %i.no = phi i8 [ %i.kd, %.noexc ], [ %i.nk, %thread-pre-split24 ]
  %i.np = load ptr, ptr %3, align 8, !tbaa !1557  ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 15
  %i.nr = load atomic i8, ptr %i.nq monotonic, align 1
  %i.ns = icmp eq i8 %i.nr, -1
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8
  %.0.i.i = select i1 %i.ns, ptr %i.nu, ptr %i.np
  %i.nv = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.nv, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %bb.f, !llvm.loop !6962

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23: ; preds = %thread-pre-split24, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISO_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISO_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerISD_EEEEDaSH_bENKUlSH_mE_clIS9_EEDaSH_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !6970, !nonnull !528, !align !535
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1128
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %2 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !513
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, -1
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.u, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.x, i1 false
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.aa, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !6971, !nonnull !528, !align !535 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1129 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.ae to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ah, %i.ai
  %i.aj = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.aj, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  store ptr %1, ptr %i.ae, align 8, !tbaa !1115
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !1224
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1222
  switch i32 %i.am, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !6972, !nonnull !528
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !514, !range !512, !noundef !528
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !6973, !nonnull !528, !align !535
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !6974, !nonnull !528
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(88) %i.as, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.au, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !6975, !nonnull !528
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !6976, !nonnull !528, !align !535 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !6977, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !514
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9stealNodeIS5_EEPT_RKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(68) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext true) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2733 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2734
  %.not.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !1205
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !2733
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIbLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !2732 ; 7 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIbLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIbLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #29 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store ptr %i.be, ptr %i.bw, align 8, !tbaa !1205
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIbLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIbLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = add i64 %i.bl, -8
  %i.by = sub i64 %i.bx, %i.bm                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bv, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bk, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bk, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6978)
  call void @llvm.experimental.noalias.scope.decl(metadata !6979)
  %i.cf = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !1205, !alias.scope !6979
  %wide.load13 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !1205, !alias.scope !6979
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1205, !alias.scope !6978
  store <2 x i64> %wide.load13, ptr %i.cg, align 8, !tbaa !1205, !alias.scope !6978
  %3 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !1205, !alias.scope !6979
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !1205, !alias.scope !6979
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !6967

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIbLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6978)
  call void @llvm.experimental.noalias.scope.decl(metadata !6979)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1205, !alias.scope !6979
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !1205, !alias.scope !6978
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1205, !alias.scope !6979
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIbLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6968

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIbLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIbLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIbLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIbLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIbLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !2734
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.co) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIbLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIbLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIbLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !2732
  store ptr %i.cl, ptr %i.bf, align 8, !tbaa !2733
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cp, ptr %i.bh, align 8, !tbaa !2734
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIbLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIbLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIbLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIbLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %4) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %2, align 4, !tbaa !464    ; 2 uses
  %i.c = and i32 %i.b, -128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !464
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !464
  %i.i = and i32 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !464
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !464
  %i.o = and i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !464
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

bb.c:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2695
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIbLj3EEELj4EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKbbRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.t, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(88) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread: ; preds = %bb.a, %bb.b, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit
  %i.u = and i32 %i.b, -4096
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !464
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

bb.d:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !464
  %i.aa = and i32 %i.z, -4096
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !464
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !464
  %i.ag = and i32 %i.af, -4096
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !464
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

bb.e:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2737
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKbbRT_(ptr noundef nonnull align 8 dereferenceable(270352) %i.al, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(88) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread, %bb.d, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !1218
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKbbRT_(ptr noundef nonnull align 8 dereferenceable(68) %i.am, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(88) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit: ; preds = %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKbbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 10 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = load ptr, ptr %0, align 8, !tbaa !1224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !tbaa.struct !1605
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = load i64, ptr %4, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !464  ; 2 uses
  %i.e = add nsw i32 %i.d, -8
  store i64 %i.b, ptr %5, align 8
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.e, ptr %.sroa.232.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.f = add nsw i32 %i.d, 8
  store i64 %i.b, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i46 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.03551 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.d ] ; 5 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.p
  %i.k = add nuw nsw i32 %.03551, 1               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond55.not = icmp eq i32 %i.k, 8
  br i1 %exitcond55.not, label %bb.b, label %bb.c, !llvm.loop !6980

bb.e:                                             ; preds = %bb.c, %bb.p
  %indvars.iv52 = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next53, %bb.p ] ; 6 uses
  %.03449 = phi i32 [ 0, %bb.c ], [ %i.bl, %bb.p ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv52
  %i.m = load i8, ptr %i.l, align 1, !tbaa !485   ; 8 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = lshr i8 %i.m, 1
  %i.o = shl i8 %i.m, 1
  %i.p = or i8 %i.o, %i.n
  %i.q = or i8 %i.p, %i.m                         ; 2 uses
  store i8 %i.q, ptr %i.g, align 8, !tbaa !2747
  store ptr %4, ptr %0, align 8, !tbaa !1224
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !1112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1115
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv52 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !485
  %i.v = or i8 %i.u, %i.q
  store i8 %i.v, ptr %i.t, align 1, !tbaa !485
  %i.w = trunc nuw nsw i64 %indvars.iv52 to i32   ; 4 uses
end_hunk_5
begin_hunk_6_@_ZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS8_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSH_b:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.dh = load ptr, ptr %i.ag, align 8, !tbaa !1112 ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i49, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48
  %i.di = load ptr, ptr %i.ak, align 8, !tbaa !1113
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dl) #30
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50: ; preds = %bb.aa, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48, %bb.l
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.l ], [ %lpad.loopexit.split-lp99, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48 ], [ %lpad.loopexit.split-lp99, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %6) #21
  br label %.body

.body:                                            ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50 ], [ %i.u, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn34.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS8_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSH_bENKUlSH_mE_clISM_EEDaSH_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !7027, !nonnull !528, !align !535
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1128
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %2 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !513
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, -1
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.u, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.x, i1 false
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.aa, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !7028, !nonnull !528, !align !535 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1129 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.ae to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ah, %i.ai
  %i.aj = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.aj, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  store ptr %1, ptr %i.ae, align 8, !tbaa !1115
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !1130
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1125
  switch i32 %i.am, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !7029, !nonnull !528
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !514, !range !512, !noundef !528
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !7030, !nonnull !528, !align !535
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !7031, !nonnull !528
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(88) %i.as, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.au, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !7032, !nonnull !528
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !7033, !nonnull !528, !align !535 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !7034, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !514
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9stealNodeIS6_EEPT_RKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(68) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext true) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1584 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %.not.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !558
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !1584
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !1583 ; 7 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #29 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store ptr %i.be, ptr %i.bw, align 8, !tbaa !558
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = add i64 %i.bl, -8
  %i.by = sub i64 %i.bx, %i.bm                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bv, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bk, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bk, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7035)
  call void @llvm.experimental.noalias.scope.decl(metadata !7036)
  %i.cf = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !558, !alias.scope !7036
  %wide.load13 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !558, !alias.scope !7036
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !558, !alias.scope !7035
  store <2 x i64> %wide.load13, ptr %i.cg, align 8, !tbaa !558, !alias.scope !7035
  %3 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !558, !alias.scope !7036
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !558, !alias.scope !7036
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !7024

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7035)
  call void @llvm.experimental.noalias.scope.decl(metadata !7036)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !7036
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !7035
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !7036
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !7025

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.co) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !1583
  store ptr %i.cl, ptr %i.bf, align 8, !tbaa !1584
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cp, ptr %i.bh, align 8, !tbaa !1585
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIbLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1523
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1524
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !485
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !524
  %i.g = load i32, ptr %0, align 8, !tbaa !523
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIbLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !1527
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIbLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !466
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1664
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.l = load i64, ptr %1, align 8, !tbaa !2737
  store i64 %i.l, ptr %i.k, align 16, !tbaa !2737
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !2760
  %i.n = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i32 0, ptr %i.q, align 8, !tbaa !1540
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 108
  store i8 5, ptr %i.r, align 4, !tbaa !1541
  %i.s = shl nsw i64 %i.p, 1
  %i.t = and i64 %i.s, 9223372036854775806
  store i64 %i.t, ptr %i.o, align 32, !tbaa !1542
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.v = load i64, ptr %3, align 8, !tbaa !1543
  store i64 %i.v, ptr %i.u, align 16, !tbaa !1543
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !1547
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !1548
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.x, align 8, !tbaa !1550
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.y, align 8, !tbaa !654
  store ptr %4, ptr %i.m, align 8, !tbaa !2760
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIbLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIbLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.aa = load atomic i8, ptr %i.z monotonic, align 1
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIbLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIbLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIbLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(120) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIbLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1553 ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = load i64, ptr %i.g, align 32, !tbaa !1542
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIbLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 32, !tbaa !1542
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1554
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIbLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2760
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIbLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit
end_hunk_6
begin_hunk_7_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINSC_4util8NodeMaskILj3EEESaISU_EEEUlRKSA_E_KNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.nm = phi i8 [ %i.nk, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISO_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit17 ], [ %i.jp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.nn = icmp eq i8 %i.nl, 0
  br i1 %i.nn, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split24
  %i.no = phi i8 [ %i.lg, %.noexc ], [ %i.bd, %thread-pre-split24 ]
  %i.np = phi i8 [ %i.le, %.noexc ], [ %i.nl, %thread-pre-split24 ]
  %i.nq = phi i8 [ %i.ke, %.noexc ], [ %i.nm, %thread-pre-split24 ]
  %i.nr = load ptr, ptr %3, align 8, !tbaa !1557  ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 15
  %i.nt = load atomic i8, ptr %i.ns monotonic, align 1
  %i.nu = icmp eq i8 %i.nt, -1
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8
  %.0.i.i = select i1 %i.nu, ptr %i.nw, ptr %i.nr
  %i.nx = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.nx, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %bb.f, !llvm.loop !7346

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23: ; preds = %thread-pre-split24, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISO_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISO_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerISD_EEEEDaSH_bENKUlSH_mE_clIS9_EEDaSH_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !7354, !nonnull !528, !align !535
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1128
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %2 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !513
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, -1
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.u, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.x, i1 false
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.aa, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !7355, !nonnull !528, !align !535 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1129 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.ae to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ah, %i.ai
  %i.aj = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.aj, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !1115
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store ptr %i.al, ptr %i.ac, align 8, !tbaa !1255
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.an = load i32, ptr %i.am, align 8, !tbaa !1253
  switch i32 %i.an, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !7356, !nonnull !528
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !7357, !nonnull !528, !align !535
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !7358, !nonnull !528, !align !2559
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKib(ptr noundef nonnull align 8 dereferenceable(96) %i.at, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 4 dereferenceable(4) %i.av, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !7359, !nonnull !528
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !514, !range !512, !noundef !528
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !7360, !nonnull !528, !align !535 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !7361, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !464
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9stealNodeIS5_EEPT_RKNS0_4math5CoordERKib(ptr noundef nonnull align 8 dereferenceable(68) %i.be, ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2860 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !2861
  %.not.i = icmp eq ptr %i.bh, %i.bj
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !1234
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !2860
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !2859 ; 7 uses
  %i.bm = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #29 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  store ptr %i.bf, ptr %i.bx, align 8, !tbaa !1234
  %.not10.i.i.i.i.i = icmp eq ptr %i.bl, %i.bh
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.by = add i64 %i.bm, -8
  %i.bz = sub i64 %i.by, %i.bn                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bz, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cb, 4611686018427387900     ; 3 uses
  %i.cc = shl i64 %n.vec, 3                       ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bw, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bl, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bw, i64 %i.cf ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bl, i64 %i.cf ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7362)
  call void @llvm.experimental.noalias.scope.decl(metadata !7363)
  %i.cg = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !1234, !alias.scope !7363
  %wide.load13 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !1234, !alias.scope !7363
  %i.ch = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1234, !alias.scope !7362
  store <2 x i64> %wide.load13, ptr %i.ch, align 8, !tbaa !1234, !alias.scope !7362
  %3 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !1234, !alias.scope !7363
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !1234, !alias.scope !7363
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !7351

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7362)
  call void @llvm.experimental.noalias.scope.decl(metadata !7363)
  %i.cj = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1234, !alias.scope !7363
  store i64 %i.cj, ptr %.012.i.i.i.i.i, align 8, !tbaa !1234, !alias.scope !7362
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1234, !alias.scope !7363
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ck, %i.bh
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !7352

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bw, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cd, %middle.block ], [ %i.cl, %.lr.ph.i.i.i.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.cn = load ptr, ptr %i.bi, align 8, !tbaa !2861
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.cp) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.bw, ptr %i.bb, align 8, !tbaa !2859
  store ptr %i.cm, ptr %i.bg, align 8, !tbaa !2860
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.cq, ptr %i.bi, align 8, !tbaa !2861
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKib(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %2, align 4, !tbaa !464    ; 2 uses
  %i.c = and i32 %i.b, -128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !464
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !464
  %i.i = and i32 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !464
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !464
  %i.o = and i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !464
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

bb.c:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2818
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKibRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.t, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread: ; preds = %bb.a, %bb.b, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit
  %i.u = and i32 %i.b, -4096
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !464
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

bb.d:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !464
  %i.aa = and i32 %i.z, -4096
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !464
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !464
  %i.ag = and i32 %i.af, -4096
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !464
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

bb.e:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2857
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKibRT_(ptr noundef nonnull align 8 dereferenceable(270352) %i.al, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread, %bb.d, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !1249
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKibRT_(ptr noundef nonnull align 8 dereferenceable(68) %i.am, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit: ; preds = %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKibEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 10 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = load ptr, ptr %0, align 8, !tbaa !1255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !tbaa.struct !1605
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = load i64, ptr %4, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !464  ; 2 uses
  %i.e = add nsw i32 %i.d, -8
  store i64 %i.b, ptr %5, align 8
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.e, ptr %.sroa.232.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.f = add nsw i32 %i.d, 8
  store i64 %i.b, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i46 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.035177 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.d ] ; 5 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.bt
  %i.k = add nuw nsw i32 %.035177, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond185.not = icmp eq i32 %i.k, 8
  br i1 %exitcond185.not, label %bb.b, label %bb.c, !llvm.loop !7364

bb.e:                                             ; preds = %bb.c, %bb.bt
  %indvars.iv182 = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next183, %bb.bt ] ; 6 uses
  %.034175 = phi i32 [ 0, %bb.c ], [ %i.sg, %bb.bt ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv182
  %i.m = load i8, ptr %i.l, align 1, !tbaa !485   ; 8 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.bt, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = lshr i8 %i.m, 1
  %i.o = shl i8 %i.m, 1
  %i.p = or i8 %i.o, %i.n
  %i.q = or i8 %i.p, %i.m                         ; 2 uses
  store i8 %i.q, ptr %i.g, align 8, !tbaa !2871
  store ptr %4, ptr %0, align 8, !tbaa !1255
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !1112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1115
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv182 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !485
  %i.v = or i8 %i.u, %i.q
  store i8 %i.v, ptr %i.t, align 1, !tbaa !485
  %i.w = trunc nuw nsw i64 %indvars.iv182 to i32  ; 4 uses
end_hunk_7
begin_hunk_8_@_ZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS8_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSH_b:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.dh = load ptr, ptr %i.ag, align 8, !tbaa !1112 ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i49, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48
  %i.di = load ptr, ptr %i.ak, align 8, !tbaa !1113
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dl) #30
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50: ; preds = %bb.aa, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48, %bb.l
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.l ], [ %lpad.loopexit.split-lp99, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48 ], [ %lpad.loopexit.split-lp99, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %6) #21
  br label %.body

.body:                                            ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50 ], [ %i.u, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn34.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS8_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSH_bENKUlSH_mE_clISM_EEDaSH_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !7440, !nonnull !528, !align !535
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1128
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %2 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !513
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, -1
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.u, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.x, i1 false
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.aa, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !7441, !nonnull !528, !align !535 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1129 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.ae to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ah, %i.ai
  %i.aj = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.aj, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  store ptr %1, ptr %i.ae, align 8, !tbaa !1115
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !1130
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1125
  switch i32 %i.am, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !7442, !nonnull !528
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !514, !range !512, !noundef !528
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !7443, !nonnull !528, !align !535
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !7444, !nonnull !528
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(88) %i.as, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.au, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !7445, !nonnull !528
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !7446, !nonnull !528, !align !535 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !7447, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !514
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9stealNodeIS6_EEPT_RKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(68) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext true) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1584 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %.not.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !558
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !1584
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !1583 ; 7 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #29 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store ptr %i.be, ptr %i.bw, align 8, !tbaa !558
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = add i64 %i.bl, -8
  %i.by = sub i64 %i.bx, %i.bm                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bv, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bk, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bk, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7448)
  call void @llvm.experimental.noalias.scope.decl(metadata !7449)
  %i.cf = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !558, !alias.scope !7449
  %wide.load13 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !558, !alias.scope !7449
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !558, !alias.scope !7448
  store <2 x i64> %wide.load13, ptr %i.cg, align 8, !tbaa !558, !alias.scope !7448
  %3 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !558, !alias.scope !7449
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !558, !alias.scope !7449
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !7437

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7448)
  call void @llvm.experimental.noalias.scope.decl(metadata !7449)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !7449
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !7448
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !7449
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !7438

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.co) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !1583
  store ptr %i.cl, ptr %i.bf, align 8, !tbaa !1584
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cp, ptr %i.bh, align 8, !tbaa !1585
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIiLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1523
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1524
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !485
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !524
  %i.g = load i32, ptr %0, align 8, !tbaa !523
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIiLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !1527
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIiLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !466
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1664
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.l = load i64, ptr %1, align 8, !tbaa !2857
  store i64 %i.l, ptr %i.k, align 16, !tbaa !2857
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !2885
  %i.n = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i32 0, ptr %i.q, align 8, !tbaa !1540
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 108
  store i8 5, ptr %i.r, align 4, !tbaa !1541
  %i.s = shl nsw i64 %i.p, 1
  %i.t = and i64 %i.s, 9223372036854775806
  store i64 %i.t, ptr %i.o, align 32, !tbaa !1542
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.v = load i64, ptr %3, align 8, !tbaa !1543
  store i64 %i.v, ptr %i.u, align 16, !tbaa !1543
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !1547
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !1548
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.x, align 8, !tbaa !1550
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.y, align 8, !tbaa !654
  store ptr %4, ptr %i.m, align 8, !tbaa !2885
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIiLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIiLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.aa = load atomic i8, ptr %i.z monotonic, align 1
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIiLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIiLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIiLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(120) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIiLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1553 ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = load i64, ptr %i.g, align 32, !tbaa !1542
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIiLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 32, !tbaa !1542
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1554
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIiLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2885
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIiLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit
end_hunk_8
begin_hunk_9_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINSC_4util8NodeMaskILj3EEESaISU_EEEUlRKSA_E_KNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.nm = phi i8 [ %i.nk, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISO_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit17 ], [ %i.jp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.nn = icmp eq i8 %i.nl, 0
  br i1 %i.nn, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split24
  %i.no = phi i8 [ %i.lg, %.noexc ], [ %i.bd, %thread-pre-split24 ]
  %i.np = phi i8 [ %i.le, %.noexc ], [ %i.nl, %thread-pre-split24 ]
  %i.nq = phi i8 [ %i.ke, %.noexc ], [ %i.nm, %thread-pre-split24 ]
  %i.nr = load ptr, ptr %3, align 8, !tbaa !1557  ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 15
  %i.nt = load atomic i8, ptr %i.ns monotonic, align 1
  %i.nu = icmp eq i8 %i.nt, -1
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8
  %.0.i.i = select i1 %i.nu, ptr %i.nw, ptr %i.nr
  %i.nx = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.nx, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %bb.f, !llvm.loop !7762

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23: ; preds = %thread-pre-split24, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISO_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISO_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerISD_EEEEDaSH_bENKUlSH_mE_clIS9_EEDaSH_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !7770, !nonnull !528, !align !535
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1128
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %2 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !513
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, -1
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.u, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.x, i1 false
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.aa, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !7771, !nonnull !528, !align !535 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1129 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.ae to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ah, %i.ai
  %i.aj = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.aj, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !1115
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store ptr %i.al, ptr %i.ac, align 8, !tbaa !1287
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.an = load i32, ptr %i.am, align 8, !tbaa !1285
  switch i32 %i.an, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !7772, !nonnull !528
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !7773, !nonnull !528, !align !535
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !7774, !nonnull !528, !align !535
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKlb(ptr noundef nonnull align 8 dereferenceable(96) %i.at, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.av, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !7775, !nonnull !528
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !514, !range !512, !noundef !528
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !7776, !nonnull !528, !align !535 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !7777, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8, !tbaa !513
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9stealNodeIS5_EEPT_RKNS0_4math5CoordERKlb(ptr noundef nonnull align 8 dereferenceable(72) %i.be, ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext true) ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2985 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !2986
  %.not.i = icmp eq ptr %i.bh, %i.bj
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !1265
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !2985
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !2984 ; 7 uses
  %i.bm = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #29 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  store ptr %i.bf, ptr %i.bx, align 8, !tbaa !1265
  %.not10.i.i.i.i.i = icmp eq ptr %i.bl, %i.bh
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.by = add i64 %i.bm, -8
  %i.bz = sub i64 %i.by, %i.bn                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bz, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cb, 4611686018427387900     ; 3 uses
  %i.cc = shl i64 %n.vec, 3                       ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bw, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bl, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bw, i64 %i.cf ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bl, i64 %i.cf ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7778)
  call void @llvm.experimental.noalias.scope.decl(metadata !7779)
  %i.cg = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !1265, !alias.scope !7779
  %wide.load13 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !1265, !alias.scope !7779
  %i.ch = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1265, !alias.scope !7778
  store <2 x i64> %wide.load13, ptr %i.ch, align 8, !tbaa !1265, !alias.scope !7778
  %3 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !1265, !alias.scope !7779
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !1265, !alias.scope !7779
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !7767

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7778)
  call void @llvm.experimental.noalias.scope.decl(metadata !7779)
  %i.cj = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1265, !alias.scope !7779
  store i64 %i.cj, ptr %.012.i.i.i.i.i, align 8, !tbaa !1265, !alias.scope !7778
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1265, !alias.scope !7779
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ck, %i.bh
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !7768

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bw, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cd, %middle.block ], [ %i.cl, %.lr.ph.i.i.i.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.cn = load ptr, ptr %i.bi, align 8, !tbaa !2986
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.cp) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.bw, ptr %i.bb, align 8, !tbaa !2984
  store ptr %i.cm, ptr %i.bg, align 8, !tbaa !2985
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.cq, ptr %i.bi, align 8, !tbaa !2986
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKlb(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %2, align 4, !tbaa !464    ; 2 uses
  %i.c = and i32 %i.b, -128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !464
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !464
  %i.i = and i32 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !464
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !464
  %i.o = and i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !464
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

bb.c:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2943
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKlbRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.t, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread: ; preds = %bb.a, %bb.b, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit
  %i.u = and i32 %i.b, -4096
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !464
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

bb.d:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !464
  %i.aa = and i32 %i.z, -4096
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !464
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !464
  %i.ag = and i32 %i.af, -4096
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !464
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

bb.e:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2982
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKlbRT_(ptr noundef nonnull align 8 dereferenceable(270352) %i.al, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread, %bb.d, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !1281
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKlbRT_(ptr noundef nonnull align 8 dereferenceable(72) %i.am, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit: ; preds = %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKlbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 10 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = load ptr, ptr %0, align 8, !tbaa !1287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !tbaa.struct !1605
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = load i64, ptr %4, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !464  ; 2 uses
  %i.e = add nsw i32 %i.d, -8
  store i64 %i.b, ptr %5, align 8
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.e, ptr %.sroa.232.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.f = add nsw i32 %i.d, 8
  store i64 %i.b, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i46 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.035177 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.d ] ; 5 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.bt
  %i.k = add nuw nsw i32 %.035177, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond185.not = icmp eq i32 %i.k, 8
  br i1 %exitcond185.not, label %bb.b, label %bb.c, !llvm.loop !7780

bb.e:                                             ; preds = %bb.c, %bb.bt
  %indvars.iv182 = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next183, %bb.bt ] ; 6 uses
  %.034175 = phi i32 [ 0, %bb.c ], [ %i.sg, %bb.bt ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv182
  %i.m = load i8, ptr %i.l, align 1, !tbaa !485   ; 8 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.bt, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = lshr i8 %i.m, 1
  %i.o = shl i8 %i.m, 1
  %i.p = or i8 %i.o, %i.n
  %i.q = or i8 %i.p, %i.m                         ; 2 uses
  store i8 %i.q, ptr %i.g, align 8, !tbaa !2996
  store ptr %4, ptr %0, align 8, !tbaa !1287
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !1112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1115
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv182 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !485
  %i.v = or i8 %i.u, %i.q
  store i8 %i.v, ptr %i.t, align 1, !tbaa !485
  %i.w = trunc nuw nsw i64 %indvars.iv182 to i32  ; 4 uses
end_hunk_9
begin_hunk_10_@_ZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS8_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSH_b:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.dh = load ptr, ptr %i.ag, align 8, !tbaa !1112 ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i49, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48
  %i.di = load ptr, ptr %i.ak, align 8, !tbaa !1113
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dl) #30
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50: ; preds = %bb.aa, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48, %bb.l
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.l ], [ %lpad.loopexit.split-lp99, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48 ], [ %lpad.loopexit.split-lp99, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %6) #21
  br label %.body

.body:                                            ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50 ], [ %i.u, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn34.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS8_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSH_bENKUlSH_mE_clISM_EEDaSH_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !7865, !nonnull !528, !align !535
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1128
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %2 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !513
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, -1
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.u, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.x, i1 false
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.aa, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !7866, !nonnull !528, !align !535 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1129 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.ae to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ah, %i.ai
  %i.aj = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.aj, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  store ptr %1, ptr %i.ae, align 8, !tbaa !1115
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !1130
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1125
  switch i32 %i.am, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !7867, !nonnull !528
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !514, !range !512, !noundef !528
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !7868, !nonnull !528, !align !535
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !7869, !nonnull !528
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(88) %i.as, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.au, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !7870, !nonnull !528
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !7871, !nonnull !528, !align !535 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !7872, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !514
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9stealNodeIS6_EEPT_RKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(68) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext true) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1584 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %.not.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !558
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !1584
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !1583 ; 7 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #29 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store ptr %i.be, ptr %i.bw, align 8, !tbaa !558
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = add i64 %i.bl, -8
  %i.by = sub i64 %i.bx, %i.bm                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bv, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bk, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bk, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7873)
  call void @llvm.experimental.noalias.scope.decl(metadata !7874)
  %i.cf = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !558, !alias.scope !7874
  %wide.load13 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !558, !alias.scope !7874
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !558, !alias.scope !7873
  store <2 x i64> %wide.load13, ptr %i.cg, align 8, !tbaa !558, !alias.scope !7873
  %3 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !558, !alias.scope !7874
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !558, !alias.scope !7874
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !7862

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7873)
  call void @llvm.experimental.noalias.scope.decl(metadata !7874)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !7874
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !7873
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !7874
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !7863

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.co) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !1583
  store ptr %i.cl, ptr %i.bf, align 8, !tbaa !1584
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cp, ptr %i.bh, align 8, !tbaa !1585
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIlLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1523
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1524
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !485
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !524
  %i.g = load i32, ptr %0, align 8, !tbaa !523
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIlLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !1527
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIlLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !466
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1664
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.l = load i64, ptr %1, align 8, !tbaa !2982
  store i64 %i.l, ptr %i.k, align 16, !tbaa !2982
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !3011
  %i.n = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i32 0, ptr %i.q, align 8, !tbaa !1540
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 108
  store i8 5, ptr %i.r, align 4, !tbaa !1541
  %i.s = shl nsw i64 %i.p, 1
  %i.t = and i64 %i.s, 9223372036854775806
  store i64 %i.t, ptr %i.o, align 32, !tbaa !1542
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.v = load i64, ptr %3, align 8, !tbaa !1543
  store i64 %i.v, ptr %i.u, align 16, !tbaa !1543
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !1547
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !1548
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.x, align 8, !tbaa !1550
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.y, align 8, !tbaa !654
  store ptr %4, ptr %i.m, align 8, !tbaa !3011
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIlLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIlLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.aa = load atomic i8, ptr %i.z monotonic, align 1
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIlLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIlLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIlLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(120) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIlLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1553 ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = load i64, ptr %i.g, align 32, !tbaa !1542
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIlLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 32, !tbaa !1542
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1554
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIlLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3011
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIlLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit
end_hunk_10
begin_hunk_11_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINSC_4util8NodeMaskILj3EEESaISU_EEEUlRKSA_E_KNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.nm = phi i8 [ %i.nk, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISO_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit17 ], [ %i.jp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.nn = icmp eq i8 %i.nl, 0
  br i1 %i.nn, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split24
  %i.no = phi i8 [ %i.lg, %.noexc ], [ %i.bd, %thread-pre-split24 ]
  %i.np = phi i8 [ %i.le, %.noexc ], [ %i.nl, %thread-pre-split24 ]
  %i.nq = phi i8 [ %i.ke, %.noexc ], [ %i.nm, %thread-pre-split24 ]
  %i.nr = load ptr, ptr %3, align 8, !tbaa !1557  ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 15
  %i.nt = load atomic i8, ptr %i.ns monotonic, align 1
  %i.nu = icmp eq i8 %i.nt, -1
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8
  %.0.i.i = select i1 %i.nu, ptr %i.nw, ptr %i.nr
  %i.nx = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.nx, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %bb.f, !llvm.loop !8188

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23: ; preds = %thread-pre-split24, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISO_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISO_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerISD_EEEEDaSH_bENKUlSH_mE_clIS9_EEDaSH_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !8196, !nonnull !528, !align !535
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1128
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %2 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !513
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, -1
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.u, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.x, i1 false
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.aa, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !8197, !nonnull !528, !align !535 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1129 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.ae to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ah, %i.ai
  %i.aj = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.aj, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !1115
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store ptr %i.al, ptr %i.ac, align 8, !tbaa !1319
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.an = load i32, ptr %i.am, align 8, !tbaa !1317
  switch i32 %i.an, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !8198, !nonnull !528
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !8199, !nonnull !528, !align !535
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !8200, !nonnull !528, !align !2559
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKfb(ptr noundef nonnull align 8 dereferenceable(96) %i.at, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 4 dereferenceable(4) %i.av, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !8201, !nonnull !528
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !514, !range !512, !noundef !528
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !8202, !nonnull !528, !align !535 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !8203, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !863
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9stealNodeIS5_EEPT_RKNS0_4math5CoordERKfb(ptr noundef nonnull align 8 dereferenceable(68) %i.be, ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3112 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !3113
  %.not.i = icmp eq ptr %i.bh, %i.bj
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !1297
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !3112
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !3111 ; 7 uses
  %i.bm = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #29 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  store ptr %i.bf, ptr %i.bx, align 8, !tbaa !1297
  %.not10.i.i.i.i.i = icmp eq ptr %i.bl, %i.bh
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.by = add i64 %i.bm, -8
  %i.bz = sub i64 %i.by, %i.bn                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bz, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cb, 4611686018427387900     ; 3 uses
  %i.cc = shl i64 %n.vec, 3                       ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bw, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bl, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bw, i64 %i.cf ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bl, i64 %i.cf ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8204)
  call void @llvm.experimental.noalias.scope.decl(metadata !8205)
  %i.cg = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !1297, !alias.scope !8205
  %wide.load13 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !1297, !alias.scope !8205
  %i.ch = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1297, !alias.scope !8204
  store <2 x i64> %wide.load13, ptr %i.ch, align 8, !tbaa !1297, !alias.scope !8204
  %3 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !1297, !alias.scope !8205
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !1297, !alias.scope !8205
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !8193

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8204)
  call void @llvm.experimental.noalias.scope.decl(metadata !8205)
  %i.cj = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1297, !alias.scope !8205
  store i64 %i.cj, ptr %.012.i.i.i.i.i, align 8, !tbaa !1297, !alias.scope !8204
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1297, !alias.scope !8205
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ck, %i.bh
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8194

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bw, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cd, %middle.block ], [ %i.cl, %.lr.ph.i.i.i.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.cn = load ptr, ptr %i.bi, align 8, !tbaa !3113
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.cp) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.bw, ptr %i.bb, align 8, !tbaa !3111
  store ptr %i.cm, ptr %i.bg, align 8, !tbaa !3112
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.cq, ptr %i.bi, align 8, !tbaa !3113
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKfb(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %2, align 4, !tbaa !464    ; 2 uses
  %i.c = and i32 %i.b, -128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !464
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !464
  %i.i = and i32 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !464
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !464
  %i.o = and i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !464
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

bb.c:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3069
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKfbRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.t, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread: ; preds = %bb.a, %bb.b, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit
  %i.u = and i32 %i.b, -4096
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !464
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

bb.d:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !464
  %i.aa = and i32 %i.z, -4096
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !464
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !464
  %i.ag = and i32 %i.af, -4096
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !464
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

bb.e:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !3109
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKfbRT_(ptr noundef nonnull align 8 dereferenceable(270352) %i.al, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread, %bb.d, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !1313
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKfbRT_(ptr noundef nonnull align 8 dereferenceable(68) %i.am, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit: ; preds = %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 10 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = load ptr, ptr %0, align 8, !tbaa !1319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !tbaa.struct !1605
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = load i64, ptr %4, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !464  ; 2 uses
  %i.e = add nsw i32 %i.d, -8
  store i64 %i.b, ptr %5, align 8
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.e, ptr %.sroa.232.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.f = add nsw i32 %i.d, 8
  store i64 %i.b, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i46 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.035177 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.d ] ; 5 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.bt
  %i.k = add nuw nsw i32 %.035177, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond185.not = icmp eq i32 %i.k, 8
  br i1 %exitcond185.not, label %bb.b, label %bb.c, !llvm.loop !8206

bb.e:                                             ; preds = %bb.c, %bb.bt
  %indvars.iv182 = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next183, %bb.bt ] ; 6 uses
  %.034175 = phi i32 [ 0, %bb.c ], [ %i.sg, %bb.bt ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv182
  %i.m = load i8, ptr %i.l, align 1, !tbaa !485   ; 8 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.bt, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = lshr i8 %i.m, 1
  %i.o = shl i8 %i.m, 1
  %i.p = or i8 %i.o, %i.n
  %i.q = or i8 %i.p, %i.m                         ; 2 uses
  store i8 %i.q, ptr %i.g, align 8, !tbaa !3123
  store ptr %4, ptr %0, align 8, !tbaa !1319
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !1112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1115
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv182 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !485
  %i.v = or i8 %i.u, %i.q
  store i8 %i.v, ptr %i.t, align 1, !tbaa !485
  %i.w = trunc nuw nsw i64 %indvars.iv182 to i32  ; 4 uses
end_hunk_11
begin_hunk_12_@_ZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS8_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSH_b:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.dh = load ptr, ptr %i.ag, align 8, !tbaa !1112 ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i49, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48
  %i.di = load ptr, ptr %i.ak, align 8, !tbaa !1113
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dl) #30
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50: ; preds = %bb.aa, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48, %bb.l
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.l ], [ %lpad.loopexit.split-lp99, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48 ], [ %lpad.loopexit.split-lp99, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %6) #21
  br label %.body

.body:                                            ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50 ], [ %i.u, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn34.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS8_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSH_bENKUlSH_mE_clISM_EEDaSH_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !8284, !nonnull !528, !align !535
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1128
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %2 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !513
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, -1
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.u, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.x, i1 false
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.aa, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !8285, !nonnull !528, !align !535 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1129 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.ae to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ah, %i.ai
  %i.aj = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.aj, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  store ptr %1, ptr %i.ae, align 8, !tbaa !1115
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !1130
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1125
  switch i32 %i.am, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !8286, !nonnull !528
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !514, !range !512, !noundef !528
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !8287, !nonnull !528, !align !535
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !8288, !nonnull !528
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(88) %i.as, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.au, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !8289, !nonnull !528
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !8290, !nonnull !528, !align !535 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !8291, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !514
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9stealNodeIS6_EEPT_RKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(68) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext true) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1584 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %.not.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !558
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !1584
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !1583 ; 7 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #29 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store ptr %i.be, ptr %i.bw, align 8, !tbaa !558
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = add i64 %i.bl, -8
  %i.by = sub i64 %i.bx, %i.bm                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bv, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bk, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bk, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8292)
  call void @llvm.experimental.noalias.scope.decl(metadata !8293)
  %i.cf = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !558, !alias.scope !8293
  %wide.load13 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !558, !alias.scope !8293
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !558, !alias.scope !8292
  store <2 x i64> %wide.load13, ptr %i.cg, align 8, !tbaa !558, !alias.scope !8292
  %3 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !558, !alias.scope !8293
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !558, !alias.scope !8293
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !8281

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8292)
  call void @llvm.experimental.noalias.scope.decl(metadata !8293)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !8293
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !8292
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !8293
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8282

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.co) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !1583
  store ptr %i.cl, ptr %i.bf, align 8, !tbaa !1584
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cp, ptr %i.bh, align 8, !tbaa !1585
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIfLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1523
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1524
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !485
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !524
  %i.g = load i32, ptr %0, align 8, !tbaa !523
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIfLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !1527
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIfLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !466
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1664
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.l = load i64, ptr %1, align 8, !tbaa !3109
  store i64 %i.l, ptr %i.k, align 16, !tbaa !3109
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !3137
  %i.n = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i32 0, ptr %i.q, align 8, !tbaa !1540
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 108
  store i8 5, ptr %i.r, align 4, !tbaa !1541
  %i.s = shl nsw i64 %i.p, 1
  %i.t = and i64 %i.s, 9223372036854775806
  store i64 %i.t, ptr %i.o, align 32, !tbaa !1542
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.v = load i64, ptr %3, align 8, !tbaa !1543
  store i64 %i.v, ptr %i.u, align 16, !tbaa !1543
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !1547
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !1548
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.x, align 8, !tbaa !1550
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.y, align 8, !tbaa !654
  store ptr %4, ptr %i.m, align 8, !tbaa !3137
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIfLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIfLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.aa = load atomic i8, ptr %i.z monotonic, align 1
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIfLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIfLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIfLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(120) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIfLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1553 ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = load i64, ptr %i.g, align 32, !tbaa !1542
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIfLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 32, !tbaa !1542
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1554
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIfLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3137
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIfLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit
end_hunk_12
begin_hunk_13_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINSC_4util8NodeMaskILj3EEESaISU_EEEUlRKSA_E_KNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.nm = phi i8 [ %i.nk, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISO_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit17 ], [ %i.jp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.nn = icmp eq i8 %i.nl, 0
  br i1 %i.nn, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split24
  %i.no = phi i8 [ %i.lg, %.noexc ], [ %i.bd, %thread-pre-split24 ]
  %i.np = phi i8 [ %i.le, %.noexc ], [ %i.nl, %thread-pre-split24 ]
  %i.nq = phi i8 [ %i.ke, %.noexc ], [ %i.nm, %thread-pre-split24 ]
  %i.nr = load ptr, ptr %3, align 8, !tbaa !1557  ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 15
  %i.nt = load atomic i8, ptr %i.ns monotonic, align 1
  %i.nu = icmp eq i8 %i.nt, -1
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8
  %.0.i.i = select i1 %i.nu, ptr %i.nw, ptr %i.nr
  %i.nx = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.nx, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %bb.f, !llvm.loop !8606

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23: ; preds = %thread-pre-split24, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISO_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISO_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerISD_EEEEDaSH_bENKUlSH_mE_clIS9_EEDaSH_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !8614, !nonnull !528, !align !535
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1128
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %2 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !513
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, -1
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.u, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.x, i1 false
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.aa, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !8615, !nonnull !528, !align !535 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1129 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.ae to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ah, %i.ai
  %i.aj = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.aj, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !1115
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store ptr %i.al, ptr %i.ac, align 8, !tbaa !1351
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.an = load i32, ptr %i.am, align 8, !tbaa !1349
  switch i32 %i.an, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !8616, !nonnull !528
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !8617, !nonnull !528, !align !535
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !8618, !nonnull !528, !align !535
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKdb(ptr noundef nonnull align 8 dereferenceable(96) %i.at, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.av, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !8619, !nonnull !528
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !514, !range !512, !noundef !528
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !8620, !nonnull !528, !align !535 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !8621, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !908
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9stealNodeIS5_EEPT_RKNS0_4math5CoordERKdb(ptr noundef nonnull align 8 dereferenceable(72) %i.be, ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext true) ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3238 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !3239
  %.not.i = icmp eq ptr %i.bh, %i.bj
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !1329
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !3238
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !3237 ; 7 uses
  %i.bm = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #29 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  store ptr %i.bf, ptr %i.bx, align 8, !tbaa !1329
  %.not10.i.i.i.i.i = icmp eq ptr %i.bl, %i.bh
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.by = add i64 %i.bm, -8
  %i.bz = sub i64 %i.by, %i.bn                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bz, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cb, 4611686018427387900     ; 3 uses
  %i.cc = shl i64 %n.vec, 3                       ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bw, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bl, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bw, i64 %i.cf ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bl, i64 %i.cf ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8622)
  call void @llvm.experimental.noalias.scope.decl(metadata !8623)
  %i.cg = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !1329, !alias.scope !8623
  %wide.load13 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !1329, !alias.scope !8623
  %i.ch = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1329, !alias.scope !8622
  store <2 x i64> %wide.load13, ptr %i.ch, align 8, !tbaa !1329, !alias.scope !8622
  %3 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !1329, !alias.scope !8623
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !1329, !alias.scope !8623
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !8611

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8622)
  call void @llvm.experimental.noalias.scope.decl(metadata !8623)
  %i.cj = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1329, !alias.scope !8623
  store i64 %i.cj, ptr %.012.i.i.i.i.i, align 8, !tbaa !1329, !alias.scope !8622
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1329, !alias.scope !8623
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ck, %i.bh
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8612

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bw, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cd, %middle.block ], [ %i.cl, %.lr.ph.i.i.i.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.cn = load ptr, ptr %i.bi, align 8, !tbaa !3239
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.cp) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.bw, ptr %i.bb, align 8, !tbaa !3237
  store ptr %i.cm, ptr %i.bg, align 8, !tbaa !3238
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.cq, ptr %i.bi, align 8, !tbaa !3239
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPS5_EEERS8_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERS9_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKdb(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %2, align 4, !tbaa !464    ; 2 uses
  %i.c = and i32 %i.b, -128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !464
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !464
  %i.i = and i32 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !464
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !464
  %i.o = and i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !464
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

bb.c:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3195
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKdbRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.t, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread: ; preds = %bb.a, %bb.b, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit
  %i.u = and i32 %i.b, -4096
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !464
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

bb.d:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !464
  %i.aa = and i32 %i.z, -4096
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !464
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !464
  %i.ag = and i32 %i.af, -4096
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !464
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

bb.e:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !3235
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKdbRT_(ptr noundef nonnull align 8 dereferenceable(270352) %i.al, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread, %bb.d, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !1345
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKdbRT_(ptr noundef nonnull align 8 dereferenceable(72) %i.am, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit: ; preds = %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 10 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = load ptr, ptr %0, align 8, !tbaa !1351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !tbaa.struct !1605
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = load i64, ptr %4, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !464  ; 2 uses
  %i.e = add nsw i32 %i.d, -8
  store i64 %i.b, ptr %5, align 8
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.e, ptr %.sroa.232.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.f = add nsw i32 %i.d, 8
  store i64 %i.b, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i46 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.035177 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.d ] ; 5 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.bt
  %i.k = add nuw nsw i32 %.035177, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond185.not = icmp eq i32 %i.k, 8
  br i1 %exitcond185.not, label %bb.b, label %bb.c, !llvm.loop !8624

bb.e:                                             ; preds = %bb.c, %bb.bt
  %indvars.iv182 = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next183, %bb.bt ] ; 6 uses
  %.034175 = phi i32 [ 0, %bb.c ], [ %i.sg, %bb.bt ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv182
  %i.m = load i8, ptr %i.l, align 1, !tbaa !485   ; 8 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.bt, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = lshr i8 %i.m, 1
  %i.o = shl i8 %i.m, 1
  %i.p = or i8 %i.o, %i.n
  %i.q = or i8 %i.p, %i.m                         ; 2 uses
  store i8 %i.q, ptr %i.g, align 8, !tbaa !3249
  store ptr %4, ptr %0, align 8, !tbaa !1351
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !1112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1115
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv182 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !485
  %i.v = or i8 %i.u, %i.q
  store i8 %i.v, ptr %i.t, align 1, !tbaa !485
  %i.w = trunc nuw nsw i64 %indvars.iv182 to i32  ; 4 uses
end_hunk_13
begin_hunk_14_@_ZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS8_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSH_b:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.dh = load ptr, ptr %i.ag, align 8, !tbaa !1112 ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i49, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48
  %i.di = load ptr, ptr %i.ak, align 8, !tbaa !1113
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dl) #30
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50: ; preds = %bb.aa, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48, %bb.l
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.l ], [ %lpad.loopexit.split-lp99, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48 ], [ %lpad.loopexit.split-lp99, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %6) #21
  br label %.body

.body:                                            ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50 ], [ %i.u, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn34.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS8_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSH_bENKUlSH_mE_clISM_EEDaSH_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !8710, !nonnull !528, !align !535
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1128
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %2 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !513
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, -1
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.u, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.x, i1 false
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.aa, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !8711, !nonnull !528, !align !535 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1129 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.ae to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ah, %i.ai
  %i.aj = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.aj, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  store ptr %1, ptr %i.ae, align 8, !tbaa !1115
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !1130
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1125
  switch i32 %i.am, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !8712, !nonnull !528
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !514, !range !512, !noundef !528
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !8713, !nonnull !528, !align !535
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !8714, !nonnull !528
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(88) %i.as, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.au, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !8715, !nonnull !528
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !8716, !nonnull !528, !align !535 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !8717, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !514
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9stealNodeIS6_EEPT_RKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(68) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext true) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1584 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %.not.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !558
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !1584
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !1583 ; 7 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #29 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store ptr %i.be, ptr %i.bw, align 8, !tbaa !558
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = add i64 %i.bl, -8
  %i.by = sub i64 %i.bx, %i.bm                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bv, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bk, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bk, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8718)
  call void @llvm.experimental.noalias.scope.decl(metadata !8719)
  %i.cf = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !558, !alias.scope !8719
  %wide.load13 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !558, !alias.scope !8719
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !558, !alias.scope !8718
  store <2 x i64> %wide.load13, ptr %i.cg, align 8, !tbaa !558, !alias.scope !8718
  %3 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !558, !alias.scope !8719
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !558, !alias.scope !8719
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !8707

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8718)
  call void @llvm.experimental.noalias.scope.decl(metadata !8719)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !8719
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !8718
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !8719
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8708

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.co) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !1583
  store ptr %i.cl, ptr %i.bf, align 8, !tbaa !1584
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cp, ptr %i.bh, align 8, !tbaa !1585
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIdLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1523
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1524
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !485
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !524
  %i.g = load i32, ptr %0, align 8, !tbaa !523
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIdLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !1527
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIdLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !466
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1664
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.l = load i64, ptr %1, align 8, !tbaa !3235
  store i64 %i.l, ptr %i.k, align 16, !tbaa !3235
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !3264
  %i.n = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i32 0, ptr %i.q, align 8, !tbaa !1540
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 108
  store i8 5, ptr %i.r, align 4, !tbaa !1541
  %i.s = shl nsw i64 %i.p, 1
  %i.t = and i64 %i.s, 9223372036854775806
  store i64 %i.t, ptr %i.o, align 32, !tbaa !1542
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.v = load i64, ptr %3, align 8, !tbaa !1543
  store i64 %i.v, ptr %i.u, align 16, !tbaa !1543
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !1547
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !1548
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.x, align 8, !tbaa !1550
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.y, align 8, !tbaa !654
  store ptr %4, ptr %i.m, align 8, !tbaa !3264
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIdLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIdLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.aa = load atomic i8, ptr %i.z monotonic, align 1
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIdLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIdLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIdLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(120) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIdLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1553 ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = load i64, ptr %i.g, align 32, !tbaa !1542
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIdLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 32, !tbaa !1542
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1554
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIdLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3264
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIdLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit
end_hunk_14
begin_hunk_15_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeINSC_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINSC_4util8NodeMaskILj3EEESaISX_EEEUlRKSA_E_KNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  br i1 %i.nn, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split24
  %i.no = phi i8 [ %i.lg, %.noexc ], [ %i.bd, %thread-pre-split24 ]
  %i.np = phi i8 [ %i.le, %.noexc ], [ %i.nl, %thread-pre-split24 ]
  %i.nq = phi i8 [ %i.ke, %.noexc ], [ %i.nm, %thread-pre-split24 ]
  %i.nr = load ptr, ptr %3, align 8, !tbaa !1557  ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 15
  %i.nt = load atomic i8, ptr %i.ns monotonic, align 1
  %i.nu = icmp eq i8 %i.nt, -1
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8
  %.0.i.i = select i1 %i.nu, ptr %i.nw, ptr %i.nr
  %i.nx = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.nx, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %bb.f, !llvm.loop !9029

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23: ; preds = %thread-pre-split24, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeINS6_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISR_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeINS6_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISR_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerISG_EEEEDaSK_bENKUlSK_mE_clISC_EEDaSK_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %2) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Vec3.224", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9037, !nonnull !528, !align !535
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1128
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %2 ; 11 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !513
  %i.e = icmp eq i64 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, -1
  %or.cond.i = select i1 %i.e, i1 %i.h, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.k, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.n, i1 false
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.p, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.q, i1 false
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp eq i64 %i.s, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.t, i1 false
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %i.v, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.w, i1 false
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp eq i64 %i.y, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.z, i1 false
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !9038, !nonnull !528, !align !535 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1129 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = ptrtoaddr ptr %i.ad to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ag, %i.ah
  %i.ai = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ai, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.aj, ptr %i.ad, align 8, !tbaa !1115
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store ptr %i.ak, ptr %i.ab, align 8, !tbaa !1383
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1381
  switch i32 %i.am, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !9039, !nonnull !528
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !514, !range !512, !noundef !528
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !9040, !nonnull !528, !align !535
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !9041, !nonnull !528, !align !2559
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS7_5CoordERKS9_b(ptr noundef nonnull align 8 dereferenceable(96) %i.as, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %i.au, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !9042, !nonnull !528
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !9043, !nonnull !528, !align !535 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !9044, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store <2 x float> zeroinitializer, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float 0.000000e+00, ptr %.sroa.2.0..sroa_idx, align 8
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1240) %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9stealNodeIS8_EEPT_RKNS5_5CoordERKS7_b(ptr noundef nonnull align 8 dereferenceable(76) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %3, i1 noundef zeroext true) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !3365 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !3366
  %.not.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !1361
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !3365
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IfEELj3EEESt14default_deleteIS8_EESaISB_EE12emplace_backIJPS8_EEERSB_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !3364 ; 7 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IfEELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IfEELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #29 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store ptr %i.be, ptr %i.bw, align 8, !tbaa !1361
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IfEELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IfEELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = add i64 %i.bl, -8
  %i.by = sub i64 %i.bx, %i.bm                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bv, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bk, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bk, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9045)
  call void @llvm.experimental.noalias.scope.decl(metadata !9046)
  %i.cf = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !1361, !alias.scope !9046
  %wide.load13 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !1361, !alias.scope !9046
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1361, !alias.scope !9045
  store <2 x i64> %wide.load13, ptr %i.cg, align 8, !tbaa !1361, !alias.scope !9045
  %4 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !1361, !alias.scope !9046
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !1361, !alias.scope !9046
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !9034

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IfEELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9045)
  call void @llvm.experimental.noalias.scope.decl(metadata !9046)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1361, !alias.scope !9046
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !1361, !alias.scope !9045
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1361, !alias.scope !9046
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IfEELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9035

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IfEELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IfEELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IfEELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IfEELj3EEESt14default_deleteIS8_EESaISB_EE17_M_realloc_insertIJPS8_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IfEELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !3366
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.co) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IfEELj3EEESt14default_deleteIS8_EESaISB_EE17_M_realloc_insertIJPS8_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IfEELj3EEESt14default_deleteIS8_EESaISB_EE17_M_realloc_insertIJPS8_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IfEELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !3364
  store ptr %i.cl, ptr %i.bf, align 8, !tbaa !3365
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cp, ptr %i.bh, align 8, !tbaa !3366
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IfEELj3EEESt14default_deleteIS8_EESaISB_EE12emplace_backIJPS8_EEERSB_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IfEELj3EEESt14default_deleteIS8_EESaISB_EE12emplace_backIJPS8_EEERSB_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IfEELj3EEESt14default_deleteIS8_EESaISB_EE17_M_realloc_insertIJPS8_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IfEELj3EEESt14default_deleteIS8_EESaISB_EE12emplace_backIJPS8_EEERSB_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS7_5CoordERKS9_b(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, i1 noundef zeroext %4) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %2, align 4, !tbaa !464    ; 2 uses
  %i.c = and i32 %i.b, -128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !464
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !464
  %i.i = and i32 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !464
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !464
  %i.o = and i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !464
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread

bb.c:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3322
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS8_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS4_5CoordERKS6_bRT_(ptr noundef nonnull align 8 dereferenceable(66576) %i.t, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSQ_SS_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread: ; preds = %bb.a, %bb.b, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit
  %i.u = and i32 %i.b, -4096
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !464
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit

bb.d:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !464
  %i.aa = and i32 %i.z, -4096
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !464
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm2EEEEbSO_.exit, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm2EEEEbSO_.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !464
  %i.ag = and i32 %i.af, -4096
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !464
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit

bb.e:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm2EEEEbSO_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !3362
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS9_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS4_5CoordERKS6_bRT_(ptr noundef nonnull align 8 dereferenceable(532496) %i.al, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSQ_SS_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread, %bb.d, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm2EEEEbSO_.exit
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !1377
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeISB_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS5_5CoordERKS7_bRT_(ptr noundef nonnull align 8 dereferenceable(76) %i.am, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSQ_SS_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSQ_SS_RT1_.exit: ; preds = %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 10 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = load ptr, ptr %0, align 8, !tbaa !1383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !tbaa.struct !1605
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = load i64, ptr %4, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !464  ; 2 uses
  %i.e = add nsw i32 %i.d, -8
  store i64 %i.b, ptr %5, align 8
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.e, ptr %.sroa.232.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.f = add nsw i32 %i.d, 8
  store i64 %i.b, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i46 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.035177 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.d ] ; 5 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.bt
  %i.k = add nuw nsw i32 %.035177, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond185.not = icmp eq i32 %i.k, 8
  br i1 %exitcond185.not, label %bb.b, label %bb.c, !llvm.loop !9047

bb.e:                                             ; preds = %bb.c, %bb.bt
  %indvars.iv182 = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next183, %bb.bt ] ; 6 uses
  %.034175 = phi i32 [ 0, %bb.c ], [ %i.sg, %bb.bt ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv182
  %i.m = load i8, ptr %i.l, align 1, !tbaa !485   ; 8 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.bt, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = lshr i8 %i.m, 1
  %i.o = shl i8 %i.m, 1
  %i.p = or i8 %i.o, %i.n
  %i.q = or i8 %i.p, %i.m                         ; 2 uses
  store i8 %i.q, ptr %i.g, align 8, !tbaa !3376
  store ptr %4, ptr %0, align 8, !tbaa !1383
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !1112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1115
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv182 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !485
  %i.v = or i8 %i.u, %i.q
  store i8 %i.v, ptr %i.t, align 1, !tbaa !485
  %i.w = trunc nuw nsw i64 %indvars.iv182 to i32  ; 4 uses
end_hunk_15
begin_hunk_16_@_ZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS8_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSK_b:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.dh = load ptr, ptr %i.ag, align 8, !tbaa !1112 ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i49, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48
  %i.di = load ptr, ptr %i.ak, align 8, !tbaa !1113
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dl) #30
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50: ; preds = %bb.aa, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48, %bb.l
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.l ], [ %lpad.loopexit.split-lp99, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48 ], [ %lpad.loopexit.split-lp99, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %6) #21
  br label %.body

.body:                                            ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50 ], [ %i.u, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn34.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS8_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSK_bENKUlSK_mE_clISP_EEDaSK_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !9124, !nonnull !528, !align !535
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1128
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %2 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !513
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, -1
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.u, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.x, i1 false
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.aa, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !9125, !nonnull !528, !align !535 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1129 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.ae to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ah, %i.ai
  %i.aj = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.aj, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  store ptr %1, ptr %i.ae, align 8, !tbaa !1115
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !1130
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1125
  switch i32 %i.am, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !9126, !nonnull !528
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !514, !range !512, !noundef !528
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !9127, !nonnull !528, !align !535
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !9128, !nonnull !528
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(88) %i.as, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.au, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !9129, !nonnull !528
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !9130, !nonnull !528, !align !535 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !9131, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !514
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9stealNodeIS6_EEPT_RKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(68) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext true) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1584 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %.not.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !558
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !1584
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !1583 ; 7 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #29 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store ptr %i.be, ptr %i.bw, align 8, !tbaa !558
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = add i64 %i.bl, -8
  %i.by = sub i64 %i.bx, %i.bm                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bv, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bk, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bk, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9132)
  call void @llvm.experimental.noalias.scope.decl(metadata !9133)
  %i.cf = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !558, !alias.scope !9133
  %wide.load13 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !558, !alias.scope !9133
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !558, !alias.scope !9132
  store <2 x i64> %wide.load13, ptr %i.cg, align 8, !tbaa !558, !alias.scope !9132
  %3 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !558, !alias.scope !9133
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !558, !alias.scope !9133
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !9121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9132)
  call void @llvm.experimental.noalias.scope.decl(metadata !9133)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !9133
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !9132
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !9133
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9122

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.co) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !1583
  store ptr %i.cl, ptr %i.bf, align 8, !tbaa !1584
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cp, ptr %i.bh, align 8, !tbaa !1585
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IfEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1523
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1524
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !485
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !524
  %i.g = load i32, ptr %0, align 8, !tbaa !523
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IfEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !1527
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IfEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !466
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1664
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.l = load i64, ptr %1, align 8, !tbaa !3362
  store i64 %i.l, ptr %i.k, align 16, !tbaa !3362
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !3389
  %i.n = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i32 0, ptr %i.q, align 8, !tbaa !1540
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 108
  store i8 5, ptr %i.r, align 4, !tbaa !1541
  %i.s = shl nsw i64 %i.p, 1
  %i.t = and i64 %i.s, 9223372036854775806
  store i64 %i.t, ptr %i.o, align 32, !tbaa !1542
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.v = load i64, ptr %3, align 8, !tbaa !1543
  store i64 %i.v, ptr %i.u, align 16, !tbaa !1543
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !1547
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !1548
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.x, align 8, !tbaa !1550
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.y, align 8, !tbaa !654
  store ptr %4, ptr %i.m, align 8, !tbaa !3389
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IfEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IfEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.aa = load atomic i8, ptr %i.z monotonic, align 1
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IfEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IfEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IfEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(120) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IfEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1553 ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = load i64, ptr %i.g, align 32, !tbaa !1542
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeINSC_4math4Vec3IfEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 32, !tbaa !1542
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1554
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeINSC_4math4Vec3IfEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3389
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeINSC_4math4Vec3IfEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit
end_hunk_16
begin_hunk_17_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeINSC_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINSC_4util8NodeMaskILj3EEESaISX_EEEUlRKSA_E_KNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.nm = phi i8 [ %i.nk, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeINS6_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISR_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit17 ], [ %i.jp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.nn = icmp eq i8 %i.nl, 0
  br i1 %i.nn, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split24
  %i.no = phi i8 [ %i.lg, %.noexc ], [ %i.bd, %thread-pre-split24 ]
  %i.np = phi i8 [ %i.le, %.noexc ], [ %i.nl, %thread-pre-split24 ]
  %i.nq = phi i8 [ %i.ke, %.noexc ], [ %i.nm, %thread-pre-split24 ]
  %i.nr = load ptr, ptr %3, align 8, !tbaa !1557  ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 15
  %i.nt = load atomic i8, ptr %i.ns monotonic, align 1
  %i.nu = icmp eq i8 %i.nt, -1
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8
  %.0.i.i = select i1 %i.nu, ptr %i.nw, ptr %i.nr
  %i.nx = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.nx, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %bb.f, !llvm.loop !9439

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23: ; preds = %thread-pre-split24, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeINS6_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISR_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeINS6_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISR_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerISG_EEEEDaSK_bENKUlSK_mE_clISC_EEDaSK_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9449, !nonnull !528, !align !535
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1128
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %2 ; 11 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !513
  %i.e = icmp eq i64 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, -1
  %or.cond.i = select i1 %i.e, i1 %i.h, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.k, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.n, i1 false
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.p, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.q, i1 false
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp eq i64 %i.s, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.t, i1 false
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %i.v, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.w, i1 false
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp eq i64 %i.y, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.z, i1 false
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !9450, !nonnull !528, !align !535 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1129 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = ptrtoaddr ptr %i.ad to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ag, %i.ah
  %i.ai = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ai, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.aj, ptr %i.ad, align 8, !tbaa !1115
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store ptr %i.ak, ptr %i.ab, align 8, !tbaa !1415
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1413
  switch i32 %i.am, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !9451, !nonnull !528
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !514, !range !512, !noundef !528
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !9452, !nonnull !528, !align !535
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !9453, !nonnull !528, !align !535
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS7_5CoordERKS9_b(ptr noundef nonnull align 8 dereferenceable(96) %i.as, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !9454, !nonnull !528
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !9455, !nonnull !528, !align !535 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !9456, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !9457
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1248) %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE9stealNodeIS8_EEPT_RKNS5_5CoordERKS7_b(ptr noundef nonnull align 8 dereferenceable(88) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext true) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !3490 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !3491
  %.not.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !1393
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !3490
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IdEELj3EEESt14default_deleteIS8_EESaISB_EE12emplace_backIJPS8_EEERSB_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !3489 ; 7 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IdEELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IdEELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #29 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store ptr %i.be, ptr %i.bw, align 8, !tbaa !1393
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IdEELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IdEELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = add i64 %i.bl, -8
  %i.by = sub i64 %i.bx, %i.bm                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bv, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bk, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bk, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9458)
  call void @llvm.experimental.noalias.scope.decl(metadata !9459)
  %i.cf = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !1393, !alias.scope !9459
  %wide.load13 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !1393, !alias.scope !9459
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1393, !alias.scope !9458
  store <2 x i64> %wide.load13, ptr %i.cg, align 8, !tbaa !1393, !alias.scope !9458
  %4 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !1393, !alias.scope !9459
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !1393, !alias.scope !9459
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !9446

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IdEELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9458)
  call void @llvm.experimental.noalias.scope.decl(metadata !9459)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1393, !alias.scope !9459
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !1393, !alias.scope !9458
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1393, !alias.scope !9459
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IdEELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9447

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IdEELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IdEELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IdEELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IdEELj3EEESt14default_deleteIS8_EESaISB_EE17_M_realloc_insertIJPS8_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IdEELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !3491
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.co) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IdEELj3EEESt14default_deleteIS8_EESaISB_EE17_M_realloc_insertIJPS8_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IdEELj3EEESt14default_deleteIS8_EESaISB_EE17_M_realloc_insertIJPS8_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IdEELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !3489
  store ptr %i.cl, ptr %i.bf, align 8, !tbaa !3490
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cp, ptr %i.bh, align 8, !tbaa !3491
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IdEELj3EEESt14default_deleteIS8_EESaISB_EE12emplace_backIJPS8_EEERSB_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IdEELj3EEESt14default_deleteIS8_EESaISB_EE12emplace_backIJPS8_EEERSB_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IdEELj3EEESt14default_deleteIS8_EESaISB_EE17_M_realloc_insertIJPS8_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IdEELj3EEESt14default_deleteIS8_EESaISB_EE12emplace_backIJPS8_EEERSB_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS7_5CoordERKS9_b(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %2, align 4, !tbaa !464    ; 2 uses
  %i.c = and i32 %i.b, -128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !464
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !464
  %i.i = and i32 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !464
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !464
  %i.o = and i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !464
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread

bb.c:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3447
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS8_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS4_5CoordERKS6_bRT_(ptr noundef nonnull align 8 dereferenceable(99344) %i.t, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSQ_SS_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread: ; preds = %bb.a, %bb.b, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit
  %i.u = and i32 %i.b, -4096
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !464
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit

bb.d:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !464
  %i.aa = and i32 %i.z, -4096
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !464
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm2EEEEbSO_.exit, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm2EEEEbSO_.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !464
  %i.ag = and i32 %i.af, -4096
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !464
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit

bb.e:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm2EEEEbSO_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !3487
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS9_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS4_5CoordERKS6_bRT_(ptr noundef nonnull align 8 dereferenceable(794640) %i.al, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSQ_SS_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread, %bb.d, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm2EEEEbSO_.exit
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !1409
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeISB_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS5_5CoordERKS7_bRT_(ptr noundef nonnull align 8 dereferenceable(88) %i.am, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSQ_SS_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSQ_SS_RT1_.exit: ; preds = %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 10 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = load ptr, ptr %0, align 8, !tbaa !1415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !tbaa.struct !1605
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = load i64, ptr %4, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !464  ; 2 uses
  %i.e = add nsw i32 %i.d, -8
  store i64 %i.b, ptr %5, align 8
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.e, ptr %.sroa.232.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.f = add nsw i32 %i.d, 8
  store i64 %i.b, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i46 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.035177 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.d ] ; 5 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.bt
  %i.k = add nuw nsw i32 %.035177, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond185.not = icmp eq i32 %i.k, 8
  br i1 %exitcond185.not, label %bb.b, label %bb.c, !llvm.loop !9460

bb.e:                                             ; preds = %bb.c, %bb.bt
  %indvars.iv182 = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next183, %bb.bt ] ; 6 uses
  %.034175 = phi i32 [ 0, %bb.c ], [ %i.sg, %bb.bt ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv182
  %i.m = load i8, ptr %i.l, align 1, !tbaa !485   ; 8 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.bt, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = lshr i8 %i.m, 1
  %i.o = shl i8 %i.m, 1
  %i.p = or i8 %i.o, %i.n
  %i.q = or i8 %i.p, %i.m                         ; 2 uses
  store i8 %i.q, ptr %i.g, align 8, !tbaa !3501
  store ptr %4, ptr %0, align 8, !tbaa !1415
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !1112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1115
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv182 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !485
  %i.v = or i8 %i.u, %i.q
  store i8 %i.v, ptr %i.t, align 1, !tbaa !485
  %i.w = trunc nuw nsw i64 %indvars.iv182 to i32  ; 4 uses
end_hunk_17
begin_hunk_18_@_ZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS8_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSK_b:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.dh = load ptr, ptr %i.ag, align 8, !tbaa !1112 ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i49, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48
  %i.di = load ptr, ptr %i.ak, align 8, !tbaa !1113
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dl) #30
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50: ; preds = %bb.aa, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48, %bb.l
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.l ], [ %lpad.loopexit.split-lp99, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48 ], [ %lpad.loopexit.split-lp99, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %6) #21
  br label %.body

.body:                                            ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50 ], [ %i.u, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn34.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS8_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSK_bENKUlSK_mE_clISP_EEDaSK_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !9542, !nonnull !528, !align !535
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1128
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %2 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !513
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, -1
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.u, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.x, i1 false
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.aa, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !9543, !nonnull !528, !align !535 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1129 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.ae to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ah, %i.ai
  %i.aj = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.aj, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  store ptr %1, ptr %i.ae, align 8, !tbaa !1115
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !1130
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1125
  switch i32 %i.am, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !9544, !nonnull !528
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !514, !range !512, !noundef !528
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !9545, !nonnull !528, !align !535
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !9546, !nonnull !528
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(88) %i.as, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.au, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !9547, !nonnull !528
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !9548, !nonnull !528, !align !535 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !9549, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !514
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9stealNodeIS6_EEPT_RKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(68) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext true) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1584 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %.not.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !558
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !1584
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !1583 ; 7 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #29 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store ptr %i.be, ptr %i.bw, align 8, !tbaa !558
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = add i64 %i.bl, -8
  %i.by = sub i64 %i.bx, %i.bm                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bv, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bk, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bk, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9550)
  call void @llvm.experimental.noalias.scope.decl(metadata !9551)
  %i.cf = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !558, !alias.scope !9551
  %wide.load13 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !558, !alias.scope !9551
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !558, !alias.scope !9550
  store <2 x i64> %wide.load13, ptr %i.cg, align 8, !tbaa !558, !alias.scope !9550
  %3 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !558, !alias.scope !9551
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !558, !alias.scope !9551
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !9539

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9550)
  call void @llvm.experimental.noalias.scope.decl(metadata !9551)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !9551
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !9550
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !9551
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9540

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.co) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !1583
  store ptr %i.cl, ptr %i.bf, align 8, !tbaa !1584
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cp, ptr %i.bh, align 8, !tbaa !1585
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IdEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1523
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1524
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !485
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !524
  %i.g = load i32, ptr %0, align 8, !tbaa !523
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IdEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !1527
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IdEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !466
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1664
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.l = load i64, ptr %1, align 8, !tbaa !3487
  store i64 %i.l, ptr %i.k, align 16, !tbaa !3487
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !3514
  %i.n = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i32 0, ptr %i.q, align 8, !tbaa !1540
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 108
  store i8 5, ptr %i.r, align 4, !tbaa !1541
  %i.s = shl nsw i64 %i.p, 1
  %i.t = and i64 %i.s, 9223372036854775806
  store i64 %i.t, ptr %i.o, align 32, !tbaa !1542
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.v = load i64, ptr %3, align 8, !tbaa !1543
  store i64 %i.v, ptr %i.u, align 16, !tbaa !1543
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !1547
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !1548
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.x, align 8, !tbaa !1550
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.y, align 8, !tbaa !654
  store ptr %4, ptr %i.m, align 8, !tbaa !3514
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IdEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IdEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.aa = load atomic i8, ptr %i.z monotonic, align 1
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IdEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IdEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IdEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(120) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IdEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1553 ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = load i64, ptr %i.g, align 32, !tbaa !1542
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeINSC_4math4Vec3IdEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 32, !tbaa !1542
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1554
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeINSC_4math4Vec3IdEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3514
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeINSC_4math4Vec3IdEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit
end_hunk_18
begin_hunk_19_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeINSC_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINSC_4util8NodeMaskILj3EEESaISX_EEEUlRKSA_E_KNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  br i1 %i.nn, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split24
  %i.no = phi i8 [ %i.lg, %.noexc ], [ %i.bd, %thread-pre-split24 ]
  %i.np = phi i8 [ %i.le, %.noexc ], [ %i.nl, %thread-pre-split24 ]
  %i.nq = phi i8 [ %i.ke, %.noexc ], [ %i.nm, %thread-pre-split24 ]
  %i.nr = load ptr, ptr %3, align 8, !tbaa !1557  ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 15
  %i.nt = load atomic i8, ptr %i.ns monotonic, align 1
  %i.nu = icmp eq i8 %i.nt, -1
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8
  %.0.i.i = select i1 %i.nu, ptr %i.nw, ptr %i.nr
  %i.nx = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.nx, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23, label %bb.f, !llvm.loop !9857

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23: ; preds = %thread-pre-split24, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeINS6_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISR_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZNK7openvdb5v13_05tools10morphology10MorphologyINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeINS6_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE9copyMasksERSt6vectorINS6_4util8NodeMaskILj3EEESaISR_EEEUlRKS4_E_KNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerISG_EEEEDaSK_bENKUlSK_mE_clISC_EEDaSK_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Vec3.281", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9865, !nonnull !528, !align !535
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1128
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %2 ; 11 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !513
  %i.e = icmp eq i64 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, -1
  %or.cond.i = select i1 %i.e, i1 %i.h, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.k, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.n, i1 false
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.p, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.q, i1 false
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp eq i64 %i.s, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.t, i1 false
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %i.v, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.w, i1 false
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp eq i64 %i.y, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.z, i1 false
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !9866, !nonnull !528, !align !535 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1129 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = ptrtoaddr ptr %i.ad to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ag, %i.ah
  %i.ai = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ai, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.aj, ptr %i.ad, align 8, !tbaa !1115
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store ptr %i.ak, ptr %i.ab, align 8, !tbaa !1447
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1445
  switch i32 %i.am, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !9867, !nonnull !528
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !514, !range !512, !noundef !528
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !9868, !nonnull !528, !align !535
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !9869, !nonnull !528, !align !2559
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS7_5CoordERKS9_b(ptr noundef nonnull align 8 dereferenceable(96) %i.as, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %i.au, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !9870, !nonnull !528
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !9871, !nonnull !528, !align !535 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !9872, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i64 0, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 8
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1240) %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9stealNodeIS8_EEPT_RKNS5_5CoordERKS7_b(ptr noundef nonnull align 8 dereferenceable(76) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %3, i1 noundef zeroext true) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !3615 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !3616
  %.not.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !1425
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !3615
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IiEELj3EEESt14default_deleteIS8_EESaISB_EE12emplace_backIJPS8_EEERSB_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !3614 ; 7 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IiEELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IiEELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #29 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store ptr %i.be, ptr %i.bw, align 8, !tbaa !1425
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IiEELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IiEELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = add i64 %i.bl, -8
  %i.by = sub i64 %i.bx, %i.bm                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bv, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bk, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bk, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9873)
  call void @llvm.experimental.noalias.scope.decl(metadata !9874)
  %i.cf = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !1425, !alias.scope !9874
  %wide.load13 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !1425, !alias.scope !9874
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1425, !alias.scope !9873
  store <2 x i64> %wide.load13, ptr %i.cg, align 8, !tbaa !1425, !alias.scope !9873
  %4 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !1425, !alias.scope !9874
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !1425, !alias.scope !9874
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !9862

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IiEELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9873)
  call void @llvm.experimental.noalias.scope.decl(metadata !9874)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1425, !alias.scope !9874
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !1425, !alias.scope !9873
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1425, !alias.scope !9874
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IiEELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9863

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IiEELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IiEELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IiEELj3EEESt14default_deleteIS8_EESaISB_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IiEELj3EEESt14default_deleteIS8_EESaISB_EE17_M_realloc_insertIJPS8_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IiEELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !3616
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.co) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IiEELj3EEESt14default_deleteIS8_EESaISB_EE17_M_realloc_insertIJPS8_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IiEELj3EEESt14default_deleteIS8_EESaISB_EE17_M_realloc_insertIJPS8_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IiEELj3EEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !3614
  store ptr %i.cl, ptr %i.bf, align 8, !tbaa !3615
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cp, ptr %i.bh, align 8, !tbaa !3616
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IiEELj3EEESt14default_deleteIS8_EESaISB_EE12emplace_backIJPS8_EEERSB_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IiEELj3EEESt14default_deleteIS8_EESaISB_EE12emplace_backIJPS8_EEERSB_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IiEELj3EEESt14default_deleteIS8_EESaISB_EE17_M_realloc_insertIJPS8_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_4math4Vec3IiEELj3EEESt14default_deleteIS8_EESaISB_EE12emplace_backIJPS8_EEERSB_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSC_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS7_5CoordERKS9_b(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, i1 noundef zeroext %4) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %2, align 4, !tbaa !464    ; 2 uses
  %i.c = and i32 %i.b, -128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !464
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !464
  %i.i = and i32 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !464
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !464
  %i.o = and i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !464
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread

bb.c:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3572
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS8_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS4_5CoordERKS6_bRT_(ptr noundef nonnull align 8 dereferenceable(66576) %i.t, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSQ_SS_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread: ; preds = %bb.a, %bb.b, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit
  %i.u = and i32 %i.b, -4096
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !464
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit

bb.d:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !464
  %i.aa = and i32 %i.z, -4096
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !464
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm2EEEEbSO_.exit, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm2EEEEbSO_.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !464
  %i.ag = and i32 %i.af, -4096
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !464
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit

bb.e:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm2EEEEbSO_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !3612
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS9_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS4_5CoordERKS6_bRT_(ptr noundef nonnull align 8 dereferenceable(532496) %i.al, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSQ_SS_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm1EEEEbSO_.exit.thread, %bb.d, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSH_7addTileEjRKNS7_5CoordERKS9_bEUlT_E_EEDaSL_OT0_ENKUlSO_E_clISt17integral_constantImLm2EEEEbSO_.exit
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !1441
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeISB_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS5_5CoordERKS7_bRT_(ptr noundef nonnull align 8 dereferenceable(76) %i.am, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSQ_SS_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm1ELm4EEEvSQ_SS_RT1_.exit: ; preds = %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSJ_7addTileEjRKNS9_5CoordERKSB_bEUlT_E_EEDaSN_OT0_EUlSQ_E_SR_St5tupleIJPSC_PSD_PSE_PSF_EELm3ELm4EEEvSQ_SS_RT1_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 10 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = load ptr, ptr %0, align 8, !tbaa !1447
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !tbaa.struct !1605
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = load i64, ptr %4, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !464  ; 2 uses
  %i.e = add nsw i32 %i.d, -8
  store i64 %i.b, ptr %5, align 8
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.e, ptr %.sroa.232.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.f = add nsw i32 %i.d, 8
  store i64 %i.b, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i46 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.035177 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.d ] ; 5 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.bt
  %i.k = add nuw nsw i32 %.035177, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond185.not = icmp eq i32 %i.k, 8
  br i1 %exitcond185.not, label %bb.b, label %bb.c, !llvm.loop !9875

bb.e:                                             ; preds = %bb.c, %bb.bt
  %indvars.iv182 = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next183, %bb.bt ] ; 6 uses
  %.034175 = phi i32 [ 0, %bb.c ], [ %i.sg, %bb.bt ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv182
  %i.m = load i8, ptr %i.l, align 1, !tbaa !485   ; 8 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.bt, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = lshr i8 %i.m, 1
  %i.o = shl i8 %i.m, 1
  %i.p = or i8 %i.o, %i.n
  %i.q = or i8 %i.p, %i.m                         ; 2 uses
  store i8 %i.q, ptr %i.g, align 8, !tbaa !3626
  store ptr %4, ptr %0, align 8, !tbaa !1447
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !1112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1115
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv182 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !485
  %i.v = or i8 %i.u, %i.q
  store i8 %i.v, ptr %i.t, align 1, !tbaa !485
  %i.w = trunc nuw nsw i64 %indvars.iv182 to i32  ; 4 uses
end_hunk_19
begin_hunk_20_@_ZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS8_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSK_b:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.dh = load ptr, ptr %i.ag, align 8, !tbaa !1112 ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i49, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48
  %i.di = load ptr, ptr %i.ak, align 8, !tbaa !1113
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dl) #30
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50: ; preds = %bb.aa, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48, %bb.l
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.l ], [ %lpad.loopexit.split-lp99, %_ZNSt6vectorIN7openvdb5v13_04util8NodeMaskILj3EEESaIS4_EED2Ev.exit48 ], [ %lpad.loopexit.split-lp99, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %6) #21
  br label %.body

.body:                                            ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOpD2Ev.exit50 ], [ %i.u, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn34.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNS1_16NearestNeighborsEbbENKUlRT_bE_clINS4_11LeafManagerINS5_INS6_INS7_INS7_INS8_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEDaSK_bENKUlSK_mE_clISP_EEDaSK_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !9951, !nonnull !528, !align !535
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1128
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %2 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !513
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, -1
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, -1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, -1
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, -1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, -1
  %or.cond17.i = select i1 %or.cond14.i, i1 %i.u, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, -1
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.x, i1 false
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, -1
  %or.cond23.i = select i1 %or.cond20.i, i1 %i.aa, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !9952, !nonnull !528, !align !535 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1129 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.ae to i64
  %reass.sub.i.i.i.i.i = sub i64 %i.ah, %i.ai
  %i.aj = and i64 %reass.sub.i.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.aj, i1 false), !tbaa !1115
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  store ptr %1, ptr %i.ae, align 8, !tbaa !1115
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !1130
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1125
  switch i32 %i.am, label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit [
    i32 18, label %bb.b
    i32 26, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate18ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp8dilate26ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i
  tail call void @_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp7dilate6ERKNS0_4util8NodeMaskILj3EEE(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit

_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit: ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp5clearEv.exit.i, %bb.b, %bb.c, %bb.d
  br i1 %or.cond23.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !9953, !nonnull !528
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !514, !range !512, !noundef !528
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !9954, !nonnull !528, !align !535
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !9955, !nonnull !528
  tail call void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(88) %i.as, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.au, i1 noundef zeroext true)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !9956, !nonnull !528
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !9957, !nonnull !528, !align !535 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !9958, !nonnull !528, !align !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !514
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = call noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9stealNodeIS6_EEPT_RKNS0_4math5CoordERKbb(ptr noundef nonnull align 8 dereferenceable(68) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext true) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1584 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %.not.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !558
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !1584
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !1583 ; 7 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #29 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store ptr %i.be, ptr %i.bw, align 8, !tbaa !558
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = add i64 %i.bl, -8
  %i.by = sub i64 %i.bx, %i.bm                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bv, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bk, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.bk, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9959)
  call void @llvm.experimental.noalias.scope.decl(metadata !9960)
  %i.cf = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !558, !alias.scope !9960
  %wide.load13 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !558, !alias.scope !9960
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !558, !alias.scope !9959
  store <2 x i64> %wide.load13, ptr %i.cg, align 8, !tbaa !558, !alias.scope !9959
  %3 = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !558, !alias.scope !9960
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !558, !alias.scope !9960
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !9948

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9959)
  call void @llvm.experimental.noalias.scope.decl(metadata !9960)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !9960
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !9959
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !558, !alias.scope !9960
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9949

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !1585
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.co) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !1583
  store ptr %i.cl, ptr %i.bf, align 8, !tbaa !1584
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cp, ptr %i.bh, align 8, !tbaa !1585
  br label %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE17_M_realloc_insertIJPS6_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS2_9ValueMaskELj3EEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit, %bb.g, %_ZN7openvdb5v13_05tools10morphology10MorphologyINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE10NodeMaskOp6dilateERSA_RKNS0_4util8NodeMaskILj3EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IiEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1523
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1524
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !485
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !524
  %i.g = load i32, ptr %0, align 8, !tbaa !523
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IiEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !1527
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IiEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !466
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1664
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.l = load i64, ptr %1, align 8, !tbaa !3612
  store i64 %i.l, ptr %i.k, align 16, !tbaa !3612
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !3639
  %i.n = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i32 0, ptr %i.q, align 8, !tbaa !1540
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 108
  store i8 5, ptr %i.r, align 4, !tbaa !1541
  %i.s = shl nsw i64 %i.p, 1
  %i.t = and i64 %i.s, 9223372036854775806
  store i64 %i.t, ptr %i.o, align 32, !tbaa !1542
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.v = load i64, ptr %3, align 8, !tbaa !1543
  store i64 %i.v, ptr %i.u, align 16, !tbaa !1543
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !1547
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !1548
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.x, align 8, !tbaa !1550
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.y, align 8, !tbaa !654
  store ptr %4, ptr %i.m, align 8, !tbaa !3639
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IiEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IiEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.aa = load atomic i8, ptr %i.z monotonic, align 1
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IiEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IiEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IiEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(120) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_4math4Vec3IiEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1553 ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = load i64, ptr %i.g, align 32, !tbaa !1542
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeINSC_4math4Vec3IiEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 32, !tbaa !1542
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1554
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeINSC_4math4Vec3IiEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3639
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeINSC_4math4Vec3IiEELj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit
end_hunk_20
