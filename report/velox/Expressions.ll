Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Expressions?download=true
inline.NumInlined: 7937
inline.NumDeleted: 2595
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !93
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #34, !inline_history !707
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #34, !inline_history !707
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !110
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, !prof !51

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #34
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #34, !inline_history !708
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !110  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !110
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #34, !inline_history !708
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZNK8facebook5velox7Variant21throwCheckIsKindErrorENS0_8TypeKindE(ptr noundef nonnull align 8 dereferenceable(10), i8 noundef signext) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZNK8facebook5velox7Variant18throwCheckPtrErrorEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr { ptr, i64 } @_ZNK5folly7dynamic4findENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !39     ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 5
  br i1 %.not.i.not.i.i, label %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @_ZN5folly7dynamic8TypeInfoINS0_10ObjectImplEE4nameE, align 8, !tbaa !68
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.d, i32 noundef %i.c) #15
  unreachable

_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !223
  %i.g = lshr i64 %i.f, 8                         ; 2 uses
  switch i64 %i.g, label %bb.e [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !711  ; 3 uses
  %i.j = and i64 %i.i, -8
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  %i.l = shl i64 %i.i, 1
  %i.m = and i64 %i.l, 14
  %i.n = lshr i64 %i.i, 3
  %i.o = and i64 %i.n, 1
  %i.p = or disjoint i64 %i.m, %i.o               ; 2 uses
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !713  ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !39
  %i.s = icmp eq i32 %i.r, 6
  br i1 %i.s, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread, !prof !126

_ZNK5folly7dynamic11stringPieceEv.exit.i.i:       ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !55   ; 2 uses
  %i.x = ptrtoint ptr %2 to i64
  %i.y = ptrtoint ptr %1 to i64
  %i.z = sub i64 %i.x, %i.y
  %.not.i.i.i.i = icmp eq i64 %i.z, %i.w
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread

bb.d:                                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i
  %i.aa = icmp eq ptr %2, %1
  br i1 %i.aa, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit: ; preds = %bb.d
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %i.u, i64 %i.w)
  %i.ab = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ab, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread: ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, %bb.c, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit

bb.e:                                             ; preds = %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = ptrtoint ptr %2 to i64
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 0, ptr %i.b, align 8, !tbaa !90
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %1, i64 noundef %i.af, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !90  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = lshr i64 %i.ag, 56
  %i.ai = or i64 %i.ah, 128                       ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = trunc nuw i64 %i.ai to i8
  %i.am = insertelement <16 x i8> poison, i8 %i.al, i64 0
  %i.an = shufflevector <16 x i8> %i.am, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !223
  %i.ap = and i64 %i.ao, 255                      ; 3 uses
  %i.aq = shl nuw i64 1, %i.ap                    ; 2 uses
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !47 ; 3 uses
  %i.as = icmp eq ptr %2, %1
  %.fr = freeze i1 %i.as
  br i1 %.fr, label %.split54.us, label %.split54, !llvm.loop !709

.split54.us:                                      ; preds = %bb.e, %bb.g
  %.023.i53.us = phi i64 [ %i.bp, %bb.g ], [ %i.aq, %bb.e ]
  %.025.i52.us = phi i64 [ %i.bq, %bb.g ], [ %i.ag, %bb.e ] ; 2 uses
  %i.at = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i52.us, i64 range(i64 0, 256) %i.ap) ; 2 uses
  %i.au = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %i.at ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.aw, i32 0, i32 3, i32 1)
  %i.ax = load <16 x i8>, ptr %i.au, align 16     ; 2 uses
  %i.ay = icmp eq <16 x i8> %i.ax, %i.an
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 16383                    ; 2 uses
  %.not45.us = icmp eq i16 %i.ba, 0
  %i.bb = extractelement <16 x i8> %i.ax, i64 15
  br i1 %.not45.us, label %.critedge.i._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split54.us
  %i.bc = zext nneg i16 %i.ba to i32
  %i.bd = icmp ne ptr %i.au, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bd)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11.us.us, %.lr.ph.us
  %.sroa.019.046.us.us = phi i32 [ %i.bc, %.lr.ph.us ], [ %i.bg, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11.us.us ] ; 3 uses
  %i.be = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.046.us.us, i1 true)
  %i.bf = add nsw i32 %.sroa.019.046.us.us, -1
  %i.bg = and i32 %i.bf, %.sroa.019.046.us.us     ; 2 uses
  %i.bh = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !713 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !39
  %i.bl = icmp eq i32 %i.bk, 6
  br i1 %i.bl, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11.us.us, !prof !126

_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us: ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !55
  %.not.i.i.i.i9.us.us = icmp eq i64 %i.af, %i.bn
  br i1 %.not.i.i.i.i9.us.us, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11.us.us, !prof !224

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11.us.us: ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us, %bb.f
  %.not.us.us = icmp eq i32 %i.bg, 0
  br i1 %.not.us.us, label %.critedge.i._crit_edge.split.us.us, label %bb.f, !llvm.loop !709

.critedge.i._crit_edge.split.us.us:               ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11.us.us, %.split54.us
  %i.bo = icmp eq i8 %i.bb, 0
  br i1 %i.bo, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %bb.g, !prof !126

bb.g:                                             ; preds = %.critedge.i._crit_edge.split.us.us
  %i.bp = add i64 %.023.i53.us, -1                ; 2 uses
  %i.bq = add i64 %i.ak, %.025.i52.us
  %.not.i.us = icmp eq i64 %i.bp, 0
  br i1 %.not.i.us, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %.split54.us, !llvm.loop !710

.split54:                                         ; preds = %bb.e, %bb.i
  %.023.i53 = phi i64 [ %i.cq, %bb.i ], [ %i.aq, %bb.e ]
  %.025.i52 = phi i64 [ %i.cr, %bb.i ], [ %i.ag, %bb.e ] ; 2 uses
  %i.br = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i52, i64 range(i64 0, 256) %i.ap) ; 2 uses
  %i.bs = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %i.br ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1)
  %i.bv = load <16 x i8>, ptr %i.bs, align 16     ; 2 uses
  %i.bw = icmp eq <16 x i8> %i.bv, %i.an
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %i.by = and i16 %i.bx, 16383                    ; 2 uses
  %.not45 = icmp eq i16 %i.by, 0
  %i.bz = extractelement <16 x i8> %i.bv, i64 15
  br i1 %.not45, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split54
  %i.ca = zext nneg i16 %i.by to i32
  %i.cb = icmp ne ptr %i.bs, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cb)
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.019.046 = phi i32 [ %i.ca, %.lr.ph ], [ %i.ce, %.critedge.i.backedge ] ; 3 uses
  %i.cc = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.046, i1 true)
  %i.cd = add nsw i32 %.sroa.019.046, -1
  %i.ce = and i32 %i.cd, %.sroa.019.046           ; 2 uses
  %i.cf = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !713 ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !39
  %i.cj = icmp eq i32 %i.ci, 6
  br i1 %i.cj, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8, label %.critedge.i.backedge, !prof !126

_ZNK5folly7dynamic11stringPieceEv.exit.i.i8:      ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !55
  %.not.i.i.i.i9 = icmp eq i64 %i.af, %i.cl
  br i1 %.not.i.i.i.i9, label %.split, label %.critedge.i.backedge, !prof !224

.split:                                           ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !53
  %bcmp.i.i.i.i10 = call i32 @bcmp(ptr %1, ptr %i.cn, i64 %i.af)
  %i.co = icmp eq i32 %bcmp.i.i.i.i10, 0
  br i1 %i.co, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit, label %.critedge.i.backedge, !prof !714

.critedge.i.backedge:                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8, %bb.h, %.split
  %.not = icmp eq i32 %i.ce, 0
  br i1 %.not, label %.critedge.i._crit_edge.split, label %bb.h, !llvm.loop !709

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split54
  %i.cp = icmp eq i8 %i.bz, 0
  br i1 %i.cp, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %bb.i, !prof !126

