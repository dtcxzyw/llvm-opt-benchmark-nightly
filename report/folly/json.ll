Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/json?download=true
inline.NumInlined: 4901
inline.NumDeleted: 1765
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZNK5folly7dynamic6asImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v:bb.a
  %i.ak = zext nneg i8 %i.aj to i64
  invoke void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %i.ak, ptr noundef nonnull align 8 %0)
          to label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJlETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_.exit unwind label %bb.h

bb.h:                                             ; preds = %.noexc.i11, %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !61, !alias.scope !1081 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ad
  br i1 %i.an, label %common.resume, label %common.resume.sink.split

bb.i:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !61, !noalias !1082 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !45, !noalias !1082 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !43, !alias.scope !1084
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = icmp slt i64 %i.ar, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.at, i8 0, i64 9, i1 false), !alias.scope !1084
  br i1 %i.au, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #36
          to label %.noexc.i.i unwind label %bb.o

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %bb.i
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.ar, 15
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  switch i64 %i.ar, label %bb.m [
    i64 0, label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_.exit
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.av = load i8, ptr %i.ap, align 1, !tbaa !37, !noalias !1085
  store i8 %i.av, ptr %i.as, align 8, !tbaa !37, !alias.scope !1084, !noalias !1086
  br label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_.exit

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 1 %i.ap, i64 %i.ar, i1 false), !noalias !1086
  br label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %._crit_edge.i.i unwind label %bb.o

._crit_edge.i.i:                                  ; preds = %bb.n
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !61, !alias.scope !1084, !noalias !1086
  br label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_.exit

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !61, !alias.scope !1084 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.as
  br i1 %i.ay, label %common.resume, label %common.resume.sink.split

_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_.exit: ; preds = %bb.k, %bb.l, %bb.m, %._crit_edge.i.i
  %i.az = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.as, %bb.m ], [ %i.as, %bb.l ], [ %i.as, %bb.k ]
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !45, !alias.scope !1084, !noalias !1086
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  store i8 0, ptr %i.ba, align 1, !tbaa !37, !noalias !1086
  br label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJlETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_.exit

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.8, i32 noundef %i.a) #7
  unreachable

_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJlETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_.exit: ; preds = %.noexc.i11, %bb.e, %.noexc.i, %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr { ptr, i64 } @_ZNK5folly7dynamic4findENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !64     ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 5
  br i1 %.not.i.not.i.i, label %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @_ZN5folly7dynamic8TypeInfoINS0_10ObjectImplEE4nameE, align 8, !tbaa !88
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.d, i32 noundef %i.c) #7
  unreachable

_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !394  ; 2 uses
  %i.g = icmp ult i64 %i.f, 512
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit
  %i.h = icmp samesign ult i64 %i.f, 256
  br i1 %i.h, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90   ; 3 uses
  %i.k = and i64 %i.j, -8
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = shl i64 %i.j, 1
  %i.n = and i64 %i.m, 14
  %i.o = lshr i64 %i.j, 3
  %i.p = and i64 %i.o, 1
  %i.q = or disjoint i64 %i.n, %i.p               ; 2 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !96   ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !64
  %i.t = icmp eq i32 %i.s, 6
  br i1 %i.t, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread, !prof !82

_ZNK5folly7dynamic11stringPieceEv.exit.i.i:       ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !45
  %i.y = ptrtoint ptr %2 to i64
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.aa, %i.x
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread

bb.e:                                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i
  %i.ab = icmp eq ptr %2, %1
  br i1 %i.ab, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit: ; preds = %bb.e
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %i.v, i64 %i.aa)
  %i.ac = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ac, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread: ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, %bb.d, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit

bb.f:                                             ; preds = %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = ptrtoint ptr %2 to i64
  %i.af = ptrtoint ptr %1 to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 0, ptr %i.b, align 8, !tbaa !39
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %1, i64 noundef %i.ag, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !39  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = lshr i64 %i.ah, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ai, i64 1) ; 2 uses
  %i.aj = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.am = insertelement <16 x i8> poison, i8 %i.al, i64 0
  %i.an = shufflevector <16 x i8> %i.am, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !394
  %i.ap = and i64 %i.ao, 255                      ; 2 uses
  %i.aq = shl nuw i64 1, %i.ap                    ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.ap
  %i.ar = xor i64 %notmask.i, -1                  ; 2 uses
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !398 ; 2 uses
  %i.at = icmp eq ptr %2, %1
  %.fr = freeze i1 %i.at
  br i1 %.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.f, %bb.h
  %.024.i53.us = phi i64 [ %i.bu, %bb.h ], [ %i.aq, %bb.f ]
  %.026.i52.us = phi i64 [ %i.bv, %bb.h ], [ %i.ah, %bb.f ] ; 2 uses
  %i.au = and i64 %.026.i52.us, %i.ar
  %i.av = shl nsw i64 %i.au, 7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 80
  call void @llvm.prefetch.p0(ptr %i.ax, i32 0, i32 3, i32 1)
  %i.ay = load <16 x i8>, ptr %i.aw, align 16     ; 2 uses
  %i.az = icmp eq <16 x i8> %i.ay, %i.an
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = and i32 %i.bb, 16383
  %.not.us = icmp eq i32 %i.bc, 0
  %i.bd = extractelement <16 x i8> %i.ay, i64 15
  br i1 %.not.us, label %.loopexit.split.us.us, label %.preheader.us

.preheader.us:                                    ; preds = %.split.us
  %i.be = icmp ne ptr %i.aw, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.be)
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i.us.us, %.preheader.us
  %.sroa.019.0.us.us = phi i32 [ %i.bi, %.critedge.i.us.us ], [ %i.bb, %.preheader.us ] ; 4 uses
  %i.bf = icmp ne i32 %.sroa.019.0.us.us, 0
  call void @llvm.assume(i1 %i.bf)
  %i.bg = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0.us.us, i1 true)
  %i.bh = add nuw nsw i32 %.sroa.019.0.us.us, 65535
  %i.bi = and i32 %i.bh, %.sroa.019.0.us.us       ; 2 uses
  %i.bj = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = getelementptr i8, ptr %i.aw, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !96 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !64
  %i.bp = icmp eq i32 %i.bo, 6
  br i1 %i.bp, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us, label %.critedge.i.us.us, !prof !82

_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us: ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !45
  %.not.i.i.i.i9.us.us = icmp eq i64 %i.ag, %i.br
  br i1 %.not.i.i.i.i9.us.us, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit, label %.critedge.i.us.us, !prof !1089

