Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/semver-d35bd5e24f84bdab.semver.6b71945c61af6f55-cgu.0?download=true
inline.NumInlined: 523
inline.NumDeleted: 83
begin_hunk_0_@_RNvXs5_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp:bb.a
  %i.af = tail call fastcc i64 @_RNvNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len15decode_len_cold(ptr nonnull readonly %i.ad) #29
  br label %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i16

bb.k:                                             ; preds = %bb.i
  %i.ag = and i16 %.sroa.0.0.copyload.i.i.i.i.i15, 127 ; 2 uses
  %i.ah = zext nneg i16 %i.ag to i64
  %.not.i.i.i.i.i21 = icmp eq i16 %i.ag, 0
  br i1 %.not.i.i.i.i.i21, label %bb.l, label %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i16

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_RNvNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 @10) #30
  unreachable

_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i16: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i.i17 = phi i64 [ %i.af, %bb.j ], [ %i.ah, %bb.k ] ; 2 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0.0.i.i.i.i17, i1 true)
  %i.aj = trunc nuw nsw i64 %i.ai to i8
  %narrow1.i.i.i.i18 = sub nuw nsw i8 70, %i.aj
  %i.ak = udiv i8 %narrow1.i.i.i.i18, 7
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.al
  br label %_RNvMs2_Cs9dV2ZPf2jOH_6semverNtB5_10Prerelease6as_str.exit23

bb.m:                                             ; preds = %bb.h
  %i.an = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = lshr i32 %i.ao, 3
  %narrow.i.i.i.i22 = sub nuw nsw i32 8, %i.ap
  %i.aq = zext nneg i32 %narrow.i.i.i.i22 to i64
  br label %_RNvMs2_Cs9dV2ZPf2jOH_6semverNtB5_10Prerelease6as_str.exit23

_RNvMs2_Cs9dV2ZPf2jOH_6semverNtB5_10Prerelease6as_str.exit23: ; preds = %_RNvMs2_Cs9dV2ZPf2jOH_6semverNtB5_10Prerelease6as_str.exit, %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i16, %bb.m
  %.sroa.0.0.i.i97 = phi ptr [ %.sroa.0.0.i.i96, %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i16 ], [ %.sroa.0.0.i.i96, %bb.m ], [ %i.z, %_RNvMs2_Cs9dV2ZPf2jOH_6semverNtB5_10Prerelease6as_str.exit ]
  %.sroa.4.0.i.i95 = phi i64 [ %.sroa.4.0.i.i94, %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i16 ], [ %.sroa.4.0.i.i94, %bb.m ], [ %i.u, %_RNvMs2_Cs9dV2ZPf2jOH_6semverNtB5_10Prerelease6as_str.exit ] ; 3 uses
  %.sroa.4.0.i.i19 = phi i64 [ %.sroa.0.0.i.i.i.i17, %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i16 ], [ %i.aq, %bb.m ], [ 0, %_RNvMs2_Cs9dV2ZPf2jOH_6semverNtB5_10Prerelease6as_str.exit ] ; 3 uses
  %.sroa.0.0.i.i20 = phi ptr [ %i.am, %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i16 ], [ %1, %bb.m ], [ inttoptr (i64 1 to ptr), %_RNvMs2_Cs9dV2ZPf2jOH_6semverNtB5_10Prerelease6as_str.exit ]
  store i64 0, ptr %i.f, align 8
  %.sroa.2.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.4.0.i.i19, ptr %.sroa.2.0..sroa_idx.i25, align 8
  %.sroa.3.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.0.0.i.i20, ptr %.sroa.3.0..sroa_idx.i26, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.4.0.i.i19, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i27, align 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 0, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i28, align 8
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %.sroa.4.0.i.i19, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i29, align 8
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 46, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i30, align 8
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store i32 46, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i31, align 4
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i8 1, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx.i32, align 8
  %.sroa.4.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 1, ptr %.sroa.4.0..sroa_idx.i33, align 8
  %.sroa.5.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.f, i64 65
  store i8 0, ptr %.sroa.5.0..sroa_idx.i34, align 1
  store i64 0, ptr %i.e, align 8
  %.sroa.267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.4.0.i.i95, ptr %.sroa.267.0..sroa_idx, align 8
  %.sroa.368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.0.0.i.i97, ptr %.sroa.368.0..sroa_idx, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.4.0.i.i95, ptr %.sroa.469.0..sroa_idx, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 0, ptr %.sroa.570.0..sroa_idx, align 8
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.sroa.4.0.i.i95, ptr %.sroa.671.0..sroa_idx, align 8
  %.sroa.772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i32 46, ptr %.sroa.772.0..sroa_idx, align 8
  %.sroa.873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  store i32 46, ptr %.sroa.873.0..sroa_idx, align 4
  %.sroa.974.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i8 1, ptr %.sroa.974.0..sroa_idx, align 8
  %.sroa.1176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i8 1, ptr %.sroa.1176.0..sroa_idx, align 8
  %.sroa.1277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 65
  store i8 0, ptr %.sroa.1277.0..sroa_idx, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.n

bb.n:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs5_NtCs9dV2ZPf2jOH_6semver5implsNtB10_10PrereleaseNtB3_3Ord3cmp0EB10_.exit, %_RNvMs2_Cs9dV2ZPf2jOH_6semverNtB5_10Prerelease6as_str.exit23
  %i.at = call { ptr, i64 } @_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 %i.e) #28 ; 2 uses
  %i.au = extractvalue { ptr, i64 } %i.at, 0      ; 5 uses
  %i.av = extractvalue { ptr, i64 } %i.at, 1      ; 6 uses
  %.not = icmp eq ptr %i.au, null
  %i.aw = call { ptr, i64 } @_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 %i.f) #28 ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0      ; 6 uses
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1      ; 5 uses
  %.not8 = icmp eq ptr %i.ax, null
  br i1 %.not8, label %.loopexit, label %bb.q

bb.p:                                             ; preds = %bb.n
  %.not.i = icmp ne ptr %i.ax, null
  %. = sext i1 %.not.i to i8
  br label %.loopexit

