inline.NumInlined: 3113
inline.NumDeleted: 1058
begin_hunk_0_@_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_:bb.a
  store ptr %i.s, ptr %4, align 8, !tbaa !211
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.y = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %i.y, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i, label %bb.c

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i
  %.phi.trans.insert10.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.pre11.i = load i32, ptr %.phi.trans.insert10.i, align 4, !tbaa !3
  br label %_ZZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS_8ArrayRefINS0_6UpdateIT_EEEERNS_15SmallVectorImplIS8_EEbENKUlRKNS6_IS4_EESF_E_clESF_SF_.exit

bb.c:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i
  %i.aa = call noundef ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.z) ; 3 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !32
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !211
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !214
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i32 0, ptr %i.ae, align 8, !tbaa !3
  br label %_ZZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS_8ArrayRefINS0_6UpdateIT_EEEERNS_15SmallVectorImplIS8_EEbENKUlRKNS6_IS4_EESF_E_clESF_SF_.exit

_ZZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS_8ArrayRefINS0_6UpdateIT_EEEERNS_15SmallVectorImplIS8_EEbENKUlRKNS6_IS4_EESF_E_clESF_SF_.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i, %bb.c
  %i.af = phi i32 [ 0, %bb.c ], [ %.pre11.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i ]
  %i.ag = icmp sgt i32 %i.q, %i.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i1 %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_SN_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr %3, i64 %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"class.llvh::cfg::Update", align 8 ; 6 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 3 uses
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8 ; 4 uses
  store ptr %5, ptr %7, align 8
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.030 = phi i64 [ %spec.select, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.030, 1                         ; 3 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr [16 x i8], ptr %0, i64 %i.d
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.f, ptr noundef %i.h)
  %i.j = or disjoint i64 %i.d, 1
  %spec.select = select i1 %i.i, i64 %i.j, i64 %i.e ; 4 uses
  %i.k = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select
  %i.l = getelementptr inbounds [16 x i8], ptr %0, i64 %.030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !238
  %i.m = icmp slt i64 %spec.select, %i.b
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !244

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %.lr.ph ] ; 5 uses
  %i.n = and i64 %2, 1
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.p = add nsw i64 %2, -2
  %i.q = ashr exact i64 %i.p, 1
  %i.r = icmp eq i64 %.0.lcssa, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = shl nsw i64 %.0.lcssa, 1
  %i.t = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !238
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.t, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.w = load i64, ptr %7, align 8, !tbaa !245
  store i64 %i.w, ptr %8, align 8, !tbaa !245
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %4, ptr %i.x, align 8
  %i.y = icmp sgt i64 %.1, %1
  br i1 %i.y, label %.lr.ph.i, label %_ZSt11__push_heapIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEElS6_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_SN_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.01316.i = phi i64 [ %.017.i, %bb.e ], [ %.1, %bb.d ] ; 3 uses
  %.017.in.i = add nsw i64 %.01316.i, -1
  %.017.i = sdiv i64 %.017.in.i, 2                ; 4 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %.017.i ; 2 uses
  %i.aa = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SG_EEbSA_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.z, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %i.aa, label %bb.e, label %_ZSt11__push_heapIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEElS6_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_SN_T1_RT2_.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %.01316.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !238
  %i.ac = icmp sgt i64 %.017.i, %1
  br i1 %i.ac, label %.lr.ph.i, label %_ZSt11__push_heapIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEElS6_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_SN_T1_RT2_.exit, !llvm.loop !246

_ZSt11__push_heapIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEElS6_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_SN_T1_RT2_.exit: ; preds = %.lr.ph.i, %bb.e, %bb.d
  %.013.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.01316.i, %.lr.ph.i ], [ %.017.i, %bb.e ]
  %i.ad = getelementptr inbounds [16 x i8], ptr %0, i64 %.013.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SG_EEbSA_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.std::pair.81", align 8     ; 8 uses
  %4 = alloca %"struct.std::pair.81", align 8     ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !240, !nonnull !29, !align !243 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.d = load ptr, ptr %1, align 8, !tbaa !173
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !177
  %i.g = and i64 %i.f, -8
  %i.h = inttoptr i64 %i.g to ptr
  store ptr %i.d, ptr %3, align 8, !tbaa !211
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.j = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !215  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br i1 %i.j, label %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i, label %bb.b

._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.l = call noundef ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.k) ; 3 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !32
  store ptr %i.m, ptr %i.l, align 8, !tbaa !211
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !214
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i: ; preds = %bb.b, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i
  %i.q = phi i32 [ 0, %bb.b ], [ %.pre.i, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !240, !nonnull !29, !align !243 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.s = load ptr, ptr %2, align 8, !tbaa !173
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !177
  %i.v = and i64 %i.u, -8
  %i.w = inttoptr i64 %i.v to ptr
  store ptr %i.s, ptr %4, align 8, !tbaa !211
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.y = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %i.y, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i, label %bb.c

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i
  %.phi.trans.insert10.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.pre11.i = load i32, ptr %.phi.trans.insert10.i, align 4, !tbaa !3
  br label %_ZZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS_8ArrayRefINS0_6UpdateIT_EEEERNS_15SmallVectorImplIS8_EEbENKUlRKNS6_IS4_EESF_E_clESF_SF_.exit

bb.c:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i
  %i.aa = call noundef ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.z) ; 3 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !32
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !211
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !214
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i32 0, ptr %i.ae, align 8, !tbaa !3
  br label %_ZZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS_8ArrayRefINS0_6UpdateIT_EEEERNS_15SmallVectorImplIS8_EEbENKUlRKNS6_IS4_EESF_E_clESF_SF_.exit

_ZZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS_8ArrayRefINS0_6UpdateIT_EEEERNS_15SmallVectorImplIS8_EEbENKUlRKNS6_IS4_EESF_E_clESF_SF_.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i, %bb.c
  %i.af = phi i32 [ 0, %bb.c ], [ %.pre11.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i ]
  %i.ag = icmp sgt i32 %i.q, %i.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i1 %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_SD_SD_SD_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 6 uses
  store ptr %4, ptr %5, align 8
  %i.a = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, ptr noundef %2)
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef %3)
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load <16 x i8>, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !238
  store <16 x i8> %.sroa.0.0.copyload, ptr %2, align 8
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.c = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, ptr noundef %3)
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.023.0.copyload = load <16 x i8>, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !238
  store <16 x i8> %.sroa.023.0.copyload, ptr %3, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %.sroa.025.0.copyload = load <16 x i8>, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !238
  store <16 x i8> %.sroa.025.0.copyload, ptr %1, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, ptr noundef %3)
  br i1 %i.d, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.027.0.copyload = load <16 x i8>, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !238
  store <16 x i8> %.sroa.027.0.copyload, ptr %1, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.e = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef %3)
  br i1 %i.e, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.029.0.copyload = load <16 x i8>, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !238
  store <16 x i8> %.sroa.029.0.copyload, ptr %3, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %.sroa.031.0.copyload = load <16 x i8>, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !238
  store <16 x i8> %.sroa.031.0.copyload, ptr %2, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZSt21__unguarded_partitionIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEESD_SD_SD_SD_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"struct.std::pair.81", align 8     ; 7 uses
  %5 = alloca %"struct.std::pair.81", align 8     ; 7 uses
  %6 = alloca %"struct.std::pair.81", align 8     ; 7 uses
  %7 = alloca %"struct.std::pair.81", align 8     ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.al, %bb.a
  %.013 = phi ptr [ %1, %bb.a ], [ %.114, %bb.al ]
  %.0 = phi ptr [ %0, %bb.a ], [ %i.hv, %bb.al ]
  br label %bb.c

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit, %bb.b
  %.1 = phi ptr [ %.0, %bb.b ], [ %i.hv, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.q = load ptr, ptr %.1, align 8, !tbaa !173   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !177
  %i.t = and i64 %i.s, -8                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 3 uses
  store ptr %i.q, ptr %6, align 8, !tbaa !211
  store ptr %i.u, ptr %i.i, align 8, !tbaa !214
  %i.v = load i32, ptr %3, align 8                ; 3 uses
  %i.w = and i32 %i.v, 1                          ; 2 uses
  %.not.i.i.i32 = icmp eq i32 %i.w, 0             ; 2 uses
  %i.x = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.y = select i1 %.not.i.i.i32, ptr %i.x, ptr %i.j ; 3 uses
  %i.z = load i32, ptr %i.k, align 8              ; 2 uses
  %i.aa = select i1 %.not.i.i.i32, i32 %i.z, i32 4 ; 7 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit42, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = ptrtoint ptr %i.q to i64
  %i.ad = trunc i64 %i.ac to i32                  ; 2 uses
  %i.ae = lshr i32 %i.ad, 4
  %i.af = lshr i32 %i.ad, 9
  %i.ag = xor i32 %i.ae, %i.af
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 32
  %i.aj = trunc i64 %i.t to i32                   ; 2 uses
  %i.ak = lshr i32 %i.aj, 4
  %i.al = lshr i32 %i.aj, 9
  %i.am = xor i32 %i.ak, %i.al
  %i.an = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ao = or disjoint i64 %i.ai, %i.an
  %i.ap = shl nuw nsw i64 %i.an, 32
  %i.aq = xor i64 %i.ap, -1
  %i.ar = add nsw i64 %i.ao, %i.aq                ; 2 uses
  %i.as = lshr i64 %i.ar, 22
  %i.at = xor i64 %i.as, %i.ar                    ; 2 uses
  %i.au = shl i64 %i.at, 13
  %i.av = xor i64 %i.au, -1
  %i.aw = add i64 %i.at, %i.av                    ; 2 uses
  %i.ax = lshr i64 %i.aw, 8
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = mul i64 %i.ay, 9                        ; 2 uses
  %i.ba = lshr i64 %i.az, 15
  %i.bb = xor i64 %i.ba, %i.az                    ; 2 uses
  %i.bc = shl i64 %i.bb, 27
  %i.bd = xor i64 %i.bc, -1
  %i.be = add i64 %i.bb, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %i.be, 31
  %i.bg = xor i64 %i.bf, %i.be
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = add i32 %i.aa, -1                       ; 2 uses
  %i.bj = and i32 %i.bi, %i.bh                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.bk ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !211 ; 2 uses
  %i.bn = icmp eq ptr %i.q, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.u
  %i.br = select i1 %i.bn, i1 %i.bq, i1 false
  br i1 %i.br, label %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i, label %.lr.ph.i33, !prof !52

.lr.ph.i33:                                       ; preds = %bb.d, %bb.f
  %i.bs = phi ptr [ %i.cl, %bb.f ], [ %i.bp, %bb.d ] ; 2 uses
  %i.bt = phi ptr [ %i.ci, %bb.f ], [ %i.bm, %bb.d ] ; 2 uses
  %i.bu = phi ptr [ %i.ch, %bb.f ], [ %i.bl, %bb.d ] ; 2 uses
  %.02548.i34 = phi i32 [ %i.cd, %bb.f ], [ 1, %bb.d ] ; 2 uses
  %.02747.i35 = phi i32 [ %i.cf, %bb.f ], [ %i.bj, %bb.d ]
  %.02946.i36 = phi ptr [ %spec.select.i38, %bb.f ], [ null, %bb.d ] ; 4 uses
  %i.bv = icmp eq ptr %i.bt, inttoptr (i64 -8 to ptr)
  %i.bw = icmp eq ptr %i.bs, inttoptr (i64 -8 to ptr)
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %i.bx, label %bb.e, label %bb.f, !prof !53

bb.e:                                             ; preds = %.lr.ph.i33
  %.not.i41 = icmp eq ptr %.02946.i36, null
  %i.by = select i1 %.not.i41, ptr %i.bu, ptr %.02946.i36
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit42

bb.f:                                             ; preds = %.lr.ph.i33
  %i.bz = icmp eq ptr %i.bt, inttoptr (i64 -16 to ptr)
  %i.ca = icmp eq ptr %i.bs, inttoptr (i64 -16 to ptr)
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  %i.cc = icmp eq ptr %.02946.i36, null
  %or.cond.not.i37 = select i1 %i.cb, i1 %i.cc, i1 false
  %spec.select.i38 = select i1 %or.cond.not.i37, ptr %i.bu, ptr %.02946.i36
  %i.cd = add i32 %.02548.i34, 1
  %i.ce = add i32 %.02747.i35, %.02548.i34
  %i.cf = and i32 %i.ce, %i.bi                    ; 2 uses
  %i.cg = zext i32 %i.cf to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.cg ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !211 ; 2 uses
  %i.cj = icmp eq ptr %i.q, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.u
  %i.cn = select i1 %i.cj, i1 %i.cm, i1 false
  br i1 %i.cn, label %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i, label %.lr.ph.i33, !prof !54, !llvm.loop !235

._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i: ; preds = %bb.f, %bb.d
  %i.co = phi i64 [ %i.bk, %bb.d ], [ %i.cg, %bb.f ]
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.co
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit42: ; preds = %bb.e, %bb.c
  %.sink.i39 = phi ptr [ %i.by, %bb.e ], [ null, %bb.c ]
  %i.cq = lshr i32 %i.v, 1                        ; 2 uses
  %i.cr = shl i32 %i.cq, 2
  %i.cs = add i32 %i.cr, 4
  %i.ct = mul i32 %i.aa, 3
  %.not.i26 = icmp ult i32 %i.cs, %i.ct
  br i1 %.not.i26, label %bb.h, label %bb.g, !prof !53

bb.g:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit42
  %i.cu = shl i32 %i.aa, 1
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.cv = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 0 uses
  %i.cw = load ptr, ptr %i.f, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %bb.j

bb.h:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit42
  %i.cx = load i32, ptr %i.l, align 4, !tbaa !207
  %.neg.i28 = xor i32 %i.cq, -1
  %.neg13.i29 = add i32 %i.aa, %.neg.i28
  %i.cy = sub i32 %.neg13.i29, %i.cx
  %i.cz = lshr i32 %i.aa, 3
  %.not9.i30 = icmp ugt i32 %i.cy, %i.cz
  br i1 %.not9.i30, label %bb.j, label %bb.i, !prof !53

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.da = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  %i.db = load ptr, ptr %i.e, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.0.i27 = phi ptr [ %.sink.i39, %bb.h ], [ %i.db, %bb.i ], [ %i.cw, %bb.g ] ; 4 uses
  %i.dc = load i32, ptr %3, align 8               ; 2 uses
  %i.dd = and i32 %i.dc, -2
  %i.de = add i32 %i.dd, 2
  %i.df = and i32 %i.dc, 1
  %i.dg = or disjoint i32 %i.de, %i.df
  store i32 %i.dg, ptr %3, align 8
  %i.dh = load ptr, ptr %.0.i27, align 8, !tbaa !211
  %i.di = icmp eq ptr %i.dh, inttoptr (i64 -8 to ptr)
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = icmp eq ptr %i.dk, inttoptr (i64 -8 to ptr)
  %i.dm = select i1 %i.di, i1 %i.dl, i1 false
  br i1 %i.dm, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dn = load i32, ptr %i.l, align 4, !tbaa !207
  %i.do = add i32 %i.dn, -1
  store i32 %i.do, ptr %i.l, align 4, !tbaa !207
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit31

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit31: ; preds = %bb.j, %bb.k
  %i.dp = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %i.dp, ptr %.0.i27, align 8, !tbaa !211
  %i.dq = load ptr, ptr %i.i, align 8, !tbaa !32
  store ptr %i.dq, ptr %i.dj, align 8, !tbaa !214
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i27, i64 16
  store i32 0, ptr %i.dr, align 8, !tbaa !3
  %.pre = load i32, ptr %3, align 8               ; 2 uses
  %.pre133 = load ptr, ptr %i.j, align 8
  %.pre134 = load i32, ptr %i.k, align 8
  %.pre138 = and i32 %.pre, 1
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit31, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i
  %.pre-phi = phi i32 [ %.pre138, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit31 ], [ %i.w, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ]
  %i.ds = phi i32 [ %.pre134, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit31 ], [ %i.z, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ]
  %i.dt = phi ptr [ %.pre133, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit31 ], [ %i.x, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ]
  %i.du = phi i32 [ %.pre, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit31 ], [ %i.v, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ]
  %i.dv = phi i32 [ 0, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit31 ], [ %.pre.i.i, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.dw = load ptr, ptr %2, align 8, !tbaa !173   ; 4 uses
  %i.dx = load i64, ptr %i.m, align 8, !tbaa !177
  %i.dy = and i64 %i.dx, -8                       ; 2 uses
  %i.dz = inttoptr i64 %i.dy to ptr               ; 3 uses
  store ptr %i.dw, ptr %7, align 8, !tbaa !211
  store ptr %i.dz, ptr %i.n, align 8, !tbaa !214
  %.not.i.i.i23 = icmp eq i32 %.pre-phi, 0        ; 2 uses
  %i.ea = select i1 %.not.i.i.i23, ptr %i.dt, ptr %i.j ; 3 uses
  %i.eb = select i1 %.not.i.i.i23, i32 %i.ds, i32 4 ; 7 uses
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i
  %i.ed = ptrtoint ptr %i.dw to i64
  %i.ee = trunc i64 %i.ed to i32                  ; 2 uses
  %i.ef = lshr i32 %i.ee, 4
  %i.eg = lshr i32 %i.ee, 9
  %i.eh = xor i32 %i.ef, %i.eg
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = shl nuw nsw i64 %i.ei, 32
  %i.ek = trunc i64 %i.dy to i32                  ; 2 uses
  %i.el = lshr i32 %i.ek, 4
  %i.em = lshr i32 %i.ek, 9
  %i.en = xor i32 %i.el, %i.em
  %i.eo = zext nneg i32 %i.en to i64              ; 2 uses
  %i.ep = or disjoint i64 %i.ej, %i.eo
  %i.eq = shl nuw nsw i64 %i.eo, 32
  %i.er = xor i64 %i.eq, -1
  %i.es = add nsw i64 %i.ep, %i.er                ; 2 uses
  %i.et = lshr i64 %i.es, 22
  %i.eu = xor i64 %i.et, %i.es                    ; 2 uses
  %i.ev = shl i64 %i.eu, 13
  %i.ew = xor i64 %i.ev, -1
  %i.ex = add i64 %i.eu, %i.ew                    ; 2 uses
  %i.ey = lshr i64 %i.ex, 8
  %i.ez = xor i64 %i.ey, %i.ex
  %i.fa = mul i64 %i.ez, 9                        ; 2 uses
  %i.fb = lshr i64 %i.fa, 15
  %i.fc = xor i64 %i.fb, %i.fa                    ; 2 uses
  %i.fd = shl i64 %i.fc, 27
  %i.fe = xor i64 %i.fd, -1
  %i.ff = add i64 %i.fc, %i.fe                    ; 2 uses
  %i.fg = lshr i64 %i.ff, 31
  %i.fh = xor i64 %i.fg, %i.ff
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = add i32 %i.eb, -1                       ; 2 uses
  %i.fk = and i32 %i.fj, %i.fi                    ; 2 uses
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %i.fl ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !211 ; 2 uses
  %i.fo = icmp eq ptr %i.dw, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8            ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.dz
  %i.fs = select i1 %i.fo, i1 %i.fr, i1 false
  br i1 %i.fs, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i, label %.lr.ph.i, !prof !52

.lr.ph.i:                                         ; preds = %bb.l, %bb.n
  %i.ft = phi ptr [ %i.gm, %bb.n ], [ %i.fq, %bb.l ] ; 2 uses
  %i.fu = phi ptr [ %i.gj, %bb.n ], [ %i.fn, %bb.l ] ; 2 uses
  %i.fv = phi ptr [ %i.gi, %bb.n ], [ %i.fm, %bb.l ] ; 2 uses
  %.02548.i = phi i32 [ %i.ge, %bb.n ], [ 1, %bb.l ] ; 2 uses
  %.02747.i = phi i32 [ %i.gg, %bb.n ], [ %i.fk, %bb.l ]
  %.02946.i = phi ptr [ %spec.select.i, %bb.n ], [ null, %bb.l ] ; 4 uses
  %i.fw = icmp eq ptr %i.fu, inttoptr (i64 -8 to ptr)
  %i.fx = icmp eq ptr %i.ft, inttoptr (i64 -8 to ptr)
  %i.fy = select i1 %i.fw, i1 %i.fx, i1 false
  br i1 %i.fy, label %bb.m, label %bb.n, !prof !53

bb.m:                                             ; preds = %.lr.ph.i
  %.not.i24 = icmp eq ptr %.02946.i, null
  %i.fz = select i1 %.not.i24, ptr %i.fv, ptr %.02946.i
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit

bb.n:                                             ; preds = %.lr.ph.i
  %i.ga = icmp eq ptr %i.fu, inttoptr (i64 -16 to ptr)
  %i.gb = icmp eq ptr %i.ft, inttoptr (i64 -16 to ptr)
  %i.gc = select i1 %i.ga, i1 %i.gb, i1 false
  %i.gd = icmp eq ptr %.02946.i, null
  %or.cond.not.i = select i1 %i.gc, i1 %i.gd, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.fv, ptr %.02946.i
  %i.ge = add i32 %.02548.i, 1
  %i.gf = add i32 %.02747.i, %.02548.i
  %i.gg = and i32 %i.gf, %i.fj                    ; 2 uses
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %i.gh ; 3 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !211 ; 2 uses
  %i.gk = icmp eq ptr %i.dw, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8            ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.dz
  %i.go = select i1 %i.gk, i1 %i.gn, i1 false
  br i1 %i.go, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i, label %.lr.ph.i, !prof !54, !llvm.loop !235

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i: ; preds = %bb.n, %bb.l
  %i.gp = phi i64 [ %i.fl, %bb.l ], [ %i.gh, %bb.n ]
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %i.gp
  %.phi.trans.insert10.i.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %.pre11.i.i = load i32, ptr %.phi.trans.insert10.i.i, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit: ; preds = %bb.m, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i
  %.sink.i = phi ptr [ %i.fz, %bb.m ], [ null, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i ]
  %i.gr = lshr i32 %i.du, 1                       ; 2 uses
  %i.gs = shl i32 %i.gr, 2
  %i.gt = add i32 %i.gs, 4
  %i.gu = mul i32 %i.eb, 3
  %.not.i = icmp ult i32 %i.gt, %i.gu
  br i1 %.not.i, label %bb.p, label %bb.o, !prof !53

bb.o:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit
  %i.gv = shl i32 %i.eb, 1
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %i.gv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  %i.gw = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 0 uses
  %i.gx = load ptr, ptr %i.h, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  br label %bb.r

bb.p:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit
  %i.gy = load i32, ptr %i.l, align 4, !tbaa !207
  %.neg.i = xor i32 %i.gr, -1
  %.neg13.i = add i32 %i.eb, %.neg.i
  %i.gz = sub i32 %.neg13.i, %i.gy
  %i.ha = lshr i32 %i.eb, 3
  %.not9.i = icmp ugt i32 %i.gz, %i.ha
  br i1 %.not9.i, label %bb.r, label %bb.q, !prof !53

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %i.eb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.hb = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 0 uses
  %i.hc = load ptr, ptr %i.g, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.0.i = phi ptr [ %.sink.i, %bb.p ], [ %i.hc, %bb.q ], [ %i.gx, %bb.o ] ; 4 uses
  %i.hd = load i32, ptr %3, align 8               ; 2 uses
  %i.he = and i32 %i.hd, -2
  %i.hf = add i32 %i.he, 2
  %i.hg = and i32 %i.hd, 1
  %i.hh = or disjoint i32 %i.hf, %i.hg
  store i32 %i.hh, ptr %3, align 8
  %i.hi = load ptr, ptr %.0.i, align 8, !tbaa !211
  %i.hj = icmp eq ptr %i.hi, inttoptr (i64 -8 to ptr)
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = icmp eq ptr %i.hl, inttoptr (i64 -8 to ptr)
  %i.hn = select i1 %i.hj, i1 %i.hm, i1 false
  br i1 %i.hn, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ho = load i32, ptr %i.l, align 4, !tbaa !207
  %i.hp = add i32 %i.ho, -1
  store i32 %i.hp, ptr %i.l, align 4, !tbaa !207
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit: ; preds = %bb.r, %bb.s
  %i.hq = load ptr, ptr %7, align 8, !tbaa !32
  store ptr %i.hq, ptr %.0.i, align 8, !tbaa !211
  %i.hr = load ptr, ptr %i.n, align 8, !tbaa !32
  store ptr %i.hr, ptr %i.hk, align 8, !tbaa !214
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.hs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit
  %i.ht = phi i32 [ 0, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit ], [ %.pre11.i.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i ]
  %i.hu = icmp sgt i32 %i.dv, %i.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.hv = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  br i1 %i.hu, label %bb.c, label %.preheader, !llvm.loop !247

.preheader:                                       ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit22
  %.013.pn = phi ptr [ %.114, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit22 ], [ %.013, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit ] ; 2 uses
  %.114 = getelementptr inbounds i8, ptr %.013.pn, i64 -16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.hw = load ptr, ptr %2, align 8, !tbaa !173   ; 4 uses
  %i.hx = load i64, ptr %i.m, align 8, !tbaa !177
  %i.hy = and i64 %i.hx, -8                       ; 2 uses
  %i.hz = inttoptr i64 %i.hy to ptr               ; 3 uses
  store ptr %i.hw, ptr %4, align 8, !tbaa !211
  store ptr %i.hz, ptr %i.o, align 8, !tbaa !214
  %i.ia = load i32, ptr %3, align 8               ; 3 uses
  %i.ib = and i32 %i.ia, 1                        ; 2 uses
  %.not.i.i.i68 = icmp eq i32 %i.ib, 0            ; 2 uses
  %i.ic = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.id = select i1 %.not.i.i.i68, ptr %i.ic, ptr %i.j ; 3 uses
  %i.ie = load i32, ptr %i.k, align 8             ; 2 uses
  %i.if = select i1 %.not.i.i.i68, i32 %i.ie, i32 4 ; 7 uses
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit78, label %bb.t

bb.t:                                             ; preds = %.preheader
  %i.ih = ptrtoint ptr %i.hw to i64
  %i.ii = trunc i64 %i.ih to i32                  ; 2 uses
  %i.ij = lshr i32 %i.ii, 4
  %i.ik = lshr i32 %i.ii, 9
  %i.il = xor i32 %i.ij, %i.ik
  %i.im = zext nneg i32 %i.il to i64
  %i.in = shl nuw nsw i64 %i.im, 32
  %i.io = trunc i64 %i.hy to i32                  ; 2 uses
  %i.ip = lshr i32 %i.io, 4
  %i.iq = lshr i32 %i.io, 9
  %i.ir = xor i32 %i.ip, %i.iq
  %i.is = zext nneg i32 %i.ir to i64              ; 2 uses
  %i.it = or disjoint i64 %i.in, %i.is
  %i.iu = shl nuw nsw i64 %i.is, 32
  %i.iv = xor i64 %i.iu, -1
  %i.iw = add nsw i64 %i.it, %i.iv                ; 2 uses
  %i.ix = lshr i64 %i.iw, 22
  %i.iy = xor i64 %i.ix, %i.iw                    ; 2 uses
  %i.iz = shl i64 %i.iy, 13
  %i.ja = xor i64 %i.iz, -1
  %i.jb = add i64 %i.iy, %i.ja                    ; 2 uses
  %i.jc = lshr i64 %i.jb, 8
  %i.jd = xor i64 %i.jc, %i.jb
  %i.je = mul i64 %i.jd, 9                        ; 2 uses
  %i.jf = lshr i64 %i.je, 15
  %i.jg = xor i64 %i.jf, %i.je                    ; 2 uses
  %i.jh = shl i64 %i.jg, 27
  %i.ji = xor i64 %i.jh, -1
  %i.jj = add i64 %i.jg, %i.ji                    ; 2 uses
  %i.jk = lshr i64 %i.jj, 31
  %i.jl = xor i64 %i.jk, %i.jj
  %i.jm = trunc i64 %i.jl to i32
  %i.jn = add i32 %i.if, -1                       ; 2 uses
  %i.jo = and i32 %i.jn, %i.jm                    ; 2 uses
  %i.jp = zext i32 %i.jo to i64                   ; 2 uses
  %i.jq = getelementptr inbounds nuw [24 x i8], ptr %i.id, i64 %i.jp ; 3 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !211 ; 2 uses
  %i.js = icmp eq ptr %i.hw, %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8            ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.hz
  %i.jw = select i1 %i.js, i1 %i.jv, i1 false
  br i1 %i.jw, label %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i19, label %.lr.ph.i69, !prof !52

.lr.ph.i69:                                       ; preds = %bb.t, %bb.v
  %i.jx = phi ptr [ %i.kq, %bb.v ], [ %i.ju, %bb.t ] ; 2 uses
  %i.jy = phi ptr [ %i.kn, %bb.v ], [ %i.jr, %bb.t ] ; 2 uses
  %i.jz = phi ptr [ %i.km, %bb.v ], [ %i.jq, %bb.t ] ; 2 uses
  %.02548.i70 = phi i32 [ %i.ki, %bb.v ], [ 1, %bb.t ] ; 2 uses
  %.02747.i71 = phi i32 [ %i.kk, %bb.v ], [ %i.jo, %bb.t ]
  %.02946.i72 = phi ptr [ %spec.select.i74, %bb.v ], [ null, %bb.t ] ; 4 uses
  %i.ka = icmp eq ptr %i.jy, inttoptr (i64 -8 to ptr)
  %i.kb = icmp eq ptr %i.jx, inttoptr (i64 -8 to ptr)
  %i.kc = select i1 %i.ka, i1 %i.kb, i1 false
  br i1 %i.kc, label %bb.u, label %bb.v, !prof !53

bb.u:                                             ; preds = %.lr.ph.i69
  %.not.i77 = icmp eq ptr %.02946.i72, null
  %i.kd = select i1 %.not.i77, ptr %i.jz, ptr %.02946.i72
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit78

bb.v:                                             ; preds = %.lr.ph.i69
  %i.ke = icmp eq ptr %i.jy, inttoptr (i64 -16 to ptr)
  %i.kf = icmp eq ptr %i.jx, inttoptr (i64 -16 to ptr)
  %i.kg = select i1 %i.ke, i1 %i.kf, i1 false
  %i.kh = icmp eq ptr %.02946.i72, null
  %or.cond.not.i73 = select i1 %i.kg, i1 %i.kh, i1 false
  %spec.select.i74 = select i1 %or.cond.not.i73, ptr %i.jz, ptr %.02946.i72
  %i.ki = add i32 %.02548.i70, 1
  %i.kj = add i32 %.02747.i71, %.02548.i70
  %i.kk = and i32 %i.kj, %i.jn                    ; 2 uses
  %i.kl = zext i32 %i.kk to i64                   ; 2 uses
  %i.km = getelementptr inbounds nuw [24 x i8], ptr %i.id, i64 %i.kl ; 3 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !211 ; 2 uses
  %i.ko = icmp eq ptr %i.hw, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8            ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.hz
  %i.ks = select i1 %i.ko, i1 %i.kr, i1 false
  br i1 %i.ks, label %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i19, label %.lr.ph.i69, !prof !54, !llvm.loop !235

._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i19: ; preds = %bb.v, %bb.t
  %i.kt = phi i64 [ %i.jp, %bb.t ], [ %i.kl, %bb.v ]
  %i.ku = getelementptr inbounds nuw [24 x i8], ptr %i.id, i64 %i.kt
  %.phi.trans.insert.i.i20 = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %.pre.i.i21 = load i32, ptr %.phi.trans.insert.i.i20, align 4, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i15

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit78: ; preds = %bb.u, %.preheader
  %.sink.i75 = phi ptr [ %i.kd, %bb.u ], [ null, %.preheader ]
  %i.kv = lshr i32 %i.ia, 1                       ; 2 uses
  %i.kw = shl i32 %i.kv, 2
  %i.kx = add i32 %i.kw, 4
  %i.ky = mul i32 %i.if, 3
  %.not.i62 = icmp ult i32 %i.kx, %i.ky
  br i1 %.not.i62, label %bb.x, label %bb.w, !prof !53

bb.w:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit78
  %i.kz = shl i32 %i.if, 1
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %i.kz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.la = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.lb = load ptr, ptr %i.b, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.z

bb.x:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit78
  %i.lc = load i32, ptr %i.l, align 4, !tbaa !207
  %.neg.i64 = xor i32 %i.kv, -1
  %.neg13.i65 = add i32 %i.if, %.neg.i64
  %i.ld = sub i32 %.neg13.i65, %i.lc
  %i.le = lshr i32 %i.if, 3
  %.not9.i66 = icmp ugt i32 %i.ld, %i.le
  br i1 %.not9.i66, label %bb.z, label %bb.y, !prof !53

bb.y:                                             ; preds = %bb.x
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %i.if)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.lf = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.lg = load ptr, ptr %i.a, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %.0.i63 = phi ptr [ %.sink.i75, %bb.x ], [ %i.lg, %bb.y ], [ %i.lb, %bb.w ] ; 4 uses
  %i.lh = load i32, ptr %3, align 8               ; 2 uses
  %i.li = and i32 %i.lh, -2
  %i.lj = add i32 %i.li, 2
  %i.lk = and i32 %i.lh, 1
  %i.ll = or disjoint i32 %i.lj, %i.lk
  store i32 %i.ll, ptr %3, align 8
  %i.lm = load ptr, ptr %.0.i63, align 8, !tbaa !211
  %i.ln = icmp eq ptr %i.lm, inttoptr (i64 -8 to ptr)
  %i.lo = getelementptr inbounds nuw i8, ptr %.0.i63, i64 8 ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8
  %i.lq = icmp eq ptr %i.lp, inttoptr (i64 -8 to ptr)
  %i.lr = select i1 %i.ln, i1 %i.lq, i1 false
  br i1 %i.lr, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit67, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ls = load i32, ptr %i.l, align 4, !tbaa !207
  %i.lt = add i32 %i.ls, -1
  store i32 %i.lt, ptr %i.l, align 4, !tbaa !207
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit67

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit67: ; preds = %bb.z, %bb.aa
  %i.lu = load ptr, ptr %4, align 8, !tbaa !32
  store ptr %i.lu, ptr %.0.i63, align 8, !tbaa !211
  %i.lv = load ptr, ptr %i.o, align 8, !tbaa !32
  store ptr %i.lv, ptr %i.lo, align 8, !tbaa !214
  %i.lw = getelementptr inbounds nuw i8, ptr %.0.i63, i64 16
  store i32 0, ptr %i.lw, align 8, !tbaa !3
  %.pre135 = load i32, ptr %3, align 8            ; 2 uses
  %.pre136 = load ptr, ptr %i.j, align 8
  %.pre137 = load i32, ptr %i.k, align 8
  %.pre139 = and i32 %.pre135, 1
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i15

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i15: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit67, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i19
  %.pre-phi140 = phi i32 [ %.pre139, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit67 ], [ %i.ib, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i19 ]
  %i.lx = phi i32 [ %.pre137, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit67 ], [ %i.ie, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i19 ]
  %i.ly = phi ptr [ %.pre136, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit67 ], [ %i.ic, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i19 ]
  %i.lz = phi i32 [ %.pre135, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit67 ], [ %i.ia, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i19 ]
  %i.ma = phi i32 [ 0, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit67 ], [ %.pre.i.i21, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i19 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.mb = load ptr, ptr %.114, align 8, !tbaa !173 ; 4 uses
  %i.mc = getelementptr inbounds i8, ptr %.013.pn, i64 -8
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !177
  %i.me = and i64 %i.md, -8                       ; 2 uses
  %i.mf = inttoptr i64 %i.me to ptr               ; 3 uses
  store ptr %i.mb, ptr %5, align 8, !tbaa !211
  store ptr %i.mf, ptr %i.p, align 8, !tbaa !214
  %.not.i.i.i50 = icmp eq i32 %.pre-phi140, 0     ; 2 uses
  %i.mg = select i1 %.not.i.i.i50, ptr %i.ly, ptr %i.j ; 3 uses
  %i.mh = select i1 %.not.i.i.i50, i32 %i.lx, i32 4 ; 7 uses
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit60, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i15
  %i.mj = ptrtoint ptr %i.mb to i64
  %i.mk = trunc i64 %i.mj to i32                  ; 2 uses
  %i.ml = lshr i32 %i.mk, 4
  %i.mm = lshr i32 %i.mk, 9
  %i.mn = xor i32 %i.ml, %i.mm
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = shl nuw nsw i64 %i.mo, 32
  %i.mq = trunc i64 %i.me to i32                  ; 2 uses
  %i.mr = lshr i32 %i.mq, 4
  %i.ms = lshr i32 %i.mq, 9
  %i.mt = xor i32 %i.mr, %i.ms
  %i.mu = zext nneg i32 %i.mt to i64              ; 2 uses
  %i.mv = or disjoint i64 %i.mp, %i.mu
  %i.mw = shl nuw nsw i64 %i.mu, 32
  %i.mx = xor i64 %i.mw, -1
  %i.my = add nsw i64 %i.mv, %i.mx                ; 2 uses
  %i.mz = lshr i64 %i.my, 22
  %i.na = xor i64 %i.mz, %i.my                    ; 2 uses
  %i.nb = shl i64 %i.na, 13
  %i.nc = xor i64 %i.nb, -1
  %i.nd = add i64 %i.na, %i.nc                    ; 2 uses
  %i.ne = lshr i64 %i.nd, 8
  %i.nf = xor i64 %i.ne, %i.nd
  %i.ng = mul i64 %i.nf, 9                        ; 2 uses
  %i.nh = lshr i64 %i.ng, 15
  %i.ni = xor i64 %i.nh, %i.ng                    ; 2 uses
  %i.nj = shl i64 %i.ni, 27
  %i.nk = xor i64 %i.nj, -1
  %i.nl = add i64 %i.ni, %i.nk                    ; 2 uses
  %i.nm = lshr i64 %i.nl, 31
  %i.nn = xor i64 %i.nm, %i.nl
  %i.no = trunc i64 %i.nn to i32
  %i.np = add i32 %i.mh, -1                       ; 2 uses
  %i.nq = and i32 %i.np, %i.no                    ; 2 uses
  %i.nr = zext i32 %i.nq to i64                   ; 2 uses
  %i.ns = getelementptr inbounds nuw [24 x i8], ptr %i.mg, i64 %i.nr ; 3 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !211 ; 2 uses
  %i.nu = icmp eq ptr %i.mb, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8            ; 2 uses
  %i.nx = icmp eq ptr %i.nw, %i.mf
  %i.ny = select i1 %i.nu, i1 %i.nx, i1 false
  br i1 %i.ny, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i16, label %.lr.ph.i51, !prof !52

.lr.ph.i51:                                       ; preds = %bb.ab, %bb.ad
  %i.nz = phi ptr [ %i.os, %bb.ad ], [ %i.nw, %bb.ab ] ; 2 uses
  %i.oa = phi ptr [ %i.op, %bb.ad ], [ %i.nt, %bb.ab ] ; 2 uses
  %i.ob = phi ptr [ %i.oo, %bb.ad ], [ %i.ns, %bb.ab ] ; 2 uses
  %.02548.i52 = phi i32 [ %i.ok, %bb.ad ], [ 1, %bb.ab ] ; 2 uses
  %.02747.i53 = phi i32 [ %i.om, %bb.ad ], [ %i.nq, %bb.ab ]
  %.02946.i54 = phi ptr [ %spec.select.i56, %bb.ad ], [ null, %bb.ab ] ; 4 uses
  %i.oc = icmp eq ptr %i.oa, inttoptr (i64 -8 to ptr)
  %i.od = icmp eq ptr %i.nz, inttoptr (i64 -8 to ptr)
  %i.oe = select i1 %i.oc, i1 %i.od, i1 false
  br i1 %i.oe, label %bb.ac, label %bb.ad, !prof !53

bb.ac:                                            ; preds = %.lr.ph.i51
  %.not.i59 = icmp eq ptr %.02946.i54, null
  %i.of = select i1 %.not.i59, ptr %i.ob, ptr %.02946.i54
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit60

bb.ad:                                            ; preds = %.lr.ph.i51
  %i.og = icmp eq ptr %i.oa, inttoptr (i64 -16 to ptr)
  %i.oh = icmp eq ptr %i.nz, inttoptr (i64 -16 to ptr)
  %i.oi = select i1 %i.og, i1 %i.oh, i1 false
  %i.oj = icmp eq ptr %.02946.i54, null
  %or.cond.not.i55 = select i1 %i.oi, i1 %i.oj, i1 false
  %spec.select.i56 = select i1 %or.cond.not.i55, ptr %i.ob, ptr %.02946.i54
  %i.ok = add i32 %.02548.i52, 1
  %i.ol = add i32 %.02747.i53, %.02548.i52
  %i.om = and i32 %i.ol, %i.np                    ; 2 uses
  %i.on = zext i32 %i.om to i64                   ; 2 uses
  %i.oo = getelementptr inbounds nuw [24 x i8], ptr %i.mg, i64 %i.on ; 3 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !211 ; 2 uses
  %i.oq = icmp eq ptr %i.mb, %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.os = load ptr, ptr %i.or, align 8            ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.mf
  %i.ou = select i1 %i.oq, i1 %i.ot, i1 false
  br i1 %i.ou, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i16, label %.lr.ph.i51, !prof !54, !llvm.loop !235

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i16: ; preds = %bb.ad, %bb.ab
  %i.ov = phi i64 [ %i.nr, %bb.ab ], [ %i.on, %bb.ad ]
  %i.ow = getelementptr inbounds nuw [24 x i8], ptr %i.mg, i64 %i.ov
  %.phi.trans.insert10.i.i17 = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %.pre11.i.i18 = load i32, ptr %.phi.trans.insert10.i.i17, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit22

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit60: ; preds = %bb.ac, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i15
  %.sink.i57 = phi ptr [ %i.of, %bb.ac ], [ null, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i15 ]
  %i.ox = lshr i32 %i.lz, 1                       ; 2 uses
  %i.oy = shl i32 %i.ox, 2
  %i.oz = add i32 %i.oy, 4
  %i.pa = mul i32 %i.mh, 3
  %.not.i44 = icmp ult i32 %i.oz, %i.pa
  br i1 %.not.i44, label %bb.af, label %bb.ae, !prof !53

bb.ae:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit60
  %i.pb = shl i32 %i.mh, 1
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %i.pb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.pc = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  %i.pd = load ptr, ptr %i.d, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.ah

bb.af:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit60
  %i.pe = load i32, ptr %i.l, align 4, !tbaa !207
  %.neg.i46 = xor i32 %i.ox, -1
  %.neg13.i47 = add i32 %i.mh, %.neg.i46
  %i.pf = sub i32 %.neg13.i47, %i.pe
  %i.pg = lshr i32 %i.mh, 3
  %.not9.i48 = icmp ugt i32 %i.pf, %i.pg
  br i1 %.not9.i48, label %bb.ah, label %bb.ag, !prof !53

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %i.mh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.ph = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  %i.pi = load ptr, ptr %i.c, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.0.i45 = phi ptr [ %.sink.i57, %bb.af ], [ %i.pi, %bb.ag ], [ %i.pd, %bb.ae ] ; 4 uses
  %i.pj = load i32, ptr %3, align 8               ; 2 uses
  %i.pk = and i32 %i.pj, -2
  %i.pl = add i32 %i.pk, 2
  %i.pm = and i32 %i.pj, 1
  %i.pn = or disjoint i32 %i.pl, %i.pm
  store i32 %i.pn, ptr %3, align 8
  %i.po = load ptr, ptr %.0.i45, align 8, !tbaa !211
  %i.pp = icmp eq ptr %i.po, inttoptr (i64 -8 to ptr)
  %i.pq = getelementptr inbounds nuw i8, ptr %.0.i45, i64 8 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8
  %i.ps = icmp eq ptr %i.pr, inttoptr (i64 -8 to ptr)
  %i.pt = select i1 %i.pp, i1 %i.ps, i1 false
  br i1 %i.pt, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit49, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.pu = load i32, ptr %i.l, align 4, !tbaa !207
  %i.pv = add i32 %i.pu, -1
  store i32 %i.pv, ptr %i.l, align 4, !tbaa !207
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit49

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit49: ; preds = %bb.ah, %bb.ai
  %i.pw = load ptr, ptr %5, align 8, !tbaa !32
  store ptr %i.pw, ptr %.0.i45, align 8, !tbaa !211
  %i.px = load ptr, ptr %i.p, align 8, !tbaa !32
  store ptr %i.px, ptr %i.pq, align 8, !tbaa !214
  %i.py = getelementptr inbounds nuw i8, ptr %.0.i45, i64 16
  store i32 0, ptr %i.py, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit22

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit22: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i16, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit49
  %i.pz = phi i32 [ 0, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit49 ], [ %.pre11.i.i18, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i16 ]
  %i.qa = icmp sgt i32 %i.ma, %i.pz
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br i1 %i.qa, label %.preheader, label %bb.aj, !llvm.loop !248

bb.aj:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit22
  %i.qb = icmp ult ptr %.1, %.114
  br i1 %i.qb, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  ret ptr %.1

bb.al:                                            ; preds = %bb.aj
  %.sroa.0.0.copyload = load <16 x i8>, ptr %.1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1, ptr noundef nonnull align 8 dereferenceable(16) %.114, i64 16, i1 false), !tbaa.struct !238
  store <16 x i8> %.sroa.0.0.copyload, ptr %.114, align 8
  br label %bb.b, !llvm.loop !249
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_SD_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.std::pair.81", align 8     ; 7 uses
  %4 = alloca %"struct.std::pair.81", align 8     ; 7 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8 ; 6 uses
  %6 = alloca %"class.llvh::cfg::Update", align 8 ; 7 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 3 uses
  store ptr %2, ptr %7, align 8
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.054 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not55 = icmp eq ptr %.054, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %.057 = phi ptr [ %.054, %.lr.ph ], [ %.0, %bb.x ] ; 8 uses
  %.pn56 = phi ptr [ %0, %.lr.ph ], [ %.057, %bb.x ] ; 4 uses
  %i.j = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %.057, ptr noundef %0)
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload93 = load <16 x i8>, ptr %.057, align 8
  %i.k = ptrtoint ptr %.057 to i64
  %i.l = sub i64 %i.k, %i.i                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 4                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e, !prof !53

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.pn56, i64 32
  %i.p = sub nsw i64 0, %i.m
  %i.q = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.p
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.l, i1 false)
  br label %_ZSt13move_backwardIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEES7_ET0_T_S9_S8_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.l, 16
  br i1 %i.r, label %bb.f, label %_ZSt13move_backwardIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEES7_ET0_T_S9_S8_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.pn56, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !238
  br label %_ZSt13move_backwardIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEES7_ET0_T_S9_S8_.exit