.critedge.i.us.us:                                ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us, %bb.g
  %i.bs = and i32 %i.bi, 16382
  %.not42.us.us = icmp eq i32 %i.bs, 0
  br i1 %.not42.us.us, label %.loopexit.split.us.us, label %bb.g, !llvm.loop !1087

.loopexit.split.us.us:                            ; preds = %.critedge.i.us.us, %.split.us
  %i.bt = icmp eq i8 %i.bd, 0
  br i1 %i.bt, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %bb.h, !prof !82

bb.h:                                             ; preds = %.loopexit.split.us.us
  %i.bu = add i64 %.024.i53.us, -1                ; 2 uses
  %i.bv = add i64 %i.ak, %.026.i52.us
  %.not.i.us = icmp eq i64 %i.bu, 0
  br i1 %.not.i.us, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %.split.us, !llvm.loop !1088

.split:                                           ; preds = %bb.f, %bb.j
  %.024.i53 = phi i64 [ %i.cz, %bb.j ], [ %i.aq, %bb.f ]
  %.026.i52 = phi i64 [ %i.da, %bb.j ], [ %i.ah, %bb.f ] ; 2 uses
  %i.bw = and i64 %.026.i52, %i.ar
  %i.bx = shl nsw i64 %i.bw, 7
  %i.by = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bx ; 4 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 80
  call void @llvm.prefetch.p0(ptr %i.bz, i32 0, i32 3, i32 1)
  %i.ca = load <16 x i8>, ptr %i.by, align 16     ; 2 uses
  %i.cb = icmp eq <16 x i8> %i.ca, %i.an
  %i.cc = bitcast <16 x i1> %i.cb to i16
  %i.cd = zext i16 %i.cc to i32                   ; 2 uses
  %i.ce = and i32 %i.cd, 16383
  %.not = icmp eq i32 %i.ce, 0
  %i.cf = extractelement <16 x i8> %i.ca, i64 15
  br i1 %.not, label %.loopexit.split, label %.preheader

.preheader:                                       ; preds = %.split
  %i.cg = icmp ne ptr %i.by, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cg)
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.019.0 = phi i32 [ %i.ck, %.critedge.i ], [ %i.cd, %.preheader ] ; 4 uses
  %i.ch = icmp ne i32 %.sroa.019.0, 0
  call void @llvm.assume(i1 %i.ch)
  %i.ci = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0, i1 true)
  %i.cj = add nuw nsw i32 %.sroa.019.0, 65535
  %i.ck = and i32 %i.cj, %.sroa.019.0             ; 2 uses
  %i.cl = zext nneg i32 %i.ci to i64              ; 2 uses
  %i.cm = shl nuw nsw i64 %i.cl, 3
  %i.cn = getelementptr i8, ptr %i.by, i64 %i.cm  ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !96 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !64
  %i.cr = icmp eq i32 %i.cq, 6
  br i1 %i.cr, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8, label %.critedge.i, !prof !82

_ZNK5folly7dynamic11stringPieceEv.exit.i.i8:      ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !45
  %.not.i.i.i.i9 = icmp eq i64 %i.ag, %i.ct
  br i1 %.not.i.i.i.i9, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11, label %.critedge.i, !prof !1089

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11: ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !61
  %bcmp.i.i.i.i10 = call i32 @bcmp(ptr %1, ptr %i.cv, i64 %i.ag)
  %i.cw = icmp eq i32 %bcmp.i.i.i.i10, 0
  br i1 %i.cw, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit, label %.critedge.i, !prof !1090

.critedge.i:                                      ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8, %bb.i, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11
  %i.cx = and i32 %i.ck, 16382
  %.not42 = icmp eq i32 %i.cx, 0
  br i1 %.not42, label %.loopexit.split, label %bb.i, !llvm.loop !1087

.loopexit.split:                                  ; preds = %.critedge.i, %.split
  %i.cy = icmp eq i8 %i.cf, 0
  br i1 %i.cy, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %bb.j, !prof !82

bb.j:                                             ; preds = %.loopexit.split
  %i.cz = add i64 %.024.i53, -1                   ; 2 uses
  %i.da = add i64 %i.ak, %.026.i52
  %.not.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %.split, !llvm.loop !1088

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit: ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us
  %.us-phi = phi ptr [ %i.bl, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us ], [ %i.cn, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11 ]
  %.us-phi48 = phi i64 [ %i.bj, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us ], [ %i.cl, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11 ]
  %i.db = getelementptr i8, ptr %.us-phi, i64 16
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit: ; preds = %.loopexit.split, %bb.j, %bb.h, %.loopexit.split.us.us, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit, %bb.e, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit, %bb.c
  %.sroa.7.1 = phi i64 [ %i.q, %bb.e ], [ 0, %bb.c ], [ 0, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread ], [ %i.q, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ %.us-phi48, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit ], [ 0, %bb.h ], [ 0, %.loopexit.split.us.us ], [ 0, %bb.j ], [ 0, %.loopexit.split ]
  %.sroa.018.1 = phi ptr [ %i.l, %bb.e ], [ null, %bb.c ], [ null, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread ], [ %i.l, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ %i.db, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit ], [ null, %bb.h ], [ null, %.loopexit.split.us.us ], [ null, %bb.j ], [ null, %.loopexit.split ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.018.1, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.7.1, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN5folly5RangeIPKcEEEclINS_17__normal_iteratorIPKNS2_7dynamicESt6vectorISB_SaISB_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::dynamic", align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.a = load ptr, ptr %0, align 8, !tbaa !1092, !nonnull !52, !align !71 ; 2 uses
  store i32 6, ptr %2, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !400  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !401  ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g                       ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !43
  %i.j = icmp eq ptr %i.c, null
  %i.k = icmp ne ptr %i.e, null
  %or.cond.i.i = and i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #36
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.h, 15
  br i1 %i.l, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = icmp slt i64 %i.h, 0
  br i1 %i.m, label %.noexc.i.i, label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #36
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw i64 %i.h, 1                      ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %.noexc9.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !122

.noexc9.i.i:                                      ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #36
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.p = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #38 ; 2 uses
  store ptr %i.p, ptr %i.b, align 8, !tbaa !61
  store i64 %i.h, ptr %i.i, align 8, !tbaa !37
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.b
  %i.q = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.i, %bb.b ] ; 3 uses
  switch i64 %i.h, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.c, align 1, !tbaa !37
  store i8 %i.r, ptr %i.q, align 1, !tbaa !37
  br label %_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.c, i64 %i.h, i1 false)
  br label %_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit

_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.h, ptr %i.s, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.t, align 1, !tbaa !37
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

declare noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

declare void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11toAppendFitIJA87_clPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_(ptr noundef nonnull align 1 dereferenceable(87) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !54
  %i.b = load i64, ptr %1, align 8, !tbaa !39     ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly6detail15reserveInTargetIA87_clJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit, label %bb.b, !prof !122

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @llvm.abs.i64(i64 %i.b, i1 false) ; 2 uses
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = sub nuw nsw i64 64, %i.d
  %i.f = mul nuw nsw i64 %i.e, 39
  %i.g = lshr i64 %i.f, 7                         ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !39
  %i.j = icmp uge i64 %i.c, %i.i
  %i.k = zext i1 %i.j to i64
  %i.l = add nuw nsw i64 %i.g, %i.k
  br label %_ZN5folly6detail15reserveInTargetIA87_clJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit

_ZN5folly6detail15reserveInTargetIA87_clJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i.i.i.i = phi i64 [ %i.l, %bb.b ], [ 1, %bb.a ]
  %.lobit.i.i.i = lshr i64 %i.b, 63
  %i.m = add nuw nsw i64 %.lobit.i.i.i, 87
  %i.n = add nuw nsw i64 %i.m, %.0.i.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.n)
  %i.o = load ptr, ptr %2, align 8, !tbaa !54     ; 6 uses
  %i.p = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(87) %0) #34 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !45   ; 5 uses
  %i.s = sub i64 9223372036854775807, %i.r
  %i.t = icmp ult i64 %i.s, %i.p
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %_ZN5folly6detail15reserveInTargetIA87_clJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #36
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %_ZN5folly6detail15reserveInTargetIA87_clJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit
  %i.u = add i64 %i.r, %i.p                       ; 3 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !61   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.y = icmp ult i64 %i.r, 16
  tail call void @llvm.assume(i1 %i.y)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN5folly4json16escapeStringImplILb0EEEvNS_5RangeIPKcEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18serialization_optsE:bb.a
  %i.mx = icmp ult i64 %i.mt, 16
  call void @llvm.assume(i1 %i.mx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %.thread153
  %i.my = load i64, ptr %i.l, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i142: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i144
  %i.mz = phi i64 [ %i.my, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i144 ]
  %i.na = icmp ugt i64 %i.mu, %i.mz
  br i1 %i.na, label %bb.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit145

bb.bx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i142
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.mt, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i143 = load ptr, ptr %2, align 8, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit145: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i142, %bb.bx
  %i.nb = phi ptr [ %.pre.i143, %bb.bx ], [ %i.mv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i142 ]
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.mt
  store i8 34, ptr %i.nc, align 1, !tbaa !37
  store i64 %i.mu, ptr %i.h, align 8, !tbaa !45
  %i.nd = load ptr, ptr %2, align 8, !tbaa !61
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.mu
  store i8 0, ptr %i.ne, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly4json16escapeStringImplILb1EEEvNS_5RangeIPKcEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18serialization_optsE(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(121) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 9 uses
  %i.b = alloca [7 x i8], align 1                 ; 9 uses
  %i.c = alloca [7 x i8], align 1                 ; 9 uses
  %i.d = alloca ptr, align 8                      ; 24 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %4 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %5 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %i.f = alloca [3 x i8], align 2                 ; 6 uses
  %i.g = alloca [7 x i8], align 1                 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 30 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !45   ; 4 uses
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 30 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.a
  %i.n = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.n)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.o = load i64, ptr %i.l, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.p = phi i64 [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.q = icmp ugt i64 %i.j, %i.p
  br i1 %i.q, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.i, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.b
  %i.r = phi ptr [ %.pre.i, %bb.b ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i
  store i8 34, ptr %i.s, align 1, !tbaa !37
  store i64 %i.j, ptr %i.h, align 8, !tbaa !45
  %i.t = load ptr, ptr %2, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.j
  store i8 0, ptr %i.u, align 1, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store ptr %0, ptr %i.d, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store ptr %0, ptr %i.e, align 8, !tbaa !88
  %.old67 = icmp ult ptr %0, %1
  br i1 %.old67, label %.preheader, label %.thread161

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %i.v = ptrtoint ptr %1 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %bb.bw, %.preheader
  %.051.ph = phi ptr [ %i.nz, %bb.bw ], [ %0, %.preheader ] ; 7 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.backedge.outer
  %.051 = phi ptr [ %.051.ph, %.backedge.outer ], [ %.051.be, %.backedge.backedge ] ; 9 uses
  %i.aq = icmp ult ptr %.051, %1
  br i1 %i.aq, label %bb.c, label %bb.k

bb.c:                                             ; preds = %.backedge
  %i.ar = ptrtoint ptr %.051 to i64
  %i.as = sub i64 %i.v, %i.ar                     ; 6 uses
  %i.at = icmp ugt i64 %i.as, 7
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i = load i64, ptr %.051, align 1
  br label %_ZN5folly20partialLoadUnalignedImEET_PKvm.exit

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp samesign ult i64 %i.as, 4
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = add nsw i64 %i.as, -4                   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.051, i64 %i.au
  %.0.copyload.i.i = load i32, ptr %i.av, align 1
  %i.aw = zext i32 %.0.copyload.i.i to i64
  %i.ax = shl nuw nsw i64 %i.au, 3
  %i.ay = shl nuw nsw i64 %i.aw, %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.017.i = phi i64 [ %i.ay, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %.0.i = phi i64 [ %i.au, %bb.f ], [ %i.as, %bb.e ]
  %i.az = and i64 %i.as, 2
  %.not18.i = icmp eq i64 %i.az, 0
  br i1 %.not18.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = add nsw i64 %.0.i, -2                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.051, i64 %i.ba
  %.0.copyload.i20.i = load i16, ptr %i.bb, align 1
  %i.bc = zext i16 %.0.copyload.i20.i to i64
  %i.bd = shl nsw i64 %i.ba, 3
  %i.be = shl nuw nsw i64 %i.bc, %i.bd
  %i.bf = or i64 %i.be, %.017.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i = phi i64 [ %i.bf, %bb.h ], [ %.017.i, %bb.g ] ; 2 uses
  %i.bg = and i64 %i.as, 1
  %.not19.i = icmp eq i64 %i.bg, 0
  br i1 %.not19.i, label %_ZN5folly20partialLoadUnalignedImEET_PKvm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i21.i = load i8, ptr %.051, align 1
  %i.bh = zext i8 %.0.copyload.i21.i to i64
  %i.bi = or i64 %.1.i, %i.bh
  br label %_ZN5folly20partialLoadUnalignedImEET_PKvm.exit

_ZN5folly20partialLoadUnalignedImEET_PKvm.exit:   ; preds = %bb.j, %bb.i, %bb.d
  %.053 = phi i64 [ %.0.copyload.i, %bb.d ], [ %i.bi, %bb.j ], [ %.1.i, %bb.i ] ; 7 uses
  %i.bj = add i64 %.053, -2314885530818453536
  %i.bk = or i64 %i.bj, %.053
  %i.bl = and i64 %i.bk, -9187201950435737472
  %i.bm = xor i64 %.053, 6655295901103053916
  %i.bn = add i64 %i.bm, -72340172838076673
  %i.bo = and i64 %.053, -9187201950435737472
  %i.bp = xor i64 %i.bo, -9187201950435737472
  %i.bq = xor i64 %.053, 2459565876494606882
  %i.br = add i64 %i.bq, -72340172838076673
  %i.bs = or i64 %i.bn, %i.br
  %i.bt = and i64 %i.bs, %i.bp
  %i.bu = or i64 %i.bt, %i.bl                     ; 2 uses
  %i.bv = load i64, ptr %i.w, align 8, !tbaa !39
  %i.bw = and i64 %i.bv, -4294967296              ; 2 uses
  %.not2227.i = icmp eq i64 %i.bw, 0
  br i1 %.not2227.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5folly20partialLoadUnalignedImEET_PKvm.exit, %.lr.ph.i
  %.01929.i = phi i64 [ %i.cg, %.lr.ph.i ], [ %i.bw, %_ZN5folly20partialLoadUnalignedImEET_PKvm.exit ] ; 3 uses
  %.128.i = phi i64 [ %i.ce, %.lr.ph.i ], [ %i.bu, %_ZN5folly20partialLoadUnalignedImEET_PKvm.exit ]
  %i.bx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01929.i, i1 true)
  %i.by = mul nuw nsw i64 %i.bx, 72340172838076673
  %i.bz = xor i64 %i.by, %.053                    ; 2 uses
  %i.ca = add i64 %i.bz, -72340172838076673
  %i.cb = and i64 %i.bz, -9187201950435737472
  %i.cc = xor i64 %i.cb, -9187201950435737472
  %i.cd = and i64 %i.cc, %i.ca
  %i.ce = or i64 %i.cd, %.128.i                   ; 2 uses
  %i.cf = add i64 %.01929.i, -4294967296
  %i.cg = and i64 %i.cf, %.01929.i                ; 2 uses
  %.not22.i = icmp eq i64 %i.cg, 0
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1128

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZN5folly20partialLoadUnalignedImEET_PKvm.exit
  %.1.lcssa.i = phi i64 [ %i.bu, %_ZN5folly20partialLoadUnalignedImEET_PKvm.exit ], [ %i.ce, %.lr.ph.i ] ; 2 uses
  %i.ch = load i64, ptr %i.x, align 16, !tbaa !39 ; 2 uses
  %.not2227.1.i = icmp eq i64 %i.ch, 0
  br i1 %.not2227.1.i, label %._crit_edge.1.i, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %._crit_edge.i, %.lr.ph.1.i
  %.01929.1.i = phi i64 [ %i.cs, %.lr.ph.1.i ], [ %i.ch, %._crit_edge.i ] ; 3 uses
  %.128.1.i = phi i64 [ %i.cq, %.lr.ph.1.i ], [ %.1.lcssa.i, %._crit_edge.i ]
  %i.ci = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01929.1.i, i1 true)
  %i.cj = mul nuw nsw i64 %i.ci, 72340172838076673
  %i.ck = add nuw nsw i64 %i.cj, 4629771061636907072
  %i.cl = xor i64 %i.ck, %.053                    ; 2 uses
  %i.cm = add i64 %i.cl, -72340172838076673
  %i.cn = and i64 %i.cl, -9187201950435737472
  %i.co = xor i64 %i.cn, -9187201950435737472
  %i.cp = and i64 %i.co, %i.cm
  %i.cq = or i64 %i.cp, %.128.1.i                 ; 2 uses
  %i.cr = add i64 %.01929.1.i, -1
  %i.cs = and i64 %i.cr, %.01929.1.i              ; 2 uses
  %.not22.1.i = icmp eq i64 %i.cs, 0
  br i1 %.not22.1.i, label %._crit_edge.1.i, label %.lr.ph.1.i, !llvm.loop !1128

._crit_edge.1.i:                                  ; preds = %.lr.ph.1.i, %._crit_edge.i
  %.1.lcssa.1.i = phi i64 [ %.1.lcssa.i, %._crit_edge.i ], [ %i.cq, %.lr.ph.1.i ] ; 2 uses
  %.not.i69 = icmp eq i64 %.1.lcssa.1.i, 0
  br i1 %.not.i69, label %_ZN5folly4json20firstEscapableInWordILb1EmEEmT0_RKNS0_18serialization_optsE.exit.thread, label %_ZN5folly4json20firstEscapableInWordILb1EmEEmT0_RKNS0_18serialization_optsE.exit

_ZN5folly4json20firstEscapableInWordILb1EmEEmT0_RKNS0_18serialization_optsE.exit.thread: ; preds = %._crit_edge.1.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.051, i64 8
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZN5folly4json20firstEscapableInWordILb1EmEEmT0_RKNS0_18serialization_optsE.exit.thread, %_ZN5folly4json20firstEscapableInWordILb1EmEEmT0_RKNS0_18serialization_optsE.exit
  %.051.be = phi ptr [ %i.ct, %_ZN5folly4json20firstEscapableInWordILb1EmEEmT0_RKNS0_18serialization_optsE.exit.thread ], [ %i.da, %_ZN5folly4json20firstEscapableInWordILb1EmEEmT0_RKNS0_18serialization_optsE.exit ]
  br label %.backedge

_ZN5folly4json20firstEscapableInWordILb1EmEEmT0_RKNS0_18serialization_optsE.exit: ; preds = %._crit_edge.1.i
  %i.cu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.1.lcssa.1.i, i1 true)
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = add nuw nsw i32 %i.cv, 1
  %i.cx = lshr i32 %i.cw, 3
  %i.cy = add nsw i32 %i.cx, -1                   ; 2 uses
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %.051, i64 %i.cz ; 2 uses
  %i.db = icmp ult i32 %i.cy, 8
  br i1 %i.db, label %bb.k, label %.backedge.backedge

bb.k:                                             ; preds = %_ZN5folly4json20firstEscapableInWordILb1EmEEmT0_RKNS0_18serialization_optsE.exit, %.backedge
  %.152 = phi ptr [ %i.da, %_ZN5folly4json20firstEscapableInWordILb1EmEEmT0_RKNS0_18serialization_optsE.exit ], [ %.051, %.backedge ] ; 6 uses
  %i.dc = icmp ugt ptr %.152, %.051.ph
  br i1 %i.dc, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.dd = ptrtoint ptr %.152 to i64
  %i.de = ptrtoint ptr %.051.ph to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 5 uses
  %i.dg = load i64, ptr %i.h, align 8, !tbaa !45  ; 5 uses
  %i.dh = sub i64 9223372036854775807, %i.dg
  %i.di = icmp ult i64 %i.dh, %i.df
  br i1 %i.di, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #36
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.l
  %i.dj = add i64 %i.dg, %i.df                    ; 3 uses
  %i.dk = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.l
  br i1 %i.dl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.dm = icmp ult i64 %i.dg, 16
  call void @llvm.assume(i1 %i.dm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.dn = load i64, ptr %i.l, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.do = phi i64 [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.dj, %i.do
  br i1 %.not.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dg ; 2 uses
  %cond.i.i = icmp eq i64 %i.df, 1
  br i1 %cond.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dq = load i8, ptr %.051.ph, align 1, !tbaa !37
  store i8 %i.dq, ptr %i.dp, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dp, ptr align 1 %.051.ph, i64 %i.df, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.dg, i64 noundef 0, ptr noundef %.051.ph, i64 noundef %i.df)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.o, %bb.p, %bb.q
  store i64 %i.dj, ptr %i.h, align 8, !tbaa !45
  %i.dr = load ptr, ptr %2, align 8, !tbaa !61
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dj
  store i8 0, ptr %i.ds, align 1, !tbaa !37
  store ptr %.152, ptr %i.d, align 8, !tbaa !88
  store ptr %.152, ptr %i.e, align 8, !tbaa !88
  %i.dt = icmp eq ptr %.152, %1
  br i1 %i.dt, label %.thread161, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %bb.k
  %i.du = phi ptr [ %.152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ], [ %.051.ph, %bb.k ] ; 4 uses
  %i.dv = load i8, ptr %i.y, align 1, !tbaa !402, !range !51, !noundef !52
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dx = load i8, ptr %i.z, align 16, !tbaa !138, !range !51, !noundef !52
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dz = load i8, ptr %i.aa, align 8, !tbaa !403, !range !51, !noundef !52
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.eb = load ptr, ptr %i.e, align 8, !tbaa !88  ; 2 uses
  %.not.i71 = icmp ult ptr %i.eb, %i.du
  br i1 %.not.i71, label %_ZN6google12Check_GEImplIPKhS2_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit, label %_ZN6google12Check_GEImplIPKhS2_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, !prof !122

_ZN6google12Check_GEImplIPKhS2_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit: ; preds = %bb.u
  %i.ec = call noundef ptr @_ZN6google17MakeCheckOpStringIPKhS2_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.64) ; 2 uses
  store ptr %i.ec, ptr %4, align 8, !tbaa !405
  %.not = icmp eq ptr %i.ec, null
  br i1 %.not, label %_ZN6google12Check_GEImplIPKhS2_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge, label %bb.v

_ZN6google12Check_GEImplIPKhS2_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge: ; preds = %_ZN6google12Check_GEImplIPKhS2_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !88
  %.pre167 = load ptr, ptr %i.d, align 8, !tbaa !88
  br label %_ZN6google12Check_GEImplIPKhS2_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread

_ZN6google12Check_GEImplIPKhS2_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread: ; preds = %bb.u, %_ZN6google12Check_GEImplIPKhS2_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge
  %i.ed = phi ptr [ %.pre167, %_ZN6google12Check_GEImplIPKhS2_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge ], [ %i.du, %bb.u ] ; 2 uses
  %i.ee = phi ptr [ %.pre, %_ZN6google12Check_GEImplIPKhS2_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge ], [ %i.eb, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ef = icmp eq ptr %i.ee, %i.ed
  br i1 %i.ef, label %bb.y, label %bb.ad

bb.v:                                             ; preds = %_ZN6google12Check_GEImplIPKhS2_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull @.str.5, i32 noundef 1195, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %5)
          to label %bb.w unwind label %bb.x       ; 0 uses

bb.w:                                             ; preds = %bb.v
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #37
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #37
  unreachable

bb.y:                                             ; preds = %_ZN6google12Check_GEImplIPKhS2_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread
  %i.ei = load i8, ptr %i.z, align 16, !tbaa !138, !range !51, !noundef !52
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = call noundef zeroext i32 @_ZN5folly15utf8ToCodePointERPKhS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %1, i1 noundef zeroext %i.ej)
  %i.el = load i8, ptr %i.z, align 16, !tbaa !138, !range !51, !noundef !52
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = icmp eq i32 %i.ek, 65533
  %or.cond = and i1 %i.en, %i.em
  br i1 %or.cond, label %bb.z, label %._crit_edge

