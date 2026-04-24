inline.NumInlined: 3767
inline.NumDeleted: 1292
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJSD_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_DpOT_:bb.a

bb.f:                                             ; preds = %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJSD_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.bd = phi ptr [ %i.af, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJSD_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_DpOT_ENKUlhE_clEh.exit ], [ %.pre13, %bb.e ], [ %i.v, %bb.b ] ; 5 uses
  %i.be = load i32, ptr %i.a, align 8, !tbaa !321 ; 3 uses
  %i.bf = trunc i32 %i.be to i8                   ; 2 uses
  %i.bg = and i32 %i.be, 255                      ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 10 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJSD_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_DpOT_:bb.a
  %i.by = zext i8 %i.bv to i32
  %i.bz = add nuw nsw i32 %i.bg, 1                ; 2 uses
  %i.ca = icmp samesign ult i32 %i.bz, %i.by
  br i1 %i.ca, label %.lr.ph.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJSD_EEEvhPSE_DpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %5 = getelementptr inbounds nuw i8, ptr %i.bd, i64 240 ; 10 uses
  %6 = zext i8 %i.bv to i64                       ; 4 uses
  %7 = zext nneg i32 %i.bz to i64
  %.mask = and i32 %i.be, 255
  %8 = zext nneg i32 %.mask to i64                ; 2 uses
  %9 = xor i64 %8, -1
  %10 = add nsw i64 %9, %6
  %11 = add nsw i64 %6, -2
  %12 = sub nsw i64 %11, %8
  %xtraiter22 = and i64 %10, 3                    ; 2 uses
  %lcmp.mod23.not = icmp eq i64 %xtraiter22, 0
  br i1 %lcmp.mod23.not, label %.prol.loopexit, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.lr.ph.i, %.lr.ph.i.a
  %indvars.iv.prol = phi i64 [ %13, %.lr.ph.i.a ], [ %6, %.lr.ph.i ] ; 3 uses
  %prol.iter24 = phi i64 [ %prol.iter24.next, %.lr.ph.i.a ], [ 0, %.lr.ph.i ]
  %13 = add nsw i64 %indvars.iv.prol, -1          ; 3 uses
  %14 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !95     ; 2 uses
  %16 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.prol
  store ptr %15, ptr %16, align 8, !tbaa !95
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %17, ptr %i.cb, align 1, !tbaa !13
  %prol.iter24.next = add i64 %prol.iter24, 1     ; 2 uses
  %prol.iter24.cmp.not = icmp eq i64 %prol.iter24.next, %xtraiter22
  br i1 %prol.iter24.cmp.not, label %.prol.loopexit, label %.lr.ph.i.a, !llvm.loop !530

.prol.loopexit:                                   ; preds = %.lr.ph.i.a, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %6, %.lr.ph.i ], [ %13, %.lr.ph.i.a ]
  %18 = icmp ult i64 %12, 3
  br i1 %18, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJSD_EEEvhPSE_DpOT_.exit, label %bb.h

