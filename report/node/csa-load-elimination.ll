Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/csa-load-elimination?download=true
inline.NumInlined: 1756
inline.NumDeleted: 834
begin_hunk_0_@_ZN2v88internal8compiler25CsaLoadEliminationHelpers8SubsumesENS0_21MachineRepresentationES3_:bb.a
  %switch.idx.cast18 = zext nneg i8 %switch.tableidx16 to i32
  %i.j = shl nuw nsw i32 1, %switch.idx.cast18
  %i.k = icmp samesign uge i32 %i.i, %i.j
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %switch.lookup, %bb.a, %bb.c
  %.0 = phi i1 [ %i.k, %switch.lookup ], [ %i.e, %bb.c ], [ true, %bb.a ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  switch i16 %i.c, label %bb.b [
    i16 51, label %bb.c
    i16 523, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = add i16 %i.c, -22
  %switch.i.i = icmp ult i16 %i.d, 13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b
  %i.e = phi i1 [ true, %bb.a ], [ true, %bb.a ], [ %switch.i.i, %bb.b ]
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler25CsaLoadEliminationHelpers13IsFreshObjectEPNS1_4NodeE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, -2
  %spec.select = icmp eq i16 %i.d, 266
  ret i1 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState13IntersectWithEPKS3_(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState13IntersectWithIjEEvRNS1_13PersistentMapIT_NS5_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS8_EEEENSB_IS6_EEEERKSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState13IntersectWithIjEEvRNS1_13PersistentMapIT_NS5_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS8_EEEENSB_IS6_EEEERKSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState13IntersectWithIjEEvRNS1_13PersistentMapIT_NS5_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS8_EEEENSB_IS6_EEEERKSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState13IntersectWithIPNS1_4NodeEEEvRNS1_13PersistentMapIT_NS7_IS6_NS2_9FieldInfoENS_4base4hashIS6_EEEENSB_IS8_EEEERKSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState13IntersectWithIPNS1_4NodeEEEvRNS1_13PersistentMapIT_NS7_IS6_NS2_9FieldInfoENS_4base4hashIS6_EEEENSB_IS8_EEEERKSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState13IntersectWithIPNS1_4NodeEEEvRNS1_13PersistentMapIT_NS7_IS6_NS2_9FieldInfoENS_4base4hashIS6_EEEENSB_IS8_EEEERKSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.l)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState13IntersectWithIjEEvRNS1_13PersistentMapIT_NS5_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS8_EEEENSB_IS6_EEEERKSF_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::compiler::CsaLoadElimination::FieldInfo", align 8 ; 5 uses
  %3 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::compiler::PersistentMap<unsigned int, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>>::iterator", align 8 ; 6 uses
  %.sroa.14 = alloca [15 x i8], align 1           ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 8 uses
  %6 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 11 uses
  %7 = alloca %"class.v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>::iterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::PersistentMap<unsigned int, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>>::iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not138 = icmp eq ptr %i.b, null
  br i1 %.not138, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.8111.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.14.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 280 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 288 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit._crit_edge: ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit
  %i.i = phi ptr [ %i.b, %.lr.ph ], [ %i.en, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !noalias !53
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !noalias !53 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.8111.8..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.11.8..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.14.8..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.8111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.14.8..sroa_idx116.sink = phi ptr [ %.sroa.14.8..sroa_idx116, %bb.c ], [ %.sroa.14.0..sroa_idx, %bb.d ]
  %.sroa.11.0.in = phi ptr [ %.sroa.11.8..sroa_idx114, %bb.c ], [ %.sroa.11.0..sroa_idx, %bb.d ]
  %.sroa.8111.0.in = phi ptr [ %.sroa.8111.8..sroa_idx112, %bb.c ], [ %.sroa.8111.0..sroa_idx, %bb.d ]
  %.sroa.5109.0.in = phi ptr [ %i.n, %bb.c ], [ %.sroa.5109.0..sroa_idx, %bb.d ]
  %.sroa.0107.0.in = phi ptr [ %i.m, %bb.c ], [ %i.i, %bb.d ]
  %.sroa.0107.0 = load i32, ptr %.sroa.0107.0.in, align 8 ; 6 uses
  %.sroa.5109.0 = load ptr, ptr %.sroa.5109.0.in, align 8 ; 5 uses
  %.sroa.8111.0 = load ptr, ptr %.sroa.8111.0.in, align 8 ; 4 uses
  %.sroa.11.0 = load i8, ptr %.sroa.11.0.in, align 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.14, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.14.8..sroa_idx116.sink, i64 15, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %.sroa.5109.0, ptr %5, align 8
  store ptr %.sroa.8111.0, ptr %.sroa.8111.8..sroa_idx, align 8
  store i8 %.sroa.11.0, ptr %.sroa.11.8..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.14.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.14, i64 15, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.o = xor i32 %.sroa.0107.0, -1
  %i.p = shl i32 %.sroa.0107.0, 15
  %i.q = add i32 %i.p, %i.o                       ; 2 uses
  %i.r = lshr i32 %i.q, 12
  %i.s = xor i32 %i.r, %i.q
  %i.t = mul i32 %i.s, 5                          ; 2 uses
  %i.u = lshr i32 %i.t, 4
  %i.v = xor i32 %i.u, %i.t
  %i.w = mul i32 %i.v, 2057                       ; 2 uses
  %i.x = lshr i32 %i.w, 16
  %i.y = xor i32 %i.x, %i.w                       ; 2 uses
  %i.z = load ptr, ptr %1, align 8                ; 2 uses
  %.not16.i.i = icmp eq ptr %i.z, null
  br i1 %.not16.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit, %bb.g
  %.018.i.i = phi ptr [ %i.am, %bb.g ], [ %i.z, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit ] ; 6 uses
  %.01217.i.i = phi i32 [ %i.ae, %bb.g ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 44
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.aa, align 4 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.y, %.sroa.01.0.copyload.i.i
  br i1 %.not15.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %i.ab = xor i32 %.sroa.01.0.copyload.i.i, %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.ae, %bb.e ], [ %.01217.i.i, %.preheader.i.i ] ; 4 uses
  %i.ac = lshr exact i32 -2147483648, %.1.i.i
  %i.ad = and i32 %i.ac, %i.ab
  %.not.i.not.i.i = icmp eq i32 %i.ad, 0
  %i.ae = add nsw i32 %.1.i.i, 1                  ; 2 uses
  br i1 %.not.i.not.i.i, label %bb.e, label %bb.f, !llvm.loop !1

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 40
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = sext i8 %i.ag to i32
  %i.ai = icmp slt i32 %.1.i.i, %i.ah
  br i1 %i.ai, label %bb.g, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 56
  %i.ak = sext i32 %.1.i.i to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.am, null
  br i1 %.not.i.i10, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i: ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 48
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %.not11.i.i = icmp eq ptr %i.ao, null
  br i1 %.not11.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.aq, %bb.h ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ar, %bb.h ]
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.at = load i32, ptr %i.as, align 4
  %i.au = icmp ult i32 %i.at, %.sroa.0107.0       ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.au, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.au, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.av = icmp eq ptr %.19.i.i.i.i.i, %i.ar
  br i1 %i.av, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i

_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = icmp ult i32 %.sroa.0107.0, %i.ax       ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.ay, ptr %i.ar, ptr %.19.i.i.i.i.i
  %8 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 32
  %spec.select.i.i = select i1 %i.ay, ptr %1, ptr %8
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

bb.i:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i
  %i.az = load i32, ptr %.018.i.i, align 8
  %i.ba = icmp eq i32 %.sroa.0107.0, %i.az
  %..i.i = select i1 %i.ba, ptr %.018.i.i, ptr %1
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit: ; preds = %bb.f, %bb.g, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit, %bb.h, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i, %bb.i
  %.sink.i.i = phi ptr [ %1, %bb.h ], [ %..i.i, %bb.i ], [ %spec.select.i.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i ], [ %1, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i ], [ %1, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit ], [ %1, %bb.g ], [ %1, %bb.f ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %.not.i11 = icmp eq ptr %.sroa.5109.0, null
  br i1 %.not.i11, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit
  store i32 0, ptr %7, align 8, !alias.scope !55
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit

bb.k:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  store i32 0, ptr %7, align 8, !alias.scope !57
  store i64 0, ptr %i.d, align 8, !alias.scope !57
  store ptr %.sroa.8111.0, ptr %i.e, align 8, !alias.scope !57
  store i8 %.sroa.11.0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !57
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.5109.0, i64 24
  %i.bd = load i8, ptr %i.bc, align 8, !noalias !57
  %i.be = icmp sgt i8 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.lr.ph.i.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i.i.i ], [ 0, %bb.k ] ; 4 uses
  %.041.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.5109.0, %bb.k ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.041.i.i.i, i64 28
  %i.bg = load i32, ptr %i.bf, align 4, !noalias !57
  %i.bh = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bi = lshr exact i32 -2147483648, %i.bh
  %i.bj = and i32 %i.bg, %i.bi
  %.not.i.i.not.i.i.i = icmp eq i32 %i.bj, 0      ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.041.i.i.i, i64 40
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.i
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !57 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bm, null         ; 2 uses
  %spec.select.i.i14 = select i1 %.not.i.i.i13, ptr null, ptr %.041.i.i.i
  %.sink.i.i.i = select i1 %.not.i.i.not.i.i.i, ptr %i.bm, ptr %spec.select.i.i14
  %i.bn = select i1 %.not.i.i.not.i.i.i, i1 true, i1 %.not.i.i.i13
  %.1.i.i.i = select i1 %i.bn, ptr %.041.i.i.i, ptr %i.bm ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  store ptr %.sink.i.i.i, ptr %i.bo, align 8, !alias.scope !57
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 24
  %i.bq = load i8, ptr %i.bp, align 8, !noalias !57
  %i.br = sext i8 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next.i, %i.br
  br i1 %i.bs, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit.i, !llvm.loop !4

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit.i: ; preds = %.lr.ph.i.i.i
  %i.bt = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %i.bt, ptr %7, align 8, !alias.scope !57
  br label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i: ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit.i, %bb.k
  %.promoted = phi i32 [ 0, %bb.k ], [ %i.bt, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit.i ] ; 2 uses
  %i.bu = phi ptr [ %.sroa.5109.0, %bb.k ], [ %.1.i.i.i, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit.i ] ; 7 uses
  store ptr %i.bu, ptr %i.g, align 8, !alias.scope !57
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !57 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i12, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !57 ; 2 uses
  store ptr %i.by, ptr %i.d, align 8, !alias.scope !57
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i: ; preds = %bb.l, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i
  %i.bz = phi ptr [ %i.by, %bb.l ], [ null, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i ] ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !58 ; 2 uses
  %.not.i2.i.i233 = icmp eq ptr %i.cb, null       ; 2 uses
  %.sroa.5.0..sroa_idx.i.i234 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.7.0..sroa_idx.i.i235 = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %.sroa.7.8..sroa_idx.i.i236 = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %.sroa.7.0.in.i.i237 = select i1 %.not.i2.i.i233, ptr %.sroa.7.0..sroa_idx.i.i235, ptr %.sroa.7.8..sroa_idx.i.i236
  %.sroa.5.0.in.i.i238 = select i1 %.not.i2.i.i233, ptr %.sroa.5.0..sroa_idx.i.i234, ptr %i.cc
  %.sroa.5.0.i.i239 = load ptr, ptr %.sroa.5.0.in.i.i238, align 8
  %.sroa.7.0.i.i240 = load i8, ptr %.sroa.7.0.in.i.i237, align 8
  %i.cd = icmp ne ptr %.sroa.5.0.i.i239, %.sroa.8111.0
  %i.ce = icmp ne i8 %.sroa.7.0.i.i240, %.sroa.11.0
  %.not3.i.i.i241 = select i1 %i.cd, i1 true, i1 %i.ce
  br i1 %.not3.i.i.i241, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph, label %.preheader

.preheader:                                       ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i, %.preheader.backedge
  %.pr151 = phi ptr [ %.pr151.be, %.preheader.backedge ], [ %i.bu, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i ] ; 2 uses
  %i.cf = phi ptr [ %.be, %.preheader.backedge ], [ %i.cb, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i ] ; 2 uses
  %i.cg = phi ptr [ %.be251, %.preheader.backedge ], [ %i.bz, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i ]
  %i.ch = phi i32 [ %.be252, %.preheader.backedge ], [ %.promoted, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i ] ; 3 uses
  %i.ci = phi ptr [ %.be253, %.preheader.backedge ], [ %i.bz, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i ] ; 2 uses
  %.not10.i67 = icmp eq ptr %i.cf, null
  br i1 %.not10.i67, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.cj = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.ci) #16 ; 5 uses
  store ptr %i.cj, ptr %i.d, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.n, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98

bb.n:                                             ; preds = %bb.m, %.preheader
  %i.cm = phi ptr [ %i.cj, %bb.m ], [ %i.cg, %.preheader ]
  %i.cn = phi ptr [ %i.cj, %bb.m ], [ %i.ci, %.preheader ]
  %i.co = icmp eq i32 %i.ch, 0
  br i1 %i.co, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit, label %.preheader.i68

.preheader.i68:                                   ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %.pr151, i64 28
  %i.cq = sext i32 %i.ch to i64
  %.pre = load i32, ptr %i.cp, align 4
  br label %bb.o

bb.o:                                             ; preds = %.critedge.i72, %.preheader.i68
  %indvars.iv.i69 = phi i64 [ %i.cq, %.preheader.i68 ], [ %indvars.iv.next.i70, %.critedge.i72 ] ; 4 uses
  %indvars.iv.next.i70 = add nsw i64 %indvars.iv.i69, -1 ; 4 uses
  %i.cr = trunc nsw i64 %indvars.iv.next.i70 to i32 ; 2 uses
  store i32 %i.cr, ptr %7, align 8
  %i.cs = lshr exact i32 -2147483648, %i.cr
  %i.ct = and i32 %i.cs, %.pre
  %.not.i.not.i71 = icmp eq i32 %i.ct, 0
  br i1 %.not.i.not.i71, label %bb.p, label %.critedge.i72

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.i70
  %i.cv = load ptr, ptr %i.cu, align 8            ; 4 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %.critedge.i72, label %bb.q

.critedge.i72:                                    ; preds = %bb.p, %bb.o
  %i.cx = icmp eq i64 %indvars.iv.next.i70, 0
  br i1 %i.cx, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit, label %bb.o, !llvm.loop !5

bb.q:                                             ; preds = %bb.p
  %i.cy = trunc nuw nsw i64 %indvars.iv.i69 to i32 ; 2 uses
  store i32 %i.cy, ptr %7, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.da = load i8, ptr %i.cz, align 8
  %i.db = sext i8 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.i69, %i.db
  br i1 %i.dc, label %.lr.ph.i.i89, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i73

.lr.ph.i.i89:                                     ; preds = %bb.q, %.lr.ph.i.i89
  %indvars.iv39.i90 = phi i64 [ %indvars.iv.next40.i97, %.lr.ph.i.i89 ], [ %indvars.iv.i69, %bb.q ] ; 4 uses
  %.041.i.i91 = phi ptr [ %.1.i.i96, %.lr.ph.i.i89 ], [ %i.cv, %bb.q ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.041.i.i91, i64 28
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = trunc nuw nsw i64 %indvars.iv39.i90 to i32
  %i.dg = lshr exact i32 -2147483648, %i.df
  %i.dh = and i32 %i.de, %i.dg
  %.not.i.i.not.i.i92 = icmp eq i32 %i.dh, 0      ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.041.i.i91, i64 40
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.di, i64 %indvars.iv39.i90
  %i.dk = load ptr, ptr %i.dj, align 8            ; 3 uses
  %.not.i13.i93 = icmp eq ptr %i.dk, null         ; 2 uses
  %spec.select.i94 = select i1 %.not.i13.i93, ptr null, ptr %.041.i.i91
  %.sink.i.i95 = select i1 %.not.i.i.not.i.i92, ptr %i.dk, ptr %spec.select.i94
  %i.dl = select i1 %.not.i.i.not.i.i92, i1 true, i1 %.not.i13.i93
  %.1.i.i96 = select i1 %i.dl, ptr %.041.i.i91, ptr %i.dk ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv39.i90
  store ptr %.sink.i.i95, ptr %i.dm, align 8
  %indvars.iv.next40.i97 = add nuw nsw i64 %indvars.iv39.i90, 1 ; 3 uses
  %i.dn = trunc nuw nsw i64 %indvars.iv.next40.i97 to i32 ; 2 uses
  store i32 %i.dn, ptr %7, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %.1.i.i96, i64 24
  %i.dp = load i8, ptr %i.do, align 8
  %i.dq = sext i8 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next40.i97, %i.dq
  br i1 %i.dr, label %.lr.ph.i.i89, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i73, !llvm.loop !4

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i73: ; preds = %.lr.ph.i.i89, %bb.q
  %i.ds = phi i32 [ %i.cy, %bb.q ], [ %i.dn, %.lr.ph.i.i89 ] ; 2 uses
  %.0.lcssa.i.i75 = phi ptr [ %i.cv, %bb.q ], [ %.1.i.i96, %.lr.ph.i.i89 ] ; 6 uses
  store ptr %.0.lcssa.i.i75, ptr %i.g, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i75, i64 32
  %i.du = load ptr, ptr %i.dt, align 8            ; 3 uses
  %.not11.i76 = icmp eq ptr %i.du, null
  br i1 %.not11.i76, label %.thread.i86, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i73
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8            ; 5 uses
  store ptr %i.dw, ptr %i.d, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %.sroa.6.8..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80

.thread.i86:                                      ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i73
  %.sroa.4.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i75, i64 8
  %.sroa.6.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i75, i64 16
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80: ; preds = %.thread.i86, %bb.r
  %i.dy = phi ptr [ %i.cm, %.thread.i86 ], [ %i.dw, %bb.r ] ; 2 uses
  %i.dz = phi ptr [ %i.cn, %.thread.i86 ], [ %i.dw, %bb.r ]
  %.sroa.6.0.in.i81 = phi ptr [ %.sroa.6.0..sroa_idx.i88, %.thread.i86 ], [ %.sroa.6.8..sroa_idx.i79, %bb.r ]
  %.sroa.4.0.in.i82 = phi ptr [ %.sroa.4.0..sroa_idx.i87, %.thread.i86 ], [ %i.dx, %bb.r ]
  %.sroa.4.0.i83 = load ptr, ptr %.sroa.4.0.in.i82, align 8
  %.sroa.6.0.i84 = load i8, ptr %.sroa.6.0.in.i81, align 8
  %i.ea = load ptr, ptr %i.e, align 8
  %i.eb = icmp ne ptr %.sroa.4.0.i83, %i.ea
  %i.ec = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.ed = icmp ne i8 %.sroa.6.0.i84, %i.ec
  %.not3.i.i85 = select i1 %i.eb, i1 true, i1 %i.ed
  br i1 %.not3.i.i85, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98, label %.preheader.backedge

.preheader.backedge:                              ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98
  %.pr151.be = phi ptr [ %.0.lcssa.i.i75, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80 ], [ %.pr149, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98 ]
  %.be = phi ptr [ %i.du, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80 ], [ %i.eh, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98 ]
  %.be251 = phi ptr [ %i.dy, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80 ], [ %i.ee, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98 ]
  %.be252 = phi i32 [ %i.ds, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80 ], [ %i.ef, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98 ]
  %.be253 = phi ptr [ %i.dz, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80 ], [ %i.ee, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98 ]
  br label %.preheader, !llvm.loop !6

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98: ; preds = %bb.m, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80
  %.pr149 = phi ptr [ %.0.lcssa.i.i75, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80 ], [ %.pr151, %bb.m ] ; 5 uses
  %i.ee = phi ptr [ %i.dy, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80 ], [ %i.cj, %bb.m ] ; 5 uses
  %i.ef = phi i32 [ %i.ds, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80 ], [ %i.ch, %bb.m ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.pr149, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !58 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.eh, null          ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pr149, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pr149, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %.sroa.7.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %.sroa.7.0.in.i.i = select i1 %.not.i2.i.i, ptr %.sroa.7.0..sroa_idx.i.i, ptr %.sroa.7.8..sroa_idx.i.i
  %.sroa.5.0.in.i.i = select i1 %.not.i2.i.i, ptr %.sroa.5.0..sroa_idx.i.i, ptr %i.ei
  %.sroa.5.0.i.i = load ptr, ptr %.sroa.5.0.in.i.i, align 8
  %.sroa.7.0.i.i = load i8, ptr %.sroa.7.0.in.i.i, align 8
  %i.ej = icmp ne ptr %.sroa.5.0.i.i, %.sroa.8111.0
  %i.ek = icmp ne i8 %.sroa.7.0.i.i, %.sroa.11.0
  %.not3.i.i.i = select i1 %i.ej, i1 true, i1 %i.ek
  br i1 %.not3.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph, label %.preheader.backedge

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph: ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i
  %.pr152.lcssa = phi ptr [ %i.bu, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i ], [ %.pr149, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98 ]
  %.lcssa223 = phi ptr [ %i.bz, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i ], [ %i.ee, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98 ] ; 2 uses
  %.lcssa220 = phi i32 [ %.promoted, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i ], [ %i.ef, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98 ]
  %i.el = load ptr, ptr %6, align 8               ; 2 uses
  %.not16.i.i32 = icmp eq ptr %i.el, null
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit: ; preds = %bb.n, %.critedge.i72, %bb.ab, %bb.y, %.critedge.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  call void @_ZN2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE6ModifyIZNSC_3SetEjSA_EUlPSA_E_EEvjT_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %.sroa.0107.0, ptr nonnull align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.em = call noundef nonnull align 8 dereferenceable(312) ptr @_ZN2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(312) %4) ; 0 uses
  %i.en = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not = icmp eq ptr %i.en, null
  br i1 %.not, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit._crit_edge, label %bb.b

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit: ; preds = %bb.aa, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i
  %.ph = phi ptr [ %i.gq, %bb.aa ], [ %.0.lcssa.i.i, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ]
  %.promoted.i.ph = phi ptr [ %i.gv, %bb.aa ], [ %.promoted.i155, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ]
  %.ph247 = phi ptr [ %i.gv, %bb.aa ], [ %i.ij, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ]
  %.ph248 = phi i32 [ %i.gr, %bb.aa ], [ %i.id, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ]
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit: ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph
  %i.eo = phi ptr [ %.pr152.lcssa, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph ], [ %.ph, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit ] ; 5 uses
  %.promoted.i = phi ptr [ %.lcssa223, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph ], [ %.promoted.i.ph, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit ] ; 2 uses
  %i.ep = phi ptr [ %.lcssa223, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph ], [ %.ph247, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit ] ; 3 uses
  %i.eq = phi i32 [ %.lcssa220, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph ], [ %.ph248, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !noalias !59
  %.not.i31 = icmp eq ptr %i.es, null             ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %.sroa.8.0.in = select i1 %.not.i31, ptr %.sroa.8.0..sroa_idx, ptr %.sroa.8.8..sroa_idx
  %.sroa.6.0.in = select i1 %.not.i31, ptr %.sroa.6.0..sroa_idx, ptr %i.eu
  %.sroa.0.0.in = select i1 %.not.i31, ptr %i.eo, ptr %i.et
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8 ; 5 uses
  %.sroa.6.0 = load ptr, ptr %.sroa.6.0.in, align 8
  %.sroa.8.0 = load i8, ptr %.sroa.8.0.in, align 8
  %i.ev = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %i.ew = xor i64 %i.ev, -1
  %i.ex = shl i64 %i.ev, 21
  %i.ey = add i64 %i.ex, %i.ew                    ; 2 uses
  %i.ez = lshr i64 %i.ey, 24
  %i.fa = xor i64 %i.ez, %i.ey
  %i.fb = mul i64 %i.fa, 265                      ; 2 uses
  %i.fc = lshr i64 %i.fb, 14
  %i.fd = xor i64 %i.fc, %i.fb
  %i.fe = mul i64 %i.fd, 21                       ; 2 uses
  %i.ff = lshr i64 %i.fe, 28
  %i.fg = xor i64 %i.ff, %i.fe
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = mul i32 %i.fh, -2147483647              ; 2 uses
  br i1 %.not16.i.i32, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i33

.lr.ph.i.i33:                                     ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %bb.u
  %.018.i.i34 = phi ptr [ %i.fv, %bb.u ], [ %i.el, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit ] ; 6 uses
  %.01217.i.i35 = phi i32 [ %i.fn, %bb.u ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.018.i.i34, i64 28
  %.sroa.01.0.copyload.i.i36 = load i32, ptr %i.fj, align 4 ; 2 uses
  %.not15.i.i37 = icmp eq i32 %i.fi, %.sroa.01.0.copyload.i.i36
  br i1 %.not15.i.i37, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i, label %.preheader.i.i38

.preheader.i.i38:                                 ; preds = %.lr.ph.i.i33
  %i.fk = xor i32 %.sroa.01.0.copyload.i.i36, %i.fi
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader.i.i38
  %.1.i.i39 = phi i32 [ %i.fn, %bb.s ], [ %.01217.i.i35, %.preheader.i.i38 ] ; 4 uses
  %i.fl = lshr exact i32 -2147483648, %.1.i.i39
  %i.fm = and i32 %i.fl, %i.fk
  %.not.i.not.i.i40 = icmp eq i32 %i.fm, 0
  %i.fn = add nsw i32 %.1.i.i39, 1                ; 2 uses
  br i1 %.not.i.not.i.i40, label %bb.s, label %bb.t, !llvm.loop !7

bb.t:                                             ; preds = %bb.s
  %i.fo = getelementptr inbounds nuw i8, ptr %.018.i.i34, i64 24
  %i.fp = load i8, ptr %i.fo, align 8
  %i.fq = sext i8 %i.fp to i32
  %i.fr = icmp slt i32 %.1.i.i39, %i.fq
  br i1 %i.fr, label %bb.u, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit

bb.u:                                             ; preds = %bb.t
  %i.fs = getelementptr inbounds nuw i8, ptr %.018.i.i34, i64 40
  %i.ft = sext i32 %.1.i.i39 to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i42, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i33, !llvm.loop !8

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i: ; preds = %.lr.ph.i.i33
  %i.fw = getelementptr inbounds nuw i8, ptr %.018.i.i34, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8            ; 3 uses
  %.not11.i.i43 = icmp eq ptr %i.fx, null
  br i1 %.not11.i.i43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8            ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 3 uses
  %.not10.i.i.i.i.i44 = icmp eq ptr %i.fz, null
  br i1 %.not10.i.i.i.i.i44, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i.i.i.i45

.lr.ph.i.i.i.i.i45:                               ; preds = %bb.v, %.lr.ph.i.i.i.i.i45
  %.012.i.i.i.i.i46 = phi ptr [ %.1.i.i.i.i.i51, %.lr.ph.i.i.i.i.i45 ], [ %i.fz, %bb.v ] ; 3 uses
  %.0811.i.i.i.i.i47 = phi ptr [ %.19.i.i.i.i.i48, %.lr.ph.i.i.i.i.i45 ], [ %i.ga, %bb.v ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i46, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = icmp ult ptr %i.gc, %.sroa.0.0          ; 2 uses
  %.19.i.i.i.i.i48 = select i1 %i.gd, ptr %.0811.i.i.i.i.i47, ptr %.012.i.i.i.i.i46 ; 4 uses
  %.1.in.v.i.i.i.i.i49 = select i1 %i.gd, i64 24, i64 16
  %.1.in.i.i.i.i.i50 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i46, i64 %.1.in.v.i.i.i.i.i49
  %.1.i.i.i.i.i51 = load ptr, ptr %.1.in.i.i.i.i.i50, align 8 ; 2 uses
  %.not.i.i.i.i.i52 = icmp eq ptr %.1.i.i.i.i.i51, null
  br i1 %.not.i.i.i.i.i52, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i45, !llvm.loop !9

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i45
  %i.ge = icmp eq ptr %.19.i.i.i.i.i48, %i.ga
  br i1 %i.ge, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i

_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i48, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = icmp ult ptr %.sroa.0.0, %i.gg          ; 2 uses
  %spec.select.i.i.i.i53 = select i1 %i.gh, ptr %i.ga, ptr %.19.i.i.i.i.i48
  %9 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i53, i64 32
  %spec.select.i.i54 = select i1 %i.gh, ptr %6, ptr %9
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit

bb.w:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i
  %i.gi = load ptr, ptr %.018.i.i34, align 8
  %i.gj = icmp eq ptr %.sroa.0.0, %i.gi
  %..i.i55 = select i1 %i.gj, ptr %.018.i.i34, ptr %6
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit: ; preds = %bb.t, %bb.u, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %bb.v, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i, %bb.w
  %.sink.i.i41 = phi ptr [ %6, %bb.v ], [ %..i.i55, %bb.w ], [ %spec.select.i.i54, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i ], [ %6, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i ], [ %6, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit ], [ %6, %bb.u ], [ %6, %bb.t ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sink.i.i41, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = icmp ne ptr %i.gl, %.sroa.6.0
  %i.gn = getelementptr inbounds nuw i8, ptr %.sink.i.i41, i64 16
  %i.go = load i8, ptr %i.gn, align 8
  %i.gp = icmp ne i8 %i.go, %.sroa.8.0
  %.not3.i = select i1 %i.gm, i1 true, i1 %i.gp
  br i1 %.not3.i, label %bb.x, label %.preheader245

bb.x:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr null, ptr %2, align 8
  store i8 0, ptr %i.h, align 8
  call void @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE6ModifyIZNSA_3SetES4_S6_EUlPS6_E_EEvS4_T_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %.sroa.0.0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.preheader245

.preheader245:                                    ; preds = %bb.x, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit
  br label %bb.y

bb.y:                                             ; preds = %.preheader245, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i
  %i.gq = phi ptr [ %.0.lcssa.i.i, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %i.eo, %.preheader245 ] ; 4 uses
  %.promoted.i158 = phi ptr [ %.promoted.i155, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %.promoted.i, %.preheader245 ]
  %i.gr = phi i32 [ %i.id, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %i.eq, %.preheader245 ] ; 3 uses
  %i.gs = phi ptr [ %i.ij, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %.promoted.i, %.preheader245 ] ; 2 uses
  %.not.i56 = icmp eq ptr %i.gq, null
  br i1 %.not.i56, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8            ; 2 uses
  %.not10.i = icmp eq ptr %i.gu, null
  br i1 %.not10.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gv = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.gs) #16 ; 6 uses
  store ptr %i.gv, ptr %i.d, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %bb.ab, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.promoted.i156 = phi ptr [ %i.gv, %bb.aa ], [ %.promoted.i158, %bb.z ]
  %i.gy = phi ptr [ %i.gv, %bb.aa ], [ %i.gs, %bb.z ]
  %i.gz = icmp eq i32 %i.gr, 0
  br i1 %i.gz, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ab
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gq, i64 28
  %i.hb = sext i32 %i.gr to i64
  %.pre161 = load i32, ptr %i.ha, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge.i, %.preheader.i
  %indvars.iv.i57 = phi i64 [ %i.hb, %.preheader.i ], [ %indvars.iv.next.i58, %.critedge.i ] ; 4 uses
  %indvars.iv.next.i58 = add nsw i64 %indvars.iv.i57, -1 ; 4 uses
  %i.hc = trunc nsw i64 %indvars.iv.next.i58 to i32 ; 2 uses
  store i32 %i.hc, ptr %7, align 8
  %i.hd = lshr exact i32 -2147483648, %i.hc
  %i.he = and i32 %i.hd, %.pre161
  %.not.i.not.i = icmp eq i32 %i.he, 0
  br i1 %.not.i.not.i, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %bb.ac
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.i58
  %i.hg = load ptr, ptr %i.hf, align 8            ; 4 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %.critedge.i, label %bb.ae

.critedge.i:                                      ; preds = %bb.ad, %bb.ac
  %i.hi = icmp eq i64 %indvars.iv.next.i58, 0
  br i1 %i.hi, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit, label %bb.ac, !llvm.loop !5

bb.ae:                                            ; preds = %bb.ad
  %i.hj = trunc nuw nsw i64 %indvars.iv.i57 to i32 ; 2 uses
  store i32 %i.hj, ptr %7, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hl = load i8, ptr %i.hk, align 8
  %i.hm = sext i8 %i.hl to i64
  %i.hn = icmp slt i64 %indvars.iv.i57, %i.hm
  br i1 %i.hn, label %.lr.ph.i.i59, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i

.lr.ph.i.i59:                                     ; preds = %bb.ae, %.lr.ph.i.i59
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %.lr.ph.i.i59 ], [ %indvars.iv.i57, %bb.ae ] ; 4 uses
  %.041.i.i = phi ptr [ %.1.i.i61, %.lr.ph.i.i59 ], [ %i.hg, %bb.ae ] ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 28
  %i.hp = load i32, ptr %i.ho, align 4
  %i.hq = trunc nuw nsw i64 %indvars.iv39.i to i32
  %i.hr = lshr exact i32 -2147483648, %i.hq
  %i.hs = and i32 %i.hp, %i.hr
  %.not.i.i.not.i.i = icmp eq i32 %i.hs, 0        ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 40
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %indvars.iv39.i
  %i.hv = load ptr, ptr %i.hu, align 8            ; 3 uses
  %.not.i13.i = icmp eq ptr %i.hv, null           ; 2 uses
  %spec.select.i = select i1 %.not.i13.i, ptr null, ptr %.041.i.i
  %.sink.i.i60 = select i1 %.not.i.i.not.i.i, ptr %i.hv, ptr %spec.select.i
  %i.hw = select i1 %.not.i.i.not.i.i, i1 true, i1 %.not.i13.i
  %.1.i.i61 = select i1 %i.hw, ptr %.041.i.i, ptr %i.hv ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv39.i
  store ptr %.sink.i.i60, ptr %i.hx, align 8
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 3 uses
  %i.hy = trunc nuw nsw i64 %indvars.iv.next40.i to i32 ; 2 uses
  store i32 %i.hy, ptr %7, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %.1.i.i61, i64 24
  %i.ia = load i8, ptr %i.hz, align 8
  %i.ib = sext i8 %i.ia to i64
  %i.ic = icmp slt i64 %indvars.iv.next40.i, %i.ib
  br i1 %i.ic, label %.lr.ph.i.i59, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i, !llvm.loop !4

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i: ; preds = %.lr.ph.i.i59, %bb.ae
  %i.id = phi i32 [ %i.hj, %bb.ae ], [ %i.hy, %.lr.ph.i.i59 ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %i.hg, %bb.ae ], [ %.1.i.i61, %.lr.ph.i.i59 ] ; 6 uses
  store ptr %.0.lcssa.i.i, ptr %i.g, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %i.if = load ptr, ptr %i.ie, align 8            ; 2 uses
  %.not11.i = icmp eq ptr %i.if, null
  br i1 %.not11.i, label %.thread.i, label %bb.af

bb.af:                                            ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8            ; 5 uses
  store ptr %i.ih, ptr %i.d, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 40
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i

.thread.i:                                        ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 16
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i: ; preds = %.thread.i, %bb.af
  %.promoted.i155 = phi ptr [ %.promoted.i156, %.thread.i ], [ %i.ih, %bb.af ] ; 2 uses
  %i.ij = phi ptr [ %i.gy, %.thread.i ], [ %i.ih, %bb.af ] ; 2 uses
  %.sroa.6.0.in.i = phi ptr [ %.sroa.6.0..sroa_idx.i, %.thread.i ], [ %.sroa.6.8..sroa_idx.i, %bb.af ]
  %.sroa.4.0.in.i = phi ptr [ %.sroa.4.0..sroa_idx.i, %.thread.i ], [ %i.ii, %bb.af ]
  %.sroa.4.0.i = load ptr, ptr %.sroa.4.0.in.i, align 8
  %.sroa.6.0.i = load i8, ptr %.sroa.6.0.in.i, align 8
  %i.ik = load ptr, ptr %i.e, align 8
  %i.il = icmp ne ptr %.sroa.4.0.i, %i.ik
  %i.im = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.in = icmp ne i8 %.sroa.6.0.i, %i.im
  %.not3.i.i = select i1 %i.il, i1 true, i1 %i.in
  br i1 %.not3.i.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit, label %bb.y, !llvm.loop !10
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState13IntersectWithIPNS1_4NodeEEEvRNS1_13PersistentMapIT_NS7_IS6_NS2_9FieldInfoENS_4base4hashIS6_EEEENSB_IS8_EEEERKSF_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::compiler::CsaLoadElimination::FieldInfo", align 8 ; 5 uses
  %3 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>>::iterator", align 8 ; 6 uses
  %.sroa.14 = alloca [15 x i8], align 1           ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 8 uses
  %6 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 11 uses
  %7 = alloca %"class.v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>::iterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>>::iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not137 = icmp eq ptr %i.b, null
  br i1 %.not137, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorneERKSC_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.8110.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.14.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 280 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 288 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorneERKSC_.exit._crit_edge: ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorneERKSC_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorneERKSC_.exit
  %i.i = phi ptr [ %i.b, %.lr.ph ], [ %i.eq, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorneERKSC_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !noalias !74
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !noalias !74 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.8110.8..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.11.8..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.14.8..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratordeEv.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.8110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratordeEv.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratordeEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.14.8..sroa_idx115.sink = phi ptr [ %.sroa.14.8..sroa_idx115, %bb.c ], [ %.sroa.14.0..sroa_idx, %bb.d ]
  %.sroa.11.0.in = phi ptr [ %.sroa.11.8..sroa_idx113, %bb.c ], [ %.sroa.11.0..sroa_idx, %bb.d ]
  %.sroa.8110.0.in = phi ptr [ %.sroa.8110.8..sroa_idx111, %bb.c ], [ %.sroa.8110.0..sroa_idx, %bb.d ]
  %.sroa.5108.0.in = phi ptr [ %i.n, %bb.c ], [ %.sroa.5108.0..sroa_idx, %bb.d ]
  %.sroa.0107.0.in = phi ptr [ %i.m, %bb.c ], [ %i.i, %bb.d ]
  %.sroa.0107.0 = load ptr, ptr %.sroa.0107.0.in, align 8 ; 5 uses
  %.sroa.5108.0 = load ptr, ptr %.sroa.5108.0.in, align 8 ; 5 uses
  %.sroa.8110.0 = load ptr, ptr %.sroa.8110.0.in, align 8 ; 4 uses
  %.sroa.11.0 = load i8, ptr %.sroa.11.0.in, align 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.14, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.14.8..sroa_idx115.sink, i64 15, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %.sroa.5108.0, ptr %5, align 8
  store ptr %.sroa.8110.0, ptr %.sroa.8110.8..sroa_idx, align 8
  store i8 %.sroa.11.0, ptr %.sroa.11.8..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.14.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.14, i64 15, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.o = ptrtoint ptr %.sroa.0107.0 to i64        ; 2 uses
  %i.p = xor i64 %i.o, -1
  %i.q = shl i64 %i.o, 21
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %i.s = lshr i64 %i.r, 24
  %i.t = xor i64 %i.s, %i.r
  %i.u = mul i64 %i.t, 265                        ; 2 uses
  %i.v = lshr i64 %i.u, 14
  %i.w = xor i64 %i.v, %i.u
  %i.x = mul i64 %i.w, 21                         ; 2 uses
  %i.y = lshr i64 %i.x, 28
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = mul i32 %i.aa, -2147483647              ; 2 uses
  %i.ac = load ptr, ptr %1, align 8               ; 2 uses
  %.not16.i.i = icmp eq ptr %i.ac, null
  br i1 %.not16.i.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratordeEv.exit, %bb.g
  %.018.i.i = phi ptr [ %i.ap, %bb.g ], [ %i.ac, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratordeEv.exit ] ; 6 uses
  %.01217.i.i = phi i32 [ %i.ah, %bb.g ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratordeEv.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 44
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.ad, align 4 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.ab, %.sroa.01.0.copyload.i.i
  br i1 %.not15.i.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8FindHashENSB_9HashValueE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %i.ae = xor i32 %.sroa.01.0.copyload.i.i, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.ah, %bb.e ], [ %.01217.i.i, %.preheader.i.i ] ; 4 uses
  %i.af = lshr exact i32 -2147483648, %.1.i.i
  %i.ag = and i32 %i.af, %i.ae
  %.not.i.not.i.i = icmp eq i32 %i.ag, 0
  %i.ah = add nsw i32 %.1.i.i, 1                  ; 2 uses
  br i1 %.not.i.not.i.i, label %bb.e, label %bb.f, !llvm.loop !11

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 40
  %i.aj = load i8, ptr %i.ai, align 8
  %i.ak = sext i8 %i.aj to i32
  %i.al = icmp slt i32 %.1.i.i, %i.ak
  br i1 %i.al, label %bb.g, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 56
  %i.an = sext i32 %.1.i.i to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i10, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit, label %.lr.ph.i.i, !llvm.loop !12

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8FindHashENSB_9HashValueE.exit.i: ; preds = %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %.not11.i.i = icmp eq ptr %i.ar, null
  br i1 %.not11.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8FindHashENSB_9HashValueE.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.at, %bb.h ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.au, %bb.h ]
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = icmp ult ptr %i.aw, %.sroa.0107.0       ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ax, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ax, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !13

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ay = icmp eq ptr %.19.i.i.i.i.i, %i.au
  br i1 %i.ay, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_SB_EEEE4findERSG_.exit.i.i

_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_SB_EEEE4findERSG_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = icmp ult ptr %.sroa.0107.0, %i.ba       ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.bb, ptr %i.au, ptr %.19.i.i.i.i.i
  %8 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 32
  %spec.select.i.i = select i1 %i.bb, ptr %1, ptr %8
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit

bb.i:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8FindHashENSB_9HashValueE.exit.i
  %i.bc = load ptr, ptr %.018.i.i, align 8
  %i.bd = icmp eq ptr %.sroa.0107.0, %i.bc
  %..i.i = select i1 %i.bd, ptr %.018.i.i, ptr %1
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit: ; preds = %bb.f, %bb.g, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratordeEv.exit, %bb.h, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_SB_EEEE4findERSG_.exit.i.i, %bb.i
  %.sink.i.i = phi ptr [ %1, %bb.h ], [ %..i.i, %bb.i ], [ %spec.select.i.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_SB_EEEE4findERSG_.exit.i.i ], [ %1, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i ], [ %1, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratordeEv.exit ], [ %1, %bb.g ], [ %1, %bb.f ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %.not.i11 = icmp eq ptr %.sroa.5108.0, null
  br i1 %.not.i11, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit
  store i32 0, ptr %7, align 8, !alias.scope !76
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorneERKSC_.exit

bb.k:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  store i32 0, ptr %7, align 8, !alias.scope !78
  store i64 0, ptr %i.d, align 8, !alias.scope !78
  store ptr %.sroa.8110.0, ptr %i.e, align 8, !alias.scope !78
  store i8 %.sroa.11.0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !78
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.5108.0, i64 24
  %i.bg = load i8, ptr %i.bf, align 8, !noalias !78
  %i.bh = icmp sgt i8 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.lr.ph.i.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i.i.i ], [ 0, %bb.k ] ; 4 uses
  %.041.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.5108.0, %bb.k ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.041.i.i.i, i64 28
  %i.bj = load i32, ptr %i.bi, align 4, !noalias !78
  %i.bk = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bl = lshr exact i32 -2147483648, %i.bk
  %i.bm = and i32 %i.bj, %i.bl
  %.not.i.i.not.i.i.i = icmp eq i32 %i.bm, 0      ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.041.i.i.i, i64 40
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !78 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bp, null         ; 2 uses
  %spec.select.i.i14 = select i1 %.not.i.i.i13, ptr null, ptr %.041.i.i.i
  %.sink.i.i.i = select i1 %.not.i.i.not.i.i.i, ptr %i.bp, ptr %spec.select.i.i14
  %i.bq = select i1 %.not.i.i.not.i.i.i, i1 true, i1 %.not.i.i.i13
  %.1.i.i.i = select i1 %i.bq, ptr %.041.i.i.i, ptr %i.bp ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  store ptr %.sink.i.i.i, ptr %i.br, align 8, !alias.scope !78
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 24
  %i.bt = load i8, ptr %i.bs, align 8, !noalias !78
  %i.bu = sext i8 %i.bt to i64
  %i.bv = icmp slt i64 %indvars.iv.next.i, %i.bu
  br i1 %i.bv, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit.i, !llvm.loop !4

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit.i: ; preds = %.lr.ph.i.i.i
  %i.bw = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %i.bw, ptr %7, align 8, !alias.scope !78
  br label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i: ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit.i, %bb.k
  %.promoted = phi i32 [ 0, %bb.k ], [ %i.bw, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit.i ] ; 2 uses
  %i.bx = phi ptr [ %.sroa.5108.0, %bb.k ], [ %.1.i.i.i, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit.i ] ; 7 uses
  store ptr %i.bx, ptr %i.g, align 8, !alias.scope !78
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !78 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i12, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !78 ; 2 uses
  store ptr %i.cb, ptr %i.d, align 8, !alias.scope !78
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i: ; preds = %bb.l, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i
  %i.cc = phi ptr [ %i.cb, %bb.l ], [ null, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i ] ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !79 ; 2 uses
  %.not.i2.i.i232 = icmp eq ptr %i.ce, null       ; 2 uses
  %.sroa.5.0..sroa_idx.i.i233 = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.7.0..sroa_idx.i.i234 = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %.sroa.7.8..sroa_idx.i.i235 = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %.sroa.7.0.in.i.i236 = select i1 %.not.i2.i.i232, ptr %.sroa.7.0..sroa_idx.i.i234, ptr %.sroa.7.8..sroa_idx.i.i235
  %.sroa.5.0.in.i.i237 = select i1 %.not.i2.i.i232, ptr %.sroa.5.0..sroa_idx.i.i233, ptr %i.cf
  %.sroa.5.0.i.i238 = load ptr, ptr %.sroa.5.0.in.i.i237, align 8
  %.sroa.7.0.i.i239 = load i8, ptr %.sroa.7.0.in.i.i236, align 8
  %i.cg = icmp ne ptr %.sroa.5.0.i.i238, %.sroa.8110.0
  %i.ch = icmp ne i8 %.sroa.7.0.i.i239, %.sroa.11.0
  %.not3.i.i.i240 = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %.not3.i.i.i240, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph, label %.preheader

.preheader:                                       ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i, %.preheader.backedge
  %.pr150 = phi ptr [ %.pr150.be, %.preheader.backedge ], [ %i.bx, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i ] ; 2 uses
  %i.ci = phi ptr [ %.be, %.preheader.backedge ], [ %i.ce, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i ] ; 2 uses
  %i.cj = phi ptr [ %.be250, %.preheader.backedge ], [ %i.cc, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i ]
  %i.ck = phi i32 [ %.be251, %.preheader.backedge ], [ %.promoted, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i ] ; 3 uses
  %i.cl = phi ptr [ %.be252, %.preheader.backedge ], [ %i.cc, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i ] ; 2 uses
  %.not10.i67 = icmp eq ptr %i.ci, null
  br i1 %.not10.i67, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.cm = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.cl) #16 ; 5 uses
  store ptr %i.cm, ptr %i.d, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %bb.n, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98

bb.n:                                             ; preds = %bb.m, %.preheader
  %i.cp = phi ptr [ %i.cm, %bb.m ], [ %i.cj, %.preheader ]
  %i.cq = phi ptr [ %i.cm, %bb.m ], [ %i.cl, %.preheader ]
  %i.cr = icmp eq i32 %i.ck, 0
  br i1 %i.cr, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorneERKSC_.exit, label %.preheader.i68

.preheader.i68:                                   ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %.pr150, i64 28
  %i.ct = sext i32 %i.ck to i64
  %.pre = load i32, ptr %i.cs, align 4
  br label %bb.o

bb.o:                                             ; preds = %.critedge.i72, %.preheader.i68
  %indvars.iv.i69 = phi i64 [ %i.ct, %.preheader.i68 ], [ %indvars.iv.next.i70, %.critedge.i72 ] ; 4 uses
  %indvars.iv.next.i70 = add nsw i64 %indvars.iv.i69, -1 ; 4 uses
  %i.cu = trunc nsw i64 %indvars.iv.next.i70 to i32 ; 2 uses
  store i32 %i.cu, ptr %7, align 8
  %i.cv = lshr exact i32 -2147483648, %i.cu
  %i.cw = and i32 %i.cv, %.pre
  %.not.i.not.i71 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.not.i71, label %bb.p, label %.critedge.i72

bb.p:                                             ; preds = %bb.o
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.i70
  %i.cy = load ptr, ptr %i.cx, align 8            ; 4 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %.critedge.i72, label %bb.q

.critedge.i72:                                    ; preds = %bb.p, %bb.o
  %i.da = icmp eq i64 %indvars.iv.next.i70, 0
  br i1 %i.da, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorneERKSC_.exit, label %bb.o, !llvm.loop !5

bb.q:                                             ; preds = %bb.p
  %i.db = trunc nuw nsw i64 %indvars.iv.i69 to i32 ; 2 uses
  store i32 %i.db, ptr %7, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dd = load i8, ptr %i.dc, align 8
  %i.de = sext i8 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.i69, %i.de
  br i1 %i.df, label %.lr.ph.i.i89, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i73

.lr.ph.i.i89:                                     ; preds = %bb.q, %.lr.ph.i.i89
  %indvars.iv39.i90 = phi i64 [ %indvars.iv.next40.i97, %.lr.ph.i.i89 ], [ %indvars.iv.i69, %bb.q ] ; 4 uses
  %.041.i.i91 = phi ptr [ %.1.i.i96, %.lr.ph.i.i89 ], [ %i.cy, %bb.q ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.041.i.i91, i64 28
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = trunc nuw nsw i64 %indvars.iv39.i90 to i32
  %i.dj = lshr exact i32 -2147483648, %i.di
  %i.dk = and i32 %i.dh, %i.dj
  %.not.i.i.not.i.i92 = icmp eq i32 %i.dk, 0      ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.041.i.i91, i64 40
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %indvars.iv39.i90
  %i.dn = load ptr, ptr %i.dm, align 8            ; 3 uses
  %.not.i13.i93 = icmp eq ptr %i.dn, null         ; 2 uses
  %spec.select.i94 = select i1 %.not.i13.i93, ptr null, ptr %.041.i.i91
  %.sink.i.i95 = select i1 %.not.i.i.not.i.i92, ptr %i.dn, ptr %spec.select.i94
  %i.do = select i1 %.not.i.i.not.i.i92, i1 true, i1 %.not.i13.i93
  %.1.i.i96 = select i1 %i.do, ptr %.041.i.i91, ptr %i.dn ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv39.i90
  store ptr %.sink.i.i95, ptr %i.dp, align 8
  %indvars.iv.next40.i97 = add nuw nsw i64 %indvars.iv39.i90, 1 ; 3 uses
  %i.dq = trunc nuw nsw i64 %indvars.iv.next40.i97 to i32 ; 2 uses
  store i32 %i.dq, ptr %7, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.1.i.i96, i64 24
  %i.ds = load i8, ptr %i.dr, align 8
  %i.dt = sext i8 %i.ds to i64
  %i.du = icmp slt i64 %indvars.iv.next40.i97, %i.dt
  br i1 %i.du, label %.lr.ph.i.i89, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i73, !llvm.loop !4

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i73: ; preds = %.lr.ph.i.i89, %bb.q
  %i.dv = phi i32 [ %i.db, %bb.q ], [ %i.dq, %.lr.ph.i.i89 ] ; 2 uses
  %.0.lcssa.i.i75 = phi ptr [ %i.cy, %bb.q ], [ %.1.i.i96, %.lr.ph.i.i89 ] ; 6 uses
  store ptr %.0.lcssa.i.i75, ptr %i.g, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i75, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8            ; 3 uses
  %.not11.i76 = icmp eq ptr %i.dx, null
  br i1 %.not11.i76, label %.thread.i86, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i73
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8            ; 5 uses
  store ptr %i.dz, ptr %i.d, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %.sroa.6.8..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80

.thread.i86:                                      ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i73
  %.sroa.4.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i75, i64 8
  %.sroa.6.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i75, i64 16
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80: ; preds = %.thread.i86, %bb.r
  %i.eb = phi ptr [ %i.cp, %.thread.i86 ], [ %i.dz, %bb.r ] ; 2 uses
  %i.ec = phi ptr [ %i.cq, %.thread.i86 ], [ %i.dz, %bb.r ]
  %.sroa.6.0.in.i81 = phi ptr [ %.sroa.6.0..sroa_idx.i88, %.thread.i86 ], [ %.sroa.6.8..sroa_idx.i79, %bb.r ]
  %.sroa.4.0.in.i82 = phi ptr [ %.sroa.4.0..sroa_idx.i87, %.thread.i86 ], [ %i.ea, %bb.r ]
  %.sroa.4.0.i83 = load ptr, ptr %.sroa.4.0.in.i82, align 8
  %.sroa.6.0.i84 = load i8, ptr %.sroa.6.0.in.i81, align 8
  %i.ed = load ptr, ptr %i.e, align 8
  %i.ee = icmp ne ptr %.sroa.4.0.i83, %i.ed
  %i.ef = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.eg = icmp ne i8 %.sroa.6.0.i84, %i.ef
  %.not3.i.i85 = select i1 %i.ee, i1 true, i1 %i.eg
  br i1 %.not3.i.i85, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98, label %.preheader.backedge

.preheader.backedge:                              ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98
  %.pr150.be = phi ptr [ %.0.lcssa.i.i75, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80 ], [ %.pr148, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98 ]
  %.be = phi ptr [ %i.dx, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80 ], [ %i.ek, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98 ]
  %.be250 = phi ptr [ %i.eb, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80 ], [ %i.eh, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98 ]
  %.be251 = phi i32 [ %i.dv, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80 ], [ %i.ei, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98 ]
  %.be252 = phi ptr [ %i.ec, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80 ], [ %i.eh, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98 ]
  br label %.preheader, !llvm.loop !6

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98: ; preds = %bb.m, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80
  %.pr148 = phi ptr [ %.0.lcssa.i.i75, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80 ], [ %.pr150, %bb.m ] ; 5 uses
  %i.eh = phi ptr [ %i.eb, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80 ], [ %i.cm, %bb.m ] ; 5 uses
  %i.ei = phi i32 [ %i.dv, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i80 ], [ %i.ck, %bb.m ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.pr148, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !79 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.ek, null          ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pr148, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pr148, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %.sroa.7.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %.sroa.7.0.in.i.i = select i1 %.not.i2.i.i, ptr %.sroa.7.0..sroa_idx.i.i, ptr %.sroa.7.8..sroa_idx.i.i
  %.sroa.5.0.in.i.i = select i1 %.not.i2.i.i, ptr %.sroa.5.0..sroa_idx.i.i, ptr %i.el
  %.sroa.5.0.i.i = load ptr, ptr %.sroa.5.0.in.i.i, align 8
  %.sroa.7.0.i.i = load i8, ptr %.sroa.7.0.in.i.i, align 8
  %i.em = icmp ne ptr %.sroa.5.0.i.i, %.sroa.8110.0
  %i.en = icmp ne i8 %.sroa.7.0.i.i, %.sroa.11.0
  %.not3.i.i.i = select i1 %i.em, i1 true, i1 %i.en
  br i1 %.not3.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph, label %.preheader.backedge

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph: ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i
  %.pr151.lcssa = phi ptr [ %i.bx, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i ], [ %.pr148, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98 ]
  %.lcssa222 = phi ptr [ %i.cc, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i ], [ %i.eh, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98 ] ; 2 uses
  %.lcssa219 = phi i32 [ %.promoted, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.preheader.i.i ], [ %i.ei, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv.exit98 ]
  %i.eo = load ptr, ptr %6, align 8               ; 2 uses
  %.not16.i.i32 = icmp eq ptr %i.eo, null
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorneERKSC_.exit: ; preds = %bb.n, %.critedge.i72, %bb.ab, %bb.y, %.critedge.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  call void @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E6ModifyIZNSB_3SetES4_SA_EUlPSA_E_EEvS4_T_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %.sroa.0107.0, ptr nonnull align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.ep = call noundef nonnull align 8 dereferenceable(312) ptr @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(312) %4) ; 0 uses
  %i.eq = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not = icmp eq ptr %i.eq, null
  br i1 %.not, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorneERKSC_.exit._crit_edge, label %bb.b

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit: ; preds = %bb.aa, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i
  %.ph = phi ptr [ %i.gt, %bb.aa ], [ %.0.lcssa.i.i, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ]
  %.promoted.i.ph = phi ptr [ %i.gy, %bb.aa ], [ %.promoted.i154, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ]
  %.ph246 = phi ptr [ %i.gy, %bb.aa ], [ %i.im, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ]
  %.ph247 = phi i32 [ %i.gu, %bb.aa ], [ %i.ig, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ]
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit: ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph
  %i.er = phi ptr [ %.pr151.lcssa, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph ], [ %.ph, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit ] ; 5 uses
  %.promoted.i = phi ptr [ %.lcssa222, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph ], [ %.promoted.i.ph, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit ] ; 2 uses
  %i.es = phi ptr [ %.lcssa222, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph ], [ %.ph246, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit ] ; 3 uses
  %i.et = phi i32 [ %.lcssa219, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph ], [ %.ph247, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !80
  %.not.i31 = icmp eq ptr %i.ev, null             ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %.sroa.8.0.in = select i1 %.not.i31, ptr %.sroa.8.0..sroa_idx, ptr %.sroa.8.8..sroa_idx
  %.sroa.6.0.in = select i1 %.not.i31, ptr %.sroa.6.0..sroa_idx, ptr %i.ex
  %.sroa.0.0.in = select i1 %.not.i31, ptr %i.er, ptr %i.ew
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8 ; 5 uses
  %.sroa.6.0 = load ptr, ptr %.sroa.6.0.in, align 8
  %.sroa.8.0 = load i8, ptr %.sroa.8.0.in, align 8
  %i.ey = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %i.ez = xor i64 %i.ey, -1
  %i.fa = shl i64 %i.ey, 21
  %i.fb = add i64 %i.fa, %i.ez                    ; 2 uses
  %i.fc = lshr i64 %i.fb, 24
  %i.fd = xor i64 %i.fc, %i.fb
  %i.fe = mul i64 %i.fd, 265                      ; 2 uses
  %i.ff = lshr i64 %i.fe, 14
  %i.fg = xor i64 %i.ff, %i.fe
  %i.fh = mul i64 %i.fg, 21                       ; 2 uses
  %i.fi = lshr i64 %i.fh, 28
  %i.fj = xor i64 %i.fi, %i.fh
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = mul i32 %i.fk, -2147483647              ; 2 uses
  br i1 %.not16.i.i32, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i33

.lr.ph.i.i33:                                     ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %bb.u
  %.018.i.i34 = phi ptr [ %i.fy, %bb.u ], [ %i.eo, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit ] ; 6 uses
  %.01217.i.i35 = phi i32 [ %i.fq, %bb.u ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.018.i.i34, i64 28
  %.sroa.01.0.copyload.i.i36 = load i32, ptr %i.fm, align 4 ; 2 uses
  %.not15.i.i37 = icmp eq i32 %i.fl, %.sroa.01.0.copyload.i.i36
  br i1 %.not15.i.i37, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i, label %.preheader.i.i38

.preheader.i.i38:                                 ; preds = %.lr.ph.i.i33
  %i.fn = xor i32 %.sroa.01.0.copyload.i.i36, %i.fl
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader.i.i38
  %.1.i.i39 = phi i32 [ %i.fq, %bb.s ], [ %.01217.i.i35, %.preheader.i.i38 ] ; 4 uses
  %i.fo = lshr exact i32 -2147483648, %.1.i.i39
  %i.fp = and i32 %i.fo, %i.fn
  %.not.i.not.i.i40 = icmp eq i32 %i.fp, 0
  %i.fq = add nsw i32 %.1.i.i39, 1                ; 2 uses
  br i1 %.not.i.not.i.i40, label %bb.s, label %bb.t, !llvm.loop !7

bb.t:                                             ; preds = %bb.s
  %i.fr = getelementptr inbounds nuw i8, ptr %.018.i.i34, i64 24
  %i.fs = load i8, ptr %i.fr, align 8
  %i.ft = sext i8 %i.fs to i32
  %i.fu = icmp slt i32 %.1.i.i39, %i.ft
  br i1 %i.fu, label %bb.u, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit

bb.u:                                             ; preds = %bb.t
  %i.fv = getelementptr inbounds nuw i8, ptr %.018.i.i34, i64 40
  %i.fw = sext i32 %.1.i.i39 to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8            ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i42, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i33, !llvm.loop !8

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i: ; preds = %.lr.ph.i.i33
  %i.fz = getelementptr inbounds nuw i8, ptr %.018.i.i34, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8            ; 3 uses
  %.not11.i.i43 = icmp eq ptr %i.ga, null
  br i1 %.not11.i.i43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8            ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 3 uses
  %.not10.i.i.i.i.i44 = icmp eq ptr %i.gc, null
  br i1 %.not10.i.i.i.i.i44, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i.i.i.i45

.lr.ph.i.i.i.i.i45:                               ; preds = %bb.v, %.lr.ph.i.i.i.i.i45
  %.012.i.i.i.i.i46 = phi ptr [ %.1.i.i.i.i.i51, %.lr.ph.i.i.i.i.i45 ], [ %i.gc, %bb.v ] ; 3 uses
  %.0811.i.i.i.i.i47 = phi ptr [ %.19.i.i.i.i.i48, %.lr.ph.i.i.i.i.i45 ], [ %i.gd, %bb.v ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i46, i64 32
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = icmp ult ptr %i.gf, %.sroa.0.0          ; 2 uses
  %.19.i.i.i.i.i48 = select i1 %i.gg, ptr %.0811.i.i.i.i.i47, ptr %.012.i.i.i.i.i46 ; 4 uses
  %.1.in.v.i.i.i.i.i49 = select i1 %i.gg, i64 24, i64 16
  %.1.in.i.i.i.i.i50 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i46, i64 %.1.in.v.i.i.i.i.i49
  %.1.i.i.i.i.i51 = load ptr, ptr %.1.in.i.i.i.i.i50, align 8 ; 2 uses
  %.not.i.i.i.i.i52 = icmp eq ptr %.1.i.i.i.i.i51, null
  br i1 %.not.i.i.i.i.i52, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i45, !llvm.loop !9

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i45
  %i.gh = icmp eq ptr %.19.i.i.i.i.i48, %i.gd
  br i1 %i.gh, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i

_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i48, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = icmp ult ptr %.sroa.0.0, %i.gj          ; 2 uses
  %spec.select.i.i.i.i53 = select i1 %i.gk, ptr %i.gd, ptr %.19.i.i.i.i.i48
  %9 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i53, i64 32
  %spec.select.i.i54 = select i1 %i.gk, ptr %6, ptr %9
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit

bb.w:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i
  %i.gl = load ptr, ptr %.018.i.i34, align 8
  %i.gm = icmp eq ptr %.sroa.0.0, %i.gl
  %..i.i55 = select i1 %i.gm, ptr %.018.i.i34, ptr %6
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit: ; preds = %bb.t, %bb.u, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %bb.v, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i, %bb.w
  %.sink.i.i41 = phi ptr [ %6, %bb.v ], [ %..i.i55, %bb.w ], [ %spec.select.i.i54, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i ], [ %6, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i ], [ %6, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit ], [ %6, %bb.u ], [ %6, %bb.t ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sink.i.i41, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = icmp ne ptr %i.go, %.sroa.6.0
  %i.gq = getelementptr inbounds nuw i8, ptr %.sink.i.i41, i64 16
  %i.gr = load i8, ptr %i.gq, align 8
  %i.gs = icmp ne i8 %i.gr, %.sroa.8.0
  %.not3.i = select i1 %i.gp, i1 true, i1 %i.gs
  br i1 %.not3.i, label %bb.x, label %.preheader244

bb.x:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr null, ptr %2, align 8
  store i8 0, ptr %i.h, align 8
  call void @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE6ModifyIZNSA_3SetES4_S6_EUlPS6_E_EEvS4_T_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %.sroa.0.0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.preheader244

.preheader244:                                    ; preds = %bb.x, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit
  br label %bb.y

bb.y:                                             ; preds = %.preheader244, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i
  %i.gt = phi ptr [ %.0.lcssa.i.i, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %i.er, %.preheader244 ] ; 4 uses
  %.promoted.i157 = phi ptr [ %.promoted.i154, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %.promoted.i, %.preheader244 ]
  %i.gu = phi i32 [ %i.ig, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %i.et, %.preheader244 ] ; 3 uses
  %i.gv = phi ptr [ %i.im, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %.promoted.i, %.preheader244 ] ; 2 uses
  %.not.i56 = icmp eq ptr %i.gt, null
  br i1 %.not.i56, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorneERKSC_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8            ; 2 uses
  %.not10.i = icmp eq ptr %i.gx, null
  br i1 %.not10.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gy = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.gv) #16 ; 6 uses
  store ptr %i.gy, ptr %i.d, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %bb.ab, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.promoted.i155 = phi ptr [ %i.gy, %bb.aa ], [ %.promoted.i157, %bb.z ]
  %i.hb = phi ptr [ %i.gy, %bb.aa ], [ %i.gv, %bb.z ]
  %i.hc = icmp eq i32 %i.gu, 0
  br i1 %i.hc, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorneERKSC_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ab
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 28
  %i.he = sext i32 %i.gu to i64
  %.pre160 = load i32, ptr %i.hd, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge.i, %.preheader.i
  %indvars.iv.i57 = phi i64 [ %i.he, %.preheader.i ], [ %indvars.iv.next.i58, %.critedge.i ] ; 4 uses
  %indvars.iv.next.i58 = add nsw i64 %indvars.iv.i57, -1 ; 4 uses
  %i.hf = trunc nsw i64 %indvars.iv.next.i58 to i32 ; 2 uses
  store i32 %i.hf, ptr %7, align 8
  %i.hg = lshr exact i32 -2147483648, %i.hf
  %i.hh = and i32 %i.hg, %.pre160
  %.not.i.not.i = icmp eq i32 %i.hh, 0
  br i1 %.not.i.not.i, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %bb.ac
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.i58
  %i.hj = load ptr, ptr %i.hi, align 8            ; 4 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %.critedge.i, label %bb.ae

.critedge.i:                                      ; preds = %bb.ad, %bb.ac
  %i.hl = icmp eq i64 %indvars.iv.next.i58, 0
  br i1 %i.hl, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorneERKSC_.exit, label %bb.ac, !llvm.loop !5

bb.ae:                                            ; preds = %bb.ad
  %i.hm = trunc nuw nsw i64 %indvars.iv.i57 to i32 ; 2 uses
  store i32 %i.hm, ptr %7, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.ho = load i8, ptr %i.hn, align 8
  %i.hp = sext i8 %i.ho to i64
  %i.hq = icmp slt i64 %indvars.iv.i57, %i.hp
  br i1 %i.hq, label %.lr.ph.i.i59, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i

.lr.ph.i.i59:                                     ; preds = %bb.ae, %.lr.ph.i.i59
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %.lr.ph.i.i59 ], [ %indvars.iv.i57, %bb.ae ] ; 4 uses
  %.041.i.i = phi ptr [ %.1.i.i61, %.lr.ph.i.i59 ], [ %i.hj, %bb.ae ] ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 28
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = trunc nuw nsw i64 %indvars.iv39.i to i32
  %i.hu = lshr exact i32 -2147483648, %i.ht
  %i.hv = and i32 %i.hs, %i.hu
  %.not.i.i.not.i.i = icmp eq i32 %i.hv, 0        ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 40
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %indvars.iv39.i
  %i.hy = load ptr, ptr %i.hx, align 8            ; 3 uses
  %.not.i13.i = icmp eq ptr %i.hy, null           ; 2 uses
  %spec.select.i = select i1 %.not.i13.i, ptr null, ptr %.041.i.i
  %.sink.i.i60 = select i1 %.not.i.i.not.i.i, ptr %i.hy, ptr %spec.select.i
  %i.hz = select i1 %.not.i.i.not.i.i, i1 true, i1 %.not.i13.i
  %.1.i.i61 = select i1 %i.hz, ptr %.041.i.i, ptr %i.hy ; 3 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv39.i
  store ptr %.sink.i.i60, ptr %i.ia, align 8
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 3 uses
  %i.ib = trunc nuw nsw i64 %indvars.iv.next40.i to i32 ; 2 uses
  store i32 %i.ib, ptr %7, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %.1.i.i61, i64 24
  %i.id = load i8, ptr %i.ic, align 8
  %i.ie = sext i8 %i.id to i64
  %i.if = icmp slt i64 %indvars.iv.next40.i, %i.ie
  br i1 %i.if, label %.lr.ph.i.i59, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i, !llvm.loop !4

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i: ; preds = %.lr.ph.i.i59, %bb.ae
  %i.ig = phi i32 [ %i.hm, %bb.ae ], [ %i.ib, %.lr.ph.i.i59 ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %i.hj, %bb.ae ], [ %.1.i.i61, %.lr.ph.i.i59 ] ; 6 uses
  store ptr %.0.lcssa.i.i, ptr %i.g, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %i.ii = load ptr, ptr %i.ih, align 8            ; 2 uses
  %.not11.i = icmp eq ptr %i.ii, null
  br i1 %.not11.i, label %.thread.i, label %bb.af

bb.af:                                            ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8            ; 5 uses
  store ptr %i.ik, ptr %i.d, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i

.thread.i:                                        ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 16
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i: ; preds = %.thread.i, %bb.af
  %.promoted.i154 = phi ptr [ %.promoted.i155, %.thread.i ], [ %i.ik, %bb.af ] ; 2 uses
  %i.im = phi ptr [ %i.hb, %.thread.i ], [ %i.ik, %bb.af ] ; 2 uses
  %.sroa.6.0.in.i = phi ptr [ %.sroa.6.0..sroa_idx.i, %.thread.i ], [ %.sroa.6.8..sroa_idx.i, %bb.af ]
  %.sroa.4.0.in.i = phi ptr [ %.sroa.4.0..sroa_idx.i, %.thread.i ], [ %i.il, %bb.af ]
  %.sroa.4.0.i = load ptr, ptr %.sroa.4.0.in.i, align 8
  %.sroa.6.0.i = load i8, ptr %.sroa.6.0.in.i, align 8
  %i.in = load ptr, ptr %i.e, align 8
  %i.io = icmp ne ptr %.sroa.4.0.i, %i.in
  %i.ip = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.iq = icmp ne i8 %.sroa.6.0.i, %i.ip
  %.not3.i.i = select i1 %i.io, i1 true, i1 %i.iq
  br i1 %.not3.i.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit, label %bb.y, !llvm.loop !10
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler18CsaLoadElimination9HalfState9KillFieldEPNS1_4NodeES5_NS0_21MachineRepresentationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 4 uses
  %5 = alloca %"struct.v8::internal::compiler::CsaLoadElimination::FieldInfo", align 8 ; 5 uses
  %6 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::compiler::PersistentMap<unsigned int, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>>::iterator", align 8 ; 6 uses
  %.sroa.5 = alloca [36 x i8], align 4            ; 4 uses
  %9 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.f, 296
  br i1 %i.g, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef 296) #14
  %.pre.i.i = load i64, ptr %i.d, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i.i, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 47 uses
  %i.j = add i64 %i.h, 296
  store i64 %i.j, ptr %i.d, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.i, ptr noundef nonnull align 8 dereferenceable(296) %0, i64 296, i1 false)
  %i.k = load ptr, ptr %0, align 8                ; 29 uses
  %i.l = load ptr, ptr %2, align 8                ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i16, ptr %i.m, align 8              ; 2 uses
  %cond.i5.i.i.i = icmp eq i16 %i.n, 59
  br i1 %cond.i5.i.i.i, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i
  %i.o = phi ptr [ %i.ad, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ], [ %i.l, %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit ]
  %.06.i.i.i = phi ptr [ %i.ac, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ], [ %2, %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp sgt i32 %i.q, 0
end_hunk_0
begin_hunk_1_@_ZNK2v88internal8compiler18CsaLoadElimination9HalfState9KillFieldEPNS1_4NodeES5_NS0_21MachineRepresentationE:bb.a
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cr = phi i64 [ %.pre.i.i58, %bb.q ], [ %i.co, %bb.p ] ; 2 uses
  %i.cs = inttoptr i64 %i.cr to ptr               ; 25 uses
  %i.ct = add i64 %i.cr, 296
  store i64 %i.ct, ptr %i.cn, align 8
  %i.cu = load ptr, ptr %0, align 8               ; 13 uses
  store ptr %i.cu, ptr %i.cs, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.cw, i8 0, i64 17, i1 false)
  store ptr %i.cu, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  store ptr null, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  store ptr %i.cu, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %.sroa.769.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.cz, i8 0, i64 17, i1 false)
  store ptr %i.cu, ptr %.sroa.769.0..sroa_idx.i.i, align 8
  store ptr null, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  store ptr %i.cu, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 104
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 112
  %.sroa.774.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.dc, i8 0, i64 17, i1 false)
  store ptr %i.cu, ptr %.sroa.774.0..sroa_idx.i.i, align 8
  store ptr null, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 144
  store ptr %i.cu, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 152
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 160
  %.sroa.779.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.df, i8 0, i64 17, i1 false)
  store ptr %i.cu, ptr %.sroa.779.0..sroa_idx.i.i, align 8
  store ptr null, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 192
  store ptr %i.cu, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 200
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 208
  %.sroa.784.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.di, i8 0, i64 17, i1 false)
  store ptr %i.cu, ptr %.sroa.784.0..sroa_idx.i.i, align 8
  store ptr null, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cs, i64 240
  store ptr %i.cu, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cs, i64 248
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cs, i64 256
  %.sroa.789.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.dl, i8 0, i64 17, i1 false)
  store ptr %i.cu, ptr %.sroa.789.0..sroa_idx.i.i, align 8
  store ptr null, ptr %i.dk, align 8
  br label %.thread