_ZSt13move_backwardIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEES7_ET0_T_S9_S8_.exit: ; preds = %bb.d, %bb.e, %bb.f
  store <16 x i8> %.sroa.0.0.copyload93, ptr %0, align 8
  br label %bb.x

bb.g:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !245
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.sroa.0.0.copyload, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.057, i64 16, i1 false), !tbaa.struct !238
  %i.t = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %.pn56)
  br i1 %i.t, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit

.lr.ph.i:                                         ; preds = %bb.g, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit
  %.012.i = phi ptr [ %.0.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit ], [ %.pn56, %bb.g ] ; 5 uses
  %.0911.i = phi ptr [ %.012.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit ], [ %.057, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0911.i, ptr noundef nonnull align 8 dereferenceable(16) %.012.i, i64 16, i1 false), !tbaa.struct !238
  %.0.i = getelementptr inbounds i8, ptr %.012.i, i64 -16 ; 2 uses
  %i.u = load ptr, ptr %5, align 8, !tbaa !240, !nonnull !29, !align !243 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.v = load ptr, ptr %6, align 8, !tbaa !173    ; 4 uses
  %i.w = load i64, ptr %i.f, align 8, !tbaa !177
  %i.x = and i64 %i.w, -8                         ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !211
  store ptr %i.y, ptr %i.g, align 8, !tbaa !214
  %i.z = load i32, ptr %i.u, align 8              ; 2 uses
  %i.aa = and i32 %i.z, 1
  %.not.i.i.i28 = icmp eq i32 %i.aa, 0            ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = select i1 %.not.i.i.i28, ptr %i.ac, ptr %i.ab ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.af = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.ag = select i1 %.not.i.i.i28, i32 %i.af, i32 4 ; 7 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit38, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ai = ptrtoint ptr %i.v to i64
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = lshr i32 %i.aj, 4
  %i.al = lshr i32 %i.aj, 9
  %i.am = xor i32 %i.ak, %i.al
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 32
  %i.ap = trunc i64 %i.x to i32                   ; 2 uses
  %i.aq = lshr i32 %i.ap, 4
  %i.ar = lshr i32 %i.ap, 9
  %i.as = xor i32 %i.aq, %i.ar
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = or disjoint i64 %i.ao, %i.at
  %i.av = shl nuw nsw i64 %i.at, 32
  %i.aw = xor i64 %i.av, -1
  %i.ax = add nsw i64 %i.au, %i.aw                ; 2 uses
  %i.ay = lshr i64 %i.ax, 22
  %i.az = xor i64 %i.ay, %i.ax                    ; 2 uses
  %i.ba = shl i64 %i.az, 13
  %i.bb = xor i64 %i.ba, -1
  %i.bc = add i64 %i.az, %i.bb                    ; 2 uses
  %i.bd = lshr i64 %i.bc, 8
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = mul i64 %i.be, 9                        ; 2 uses
  %i.bg = lshr i64 %i.bf, 15
  %i.bh = xor i64 %i.bg, %i.bf                    ; 2 uses
  %i.bi = shl i64 %i.bh, 27
  %i.bj = xor i64 %i.bi, -1
  %i.bk = add i64 %i.bh, %i.bj                    ; 2 uses
  %i.bl = lshr i64 %i.bk, 31
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = add i32 %i.ag, -1                       ; 2 uses
  %i.bp = and i32 %i.bo, %i.bn                    ; 2 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.bq ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !211 ; 2 uses
  %i.bt = icmp eq ptr %i.v, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.y
  %i.bx = select i1 %i.bt, i1 %i.bw, i1 false
  br i1 %i.bx, label %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i, label %.lr.ph.i29, !prof !52