bb.h:                                             ; preds = %.prol.loopexit, %bb.h
  %indvars.iv = phi i64 [ %33, %bb.h ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %19 = add nsw i64 %indvars.iv, -1               ; 3 uses
  %20 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !95     ; 2 uses
  %22 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  store ptr %21, ptr %22, align 8, !tbaa !95
  %23 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %24 = trunc nuw i64 %indvars.iv to i8
  store i8 %24, ptr %23, align 1, !tbaa !13
  %25 = add nsw i64 %indvars.iv, -2               ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %25
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !95 ; 2 uses
  %26 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %19
  store ptr %i.cd, ptr %26, align 8, !tbaa !95
  %27 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %28 = trunc nuw i64 %19 to i8
  store i8 %28, ptr %27, align 1, !tbaa !13
  %29 = add nsw i64 %indvars.iv, -3               ; 3 uses
  %30 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !95     ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %25
  store ptr %31, ptr %i.ce, align 8, !tbaa !95
  %i.cf = getelementptr inbounds nuw i8, ptr %31, i64 8
  %32 = trunc nuw i64 %25 to i8
  store i8 %32, ptr %i.cf, align 1, !tbaa !13
  %33 = add nsw i64 %indvars.iv, -4               ; 3 uses
  %34 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !95     ; 2 uses
  %36 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %29
  store ptr %35, ptr %36, align 8, !tbaa !95
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %38 = trunc nuw i64 %29 to i8
  store i8 %38, ptr %37, align 1, !tbaa !13
  %.wide.3 = icmp ugt i64 %33, %7
  br i1 %.wide.3, label %bb.h, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJSD_EEEvhPSE_DpOT_.exit, !llvm.loop !531

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJSD_EEEvhPSE_DpOT_.exit: ; preds = %.prol.loopexit, %bb.h, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !100
  %i.ci = add i64 %i.ch, 1
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_right_to_leftEhPSG_PSE_:bb.a
  store ptr %0, ptr %i.bh, align 8, !tbaa !95
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !532

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.bs, %bb.c ] ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_right_to_leftEhPSG_PSE_:bb.a
  %i.bv = zext i8 %i.bu to i32
  %i.bw = sub nsw i32 %i.bv, %i.l
  %.not = icmp slt i32 %i.bw, %i.bt
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !533

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit51
  %i.bx = load i8, ptr %i.a, align 1, !tbaa !13
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_left_to_rightEhPSG_PSE_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.m, ptr noundef nonnull align 1 dereferenceable(32) %i.n, i64 32, i1 false)
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !534

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.017.i.unr = phi ptr [ %i.h, %.lr.ph.preheader.i ], [ %i.m, %.lr.ph.i.prol ]
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_left_to_rightEhPSG_PSE_:bb.a
  %i.w = getelementptr inbounds i8, ptr %.01416.i, i64 -128 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.v, ptr noundef nonnull align 1 dereferenceable(32) %i.w, i64 32, i1 false)
  %.not.i.3 = icmp eq ptr %i.w, %i.d
  br i1 %.not.i.3, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit, label %.lr.ph.i, !llvm.loop !535

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %i.x = add nsw i32 %i.c, -1                     ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_left_to_rightEhPSG_PSE_:bb.a
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ck = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.ck, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !536

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_left_to_rightEhPSG_PSE_:bb.a
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !537

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5splitEiPSG_PSE_:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %.015.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !538

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.015.i.unr = phi ptr [ %i.r, %.lr.ph.preheader.i ], [ %i.w, %.lr.ph.i.prol ]
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5splitEiPSG_PSE_:bb.a
  store i8 %i.ah, ptr %i.h, align 1, !tbaa !13
  %i.ai = load ptr, ptr %0, align 8, !tbaa !95    ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !13  ; 5 uses
  %i.al = zext i8 %i.ah to i64
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.al
  %i.an = zext i8 %i.ak to i32
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5splitEiPSG_PSE_:bb.a
  %i.bc = zext i8 %i.az to i32
  %i.bd = add nuw nsw i32 %i.an, 1                ; 2 uses
  %i.be = icmp samesign ult i32 %i.bd, %i.bc
  br i1 %i.be, label %.lr.ph.i27, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit

.lr.ph.i27:                                       ; preds = %bb.e
  %4 = getelementptr inbounds nuw i8, ptr %i.ai, i64 240 ; 10 uses
  %5 = zext i8 %i.az to i64                       ; 4 uses
  %6 = zext nneg i32 %i.bd to i64
  %7 = zext i8 %i.ak to i64                       ; 2 uses
  %8 = xor i64 %7, -1
  %9 = add nsw i64 %8, %5
  %10 = add nsw i64 %5, -2
  %11 = sub nsw i64 %10, %7
  %xtraiter36 = and i64 %9, 3                     ; 2 uses
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.prol.loopexit, label %.lr.ph.i27.a

.lr.ph.i27.a:                                     ; preds = %.lr.ph.i27, %.lr.ph.i27.a
  %indvars.iv.prol = phi i64 [ %12, %.lr.ph.i27.a ], [ %5, %.lr.ph.i27 ] ; 3 uses
  %prol.iter38 = phi i64 [ %prol.iter38.next, %.lr.ph.i27.a ], [ 0, %.lr.ph.i27 ]
  %12 = add nsw i64 %indvars.iv.prol, -1          ; 3 uses
  %13 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !95     ; 2 uses
  %15 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.prol
  store ptr %14, ptr %15, align 8, !tbaa !95
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %16 = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %16, ptr %i.bf, align 1, !tbaa !13
  %prol.iter38.next = add i64 %prol.iter38, 1     ; 2 uses
  %prol.iter38.cmp.not = icmp eq i64 %prol.iter38.next, %xtraiter36
  br i1 %prol.iter38.cmp.not, label %.prol.loopexit, label %.lr.ph.i27.a, !llvm.loop !539