.loopexit:                                        ; preds = %_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs5_NtCs9dV2ZPf2jOH_6semver5implsNtB10_10PrereleaseNtB3_3Ord3cmp0EB10_.exit, %bb.aa, %bb.z, %bb.o, %bb.p, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i8 [ %., %bb.p ], [ 0, %bb.a ], [ 1, %bb.b ], [ -1, %bb.c ], [ %storemerge, %_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs5_NtCs9dV2ZPf2jOH_6semver5implsNtB10_10PrereleaseNtB3_3Ord3cmp0EB10_.exit ], [ 1, %bb.o ], [ 1, %bb.z ], [ -1, %bb.aa ]
  ret i8 %.sroa.0.0

bb.q:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  store ptr %i.au, ptr %i.d, align 8
  store ptr %i.az, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.ba = call ptr @_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.d) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = add i8 %i.bb, -58
  %.sroa.0.0.i.i.i.i.i.i.i.i = icmp ult i8 %i.bc, -10
  %i.bd = call zeroext i1 @_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowuENtNtB4_9try_trait3Try6branchCs2zr4xB4Ewz8_10serde_core(i1 zeroext %.sroa.0.0.i.i.i.i.i.i.i.i) #28
  br i1 %i.bd, label %bb.u, label %bb.r

bb.t:                                             ; preds = %bb.r
  %i.be = call zeroext i1 @_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowuENtNtB4_9try_trait3Try11from_outputCs2zr4xB4Ewz8_10serde_core() #28
  br label %_RINvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvXs5_NtCs9dV2ZPf2jOH_6semver5implsNtB1G_10PrereleaseNtNtBa_3cmp3Ord3cmps_0EB1G_.exit

bb.u:                                             ; preds = %bb.s
  %i.bf = call zeroext i1 @_RNvXs_NtNtCshzWfHUSfYae_4core3ops12control_flowINtB4_11ControlFlowuEINtNtB6_9try_trait12FromResidualIBK_uNtNtB8_7convert10InfallibleEE13from_residualCs2zr4xB4Ewz8_10serde_core() #28
  br label %_RINvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvXs5_NtCs9dV2ZPf2jOH_6semver5implsNtB1G_10PrereleaseNtNtBa_3cmp3Ord3cmps_0EB1G_.exit

_RINvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvXs5_NtCs9dV2ZPf2jOH_6semver5implsNtB1G_10PrereleaseNtNtBa_3cmp3Ord3cmps_0EB1G_.exit: ; preds = %bb.t, %bb.u
  %.sroa.0.0.in.i.i.i.i = phi i1 [ %i.bf, %bb.u ], [ %i.be, %bb.t ]
  %i.bg = zext i1 %.sroa.0.0.in.i.i.i.i to i8
  store i8 %i.bg, ptr %i.b, align 1
  %i.bh = call zeroext i1 @_RNvXs9_NtNtCshzWfHUSfYae_4core3ops12control_flowINtB5_11ControlFlowuENtNtB9_3cmp9PartialEq2eqCs2zr4xB4Ewz8_10serde_core(ptr nonnull %i.b, ptr nonnull @0) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay
  store ptr %i.ax, ptr %i.c, align 8
  store ptr %i.bi, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %_RINvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvXs5_NtCs9dV2ZPf2jOH_6semver5implsNtB1G_10PrereleaseNtNtBa_3cmp3Ord3cmps_0EB1G_.exit
  %i.bj = call ptr @_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.c) #28 ; 2 uses
  %.not.i.i.i.i35 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i35, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = add i8 %i.bk, -58
  %.sroa.0.0.i.i.i.i.i.i.i.i36 = icmp ult i8 %i.bl, -10
  %i.bm = call zeroext i1 @_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowuENtNtB4_9try_trait3Try6branchCs2zr4xB4Ewz8_10serde_core(i1 zeroext %.sroa.0.0.i.i.i.i.i.i.i.i36) #28
  br i1 %i.bm, label %bb.y, label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.bn = call zeroext i1 @_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowuENtNtB4_9try_trait3Try11from_outputCs2zr4xB4Ewz8_10serde_core() #28
  br label %_RINvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvXs5_NtCs9dV2ZPf2jOH_6semver5implsNtB1G_10PrereleaseNtNtBa_3cmp3Ord3cmps_0EB1G_.exit38

bb.y:                                             ; preds = %bb.w
  %i.bo = call zeroext i1 @_RNvXs_NtNtCshzWfHUSfYae_4core3ops12control_flowINtB4_11ControlFlowuEINtNtB6_9try_trait12FromResidualIBK_uNtNtB8_7convert10InfallibleEE13from_residualCs2zr4xB4Ewz8_10serde_core() #28
  br label %_RINvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvXs5_NtCs9dV2ZPf2jOH_6semver5implsNtB1G_10PrereleaseNtNtBa_3cmp3Ord3cmps_0EB1G_.exit38

_RINvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvXs5_NtCs9dV2ZPf2jOH_6semver5implsNtB1G_10PrereleaseNtNtBa_3cmp3Ord3cmps_0EB1G_.exit38: ; preds = %bb.x, %bb.y
  %.sroa.0.0.in.i.i.i.i37 = phi i1 [ %i.bo, %bb.y ], [ %i.bn, %bb.x ]
  %i.bp = zext i1 %.sroa.0.0.in.i.i.i.i37 to i8
  store i8 %i.bp, ptr %i.a, align 1
  %i.bq = call zeroext i1 @_RNvXs9_NtNtCshzWfHUSfYae_4core3ops12control_flowINtB5_11ControlFlowuENtNtB9_3cmp9PartialEq2eqCs2zr4xB4Ewz8_10serde_core(ptr nonnull %i.a, ptr nonnull @0) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.bh, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_RINvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvXs5_NtCs9dV2ZPf2jOH_6semver5implsNtB1G_10PrereleaseNtNtBa_3cmp3Ord3cmps_0EB1G_.exit38
  br i1 %i.bq, label %.loopexit, label %bb.ab