bb.i:                                             ; preds = %.critedge.i._crit_edge.split
  %i.cq = add i64 %.023.i53, -1                   ; 2 uses
  %i.cr = add i64 %i.ak, %.025.i52
  %.not.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %.split54, !llvm.loop !710

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit: ; preds = %.split, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us
  %.us-phi = phi i64 [ %i.bh, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us ], [ %i.cf, %.split ] ; 2 uses
  %i.cs = phi i64 [ %i.at, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us ], [ %i.br, %.split ]
  %i.ct = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.us-phi
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit: ; preds = %bb.i, %.critedge.i._crit_edge.split, %bb.g, %.critedge.i._crit_edge.split.us.us, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit, %bb.d, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit, %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit
  %.sroa.7.1 = phi i64 [ %i.p, %bb.d ], [ %i.g, %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit ], [ 0, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread ], [ %i.p, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ %.us-phi, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit ], [ 0, %bb.g ], [ 0, %.critedge.i._crit_edge.split.us.us ], [ 0, %.critedge.i._crit_edge.split ], [ 0, %bb.i ]
  %.sroa.018.1 = phi ptr [ %i.k, %bb.d ], [ null, %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit ], [ null, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread ], [ %i.k, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ %i.cv, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit ], [ null, %bb.g ], [ null, %.critedge.i._crit_edge.split.us.us ], [ null, %.critedge.i._crit_edge.split ], [ null, %bb.i ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.018.1, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.7.1, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN5folly5RangeIPKcEEEclINS_17__normal_iteratorIPKNS2_7dynamicESt6vectorISB_SaISB_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::dynamic", align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.a = load ptr, ptr %0, align 8, !tbaa !716, !nonnull !89, !align !204 ; 2 uses
  store i32 6, ptr %2, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !718  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !719  ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g                       ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !50
  %i.j = icmp eq ptr %i.c, null
  %i.k = icmp ne ptr %i.e, null
  %or.cond.i.i = and i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.40) #35
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.h, 15
  br i1 %i.l, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = icmp slt i64 %i.h, 0
  br i1 %i.m, label %.noexc.i.i, label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #35
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw i64 %i.h, 1                      ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %.noexc9.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !51

.noexc9.i.i:                                      ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #35
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.p = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #36 ; 2 uses
  store ptr %i.p, ptr %i.b, align 8, !tbaa !53
  store i64 %i.h, ptr %i.i, align 8, !tbaa !54
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.b
  %i.q = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.i, %bb.b ] ; 3 uses
  switch i64 %i.h, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.c, align 1, !tbaa !54
  store i8 %i.r, ptr %i.q, align 1, !tbaa !54
  br label %_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.c, i64 %i.h, i1 false)
  br label %_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit

_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.h, ptr %i.s, align 8, !tbaa !55
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.t, align 1, !tbaa !54
  %i.u = invoke noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret i1 %i.u

bb.h:                                             ; preds = %_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %i.v
}

declare noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

declare void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.bmi.bzhi.64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #22

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNKR5folly7dynamic2atENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40), ptr, ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox7Variant11dynamicFreeEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.142, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !119    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !120
  switch i8 %i.c, label %bb.l [
    i8 33, label %bb.b
    i8 35, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN8facebook5velox7Variant12typedDestroyILb1ELNS0_8TypeKindE33EEEvv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !104  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN8facebook5velox6detail11TypeStorageINS0_12UnknownValueELNS0_8TypeKindE33ELb1EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !92
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !93
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #34, !inline_history !720
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #34, !inline_history !720
end_hunk_0
begin_hunk_1_@_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox4core15ConcatTypedExprESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox4core15ConcatTypedExprEEEvRS0_PT_.exit
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox4core15ConcatTypedExprEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #34, !inline_history !1989
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox4core15ConcatTypedExprESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4core15ConcatTypedExprESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox4core15ConcatTypedExprESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !239  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !54
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #34
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13ISerializable22deserializeAsUniquePtrINS0_4TypeEvEEDaRKN5folly7dynamicE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNKR5folly7dynamic2atENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nonnull @.str, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 4))
  call void @_ZNK5folly7dynamic6asImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11Ev()
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZNK8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10unique_ptrINS0_13ISerializableESt14default_deleteIS9_EERKN5folly7dynamicEEE3HasERKS7_(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  invoke void @_ZNK8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10unique_ptrINS0_13ISerializableESt14default_deleteIS9_EERKN5folly7dynamicEEE14CreateFunctionISH_EclERKS7_SG_(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %2, align 8, !tbaa !53     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8, !tbaa !54
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %i.e

bb.f:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !265
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.k = load ptr, ptr %2, align 8, !tbaa !53     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.g
  %i.n = load i64, ptr %i.l, align 8, !tbaa !54
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10shared_ptrIKNS0_13ISerializableEERKN5folly7dynamicEPvEE3HasERKS7_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !223
  %i.c = lshr i64 %i.b, 8
  switch i64 %i.c, label %bb.d [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !267
  %i.f = and i64 %i.e, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !55   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !55
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit: ; preds = %bb.c
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.p = load ptr, ptr %1, align 8, !tbaa !53
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.o, i64 %i.j)
  %i.q = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.q, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17: ; preds = %bb.b, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.r = tail call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.s = lshr i64 %i.r, 56
  %i.t = or i64 %i.s, 128                         ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = trunc nuw i64 %i.t to i8
  %i.x = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.z = load i64, ptr %i.a, align 8, !tbaa !223
  %i.aa = and i64 %i.z, 255                       ; 2 uses
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = load ptr, ptr %0, align 8, !tbaa !271
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  %.023.i39 = phi i64 [ %i.ab, %bb.d ], [ %i.bn, %bb.f ]
  %.025.i38 = phi i64 [ %i.r, %bb.d ], [ %i.bo, %bb.f ] ; 2 uses
  %i.ae = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i38, i64 range(i64 0, 256) %i.aa)
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %i.ae ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ah, i32 0, i32 3, i32 1)
  %i.ai = load <16 x i8>, ptr %i.af, align 16     ; 2 uses
  %i.aj = icmp eq <16 x i8> %i.ai, %i.y
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = and i16 %i.ak, 16383                    ; 2 uses
  %.not36 = icmp eq i16 %i.al, 0
  %i.am = extractelement <16 x i8> %i.ai, i64 15
  br i1 %.not36, label %.critedge.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.an = zext nneg i16 %i.al to i32              ; 2 uses
  %i.ao = icmp ne ptr %i.af, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = load i64, ptr %i.ad, align 8, !tbaa !55
  %.fr40 = freeze i64 %i.ap                       ; 3 uses
  %i.aq = icmp eq i64 %.fr40, 0
  br i1 %i.aq, label %.lr.ph.split.us, label %.lr.ph.split, !llvm.loop !22

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.i.backedge.us
  %.sroa.013.037.us = phi i32 [ %i.az, %.critedge.i.backedge.us ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.ar = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.013.037.us, i1 true)
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !87
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !55
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %.critedge.i.backedge.us, !prof !224

.critedge.i.backedge.us:                          ; preds = %.lr.ph.split.us
  %i.ay = add nsw i32 %.sroa.013.037.us, -1
  %i.az = and i32 %i.ay, %.sroa.013.037.us        ; 2 uses
  %.not.us = icmp eq i32 %i.az, 0
  br i1 %.not.us, label %.critedge.i._crit_edge, label %.lr.ph.split.us, !llvm.loop !22

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.013.037 = phi i32 [ %i.bc, %.critedge.i.backedge ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.ba = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.013.037, i1 true)
  %i.bb = add nsw i32 %.sroa.013.037, -1
  %i.bc = and i32 %i.bb, %.sroa.013.037           ; 2 uses
  %i.bd = zext nneg i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !87 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !55
  %i.bi = icmp eq i64 %.fr40, %i.bh
  br i1 %i.bi, label %.split, label %.critedge.i.backedge, !prof !224

.split:                                           ; preds = %.lr.ph.split
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !53
  %i.bk = load ptr, ptr %1, align 8, !tbaa !53
  %bcmp.i.i.i9 = tail call i32 @bcmp(ptr %i.bk, ptr %i.bj, i64 %.fr40)
  %i.bl = icmp eq i32 %bcmp.i.i.i9, 0
  br i1 %i.bl, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %.critedge.i.backedge, !prof !272