.prol.loopexit:                                   ; preds = %.lr.ph.i27.a, %.lr.ph.i27
  %indvars.iv.unr = phi i64 [ %5, %.lr.ph.i27 ], [ %12, %.lr.ph.i27.a ]
  %17 = icmp ult i64 %11, 3
  br i1 %17, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %.prol.loopexit, %bb.f
  %indvars.iv = phi i64 [ %32, %bb.f ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %18 = add nsw i64 %indvars.iv, -1               ; 3 uses
  %19 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !95     ; 2 uses
  %21 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store ptr %20, ptr %21, align 8, !tbaa !95
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %23 = trunc nuw i64 %indvars.iv to i8
  store i8 %23, ptr %22, align 1, !tbaa !13
  %24 = add nsw i64 %indvars.iv, -2               ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %25 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %18
  store ptr %i.bh, ptr %25, align 8, !tbaa !95
  %26 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %27 = trunc nuw i64 %18 to i8
  store i8 %27, ptr %26, align 1, !tbaa !13
  %28 = add nsw i64 %indvars.iv, -3               ; 3 uses
  %29 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !95     ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %24
  store ptr %30, ptr %i.bi, align 8, !tbaa !95
  %i.bj = getelementptr inbounds nuw i8, ptr %30, i64 8
  %31 = trunc nuw i64 %24 to i8
  store i8 %31, ptr %i.bj, align 1, !tbaa !13
  %32 = add nsw i64 %indvars.iv, -4               ; 3 uses
  %33 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !95     ; 2 uses
  %35 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %28
  store ptr %34, ptr %35, align 8, !tbaa !95
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %37 = trunc nuw i64 %28 to i8
  store i8 %37, ptr %36, align 1, !tbaa !13
  %.wide.3 = icmp ugt i64 %32, %6
  br i1 %.wide.3, label %bb.f, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit, !llvm.loop !540

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit: ; preds = %.prol.loopexit, %bb.f, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i, %bb.e
  %i.bk = load ptr, ptr %0, align 8, !tbaa !95
  %i.bl = load i8, ptr %i.aj, align 8, !tbaa !13
  %i.bm = add i8 %i.bl, 1
end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5splitEiPSG_PSE_:bb.a
  %i.cb = add i8 %.02529, 1                       ; 2 uses
  %i.cc = load i8, ptr %i.j, align 1, !tbaa !13
  %.not = icmp ugt i8 %i.cb, %i.cc
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !541

.loopexit:                                        ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit
  ret void
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18insert_hint_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbESN_RKT_DpOT0_:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %.01621.i.i.i.i, i64 8
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13  ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i10.i, label %.critedge.i.i.i11.i, !llvm.loop !542

.thread.i.i13.i:                                  ; preds = %.preheader.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 240
end_hunk_12
begin_hunk_13_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18insert_hint_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbESN_RKT_DpOT0_:bb.a
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_.exit

.thread:                                          ; preds = %bb.a
  %i.cj = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #39, !noalias !543 ; 5 uses
  store ptr %i.cj, ptr %i.cj, align 8, !tbaa !95, !noalias !543
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.ck, align 8, !tbaa !13, !noalias !543
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !95, !noalias !543
  store ptr %i.cj, ptr %1, align 8, !tbaa !95, !noalias !543
  %.pre = load i32, ptr %4, align 4, !noalias !543
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit.i, %.thread
end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18insert_hint_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbESN_RKT_DpOT0_:bb.a

bb.m:                                             ; preds = %bb.o, %bb.l
  %.sroa.0.0.in.i.i = phi ptr [ %1, %bb.l ], [ %i.cz, %bb.o ]
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !95, !noalias !543 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13, !noalias !543 ; 2 uses
  %i.cp = zext i8 %i.co to i64                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %.not.i.i.i.i55 = icmp eq i8 %i.co, 0
end_hunk_14
begin_hunk_15_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18insert_hint_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbESN_RKT_DpOT0_:bb.a
.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %bb.n
  %.07.i.i.i.i.i = phi i64 [ %i.cu, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %.07.i.i.i.i.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3, !noalias !543
  %i.ct = icmp slt i32 %i.cs, %i.cm
  br i1 %i.ct, label %bb.n, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i

end_hunk_15
begin_hunk_16_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18insert_hint_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbESN_RKT_DpOT0_:bb.a
_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i.i, %bb.m
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.m ], [ %i.cp, %bb.n ], [ %.07.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 11
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !13, !noalias !543
  %.not.i.i56 = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i56, label %bb.o, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i

end_hunk_16
begin_hunk_17_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18insert_hint_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbESN_RKT_DpOT0_:bb.a
  %.sroa.7.0.i.i = phi i32 [ %i.da, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i ], [ %i.dh, %bb.q ] ; 3 uses
  %.sroa.0.0.i16.i = phi ptr [ %.sroa.0.0.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i ], [ %i.di, %bb.q ] ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 10
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !13, !noalias !543
  %i.dd = zext i8 %i.dc to i32
  %i.de = icmp eq i32 %.sroa.7.0.i.i, %i.dd
  br i1 %i.de, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 8
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !13, !noalias !543
  %i.dh = zext i8 %i.dg to i32
  %i.di = load ptr, ptr %.sroa.0.0.i16.i, align 8, !tbaa !95, !noalias !543 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 11
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !13, !noalias !543
  %.not.i19.i = icmp eq i8 %i.dk, 0
  br i1 %.not.i19.i, label %bb.p, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEEET_SO_.exit.thread.i, !llvm.loop !355

end_hunk_17
begin_hunk_18_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18insert_hint_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbESN_RKT_DpOT0_:bb.a
  %i.dl = sext i32 %.sroa.7.0.i.i to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 16
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %i.dl
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3, !noalias !543
  %i.dp = icmp slt i32 %i.cm, %i.do
  br i1 %i.dp, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEEET_SO_.exit.thread.i, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEEET_SO_.exit.thread.i: ; preds = %bb.q, %bb.r
  %i.dq = tail call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJSD_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %.sroa.0.0.i.i, i32 %i.da, ptr noundef nonnull align 8 dereferenceable(32) %5), !noalias !543 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.dq, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.dq, 1
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_.exit
end_hunk_18
begin_hunk_19_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18insert_hint_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbESN_RKT_DpOT0_:bb.a
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7.0.i.lcssa.sink.i.sink, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i.sink, ptr %i.dr, align 8, !tbaa !546
  ret void
}