bb.aa:                                            ; preds = %_RINvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvXs5_NtCs9dV2ZPf2jOH_6semver5implsNtB1G_10PrereleaseNtNtBa_3cmp3Ord3cmps_0EB1G_.exit38
  br i1 %i.bq, label %bb.ac, label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.av, i64 %i.ay)
  %i.br = call i32 @memcmp(ptr nonnull readonly %i.au, ptr nonnull readonly %i.ax, i64 %spec.store.select.i.i) ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp eq i32 %i.br, 0
  %i.bu = sub i64 %i.av, %i.ay
  %spec.select.i.i = select i1 %i.bt, i64 %i.bu, i64 %i.bs
  %i.bv = call range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i, i64 0)
  br label %_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs5_NtCs9dV2ZPf2jOH_6semver5implsNtB10_10PrereleaseNtB3_3Ord3cmp0EB10_.exit

_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs5_NtCs9dV2ZPf2jOH_6semver5implsNtB10_10PrereleaseNtB3_3Ord3cmp0EB10_.exit: ; preds = %bb.ad, %bb.ac, %bb.ab
  %storemerge = phi i8 [ %i.bv, %bb.ab ], [ %i.bz, %bb.ad ], [ %i.bw, %bb.ac ] ; 2 uses
  %.not83 = icmp eq i8 %storemerge, 0
  br i1 %.not83, label %bb.n, label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  %i.bw = call range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.av, i64 %i.ay)
  %i.bx = icmp eq i64 %i.av, %i.ay
  br i1 %i.bx, label %bb.ad, label %_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs5_NtCs9dV2ZPf2jOH_6semver5implsNtB10_10PrereleaseNtB3_3Ord3cmp0EB10_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.by = call i32 @memcmp(ptr nonnull readonly %i.au, ptr nonnull readonly %i.ax, i64 %i.av)
  %2 = sext i32 %i.by to i64
  %i.bz = call range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %2, i64 0)
  br label %_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs5_NtCs9dV2ZPf2jOH_6semver5implsNtB10_10PrereleaseNtB3_3Ord3cmp0EB10_.exit
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs5_NtCs9dV2ZPf2jOH_6semver7displayNtB7_13BuildMetadataNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_fmtCs9dV2ZPf2jOH_6semver.exit:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtCs9dV2ZPf2jOH_6semver13BuildMetadataNtB6_7Display3fmtBy_, ptr %.sroa.2.0..sroa_idx, align 8
  %i.c = call { ptr, ptr } @_RINvMs2_NtCshzWfHUSfYae_4core3fmtNtB6_9Arguments3newKj15_Kj1_ECs2zr4xB4Ewz8_10serde_core(ptr nonnull @60, ptr nonnull align 8 %i.a) #28 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 1
  %i.e = extractvalue { ptr, ptr } %i.c, 0
  %i.f = load ptr, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr %i.f, ptr align 8 %i.h, ptr %i.e, ptr %i.d)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define range(i8 -1, 2) i8 @_RNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB7_13BuildMetadataNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr align 8 %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  %i.g = alloca [72 x i8], align 8                ; 12 uses
  %i.h = alloca [72 x i8], align 8                ; 12 uses
  %.val10 = load ptr, ptr %0, align 8             ; 5 uses
  %.val11 = load ptr, ptr %1, align 8             ; 4 uses
  %i.i = icmp eq ptr %.val10, %.val11
  br i1 %i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %.val10, inttoptr (i64 -1 to ptr)
  %i.k = ptrtoint ptr %.val10 to i64              ; 2 uses
  br i1 %i.j, label %_RNvMs3_Cs9dV2ZPf2jOH_6semverNtB5_13BuildMetadata6as_str.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp sgt ptr %.val10, inttoptr (i64 -1 to ptr)
  br i1 %i.l, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %.val10, i64 %i.k  ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %i.m, align 1 ; 2 uses
  %i.n = icmp sgt i16 %.sroa.0.0.copyload.i.i.i.i.i, -1
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call fastcc i64 @_RNvNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len15decode_len_cold(ptr nonnull readonly %i.m) #29
  %.val1.i.i13.pr.pre.pre = load ptr, ptr %1, align 8
  br label %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = and i16 %.sroa.0.0.copyload.i.i.i.i.i, 127 ; 2 uses
  %i.q = zext nneg i16 %i.p to i64
  %.not.i.i.i.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_RNvNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 @10) #30
  unreachable

_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i: ; preds = %bb.f, %bb.e
  %.val1.i.i13.pr.pre = phi ptr [ %.val1.i.i13.pr.pre.pre, %bb.e ], [ %.val11, %bb.f ]
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.o, %bb.e ], [ %i.q, %bb.f ] ; 2 uses
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0.0.i.i.i.i, i1 true)
  %i.s = trunc nuw nsw i64 %i.r to i8
  %narrow1.i.i.i.i = sub nuw nsw i8 70, %i.s
  %i.t = udiv i8 %narrow1.i.i.i.i, 7
  %i.u = zext nneg i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.u
  br label %_RNvMs3_Cs9dV2ZPf2jOH_6semverNtB5_13BuildMetadata6as_str.exit

bb.h:                                             ; preds = %bb.c
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = lshr i32 %i.x, 3
  %narrow.i.i.i.i = sub nuw nsw i32 8, %i.y
  %i.z = zext nneg i32 %narrow.i.i.i.i to i64
  br label %_RNvMs3_Cs9dV2ZPf2jOH_6semverNtB5_13BuildMetadata6as_str.exit

_RNvMs3_Cs9dV2ZPf2jOH_6semverNtB5_13BuildMetadata6as_str.exit: ; preds = %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i, %bb.h, %bb.b
  %.val1.i.i13 = phi ptr [ %.val11, %bb.b ], [ %.val11, %bb.h ], [ %.val1.i.i13.pr.pre, %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i ] ; 4 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.b ], [ %i.z, %bb.h ], [ %.sroa.0.0.i.i.i.i, %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i ] ; 3 uses
  %.sroa.0.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.b ], [ %0, %bb.h ], [ %i.v, %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i ]
  %i.aa = icmp eq ptr %.val1.i.i13, inttoptr (i64 -1 to ptr)
  %i.ab = ptrtoint ptr %.val1.i.i13 to i64        ; 2 uses
  br i1 %i.aa, label %_RNvMs3_Cs9dV2ZPf2jOH_6semverNtB5_13BuildMetadata6as_str.exit22, label %bb.i