.lr.ph.i29:                                       ; preds = %bb.h, %bb.j
  %i.by = phi ptr [ %i.cr, %bb.j ], [ %i.bv, %bb.h ] ; 2 uses
  %i.bz = phi ptr [ %i.co, %bb.j ], [ %i.bs, %bb.h ] ; 2 uses
  %i.ca = phi ptr [ %i.cn, %bb.j ], [ %i.br, %bb.h ] ; 2 uses
  %.02548.i30 = phi i32 [ %i.cj, %bb.j ], [ 1, %bb.h ] ; 2 uses
  %.02747.i31 = phi i32 [ %i.cl, %bb.j ], [ %i.bp, %bb.h ]
  %.02946.i32 = phi ptr [ %spec.select.i34, %bb.j ], [ null, %bb.h ] ; 4 uses
  %i.cb = icmp eq ptr %i.bz, inttoptr (i64 -8 to ptr)
  %i.cc = icmp eq ptr %i.by, inttoptr (i64 -8 to ptr)
  %i.cd = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %i.cd, label %bb.i, label %bb.j, !prof !53

bb.i:                                             ; preds = %.lr.ph.i29
  %.not.i37 = icmp eq ptr %.02946.i32, null
  %i.ce = select i1 %.not.i37, ptr %i.ca, ptr %.02946.i32
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit38

