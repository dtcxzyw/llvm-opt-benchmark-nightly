inline.NumInlined: 3767
inline.NumDeleted: 1290
begin_hunk_0_@_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE
define linkonce_odr hidden noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #33 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %3, null
  %i.a = load i32, ptr %0, align 8, !tbaa !459    ; 6 uses
  %i.b = zext i32 %i.a to i64                     ; 13 uses
  br i1 %.not, label %.split8, label %.split

.split:                                           ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE:bb.a
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %.split8
  %i.bj = icmp eq i8 %i.be, 0
  %i.bk = icmp ult i32 %i.a, 33                   ; 2 uses
  br i1 %i.bj, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  br label %bb.w

bb.q:                                             ; preds = %bb.o
  %i.bn = icmp ult i32 %i.a, 65
  br i1 %i.bn, label %bb.r, label %.preheader.i14

.preheader.i14:                                   ; preds = %bb.q
  %i.bo = icmp ugt i32 %i.a, 80
  br i1 %i.bo, label %.lr.ph64.i16, label %._crit_edge65.i15

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.br, i8 0, i64 32, i1 false)
  br label %bb.w

._crit_edge65.i15:                                ; preds = %.lr.ph64.i16, %.preheader.i14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bt, i8 0, i64 64, i1 false)
  br label %bb.w
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE:bb.a
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.bw) #35, !srcloc !462
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bv, i8 0, i64 64, i1 false)
  %i.bx = add nuw nsw i64 %i.bu, 64               ; 2 uses
  %i.by = icmp samesign ult i64 %i.bx, %i.b
  br i1 %i.by, label %.lr.ph64.i16, label %._crit_edge65.i15, !llvm.loop !463

bb.s:                                             ; preds = %bb.n
  br i1 %i.bk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -16
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ca, ptr noundef nonnull align 1 dereferenceable(16) %i.cc, i64 16, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cd = icmp ult i32 %i.a, 65
  br i1 %i.cd, label %bb.v, label %.preheader61.i9

.preheader61.i9:                                  ; preds = %bb.u
  %i.ce = icmp ugt i32 %i.a, 80
  br i1 %i.ce, label %.lr.ph.i12, label %._crit_edge.i10

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cf, ptr noundef nonnull align 1 dereferenceable(16) %i.cg, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -32
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ci, ptr noundef nonnull align 1 dereferenceable(32) %i.ck, i64 32, i1 false)
  br label %bb.w

._crit_edge.i10:                                  ; preds = %.lr.ph.i12, %.preheader61.i9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -64
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cm, ptr noundef nonnull align 1 dereferenceable(64) %i.co, i64 64, i1 false)
  br label %bb.w
end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE:bb.a
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ct) #35, !srcloc !462
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cs, ptr noundef nonnull align 1 dereferenceable(64) %i.cq, i64 64, i1 false)
  %i.cu = add nuw nsw i64 %i.cp, 64               ; 2 uses
  %i.cv = icmp samesign ult i64 %i.cu, %i.b
  br i1 %i.cv, label %.lr.ph.i12, label %._crit_edge.i10, !llvm.loop !464

bb.w:                                             ; preds = %._crit_edge.i10, %bb.v, %bb.t, %._crit_edge65.i15, %bb.r, %bb.p
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE:bb.a
bb.a:
  %2 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !95     ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !89
  %.not = icmp eq ptr %i.b, %i.d
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE:bb.a
  %i.bo = tail call noalias noundef nonnull dereferenceable(304) ptr @_Znwm(i64 noundef 304) #38 ; 6 uses
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !95
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %i.bo, i64 240
  store i32 0, ptr %i.bp, align 8
  store ptr %i.b, ptr %3, align 8, !tbaa !95
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 0, ptr %i.bq, align 1, !tbaa !13
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !95
  store ptr %i.bo, ptr %0, align 8, !tbaa !95
  %.pre = load ptr, ptr %1, align 8, !tbaa !95
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.br = phi ptr [ %i.bm, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 4 uses
  %.082 = phi ptr [ %i.bn, %bb.m ], [ %i.c, %bb.l ], [ %i.bo, %bb.n ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 11
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE:bb.a
  store i8 0, ptr %i.cb, align 2, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 11
  store i8 7, ptr %i.cc, align 1, !tbaa !13
  %i.cd = load i32, ptr %i.a, align 4, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5splitEiPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %i.br, i32 noundef %i.cd, ptr noundef nonnull %i.by, ptr noundef nonnull %i.bx)
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !95
  %i.cf = load ptr, ptr %1, align 8, !tbaa !95
  %i.cg = icmp eq ptr %i.ce, %i.cf
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE:bb.a
  store i8 0, ptr %i.ck, align 2, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 11
  store i8 0, ptr %i.cl, align 1, !tbaa !13
  %i.cm = load i32, ptr %i.a, align 4, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5splitEiPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %i.br, i32 noundef %i.cm, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.bx)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
end_hunk_7