end_hunk_19
begin_hunk_20_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11erase_rangeENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESM_:bb.a
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16clear_and_deleteEPSG_PSE_(ptr noundef %i.ap, ptr noundef nonnull %i.o)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !548

bb.f:                                             ; preds = %bb.f, %.lr.ph37.i
  %.035.i = phi i8 [ %.033.i, %.lr.ph37.i ], [ %.0.i, %bb.f ] ; 3 uses
end_hunk_20
begin_hunk_21_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11erase_rangeENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESM_:bb.a
  store i8 %i.aq, ptr %i.aw, align 1, !tbaa !13
  %.0.i = add i8 %.035.i, 1                       ; 2 uses
  %.not.i = icmp ugt i8 %.0.i, %i.q
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit, label %bb.f, !llvm.loop !549

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit: ; preds = %bb.f, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i, %._crit_edge.i
  %i.ax = sub i8 %i.q, %i.n
end_hunk_21
begin_hunk_22_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11erase_rangeENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESM_:bb.a
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16clear_and_deleteEPSG_PSE_(ptr noundef %i.ck, ptr noundef nonnull %i.bc)
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i47, 1 ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %indvars.iv.next.i48, %wide.trip.count.i46
  br i1 %exitcond.not.i49, label %._crit_edge.i50, label %bb.j, !llvm.loop !548

bb.k:                                             ; preds = %bb.k, %.lr.ph37.i53
  %.035.i54 = phi i8 [ %.033.i51, %.lr.ph37.i53 ], [ %.0.i55, %bb.k ] ; 3 uses
end_hunk_22
begin_hunk_23_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11erase_rangeENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESM_:bb.a
  store i8 %i.cl, ptr %i.cr, align 1, !tbaa !13
  %.0.i55 = add i8 %.035.i54, 1                   ; 2 uses
  %.not.i56 = icmp ugt i8 %.0.i55, %i.bi
  br i1 %.not.i56, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit57, label %bb.k, !llvm.loop !549

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit57: ; preds = %bb.k, %bb.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i41, %._crit_edge.i50
  %i.cs = sub i8 %i.bi, %i.bm
end_hunk_23
begin_hunk_24_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11erase_rangeENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESM_:bb.a
  %.sroa.070.1 = extractvalue { ptr, i32 } %.pn, 0 ; 2 uses
  %i.cy = load i64, ptr %i.d, align 8, !tbaa !100 ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, %i.bb
  br i1 %i.cz, label %bb.h, label %._crit_edge, !llvm.loop !550