bb.i:                                             ; preds = %_RNvMs3_Cs9dV2ZPf2jOH_6semverNtB5_13BuildMetadata6as_str.exit
  %i.ac = icmp sgt ptr %.val1.i.i13, inttoptr (i64 -1 to ptr)
  br i1 %i.ac, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %.val1.i.i13, i64 %i.ab ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i14 = load i16, ptr %i.ad, align 1 ; 2 uses
  %i.ae = icmp sgt i16 %.sroa.0.0.copyload.i.i.i.i.i14, -1
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = tail call fastcc i64 @_RNvNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len15decode_len_cold(ptr nonnull readonly %i.ad) #29
  br label %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i15

bb.l:                                             ; preds = %bb.j
  %i.ag = and i16 %.sroa.0.0.copyload.i.i.i.i.i14, 127 ; 2 uses
  %i.ah = zext nneg i16 %i.ag to i64
  %.not.i.i.i.i.i20 = icmp eq i16 %i.ag, 0
  br i1 %.not.i.i.i.i.i20, label %bb.m, label %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i15

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_RNvNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 @10) #30
  unreachable

_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i15: ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i.i.i16 = phi i64 [ %i.af, %bb.k ], [ %i.ah, %bb.l ] ; 2 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0.0.i.i.i.i16, i1 true)
  %i.aj = trunc nuw nsw i64 %i.ai to i8
  %narrow1.i.i.i.i17 = sub nuw nsw i8 70, %i.aj
  %i.ak = udiv i8 %narrow1.i.i.i.i17, 7
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.al
  br label %_RNvMs3_Cs9dV2ZPf2jOH_6semverNtB5_13BuildMetadata6as_str.exit22

bb.n:                                             ; preds = %bb.i
  %i.an = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = lshr i32 %i.ao, 3
  %narrow.i.i.i.i21 = sub nuw nsw i32 8, %i.ap
  %i.aq = zext nneg i32 %narrow.i.i.i.i21 to i64
  br label %_RNvMs3_Cs9dV2ZPf2jOH_6semverNtB5_13BuildMetadata6as_str.exit22

_RNvMs3_Cs9dV2ZPf2jOH_6semverNtB5_13BuildMetadata6as_str.exit22: ; preds = %_RNvMs3_Cs9dV2ZPf2jOH_6semverNtB5_13BuildMetadata6as_str.exit, %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i15, %bb.n
  %.sroa.4.0.i.i18 = phi i64 [ %.sroa.0.0.i.i.i.i16, %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i15 ], [ %i.aq, %bb.n ], [ 0, %_RNvMs3_Cs9dV2ZPf2jOH_6semverNtB5_13BuildMetadata6as_str.exit ] ; 3 uses
  %.sroa.0.0.i.i19 = phi ptr [ %i.am, %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10ptr_as_str.exit.i.i15 ], [ %1, %bb.n ], [ inttoptr (i64 1 to ptr), %_RNvMs3_Cs9dV2ZPf2jOH_6semverNtB5_13BuildMetadata6as_str.exit ]
  store i64 0, ptr %i.h, align 8
  %.sroa.2.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.4.0.i.i18, ptr %.sroa.2.0..sroa_idx.i24, align 8
  %.sroa.3.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.sroa.0.0.i.i19, ptr %.sroa.3.0..sroa_idx.i25, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.4.0.i.i18, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i26, align 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 0, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i27, align 8
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %.sroa.4.0.i.i18, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i28, align 8
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i32 46, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i29, align 8
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store i32 46, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i30, align 4
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i8 1, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx.i31, align 8
  %.sroa.4.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i8 1, ptr %.sroa.4.0..sroa_idx.i32, align 8
  %.sroa.5.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.h, i64 65
  store i8 0, ptr %.sroa.5.0..sroa_idx.i33, align 1
  store i64 0, ptr %i.g, align 8
  %.sroa.276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.4.0.i.i, ptr %.sroa.276.0..sroa_idx, align 8
  %.sroa.377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.0.0.i.i, ptr %.sroa.377.0..sroa_idx, align 8
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.4.0.i.i, ptr %.sroa.478.0..sroa_idx, align 8
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 0, ptr %.sroa.579.0..sroa_idx, align 8
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %.sroa.4.0.i.i, ptr %.sroa.680.0..sroa_idx, align 8
  %.sroa.781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i32 46, ptr %.sroa.781.0..sroa_idx, align 8
  %.sroa.882.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  store i32 46, ptr %.sroa.882.0..sroa_idx, align 4
  %.sroa.983.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i8 1, ptr %.sroa.983.0..sroa_idx, align 8
  %.sroa.1185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i8 1, ptr %.sroa.1185.0..sroa_idx, align 8
  %.sroa.1286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 65
  store i8 0, ptr %.sroa.1286.0..sroa_idx, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB10_13BuildMetadataNtB3_3Ord3cmps0_0EB10_.exit, %_RNvMs3_Cs9dV2ZPf2jOH_6semverNtB5_13BuildMetadata6as_str.exit22
  %i.av = call { ptr, i64 } @_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 %i.g) #28 ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 0      ; 6 uses
  %i.ax = extractvalue { ptr, i64 } %i.av, 1      ; 7 uses
  %.not = icmp eq ptr %i.aw, null
  %i.ay = call { ptr, i64 } @_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 %i.h) #28 ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ay, 0      ; 7 uses
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1      ; 7 uses
  %.not8 = icmp eq ptr %i.az, null
  br i1 %.not8, label %.loopexit, label %bb.r

bb.q:                                             ; preds = %bb.o
  %.not.i = icmp ne ptr %i.az, null
  %. = sext i1 %.not.i to i8
  br label %.loopexit