.critedge.i.backedge:                             ; preds = %.split, %.lr.ph.split
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %.critedge.i._crit_edge, label %.lr.ph.split, !llvm.loop !22

.critedge.i._crit_edge:                           ; preds = %.critedge.i.backedge, %.critedge.i.backedge.us, %bb.e
  %i.bm = icmp eq i8 %i.am, 0
  br i1 %i.bm, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %bb.f, !prof !126

bb.f:                                             ; preds = %.critedge.i._crit_edge
  %i.bn = add i64 %.023.i39, -1                   ; 2 uses
  %i.bo = add i64 %i.v, %.025.i38
  %.not.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %bb.e, !llvm.loop !23

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit: ; preds = %.critedge.i._crit_edge, %bb.f, %.split, %.lr.ph.split.us, %bb.c, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit, %bb.a
  %.sroa.012.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17 ], [ true, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit ], [ true, %.lr.ph.split.us ], [ true, %.split ], [ false, %bb.f ], [ false, %.critedge.i._crit_edge ]
  ret i1 %.sroa.012.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10shared_ptrIKNS0_13ISerializableEERKN5folly7dynamicEPvEE14CreateFunctionISH_EclERKS7_SF_SG_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.541") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %4) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1995, !nonnull !89, !align !204 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !223
  %i.e = lshr i64 %i.d, 8
  switch i64 %i.e, label %bb.d [
    i64 0, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !267
  %i.h = and i64 %i.g, -8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !55   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !55
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread43, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit: ; preds = %bb.c
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.r = load ptr, ptr %2, align 8, !tbaa !53
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.r, ptr %i.q, i64 %i.l)
  %i.s = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.s, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread43, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.t = tail call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.u = lshr i64 %i.t, 56
  %i.v = or i64 %i.u, 128                         ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = or disjoint i64 %i.w, 1
  %i.y = trunc nuw i64 %i.v to i8
  %i.z = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !223
  %i.ac = and i64 %i.ab, 255                      ; 2 uses
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !271
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  %.023.i.i65 = phi i64 [ %i.ad, %bb.d ], [ %i.bp, %bb.f ]
  %.025.i.i64 = phi i64 [ %i.t, %bb.d ], [ %i.bq, %bb.f ] ; 2 uses
  %i.ag = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i.i64, i64 range(i64 0, 256) %i.ac)
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr %i.ae, i64 %i.ag ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aj, i32 0, i32 3, i32 1)
  %i.ak = load <16 x i8>, ptr %i.ah, align 16     ; 2 uses
  %i.al = icmp eq <16 x i8> %i.ak, %i.aa
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = and i16 %i.am, 16383                    ; 2 uses
  %.not58 = icmp eq i16 %i.an, 0
  %i.ao = extractelement <16 x i8> %i.ak, i64 15
  br i1 %.not58, label %.critedge.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ap = zext nneg i16 %i.an to i32              ; 2 uses
  %i.aq = icmp ne ptr %i.ah, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = load i64, ptr %i.af, align 8, !tbaa !55
  %.fr66 = freeze i64 %i.ar                       ; 3 uses
  %i.as = icmp eq i64 %.fr66, 0
  br i1 %i.as, label %.lr.ph.split.us, label %.lr.ph.split, !llvm.loop !22

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.i.i.backedge.us
  %.sroa.016.059.us = phi i32 [ %i.bb, %.critedge.i.i.backedge.us ], [ %i.ap, %.lr.ph ] ; 3 uses
  %i.at = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.016.059.us, i1 true)
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !87 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !55
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread43, label %.critedge.i.i.backedge.us, !prof !224

.critedge.i.i.backedge.us:                        ; preds = %.lr.ph.split.us
  %i.ba = add nsw i32 %.sroa.016.059.us, -1
  %i.bb = and i32 %i.ba, %.sroa.016.059.us        ; 2 uses
  %.not.us = icmp eq i32 %i.bb, 0
  br i1 %.not.us, label %.critedge.i.i._crit_edge, label %.lr.ph.split.us, !llvm.loop !22

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge.i.i.backedge
  %.sroa.016.059 = phi i32 [ %i.be, %.critedge.i.i.backedge ], [ %i.ap, %.lr.ph ] ; 3 uses
  %i.bc = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.016.059, i1 true)
  %i.bd = add nsw i32 %.sroa.016.059, -1
  %i.be = and i32 %i.bd, %.sroa.016.059           ; 2 uses
  %i.bf = zext nneg i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !87 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !55
  %i.bk = icmp eq i64 %.fr66, %i.bj
  br i1 %i.bk, label %.split, label %.critedge.i.i.backedge, !prof !224

.split:                                           ; preds = %.lr.ph.split
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !53
  %i.bm = load ptr, ptr %2, align 8, !tbaa !53
  %bcmp.i.i.i4 = tail call i32 @bcmp(ptr %i.bm, ptr %i.bl, i64 %.fr66)
  %i.bn = icmp eq i32 %bcmp.i.i.i4, 0
  br i1 %i.bn, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread43, label %.critedge.i.i.backedge, !prof !272

.critedge.i.i.backedge:                           ; preds = %.split, %.lr.ph.split
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %.critedge.i.i._crit_edge, label %.lr.ph.split, !llvm.loop !22

.critedge.i.i._crit_edge:                         ; preds = %.critedge.i.i.backedge, %.critedge.i.i.backedge.us, %bb.e
  %i.bo = icmp eq i8 %i.ao, 0
  br i1 %i.bo, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread, label %bb.f, !prof !126

bb.f:                                             ; preds = %.critedge.i.i._crit_edge
  %i.bp = add i64 %.023.i.i65, -1                 ; 2 uses
  %i.bq = add i64 %i.x, %.025.i.i64
  %.not.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread, label %bb.e, !llvm.loop !23

_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread: ; preds = %bb.f, %.critedge.i.i._crit_edge, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit, %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.h

_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread43: ; preds = %.split, %.lr.ph.split.us, %bb.c, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit
  %i.br = phi ptr [ %i.j, %bb.c ], [ %i.j, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit ], [ %i.aw, %.lr.ph.split.us ], [ %i.bh, %.split ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %4, ptr %i.a, align 8, !tbaa !73, !noalias !1996
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !77, !noalias !1996
  %.not.i.i8 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i8, label %bb.g, label %_ZNKSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEPvEEclES9_SA_.exit

bb.g:                                             ; preds = %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread43
  tail call void @_ZSt25__throw_bad_function_callv() #35, !noalias !1996
  unreachable

_ZNKSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEPvEEclES9_SA_.exit: ; preds = %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread43
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !76, !noalias !1996
  call void %i.bw(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.541") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !1992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEPvEEclES9_SA_.exit, %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread
  ret void
}

declare noundef nonnull align 8 dereferenceable(128) ptr @_ZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11Ev() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10shared_ptrIKNS0_13ISerializableEERKN5folly7dynamicEEE3HasERKS7_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !223
  %i.c = lshr i64 %i.b, 8
  switch i64 %i.c, label %bb.d [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SL_EEEEERKT_.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !274
  %i.f = and i64 %i.e, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !276  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !55   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !55
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit.thread17

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SL_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit: ; preds = %bb.c
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.p = load ptr, ptr %1, align 8, !tbaa !53
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.o, i64 %i.j)
  %i.q = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.q, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SL_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit.thread17

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit.thread17: ; preds = %bb.b, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SL_EEEEERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.r = tail call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.s = lshr i64 %i.r, 56
  %i.t = or i64 %i.s, 128                         ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = trunc nuw i64 %i.t to i8
  %i.x = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.z = load i64, ptr %i.a, align 8, !tbaa !223
  %i.aa = and i64 %i.z, 255                       ; 2 uses
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = load ptr, ptr %0, align 8, !tbaa !280
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  %.023.i39 = phi i64 [ %i.ab, %bb.d ], [ %i.bn, %bb.f ]
  %.025.i38 = phi i64 [ %i.r, %bb.d ], [ %i.bo, %bb.f ] ; 2 uses
  %i.ae = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i38, i64 range(i64 0, 256) %i.aa)
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %i.ae ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ah, i32 0, i32 3, i32 1)
  %i.ai = load <16 x i8>, ptr %i.af, align 16     ; 2 uses
  %i.aj = icmp eq <16 x i8> %i.ai, %i.y
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = and i16 %i.ak, 16383                    ; 2 uses
  %.not36 = icmp eq i16 %i.al, 0
  %i.am = extractelement <16 x i8> %i.ai, i64 15
  br i1 %.not36, label %.critedge.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.an = zext nneg i16 %i.al to i32              ; 2 uses
  %i.ao = icmp ne ptr %i.af, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = load i64, ptr %i.ad, align 8, !tbaa !55
  %.fr40 = freeze i64 %i.ap                       ; 3 uses
  %i.aq = icmp eq i64 %.fr40, 0
  br i1 %i.aq, label %.lr.ph.split.us, label %.lr.ph.split, !llvm.loop !24

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.i.backedge.us
  %.sroa.013.037.us = phi i32 [ %i.az, %.critedge.i.backedge.us ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.ar = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.013.037.us, i1 true)
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !276
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !55
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SL_EEEEERKT_.exit, label %.critedge.i.backedge.us, !prof !224