._crit_edge:                                      ; preds = %bb.y
  %.pre168.pre = load ptr, ptr %i.d, align 8, !tbaa !88
  br label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.eo = load i64, ptr %i.h, align 8, !tbaa !45  ; 5 uses
  %i.ep = icmp sgt i64 %i.eo, 9223372036854775804
  br i1 %i.ep, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i73

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #36
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i73: ; preds = %bb.z
  %i.eq = add nsw i64 %i.eo, 3                    ; 3 uses
  %i.er = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.l
end_hunk_1
begin_hunk_2_@_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE6expectEc:bb.a
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.t = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.w = load i64, ptr %i.u, align 8, !tbaa !37
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #35
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load i64, ptr %i.q, align 8, !tbaa !37
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.z) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %.0, label %bb.g, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %.0, label %bb.g, label %bb.j

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.thread
  %.pn.pn17.ph = phi { ptr, i32 } [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.thread ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %.pn.pn17 = phi { ptr, i32 } [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ], [ %.pn.pn17.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.e) #34
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %0, align 8, !tbaa !400
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 3 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !400
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !401
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEEppEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !37
  %i.ag = sext i8 %i.af to i32
  br label %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEEppEv.exit

_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEEppEv.exit: ; preds = %bb.h, %bb.i
  %i.ah = phi i32 [ %i.ag, %bb.i ], [ -1, %bb.h ]
  store i32 %i.ah, ptr %i.c, align 4, !tbaa !409
  ret void

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.g
  %.pn.pn16 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ], [ %.pn.pn17, %bb.g ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ]
  resume { ptr, i32 } %.pn.pn16