.loopexit:                                        ; preds = %_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB10_13BuildMetadataNtB3_3Ord3cmps0_0EB10_.exit, %bb.ab, %bb.aa, %bb.p, %bb.q, %bb.a
  %.sroa.0.0 = phi i8 [ %., %bb.q ], [ 0, %bb.a ], [ %storemerge, %_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB10_13BuildMetadataNtB3_3Ord3cmps0_0EB10_.exit ], [ 1, %bb.p ], [ 1, %bb.aa ], [ -1, %bb.ab ]
  ret i8 %.sroa.0.0

bb.r:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax ; 2 uses
  store ptr %i.aw, ptr %i.f, align 8
  store ptr %i.bb, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.bc = call ptr @_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.f) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = add i8 %i.bd, -58
  %.sroa.0.0.i.i.i.i.i.i.i.i = icmp ult i8 %i.be, -10
  %i.bf = call zeroext i1 @_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowuENtNtB4_9try_trait3Try6branchCs2zr4xB4Ewz8_10serde_core(i1 zeroext %.sroa.0.0.i.i.i.i.i.i.i.i) #28
  br i1 %i.bf, label %bb.v, label %bb.s

bb.u:                                             ; preds = %bb.s
  %i.bg = call zeroext i1 @_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowuENtNtB4_9try_trait3Try11from_outputCs2zr4xB4Ewz8_10serde_core() #28
  br label %_RINvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB1G_13BuildMetadataNtNtBa_3cmp3Ord3cmp0EB1G_.exit

bb.v:                                             ; preds = %bb.t
  %i.bh = call zeroext i1 @_RNvXs_NtNtCshzWfHUSfYae_4core3ops12control_flowINtB4_11ControlFlowuEINtNtB6_9try_trait12FromResidualIBK_uNtNtB8_7convert10InfallibleEE13from_residualCs2zr4xB4Ewz8_10serde_core() #28
  br label %_RINvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB1G_13BuildMetadataNtNtBa_3cmp3Ord3cmp0EB1G_.exit

_RINvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB1G_13BuildMetadataNtNtBa_3cmp3Ord3cmp0EB1G_.exit: ; preds = %bb.u, %bb.v
  %.sroa.0.0.in.i.i.i.i = phi i1 [ %i.bh, %bb.v ], [ %i.bg, %bb.u ]
  %i.bi = zext i1 %.sroa.0.0.in.i.i.i.i to i8
  store i8 %i.bi, ptr %i.d, align 1
  %i.bj = call zeroext i1 @_RNvXs9_NtNtCshzWfHUSfYae_4core3ops12control_flowINtB5_11ControlFlowuENtNtB9_3cmp9PartialEq2eqCs2zr4xB4Ewz8_10serde_core(ptr nonnull %i.d, ptr nonnull @0) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba ; 2 uses
  store ptr %i.az, ptr %i.e, align 8
  store ptr %i.bk, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %_RINvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB1G_13BuildMetadataNtNtBa_3cmp3Ord3cmp0EB1G_.exit
  %i.bl = call ptr @_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.e) #28 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i34, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = add i8 %i.bm, -58
  %.sroa.0.0.i.i.i.i.i.i.i.i35 = icmp ult i8 %i.bn, -10
  %i.bo = call zeroext i1 @_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowuENtNtB4_9try_trait3Try6branchCs2zr4xB4Ewz8_10serde_core(i1 zeroext %.sroa.0.0.i.i.i.i.i.i.i.i35) #28
  br i1 %i.bo, label %bb.z, label %bb.w

bb.y:                                             ; preds = %bb.w
  %i.bp = call zeroext i1 @_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowuENtNtB4_9try_trait3Try11from_outputCs2zr4xB4Ewz8_10serde_core() #28
  br label %_RINvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB1G_13BuildMetadataNtNtBa_3cmp3Ord3cmp0EB1G_.exit37

bb.z:                                             ; preds = %bb.x
  %i.bq = call zeroext i1 @_RNvXs_NtNtCshzWfHUSfYae_4core3ops12control_flowINtB4_11ControlFlowuEINtNtB6_9try_trait12FromResidualIBK_uNtNtB8_7convert10InfallibleEE13from_residualCs2zr4xB4Ewz8_10serde_core() #28
  br label %_RINvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB1G_13BuildMetadataNtNtBa_3cmp3Ord3cmp0EB1G_.exit37

_RINvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB1G_13BuildMetadataNtNtBa_3cmp3Ord3cmp0EB1G_.exit37: ; preds = %bb.y, %bb.z
  %.sroa.0.0.in.i.i.i.i36 = phi i1 [ %i.bq, %bb.z ], [ %i.bp, %bb.y ]
  %i.br = zext i1 %.sroa.0.0.in.i.i.i.i36 to i8
  store i8 %i.br, ptr %i.c, align 1
  %i.bs = call zeroext i1 @_RNvXs9_NtNtCshzWfHUSfYae_4core3ops12control_flowINtB5_11ControlFlowuENtNtB9_3cmp9PartialEq2eqCs2zr4xB4Ewz8_10serde_core(ptr nonnull %i.c, ptr nonnull @0) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.bj, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_RINvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB1G_13BuildMetadataNtNtBa_3cmp3Ord3cmp0EB1G_.exit37
  br i1 %i.bs, label %.loopexit, label %bb.ac

bb.ab:                                            ; preds = %_RINvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB1G_13BuildMetadataNtNtBa_3cmp3Ord3cmp0EB1G_.exit37
  br i1 %i.bs, label %.preheader, label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.ba)
  %i.bt = call i32 @memcmp(ptr nonnull readonly %i.aw, ptr nonnull readonly %i.az, i64 %spec.store.select.i) ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp eq i32 %i.bt, 0
  %i.bw = sub i64 %i.ax, %i.ba
  %spec.select.i = select i1 %i.bv, i64 %i.bw, i64 %i.bu
  %i.bx = call range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i, i64 0)
  br label %_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB10_13BuildMetadataNtB3_3Ord3cmps0_0EB10_.exit