.critedge.i.backedge.us:                          ; preds = %.lr.ph.split.us
  %i.ay = add nsw i32 %.sroa.013.037.us, -1
  %i.az = and i32 %i.ay, %.sroa.013.037.us        ; 2 uses
  %.not.us = icmp eq i32 %i.az, 0
  br i1 %.not.us, label %.critedge.i._crit_edge, label %.lr.ph.split.us, !llvm.loop !24

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.013.037 = phi i32 [ %i.bc, %.critedge.i.backedge ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.ba = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.013.037, i1 true)
  %i.bb = add nsw i32 %.sroa.013.037, -1
  %i.bc = and i32 %i.bb, %.sroa.013.037           ; 2 uses
  %i.bd = zext nneg i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !276 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !55
  %i.bi = icmp eq i64 %.fr40, %i.bh
  br i1 %i.bi, label %.split, label %.critedge.i.backedge, !prof !224

.split:                                           ; preds = %.lr.ph.split
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !53
  %i.bk = load ptr, ptr %1, align 8, !tbaa !53
  %bcmp.i.i.i9 = tail call i32 @bcmp(ptr %i.bk, ptr %i.bj, i64 %.fr40)
  %i.bl = icmp eq i32 %bcmp.i.i.i9, 0
  br i1 %i.bl, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SL_EEEEERKT_.exit, label %.critedge.i.backedge, !prof !272

.critedge.i.backedge:                             ; preds = %.split, %.lr.ph.split
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %.critedge.i._crit_edge, label %.lr.ph.split, !llvm.loop !24

.critedge.i._crit_edge:                           ; preds = %.critedge.i.backedge, %.critedge.i.backedge.us, %bb.e
  %i.bm = icmp eq i8 %i.am, 0
  br i1 %i.bm, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SL_EEEEERKT_.exit, label %bb.f, !prof !126

bb.f:                                             ; preds = %.critedge.i._crit_edge
  %i.bn = add i64 %.023.i39, -1                   ; 2 uses
  %i.bo = add i64 %i.v, %.025.i38
  %.not.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SL_EEEEERKT_.exit, label %bb.e, !llvm.loop !25

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SL_EEEEERKT_.exit: ; preds = %.critedge.i._crit_edge, %bb.f, %.split, %.lr.ph.split.us, %bb.c, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit.thread17, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit, %bb.a
  %.sroa.012.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit.thread17 ], [ true, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit ], [ true, %.lr.ph.split.us ], [ true, %.split ], [ false, %bb.f ], [ false, %.critedge.i._crit_edge ]
  ret i1 %.sroa.012.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10shared_ptrIKNS0_13ISerializableEERKN5folly7dynamicEEE14CreateFunctionISG_EclERKS7_SF_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.541") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2002, !nonnull !89, !align !204 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !223
  %i.d = lshr i64 %i.c, 8
  switch i64 %i.d, label %bb.d [
    i64 0, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !274
  %i.g = and i64 %i.f, -8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !276  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !55   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !55
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit: ; preds = %bb.c
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.q = load ptr, ptr %2, align 8, !tbaa !53
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.p, i64 %i.k)
  %i.r = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.r, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.s = tail call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.t = lshr i64 %i.s, 56
  %i.u = or i64 %i.t, 128                         ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = or disjoint i64 %i.v, 1
  %i.x = trunc nuw i64 %i.u to i8
  %i.y = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !223
  %i.ab = and i64 %i.aa, 255                      ; 2 uses
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !280
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  %.023.i.i64 = phi i64 [ %i.ac, %bb.d ], [ %i.bo, %bb.f ]
  %.025.i.i63 = phi i64 [ %i.s, %bb.d ], [ %i.bp, %bb.f ] ; 2 uses
  %i.af = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i.i63, i64 range(i64 0, 256) %i.ab)
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.ad, i64 %i.af ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ai, i32 0, i32 3, i32 1)
  %i.aj = load <16 x i8>, ptr %i.ag, align 16     ; 2 uses
  %i.ak = icmp eq <16 x i8> %i.aj, %i.z
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = and i16 %i.al, 16383                    ; 2 uses
  %.not57 = icmp eq i16 %i.am, 0
  %i.an = extractelement <16 x i8> %i.aj, i64 15
  br i1 %.not57, label %.critedge.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ao = zext nneg i16 %i.am to i32              ; 2 uses
  %i.ap = icmp ne ptr %i.ag, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = load i64, ptr %i.ae, align 8, !tbaa !55
  %.fr65 = freeze i64 %i.aq                       ; 3 uses
  %i.ar = icmp eq i64 %.fr65, 0
  br i1 %i.ar, label %.lr.ph.split.us, label %.lr.ph.split, !llvm.loop !24

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.i.i.backedge.us
  %.sroa.015.058.us = phi i32 [ %i.ba, %.critedge.i.i.backedge.us ], [ %i.ao, %.lr.ph ] ; 3 uses
  %i.as = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.015.058.us, i1 true)
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !276 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !55
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42, label %.critedge.i.i.backedge.us, !prof !224

.critedge.i.i.backedge.us:                        ; preds = %.lr.ph.split.us
  %i.az = add nsw i32 %.sroa.015.058.us, -1
  %i.ba = and i32 %i.az, %.sroa.015.058.us        ; 2 uses
  %.not.us = icmp eq i32 %i.ba, 0
  br i1 %.not.us, label %.critedge.i.i._crit_edge, label %.lr.ph.split.us, !llvm.loop !24

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge.i.i.backedge
  %.sroa.015.058 = phi i32 [ %i.bd, %.critedge.i.i.backedge ], [ %i.ao, %.lr.ph ] ; 3 uses
  %i.bb = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.015.058, i1 true)
  %i.bc = add nsw i32 %.sroa.015.058, -1
  %i.bd = and i32 %i.bc, %.sroa.015.058           ; 2 uses
  %i.be = zext nneg i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !276 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !55
  %i.bj = icmp eq i64 %.fr65, %i.bi
  br i1 %i.bj, label %.split, label %.critedge.i.i.backedge, !prof !224

.split:                                           ; preds = %.lr.ph.split
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !53
  %i.bl = load ptr, ptr %2, align 8, !tbaa !53
  %bcmp.i.i.i3 = tail call i32 @bcmp(ptr %i.bl, ptr %i.bk, i64 %.fr65)
  %i.bm = icmp eq i32 %bcmp.i.i.i3, 0
  br i1 %i.bm, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42, label %.critedge.i.i.backedge, !prof !272

.critedge.i.i.backedge:                           ; preds = %.split, %.lr.ph.split
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %.critedge.i.i._crit_edge, label %.lr.ph.split, !llvm.loop !24

.critedge.i.i._crit_edge:                         ; preds = %.critedge.i.i.backedge, %.critedge.i.i.backedge.us, %bb.e
  %i.bn = icmp eq i8 %i.an, 0
  br i1 %i.bn, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread, label %bb.f, !prof !126