bb.k:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5folly7dynamicESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !413  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1244   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #36
  unreachable

_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #38 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %2) #34
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i) #34
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i) #34
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !1243

_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i19) #34
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i19) #34
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !1243

_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i17 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !414
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #35
  br label %_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !1244
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !413
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !414
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNKR5folly7dynamic6atImplERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE19tryEmplaceValueImplImJRmDnEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSC_IKS4_S4_EEEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.211") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.folly::dynamic", align 8   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !394  ; 3 uses
  %.not = icmp ult i64 %i.b, 256
  br i1 %.not, label %.thread68, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl i64 %3, 1
  %i.d = or disjoint i64 %i.c, 1
  %i.e = trunc i64 %3 to i8
  %i.f = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.h = and i64 %i.b, 255
  %i.i = shl nuw i64 1, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.024.i83 = phi i64 [ %i.i, %bb.b ], [ %i.ao, %bb.f ]
  %.026.i82 = phi i64 [ %2, %bb.b ], [ %i.ap, %bb.f ] ; 2 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !394
  %i.l = and i64 %i.k, 255
  %notmask.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i, -1
  %i.n = and i64 %.026.i82, %i.m
  %i.o = load ptr, ptr %1, align 8, !tbaa !398
  %i.p = shl nsw i64 %i.n, 7
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 80
  call void @llvm.prefetch.p0(ptr %i.r, i32 0, i32 3, i32 1)
  %i.s = load <16 x i8>, ptr %i.q, align 16       ; 2 uses
  %i.t = icmp eq <16 x i8> %i.s, %i.g
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = and i32 %i.v, 16383
  %.not70 = icmp eq i32 %i.w, 0
  %i.x = extractelement <16 x i8> %i.s, i64 15
  br i1 %.not70, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.y = icmp ne ptr %i.q, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.y)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.043.0 = phi i32 [ %i.ac, %.critedge.i ], [ %i.v, %.preheader ] ; 4 uses
  %i.z = icmp ne i32 %.sroa.043.0, 0
  call void @llvm.assume(i1 %i.z)
  %i.aa = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.043.0, i1 true)
  %i.ab = add nuw nsw i32 %.sroa.043.0, 65535
  %i.ac = and i32 %i.ab, %.sroa.043.0             ; 2 uses
  %i.ad = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = getelementptr i8, ptr %i.q, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.ah = load i64, ptr %4, align 8, !tbaa !39
  store i32 4, ptr %7, align 8, !tbaa !64
  store i64 %i.ah, ptr %i.j, align 8, !tbaa !39
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !96
  %i.aj = invoke noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %i.ai)
          to label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemImEEbRKT_RKPSt4pairIKS3_S3_E.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  resume { ptr, i32 } %i.ak

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemImEEbRKT_RKPSt4pairIKS3_S3_E.exit: ; preds = %bb.d
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br i1 %i.aj, label %bb.g, label %.critedge.i, !prof !82