bb.j:                                             ; preds = %.lr.ph.i29
  %i.cf = icmp eq ptr %i.bz, inttoptr (i64 -16 to ptr)
  %i.cg = icmp eq ptr %i.by, inttoptr (i64 -16 to ptr)
  %i.ch = select i1 %i.cf, i1 %i.cg, i1 false
  %i.ci = icmp eq ptr %.02946.i32, null
  %or.cond.not.i33 = select i1 %i.ch, i1 %i.ci, i1 false
  %spec.select.i34 = select i1 %or.cond.not.i33, ptr %i.ca, ptr %.02946.i32
  %i.cj = add i32 %.02548.i30, 1
  %i.ck = add i32 %.02747.i31, %.02548.i30
  %i.cl = and i32 %i.ck, %i.bo                    ; 2 uses
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.cm ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !211 ; 2 uses
  %i.cp = icmp eq ptr %i.v, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.y
  %i.ct = select i1 %i.cp, i1 %i.cs, i1 false
  br i1 %i.ct, label %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i, label %.lr.ph.i29, !prof !54, !llvm.loop !235

._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i: ; preds = %bb.j, %bb.h
  %i.cu = phi i64 [ %i.bq, %bb.h ], [ %i.cm, %bb.j ]
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.cu
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit38: ; preds = %bb.i, %.lr.ph.i
  %.sink.i35 = phi ptr [ %i.ce, %bb.i ], [ null, %.lr.ph.i ]
  %i.cw = lshr i32 %i.z, 1                        ; 2 uses
  %i.cx = shl i32 %i.cw, 2
  %i.cy = add i32 %i.cx, 4
  %i.cz = mul i32 %i.ag, 3
  %.not.i22 = icmp ult i32 %i.cy, %i.cz
  br i1 %.not.i22, label %bb.l, label %bb.k, !prof !53