bb.f:                                             ; preds = %.critedge.i.i._crit_edge
  %i.bo = add i64 %.023.i.i64, -1                 ; 2 uses
  %i.bp = add i64 %i.w, %.025.i.i63
  %.not.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread, label %bb.e, !llvm.loop !25

_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread: ; preds = %bb.f, %.critedge.i.i._crit_edge, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit, %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.h

_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42: ; preds = %.split, %.lr.ph.split.us, %bb.c, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit
  %i.bq = phi ptr [ %i.i, %bb.c ], [ %i.i, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit ], [ %i.av, %.lr.ph.split.us ], [ %i.bg, %.split ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !77, !noalias !2003
  %.not.i.i7 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i7, label %bb.g, label %_ZNKSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEclES9_.exit

bb.g:                                             ; preds = %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42
  tail call void @_ZSt25__throw_bad_function_callv() #35, !noalias !2003
  unreachable

_ZNKSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEclES9_.exit: ; preds = %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !2005, !noalias !2003
  tail call void %i.bv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.541") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %3), !inline_history !1999
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEclES9_.exit, %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread
  ret void
}

declare noundef nonnull align 8 dereferenceable(128) ptr @_ZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11Ev() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10unique_ptrINS0_13ISerializableESt14default_deleteIS9_EERKN5folly7dynamicEEE3HasERKS7_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !223
  %i.c = lshr i64 %i.b, 8
  switch i64 %i.c, label %bb.d [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !282
  %i.f = and i64 %i.e, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !284  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !55   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !55
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit: ; preds = %bb.c
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.p = load ptr, ptr %1, align 8, !tbaa !53
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.o, i64 %i.j)
  %i.q = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.q, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17: ; preds = %bb.b, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.r = tail call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.s = lshr i64 %i.r, 56
  %i.t = or i64 %i.s, 128                         ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = trunc nuw i64 %i.t to i8
  %i.x = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.z = load i64, ptr %i.a, align 8, !tbaa !223
  %i.aa = and i64 %i.z, 255                       ; 2 uses
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = load ptr, ptr %0, align 8, !tbaa !288
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  %.023.i39 = phi i64 [ %i.ab, %bb.d ], [ %i.bn, %bb.f ]
  %.025.i38 = phi i64 [ %i.r, %bb.d ], [ %i.bo, %bb.f ] ; 2 uses
  %i.ae = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i38, i64 range(i64 0, 256) %i.aa)
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %i.ae ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ah, i32 0, i32 3, i32 1)
  %i.ai = load <16 x i8>, ptr %i.af, align 16     ; 2 uses
  %i.aj = icmp eq <16 x i8> %i.ai, %i.y
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = and i16 %i.ak, 16383                    ; 2 uses
  %.not36 = icmp eq i16 %i.al, 0
  %i.am = extractelement <16 x i8> %i.ai, i64 15
  br i1 %.not36, label %.critedge.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.an = zext nneg i16 %i.al to i32              ; 2 uses
  %i.ao = icmp ne ptr %i.af, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = load i64, ptr %i.ad, align 8, !tbaa !55
  %.fr40 = freeze i64 %i.ap                       ; 3 uses
  %i.aq = icmp eq i64 %.fr40, 0
  br i1 %i.aq, label %.lr.ph.split.us, label %.lr.ph.split, !llvm.loop !26

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.i.backedge.us
  %.sroa.013.037.us = phi i32 [ %i.az, %.critedge.i.backedge.us ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.ar = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.013.037.us, i1 true)
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !284
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !55
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %.critedge.i.backedge.us, !prof !224

.critedge.i.backedge.us:                          ; preds = %.lr.ph.split.us
  %i.ay = add nsw i32 %.sroa.013.037.us, -1
  %i.az = and i32 %i.ay, %.sroa.013.037.us        ; 2 uses
  %.not.us = icmp eq i32 %i.az, 0
  br i1 %.not.us, label %.critedge.i._crit_edge, label %.lr.ph.split.us, !llvm.loop !26

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.013.037 = phi i32 [ %i.bc, %.critedge.i.backedge ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.ba = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.013.037, i1 true)
  %i.bb = add nsw i32 %.sroa.013.037, -1
  %i.bc = and i32 %i.bb, %.sroa.013.037           ; 2 uses
  %i.bd = zext nneg i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !284 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !55
  %i.bi = icmp eq i64 %.fr40, %i.bh
  br i1 %i.bi, label %.split, label %.critedge.i.backedge, !prof !224

.split:                                           ; preds = %.lr.ph.split
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !53
  %i.bk = load ptr, ptr %1, align 8, !tbaa !53
  %bcmp.i.i.i9 = tail call i32 @bcmp(ptr %i.bk, ptr %i.bj, i64 %.fr40)
  %i.bl = icmp eq i32 %bcmp.i.i.i9, 0
  br i1 %i.bl, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %.critedge.i.backedge, !prof !272

.critedge.i.backedge:                             ; preds = %.split, %.lr.ph.split
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %.critedge.i._crit_edge, label %.lr.ph.split, !llvm.loop !26

.critedge.i._crit_edge:                           ; preds = %.critedge.i.backedge, %.critedge.i.backedge.us, %bb.e
  %i.bm = icmp eq i8 %i.am, 0
  br i1 %i.bm, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %bb.f, !prof !126

bb.f:                                             ; preds = %.critedge.i._crit_edge
  %i.bn = add i64 %.023.i39, -1                   ; 2 uses
  %i.bo = add i64 %i.v, %.025.i38
  %.not.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %bb.e, !llvm.loop !27

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit: ; preds = %.critedge.i._crit_edge, %bb.f, %.split, %.lr.ph.split.us, %bb.c, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit, %bb.a
  %.sroa.012.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17 ], [ true, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit ], [ true, %.lr.ph.split.us ], [ true, %.split ], [ false, %bb.f ], [ false, %.critedge.i._crit_edge ]
  ret i1 %.sroa.012.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10unique_ptrINS0_13ISerializableESt14default_deleteIS9_EERKN5folly7dynamicEEE14CreateFunctionISH_EclERKS7_SG_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2011, !nonnull !89, !align !204 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !223
  %i.d = lshr i64 %i.c, 8
  switch i64 %i.d, label %bb.d [
    i64 0, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !282
  %i.g = and i64 %i.f, -8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !284  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !55   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !55
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit: ; preds = %bb.c
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.q = load ptr, ptr %2, align 8, !tbaa !53
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.p, i64 %i.k)
  %i.r = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.r, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.s = tail call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.t = lshr i64 %i.s, 56
  %i.u = or i64 %i.t, 128                         ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = or disjoint i64 %i.v, 1
  %i.x = trunc nuw i64 %i.u to i8
  %i.y = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !223
  %i.ab = and i64 %i.aa, 255                      ; 2 uses
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !288
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  %.023.i.i64 = phi i64 [ %i.ac, %bb.d ], [ %i.bo, %bb.f ]
  %.025.i.i63 = phi i64 [ %i.s, %bb.d ], [ %i.bp, %bb.f ] ; 2 uses
  %i.af = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i.i63, i64 range(i64 0, 256) %i.ab)
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.ad, i64 %i.af ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ai, i32 0, i32 3, i32 1)
  %i.aj = load <16 x i8>, ptr %i.ag, align 16     ; 2 uses
  %i.ak = icmp eq <16 x i8> %i.aj, %i.z
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = and i16 %i.al, 16383                    ; 2 uses
  %.not57 = icmp eq i16 %i.am, 0
  %i.an = extractelement <16 x i8> %i.aj, i64 15
  br i1 %.not57, label %.critedge.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ao = zext nneg i16 %i.am to i32              ; 2 uses
  %i.ap = icmp ne ptr %i.ag, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = load i64, ptr %i.ae, align 8, !tbaa !55
  %.fr65 = freeze i64 %i.aq                       ; 3 uses
  %i.ar = icmp eq i64 %.fr65, 0
  br i1 %i.ar, label %.lr.ph.split.us, label %.lr.ph.split, !llvm.loop !26

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.i.i.backedge.us
  %.sroa.015.058.us = phi i32 [ %i.ba, %.critedge.i.i.backedge.us ], [ %i.ao, %.lr.ph ] ; 3 uses
  %i.as = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.015.058.us, i1 true)
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !284 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !55
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42, label %.critedge.i.i.backedge.us, !prof !224