.critedge.i:                                      ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemImEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.al = and i32 %i.ac, 16382
  %.not71 = icmp eq i32 %i.al, 0
  br i1 %.not71, label %.loopexit.loopexit, label %bb.d, !llvm.loop !1245

.loopexit.loopexit:                               ; preds = %.critedge.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 15
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !421
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %i.am = phi i8 [ %.pre, %.loopexit.loopexit ], [ %i.x, %bb.c ]
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %.thread68.loopexit, label %bb.f, !prof !82

bb.f:                                             ; preds = %.loopexit
  %i.ao = add i64 %.024.i83, -1                   ; 2 uses
  %i.ap = add i64 %i.d, %.026.i82
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %.thread68.loopexit, label %bb.c, !llvm.loop !1246

bb.g:                                             ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemImEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.aq = getelementptr i8, ptr %i.af, i64 16
  br label %bb.o

.thread68.loopexit:                               ; preds = %.loopexit, %bb.f
  %.pre92 = load i64, ptr %i.a, align 8, !tbaa !394
  br label %.thread68

.thread68:                                        ; preds = %.thread68.loopexit, %bb.a
  %i.ar = phi i64 [ %.pre92, %.thread68.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.as = lshr i64 %i.ar, 8                       ; 2 uses
  %i.at = and i64 %i.ar, 255                      ; 3 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !398   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 14
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !37
  %i.ax = and i8 %i.aw, 15
  %i.ay = zext nneg i8 %i.ax to i64               ; 2 uses
  %i.az = shl i64 %i.ay, %i.at                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.as, %i.az
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread68
  %i.ba = shl nuw i64 1, %i.at
  call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.as, i64 noundef %i.ba, i64 noundef %i.ay, i64 noundef %i.az)
  %.pre93 = load i64, ptr %i.a, align 8, !tbaa !394
  %.pre94 = load ptr, ptr %1, align 8, !tbaa !398
  %.pre95 = and i64 %.pre93, 255
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit: ; preds = %.thread68, %bb.h
  %.pre-phi = phi i64 [ %i.at, %.thread68 ], [ %.pre95, %bb.h ]
  %i.bb = phi ptr [ %i.au, %.thread68 ], [ %.pre94, %bb.h ] ; 4 uses
  %notmask.i32 = shl nsw i64 -1, %.pre-phi
  %i.bc = xor i64 %notmask.i32, -1                ; 2 uses
  %i.bd = and i64 %2, %i.bc
  %i.be = shl nsw i64 %i.bd, 7                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be ; 2 uses
  %i.bg = load <16 x i8>, ptr %i.bf, align 16, !tbaa !37
  %i.bh = icmp eq <16 x i8> %i.bg, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = and i16 %i.bi, 16383                    ; 2 uses
  %.not72 = icmp eq i16 %i.bj, 0
  br i1 %.not72, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %i.bk = shl i64 %3, 1
  %i.bl = or disjoint i64 %i.bk, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.bm = phi i64 [ %i.be, %bb.i ], [ %i.bt, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.br, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 15 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !421 ; 2 uses
  %.not.i33 = icmp eq i8 %i.bp, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = add i8 %i.bp, 1
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !421
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.br = add i64 %i.bl, %.029                    ; 2 uses
  %i.bs = and i64 %i.br, %i.bc
  %i.bt = shl nsw i64 %i.bs, 7                    ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bt
  %i.bv = load <16 x i8>, ptr %i.bu, align 16     ; 2 uses
  %i.bw = icmp eq <16 x i8> %i.bv, zeroinitializer
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %i.by = and i16 %i.bx, 16383                    ; 2 uses
  %.not73 = icmp eq i16 %i.by, 0
  br i1 %.not73, label %bb.j, label %bb.l, !llvm.loop !1247

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bt ; 2 uses
  %i.ca = extractelement <16 x i8> %i.bv, i64 14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 14
  %i.cc = add i8 %i.ca, 16
  store i8 %i.cc, ptr %i.cb, align 2, !tbaa !422
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %.sroa.037.0.in = phi i16 [ %i.bj, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.by, %bb.l ]
  %.1 = phi ptr [ %i.bf, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.bz, %bb.l ] ; 3 uses
  %i.cd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.037.0.in, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64              ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1, i64 %i.ce ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !37
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.48) #41
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit: ; preds = %bb.m
  %i.ci = trunc i64 %3 to i8
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !37
  %i.cj = shl nuw nsw i64 %i.ce, 3
  %i.ck = getelementptr i8, ptr %.1, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 16     ; 3 uses
  %i.cm = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cm)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRmDnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESE_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.cl, i64 %i.ce, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit
  %.sink114 = phi ptr [ %i.aq, %bb.g ], [ %i.cl, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.lcssa109.sink = phi i64 [ %i.ad, %bb.g ], [ %i.ce, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  store ptr %.sink114, ptr %0, align 8, !tbaa !416
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa109.sink, ptr %.sroa.542.0..sroa_idx, align 8, !tbaa !39
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cn, align 8, !tbaa !425
  ret void
}

declare noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRmDnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESE_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #38
          to label %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRmDnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESE_ImmEDpOT_ENKUlvE_clEv.exit unwind label %bb.b ; 5 uses

_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRmDnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESE_ImmEDpOT_ENKUlvE_clEv.exit: ; preds = %bb.a
  store ptr %i.a, ptr %1, align 8, !tbaa !96
  %i.b = load i64, ptr %5, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 4, ptr %i.a, align 8, !tbaa !64
  store i64 %i.b, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.e, align 8, !tbaa !37
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRmDnEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESF_ImmEDpOT_EUlvE_PFvPSA_SL_SM_EJSR_RSL_RSM_EvEET2_OT_OT0_DpOT1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #34 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE14eraseBlankColdEPS9_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmE(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.c, !inline_history !24

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.b
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRmDnEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESF_ImmEDpOT_EUlvE_PFvPSA_SL_SM_EJSR_RSL_RSM_EvEET2_OT_OT0_DpOT1_.exit

end_hunk_2
begin_hunk_3_@_ZN5folly4json11parse_errorD0Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3EEEE4callIJA11_cccPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(11) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !54     ; 13 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(11) %0) #34 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45   ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #36
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.k = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.i, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.g, %i.m
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not8.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.b, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %0, align 1, !tbaa !37
  store i8 %i.o, ptr %i.n, align 1, !tbaa !37
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 dereferenceable(11) %0, i64 %i.b, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(11) %0, i64 noundef %i.b)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !45
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !37
  %i.r = load i8, ptr %1, align 1, !tbaa !37
  %i.s = load i64, ptr %i.c, align 8, !tbaa !45   ; 4 uses
  %i.t = add i64 %i.s, 1                          ; 3 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.i
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i14: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit
  %i.w = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit
  %i.x = load i64, ptr %i.i, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i13: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i14
  %i.y = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i14 ]
  %i.z = icmp ugt i64 %i.t, %i.y
  br i1 %i.z, label %bb.h, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i13
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.s, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !61
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i13, %bb.h
  %i.aa = phi ptr [ %.pre.i.i.i, %bb.h ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i13 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  store i8 %i.r, ptr %i.ab, align 1, !tbaa !37
  store i64 %i.t, ptr %i.c, align 8, !tbaa !45
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.t
  store i8 0, ptr %i.ad, align 1, !tbaa !37
  %i.ae = load i8, ptr %2, align 1, !tbaa !37
  %i.af = load i64, ptr %i.c, align 8, !tbaa !45  ; 4 uses
  %i.ag = add i64 %i.af, 1                        ; 3 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.i
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i18: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit
  %i.aj = icmp ult i64 %i.af, 16
  tail call void @llvm.assume(i1 %i.aj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i18
  %i.al = phi i64 [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i18 ]
  %i.am = icmp ugt i64 %i.ag, %i.al
  br i1 %i.am, label %bb.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit19

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.af, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.i17 = load ptr, ptr %i.a, align 8, !tbaa !61
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit19

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit19: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16, %bb.i
  %i.an = phi ptr [ %.pre.i.i.i17, %bb.i ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store i8 %i.ae, ptr %i.ao, align 1, !tbaa !37
  store i64 %i.ag, ptr %i.c, align 8, !tbaa !45
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ag
  store i8 0, ptr %i.aq, align 1, !tbaa !37
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE19tryEmplaceValueImplIS4_JRKSt21piecewise_construct_tSt5tupleIJOS4_EESG_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSH_IKS4_S4_EEEEEbESH_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.211") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !394  ; 3 uses
  %.not = icmp ult i64 %i.b, 256
  br i1 %.not, label %.thread69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl i64 %3, 1
  %i.d = or disjoint i64 %i.c, 1
  %i.e = trunc i64 %3 to i8
  %i.f = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.h = and i64 %i.b, 255
  %i.i = shl nuw i64 1, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i82 = phi i64 [ %i.i, %bb.b ], [ %i.al, %bb.e ]
  %.026.i81 = phi i64 [ %2, %bb.b ], [ %i.am, %bb.e ] ; 2 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !394
  %i.k = and i64 %i.j, 255
  %notmask.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i, -1
  %i.m = and i64 %.026.i81, %i.l
  %i.n = load ptr, ptr %1, align 8, !tbaa !398
  %i.o = shl nsw i64 %i.m, 7
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 5 uses
  %i.q = getelementptr i8, ptr %i.p, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.q, i32 0, i32 3, i32 1)
  %i.r = load <16 x i8>, ptr %i.p, align 16       ; 2 uses
  %i.s = icmp eq <16 x i8> %i.r, %i.g
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %i.v = and i32 %i.u, 16383
  %.not71 = icmp eq i32 %i.v, 0
  %i.w = extractelement <16 x i8> %i.r, i64 15
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.x = icmp ne ptr %i.p, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.x)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.ah, %.critedge.i ], [ %i.u, %.preheader ] ; 4 uses
  %i.y = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.y)
  %i.z = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = getelementptr i8, ptr %i.p, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !96
  %i.af = tail call noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.ae)
  br i1 %i.af, label %bb.f, label %.critedge.i, !prof !82