.thread:                                          ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit._crit_edge, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57.thread, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread, %bb.j, %bb.h, %bb.r
  %.sink205 = phi ptr [ %i.i, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit._crit_edge ], [ %i.i, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57.thread ], [ %i.i, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread ], [ %i.i, %bb.j ], [ %i.i, %bb.h ], [ %i.cs, %bb.r ] ; 2 uses
  %.sink = phi ptr [ %i.k, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit._crit_edge ], [ %i.k, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57.thread ], [ %i.k, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread ], [ %i.k, %bb.j ], [ %i.k, %bb.h ], [ %i.cu, %bb.r ]
  %.sroa.13.0..sroa_idx137 = getelementptr inbounds nuw i8, ptr %.sink205, i64 288
  store ptr %.sink, ptr %.sroa.13.0..sroa_idx137, align 8
  ret ptr %.sink205
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState17KillOffsetInFreshEPNS1_4NodeEjNS0_21MachineRepresentationE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %switch.tableidx = add i8 %3, -1                ; 2 uses
  %i.b = icmp ult i8 %switch.tableidx, 20
  br i1 %i.b, label %switch.hole_check, label %bb.b

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 1032191, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup.preheader, label %bb.b

switch.lookup.preheader:                          ; preds = %switch.hole_check
  %switch.tableidx75 = add nsw i8 %3, -1          ; 2 uses
  %i.c = icmp ult i8 %switch.tableidx75, 20
  %i.d = zext nneg i8 %switch.tableidx75 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal8compiler18CsaLoadElimination9HalfState10KillOffsetERNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEEjNS0_21MachineRepresentationEPNS0_4ZoneE, i64 %i.d
  br label %switch.lookup