_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB10_13BuildMetadataNtB3_3Ord3cmps0_0EB10_.exit: ; preds = %bb.af, %_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB10_13BuildMetadataNtB3_3Ord3cmps_0EB10_.exit, %bb.ac
  %storemerge = phi i8 [ %i.bx, %bb.ac ], [ %i.dd, %bb.af ], [ %.sroa.0.0.i44, %_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB10_13BuildMetadataNtB3_3Ord3cmps_0EB10_.exit ] ; 2 uses
  %.not88 = icmp eq i8 %storemerge, 0
  br i1 %.not88, label %bb.o, label %.loopexit

.preheader:                                       ; preds = %bb.ab, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i
  %.sroa.3.0.i = phi i64 [ %i.ci, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i ], [ 0, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.3.0.i
  store ptr %i.by, ptr %i.b, align 8, !noalias !53
  store ptr %i.bb, ptr %i.at, align 8, !noalias !53
  %i.bz = call { i32, i32 } @_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.b) #28, !noalias !53 ; 2 uses
  %i.ca = extractvalue { i32, i32 } %i.bz, 0
  %i.cb = trunc i32 %i.ca to i1
  br i1 %i.cb, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i: ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i: ; preds = %.preheader
  %i.cc = extractvalue { i32, i32 } %i.bz, 1
  %i.cd = load ptr, ptr %i.at, align 8, !noalias !53
  %i.ce = load ptr, ptr %i.b, align 8, !noalias !53
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.ax, %i.cf
  %i.ci = add i64 %i.ch, %i.cg
  %.not.i.i = icmp eq i32 %i.cc, 48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not.i.i, label %.preheader, label %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit

_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit: ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i
  %.sroa.0.0.i = phi i64 [ %i.ax, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i ], [ %.sroa.3.0.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i ] ; 2 uses
  %i.cj = sub nuw i64 %i.ax, %.sroa.0.0.i         ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.0.0.i
  br label %bb.ad

bb.ad:                                            ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i41, %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit
  %.sroa.3.0.i38 = phi i64 [ 0, %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit ], [ %i.cv, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i41 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.3.0.i38
  store ptr %i.cl, ptr %i.a, align 8, !noalias !56
  store ptr %i.bk, ptr %i.au, align 8, !noalias !56
  %i.cm = call { i32, i32 } @_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.a) #28, !noalias !56 ; 2 uses
  %i.cn = extractvalue { i32, i32 } %i.cm, 0
  %i.co = trunc i32 %i.cn to i1
  br i1 %i.co, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i41, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i39

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i39: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit43

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i41: ; preds = %bb.ad
  %i.cp = extractvalue { i32, i32 } %i.cm, 1
  %i.cq = load ptr, ptr %i.au, align 8, !noalias !56
  %i.cr = load ptr, ptr %i.a, align 8, !noalias !56
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.ba, %i.cs
  %i.cv = add i64 %i.cu, %i.ct
  %.not.i.i42 = icmp eq i32 %i.cp, 48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not.i.i42, label %bb.ad, label %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit43

_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit43: ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i41, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i39
  %.sroa.0.0.i40 = phi i64 [ %i.ba, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i39 ], [ %.sroa.3.0.i38, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i41 ] ; 2 uses
  %i.cw = sub nuw i64 %i.ba, %.sroa.0.0.i40       ; 2 uses
  %i.cx = call range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.cj, i64 %i.cw)
  %i.cy = icmp eq i64 %i.cj, %i.cw
  br i1 %i.cy, label %bb.ae, label %_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB10_13BuildMetadataNtB3_3Ord3cmps_0EB10_.exit

bb.ae:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit43
  %i.cz = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.0.0.i40
  %i.da = call i32 @memcmp(ptr nonnull readonly %i.ck, ptr nonnull readonly %i.cz, i64 %i.cj)
  %2 = sext i32 %i.da to i64
  %i.db = call range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %2, i64 0)
  br label %_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB10_13BuildMetadataNtB3_3Ord3cmps_0EB10_.exit

_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB10_13BuildMetadataNtB3_3Ord3cmps_0EB10_.exit: ; preds = %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit43, %bb.ae
  %.sroa.0.0.i44 = phi i8 [ %i.db, %bb.ae ], [ %i.cx, %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit43 ] ; 2 uses
  %i.dc = icmp eq i8 %.sroa.0.0.i44, 0
  br i1 %i.dc, label %bb.af, label %_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB10_13BuildMetadataNtB3_3Ord3cmps0_0EB10_.exit