.critedge.i:                                      ; preds = %bb.d
  %i.ag = add nuw nsw i32 %.sroa.044.0, 65535
  %i.ah = and i32 %i.ag, %.sroa.044.0             ; 2 uses
  %i.ai = and i32 %i.ah, 16382
  %.not72 = icmp eq i32 %i.ai, 0
  br i1 %.not72, label %.loopexit.loopexit, label %bb.d, !llvm.loop !1282

.loopexit.loopexit:                               ; preds = %.critedge.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !421
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %i.aj = phi i8 [ %.pre, %.loopexit.loopexit ], [ %i.w, %bb.c ]
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %.thread69.loopexit, label %bb.e, !prof !82

bb.e:                                             ; preds = %.loopexit
  %i.al = add i64 %.024.i82, -1                   ; 2 uses
  %i.am = add i64 %i.d, %.026.i81
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %.thread69.loopexit, label %bb.c, !llvm.loop !1283

bb.f:                                             ; preds = %bb.d
  %i.an = getelementptr i8, ptr %i.ac, i64 16
  br label %bb.n

.thread69.loopexit:                               ; preds = %.loopexit, %bb.e
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !394
  br label %.thread69

.thread69:                                        ; preds = %.thread69.loopexit, %bb.a
  %i.ao = phi i64 [ %.pre89, %.thread69.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.ap = lshr i64 %i.ao, 8                       ; 2 uses
  %i.aq = and i64 %i.ao, 255                      ; 3 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !398   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 14
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37
  %i.au = and i8 %i.at, 15
  %i.av = zext nneg i8 %i.au to i64               ; 2 uses
  %i.aw = shl i64 %i.av, %i.aq                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.ap, %i.aw
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.ax = shl nuw i64 1, %i.aq
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ap, i64 noundef %i.ax, i64 noundef %i.av, i64 noundef %i.aw)
  %.pre90 = load i64, ptr %i.a, align 8, !tbaa !394
  %.pre91 = load ptr, ptr %1, align 8, !tbaa !398
  %.pre92 = and i64 %.pre90, 255
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi = phi i64 [ %i.aq, %.thread69 ], [ %.pre92, %bb.g ]
  %i.ay = phi ptr [ %i.ar, %.thread69 ], [ %.pre91, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi
  %i.az = xor i64 %notmask.i33, -1                ; 2 uses
  %i.ba = and i64 %2, %i.az
  %i.bb = shl nsw i64 %i.ba, 7                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = load <16 x i8>, ptr %i.bc, align 16, !tbaa !37
  %i.be = icmp eq <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 16383                    ; 2 uses
  %.not73 = icmp eq i16 %i.bg, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %i.bh = shl i64 %3, 1
  %i.bi = or disjoint i64 %i.bh, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bj = phi i64 [ %i.bb, %bb.h ], [ %i.bq, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.bo, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 15 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !421 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bm, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = add i8 %i.bm, 1
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !421
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bo = add i64 %i.bi, %.030                    ; 2 uses
  %i.bp = and i64 %i.bo, %i.az
  %i.bq = shl nsw i64 %i.bp, 7                    ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bq
  %i.bs = load <16 x i8>, ptr %i.br, align 16     ; 2 uses
  %i.bt = icmp eq <16 x i8> %i.bs, zeroinitializer
  %i.bu = bitcast <16 x i1> %i.bt to i16
  %i.bv = and i16 %i.bu, 16383                    ; 2 uses
  %.not74 = icmp eq i16 %i.bv, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !1284

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bq ; 2 uses
  %i.bx = extractelement <16 x i8> %i.bs, i64 14
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 14
  %i.bz = add i8 %i.bx, 16
  store i8 %i.bz, ptr %i.by, align 2, !tbaa !422
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.bg, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.bv, %bb.k ]
  %.1 = phi ptr [ %i.bc, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.bw, %bb.k ] ; 3 uses
  %i.ca = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64              ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !37
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.48) #41
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit: ; preds = %bb.l
  %i.cf = trunc i64 %3 to i8
  store i8 %i.cf, ptr %i.cc, align 1, !tbaa !37
  %i.cg = shl nuw nsw i64 %i.cb, 3
  %i.ch = getelementptr i8, ptr %.1, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 16     ; 3 uses
  %i.cj = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cj)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESG_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESJ_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.ci, i64 %i.cb, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit
  %.sink109 = phi ptr [ %i.an, %bb.f ], [ %i.ci, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.lcssa104.sink = phi i64 [ %i.aa, %bb.f ], [ %i.cb, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  store ptr %.sink109, ptr %0, align 8, !tbaa !416
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa104.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !39
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ck, align 8, !tbaa !425
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESG_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESJ_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #38
          to label %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESG_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESJ_ImmEDpOT_ENKUlvE_clEv.exit unwind label %bb.b ; 3 uses

_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESG_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESJ_ImmEDpOT_ENKUlvE_clEv.exit: ; preds = %bb.a
  store ptr %i.a, ptr %1, align 8, !tbaa !96
  %i.b = load i64, ptr %6, align 8, !tbaa !102
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %7, align 8, !tbaa !102
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.c) #34
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.e) #34
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESH_EEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESK_ImmEDpOT_EUlvE_PFvPSA_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #34 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE14eraseBlankColdEPS9_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmE(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i unwind label %bb.c, !inline_history !24

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i: ; preds = %bb.b
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESH_EEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESK_ImmEDpOT_EUlvE_PFvPSA_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #37
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESH_EEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESK_ImmEDpOT_EUlvE_PFvPSA_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESG_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESJ_ImmEDpOT_ENKUlvE_clEv.exit, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i
  %i.m = and i64 %2, 255                          ; 2 uses
  %i.n = icmp samesign ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  %i.o = lshr i64 %i.m, 1
  %i.p = ptrtoint ptr %1 to i64
  %i.q = or i64 %i.o, %i.p                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !90
  %i.t = icmp ult i64 %i.s, %i.q
  br i1 %i.t, label %bb.f, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

end_hunk_3