._crit_edge:                                      ; preds = %bb.m, %bb.g, %bb.a, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5clearEv.exit
  %.sink = phi i64 [ 0, %bb.a ], [ %i.b, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit ], [ %i.b, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5clearEv.exit ], [ %i.b, %bb.g ], [ %i.b, %bb.m ]
end_hunk_24
begin_hunk_25_@_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmiENS2_IKSH_RKSE_PSM_EE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 11
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %.not.i62.i = icmp eq i8 %i.x, 0
  br i1 %.not.i62.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !551

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f, %bb.e
  %.044108.i = phi i64 [ 1, %bb.f ], [ %i.m, %bb.e ], [ 1, %.lr.ph.i ]
end_hunk_25
begin_hunk_26_@_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmiENS2_IKSH_RKSE_PSM_EE:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 11
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13
  %.not.i64.i = icmp eq i8 %i.al, 0
  br i1 %.not.i64.i, label %.lr.ph87.i, label %._crit_edge88.i, !llvm.loop !552

._crit_edge88.i:                                  ; preds = %.lr.ph87.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
end_hunk_26
begin_hunk_27_@_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmiENS2_IKSH_RKSE_PSM_EE:bb.a
  %.142.i.be.in = phi i64 [ %.243.i, %bb.j ], [ %i.bd, %bb.k ]
  %.1.i.be = phi ptr [ %.2.i, %bb.j ], [ %i.be, %bb.k ]
  %.142.i.be = add nuw nsw i64 %.142.i.be.in, 1
  br label %bb.g, !llvm.loop !553

.preheader69.i:                                   ; preds = %bb.j, %bb.k
  %.3.i = phi ptr [ %i.be, %bb.k ], [ %.2.i, %bb.j ] ; 2 uses
end_hunk_27
begin_hunk_28_@_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmiENS2_IKSH_RKSE_PSM_EE:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13
  %.not.i = icmp ult i8 %i.bc, %i.bi
  br i1 %.not.i, label %.backedge, label %.preheader69.i, !llvm.loop !554

_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_E13distance_slowENS2_IKSH_RKSE_PSM_EE.exit: ; preds = %bb.h, %bb.i, %.preheader69.i
  %.pn.i = phi i64 [ %i.av, %.preheader69.i ], [ %i.ac, %bb.h ], [ %i.av, %bb.i ]
end_hunk_28
begin_hunk_29_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE:bb.a
  store ptr %i.ao, ptr %3, align 8, !tbaa !317
  %i.ap = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %._crit_edge, label %.lr.ph, !llvm.loop !555

.thread:                                          ; preds = %bb.i, %.lr.ph, %.lr.ph.preheader, %bb.b, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10try_shrinkEv.exit
  %.sroa.9.2 = phi i32 [ %.sroa.9.0.lcssa, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10try_shrinkEv.exit ], [ %2, %.lr.ph.preheader ], [ %.sroa.9.0.copyload9.peel, %bb.b ], [ %.sroa.9.0.copyload9.peel, %.lr.ph ], [ %.sroa.9.0.copyload9.peel, %bb.i ] ; 3 uses
end_hunk_29
begin_hunk_30_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %.015.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !557

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.015.i.unr = phi ptr [ %i.ak, %.lr.ph.preheader.i ], [ %i.ap, %.lr.ph.i.prol ]
end_hunk_30
begin_hunk_31_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5mergeEPSG_PSE_:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.01214.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !558

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.015.i.pn.unr = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %.015.i.prol, %.lr.ph.i.prol ]
end_hunk_31
begin_hunk_32_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5mergeEPSG_PSE_:bb.a
  %i.aj = add i8 %.01923, 1                       ; 2 uses
  %i.ak = load i8, ptr %i.l, align 1, !tbaa !13   ; 2 uses
  %.not = icmp ugt i8 %i.aj, %i.ak
  br i1 %.not, label %.loopexit.loopexit, label %bb.c, !llvm.loop !559

.loopexit.loopexit:                               ; preds = %bb.c
  %.pre = load i8, ptr %i.a, align 1, !tbaa !13
end_hunk_32
begin_hunk_33_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5mergeEPSG_PSE_:bb.a
  store i8 %i.bp, ptr %i.bv, align 1, !tbaa !13
  %.0.i = add i8 %.035.i, 1                       ; 2 uses
  %.not.i22 = icmp ugt i8 %.0.i, %i.as
  br i1 %.not.i22, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit, label %.lr.ph37.i, !llvm.loop !549

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit: ; preds = %.lr.ph37.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i, %.preheader.i
  %i.bw = add i8 %i.as, -1