.critedge.i.i.backedge.us:                        ; preds = %.lr.ph.split.us
  %i.az = add nsw i32 %.sroa.015.058.us, -1
  %i.ba = and i32 %i.az, %.sroa.015.058.us        ; 2 uses
  %.not.us = icmp eq i32 %i.ba, 0
  br i1 %.not.us, label %.critedge.i.i._crit_edge, label %.lr.ph.split.us, !llvm.loop !26

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge.i.i.backedge
  %.sroa.015.058 = phi i32 [ %i.bd, %.critedge.i.i.backedge ], [ %i.ao, %.lr.ph ] ; 3 uses
  %i.bb = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.015.058, i1 true)
  %i.bc = add nsw i32 %.sroa.015.058, -1
  %i.bd = and i32 %i.bc, %.sroa.015.058           ; 2 uses
  %i.be = zext nneg i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !284 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !55
  %i.bj = icmp eq i64 %.fr65, %i.bi
  br i1 %i.bj, label %.split, label %.critedge.i.i.backedge, !prof !224

.split:                                           ; preds = %.lr.ph.split
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !53
  %i.bl = load ptr, ptr %2, align 8, !tbaa !53
  %bcmp.i.i.i3 = tail call i32 @bcmp(ptr %i.bl, ptr %i.bk, i64 %.fr65)
  %i.bm = icmp eq i32 %bcmp.i.i.i3, 0
  br i1 %i.bm, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42, label %.critedge.i.i.backedge, !prof !272

.critedge.i.i.backedge:                           ; preds = %.split, %.lr.ph.split
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %.critedge.i.i._crit_edge, label %.lr.ph.split, !llvm.loop !26

.critedge.i.i._crit_edge:                         ; preds = %.critedge.i.i.backedge, %.critedge.i.i.backedge.us, %bb.e
  %i.bn = icmp eq i8 %i.an, 0
  br i1 %i.bn, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread, label %bb.f, !prof !126

bb.f:                                             ; preds = %.critedge.i.i._crit_edge
  %i.bo = add i64 %.023.i.i64, -1                 ; 2 uses
  %i.bp = add i64 %i.w, %.025.i.i63
  %.not.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread, label %bb.e, !llvm.loop !27

_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread: ; preds = %bb.f, %.critedge.i.i._crit_edge, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit, %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !265
  br label %bb.h

_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42: ; preds = %.split, %.lr.ph.split.us, %bb.c, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit
  %i.bq = phi ptr [ %i.i, %bb.c ], [ %i.i, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit ], [ %i.av, %.lr.ph.split.us ], [ %i.bg, %.split ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !77, !noalias !2012
  %.not.i.i7 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i7, label %bb.g, label %_ZNKSt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteIS3_EERKN5folly7dynamicEEEclESA_.exit

bb.g:                                             ; preds = %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42
  tail call void @_ZSt25__throw_bad_function_callv() #35, !noalias !2012
  unreachable

_ZNKSt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteIS3_EERKN5folly7dynamicEEEclESA_.exit: ; preds = %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !2014, !noalias !2012
  tail call void %i.bv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %3), !inline_history !2008
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteIS3_EERKN5folly7dynamicEEEclESA_.exit, %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !53     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !55   ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 3 uses
  %i.e = icmp ult i64 %i.c, 17
  br i1 %i.e, label %bb.b, label %bb.f, !prof !126

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ugt i64 %i.c, 3
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = xor i64 %i.c, 4766890152743124950        ; 2 uses
  %i.h = icmp samesign ugt i64 %i.c, 7
  br i1 %i.h, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit, label %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 -8
  %.0.copyload.i.i = load i64, ptr %i.a, align 1
  %.0.copyload.i.i15 = load i64, ptr %i.i, align 1
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 -4
  %.0.copyload.i.i16 = load i32, ptr %i.a, align 1
  %i.k = zext i32 %.0.copyload.i.i16 to i64
  %.0.copyload.i.i17 = load i32, ptr %i.j, align 1
  %i.l = zext i32 %.0.copyload.i.i17 to i64
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.a, align 1, !tbaa !54
  %i.n = sext i8 %i.m to i64
  %i.o = shl nsw i64 %i.n, 45
  %i.p = getelementptr i8, ptr %i.d, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !54
  %i.r = sext i8 %i.q to i64
  %i.s = or i64 %i.o, %i.r
  %i.t = lshr i64 %i.c, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !54
  %i.w = sext i8 %i.v to i64
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