switch.lookup:                                    ; preds = %switch.lookup.preheader, %bb.d
  %.0 = phi i32 [ %i.w, %bb.d ], [ 0, %switch.lookup.preheader ] ; 3 uses
  br i1 %i.c, label %switch.lookup76, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit

bb.b:                                             ; preds = %switch.hole_check, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14) #15
  unreachable

switch.lookup76:                                  ; preds = %switch.lookup
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit

_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit: ; preds = %switch.lookup, %switch.lookup76
  %.0.i.i = phi i32 [ %switch.ext, %switch.lookup76 ], [ 3, %switch.lookup ]
  %.0.highbits = lshr i32 %.0, %.0.i.i
  %i.e = icmp eq i32 %.0.highbits, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
  %i.f = tail call i32 @llvm.usub.sat.i32(i32 %2, i32 15) ; 2 uses
  %i.g = icmp ult i32 %i.f, %2
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.h = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.i = xor i64 %i.h, -1
  %i.j = shl i64 %i.h, 21
  %i.k = add i64 %i.j, %i.i                       ; 2 uses
  %i.l = lshr i64 %i.k, 24
  %i.m = xor i64 %i.l, %i.k
  %i.n = mul i64 %i.m, 265                        ; 2 uses
  %i.o = lshr i64 %i.n, 14
  %i.p = xor i64 %i.o, %i.n
  %i.q = mul i64 %i.p, 21                         ; 2 uses
  %i.r = lshr i64 %i.q, 28
  %i.s = xor i64 %i.r, %i.q
  %i.t = trunc i64 %i.s to i32
  %i.u = mul i32 %i.t, -2147483647                ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
  %i.v = add i32 %.0, %2
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState6UpdateIjEEvRNS1_13PersistentMapIT_NS5_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS8_EEEENSB_IS6_EEEES6_S8_S9_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %i.v, ptr noundef %1, ptr null, i8 0)
  %i.w = add nuw nsw i32 %.0, 1
  br label %switch.lookup, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.w, %bb.c
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.w
  %storemerge50 = phi i32 [ %i.f, %.lr.ph ], [ %i.cs, %bb.w ] ; 8 uses
  %i.x = xor i32 %storemerge50, -1
  %i.y = shl i32 %storemerge50, 15
  %i.z = add i32 %i.y, %i.x                       ; 2 uses
  %i.aa = lshr i32 %i.z, 12
  %i.ab = xor i32 %i.aa, %i.z
  %i.ac = mul i32 %i.ab, 5                        ; 2 uses
  %i.ad = lshr i32 %i.ac, 4
  %i.ae = xor i32 %i.ad, %i.ac
  %i.af = mul i32 %i.ae, 2057                     ; 2 uses
  %i.ag = lshr i32 %i.af, 16
  %i.ah = xor i32 %i.ag, %i.af                    ; 2 uses
  %i.ai = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not16.i.i = icmp eq ptr %i.ai, null
  br i1 %.not16.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.h
  %.018.i.i = phi ptr [ %i.av, %bb.h ], [ %i.ai, %bb.e ] ; 6 uses
  %.01217.i.i = phi i32 [ %i.an, %bb.h ], [ 0, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 44
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.aj, align 4 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.ah, %.sroa.01.0.copyload.i.i
  br i1 %.not15.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %i.ak = xor i32 %.sroa.01.0.copyload.i.i, %i.ah
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.an, %bb.f ], [ %.01217.i.i, %.preheader.i.i ] ; 4 uses
  %i.al = lshr exact i32 -2147483648, %.1.i.i
  %i.am = and i32 %i.al, %i.ak
  %.not.i.not.i.i = icmp eq i32 %i.am, 0
  %i.an = add nsw i32 %.1.i.i, 1                  ; 2 uses
  br i1 %.not.i.not.i.i, label %bb.f, label %bb.g, !llvm.loop !1

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 40
  %i.ap = load i8, ptr %i.ao, align 8
  %i.aq = sext i8 %i.ap to i32
  %i.ar = icmp slt i32 %.1.i.i, %i.aq
  br i1 %i.ar, label %bb.h, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 56
  %i.at = sext i32 %.1.i.i to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i: ; preds = %.lr.ph.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %.not11.i.i = icmp eq ptr %i.ax, null
  br i1 %.not11.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.az, %bb.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ba, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = icmp ult i32 %i.bc, %storemerge50       ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.bd, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.bd, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.be = icmp eq ptr %.19.i.i.i.i.i, %i.ba
  br i1 %i.be, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i