bb.k:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit38
  %i.da = shl i32 %i.ag, 1
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %i.u, i32 noundef %i.da)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.db = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.n

bb.l:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit38
  %i.dd = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !207
  %.neg.i24 = xor i32 %i.cw, -1
  %.neg13.i25 = add i32 %i.ag, %.neg.i24
  %i.df = sub i32 %.neg13.i25, %i.de
  %i.dg = lshr i32 %i.ag, 3
  %.not9.i26 = icmp ugt i32 %i.df, %i.dg
  br i1 %.not9.i26, label %bb.n, label %bb.m, !prof !53

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %i.u, i32 noundef %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.dh = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.0.i23 = phi ptr [ %.sink.i35, %bb.l ], [ %i.di, %bb.m ], [ %i.dc, %bb.k ] ; 4 uses
  %i.dj = load i32, ptr %i.u, align 8             ; 2 uses
  %i.dk = and i32 %i.dj, -2
  %i.dl = add i32 %i.dk, 2
  %i.dm = and i32 %i.dj, 1
  %i.dn = or disjoint i32 %i.dl, %i.dm
  store i32 %i.dn, ptr %i.u, align 8
  %i.do = load ptr, ptr %.0.i23, align 8, !tbaa !211
  %i.dp = icmp eq ptr %i.do, inttoptr (i64 -8 to ptr)
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i23, i64 8 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = icmp eq ptr %i.dr, inttoptr (i64 -8 to ptr)
  %i.dt = select i1 %i.dp, i1 %i.ds, i1 false
  br i1 %i.dt, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.du = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !207
  %i.dw = add i32 %i.dv, -1
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !207
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27: ; preds = %bb.n, %bb.o
  %i.dx = load ptr, ptr %3, align 8, !tbaa !32
  store ptr %i.dx, ptr %.0.i23, align 8, !tbaa !211
  %i.dy = load ptr, ptr %i.g, align 8, !tbaa !32
  store ptr %i.dy, ptr %i.dq, align 8, !tbaa !214
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i23, i64 16
  store i32 0, ptr %i.dz, align 8, !tbaa !3
  %.pre = load ptr, ptr %5, align 8, !tbaa !240   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre66 = load i32, ptr %.phi.trans.insert, align 8
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i
  %i.ea = phi i32 [ %.pre66, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27 ], [ %i.af, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ]
  %i.eb = phi ptr [ %.pre, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27 ], [ %i.u, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ] ; 10 uses
  %i.ec = phi i32 [ 0, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27 ], [ %.pre.i.i, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ]
end_hunk_0