bb.f:                                             ; preds = %bb.a
  %i.x = icmp ugt i64 %i.c, 48
  br i1 %i.x, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2: ; preds = %bb.f, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2
  %.069.i = phi i64 [ %i.bc, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ %i.c, %bb.f ]
  %.067.i = phi i64 [ %i.ag, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.066.i = phi ptr [ %i.bb, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ %i.a, %bb.f ] ; 7 uses
  %.065.i = phi i64 [ %i.aq, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.0.i = phi i64 [ %i.ba, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.0.copyload.i.i18 = load i64, ptr %.066.i, align 1
  %i.y = xor i64 %.0.copyload.i.i18, 3257665815644502181
  %i.z = getelementptr inbounds nuw i8, ptr %.066.i, i64 8
  %.0.copyload.i.i19 = load i64, ptr %i.z, align 1
  %i.aa = xor i64 %.0.copyload.i.i19, %.067.i
  %i.ab = zext i64 %i.y to i128
  %i.ac = zext i64 %i.aa to i128
  %i.ad = mul nuw i128 %i.ac, %i.ab               ; 2 uses
  %i.ae = lshr i128 %i.ad, 64
  %i.af = xor i128 %i.ae, %i.ad
  %i.ag = trunc i128 %i.af to i64                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.066.i, i64 16
  %.0.copyload.i.i20 = load i64, ptr %i.ah, align 1
  %i.ai = xor i64 %.0.copyload.i.i20, -8378864009470890807
  %i.aj = getelementptr inbounds nuw i8, ptr %.066.i, i64 24
  %.0.copyload.i.i21 = load i64, ptr %i.aj, align 1
  %i.ak = xor i64 %.0.copyload.i.i21, %.065.i
  %i.al = zext i64 %i.ai to i128
  %i.am = zext i64 %i.ak to i128
  %i.an = mul nuw i128 %i.am, %i.al               ; 2 uses
  %i.ao = lshr i128 %i.an, 64
  %i.ap = xor i128 %i.ao, %i.an
  %i.aq = trunc i128 %i.ap to i64                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.066.i, i64 32
  %.0.copyload.i.i22 = load i64, ptr %i.ar, align 1
  %i.as = xor i64 %.0.copyload.i.i22, 5418857496715711651
  %i.at = getelementptr inbounds nuw i8, ptr %.066.i, i64 40
  %.0.copyload.i.i23 = load i64, ptr %i.at, align 1
  %i.au = xor i64 %.0.copyload.i.i23, %.0.i
  %i.av = zext i64 %i.as to i128
  %i.aw = zext i64 %i.au to i128
  %i.ax = mul nuw i128 %i.aw, %i.av               ; 2 uses
  %i.ay = lshr i128 %i.ax, 64
  %i.az = xor i128 %i.ay, %i.ax
  %i.ba = trunc i128 %i.az to i64                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.066.i, i64 48 ; 3 uses
  %i.bc = add i64 %.069.i, -48                    ; 5 uses
  %i.bd = icmp ugt i64 %i.bc, 48
  br i1 %i.bd, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2, label %bb.g, !llvm.loop !28

bb.g:                                             ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2
  %i.be = xor i64 %i.aq, %i.ag
  %i.bf = xor i64 %i.be, %i.ba                    ; 2 uses
  %i.bg = icmp samesign ugt i64 %i.bc, 16
  br i1 %i.bg, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10: ; preds = %bb.f, %bb.g
  %.1.i72 = phi ptr [ %i.bb, %bb.g ], [ %i.a, %bb.f ] ; 6 uses
  %.168.i70 = phi i64 [ %i.bf, %bb.g ], [ 4766890152743124950, %bb.f ]
  %.170.i69 = phi i64 [ %i.bc, %bb.g ], [ %i.c, %bb.f ] ; 3 uses
  %.0.copyload.i.i24 = load i64, ptr %.1.i72, align 1
  %i.bh = xor i64 %.0.copyload.i.i24, 5418857496715711651
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i72, i64 8
  %.0.copyload.i.i25 = load i64, ptr %i.bi, align 1
  %i.bj = xor i64 %.0.copyload.i.i25, %.168.i70
  %i.bk = zext i64 %i.bh to i128
  %i.bl = zext i64 %i.bj to i128
  %i.bm = mul nuw i128 %i.bl, %i.bk               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64
  %i.bo = xor i128 %i.bn, %i.bm
  %i.bp = trunc i128 %i.bo to i64                 ; 2 uses
  %i.bq = icmp samesign ugt i64 %.170.i69, 32
  br i1 %i.bq, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i72, i64 16
  %.0.copyload.i.i26 = load i64, ptr %i.br, align 1
  %i.bs = xor i64 %.0.copyload.i.i26, 5418857496715711651
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.i72, i64 24
  %.0.copyload.i.i27 = load i64, ptr %i.bt, align 1
  %i.bu = xor i64 %.0.copyload.i.i27, %i.bp
  %i.bv = zext i64 %i.bs to i128
  %i.bw = zext i64 %i.bu to i128
  %i.bx = mul nuw i128 %i.bw, %i.bv               ; 2 uses
  %i.by = lshr i128 %i.bx, 64
  %i.bz = xor i128 %i.by, %i.bx
  %i.ca = trunc i128 %i.bz to i64
  br label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10, %bb.g
  %.1.i71 = phi ptr [ %.1.i72, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %.1.i72, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bb, %bb.g ]
  %.170.i68 = phi i64 [ %.170.i69, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %.170.i69, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bc, %bb.g ] ; 3 uses
  %.2.i = phi i64 [ %i.ca, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %i.bp, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bf, %bb.g ]
end_hunk_1
begin_hunk_2_@_ZNSt12__shared_ptrIN8facebook5velox13ISerializableELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E:bb.a

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.p
  ret void

bb.q:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #34
  resume { ptr, i32 } %i.aq
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2019 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN8facebook5velox13ISerializableEEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #34, !inline_history !2017
  br label %_ZNKSt14default_deleteIN8facebook5velox13ISerializableEEclEPS2_.exit

_ZNKSt14default_deleteIN8facebook5velox13ISerializableEEclEPS2_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN8facebook5velox13ISerializableEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !54
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(53) @_ZTSSt14default_deleteIN8facebook5velox13ISerializableEE) #34
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13ISerializable22deserializeAsUniquePtrINS0_4core10ITypedExprEvEEDaRKN5folly7dynamicE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNKR5folly7dynamic2atENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nonnull @.str, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 4))
  call void @_ZNK5folly7dynamic6asImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11Ev()
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZNK8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10unique_ptrINS0_13ISerializableESt14default_deleteIS9_EERKN5folly7dynamicEEE3HasERKS7_(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  invoke void @_ZNK8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10unique_ptrINS0_13ISerializableESt14default_deleteIS9_EERKN5folly7dynamicEEE14CreateFunctionISH_EclERKS7_SG_(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %2, align 8, !tbaa !53     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8, !tbaa !54
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %i.e

bb.f:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !265
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.k = load ptr, ptr %2, align 8, !tbaa !53     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.g
  %i.n = load i64, ptr %i.l, align 8, !tbaa !54
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE19tryEmplaceValueImplIS9_JRKSt21piecewise_construct_tSt5tupleIJRKS9_EEST_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSY_ISU_SM_EEEEEbESY_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.605") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !223  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !271   ; 5 uses
  br i1 %.not, label %.thread67, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.i = and i64 %i.b, 255                        ; 7 uses
  %i.j = shl nuw i64 1, %i.i                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %.fr92 = freeze i64 %i.l                        ; 3 uses
  %i.m = icmp eq i64 %.fr92, 0
  br i1 %i.m, label %.split87.us, label %.split87, !llvm.loop !22

.split87.us:                                      ; preds = %bb.b, %bb.d
  %.023.i86.us = phi i64 [ %i.ai, %bb.d ], [ %i.j, %bb.b ]
  %.025.i85.us = phi i64 [ %i.aj, %bb.d ], [ %2, %bb.b ] ; 2 uses
  %i.n = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i85.us, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.o = getelementptr inbounds nuw [128 x i8], ptr %.pre, i64 %i.n ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.q, i32 0, i32 3, i32 1)
  %i.r = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.s = icmp eq <16 x i8> %i.r, %i.h
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = and i16 %i.t, 16383                      ; 2 uses
  %.not6977.us = icmp eq i16 %i.u, 0
  %i.v = extractelement <16 x i8> %i.r, i64 15
  br i1 %.not6977.us, label %.critedge.i._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split87.us
  %i.w = zext nneg i16 %i.u to i32
  %i.x = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.x)
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.backedge.us.us, %.lr.ph.us
  %.sroa.042.078.us.us = phi i32 [ %i.w, %.lr.ph.us ], [ %i.ag, %.critedge.i.backedge.us.us ] ; 3 uses
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.078.us.us, i1 true)
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !87
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !55
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread, label %.critedge.i.backedge.us.us, !prof !224

.critedge.i.backedge.us.us:                       ; preds = %bb.c
  %i.af = add nsw i32 %.sroa.042.078.us.us, -1
  %i.ag = and i32 %i.af, %.sroa.042.078.us.us     ; 2 uses
  %.not69.us.us = icmp eq i32 %i.ag, 0
  br i1 %.not69.us.us, label %.critedge.i._crit_edge.split.us.us, label %bb.c, !llvm.loop !22

.critedge.i._crit_edge.split.us.us:               ; preds = %.critedge.i.backedge.us.us, %.split87.us
  %i.ah = icmp eq i8 %i.v, 0
  br i1 %i.ah, label %.thread67, label %bb.d, !prof !126

bb.d:                                             ; preds = %.critedge.i._crit_edge.split.us.us
  %i.ai = add i64 %.023.i86.us, -1                ; 2 uses
  %i.aj = add i64 %i.e, %.025.i85.us
  %.not.i.us = icmp eq i64 %i.ai, 0
  br i1 %.not.i.us, label %.thread67, label %.split87.us, !llvm.loop !23

.split87:                                         ; preds = %bb.b, %bb.f
  %.023.i86 = phi i64 [ %i.bi, %bb.f ], [ %i.j, %bb.b ]
  %.025.i85 = phi i64 [ %i.bj, %bb.f ], [ %2, %bb.b ] ; 2 uses
  %i.ak = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i85, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.al = getelementptr inbounds nuw [128 x i8], ptr %.pre, i64 %i.ak ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.an, i32 0, i32 3, i32 1)
  %i.ao = load <16 x i8>, ptr %i.al, align 16     ; 2 uses
  %i.ap = icmp eq <16 x i8> %i.ao, %i.h
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %i.ar = and i16 %i.aq, 16383                    ; 2 uses
  %.not6977 = icmp eq i16 %i.ar, 0
  %i.as = extractelement <16 x i8> %i.ao, i64 15
  br i1 %.not6977, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split87
  %i.at = zext nneg i16 %i.ar to i32
  %i.au = icmp ne ptr %i.al, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.au)
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.042.078 = phi i32 [ %i.at, %.lr.ph ], [ %i.ax, %.critedge.i.backedge ] ; 3 uses
  %i.av = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.078, i1 true)
  %i.aw = add nsw i32 %.sroa.042.078, -1
  %i.ax = and i32 %i.aw, %.sroa.042.078           ; 2 uses
  %i.ay = zext nneg i32 %i.av to i64              ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !87 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !55
  %i.bd = icmp eq i64 %.fr92, %i.bc
  br i1 %i.bd, label %.split, label %.critedge.i.backedge, !prof !224