_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = icmp ult i32 %storemerge50, %i.bg       ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.bh, ptr %i.ba, ptr %.19.i.i.i.i.i
  %4 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 32
  %spec.select.i.i = select i1 %i.bh, ptr %i.a, ptr %4
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

bb.j:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i
  %i.bi = load i32, ptr %.018.i.i, align 8
  %i.bj = icmp eq i32 %storemerge50, %i.bi
  %..i.i = select i1 %i.bj, ptr %.018.i.i, ptr %i.a
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit: ; preds = %bb.g, %bb.h, %bb.e, %bb.i, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i, %bb.j
  %.sink.i.i = phi ptr [ %i.a, %bb.i ], [ %..i.i, %bb.j ], [ %spec.select.i.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i ], [ %i.a, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i ], [ %i.a, %bb.e ], [ %i.a, %bb.h ], [ %i.a, %bb.g ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8 ; 8 uses
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not16.i.i14 = icmp eq ptr %i.bl, null
  br i1 %.not16.i.i14, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, %bb.m
  %.018.i.i16 = phi ptr [ %i.by, %bb.m ], [ %i.bl, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit ] ; 6 uses
  %.01217.i.i17 = phi i32 [ %i.bq, %bb.m ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.018.i.i16, i64 28
  %.sroa.01.0.copyload.i.i18 = load i32, ptr %i.bm, align 4 ; 2 uses
  %.not15.i.i19 = icmp eq i32 %i.u, %.sroa.01.0.copyload.i.i18
  br i1 %.not15.i.i19, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i, label %.preheader.i.i20

.preheader.i.i20:                                 ; preds = %.lr.ph.i.i15
  %i.bn = xor i32 %.sroa.01.0.copyload.i.i18, %i.u
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader.i.i20
  %.1.i.i21 = phi i32 [ %i.bq, %bb.k ], [ %.01217.i.i17, %.preheader.i.i20 ] ; 4 uses
  %i.bo = lshr exact i32 -2147483648, %.1.i.i21
  %i.bp = and i32 %i.bo, %i.bn
  %.not.i.not.i.i22 = icmp eq i32 %i.bp, 0
  %i.bq = add nsw i32 %.1.i.i21, 1                ; 2 uses
  br i1 %.not.i.not.i.i22, label %bb.k, label %bb.l, !llvm.loop !7

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %.018.i.i16, i64 24
  %i.bs = load i8, ptr %i.br, align 8
  %i.bt = sext i8 %i.bs to i32
  %i.bu = icmp slt i32 %.1.i.i21, %i.bt
  br i1 %i.bu, label %bb.m, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %.018.i.i16, i64 40
  %i.bw = sext i32 %.1.i.i21 to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.by, null
  br i1 %.not.i.i24, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i15, !llvm.loop !8

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i: ; preds = %.lr.ph.i.i15
  %i.bz = getelementptr inbounds nuw i8, ptr %.018.i.i16, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8            ; 3 uses
  %.not11.i.i25 = icmp eq ptr %i.ca, null
  br i1 %.not11.i.i25, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 3 uses
  %.not10.i.i.i.i.i26 = icmp eq ptr %i.cc, null
  br i1 %.not10.i.i.i.i.i26, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %bb.n, %.lr.ph.i.i.i.i.i27
  %.012.i.i.i.i.i28 = phi ptr [ %.1.i.i.i.i.i33, %.lr.ph.i.i.i.i.i27 ], [ %i.cc, %bb.n ] ; 3 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %.19.i.i.i.i.i30, %.lr.ph.i.i.i.i.i27 ], [ %i.cd, %bb.n ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i28, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = icmp ult ptr %i.cf, %1                  ; 2 uses
  %.19.i.i.i.i.i30 = select i1 %i.cg, ptr %.0811.i.i.i.i.i29, ptr %.012.i.i.i.i.i28 ; 4 uses
  %.1.in.v.i.i.i.i.i31 = select i1 %i.cg, i64 24, i64 16
  %.1.in.i.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i28, i64 %.1.in.v.i.i.i.i.i31
  %.1.i.i.i.i.i33 = load ptr, ptr %.1.in.i.i.i.i.i32, align 8 ; 2 uses
  %.not.i.i.i.i.i34 = icmp eq ptr %.1.i.i.i.i.i33, null
  br i1 %.not.i.i.i.i.i34, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i27, !llvm.loop !9

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i27
  %i.ch = icmp eq ptr %.19.i.i.i.i.i30, %i.cd
  br i1 %i.ch, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i

_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i30, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = icmp ult ptr %1, %i.cj                  ; 2 uses
  %spec.select.i.i.i.i35 = select i1 %i.ck, ptr %i.cd, ptr %.19.i.i.i.i.i30
  %5 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i35, i64 32
  %spec.select.i.i36 = select i1 %i.ck, ptr %i.bk, ptr %5
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit

bb.o:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i
  %i.cl = load ptr, ptr %.018.i.i16, align 8
  %i.cm = icmp eq ptr %1, %i.cl
  %..i.i37 = select i1 %i.cm, ptr %.018.i.i16, ptr %i.bk
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit: ; preds = %bb.l, %bb.m, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, %bb.n, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i, %bb.o
  %.sink.i.i23 = phi ptr [ %i.bk, %bb.n ], [ %..i.i37, %bb.o ], [ %spec.select.i.i36, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i ], [ %i.bk, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i ], [ %i.bk, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit ], [ %i.bk, %bb.m ], [ %i.bk, %bb.l ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.sink.i.i23, i64 16
  %i.co = load i8, ptr %i.cn, align 8
  switch i8 %i.co, label %bb.u [
    i8 0, label %bb.w
    i8 1, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39
    i8 2, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39
    i8 3, label %bb.p
    i8 16, label %bb.p
    i8 4, label %bb.q
    i8 17, label %bb.q
    i8 13, label %bb.q
    i8 5, label %bb.r
    i8 18, label %bb.r
    i8 19, label %bb.s
    i8 20, label %bb.t
    i8 7, label %bb.r
    i8 8, label %bb.r
    i8 9, label %bb.r
    i8 6, label %bb.r
    i8 10, label %bb.r
    i8 11, label %bb.r
    i8 12, label %bb.r
    i8 14, label %bb.r
  ]

bb.p:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39

bb.q:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39

bb.r:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39

bb.s:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39

bb.t:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39

bb.u:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14) #15
  unreachable

_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39: ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i.i38 = phi i32 [ 0, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit ], [ 1, %bb.p ], [ 2, %bb.q ], [ 3, %bb.r ], [ 4, %bb.s ], [ 5, %bb.t ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit ]
  %i.cp = shl nuw nsw i32 1, %.0.i.i38
  %i.cq = sub nuw i32 %2, %storemerge50
  %i.cr = icmp sgt i32 %i.cp, %i.cq
  br i1 %i.cr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState6UpdateIjEEvRNS1_13PersistentMapIT_NS5_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS8_EEEENSB_IS6_EEEES6_S8_S9_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %storemerge50, ptr noundef %1, ptr null, i8 0)
  br label %bb.w

bb.w:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %bb.v, %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39
  %i.cs = add nuw i32 %storemerge50, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cs, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !85
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState10KillOffsetERNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEEjNS0_21MachineRepresentationEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.v8::internal::compiler::CsaLoadElimination::FieldInfo", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 6 uses
  %8 = alloca %"class.v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>::iterator", align 8 ; 12 uses
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %switch.tableidx = add i8 %2, -1                ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 20
  br i1 %i.a, label %switch.hole_check, label %bb.b

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 1032191, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup.preheader, label %bb.b

switch.lookup.preheader:                          ; preds = %switch.hole_check
  %switch.tableidx133 = add nsw i8 %2, -1         ; 2 uses
  %i.b = icmp ult i8 %switch.tableidx133, 20
  %i.c = zext nneg i8 %switch.tableidx133 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal8compiler18CsaLoadElimination9HalfState10KillOffsetERNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEEjNS0_21MachineRepresentationEPNS0_4ZoneE, i64 %i.c
  br label %switch.lookup

switch.lookup:                                    ; preds = %switch.lookup.preheader, %bb.d
  %.0 = phi i32 [ %i.o, %bb.d ], [ 0, %switch.lookup.preheader ] ; 3 uses
  br i1 %i.b, label %switch.lookup134, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit

bb.b:                                             ; preds = %switch.hole_check, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14) #15
  unreachable

switch.lookup134:                                 ; preds = %switch.lookup
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit

_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit: ; preds = %switch.lookup, %switch.lookup134
  %.0.i.i = phi i32 [ %switch.ext, %switch.lookup134 ], [ 3, %switch.lookup ]
  %.0.highbits = lshr i32 %.0, %.0.i.i
  %i.d = icmp eq i32 %.0.highbits, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
  %i.e = call i32 @llvm.usub.sat.i32(i32 %1, i32 15) ; 2 uses
  %i.f = icmp ult i32 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 280
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 288
  br label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
  %i.n = add i32 %.0, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %6, i8 0, i64 17, i1 false)
  store ptr %3, ptr %.sroa.472.0..sroa_idx, align 8
  call void @_ZN2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE6ModifyIZNSC_3SetEjSA_EUlPSA_E_EEvjT_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.n, ptr nonnull align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.o = add nuw nsw i32 %.0, 1
  br label %switch.lookup, !llvm.loop !86

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge, %bb.c
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge
  %storemerge81 = phi i32 [ %i.e, %.lr.ph ], [ %i.ch, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.p = xor i32 %storemerge81, -1
  %i.q = shl i32 %storemerge81, 15
  %i.r = add i32 %i.q, %i.p                       ; 2 uses
  %i.s = lshr i32 %i.r, 12
  %i.t = xor i32 %i.s, %i.r
  %i.u = mul i32 %i.t, 5                          ; 2 uses
  %i.v = lshr i32 %i.u, 4
  %i.w = xor i32 %i.v, %i.u
  %i.x = mul i32 %i.w, 2057                       ; 2 uses
  %i.y = lshr i32 %i.x, 16
  %i.z = xor i32 %i.y, %i.x                       ; 4 uses
  %i.aa = load ptr, ptr %0, align 8               ; 3 uses
  %.not16.i.i = icmp eq ptr %i.aa, null
  br i1 %.not16.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit.thread, label %.lr.ph.i.i

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit.thread: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.h
  %.018.i.i = phi ptr [ %i.an, %bb.h ], [ %i.aa, %bb.e ] ; 6 uses
  %.01217.i.i = phi i32 [ %i.af, %bb.h ], [ 0, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 44
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.ab, align 4 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.z, %.sroa.01.0.copyload.i.i
  br i1 %.not15.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %i.ac = xor i32 %.sroa.01.0.copyload.i.i, %i.z
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.af, %bb.f ], [ %.01217.i.i, %.preheader.i.i ] ; 4 uses
  %i.ad = lshr exact i32 -2147483648, %.1.i.i
  %i.ae = and i32 %i.ad, %i.ac
  %.not.i.not.i.i = icmp eq i32 %i.ae, 0
  %i.af = add nsw i32 %.1.i.i, 1                  ; 2 uses
  br i1 %.not.i.not.i.i, label %bb.f, label %bb.g, !llvm.loop !1

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 40
  %i.ah = load i8, ptr %i.ag, align 8
  %i.ai = sext i8 %i.ah to i32
  %i.aj = icmp slt i32 %.1.i.i, %i.ai
  br i1 %i.aj, label %bb.h, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 56
  %i.al = sext i32 %.1.i.i to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i: ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %.not11.i.i = icmp eq ptr %i.ap, null
  br i1 %.not11.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ar, %bb.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.as, %bb.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp ult i32 %i.au, %storemerge81       ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.av, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.av, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = icmp eq ptr %.19.i.i.i.i.i, %i.as
  br i1 %i.aw, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i

_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp ult i32 %storemerge81, %i.ay       ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.az, ptr %i.as, ptr %.19.i.i.i.i.i
  %9 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 32
  %spec.select.i.i = select i1 %i.az, ptr %0, ptr %9
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

bb.j:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i
  %i.ba = load i32, ptr %.018.i.i, align 8
  %i.bb = icmp eq i32 %storemerge81, %i.ba
  %..i.i = select i1 %i.bb, ptr %.018.i.i, ptr %0
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit: ; preds = %bb.g, %bb.h, %bb.i, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i, %bb.j
  %.sink.i.i = phi ptr [ %0, %bb.i ], [ %..i.i, %bb.j ], [ %spec.select.i.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i ], [ %0, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i ], [ %0, %bb.h ], [ %0, %bb.g ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 32, i1 false)
  br label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, %bb.m
  %.018.i.i20 = phi ptr [ %i.bp, %bb.m ], [ %i.aa, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit ] ; 6 uses
  %.01217.i.i21 = phi i32 [ %i.bh, %bb.m ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.018.i.i20, i64 44
  %.sroa.01.0.copyload.i.i22 = load i32, ptr %i.bd, align 4 ; 2 uses
  %.not15.i.i23 = icmp eq i32 %i.z, %.sroa.01.0.copyload.i.i22
  br i1 %.not15.i.i23, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i29, label %.preheader.i.i24

.preheader.i.i24:                                 ; preds = %.lr.ph.i.i19
  %i.be = xor i32 %.sroa.01.0.copyload.i.i22, %i.z
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader.i.i24
  %.1.i.i25 = phi i32 [ %i.bh, %bb.k ], [ %.01217.i.i21, %.preheader.i.i24 ] ; 4 uses
  %i.bf = lshr exact i32 -2147483648, %.1.i.i25
  %i.bg = and i32 %i.bf, %i.be
  %.not.i.not.i.i26 = icmp eq i32 %i.bg, 0
  %i.bh = add nsw i32 %.1.i.i25, 1                ; 2 uses
  br i1 %.not.i.not.i.i26, label %bb.k, label %bb.l, !llvm.loop !1

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %.018.i.i20, i64 40
  %i.bj = load i8, ptr %i.bi, align 8
  %i.bk = sext i8 %i.bj to i32
  %i.bl = icmp slt i32 %.1.i.i25, %i.bk
  br i1 %i.bl, label %bb.m, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %.018.i.i20, i64 56
  %i.bn = sext i32 %.1.i.i25 to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i28, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45, label %.lr.ph.i.i19, !llvm.loop !2

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i29: ; preds = %.lr.ph.i.i19
  %i.bq = getelementptr inbounds nuw i8, ptr %.018.i.i20, i64 48
  %i.br = load ptr, ptr %i.bq, align 8            ; 3 uses
  %.not11.i.i30 = icmp eq ptr %i.br, null
  br i1 %.not11.i.i30, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i29
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 3 uses
  %.not10.i.i.i.i.i31 = icmp eq ptr %i.bt, null
  br i1 %.not10.i.i.i.i.i31, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45, label %.lr.ph.i.i.i.i.i32

.lr.ph.i.i.i.i.i32:                               ; preds = %bb.n, %.lr.ph.i.i.i.i.i32
  %.012.i.i.i.i.i33 = phi ptr [ %.1.i.i.i.i.i38, %.lr.ph.i.i.i.i.i32 ], [ %i.bt, %bb.n ] ; 3 uses
  %.0811.i.i.i.i.i34 = phi ptr [ %.19.i.i.i.i.i35, %.lr.ph.i.i.i.i.i32 ], [ %i.bu, %bb.n ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i33, i64 32
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = icmp ult i32 %i.bw, %storemerge81       ; 2 uses
  %.19.i.i.i.i.i35 = select i1 %i.bx, ptr %.0811.i.i.i.i.i34, ptr %.012.i.i.i.i.i33 ; 4 uses
  %.1.in.v.i.i.i.i.i36 = select i1 %i.bx, i64 24, i64 16
  %.1.in.i.i.i.i.i37 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i33, i64 %.1.in.v.i.i.i.i.i36
  %.1.i.i.i.i.i38 = load ptr, ptr %.1.in.i.i.i.i.i37, align 8 ; 2 uses
  %.not.i.i.i.i.i39 = icmp eq ptr %.1.i.i.i.i.i38, null
  br i1 %.not.i.i.i.i.i39, label %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i40, label %.lr.ph.i.i.i.i.i32, !llvm.loop !3

_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i40: ; preds = %.lr.ph.i.i.i.i.i32
  %i.by = icmp eq ptr %.19.i.i.i.i.i35, %i.bu
  br i1 %i.by, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45, label %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i41

_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i41: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i40
  %i.bz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i35, i64 32
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = icmp ult i32 %storemerge81, %i.ca       ; 2 uses
  %spec.select.i.i.i.i42 = select i1 %i.cb, ptr %i.bu, ptr %.19.i.i.i.i.i35
  %10 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i42, i64 32
  %spec.select.i.i43 = select i1 %i.cb, ptr %0, ptr %10
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45

bb.o:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i29
  %i.cc = load i32, ptr %.018.i.i20, align 8
  %i.cd = icmp eq i32 %storemerge81, %i.cc
  %..i.i44 = select i1 %i.cd, ptr %.018.i.i20, ptr %0
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45: ; preds = %bb.l, %bb.m, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit.thread, %bb.n, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i40, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i41, %bb.o
  %.sink.i.i27 = phi ptr [ %0, %bb.n ], [ %..i.i44, %bb.o ], [ %spec.select.i.i43, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i41 ], [ %0, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i40 ], [ %0, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit.thread ], [ %0, %bb.m ], [ %0, %bb.l ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sink.i.i27, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>::iterator") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ce)
  %i.cf = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not80 = icmp eq ptr %i.cf, null
  br i1 %.not80, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph: ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45
  %i.cg = sub nuw i32 %1, %storemerge81
  %.pre = load ptr, ptr %i.i, align 8             ; 2 uses
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge: ; preds = %bb.aa, %bb.x, %.critedge.i, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @_ZN2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE6ModifyIZNSC_3SetEjSA_EUlPSA_E_EEvjT_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %storemerge81, ptr nonnull align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.ch = add nuw i32 %storemerge81, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !87

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit: ; preds = %bb.z, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i
  %.ph = phi ptr [ %i.cq, %bb.z ], [ %.0.lcssa.i.i, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ]
  %.promoted.i91.ph = phi ptr [ %i.cu, %bb.z ], [ %.promoted.i89, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ]
  %.ph136 = phi ptr [ %i.cu, %bb.z ], [ %i.eh, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ]
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit: ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph
  %i.ci = phi ptr [ %i.cf, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph ], [ %.ph, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit ] ; 5 uses
  %.promoted.i91 = phi ptr [ %.pre, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph ], [ %.promoted.i91.ph, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit ] ; 2 uses
  %i.cj = phi ptr [ %.pre, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph ], [ %.ph136, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !90
  %.not.i = icmp eq ptr %i.cl, null               ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %.sroa.6.0.in = select i1 %.not.i, ptr %.sroa.6.0..sroa_idx, ptr %.sroa.6.8..sroa_idx
  %.sroa.054.0.in = select i1 %.not.i, ptr %i.ci, ptr %i.cm
  %.sroa.054.0 = load ptr, ptr %.sroa.054.0.in, align 8
  %.sroa.6.0 = load i8, ptr %.sroa.6.0.in, align 8
  switch i8 %.sroa.6.0, label %bb.u [
    i8 0, label %bb.w
    i8 1, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49
    i8 2, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49
    i8 3, label %bb.p
    i8 16, label %bb.p
    i8 4, label %bb.q
    i8 17, label %bb.q
    i8 13, label %bb.q
    i8 5, label %bb.r
    i8 18, label %bb.r
    i8 19, label %bb.s
    i8 20, label %bb.t
    i8 7, label %bb.r
    i8 8, label %bb.r
    i8 9, label %bb.r
    i8 6, label %bb.r
    i8 10, label %bb.r
    i8 11, label %bb.r
    i8 12, label %bb.r
    i8 14, label %bb.r
  ]

bb.p:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49

bb.q:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49

bb.r:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49

bb.s:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49

bb.t:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49

bb.u:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14) #15
  unreachable

_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49: ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i.i48 = phi i32 [ 0, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit ], [ 1, %bb.p ], [ 2, %bb.q ], [ 3, %bb.r ], [ 4, %bb.s ], [ 5, %bb.t ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit ]
  %i.cn = shl nuw nsw i32 1, %.0.i.i48
  %i.co = icmp sgt i32 %i.cn, %i.cg
  br i1 %i.co, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr null, ptr %4, align 8
  store i8 0, ptr %i.j, align 8
  call void @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE6ModifyIZNSA_3SetES4_S6_EUlPS6_E_EEvS4_T_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %.sroa.054.0, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.promoted32.i.pre = load ptr, ptr %i.h, align 8
  %.promoted.i.pre = load ptr, ptr %i.i, align 8
  br label %bb.w

bb.w:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %bb.v, %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49
  %i.cp = phi ptr [ %i.ci, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit ], [ %.promoted32.i.pre, %bb.v ], [ %i.ci, %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49 ]
  %.promoted.i = phi ptr [ %.promoted.i91, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit ], [ %.promoted.i.pre, %bb.v ], [ %.promoted.i91, %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49 ] ; 2 uses
  %.promoted33.i = load i32, ptr %8, align 8
  br label %bb.x

bb.x:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i, %bb.w
  %i.cq = phi ptr [ %.0.lcssa.i.i, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %i.cp, %bb.w ] ; 4 uses
  %.promoted.i94 = phi ptr [ %.promoted.i89, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %.promoted.i, %bb.w ]
  %i.cr = phi ptr [ %i.eh, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %.promoted.i, %bb.w ] ; 2 uses
  %.promoted34.i = phi i32 [ %.promoted35.i, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %.promoted33.i, %bb.w ] ; 2 uses
  %.not.i50 = icmp eq ptr %i.cq, null
  br i1 %.not.i50, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not10.i = icmp eq ptr %i.ct, null
  br i1 %.not10.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cu = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.cr) #16 ; 6 uses
  store ptr %i.cu, ptr %i.i, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %bb.aa, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.promoted.i90 = phi ptr [ %i.cu, %bb.z ], [ %.promoted.i94, %bb.y ]
  %i.cx = phi ptr [ %i.cu, %bb.z ], [ %i.cr, %bb.y ]
  %i.cy = icmp eq i32 %.promoted34.i, 0
  br i1 %i.cy, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %i.da = sext i32 %.promoted34.i to i64
  %.pre96 = load i32, ptr %i.cz, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge.i, %.preheader.i
  %indvars.iv.i = phi i64 [ %i.da, %.preheader.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 4 uses
  %i.db = trunc nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %i.db, ptr %8, align 8
  %i.dc = lshr exact i32 -2147483648, %i.db
  %i.dd = and i32 %i.dc, %.pre96
  %.not.i.not.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i.not.i, label %bb.ac, label %.critedge.i

bb.ac:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i
  %i.df = load ptr, ptr %i.de, align 8            ; 4 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.critedge.i, label %bb.ad

.critedge.i:                                      ; preds = %bb.ac, %bb.ab
  %i.dh = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %i.dh, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge, label %bb.ab, !llvm.loop !5

bb.ad:                                            ; preds = %bb.ac
  %i.di = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  store i32 %i.di, ptr %8, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dk = load i8, ptr %i.dj, align 8
  %i.dl = sext i8 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv.i, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i51, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i

.lr.ph.i.i51:                                     ; preds = %bb.ad, %.lr.ph.i.i51
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %.lr.ph.i.i51 ], [ %indvars.iv.i, %bb.ad ] ; 4 uses
  %.041.i.i = phi ptr [ %.1.i.i53, %.lr.ph.i.i51 ], [ %i.df, %bb.ad ] ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 28
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = trunc nuw nsw i64 %indvars.iv39.i to i32
  %i.dq = lshr exact i32 -2147483648, %i.dp
  %i.dr = and i32 %i.do, %i.dq
  %.not.i.i.not.i.i = icmp eq i32 %i.dr, 0        ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 40
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %indvars.iv39.i
  %i.du = load ptr, ptr %i.dt, align 8            ; 3 uses
  %.not.i13.i = icmp eq ptr %i.du, null           ; 2 uses
  %spec.select.i = select i1 %.not.i13.i, ptr null, ptr %.041.i.i
  %.sink.i.i52 = select i1 %.not.i.i.not.i.i, ptr %i.du, ptr %spec.select.i
  %i.dv = select i1 %.not.i.i.not.i.i, i1 true, i1 %.not.i13.i
  %.1.i.i53 = select i1 %i.dv, ptr %.041.i.i, ptr %i.du ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv39.i
  store ptr %.sink.i.i52, ptr %i.dw, align 8
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 3 uses
  %i.dx = trunc nuw nsw i64 %indvars.iv.next40.i to i32 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK2v88internal8compiler18CsaLoadElimination9HalfState8AddFieldEPNS1_4NodeES5_S5_NS0_21MachineRepresentationE:bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef 296) #14
  %.pre.i.i = load i64, ptr %i.d, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i.i, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 4 uses
  %i.j = add i64 %i.h, 296
  store i64 %i.j, ptr %i.d, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.i, ptr noundef nonnull align 8 dereferenceable(296) %0, i64 296, i1 false)
  %i.k = load ptr, ptr %2, align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i16, ptr %i.l, align 8              ; 2 uses
  %cond.i5.i.i.i = icmp eq i16 %i.m, 59
  br i1 %cond.i5.i.i.i, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i
  %i.n = phi ptr [ %i.ac, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ], [ %i.k, %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit ]
  %.06.i.i.i = phi ptr [ %i.ab, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ], [ %2, %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.c, !prof !28

bb.c:                                             ; preds = %.lr.ph.i.i.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #15
  unreachable

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 20
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 251658240
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.t, 251658240
  %i.u = ptrtoint ptr %.06.i.i.i to i64
  %i.v = add i64 %i.u, 32
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = add i64 %i.y, 16
  %i.aa = inttoptr i64 %i.z to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i

_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.w, %bb.d ]
  %i.ab = load ptr, ptr %.sink.i.i.i.i.i.i.i, align 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i16, ptr %i.ad, align 8            ; 2 uses
  %cond.i.i.i.i = icmp eq i16 %i.ae, 59
  br i1 %cond.i.i.i.i, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i, !llvm.loop !0

_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i: ; preds = %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i, %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit
  %i.af = phi i16 [ %i.m, %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit ], [ %i.ae, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ]
  %i.ag = phi ptr [ %i.k, %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit ], [ %i.ac, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ] ; 2 uses
  switch i16 %i.af, label %_ZN2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EEC2EPNS1_4NodeE.exit [
    i16 27, label %bb.f
    i16 28, label %bb.g
  ]

bb.f:                                             ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load i32, ptr %i.ah, align 4
  br label %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit

bb.g:                                             ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = trunc i64 %i.ak to i32
  br label %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit

_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit: ; preds = %bb.f, %bb.g
  %.sroa.3.0.ph = phi i32 [ %i.ai, %bb.f ], [ %i.al, %bb.g ]
  %i.am = load ptr, ptr %1, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i16, ptr %i.an, align 8            ; 3 uses
  %i.ap = and i16 %i.ao, -2
  %spec.select.i = icmp eq i16 %i.ap, 266
  br i1 %spec.select.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit
  switch i16 %i.ao, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit [
    i16 51, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread
    i16 523, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread
  ]

_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit: ; preds = %bb.h
  %i.aq = add i16 %i.ao, -22
  %switch.i.i.i = icmp ult i16 %i.aq, 13
  br i1 %switch.i.i.i, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread, label %bb.i

_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread: ; preds = %bb.h, %bb.h, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit, %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit
  %.sink = phi i64 [ 8, %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit ], [ 56, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread ], [ 104, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState6UpdateIjEEvRNS1_13PersistentMapIT_NS5_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS8_EEEENSB_IS6_EEEES6_S8_S9_(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i32 noundef %.sroa.3.0.ph, ptr noundef nonnull %1, ptr %3, i8 %4)
  br label %bb.l

_ZN2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EEC2EPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i
  %i.as = load ptr, ptr %1, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i16, ptr %i.at, align 8            ; 3 uses
  %i.av = and i16 %i.au, -2
  %spec.select.i23 = icmp eq i16 %i.av, 266
  br i1 %spec.select.i23, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EEC2EPNS1_4NodeE.exit
  switch i16 %i.au, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit25 [
    i16 51, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit25.thread
    i16 523, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit25.thread
  ]

_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit25: ; preds = %bb.j
  %i.aw = add i16 %i.au, -22
  %switch.i.i.i24 = icmp ult i16 %i.aw, 13
  br i1 %switch.i.i.i24, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit25.thread, label %bb.k

_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit25.thread: ; preds = %bb.j, %bb.j, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit25
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit25.thread, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit25, %_ZN2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EEC2EPNS1_4NodeE.exit
  %.sink40 = phi i64 [ 152, %_ZN2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EEC2EPNS1_4NodeE.exit ], [ 200, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit25.thread ], [ 248, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit25 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink40
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState6UpdateIPNS1_4NodeEEEvRNS1_13PersistentMapIT_NS7_IS6_NS2_9FieldInfoENS_4base4hashIS6_EEEENSB_IS8_EEEES8_S6_S9_(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr %3, i8 %4)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState6UpdateIjEEvRNS1_13PersistentMapIT_NS5_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS8_EEEENSB_IS6_EEEES6_S8_S9_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2, ptr %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 4 uses
  %6 = alloca %"struct.v8::internal::compiler::CsaLoadElimination::FieldInfo", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.a = xor i32 %1, -1
  %i.b = shl i32 %1, 15
  %i.c = add i32 %i.b, %i.a                       ; 2 uses
  %i.d = lshr i32 %i.c, 12
  %i.e = xor i32 %i.d, %i.c
  %i.f = mul i32 %i.e, 5                          ; 2 uses
  %i.g = lshr i32 %i.f, 4
  %i.h = xor i32 %i.g, %i.f
  %i.i = mul i32 %i.h, 2057                       ; 2 uses
  %i.j = lshr i32 %i.i, 16
  %i.k = xor i32 %i.j, %i.i                       ; 2 uses
  %i.l = load ptr, ptr %0, align 8                ; 2 uses
  %.not16.i.i = icmp eq ptr %i.l, null
  br i1 %.not16.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.018.i.i = phi ptr [ %i.y, %bb.d ], [ %i.l, %bb.a ] ; 6 uses
  %.01217.i.i = phi i32 [ %i.q, %bb.d ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 44
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.m, align 4 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.k, %.sroa.01.0.copyload.i.i
  br i1 %.not15.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %i.n = xor i32 %.sroa.01.0.copyload.i.i, %i.k
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.q, %bb.b ], [ %.01217.i.i, %.preheader.i.i ] ; 4 uses
  %i.o = lshr exact i32 -2147483648, %.1.i.i
  %i.p = and i32 %i.o, %i.n
  %.not.i.not.i.i = icmp eq i32 %i.p, 0
  %i.q = add nsw i32 %.1.i.i, 1                   ; 2 uses
  br i1 %.not.i.not.i.i, label %bb.b, label %bb.c, !llvm.loop !1

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 40
  %i.s = load i8, ptr %i.r, align 8
  %i.t = sext i8 %i.s to i32
  %i.u = icmp slt i32 %.1.i.i, %i.t
  br i1 %i.u, label %bb.d, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 56
  %i.w = sext i32 %.1.i.i to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i: ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 48
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %.not11.i.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ac, %bb.e ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp ult i32 %i.af, %1                  ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ag, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ag, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ah = icmp eq ptr %.19.i.i.i.i.i, %i.ad
  br i1 %i.ah, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i

_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp ult i32 %1, %i.aj                  ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.ak, ptr %i.ad, ptr %.19.i.i.i.i.i
  %8 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 32
  %spec.select.i.i = select i1 %i.ak, ptr %0, ptr %8
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

bb.f:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i
  %i.al = load i32, ptr %.018.i.i, align 8
  %i.am = icmp eq i32 %1, %i.al
  %..i.i = select i1 %i.am, ptr %.018.i.i, ptr %0
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit: ; preds = %bb.c, %bb.d, %bb.a, %bb.e, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i, %bb.f
  %.sink.i.i = phi ptr [ %0, %bb.e ], [ %..i.i, %bb.f ], [ %spec.select.i.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i ], [ %0, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i ], [ %0, %bb.a ], [ %0, %bb.d ], [ %0, %bb.c ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %4, ptr %i.ao, align 8
  call void @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE6ModifyIZNSA_3SetES4_S6_EUlPS6_E_EEvS4_T_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %2, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @_ZN2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE6ModifyIZNSC_3SetEjSA_EUlPSA_E_EEvjT_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr nonnull align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState6UpdateIPNS1_4NodeEEEvRNS1_13PersistentMapIT_NS7_IS6_NS2_9FieldInfoENS_4base4hashIS6_EEEENSB_IS8_EEEES8_S6_S9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 4 uses
  %6 = alloca %"struct.v8::internal::compiler::CsaLoadElimination::FieldInfo", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = xor i64 %i.a, -1
  %i.c = shl i64 %i.a, 21
  %i.d = add i64 %i.c, %i.b                       ; 2 uses
  %i.e = lshr i64 %i.d, 24
  %i.f = xor i64 %i.e, %i.d
  %i.g = mul i64 %i.f, 265                        ; 2 uses
  %i.h = lshr i64 %i.g, 14
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, 21                         ; 2 uses
  %i.k = lshr i64 %i.j, 28
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = mul i32 %i.m, -2147483647                ; 2 uses
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %.not16.i.i = icmp eq ptr %i.o, null
  br i1 %.not16.i.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.018.i.i = phi ptr [ %i.ab, %bb.d ], [ %i.o, %bb.a ] ; 6 uses
  %.01217.i.i = phi i32 [ %i.t, %bb.d ], [ 0, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 44
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.p, align 4 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.n, %.sroa.01.0.copyload.i.i
  br i1 %.not15.i.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8FindHashENSB_9HashValueE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %i.q = xor i32 %.sroa.01.0.copyload.i.i, %i.n
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.t, %bb.b ], [ %.01217.i.i, %.preheader.i.i ] ; 4 uses
  %i.r = lshr exact i32 -2147483648, %.1.i.i
  %i.s = and i32 %i.r, %i.q
  %.not.i.not.i.i = icmp eq i32 %i.s, 0
  %i.t = add nsw i32 %.1.i.i, 1                   ; 2 uses
  br i1 %.not.i.not.i.i, label %bb.b, label %bb.c, !llvm.loop !11

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 40
  %i.v = load i8, ptr %i.u, align 8
  %i.w = sext i8 %i.v to i32
  %i.x = icmp slt i32 %.1.i.i, %i.w
  br i1 %i.x, label %bb.d, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 56
  %i.z = sext i32 %.1.i.i to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit, label %.lr.ph.i.i, !llvm.loop !12

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8FindHashENSB_9HashValueE.exit.i: ; preds = %.lr.ph.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %.not11.i.i = icmp eq ptr %i.ad, null
  br i1 %.not11.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8FindHashENSB_9HashValueE.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.af, %bb.e ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ag, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp ult ptr %i.ai, %1                  ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.aj, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.aj, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !13

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = icmp eq ptr %.19.i.i.i.i.i, %i.ag
  br i1 %i.ak, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_SB_EEEE4findERSG_.exit.i.i

_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_SB_EEEE4findERSG_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = icmp ult ptr %1, %i.am                  ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.an, ptr %i.ag, ptr %.19.i.i.i.i.i
  %8 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 32
  %spec.select.i.i = select i1 %i.an, ptr %0, ptr %8
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit

bb.f:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8FindHashENSB_9HashValueE.exit.i
  %i.ao = load ptr, ptr %.018.i.i, align 8
  %i.ap = icmp eq ptr %1, %i.ao
  %..i.i = select i1 %i.ap, ptr %.018.i.i, ptr %0
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit: ; preds = %bb.c, %bb.d, %bb.a, %bb.e, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_SB_EEEE4findERSG_.exit.i.i, %bb.f
  %.sink.i.i = phi ptr [ %0, %bb.e ], [ %..i.i, %bb.f ], [ %spec.select.i.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_SB_EEEE4findERSG_.exit.i.i ], [ %0, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i ], [ %0, %bb.a ], [ %0, %bb.d ], [ %0, %bb.c ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %4, ptr %i.ar, align 8
  call void @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE6ModifyIZNSA_3SetES4_S6_EUlPS6_E_EEvS4_T_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %2, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E6ModifyIZNSB_3SetES4_SA_EUlPSA_E_EEvS4_T_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr nonnull align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i8 } @_ZNK2v88internal8compiler18CsaLoadElimination9HalfState6LookupEPNS1_4NodeES5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  %cond.i5.i.i.i = icmp eq i16 %i.c, 59
  br i1 %cond.i5.i.i.i, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i
  %i.d = phi ptr [ %i.s, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ], [ %i.a, %bb.a ]
  %.06.i.i.i = phi ptr [ %i.r, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ], [ %2, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #15
  unreachable

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 251658240
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.j, 251658240
  %i.k = ptrtoint ptr %.06.i.i.i to i64
  %i.l = add i64 %i.k, 32
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = add i64 %i.o, 16
  %i.q = inttoptr i64 %i.p to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i

_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ]
  %i.r = load ptr, ptr %.sink.i.i.i.i.i.i.i, align 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i16, ptr %i.t, align 8              ; 2 uses
  %cond.i.i.i.i = icmp eq i16 %i.u, 59
  br i1 %cond.i.i.i.i, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i, !llvm.loop !0

_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i: ; preds = %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i, %bb.a
  %i.v = phi i16 [ %i.c, %bb.a ], [ %i.u, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ]
  %i.w = phi ptr [ %i.a, %bb.a ], [ %i.s, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ] ; 2 uses
  switch i16 %i.v, label %_ZN2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EEC2EPNS1_4NodeE.exit [
    i16 27, label %bb.e
    i16 28, label %bb.f
  ]

bb.e:                                             ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load i32, ptr %i.x, align 4
  br label %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit

bb.f:                                             ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = trunc i64 %i.aa to i32
  br label %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit

_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit: ; preds = %bb.e, %bb.f
  %.sroa.3.095.ph = phi i32 [ %i.y, %bb.e ], [ %i.ab, %bb.f ] ; 5 uses
  %i.ac = load ptr, ptr %1, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i16, ptr %i.ad, align 8            ; 3 uses
  %i.af = and i16 %i.ae, -2
  %spec.select.i = icmp eq i16 %i.af, 266
  br i1 %spec.select.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit
  switch i16 %i.ae, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit [
    i16 51, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread
    i16 523, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread
  ]

_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit: ; preds = %bb.g
  %i.ag = add i16 %i.ae, -22
  %switch.i.i.i = icmp ult i16 %i.ag, 13
  br i1 %switch.i.i.i, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread, label %bb.h

_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread: ; preds = %bb.g, %bb.g, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit, %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit
  %.sink = phi i64 [ 8, %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit ], [ 56, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread ], [ 104, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.sink ; 8 uses
  %i.ai = xor i32 %.sroa.3.095.ph, -1
  %i.aj = shl i32 %.sroa.3.095.ph, 15
  %i.ak = add i32 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i32 %i.ak, 12
  %i.am = xor i32 %i.al, %i.ak
  %i.an = mul i32 %i.am, 5                        ; 2 uses
  %i.ao = lshr i32 %i.an, 4
  %i.ap = xor i32 %i.ao, %i.an
  %i.aq = mul i32 %i.ap, 2057                     ; 2 uses
  %i.ar = lshr i32 %i.aq, 16
  %i.as = xor i32 %i.ar, %i.aq                    ; 2 uses
  %i.at = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not16.i.i = icmp eq ptr %i.at, null
  br i1 %.not16.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.k
  %.018.i.i = phi ptr [ %i.bg, %bb.k ], [ %i.at, %bb.h ] ; 6 uses
  %.01217.i.i = phi i32 [ %i.ay, %bb.k ], [ 0, %bb.h ]
  %i.au = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 44
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.au, align 4 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.as, %.sroa.01.0.copyload.i.i
  br i1 %.not15.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %i.av = xor i32 %.sroa.01.0.copyload.i.i, %i.as
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.ay, %bb.i ], [ %.01217.i.i, %.preheader.i.i ] ; 4 uses
  %i.aw = lshr exact i32 -2147483648, %.1.i.i
  %i.ax = and i32 %i.aw, %i.av
  %.not.i.not.i.i = icmp eq i32 %i.ax, 0
  %i.ay = add nsw i32 %.1.i.i, 1                  ; 2 uses
  br i1 %.not.i.not.i.i, label %bb.i, label %bb.j, !llvm.loop !1

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 40
  %i.ba = load i8, ptr %i.az, align 8
  %i.bb = sext i8 %i.ba to i32
  %i.bc = icmp slt i32 %.1.i.i, %i.bb
  br i1 %i.bc, label %bb.k, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 56
  %i.be = sext i32 %.1.i.i to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i: ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8            ; 3 uses
  %.not11.i.i = icmp eq ptr %i.bi, null
  br i1 %.not11.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.l, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.bk, %bb.l ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.bl, %bb.l ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp ult i32 %i.bn, %.sroa.3.095.ph     ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.bo, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.bo, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bp = icmp eq ptr %.19.i.i.i.i.i, %i.bl
  br i1 %i.bp, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i

_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = icmp ult i32 %.sroa.3.095.ph, %i.br     ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.bs, ptr %i.bl, ptr %.19.i.i.i.i.i
  %3 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 32
  %spec.select.i.i = select i1 %i.bs, ptr %i.ah, ptr %3
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

bb.m:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i
  %i.bt = load i32, ptr %.018.i.i, align 8
  %i.bu = icmp eq i32 %.sroa.3.095.ph, %i.bt
  %..i.i = select i1 %i.bu, ptr %.018.i.i, ptr %i.ah
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.l, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i, %bb.m
  %.sink.i.i8 = phi ptr [ %i.ah, %bb.l ], [ %..i.i, %bb.m ], [ %spec.select.i.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i ], [ %i.ah, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i ], [ %i.ah, %bb.h ], [ %i.ah, %bb.k ], [ %i.ah, %bb.j ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sink.i.i8, i64 8 ; 8 uses
  %i.bw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bx = xor i64 %i.bw, -1
  %i.by = shl i64 %i.bw, 21
  %i.bz = add i64 %i.by, %i.bx                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 24
  %i.cb = xor i64 %i.ca, %i.bz
  %i.cc = mul i64 %i.cb, 265                      ; 2 uses
  %i.cd = lshr i64 %i.cc, 14
  %i.ce = xor i64 %i.cd, %i.cc
  %i.cf = mul i64 %i.ce, 21                       ; 2 uses
  %i.cg = lshr i64 %i.cf, 28
  %i.ch = xor i64 %i.cg, %i.cf
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = mul i32 %i.ci, -2147483647              ; 2 uses
  %i.ck = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not16.i.i9 = icmp eq ptr %i.ck, null
  br i1 %.not16.i.i9, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i10

.lr.ph.i.i10:                                     ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, %bb.p
  %.018.i.i11 = phi ptr [ %i.cx, %bb.p ], [ %i.ck, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit ] ; 6 uses
  %.01217.i.i12 = phi i32 [ %i.cp, %bb.p ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.018.i.i11, i64 28
  %.sroa.01.0.copyload.i.i13 = load i32, ptr %i.cl, align 4 ; 2 uses
  %.not15.i.i14 = icmp eq i32 %i.cj, %.sroa.01.0.copyload.i.i13
  br i1 %.not15.i.i14, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i, label %.preheader.i.i15

.preheader.i.i15:                                 ; preds = %.lr.ph.i.i10
  %i.cm = xor i32 %.sroa.01.0.copyload.i.i13, %i.cj
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.preheader.i.i15
  %.1.i.i16 = phi i32 [ %i.cp, %bb.n ], [ %.01217.i.i12, %.preheader.i.i15 ] ; 4 uses
  %i.cn = lshr exact i32 -2147483648, %.1.i.i16
  %i.co = and i32 %i.cn, %i.cm
  %.not.i.not.i.i17 = icmp eq i32 %i.co, 0
  %i.cp = add nsw i32 %.1.i.i16, 1                ; 2 uses
  br i1 %.not.i.not.i.i17, label %bb.n, label %bb.o, !llvm.loop !7

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %.018.i.i11, i64 24
  %i.cr = load i8, ptr %i.cq, align 8
  %i.cs = sext i8 %i.cr to i32
  %i.ct = icmp slt i32 %.1.i.i16, %i.cs
  br i1 %i.ct, label %bb.p, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %.018.i.i11, i64 40
  %i.cv = sext i32 %.1.i.i16 to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i19, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i10, !llvm.loop !8

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i: ; preds = %.lr.ph.i.i10
  %i.cy = getelementptr inbounds nuw i8, ptr %.018.i.i11, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8            ; 3 uses
  %.not11.i.i20 = icmp eq ptr %i.cz, null
  br i1 %.not11.i.i20, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 3 uses
  %.not10.i.i.i.i.i21 = icmp eq ptr %i.db, null
  br i1 %.not10.i.i.i.i.i21, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i.i.i.i22

.lr.ph.i.i.i.i.i22:                               ; preds = %bb.q, %.lr.ph.i.i.i.i.i22
  %.012.i.i.i.i.i23 = phi ptr [ %.1.i.i.i.i.i28, %.lr.ph.i.i.i.i.i22 ], [ %i.db, %bb.q ] ; 3 uses
  %.0811.i.i.i.i.i24 = phi ptr [ %.19.i.i.i.i.i25, %.lr.ph.i.i.i.i.i22 ], [ %i.dc, %bb.q ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i23, i64 32
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = icmp ult ptr %i.de, %1                  ; 2 uses
  %.19.i.i.i.i.i25 = select i1 %i.df, ptr %.0811.i.i.i.i.i24, ptr %.012.i.i.i.i.i23 ; 4 uses
  %.1.in.v.i.i.i.i.i26 = select i1 %i.df, i64 24, i64 16
  %.1.in.i.i.i.i.i27 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i23, i64 %.1.in.v.i.i.i.i.i26
  %.1.i.i.i.i.i28 = load ptr, ptr %.1.in.i.i.i.i.i27, align 8 ; 2 uses
  %.not.i.i.i.i.i29 = icmp eq ptr %.1.i.i.i.i.i28, null
  br i1 %.not.i.i.i.i.i29, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i22, !llvm.loop !9

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i22
  %i.dg = icmp eq ptr %.19.i.i.i.i.i25, %i.dc
  br i1 %i.dg, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i

_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i25, i64 32
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = icmp ult ptr %1, %i.di                  ; 2 uses
  %spec.select.i.i.i.i30 = select i1 %i.dj, ptr %i.dc, ptr %.19.i.i.i.i.i25
  %4 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i30, i64 32
  %spec.select.i.i31 = select i1 %i.dj, ptr %i.bv, ptr %4
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit

bb.r:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i
  %i.dk = load ptr, ptr %.018.i.i11, align 8
  %i.dl = icmp eq ptr %1, %i.dk
  %..i.i32 = select i1 %i.dl, ptr %.018.i.i11, ptr %i.bv
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit

_ZN2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EEC2EPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i
  %i.dm = load ptr, ptr %1, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i16, ptr %i.dn, align 8            ; 3 uses
  %i.dp = and i16 %i.do, -2
  %spec.select.i33 = icmp eq i16 %i.dp, 266
  br i1 %spec.select.i33, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EEC2EPNS1_4NodeE.exit
  switch i16 %i.do, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit35 [
    i16 51, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit35.thread
    i16 523, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit35.thread
  ]

_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit35: ; preds = %bb.s
  %i.dq = add i16 %i.do, -22
  %switch.i.i.i34 = icmp ult i16 %i.dq, 13
  br i1 %switch.i.i.i34, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit35.thread, label %bb.t

_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit35.thread: ; preds = %bb.s, %bb.s, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit35
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit35.thread, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit35, %_ZN2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EEC2EPNS1_4NodeE.exit
  %.sink158 = phi i64 [ 152, %_ZN2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EEC2EPNS1_4NodeE.exit ], [ 200, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit35.thread ], [ 248, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit35 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sink158 ; 8 uses
  %i.ds = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.dt = xor i64 %i.ds, -1
  %i.du = shl i64 %i.ds, 21
  %i.dv = add i64 %i.du, %i.dt                    ; 2 uses
  %i.dw = lshr i64 %i.dv, 24
  %i.dx = xor i64 %i.dw, %i.dv
  %i.dy = mul i64 %i.dx, 265                      ; 2 uses
  %i.dz = lshr i64 %i.dy, 14
  %i.ea = xor i64 %i.dz, %i.dy
  %i.eb = mul i64 %i.ea, 21                       ; 2 uses
  %i.ec = lshr i64 %i.eb, 28
  %i.ed = xor i64 %i.ec, %i.eb
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = mul i32 %i.ee, -2147483647              ; 2 uses
  %i.eg = load ptr, ptr %i.dr, align 8            ; 2 uses
  %.not16.i.i36 = icmp eq ptr %i.eg, null
  br i1 %.not16.i.i36, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit, label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %bb.t, %bb.w
  %.018.i.i38 = phi ptr [ %i.et, %bb.w ], [ %i.eg, %bb.t ] ; 6 uses
  %.01217.i.i39 = phi i32 [ %i.el, %bb.w ], [ 0, %bb.t ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.018.i.i38, i64 44
  %.sroa.01.0.copyload.i.i40 = load i32, ptr %i.eh, align 4 ; 2 uses
  %.not15.i.i41 = icmp eq i32 %i.ef, %.sroa.01.0.copyload.i.i40
  br i1 %.not15.i.i41, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8FindHashENSB_9HashValueE.exit.i, label %.preheader.i.i42

.preheader.i.i42:                                 ; preds = %.lr.ph.i.i37
  %i.ei = xor i32 %.sroa.01.0.copyload.i.i40, %i.ef
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.i.i42
  %.1.i.i43 = phi i32 [ %i.el, %bb.u ], [ %.01217.i.i39, %.preheader.i.i42 ] ; 4 uses
  %i.ej = lshr exact i32 -2147483648, %.1.i.i43
  %i.ek = and i32 %i.ej, %i.ei
  %.not.i.not.i.i44 = icmp eq i32 %i.ek, 0
  %i.el = add nsw i32 %.1.i.i43, 1                ; 2 uses
  br i1 %.not.i.not.i.i44, label %bb.u, label %bb.v, !llvm.loop !11

bb.v:                                             ; preds = %bb.u
  %i.em = getelementptr inbounds nuw i8, ptr %.018.i.i38, i64 40
  %i.en = load i8, ptr %i.em, align 8
  %i.eo = sext i8 %i.en to i32
  %i.ep = icmp slt i32 %.1.i.i43, %i.eo
  br i1 %i.ep, label %bb.w, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit

bb.w:                                             ; preds = %bb.v
  %i.eq = getelementptr inbounds nuw i8, ptr %.018.i.i38, i64 56
  %i.er = sext i32 %.1.i.i43 to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8            ; 2 uses
  %.not.i.i46 = icmp eq ptr %i.et, null
  br i1 %.not.i.i46, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit, label %.lr.ph.i.i37, !llvm.loop !12

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8FindHashENSB_9HashValueE.exit.i: ; preds = %.lr.ph.i.i37
  %i.eu = getelementptr inbounds nuw i8, ptr %.018.i.i38, i64 48
  %i.ev = load ptr, ptr %i.eu, align 8            ; 3 uses
  %.not11.i.i47 = icmp eq ptr %i.ev, null
  br i1 %.not11.i.i47, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8FindHashENSB_9HashValueE.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8            ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 3 uses
  %.not10.i.i.i.i.i48 = icmp eq ptr %i.ex, null
  br i1 %.not10.i.i.i.i.i48, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit, label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %bb.x, %.lr.ph.i.i.i.i.i49
  %.012.i.i.i.i.i50 = phi ptr [ %.1.i.i.i.i.i55, %.lr.ph.i.i.i.i.i49 ], [ %i.ex, %bb.x ] ; 3 uses
  %.0811.i.i.i.i.i51 = phi ptr [ %.19.i.i.i.i.i52, %.lr.ph.i.i.i.i.i49 ], [ %i.ey, %bb.x ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i50, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = icmp ult ptr %i.fa, %1                  ; 2 uses
  %.19.i.i.i.i.i52 = select i1 %i.fb, ptr %.0811.i.i.i.i.i51, ptr %.012.i.i.i.i.i50 ; 4 uses
  %.1.in.v.i.i.i.i.i53 = select i1 %i.fb, i64 24, i64 16
  %.1.in.i.i.i.i.i54 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i50, i64 %.1.in.v.i.i.i.i.i53
  %.1.i.i.i.i.i55 = load ptr, ptr %.1.in.i.i.i.i.i54, align 8 ; 2 uses
  %.not.i.i.i.i.i56 = icmp eq ptr %.1.i.i.i.i.i55, null
  br i1 %.not.i.i.i.i.i56, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i49, !llvm.loop !13

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i49
  %i.fc = icmp eq ptr %.19.i.i.i.i.i52, %i.ey
  br i1 %i.fc, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_SB_EEEE4findERSG_.exit.i.i

_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_SB_EEEE4findERSG_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i52, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = icmp ult ptr %1, %i.fe                  ; 2 uses
  %spec.select.i.i.i.i57 = select i1 %i.ff, ptr %i.ey, ptr %.19.i.i.i.i.i52
  %5 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i57, i64 32
  %spec.select.i.i58 = select i1 %i.ff, ptr %i.dr, ptr %5
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit

bb.y:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8FindHashENSB_9HashValueE.exit.i
  %i.fg = load ptr, ptr %.018.i.i38, align 8
  %i.fh = icmp eq ptr %1, %i.fg
  %..i.i59 = select i1 %i.fh, ptr %.018.i.i38, ptr %i.dr
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit: ; preds = %bb.v, %bb.w, %bb.t, %bb.x, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_SB_EEEE4findERSG_.exit.i.i, %bb.y
  %.sink.i.i45 = phi ptr [ %i.dr, %bb.x ], [ %..i.i59, %bb.y ], [ %spec.select.i.i58, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_SB_EEEE4findERSG_.exit.i.i ], [ %i.dr, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i ], [ %i.dr, %bb.t ], [ %i.dr, %bb.w ], [ %i.dr, %bb.v ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.sink.i.i45, i64 8 ; 8 uses
  %i.fj = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.fk = xor i64 %i.fj, -1
  %i.fl = shl i64 %i.fj, 21
  %i.fm = add i64 %i.fl, %i.fk                    ; 2 uses
  %i.fn = lshr i64 %i.fm, 24
  %i.fo = xor i64 %i.fn, %i.fm
  %i.fp = mul i64 %i.fo, 265                      ; 2 uses
  %i.fq = lshr i64 %i.fp, 14
  %i.fr = xor i64 %i.fq, %i.fp
  %i.fs = mul i64 %i.fr, 21                       ; 2 uses
  %i.ft = lshr i64 %i.fs, 28
  %i.fu = xor i64 %i.ft, %i.fs
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = mul i32 %i.fv, -2147483647              ; 2 uses
  %i.fx = load ptr, ptr %i.fi, align 8            ; 2 uses
  %.not16.i.i60 = icmp eq ptr %i.fx, null
  br i1 %.not16.i.i60, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i61

.lr.ph.i.i61:                                     ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit, %bb.ab
  %.018.i.i62 = phi ptr [ %i.gk, %bb.ab ], [ %i.fx, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit ] ; 6 uses
  %.01217.i.i63 = phi i32 [ %i.gc, %bb.ab ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.018.i.i62, i64 28
  %.sroa.01.0.copyload.i.i64 = load i32, ptr %i.fy, align 4 ; 2 uses
  %.not15.i.i65 = icmp eq i32 %i.fw, %.sroa.01.0.copyload.i.i64
  br i1 %.not15.i.i65, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i71, label %.preheader.i.i66

.preheader.i.i66:                                 ; preds = %.lr.ph.i.i61
  %i.fz = xor i32 %.sroa.01.0.copyload.i.i64, %i.fw
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.preheader.i.i66
  %.1.i.i67 = phi i32 [ %i.gc, %bb.z ], [ %.01217.i.i63, %.preheader.i.i66 ] ; 4 uses
  %i.ga = lshr exact i32 -2147483648, %.1.i.i67
  %i.gb = and i32 %i.ga, %i.fz
  %.not.i.not.i.i68 = icmp eq i32 %i.gb, 0
  %i.gc = add nsw i32 %.1.i.i67, 1                ; 2 uses
  br i1 %.not.i.not.i.i68, label %bb.z, label %bb.aa, !llvm.loop !7

bb.aa:                                            ; preds = %bb.z
  %i.gd = getelementptr inbounds nuw i8, ptr %.018.i.i62, i64 24
  %i.ge = load i8, ptr %i.gd, align 8
  %i.gf = sext i8 %i.ge to i32
  %i.gg = icmp slt i32 %.1.i.i67, %i.gf
  br i1 %i.gg, label %bb.ab, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.gh = getelementptr inbounds nuw i8, ptr %.018.i.i62, i64 40
  %i.gi = sext i32 %.1.i.i67 to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.gi
  %i.gk = load ptr, ptr %i.gj, align 8            ; 2 uses
  %.not.i.i70 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i70, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i61, !llvm.loop !8

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i71: ; preds = %.lr.ph.i.i61
  %i.gl = getelementptr inbounds nuw i8, ptr %.018.i.i62, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8            ; 3 uses
  %.not11.i.i72 = icmp eq ptr %i.gm, null
  br i1 %.not11.i.i72, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i71
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8            ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 3 uses
  %.not10.i.i.i.i.i73 = icmp eq ptr %i.go, null
  br i1 %.not10.i.i.i.i.i73, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i.i.i.i74

.lr.ph.i.i.i.i.i74:                               ; preds = %bb.ac, %.lr.ph.i.i.i.i.i74
  %.012.i.i.i.i.i75 = phi ptr [ %.1.i.i.i.i.i80, %.lr.ph.i.i.i.i.i74 ], [ %i.go, %bb.ac ] ; 3 uses
  %.0811.i.i.i.i.i76 = phi ptr [ %.19.i.i.i.i.i77, %.lr.ph.i.i.i.i.i74 ], [ %i.gp, %bb.ac ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i75, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = icmp ult ptr %i.gr, %2                  ; 2 uses
  %.19.i.i.i.i.i77 = select i1 %i.gs, ptr %.0811.i.i.i.i.i76, ptr %.012.i.i.i.i.i75 ; 4 uses
  %.1.in.v.i.i.i.i.i78 = select i1 %i.gs, i64 24, i64 16
  %.1.in.i.i.i.i.i79 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i75, i64 %.1.in.v.i.i.i.i.i78
  %.1.i.i.i.i.i80 = load ptr, ptr %.1.in.i.i.i.i.i79, align 8 ; 2 uses
  %.not.i.i.i.i.i81 = icmp eq ptr %.1.i.i.i.i.i80, null
  br i1 %.not.i.i.i.i.i81, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i82, label %.lr.ph.i.i.i.i.i74, !llvm.loop !9

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i82: ; preds = %.lr.ph.i.i.i.i.i74
  %i.gt = icmp eq ptr %.19.i.i.i.i.i77, %i.gp
  br i1 %i.gt, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i83

_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i83: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i82
  %i.gu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i77, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = icmp ult ptr %2, %i.gv                  ; 2 uses
  %spec.select.i.i.i.i84 = select i1 %i.gw, ptr %i.gp, ptr %.19.i.i.i.i.i77
  %6 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i84, i64 32
  %spec.select.i.i85 = select i1 %i.gw, ptr %i.fi, ptr %6
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit

bb.ad:                                            ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i71
  %i.gx = load ptr, ptr %.018.i.i62, align 8
  %i.gy = icmp eq ptr %2, %i.gx
  %..i.i86 = select i1 %i.gy, ptr %.018.i.i62, ptr %i.fi
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit: ; preds = %bb.p, %bb.o, %bb.ab, %bb.aa, %bb.ad, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i83, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i82, %bb.ac, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit, %bb.r, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %bb.q, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit
  %.sink.i.i18.pn = phi ptr [ %i.fi, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E3GetERKS4_.exit ], [ %i.bv, %bb.q ], [ %..i.i32, %bb.r ], [ %spec.select.i.i31, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i ], [ %i.bv, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i ], [ %i.bv, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit ], [ %i.fi, %bb.ab ], [ %i.fi, %bb.ac ], [ %..i.i86, %bb.ad ], [ %spec.select.i.i85, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i83 ], [ %i.fi, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i82 ], [ %i.fi, %bb.aa ], [ %i.bv, %bb.o ], [ %i.bv, %bb.p ] ; 2 uses
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %.sink.i.i18.pn, i64 16
  %.sroa.3.0 = load i8, ptr %.sroa.3.0.in, align 8
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %.sink.i.i18.pn, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>::iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 4 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !noalias !116
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !116
  store i32 0, ptr %0, align 8, !alias.scope !117
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !alias.scope !117
  store ptr %.sroa.0.0.copyload.i, ptr %i.c, align 8, !alias.scope !117
  store i8 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !117
  br label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iterator5beginEPKNSA_11FocusedTreeES6_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  store i32 0, ptr %0, align 8, !alias.scope !118
  store i64 0, ptr %i.b, align 8, !alias.scope !118
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8, !alias.scope !118
  store i8 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !118
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load i8, ptr %i.g, align 8, !noalias !118
  %i.i = icmp sgt i8 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i ], [ 0, %bb.c ] ; 4 uses
  %.041.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 28
  %i.k = load i32, ptr %i.j, align 4, !noalias !118
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = lshr exact i32 -2147483648, %i.l
  %i.n = and i32 %i.k, %i.m
  %.not.i.i.not.i.i = icmp eq i32 %i.n, 0         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 40
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !noalias !118 ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null              ; 2 uses
  %spec.select.i = select i1 %.not.i.i, ptr null, ptr %.041.i.i
  %.sink.i.i = select i1 %.not.i.i.not.i.i, ptr %i.q, ptr %spec.select.i
  %i.r = select i1 %.not.i.i.not.i.i, i1 true, i1 %.not.i.i
  %.1.i.i = select i1 %i.r, ptr %.041.i.i, ptr %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  store ptr %.sink.i.i, ptr %i.s, align 8, !alias.scope !118
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  %i.u = load i8, ptr %i.t, align 8, !noalias !118
  %i.v = sext i8 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %.lr.ph.i.i, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit, !llvm.loop !4

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.x = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.x, ptr %0, align 8, !alias.scope !118
  br label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i: ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit, %bb.c
  %i.y = phi ptr [ %i.a, %bb.c ], [ %.1.i.i, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !alias.scope !118
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !118 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i.preheader, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !118
  store ptr %i.ad, ptr %i.b, align 8, !alias.scope !118
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i.preheader

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i.preheader: ; preds = %bb.d, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i: ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i.preheader, %bb.e
  %i.ae = phi ptr [ %i.am, %bb.e ], [ %i.y, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !119
  %.not.i2.i = icmp eq ptr %i.ag, null            ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ah = load ptr, ptr %i.b, align 8, !alias.scope !118 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.sroa.7.0.in.i = select i1 %.not.i2.i, ptr %.sroa.7.0..sroa_idx.i, ptr %.sroa.7.8..sroa_idx.i
  %.sroa.5.0.in.i = select i1 %.not.i2.i, ptr %.sroa.5.0..sroa_idx.i, ptr %i.ai
  %.sroa.5.0.i = load ptr, ptr %.sroa.5.0.in.i, align 8
  %.sroa.7.0.i = load i8, ptr %.sroa.7.0.in.i, align 8
  %i.aj = icmp ne ptr %.sroa.5.0.i, %.sroa.0.0.copyload
  %i.ak = icmp ne i8 %.sroa.7.0.i, %.sroa.2.0.copyload
  %.not3.i.i = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %.not3.i.i, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iterator5beginEPKNSA_11FocusedTreeES6_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i
  %i.al = tail call noundef nonnull align 8 dereferenceable(296) ptr @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(296) %0) ; 0 uses
  %i.am = load ptr, ptr %i.z, align 8, !alias.scope !118 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iterator5beginEPKNSA_11FocusedTreeES6_.exit, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i, !llvm.loop !6

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iterator5beginEPKNSA_11FocusedTreeES6_.exit: ; preds = %bb.e, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(296) ptr @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(296) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted32 = load ptr, ptr %i.a, align 8
  %.promoted33 = load i32, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.promoted = load ptr, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %bb.a
  %i.f = phi ptr [ %i.az, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit ], [ %.promoted, %bb.a ] ; 2 uses
  %.promoted34 = phi i32 [ %.promoted35, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit ], [ %.promoted33, %bb.a ] ; 2 uses
  %i.g = phi ptr [ %.0.lcssa.i, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit ], [ %.promoted32, %bb.a ] ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.not10 = icmp eq ptr %i.i, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.f) #16 ; 3 uses
  store ptr %i.j, ptr %i.b, align 8
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi ptr [ %i.j, %bb.d ], [ %i.f, %bb.c ]
  %i.o = icmp eq i32 %.promoted34, 0
  br i1 %i.o, label %.loopexit.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.q = sext i32 %.promoted34 to i64
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %.critedge
  %indvars.iv = phi i64 [ %i.q, %.preheader ], [ %indvars.iv.next, %.critedge ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.r = trunc nsw i64 %indvars.iv.next to i32    ; 2 uses
  store i32 %i.r, ptr %0, align 8
  %i.s = load i32, ptr %i.p, align 4
  %i.t = lshr exact i32 -2147483648, %i.r
  %i.u = and i32 %i.s, %i.t
  %.not.i.not = icmp eq i32 %i.u, 0
  br i1 %.not.i.not, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.w = load ptr, ptr %i.v, align 8              ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.critedge, label %bb.h

.critedge:                                        ; preds = %bb.f, %bb.g
  %i.y = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.y, label %.loopexit.sink.split, label %bb.f, !llvm.loop !5

end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E15double_iteratorppEv:bb.a
  %.sroa.09.0.i.i = load ptr, ptr %.sroa.09.0.in.i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !noalias !294 ; 2 uses
  %.not.i6.i.i = icmp eq ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.221.0.copyload, i64 32
  %.sroa.0.0.in.i.i = select i1 %.not.i6.i.i, ptr %.sroa.322.0.copyload, ptr %i.u
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8
  %i.v = icmp eq ptr %.sroa.09.0.i.i, %.sroa.0.0.i.i
  br i1 %i.v, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E15double_iteratorC2ENSB_8iteratorESD_.exit, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorltERKSC_.exit.i

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratoreqERKSC_.exit.i: ; preds = %bb.e
  %.mux.i.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %.mux.i.i, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E15double_iteratorC2ENSB_8iteratorESD_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratoreqERKSC_.exit.i
  br i1 %i.k, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorltERKSC_.exit.thread9.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.l, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E15double_iteratorC2ENSB_8iteratorESD_.exit, label %..thread7_crit_edge.i

..thread7_crit_edge.i:                            ; preds = %bb.h
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload, i64 44
  %.sroa.01.0.copyload.i.pre.i = load i32, ptr %.phi.trans.insert.i, align 4
  %.phi.trans.insert12.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 44
  %.pre.i = load i32, ptr %.phi.trans.insert12.i, align 4
  br label %.thread7.i

.thread7.i:                                       ; preds = %..thread7_crit_edge.i, %bb.f
  %i.w = phi i32 [ %.pre.i, %..thread7_crit_edge.i ], [ %i.o, %bb.f ] ; 2 uses
  %.sroa.01.0.copyload.i.i = phi i32 [ %.sroa.01.0.copyload.i.pre.i, %..thread7_crit_edge.i ], [ %.sroa.0.0.copyload.i.i, %bb.f ] ; 2 uses
  %i.x = icmp eq i32 %i.w, %.sroa.01.0.copyload.i.i
  br i1 %i.x, label %.thread7.i._ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorltERKSC_.exit.i_crit_edge, label %.split.i

.thread7.i._ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorltERKSC_.exit.i_crit_edge: ; preds = %.thread7.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !noalias !295
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload, i64 48
  %.pre25 = load ptr, ptr %.phi.trans.insert24, align 8, !noalias !296
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorltERKSC_.exit.i

.split.i:                                         ; preds = %.thread7.i
  %i.y = icmp ult i32 %i.w, %.sroa.01.0.copyload.i.i
  br i1 %i.y, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E15double_iteratorC2ENSB_8iteratorESD_.exit, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorltERKSC_.exit.thread9.i

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorltERKSC_.exit.i: ; preds = %.thread7.i._ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorltERKSC_.exit.i_crit_edge, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratordeEv.exit.i.i
  %i.z = phi ptr [ %.pre25, %.thread7.i._ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorltERKSC_.exit.i_crit_edge ], [ %i.t, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratordeEv.exit.i.i ]
  %i.aa = phi ptr [ %.pre, %.thread7.i._ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorltERKSC_.exit.i_crit_edge ], [ %i.q, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratordeEv.exit.i.i ]
  %.not.i.i3.i = icmp eq ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 32
  %.sroa.010.0.in.i.i = select i1 %.not.i.i3.i, ptr %.sroa.3.0.copyload, ptr %i.ab
  %.sroa.010.0.i.i = load ptr, ptr %.sroa.010.0.in.i.i, align 8
  %.not.i7.i.i = icmp eq ptr %i.z, null
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.221.0.copyload, i64 32
  %.sroa.0.0.in.i4.i = select i1 %.not.i7.i.i, ptr %.sroa.322.0.copyload, ptr %i.ac
  %.sroa.0.0.i5.i = load ptr, ptr %.sroa.0.0.in.i4.i, align 8
  %i.ad = icmp ult ptr %.sroa.010.0.i.i, %.sroa.0.0.i5.i
  br i1 %i.ad, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E15double_iteratorC2ENSB_8iteratorESD_.exit, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorltERKSC_.exit.thread9.i

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorltERKSC_.exit.thread9.i: ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorltERKSC_.exit.i, %.split.i, %bb.g
  br label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E15double_iteratorC2ENSB_8iteratorESD_.exit

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E15double_iteratorC2ENSB_8iteratorESD_.exit: ; preds = %bb.h, %.split.i, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorltERKSC_.exit.i, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratordeEv.exit.i.i, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratoreqERKSC_.exit.i, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorltERKSC_.exit.thread9.i
  %.sroa.14.0 = phi i8 [ 1, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratordeEv.exit.i.i ], [ 1, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorltERKSC_.exit.thread9.i ], [ 1, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratoreqERKSC_.exit.i ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorltERKSC_.exit.i ], [ 0, %.split.i ], [ 0, %bb.h ]
  %.sroa.119.0 = phi i8 [ 1, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratordeEv.exit.i.i ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorltERKSC_.exit.thread9.i ], [ 1, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratoreqERKSC_.exit.i ], [ 1, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8iteratorltERKSC_.exit.i ], [ 1, %.split.i ], [ 1, %bb.h ]
  store i64 %.sroa.020.0.copyload, ptr %i.j, align 8
  store ptr %.sroa.221.0.copyload, ptr %.sroa.221.0..sroa_idx, align 8
  store ptr %.sroa.322.0.copyload, ptr %.sroa.322.0..sroa_idx, align 8
  store i8 %.sroa.119.0, ptr %i.a, align 8
  store i8 %.sroa.14.0, ptr %i.e, align 1
  ret ptr %0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9Word32SarENS1_9ShiftKindE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #1

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E6ModifyIZNSB_3SetES4_SA_EUlPSA_E_EEvS4_T_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<v8::internal::compiler::Node *, std::pair<v8::internal::compiler::Node *const, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>>, std::_Select1st<std::pair<v8::internal::compiler::Node *const, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>>>, std::less<v8::internal::compiler::Node *>, v8::internal::ZoneAllocator<std::pair<v8::internal::compiler::Node *const, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>>>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"struct.std::array.13", align 8    ; 6 uses
  %5 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 6 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = xor i64 %i.b, -1
  %i.d = shl i64 %i.b, 21
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  %i.f = lshr i64 %i.e, 24
  %i.g = xor i64 %i.f, %i.e
  %i.h = mul i64 %i.g, 265                        ; 2 uses
  %i.i = lshr i64 %i.h, 14
  %i.j = xor i64 %i.i, %i.h
  %i.k = mul i64 %i.j, 21                         ; 2 uses
  %i.l = lshr i64 %i.k, 28
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = mul i32 %i.n, -2147483647                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.p = load ptr, ptr %0, align 8                ; 2 uses
  %.not44.i = icmp eq ptr %i.p, null
  br i1 %.not44.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E15GetFocusedValueEPKNSB_11FocusedTreeERKS4_.exit, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %bb.a, %bb.f
  %.046.i = phi ptr [ %i.aw, %bb.f ], [ %i.p, %bb.a ] ; 13 uses
  %.03245.i = phi i32 [ %i.ax, %bb.f ], [ 0, %bb.a ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.046.i, i64 44
  %.sroa.01.0.copyload.i = load i32, ptr %i.q, align 4 ; 2 uses
  %.not36.i = icmp eq i32 %i.o, %.sroa.01.0.copyload.i
  %i.r = getelementptr inbounds nuw i8, ptr %.046.i, i64 40 ; 2 uses
  br i1 %.not36.i, label %.critedge.preheader.i, label %bb.b

.critedge.preheader.i:                            ; preds = %.lr.ph48.i
  %i.s = load i8, ptr %i.r, align 8               ; 3 uses
  %i.t = sext i8 %i.s to i32
  %i.u = icmp slt i32 %.03245.i, %i.t
  br i1 %i.u, label %.lr.ph52.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8FindHashENSB_9HashValueEPSt5arrayIPKNSB_11FocusedTreeELm32EEPi.exit

.lr.ph52.i:                                       ; preds = %.critedge.preheader.i
  %i.v = sext i32 %.03245.i to i64                ; 2 uses
  %i.w = sext i8 %i.s to i64
  %i.x = shl nsw i64 %i.v, 3                      ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.x
  %scevgep69 = getelementptr i8, ptr %.046.i, i64 56
  %scevgep70 = getelementptr i8, ptr %scevgep69, i64 %i.x
  %i.y = sub nsw i64 %i.w, %i.v
  %i.z = shl nsw i64 %i.y, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %scevgep70, i64 %i.z, i1 false)
  %i.aa = sext i8 %i.s to i32
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8FindHashENSB_9HashValueEPSt5arrayIPKNSB_11FocusedTreeELm32EEPi.exit

bb.b:                                             ; preds = %.lr.ph48.i
  %i.ab = xor i32 %.sroa.01.0.copyload.i, %i.o    ; 2 uses
  %i.ac = lshr exact i32 -2147483648, %.03245.i
  %i.ad = and i32 %i.ab, %i.ac
  %.not.i.not42.i = icmp eq i32 %i.ad, 0
  %.pre = load i8, ptr %i.r, align 8              ; 2 uses
  br i1 %.not.i.not42.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %.046.i, i64 56
  %i.af = sext i32 %.03245.i to i64
  %i.ag = sext i8 %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.af, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.ah = icmp slt i64 %indvars.iv.i, %i.ag
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = phi ptr [ %i.aj, %bb.d ], [ null, %bb.c ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  store ptr %i.ak, ptr %i.al, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.an = lshr exact i32 -2147483648, %i.am
  %i.ao = and i32 %i.an, %i.ab
  %.not.i.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.not.i, label %bb.c, label %._crit_edge.i, !llvm.loop !297

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.1.lcssa.i = phi i32 [ %.03245.i, %bb.b ], [ %i.am, %bb.e ] ; 4 uses
  %i.ap = sext i32 %.1.lcssa.i to i64             ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ap
  store ptr %.046.i, ptr %i.aq, align 8
  %i.ar = sext i8 %.pre to i32
  %i.as = icmp slt i32 %.1.lcssa.i, %i.ar
  br i1 %i.as, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i
  %i.at = add nuw nsw i32 %.1.lcssa.i, 1
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E15GetFocusedValueEPKNSB_11FocusedTreeERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.au = getelementptr inbounds nuw i8, ptr %.046.i, i64 56
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ap
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = add nuw nsw i32 %.1.lcssa.i, 1          ; 2 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E15GetFocusedValueEPKNSB_11FocusedTreeERKS4_.exit, label %.lr.ph48.i, !llvm.loop !298

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8FindHashENSB_9HashValueEPSt5arrayIPKNSB_11FocusedTreeELm32EEPi.exit: ; preds = %.lr.ph52.i, %.critedge.preheader.i
  %.3.i = phi i32 [ %.03245.i, %.critedge.preheader.i ], [ %i.aa, %.lr.ph52.i ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.046.i, i64 48
  %i.az = load ptr, ptr %i.ay, align 8            ; 3 uses
  %.not11.i = icmp eq ptr %i.az, null
  br i1 %.not11.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8FindHashENSB_9HashValueEPSt5arrayIPKNSB_11FocusedTreeELm32EEPi.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not10.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E15GetFocusedValueEPKNSB_11FocusedTreeERKS4_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bb, %bb.g ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bc, %bb.g ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp ult ptr %i.be, %1                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.bf, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.bf, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !13

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bg = icmp eq ptr %.19.i.i.i.i, %i.bc
  br i1 %i.bg, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E15GetFocusedValueEPKNSB_11FocusedTreeERKS4_.exit, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_SB_EEEE4findERSG_.exit.i

_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_SB_EEEE4findERSG_.exit.i: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp ult ptr %1, %i.bi                  ; 2 uses
  %spec.select.i.i.i = select i1 %i.bj, ptr %i.bc, ptr %.19.i.i.i.i
  %6 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 32
  %spec.select.i = select i1 %i.bj, ptr %0, ptr %6
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E15GetFocusedValueEPKNSB_11FocusedTreeERKS4_.exit

bb.h:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E8FindHashENSB_9HashValueEPSt5arrayIPKNSB_11FocusedTreeELm32EEPi.exit
  %i.bk = load ptr, ptr %.046.i, align 8
  %i.bl = icmp eq ptr %1, %i.bk
  %..i = select i1 %i.bl, ptr %.046.i, ptr %0
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E15GetFocusedValueEPKNSB_11FocusedTreeERKS4_.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E15GetFocusedValueEPKNSB_11FocusedTreeERKS4_.exit: ; preds = %bb.f, %.thread.i, %bb.a, %bb.g, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_SB_EEEE4findERSG_.exit.i, %bb.h
  %.not.i3352 = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ false, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_SB_EEEE4findERSG_.exit.i ], [ false, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i ], [ true, %bb.a ], [ true, %.thread.i ], [ true, %bb.f ]
  %.3.i51 = phi i32 [ %.3.i, %bb.g ], [ %.3.i, %bb.h ], [ %.3.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_SB_EEEE4findERSG_.exit.i ], [ %.3.i, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i ], [ 0, %bb.a ], [ %i.at, %.thread.i ], [ %i.ax, %bb.f ] ; 4 uses
  %.039.i50 = phi ptr [ %.046.i, %bb.g ], [ %.046.i, %bb.h ], [ %.046.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_SB_EEEE4findERSG_.exit.i ], [ %.046.i, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i ], [ null, %bb.a ], [ null, %.thread.i ], [ null, %bb.f ] ; 5 uses
  %.sink.i = phi ptr [ %0, %bb.g ], [ %..i, %bb.h ], [ %spec.select.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_SB_EEEE4findERSG_.exit.i ], [ %0, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i ], [ %0, %bb.a ], [ %0, %.thread.i ], [ %0, %bb.f ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = load ptr, ptr %5, align 8
  %.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not, label %bb.v, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E15GetFocusedValueEPKNSB_11FocusedTreeERKS4_.exit
  br i1 %.not.i3352, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.039.i50, i64 48 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %.039.i50, align 8
  %i.bt = icmp eq ptr %i.bs, %1
  br i1 %i.bt, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8            ; 2 uses
  %i.ca = sub i64 %i.bx, %i.bz
  %i.cb = icmp ult i64 %i.ca, 56
  br i1 %i.cb, label %bb.m, label %_ZN2v88internal4Zone3NewINS0_7ZoneMapIPNS0_8compiler4NodeENS4_13PersistentMapIS6_NS4_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEEESt4lessIS6_EEEJRPS1_EEEPT_DpOT0_.exit, !prof !30

bb.m:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bv, i64 noundef 56) #14
  %.pre.i.i = load i64, ptr %i.by, align 8
  br label %_ZN2v88internal4Zone3NewINS0_7ZoneMapIPNS0_8compiler4NodeENS4_13PersistentMapIS6_NS4_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEEESt4lessIS6_EEEJRPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_7ZoneMapIPNS0_8compiler4NodeENS4_13PersistentMapIS6_NS4_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEEESt4lessIS6_EEEJRPS1_EEEPT_DpOT0_.exit: ; preds = %bb.l, %bb.m
  %i.cc = phi i64 [ %.pre.i.i, %bb.m ], [ %i.bz, %bb.l ] ; 2 uses
  %i.cd = inttoptr i64 %i.cc to ptr               ; 15 uses
  %i.ce = add i64 %i.cc, 56
  store i64 %i.ce, ptr %i.by, align 8
  %i.cf = load ptr, ptr %i.bu, align 8
  %i.cg = ptrtoint ptr %i.cf to i64
  store i64 %i.cg, ptr %i.cd, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 6 uses
  store i32 0, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 3 uses
  store ptr null, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 32 ; 3 uses
  store ptr %i.ch, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 40 ; 3 uses
  store ptr %i.ch, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 48 ; 3 uses
  store i64 0, ptr %i.cl, align 8
  %i.cm = load ptr, ptr %i.bp, align 8            ; 4 uses
  %.not30 = icmp eq ptr %i.cm, null
  br i1 %.not30, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapIPNS0_8compiler4NodeENS4_13PersistentMapIS6_NS4_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEEESt4lessIS6_EEEJRPS1_EEEPT_DpOT0_.exit
  %.not.i.i.i = icmp eq ptr %i.cm, %i.cd
  br i1 %.not.i.i.i, label %_ZN2v88internal7ZoneMapIPNS0_8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEESt4lessIS4_EEaSERKSE_.exit, label %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE20_Reuse_or_alloc_nodeC2ERSL_.exit.i.i.i

_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE20_Reuse_or_alloc_nodeC2ERSL_.exit.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr null, ptr %3, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.cd, ptr %i.co, align 8
  store ptr null, ptr %i.cn, align 8
  store ptr null, ptr %i.ci, align 8
  store ptr %i.ch, ptr %i.cj, align 8
  store ptr %i.ch, ptr %i.ck, align 8
  store i64 0, ptr %i.cl, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not5.i.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE20_Reuse_or_alloc_nodeC2ERSL_.exit.i.i.i
  %i.cr = call noundef ptr @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE7_M_copyILb0ENSL_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISE_ESQ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi ptr [ %i.cr, %bb.o ], [ %i.ct, %bb.p ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.p, !llvm.loop !16

_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.p
  store ptr %.0.i.i.i.i.i.i, ptr %i.cj, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.cr, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.cv, %bb.q ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE7_M_copyILb0ENSL_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISE_ERKSL_RT0_.exit.i.i.i, label %bb.q, !llvm.loop !17

_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE7_M_copyILb0ENSL_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISE_ERKSL_RT0_.exit.i.i.i: ; preds = %bb.q
  store ptr %.0.i.i7.i.i.i.i, ptr %i.ck, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.cx = load i64, ptr %i.cw, align 8
  store i64 %i.cx, ptr %i.cl, align 8
  store ptr %i.cr, ptr %i.ci, align 8
  %.pre.i.i.i = load ptr, ptr %i.co, align 8
  %.pre6.i.i.i = load ptr, ptr %3, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE7_M_copyILb0ENSL_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISE_ERKSL_RT0_.exit.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE20_Reuse_or_alloc_nodeC2ERSL_.exit.i.i.i
  %i.cy = phi ptr [ %.pre6.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE7_M_copyILb0ENSL_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISE_ERKSL_RT0_.exit.i.i.i ], [ null, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE20_Reuse_or_alloc_nodeC2ERSL_.exit.i.i.i ]
  %i.cz = phi ptr [ %.pre.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE7_M_copyILb0ENSL_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISE_ERKSL_RT0_.exit.i.i.i ], [ %i.cd, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE20_Reuse_or_alloc_nodeC2ERSL_.exit.i.i.i ]
  call void @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(56) %i.cz, ptr noundef %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %_ZN2v88internal7ZoneMapIPNS0_8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEESt4lessIS4_EEaSERKSE_.exit

bb.s:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapIPNS0_8compiler4NodeENS4_13PersistentMapIS6_NS4_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEEESt4lessIS6_EEEJRPS1_EEEPT_DpOT0_.exit
  %i.da = tail call noundef i64 @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE5eraseERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %.039.i50) ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.039.i50, i64 8
  %i.dc = tail call { ptr, i8 } @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE17_M_emplace_uniqueIJRS6_RKSD_EEES5_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %.039.i50, ptr noundef nonnull align 8 dereferenceable(32) %i.db) ; 0 uses
  br label %_ZN2v88internal7ZoneMapIPNS0_8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEESt4lessIS4_EEaSERKSE_.exit

_ZN2v88internal7ZoneMapIPNS0_8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEESt4lessIS4_EEaSERKSE_.exit: ; preds = %bb.r, %bb.n, %bb.s
  %i.dd = call noundef i64 @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE5eraseERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.de = call { ptr, i8 } @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE17_M_emplace_uniqueIJRS4_RSD_EEES5_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal7ZoneMapIPNS0_8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEESt4lessIS4_EEaSERKSE_.exit, %bb.k, %bb.i
  %.027 = phi ptr [ null, %bb.k ], [ %i.cd, %_ZN2v88internal7ZoneMapIPNS0_8compiler4NodeENS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEESt4lessIS4_EEaSERKSE_.exit ], [ null, %bb.i ]
  %i.df = call i32 @llvm.smax.i32(i32 %.3.i51, i32 1)
  %.sroa.speculated = add nsw i32 %i.df, -1
  %i.dg = zext nneg i32 %.sroa.speculated to i64
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dj = load ptr, ptr %i.di, align 8            ; 3 uses
  %i.dk = add nuw nsw i64 %i.dh, 64               ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 3 uses
  %i.do = load i64, ptr %i.dn, align 8            ; 2 uses
  %i.dp = sub i64 %i.dm, %i.do
  %i.dq = icmp ugt i64 %i.dk, %i.dp
  br i1 %i.dq, label %bb.u, label %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIPNS3_4NodeENS4_IS6_NS3_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEEESB_E11FocusedTreeEEEPvm.exit, !prof !30

bb.u:                                             ; preds = %bb.t
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dj, i64 noundef %i.dk) #14
  %.pre.i = load i64, ptr %i.dn, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIPNS3_4NodeENS4_IS6_NS3_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEEESB_E11FocusedTreeEEEPvm.exit

_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIPNS3_4NodeENS4_IS6_NS3_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEEESB_E11FocusedTreeEEEPvm.exit: ; preds = %bb.t, %bb.u
  %i.dr = phi i64 [ %.pre.i, %bb.u ], [ %i.do, %bb.t ] ; 2 uses
  %i.ds = inttoptr i64 %i.dr to ptr               ; 7 uses
  %i.dt = add i64 %i.dr, %i.dk
  store i64 %i.dt, ptr %i.dn, align 8
  %i.du = load ptr, ptr %i.a, align 8
  store ptr %i.du, ptr %i.ds, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.dx = trunc i32 %.3.i51 to i8
  store i8 %i.dx, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 44
  store i32 %i.o, ptr %i.dy, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  store ptr %.027, ptr %i.dz, align 8
  %.ptr = getelementptr inbounds nuw i8, ptr %i.ds, i64 56 ; 2 uses
  store ptr null, ptr %.ptr, align 8
  %i.ea = icmp sgt i32 %.3.i51, 0
  br i1 %i.ea, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIPNS3_4NodeENS4_IS6_NS3_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEEESB_E11FocusedTreeEEEPvm.exit
  %i.eb = zext nneg i32 %.3.i51 to i64
  %i.ec = shl nuw nsw i64 %i.eb, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.ptr, ptr nonnull align 8 %4, i64 %i.ec, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIPNS3_4NodeENS4_IS6_NS3_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEEESB_E11FocusedTreeEEEPvm.exit
  store ptr %i.ds, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E15GetFocusedValueEPKNSB_11FocusedTreeERKS4_.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE17_M_emplace_uniqueIJRS4_RSD_EEES5_ISt17_Rb_tree_iteratorISE_EbEDpOT_:bb.a

_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE10_Auto_nodeC2IJRS4_RSD_EEERSL_DpOT_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 4 uses
  %i.j = add i64 %i.h, 72
  store i64 %i.j, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = load ptr, ptr %1, align 8                ; 4 uses
  store ptr %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.02022.i = load ptr, ptr %i.n, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE10_Auto_nodeC2IJRS4_RSD_EEERSL_DpOT_.exit, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE10_Auto_nodeC2IJRS4_RSD_EEERSL_DpOT_.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp ult ptr %i.l, %i.q                  ; 2 uses
  %.in.v.i = select i1 %i.r, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !18

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.r, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE10_Auto_nodeC2IJRS4_RSD_EEERSL_DpOT_.exit
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.o, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE10_Auto_nodeC2IJRS4_RSD_EEERSL_DpOT_.exit ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %.019.lcssa29.i, %i.t
  br i1 %i.u, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.v = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #16 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.w = phi ptr [ %.pre, %bb.c ], [ %i.q, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.v, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %i.x = icmp ult ptr %i.w, %i.l
  br i1 %i.x, label %select.unfold, label %bb.f

select.unfold:                                    ; preds = %bb.d, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.d ] ; 3 uses
  %i.y = icmp eq ptr %.sroa.4.0.i.ph, %i.o
  br i1 %i.y, label %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSO_E.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp ult ptr %i.l, %i.aa
  br label %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSO_E.exit

_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSO_E.exit: ; preds = %select.unfold, %bb.e
  %i.ac = phi i1 [ %i.ab, %bb.e ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ac, ptr noundef nonnull %i.i, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #14
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSO_E.exit
  %.sroa.08.0 = phi ptr [ %i.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSO_E.exit ], [ %.sroa.05.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_13PersistentMapIS4_NS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS4_EEEEESt10_Select1stISE_ESt4lessIS4_ENS1_13ZoneAllocatorISE_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSO_E.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.08.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE6ModifyIZNSA_3SetES4_S6_EUlPS6_E_EEvS4_T_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<v8::internal::compiler::Node *, std::pair<v8::internal::compiler::Node *const, v8::internal::compiler::CsaLoadElimination::FieldInfo>, std::_Select1st<std::pair<v8::internal::compiler::Node *const, v8::internal::compiler::CsaLoadElimination::FieldInfo>>, std::less<v8::internal::compiler::Node *>, v8::internal::ZoneAllocator<std::pair<v8::internal::compiler::Node *const, v8::internal::compiler::CsaLoadElimination::FieldInfo>>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"struct.std::array.9", align 8     ; 6 uses
  %5 = alloca %"struct.v8::internal::compiler::CsaLoadElimination::FieldInfo", align 8 ; 8 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = xor i64 %i.b, -1
  %i.d = shl i64 %i.b, 21
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  %i.f = lshr i64 %i.e, 24
  %i.g = xor i64 %i.f, %i.e
  %i.h = mul i64 %i.g, 265                        ; 2 uses
  %i.i = lshr i64 %i.h, 14
  %i.j = xor i64 %i.i, %i.h
  %i.k = mul i64 %i.j, 21                         ; 2 uses
  %i.l = lshr i64 %i.k, 28
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = mul i32 %i.n, -2147483647                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.p = load ptr, ptr %0, align 8                ; 2 uses
  %.not44.i = icmp eq ptr %i.p, null
  br i1 %.not44.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE15GetFocusedValueEPKNSA_11FocusedTreeERKS4_.exit, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %bb.a, %bb.f
  %.046.i = phi ptr [ %i.aw, %bb.f ], [ %i.p, %bb.a ] ; 13 uses
  %.03245.i = phi i32 [ %i.ax, %bb.f ], [ 0, %bb.a ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.046.i, i64 28
  %.sroa.01.0.copyload.i = load i32, ptr %i.q, align 4 ; 2 uses
  %.not36.i = icmp eq i32 %i.o, %.sroa.01.0.copyload.i
  %i.r = getelementptr inbounds nuw i8, ptr %.046.i, i64 24 ; 2 uses
  br i1 %.not36.i, label %.critedge.preheader.i, label %bb.b

.critedge.preheader.i:                            ; preds = %.lr.ph48.i
  %i.s = load i8, ptr %i.r, align 8               ; 3 uses
  %i.t = sext i8 %i.s to i32
  %i.u = icmp slt i32 %.03245.i, %i.t
  br i1 %i.u, label %.lr.ph52.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueEPSt5arrayIPKNSA_11FocusedTreeELm32EEPi.exit

.lr.ph52.i:                                       ; preds = %.critedge.preheader.i
  %i.v = sext i32 %.03245.i to i64                ; 2 uses
  %i.w = sext i8 %i.s to i64
  %i.x = shl nsw i64 %i.v, 3                      ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.x
  %scevgep72 = getelementptr i8, ptr %.046.i, i64 40
  %scevgep73 = getelementptr i8, ptr %scevgep72, i64 %i.x
  %i.y = sub nsw i64 %i.w, %i.v
  %i.z = shl nsw i64 %i.y, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %scevgep73, i64 %i.z, i1 false)
  %i.aa = sext i8 %i.s to i32
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueEPSt5arrayIPKNSA_11FocusedTreeELm32EEPi.exit

bb.b:                                             ; preds = %.lr.ph48.i
  %i.ab = xor i32 %.sroa.01.0.copyload.i, %i.o    ; 2 uses
  %i.ac = lshr exact i32 -2147483648, %.03245.i
  %i.ad = and i32 %i.ab, %i.ac
  %.not.i.not42.i = icmp eq i32 %i.ad, 0
  %.pre = load i8, ptr %i.r, align 8              ; 2 uses
  br i1 %.not.i.not42.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %.046.i, i64 40
  %i.af = sext i32 %.03245.i to i64
  %i.ag = sext i8 %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.af, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.ah = icmp slt i64 %indvars.iv.i, %i.ag
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = phi ptr [ %i.aj, %bb.d ], [ null, %bb.c ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  store ptr %i.ak, ptr %i.al, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.an = lshr exact i32 -2147483648, %i.am
  %i.ao = and i32 %i.an, %i.ab
  %.not.i.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.not.i, label %bb.c, label %._crit_edge.i, !llvm.loop !306

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.1.lcssa.i = phi i32 [ %.03245.i, %bb.b ], [ %i.am, %bb.e ] ; 4 uses
  %i.ap = sext i32 %.1.lcssa.i to i64             ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ap
  store ptr %.046.i, ptr %i.aq, align 8
  %i.ar = sext i8 %.pre to i32
  %i.as = icmp slt i32 %.1.lcssa.i, %i.ar
  br i1 %i.as, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i
  %i.at = add nuw nsw i32 %.1.lcssa.i, 1
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE15GetFocusedValueEPKNSA_11FocusedTreeERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.au = getelementptr inbounds nuw i8, ptr %.046.i, i64 40
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ap
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = add nuw nsw i32 %.1.lcssa.i, 1          ; 2 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE15GetFocusedValueEPKNSA_11FocusedTreeERKS4_.exit, label %.lr.ph48.i, !llvm.loop !307

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueEPSt5arrayIPKNSA_11FocusedTreeELm32EEPi.exit: ; preds = %.lr.ph52.i, %.critedge.preheader.i
  %.3.i = phi i32 [ %.03245.i, %.critedge.preheader.i ], [ %i.aa, %.lr.ph52.i ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.046.i, i64 32
  %i.az = load ptr, ptr %i.ay, align 8            ; 3 uses
  %.not11.i = icmp eq ptr %i.az, null
  br i1 %.not11.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueEPSt5arrayIPKNSA_11FocusedTreeELm32EEPi.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not10.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE15GetFocusedValueEPKNSA_11FocusedTreeERKS4_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bb, %bb.g ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bc, %bb.g ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp ult ptr %i.be, %1                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.bf, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.bf, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bg = icmp eq ptr %.19.i.i.i.i, %i.bc
  br i1 %i.bg, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE15GetFocusedValueEPKNSA_11FocusedTreeERKS4_.exit, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i

_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp ult ptr %1, %i.bi                  ; 2 uses
  %spec.select.i.i.i = select i1 %i.bj, ptr %i.bc, ptr %.19.i.i.i.i
  %6 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 32
  %spec.select.i = select i1 %i.bj, ptr %0, ptr %6
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE15GetFocusedValueEPKNSA_11FocusedTreeERKS4_.exit

bb.h:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueEPSt5arrayIPKNSA_11FocusedTreeELm32EEPi.exit
  %i.bk = load ptr, ptr %.046.i, align 8
  %i.bl = icmp eq ptr %1, %i.bk
  %..i = select i1 %i.bl, ptr %.046.i, ptr %0
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE15GetFocusedValueEPKNSA_11FocusedTreeERKS4_.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE15GetFocusedValueEPKNSA_11FocusedTreeERKS4_.exit: ; preds = %bb.f, %.thread.i, %bb.a, %bb.g, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i, %bb.h
  %.not.i3455 = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ false, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i ], [ false, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i ], [ true, %bb.a ], [ true, %.thread.i ], [ true, %bb.f ]
  %.3.i54 = phi i32 [ %.3.i, %bb.g ], [ %.3.i, %bb.h ], [ %.3.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i ], [ %.3.i, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i ], [ 0, %bb.a ], [ %i.at, %.thread.i ], [ %i.ax, %bb.f ] ; 4 uses
  %.039.i53 = phi ptr [ %.046.i, %bb.g ], [ %.046.i, %bb.h ], [ %.046.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i ], [ %.046.i, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i ], [ null, %bb.a ], [ null, %.thread.i ], [ null, %bb.f ] ; 5 uses
  %.sink.i = phi ptr [ %0, %bb.g ], [ %..i, %bb.h ], [ %spec.select.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i ], [ %0, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i ], [ %0, %bb.a ], [ %0, %.thread.i ], [ %0, %bb.f ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(9) %2, i64 9, i1 false)
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = load ptr, ptr %5, align 8
  %i.bp = icmp ne ptr %i.bn, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %.sink.i, i64 16
  %i.br = load i8, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bt = load i8, ptr %i.bs, align 8
  %i.bu = icmp ne i8 %i.br, %i.bt
  %.not3.i.i = select i1 %i.bp, i1 true, i1 %i.bu
  br i1 %.not3.i.i, label %bb.i, label %bb.v

bb.i:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE15GetFocusedValueEPKNSA_11FocusedTreeERKS4_.exit
  br i1 %.not.i3455, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.039.i53, i64 32 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.by = load ptr, ptr %.039.i53, align 8
  %i.bz = icmp eq ptr %i.by, %1
  br i1 %i.bz, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8            ; 2 uses
  %i.cg = sub i64 %i.cd, %i.cf
  %i.ch = icmp ult i64 %i.cg, 56
  br i1 %i.ch, label %bb.m, label %_ZN2v88internal4Zone3NewINS0_7ZoneMapIPNS0_8compiler4NodeENS4_18CsaLoadElimination9FieldInfoESt4lessIS6_EEEJRPS1_EEEPT_DpOT0_.exit, !prof !30

bb.m:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cb, i64 noundef 56) #14
  %.pre.i.i = load i64, ptr %i.ce, align 8
  br label %_ZN2v88internal4Zone3NewINS0_7ZoneMapIPNS0_8compiler4NodeENS4_18CsaLoadElimination9FieldInfoESt4lessIS6_EEEJRPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_7ZoneMapIPNS0_8compiler4NodeENS4_18CsaLoadElimination9FieldInfoESt4lessIS6_EEEJRPS1_EEEPT_DpOT0_.exit: ; preds = %bb.l, %bb.m
  %i.ci = phi i64 [ %.pre.i.i, %bb.m ], [ %i.cf, %bb.l ] ; 2 uses
  %i.cj = inttoptr i64 %i.ci to ptr               ; 15 uses
  %i.ck = add i64 %i.ci, 56
  store i64 %i.ck, ptr %i.ce, align 8
  %i.cl = load ptr, ptr %i.ca, align 8
  %i.cm = ptrtoint ptr %i.cl to i64
  store i64 %i.cm, ptr %i.cj, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 6 uses
  store i32 0, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 3 uses
  store ptr null, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 32 ; 3 uses
  store ptr %i.cn, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 40 ; 3 uses
  store ptr %i.cn, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 48 ; 3 uses
  store i64 0, ptr %i.cr, align 8
  %i.cs = load ptr, ptr %i.bv, align 8            ; 4 uses
  %.not31 = icmp eq ptr %i.cs, null
  br i1 %.not31, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapIPNS0_8compiler4NodeENS4_18CsaLoadElimination9FieldInfoESt4lessIS6_EEEJRPS1_EEEPT_DpOT0_.exit
  %.not.i.i.i = icmp eq ptr %i.cs, %i.cj
  br i1 %.not.i.i.i, label %_ZN2v88internal7ZoneMapIPNS0_8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_EEaSERKS9_.exit, label %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i

_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr null, ptr %3, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.cj, ptr %i.cu, align 8
  store ptr null, ptr %i.ct, align 8
  store ptr null, ptr %i.co, align 8
  store ptr %i.cn, ptr %i.cp, align 8
  store ptr %i.cn, ptr %i.cq, align 8
  store i64 0, ptr %i.cr, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not5.i.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i
  %i.cx = call noundef ptr @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.cj, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi ptr [ %i.cx, %bb.o ], [ %i.cz, %bb.p ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.p, !llvm.loop !16

_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.p
  store ptr %.0.i.i.i.i.i.i, ptr %i.cp, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.cx, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.db, %bb.q ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ERKSG_RT0_.exit.i.i.i, label %bb.q, !llvm.loop !17

_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ERKSG_RT0_.exit.i.i.i: ; preds = %bb.q
  store ptr %.0.i.i7.i.i.i.i, ptr %i.cq, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.dd = load i64, ptr %i.dc, align 8
  store i64 %i.dd, ptr %i.cr, align 8
  store ptr %i.cx, ptr %i.co, align 8
  %.pre.i.i.i = load ptr, ptr %i.cu, align 8
  %.pre6.i.i.i = load ptr, ptr %3, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ERKSG_RT0_.exit.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i
  %i.de = phi ptr [ %.pre6.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ERKSG_RT0_.exit.i.i.i ], [ null, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i ]
  %i.df = phi ptr [ %.pre.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ERKSG_RT0_.exit.i.i.i ], [ %i.cj, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i ]
  call void @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(56) %i.df, ptr noundef %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %_ZN2v88internal7ZoneMapIPNS0_8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_EEaSERKS9_.exit

bb.s:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapIPNS0_8compiler4NodeENS4_18CsaLoadElimination9FieldInfoESt4lessIS6_EEEJRPS1_EEEPT_DpOT0_.exit
  %i.dg = tail call noundef i64 @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE5eraseERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %.039.i53) ; 0 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.039.i53, i64 8
  %i.di = tail call { ptr, i8 } @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE17_M_emplace_uniqueIJRS6_RKS8_EEES5_ISt17_Rb_tree_iteratorIS9_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %.039.i53, ptr noundef nonnull align 8 dereferenceable(9) %i.dh) ; 0 uses
  br label %_ZN2v88internal7ZoneMapIPNS0_8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_EEaSERKS9_.exit

_ZN2v88internal7ZoneMapIPNS0_8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_EEaSERKS9_.exit: ; preds = %bb.r, %bb.n, %bb.s
  %i.dj = call noundef i64 @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE5eraseERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.dk = call { ptr, i8 } @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE17_M_emplace_uniqueIJRS4_RS8_EEES5_ISt17_Rb_tree_iteratorIS9_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(9) %5) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal7ZoneMapIPNS0_8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_EEaSERKS9_.exit, %bb.k, %bb.i
  %.0 = phi ptr [ null, %bb.k ], [ %i.cj, %_ZN2v88internal7ZoneMapIPNS0_8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_EEaSERKS9_.exit ], [ null, %bb.i ]
  %i.dl = call i32 @llvm.smax.i32(i32 %.3.i54, i32 1)
  %.sroa.speculated = add nsw i32 %i.dl, -1
  %i.dm = zext nneg i32 %.sroa.speculated to i64
  %i.dn = shl nuw nsw i64 %i.dm, 3
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8            ; 3 uses
  %i.dq = add nuw nsw i64 %i.dn, 48               ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 3 uses
  %i.du = load i64, ptr %i.dt, align 8            ; 2 uses
  %i.dv = sub i64 %i.ds, %i.du
  %i.dw = icmp ugt i64 %i.dq, %i.dv
  br i1 %i.dw, label %bb.u, label %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIPNS3_4NodeENS3_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEE11FocusedTreeEEEPvm.exit, !prof !30

bb.u:                                             ; preds = %bb.t
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dp, i64 noundef %i.dq) #14
  %.pre.i = load i64, ptr %i.dt, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIPNS3_4NodeENS3_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEE11FocusedTreeEEEPvm.exit

_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIPNS3_4NodeENS3_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEE11FocusedTreeEEEPvm.exit: ; preds = %bb.t, %bb.u
  %i.dx = phi i64 [ %.pre.i, %bb.u ], [ %i.du, %bb.t ] ; 2 uses
  %i.dy = inttoptr i64 %i.dx to ptr               ; 7 uses
  %i.dz = add i64 %i.dx, %i.dq
  store i64 %i.dz, ptr %i.dt, align 8
  %i.ea = load ptr, ptr %i.a, align 8
  store ptr %i.ea, ptr %i.dy, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ed = trunc i32 %.3.i54 to i8
  store i8 %i.ed, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 28
  store i32 %i.o, ptr %i.ee, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  store ptr %.0, ptr %i.ef, align 8
  %.ptr = getelementptr inbounds nuw i8, ptr %i.dy, i64 40 ; 2 uses
  store ptr null, ptr %.ptr, align 8
  %i.eg = icmp sgt i32 %.3.i54, 0
  br i1 %i.eg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIPNS3_4NodeENS3_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEE11FocusedTreeEEEPvm.exit
  %i.eh = zext nneg i32 %.3.i54 to i64
  %i.ei = shl nuw nsw i64 %i.eh, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.ptr, ptr nonnull align 8 %4, i64 %i.ei, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIPNS3_4NodeENS3_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEE11FocusedTreeEEEPvm.exit
end_hunk_4
begin_hunk_5_@_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE17_M_emplace_uniqueIJRS4_RS8_EEES5_ISt17_Rb_tree_iteratorIS9_EbEDpOT_:bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef 56) #14
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8
  br label %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_nodeC2IJRS4_RS8_EEERSG_DpOT_.exit

_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_nodeC2IJRS4_RS8_EEERSG_DpOT_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 4 uses
  %i.j = add i64 %i.h, 56
  store i64 %i.j, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = load ptr, ptr %1, align 8                ; 4 uses
  store ptr %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.02022.i = load ptr, ptr %i.n, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_nodeC2IJRS4_RS8_EEERSG_DpOT_.exit, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_nodeC2IJRS4_RS8_EEERSG_DpOT_.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp ult ptr %i.l, %i.q                  ; 2 uses
  %.in.v.i = select i1 %i.r, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !19

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.r, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_nodeC2IJRS4_RS8_EEERSG_DpOT_.exit
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.o, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_nodeC2IJRS4_RS8_EEERSG_DpOT_.exit ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %.019.lcssa29.i, %i.t
  br i1 %i.u, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.v = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #16 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.w = phi ptr [ %.pre, %bb.c ], [ %i.q, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.v, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %i.x = icmp ult ptr %i.w, %i.l
  br i1 %i.x, label %select.unfold, label %bb.f

select.unfold:                                    ; preds = %bb.d, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.d ] ; 3 uses
  %i.y = icmp eq ptr %.sroa.4.0.i.ph, %i.o
  br i1 %i.y, label %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSJ_E.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp ult ptr %i.l, %i.aa
  br label %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSJ_E.exit

_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSJ_E.exit: ; preds = %select.unfold, %bb.e
  %i.ac = phi i1 [ %i.ab, %bb.e ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ac, ptr noundef nonnull %i.i, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #14
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSJ_E.exit
  %.sroa.08.0 = phi ptr [ %i.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSJ_E.exit ], [ %.sroa.05.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSJ_E.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.08.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE6ModifyIZNSC_3SetEjSA_EUlPSA_E_EEvjT_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>>, std::_Select1st<std::pair<const unsigned int, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>>>, std::less<unsigned int>, v8::internal::ZoneAllocator<std::pair<const unsigned int, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>>>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"struct.std::array", align 8       ; 6 uses
  %5 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 6 uses
  store i32 %1, ptr %i.a, align 4
  %i.b = xor i32 %1, -1
  %i.c = shl i32 %1, 15
  %i.d = add i32 %i.c, %i.b                       ; 2 uses
  %i.e = lshr i32 %i.d, 12
  %i.f = xor i32 %i.e, %i.d
  %i.g = mul i32 %i.f, 5                          ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = xor i32 %i.h, %i.g
  %i.j = mul i32 %i.i, 2057                       ; 2 uses
  %i.k = lshr i32 %i.j, 16
  %i.l = xor i32 %i.k, %i.j                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %.not44.i = icmp eq ptr %i.m, null
  br i1 %.not44.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE15GetFocusedValueEPKNSC_11FocusedTreeERKj.exit, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %bb.a, %bb.f
  %.046.i = phi ptr [ %i.at, %bb.f ], [ %i.m, %bb.a ] ; 13 uses
  %.03245.i = phi i32 [ %i.au, %bb.f ], [ 0, %bb.a ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.046.i, i64 44
  %.sroa.01.0.copyload.i = load i32, ptr %i.n, align 4 ; 2 uses
  %.not36.i = icmp eq i32 %i.l, %.sroa.01.0.copyload.i
  %i.o = getelementptr inbounds nuw i8, ptr %.046.i, i64 40 ; 2 uses
  br i1 %.not36.i, label %.critedge.preheader.i, label %bb.b

.critedge.preheader.i:                            ; preds = %.lr.ph48.i
  %i.p = load i8, ptr %i.o, align 8               ; 3 uses
  %i.q = sext i8 %i.p to i32
  %i.r = icmp slt i32 %.03245.i, %i.q
  br i1 %i.r, label %.lr.ph52.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueEPSt5arrayIPKNSC_11FocusedTreeELm32EEPi.exit

.lr.ph52.i:                                       ; preds = %.critedge.preheader.i
  %i.s = sext i32 %.03245.i to i64                ; 2 uses
  %i.t = sext i8 %i.p to i64
  %i.u = shl nsw i64 %i.s, 3                      ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.u
  %scevgep69 = getelementptr i8, ptr %.046.i, i64 56
  %scevgep70 = getelementptr i8, ptr %scevgep69, i64 %i.u
  %i.v = sub nsw i64 %i.t, %i.s
  %i.w = shl nsw i64 %i.v, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %scevgep70, i64 %i.w, i1 false)
  %i.x = sext i8 %i.p to i32
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueEPSt5arrayIPKNSC_11FocusedTreeELm32EEPi.exit

bb.b:                                             ; preds = %.lr.ph48.i
  %i.y = xor i32 %.sroa.01.0.copyload.i, %i.l     ; 2 uses
  %i.z = lshr exact i32 -2147483648, %.03245.i
  %i.aa = and i32 %i.y, %i.z
  %.not.i.not42.i = icmp eq i32 %i.aa, 0
  %.pre = load i8, ptr %i.o, align 8              ; 2 uses
  br i1 %.not.i.not42.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.046.i, i64 56
  %i.ac = sext i32 %.03245.i to i64
  %i.ad = sext i8 %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.ae = icmp slt i64 %indvars.iv.i, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ag = load ptr, ptr %i.af, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = phi ptr [ %i.ag, %bb.d ], [ null, %bb.c ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  store ptr %i.ah, ptr %i.ai, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.ak = lshr exact i32 -2147483648, %i.aj
  %i.al = and i32 %i.ak, %i.y
  %.not.i.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.not.i, label %bb.c, label %._crit_edge.i, !llvm.loop !315

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.1.lcssa.i = phi i32 [ %.03245.i, %bb.b ], [ %i.aj, %bb.e ] ; 4 uses
  %i.am = sext i32 %.1.lcssa.i to i64             ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.am
  store ptr %.046.i, ptr %i.an, align 8
  %i.ao = sext i8 %.pre to i32
  %i.ap = icmp slt i32 %.1.lcssa.i, %i.ao
  br i1 %i.ap, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i
  %i.aq = add nuw nsw i32 %.1.lcssa.i, 1
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE15GetFocusedValueEPKNSC_11FocusedTreeERKj.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.046.i, i64 56
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.am
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = add nuw nsw i32 %.1.lcssa.i, 1          ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE15GetFocusedValueEPKNSC_11FocusedTreeERKj.exit, label %.lr.ph48.i, !llvm.loop !316

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueEPSt5arrayIPKNSC_11FocusedTreeELm32EEPi.exit: ; preds = %.lr.ph52.i, %.critedge.preheader.i
  %.3.i = phi i32 [ %.03245.i, %.critedge.preheader.i ], [ %i.x, %.lr.ph52.i ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.046.i, i64 48
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %.not11.i = icmp eq ptr %i.aw, null
  br i1 %.not11.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueEPSt5arrayIPKNSC_11FocusedTreeELm32EEPi.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not10.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE15GetFocusedValueEPKNSC_11FocusedTreeERKj.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ay, %bb.g ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.az, %bb.g ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp ult i32 %i.bb, %1                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.bc, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.bc, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bd = icmp eq ptr %.19.i.i.i.i, %i.az
  br i1 %i.bd, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE15GetFocusedValueEPKNSC_11FocusedTreeERKj.exit, label %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i

_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = icmp ult i32 %1, %i.bf                  ; 2 uses
  %spec.select.i.i.i = select i1 %i.bg, ptr %i.az, ptr %.19.i.i.i.i
  %6 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 32
  %spec.select.i = select i1 %i.bg, ptr %0, ptr %6
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE15GetFocusedValueEPKNSC_11FocusedTreeERKj.exit

bb.h:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueEPSt5arrayIPKNSC_11FocusedTreeELm32EEPi.exit
  %i.bh = load i32, ptr %.046.i, align 8
  %i.bi = icmp eq i32 %1, %i.bh
  %..i = select i1 %i.bi, ptr %.046.i, ptr %0
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE15GetFocusedValueEPKNSC_11FocusedTreeERKj.exit

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE15GetFocusedValueEPKNSC_11FocusedTreeERKj.exit: ; preds = %bb.f, %.thread.i, %bb.a, %bb.g, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i, %bb.h
  %.not.i3352 = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ false, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i ], [ false, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ], [ true, %bb.a ], [ true, %.thread.i ], [ true, %bb.f ]
  %.3.i51 = phi i32 [ %.3.i, %bb.g ], [ %.3.i, %bb.h ], [ %.3.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i ], [ %.3.i, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ], [ 0, %bb.a ], [ %i.aq, %.thread.i ], [ %i.au, %bb.f ] ; 4 uses
  %.039.i50 = phi ptr [ %.046.i, %bb.g ], [ %.046.i, %bb.h ], [ %.046.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i ], [ %.046.i, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ], [ null, %bb.a ], [ null, %.thread.i ], [ null, %bb.f ] ; 5 uses
  %.sink.i = phi ptr [ %0, %bb.g ], [ %..i, %bb.h ], [ %spec.select.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i ], [ %0, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ], [ %0, %bb.a ], [ %0, %.thread.i ], [ %0, %bb.f ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %5, align 8
  %.not = icmp eq ptr %i.bk, %i.bl
  br i1 %.not, label %bb.v, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE15GetFocusedValueEPKNSC_11FocusedTreeERKj.exit
  br i1 %.not.i3352, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.039.i50, i64 48 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bp = load i32, ptr %.039.i50, align 8
  %i.bq = icmp eq i32 %i.bp, %1
  br i1 %i.bq, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8            ; 2 uses
  %i.bx = sub i64 %i.bu, %i.bw
  %i.by = icmp ult i64 %i.bx, 56
  br i1 %i.by, label %bb.m, label %_ZN2v88internal4Zone3NewINS0_7ZoneMapIjNS0_8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS_4base4hashIS7_EEEESt4lessIjEEEJRPS1_EEEPT_DpOT0_.exit, !prof !30

bb.m:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, i64 noundef 56) #14
  %.pre.i.i = load i64, ptr %i.bv, align 8
  br label %_ZN2v88internal4Zone3NewINS0_7ZoneMapIjNS0_8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS_4base4hashIS7_EEEESt4lessIjEEEJRPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_7ZoneMapIjNS0_8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS_4base4hashIS7_EEEESt4lessIjEEEJRPS1_EEEPT_DpOT0_.exit: ; preds = %bb.l, %bb.m
  %i.bz = phi i64 [ %.pre.i.i, %bb.m ], [ %i.bw, %bb.l ] ; 2 uses
  %i.ca = inttoptr i64 %i.bz to ptr               ; 15 uses
  %i.cb = add i64 %i.bz, 56
  store i64 %i.cb, ptr %i.bv, align 8
  %i.cc = load ptr, ptr %i.br, align 8
  %i.cd = ptrtoint ptr %i.cc to i64
  store i64 %i.cd, ptr %i.ca, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 6 uses
  store i32 0, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 3 uses
  store ptr null, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 3 uses
  store ptr %i.ce, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 40 ; 3 uses
  store ptr %i.ce, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 48 ; 3 uses
  store i64 0, ptr %i.ci, align 8
  %i.cj = load ptr, ptr %i.bm, align 8            ; 4 uses
  %.not30 = icmp eq ptr %i.cj, null
  br i1 %.not30, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapIjNS0_8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS_4base4hashIS7_EEEESt4lessIjEEEJRPS1_EEEPT_DpOT0_.exit
  %.not.i.i.i = icmp eq ptr %i.cj, %i.ca
  br i1 %.not.i.i.i, label %_ZN2v88internal7ZoneMapIjNS0_8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS_4base4hashIS5_EEEESt4lessIjEEaSERKSE_.exit, label %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE20_Reuse_or_alloc_nodeC2ERSL_.exit.i.i.i

_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE20_Reuse_or_alloc_nodeC2ERSL_.exit.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr null, ptr %3, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.ca, ptr %i.cl, align 8
  store ptr null, ptr %i.ck, align 8
  store ptr null, ptr %i.cf, align 8
  store ptr %i.ce, ptr %i.cg, align 8
  store ptr %i.ce, ptr %i.ch, align 8
  store i64 0, ptr %i.ci, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not5.i.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE20_Reuse_or_alloc_nodeC2ERSL_.exit.i.i.i
  %i.co = call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE7_M_copyILb0ENSL_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISE_ESQ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ca, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi ptr [ %i.co, %bb.o ], [ %i.cq, %bb.p ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.p, !llvm.loop !16

_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.p
  store ptr %.0.i.i.i.i.i.i, ptr %i.cg, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.co, %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.cs, %bb.q ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE7_M_copyILb0ENSL_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISE_ERKSL_RT0_.exit.i.i.i, label %bb.q, !llvm.loop !17

_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE7_M_copyILb0ENSL_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISE_ERKSL_RT0_.exit.i.i.i: ; preds = %bb.q
  store ptr %.0.i.i7.i.i.i.i, ptr %i.ch, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cu = load i64, ptr %i.ct, align 8
  store i64 %i.cu, ptr %i.ci, align 8
  store ptr %i.co, ptr %i.cf, align 8
  %.pre.i.i.i = load ptr, ptr %i.cl, align 8
  %.pre6.i.i.i = load ptr, ptr %3, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE7_M_copyILb0ENSL_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISE_ERKSL_RT0_.exit.i.i.i, %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE20_Reuse_or_alloc_nodeC2ERSL_.exit.i.i.i
  %i.cv = phi ptr [ %.pre6.i.i.i, %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE7_M_copyILb0ENSL_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISE_ERKSL_RT0_.exit.i.i.i ], [ null, %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE20_Reuse_or_alloc_nodeC2ERSL_.exit.i.i.i ]
  %i.cw = phi ptr [ %.pre.i.i.i, %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE7_M_copyILb0ENSL_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISE_ERKSL_RT0_.exit.i.i.i ], [ %i.ca, %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE20_Reuse_or_alloc_nodeC2ERSL_.exit.i.i.i ]
  call void @_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(56) %i.cw, ptr noundef %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %_ZN2v88internal7ZoneMapIjNS0_8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS_4base4hashIS5_EEEESt4lessIjEEaSERKSE_.exit

bb.s:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapIjNS0_8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS_4base4hashIS7_EEEESt4lessIjEEEJRPS1_EEEPT_DpOT0_.exit
  %i.cx = tail call noundef i64 @_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE5eraseERS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %.039.i50) ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.039.i50, i64 8
  %i.cz = tail call { ptr, i8 } @_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE17_M_emplace_uniqueIJRS1_RKSD_EEES0_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %.039.i50, ptr noundef nonnull align 8 dereferenceable(32) %i.cy) ; 0 uses
  br label %_ZN2v88internal7ZoneMapIjNS0_8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS_4base4hashIS5_EEEESt4lessIjEEaSERKSE_.exit

_ZN2v88internal7ZoneMapIjNS0_8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS_4base4hashIS5_EEEESt4lessIjEEaSERKSE_.exit: ; preds = %bb.r, %bb.n, %bb.s
  %i.da = call noundef i64 @_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE5eraseERS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.db = call { ptr, i8 } @_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE17_M_emplace_uniqueIJRjRSD_EEES0_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal7ZoneMapIjNS0_8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS_4base4hashIS5_EEEESt4lessIjEEaSERKSE_.exit, %bb.k, %bb.i
  %.027 = phi ptr [ null, %bb.k ], [ %i.ca, %_ZN2v88internal7ZoneMapIjNS0_8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS_4base4hashIS5_EEEESt4lessIjEEaSERKSE_.exit ], [ null, %bb.i ]
  %i.dc = call i32 @llvm.smax.i32(i32 %.3.i51, i32 1)
  %.sroa.speculated = add nsw i32 %i.dc, -1
  %i.dd = zext nneg i32 %.sroa.speculated to i64
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dg = load ptr, ptr %i.df, align 8            ; 3 uses
  %i.dh = add nuw nsw i64 %i.de, 64               ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 3 uses
  %i.dl = load i64, ptr %i.dk, align 8            ; 2 uses
  %i.dm = sub i64 %i.dj, %i.dl
  %i.dn = icmp ugt i64 %i.dh, %i.dm
  br i1 %i.dn, label %bb.u, label %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIjNS4_IPNS3_4NodeENS3_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEEENSA_IjEEE11FocusedTreeEEEPvm.exit, !prof !30

bb.u:                                             ; preds = %bb.t
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dg, i64 noundef %i.dh) #14
  %.pre.i = load i64, ptr %i.dk, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIjNS4_IPNS3_4NodeENS3_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEEENSA_IjEEE11FocusedTreeEEEPvm.exit

_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIjNS4_IPNS3_4NodeENS3_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEEENSA_IjEEE11FocusedTreeEEEPvm.exit: ; preds = %bb.t, %bb.u
  %i.do = phi i64 [ %.pre.i, %bb.u ], [ %i.dl, %bb.t ] ; 2 uses
  %i.dp = inttoptr i64 %i.do to ptr               ; 7 uses
  %i.dq = add i64 %i.do, %i.dh
  store i64 %i.dq, ptr %i.dk, align 8
  %i.dr = load i32, ptr %i.a, align 4
  store i32 %i.dr, ptr %i.dp, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.du = trunc i32 %.3.i51 to i8
  store i8 %i.du, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 44
  store i32 %i.l, ptr %i.dv, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  store ptr %.027, ptr %i.dw, align 8
  %.ptr = getelementptr inbounds nuw i8, ptr %i.dp, i64 56 ; 2 uses
  store ptr null, ptr %.ptr, align 8
  %i.dx = icmp sgt i32 %.3.i51, 0
  br i1 %i.dx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIjNS4_IPNS3_4NodeENS3_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEEENSA_IjEEE11FocusedTreeEEEPvm.exit
  %i.dy = zext nneg i32 %.3.i51 to i64
  %i.dz = shl nuw nsw i64 %i.dy, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.ptr, ptr nonnull align 8 %4, i64 %i.dz, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIjNS4_IPNS3_4NodeENS3_18CsaLoadElimination9FieldInfoENS_4base4hashIS6_EEEENSA_IjEEE11FocusedTreeEEEPvm.exit
  store ptr %i.dp, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE15GetFocusedValueEPKNSC_11FocusedTreeERKj.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
end_hunk_5