bb.af:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB10_13BuildMetadataNtB3_3Ord3cmps_0EB10_.exit
  %i.dd = call range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.ax, i64 %i.ba)
  br label %_RINvMNtCshzWfHUSfYae_4core3cmpNtB3_8Ordering9then_withNCNvXs6_NtCs9dV2ZPf2jOH_6semver5implsNtB10_13BuildMetadataNtB3_3Ord3cmps0_0EB10_.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmtCs9dV2ZPf2jOH_6semver(ptr %0, ptr align 8 %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8 %1, ptr nonnull @62, i64 15, ptr nonnull %i.a, ptr nonnull align 8 @61)
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs9dV2ZPf2jOH_6semver(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8
  %i.g = load ptr, ptr %0, align 8
  %bcmp.i = tail call i32 @bcmp(ptr readonly %i.g, ptr readonly %i.f, i64 %i.b)
  %i.h = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs_NtNtCshzWfHUSfYae_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit

_RNvXs_NtNtCshzWfHUSfYae_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsRhNtB7_9PartialEq2eqCs9dV2ZPf2jOH_6semver(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %.val = load i8, ptr %i.a, align 1
  %.val1 = load i8, ptr %i.b, align 1
  %i.c = icmp eq i8 %.val, %.val1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RNvXs7_NtNtCshzWfHUSfYae_4core5array8equalityhINtB5_11SpecArrayEqhKj0_E7spec_eqCs9dV2ZPf2jOH_6semver(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs8_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs9dV2ZPf2jOH_6semver10ComparatorENtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5derefBH_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i8 -1, 2) i8 @_RNvXs9_NtNtCshzWfHUSfYae_4core3cmp5implsRNtCs9dV2ZPf2jOH_6semver10PrereleaseNtB7_3Ord3cmpBF_(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = tail call i8 @_RNvXs5_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr align 8 %i.a, ptr align 8 %i.b)
  ret i8 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmtCs9dV2ZPf2jOH_6semver(ptr align 8 %0, ptr align 8 %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @_RNvXsC_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_8LowerHex3fmt(ptr align 8 %0, ptr nonnull align 8 %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call zeroext i1 @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt(ptr align 8 %0, ptr nonnull align 8 %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call zeroext i1 @_RNvXsE_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_8UpperHex3fmt(ptr align 8 %0, ptr nonnull align 8 %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXsX_NtNtCshzWfHUSfYae_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9dV2ZPf2jOH_6semver(ptr nofree align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs9dV2ZPf2jOH_6semver(ptr align 8 %0) #28
  ret { ptr, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvXs_NtCs9dV2ZPf2jOH_6semver10identifierNtB4_10IdentifierNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  %spec.select.i.not = icmp slt ptr %.val, inttoptr (i64 -1 to ptr)
  br i1 %spec.select.i.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %.val to i64
  %i.b = getelementptr i8, ptr %.val, i64 %i.a    ; 3 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.b, align 1 ; 2 uses
  %i.c = icmp sgt i16 %.sroa.0.0.copyload.i.i, -1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc i64 @_RNvNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len15decode_len_cold(ptr nonnull readonly %i.b) #29
  br label %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit

bb.d:                                             ; preds = %bb.b
  %i.e = and i16 %.sroa.0.0.copyload.i.i, 127     ; 2 uses
  %i.f = zext nneg i16 %i.e to i64
  %.not.i.i = icmp eq i16 %i.e, 0
  br i1 %.not.i.i, label %bb.e, label %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RNvNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 @10) #30
  unreachable

_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %i.d, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0.0.i, i1 true)
  %i.h = trunc nuw nsw i64 %i.g to i8
  %narrow1.i = sub nuw nsw i8 70, %i.h
  %i.i = udiv i8 %narrow1.i, 7
  %i.j = zext nneg i8 %i.i to i64
  %i.k = add i64 %.sroa.0.0.i, %i.j               ; 3 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  %i.l = tail call noalias align 2 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 %i.k, i64 2) #31 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.l, ptr nonnull align 1 %i.b, i64 %i.k, i1 false)
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = tail call i64 @llvm.fshl.i64(i64 1, i64 %i.n, i64 63)
  %i.p = sub i64 %i.o, %i.n
  %i.q = getelementptr i8, ptr %i.l, i64 %i.p
  br label %bb.h

bb.g:                                             ; preds = %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 2, i64 %i.k) #33
  unreachable

bb.h:                                             ; preds = %bb.a, %bb.f
  %.sroa.0.0.in = phi ptr [ %i.q, %bb.f ], [ %.val, %bb.a ]
  %.sroa.0.0 = ptrtoint ptr %.sroa.0.0.in to i64
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs_NtCs9dV2ZPf2jOH_6semver5errorNtNtB6_5parse5ErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr align 4 %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 2 uses
  %i.i = alloca [16 x i8], align 8                ; 3 uses
  %i.j = alloca [8 x i8], align 8                 ; 2 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [4 x i8], align 4                 ; 2 uses
  %i.m = alloca [8 x i8], align 8                 ; 2 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [4 x i8], align 4                 ; 2 uses
  %i.p = alloca [8 x i8], align 8                 ; 2 uses
  %i.q = alloca [32 x i8], align 8                ; 5 uses
  %i.r = alloca [4 x i8], align 4                 ; 2 uses
  %i.s = alloca [8 x i8], align 8                 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCs9dV2ZPf2jOH_6semver:bb.a
  %i.h = load i64, ptr %i.c, align 8, !noalias !70 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store ptr %i.i, ptr %i.a, align 8, !noalias !70
  store ptr %i.j, ptr %i.d, align 8, !noalias !70
  %i.k = call { i32, i32 } @_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.a) #28, !noalias !70 ; 2 uses
  %i.l = extractvalue { i32, i32 } %i.k, 0
  %i.m = trunc i32 %i.l to i1
  br i1 %i.m, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit: ; preds = %bb.b
  %i.n = extractvalue { i32, i32 } %i.k, 1
  %i.o = load ptr, ptr %i.d, align 8, !noalias !70
  %i.p = load ptr, ptr %i.a, align 8, !noalias !70
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = load i64, ptr %i.b, align 8, !noalias !70
  %i.t = add i64 %i.f, %i.q
  %gepdiff.i = sub i64 %i.h, %i.t
  %i.u = add i64 %gepdiff.i, %i.r
  %i.v = add i64 %i.u, %i.s                       ; 3 uses
  store i64 %i.v, ptr %i.b, align 8, !noalias !70
  %i.w = load i32, ptr %i.e, align 4, !noalias !70
  %.not = icmp eq i32 %i.n, %i.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %i.y, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #15

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsj_NtCshzWfHUSfYae_4core3fmtcNtB5_5Debug3fmt(ptr align 4, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter4fill(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr align 8, i32) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #16

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #17

; Function Attrs: inlinehint nonlazybind uwtable
declare ptr @_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zr4xB4Ewz8_10serde_core(ptr align 8) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowuENtNtB4_9try_trait3Try6branchCs2zr4xB4Ewz8_10serde_core(i1 zeroext) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXs_NtNtCshzWfHUSfYae_4core3ops12control_flowINtB4_11ControlFlowuEINtNtB6_9try_trait12FromResidualIBK_uNtNtB8_7convert10InfallibleEE13from_residualCs2zr4xB4Ewz8_10serde_core() unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowuENtNtB4_9try_trait3Try11from_outputCs2zr4xB4Ewz8_10serde_core() unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXs9_NtNtCshzWfHUSfYae_4core3ops12control_flowINtB5_11ControlFlowuENtNtB9_3cmp9PartialEq2eqCs2zr4xB4Ewz8_10serde_core(ptr, ptr) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCshzWfHUSfYae_4core3fmt2rtNtB3_8Argument11new_displayyECs2zr4xB4Ewz8_10serde_core(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr, ptr, ptr align 8) unnamed_addr #18

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64, i64) unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr, i64, i64, i64, ptr align 8) unnamed_addr #18

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr align 8) unnamed_addr #18

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr, i64, ptr, ptr align 8, ptr align 8) unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #21

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs57dEzb6b5A8_5gimli(ptr sret([24 x i8]) align 8, ptr align 8, i64, i64, i64) unnamed_addr #22

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64, i64) unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #16

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr, ptr align 8, ptr, ptr) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #6

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64, i64 allocalign) unnamed_addr #23

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr allocptr captures(address), i64, i64) unnamed_addr #24

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8, ptr, i64) unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_nounwind_fmt(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #25

; Function Attrs: inlinehint nonlazybind uwtable
declare { i32, i32 } @_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2zr4xB4Ewz8_10serde_core(ptr align 8) unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #16

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr align 8, ptr, i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCshzWfHUSfYae_4core3fmtNtB6_9Arguments3newKj2_Kj1_ECs2zr4xB4Ewz8_10serde_core(ptr, ptr align 8) unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #16

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs57dEzb6b5A8_5gimli(ptr align 8, i64, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsk_NtCshzWfHUSfYae_4core3fmtcNtB5_7Display3fmt(ptr align 4, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs3TiGK1alE6v_14rustc_demangle(ptr, i64, ptr, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr sret([16 x i8]) align 8, ptr align 8, ptr, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr align 8, ptr, i64, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCshzWfHUSfYae_4core3fmtNtB6_9Arguments3newKj15_Kj1_ECs2zr4xB4Ewz8_10serde_core(ptr, ptr align 8) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs3TiGK1alE6v_14rustc_demangle(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8, ptr, i64, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsE_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_8UpperHex3fmt(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsC_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_8LowerHex3fmt(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64, i64, i64, ptr align 8) unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #16

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold inlinehint noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #28 = { inlinehint }
attributes #29 = { noinline }
attributes #30 = { inlinehint nounwind }
attributes #31 = { nounwind }
attributes #32 = { noinline noreturn }
attributes #33 = { noreturn }
attributes #34 = { cold }
attributes #35 = { noinline noreturn nounwind }
attributes #36 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver: argument 0"}
!6 = distinct !{!6, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver"}
!7 = !{ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9dV2ZPf2jOH_6semver10identifier10IdentifierEBF_, ptr @_RNvXs0_NtCs9dV2ZPf2jOH_6semver10identifierNtB5_10IdentifierNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop}
!8 = !{ptr @_RNvXs0_NtCs9dV2ZPf2jOH_6semver10identifierNtB5_10IdentifierNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_matchCs9dV2ZPf2jOH_6semver: argument 0"}
!11 = distinct !{!11, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_matchCs9dV2ZPf2jOH_6semver"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_RNvNtCs9dV2ZPf2jOH_6semver5parse2op: argument 0"}
!14 = distinct !{!14, !"_RNvNtCs9dV2ZPf2jOH_6semver5parse2op"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver: argument 0"}
!17 = distinct !{!17, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_RNvNtCs9dV2ZPf2jOH_6semver5parse8wildcard: argument 0"}
!20 = distinct !{!20, !"_RNvNtCs9dV2ZPf2jOH_6semver5parse8wildcard"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_RNvNtCs9dV2ZPf2jOH_6semver5parse8wildcard: argument 0"}
!23 = distinct !{!23, !"_RNvNtCs9dV2ZPf2jOH_6semver5parse8wildcard"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver: argument 0"}
!26 = distinct !{!26, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver"}
!27 = !{!28, !30}
!28 = distinct !{!28, !29, !"_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checkedCs9dV2ZPf2jOH_6semver: argument 0"}
!29 = distinct !{!29, !"_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checkedCs9dV2ZPf2jOH_6semver"}
!30 = distinct !{!30, !31, !"_RNvMNtCshzWfHUSfYae_4core3stre8split_atCs9dV2ZPf2jOH_6semver: argument 0"}
!31 = distinct !{!31, !"_RNvMNtCshzWfHUSfYae_4core3stre8split_atCs9dV2ZPf2jOH_6semver"}
!32 = !{!30}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_RNvNtCs9dV2ZPf2jOH_6semver5parse8wildcard: argument 0"}
!35 = distinct !{!35, !"_RNvNtCs9dV2ZPf2jOH_6semver5parse8wildcard"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver: argument 0"}
!38 = distinct !{!38, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver: argument 0"}
!41 = distinct !{!41, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver"}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.peeled.count", i32 1}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_RNvNtCs9dV2ZPf2jOH_6semver5parse3dot: argument 0"}
!46 = distinct !{!46, !"_RNvNtCs9dV2ZPf2jOH_6semver5parse3dot"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_RNvNtCs9dV2ZPf2jOH_6semver5parse3dot: argument 0"}
!49 = distinct !{!49, !"_RNvNtCs9dV2ZPf2jOH_6semver5parse3dot"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver: argument 0"}
!52 = distinct !{!52, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver: argument 0"}
!55 = distinct !{!55, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver: argument 0"}
!58 = distinct !{!58, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver: argument 0"}
!61 = distinct !{!61, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_RNvNtCs9dV2ZPf2jOH_6semver5parse8wildcard: argument 0"}
!64 = distinct !{!64, !"_RNvNtCs9dV2ZPf2jOH_6semver5parse8wildcard"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver: argument 0"}
!67 = distinct !{!67, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver"}
!68 = !{!"address", !"read_provenance"}
!69 = distinct !{!69, !43}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver: argument 0"}
!72 = distinct !{!72, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver"}
end_hunk_1