.split:                                           ; preds = %bb.e
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !53
  %i.bf = load ptr, ptr %4, align 8, !tbaa !53
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.bf, ptr %i.be, i64 %.fr92)
  %i.bg = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bg, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread, label %.critedge.i.backedge, !prof !272

.critedge.i.backedge:                             ; preds = %.split, %bb.e
  %.not69 = icmp eq i32 %i.ax, 0
  br i1 %.not69, label %.critedge.i._crit_edge.split, label %bb.e, !llvm.loop !22

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split87
  %i.bh = icmp eq i8 %i.as, 0
  br i1 %i.bh, label %.thread67, label %bb.f, !prof !126

bb.f:                                             ; preds = %.critedge.i._crit_edge.split
  %i.bi = add i64 %.023.i86, -1                   ; 2 uses
  %i.bj = add i64 %i.e, %.025.i85
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %.thread67, label %.split87, !llvm.loop !23

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread: ; preds = %.split, %bb.c
  %.us-phi = phi i64 [ %i.z, %bb.c ], [ %i.ay, %.split ] ; 2 uses
  %i.bk = phi i64 [ %i.n, %bb.c ], [ %i.ak, %.split ]
  %i.bl = getelementptr inbounds nuw [128 x i8], ptr %.pre, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.us-phi
  br label %bb.n

.thread67:                                        ; preds = %bb.f, %.critedge.i._crit_edge.split, %bb.d, %.critedge.i._crit_edge.split.us.us, %bb.a
  %.pre-phi108 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.d ], [ %i.i, %.critedge.i._crit_edge.split.us.us ], [ %i.i, %.critedge.i._crit_edge.split ], [ %i.i, %bb.f ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !54
  %i.bq = and i8 %i.bp, 15
  %i.br = zext nneg i8 %i.bq to i64               ; 2 uses
  %i.bs = shl i64 %i.br, %.pre-phi108             ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.bs
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread67
  %i.bt = shl nuw i64 1, %.pre-phi108
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.bt, i64 noundef %i.br, i64 noundef %i.bs)
  %.pre104 = load ptr, ptr %1, align 8, !tbaa !271
  %.pre105 = load i64, ptr %i.a, align 8, !tbaa !223
  %.pre106 = and i64 %.pre105, 255
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE16reserveForInsertEm.exit: ; preds = %.thread67, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi108, %.thread67 ], [ %.pre106, %bb.g ] ; 2 uses
  %i.bu = phi ptr [ %.pre, %.thread67 ], [ %.pre104, %bb.g ] ; 3 uses
  %i.bv = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bw = getelementptr inbounds nuw [128 x i8], ptr %i.bu, i64 %i.bv ; 2 uses
  %i.bx = load <16 x i8>, ptr %i.bw, align 16, !tbaa !54
  %i.by = icmp slt <16 x i8> %i.bx, zeroinitializer
  %i.bz = bitcast <16 x i1> %i.by to i16
  %i.ca = and i16 %i.bz, 16383                    ; 2 uses
  %.not70 = icmp eq i16 %i.ca, 16383
  br i1 %.not70, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE16reserveForInsertEm.exit
  %i.cb = shl i64 %3, 1
  %i.cc = or disjoint i64 %i.cb, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.cd = phi i64 [ %i.bv, %bb.h ], [ %i.cj, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.ci, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE25incrOutboundOverflowCountEv.exit ]
  %i.ce = getelementptr inbounds nuw [128 x i8], ptr %i.bu, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 15 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !293 ; 2 uses
  %.not.i33 = icmp eq i8 %i.cg, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = add i8 %i.cg, 1
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !293
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.ci = add i64 %i.cc, %.030                    ; 2 uses
  %i.cj = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ci, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ck = getelementptr inbounds nuw [128 x i8], ptr %i.bu, i64 %i.cj ; 3 uses
  %i.cl = load <16 x i8>, ptr %i.ck, align 16     ; 2 uses
  %i.cm = icmp slt <16 x i8> %i.cl, zeroinitializer
  %i.cn = bitcast <16 x i1> %i.cm to i16
  %i.co = and i16 %i.cn, 16383                    ; 2 uses
  %.not71 = icmp eq i16 %i.co, 16383
  br i1 %.not71, label %bb.i, label %bb.k, !llvm.loop !2020

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE25incrOutboundOverflowCountEv.exit
  %i.cp = extractelement <16 x i8> %i.cl, i64 14
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 14
  %i.cr = add i8 %i.cp, 16
  store i8 %i.cr, ptr %i.cq, align 2, !tbaa !294
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.ca, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE16reserveForInsertEm.exit ], [ %i.co, %bb.k ]
  %.1 = phi ptr [ %i.bw, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE16reserveForInsertEm.exit ], [ %i.ck, %bb.k ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.cs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.ct = zext nneg i16 %i.cs to i64              ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1, i64 %i.ct ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !54
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.32) #41
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE6setTagEmm.exit: ; preds = %bb.l
  %i.cx = trunc i64 %3 to i8
  store i8 %i.cx, ptr %i.cu, align 1, !tbaa !54
  %i.cy = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ct ; 2 uses
  %i.da = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.da)
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EEST_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISU_SM_EEEEES10_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.cz, i64 %i.ct, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE6setTagEmm.exit
  %.sink132 = phi ptr [ %i.bn, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread ], [ %i.cz, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE6setTagEmm.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread ], [ %i.ct, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE6setTagEmm.exit ]
  store ptr %.sink132, ptr %0, align 8, !tbaa !85
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !90
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.db, align 8, !tbaa !2023
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EEST_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISU_SM_EEEEES10_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE20constructValueAtItemIRNS1_8F14TableISM_EEJRKSt21piecewise_construct_tSt5tupleIJRKS8_EESU_IJEEEEEvOT_PPSt4pairISV_SL_EDpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSA_EESU_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISV_SN_EEEEES11_ImmEDpOT_EUlvE_PFvPSP_S16_S17_EJS1C_RS16_RS17_EvEET2_OT_OT0_DpOT1_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  %i.c = tail call ptr @__cxa_begin_catch(ptr %i.b) #34 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE14eraseBlankColdEPSO_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEESS_ImmE(ptr noundef nonnull %0, ptr %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKSA_SN_EEEEEST_ImmEEJSQ_RSZ_RS10_ES11_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.c, !inline_history !2024

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKSA_SN_EEEEEST_ImmEEJSQ_RSZ_RS10_ES11_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.b
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSA_EESU_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISV_SN_EEEEES11_ImmEDpOT_EUlvE_PFvPSP_S16_S17_EJS1C_RS16_RS17_EvEET2_OT_OT0_DpOT1_.exit

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #37
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSA_EESU_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISV_SN_EEEEES11_ImmEDpOT_EUlvE_PFvPSP_S16_S17_EJS1C_RS16_RS17_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %bb.a, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKSA_SN_EEEEEST_ImmEEJSQ_RSZ_RS10_ES11_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit
  %i.g = and i64 %2, 255                          ; 2 uses
  %i.h = icmp samesign ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = lshr i64 %i.g, 1
  %i.j = ptrtoint ptr %1 to i64
  %i.k = or i64 %i.i, %i.j                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !267
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %bb.f, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEE.exit

bb.f:                                             ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSA_EESU_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISV_SN_EEEEES11_ImmEDpOT_EUlvE_PFvPSP_S16_S17_EJS1C_RS16_RS17_EvEET2_OT_OT0_DpOT1_.exit
  store i64 %i.k, ptr %i.l, align 8, !tbaa !90
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEE.exit: ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSA_EESU_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISV_SN_EEEEES11_ImmEDpOT_EUlvE_PFvPSP_S16_S17_EJS1C_RS16_RS17_EvEET2_OT_OT0_DpOT1_.exit, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !223  ; 2 uses
  %i.q = and i64 %i.p, -256
  %i.r = add i64 %i.q, 256
  %i.s = and i64 %i.p, 255
  %i.t = or disjoint i64 %i.r, %i.s
  store i64 %i.t, ptr %i.o, align 8, !tbaa !223
end_hunk_2