end_hunk_33
begin_hunk_34_@"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_SO_T0_T1_":bb.a
  %.not3.i = select i1 %i.am, i1 true, i1 %i.an
  %i.ao = icmp samesign ult i32 %.0116, 15
  %i.ap = select i1 %.not3.i, i1 %i.ao, i1 false
  br i1 %i.ap, label %.lr.ph, label %.preheader103, !llvm.loop !560

.preheader:                                       ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit39, %.preheader103
  %.sroa.082.0.lcssa = phi ptr [ %0, %.preheader103 ], [ %.sroa.082.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit39 ] ; 2 uses
end_hunk_34
begin_hunk_35_@"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_SO_T0_T1_":bb.a
  %..i.i = select i1 %.not7.i.i, i64 24, i64 104
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %..i.i
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef i64 %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq), !inline_history !561 ; 2 uses
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = or i32 %i.bv, 1
  %i.bx = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true)
end_hunk_35
begin_hunk_36_@"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_SO_T0_T1_":bb.a
  %i.em = icmp ne ptr %.sroa.0.3, %2
  %i.en = icmp ne i32 %.sroa.11.3, %3
  %.not3.i5 = select i1 %i.em, i1 true, i1 %i.en
  br i1 %.not3.i5, label %bb.e, label %.preheader, !llvm.loop !562

bb.o:                                             ; preds = %.lr.ph129, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit66
  %.sroa.1189.1128 = phi i32 [ %.sroa.1189.0.lcssa, %.lr.ph129 ], [ %.sroa.1189.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit66 ] ; 3 uses
end_hunk_36
begin_hunk_37_@"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_SO_T0_T1_":bb.a
  %..i.i49 = select i1 %.not7.i.i48, i64 24, i64 104
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %..i.i49
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = tail call noundef i64 %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %i.fl), !inline_history !561 ; 2 uses
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = or i32 %i.fq, 1
  %i.fs = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fr, i1 true)
end_hunk_37
begin_hunk_38_@"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_SO_T0_T1_":bb.a
  %i.hb = icmp ne ptr %.sroa.082.3, %2
  %i.hc = icmp ne i32 %.sroa.1189.3, %3
  %.not3.i43 = select i1 %i.hb, i1 true, i1 %i.hc
  br i1 %.not3.i43, label %bb.o, label %._crit_edge, !llvm.loop !563

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit66, %.preheader
  ret void
end_hunk_38
begin_hunk_39_@llvm.vector.reduce.add.v4i32
!527 = distinct !{!527, !37}
!528 = !{!529, !4, i64 0}
!529 = !{!"_ZTSSt4pairIiN6google8protobuf8internal12ExtensionSet9ExtensionEE", !4, i64 0, !102, i64 8}
!530 = distinct !{!530, !521}
!531 = distinct !{!531, !37}
!532 = distinct !{!532, !37}
!533 = distinct !{!533, !37}
!534 = distinct !{!534, !521}
!535 = distinct !{!535, !37}
!536 = distinct !{!536, !37}
!537 = distinct !{!537, !37}
!538 = distinct !{!538, !521}
!539 = distinct !{!539, !521}
!540 = distinct !{!540, !37}
!541 = distinct !{!541, !37}
!542 = distinct !{!542, !37}
!543 = !{!544}
!544 = distinct !{!544, !545, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_: argument 0"}
!545 = distinct !{!545, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_"}
!546 = !{!547, !15, i64 16}
!547 = !{!"_ZTSSt4pairIN4absl12lts_2025051218container_internal14btree_iteratorINS2_10btree_nodeINS2_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaIS_IKiSA_EELi256ELb0EEEEERSE_PSE_EEbE", !318, i64 0, !15, i64 16}
!548 = distinct !{!548, !37}
!549 = distinct !{!549, !37}
!550 = distinct !{!550, !37}
!551 = distinct !{!551, !37}
!552 = distinct !{!552, !37}
!553 = distinct !{!553, !37}
!554 = distinct !{!554, !37}
!555 = distinct !{!555, !556}
!556 = !{!"llvm.loop.peeled.count", i32 1}
!557 = distinct !{!557, !521}
!558 = distinct !{!558, !521}
!559 = distinct !{!559, !37}
!560 = distinct !{!560, !37}
!561 = distinct !{null, ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension22MessageSetItemByteSizeEi}
!562 = distinct !{!562, !37}
!563 = distinct !{!563, !37}
end_hunk_39
