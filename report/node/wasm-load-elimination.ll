Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-load-elimination?download=true
inline.NumInlined: 1521
inline.NumDeleted: 781
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal8compiler19WasmLoadElimination15ReduceOtherNodeEPNS1_4NodeE:bb.a
bb.a:
  %2 = alloca %"class.v8::internal::compiler::WasmLoadElimination::HalfState", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c, !prof !25

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.a) #13
  %i.k = load ptr, ptr %1, align 8
  %i.l = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.k) #13
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 251658240
  %.not.i.i.i = icmp eq i32 %i.o, 251658240
  %i.p = ptrtoint ptr %1 to i64
  %i.q = add i64 %i.p, 32
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = add i64 %i.t, 16
  %i.v = inttoptr i64 %i.u to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi ptr [ %i.v, %bb.e ], [ %i.r, %bb.d ]
  %i.w = zext i1 %i.j to i32
  %i.x = zext i1 %i.l to i32
  %i.y = add i32 %i.i, %i.w
  %i.z = add i32 %i.y, %i.x
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = and i32 %i.ae, 16777215
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = icmp ugt i64 %i.ao, %i.ag
  br i1 %i.ap, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ag
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit
  %i.at = load ptr, ptr %1, align 8               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i16, ptr %i.au, align 8
  %i.aw = icmp eq i16 %i.av, 50
  br i1 %i.aw, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 18
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.ax, align 2
  %i.ay = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not = icmp eq i8 %i.ay, 0
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ba = load ptr, ptr %i.az, align 8            ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = sub i64 %i.bd, %i.bf
  %i.bh = icmp ult i64 %i.bg, 184
  br i1 %i.bh, label %bb.i, label %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit, !prof !24

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, i64 noundef 184) #13
  %.pre.i.i = load i64, ptr %i.be, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit: ; preds = %bb.h, %bb.i
  %i.bi = phi i64 [ %.pre.i.i, %bb.i ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bj = inttoptr i64 %i.bi to ptr               ; 9 uses
  %i.bk = add i64 %i.bi, 184
  store i64 %i.bk, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %i.bb, i64 88, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.ba, ptr %i.bl, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr %i.ba, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  store ptr %i.ba, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr %i.ba, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  store ptr %i.ba, ptr %.sroa.11.0..sroa_idx, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bm, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.g, %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit
  %i.bn = phi ptr [ %i.bj, %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit ], [ %i.ar, %bb.g ], [ %i.ar, %bb.f ]
  %i.bo = tail call ptr @_ZN2v88internal8compiler19WasmLoadElimination11UpdateStateEPNS1_4NodeEPKNS2_13AbstractStateE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.bn)
  br label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit, %bb.a, %bb.j
  %.sroa.0.1 = phi ptr [ %i.bo, %bb.j ], [ null, %bb.a ], [ null, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit ], [ null, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit ]
  ret ptr %.sroa.0.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @_ZNK2v88internal8compiler19WasmLoadElimination9HalfState11LookupFieldEiPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
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
  %i.l = xor i32 %i.k, %i.j                       ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not16.i.i = icmp eq ptr %i.m, null
  br i1 %.not16.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.018.i.i = phi ptr [ %i.z, %bb.d ], [ %i.m, %bb.a ] ; 6 uses
  %.01217.i.i = phi i32 [ %i.r, %bb.d ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 36
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.n, align 4 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.l, %.sroa.01.0.copyload.i.i
  br i1 %.not15.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %i.o = xor i32 %.sroa.01.0.copyload.i.i, %i.l
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.r, %bb.b ], [ %.01217.i.i, %.preheader.i.i ] ; 4 uses
  %i.p = lshr exact i32 -2147483648, %.1.i.i
  %i.q = and i32 %i.p, %i.o
  %.not.i.not.i.i = icmp eq i32 %i.q, 0
  %i.r = add nsw i32 %.1.i.i, 1                   ; 2 uses
  br i1 %.not.i.not.i.i, label %bb.b, label %bb.c, !llvm.loop !3

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 32
  %i.t = load i8, ptr %i.s, align 8
  %i.u = sext i8 %i.t to i32
  %i.v = icmp slt i32 %.1.i.i, %i.u
  br i1 %i.v, label %bb.d, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 48
  %i.x = sext i32 %.1.i.i to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %.lr.ph.i.i, !llvm.loop !4

_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i: ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %.not11.i.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.e ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ae, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp slt i32 %i.ag, %1                  ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ah, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ah, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = icmp eq ptr %.19.i.i.i.i.i, %i.ae
  br i1 %i.ai, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i

_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp slt i32 %1, %i.ak                  ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.al, ptr %i.ae, ptr %.19.i.i.i.i.i
  %3 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 32
  %spec.select.i.i = select i1 %i.al, ptr %i.a, ptr %3
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit

bb.f:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i
  %i.am = load i32, ptr %.018.i.i, align 8
  %i.an = icmp eq i32 %1, %i.am
  %..i.i = select i1 %i.an, ptr %.018.i.i, ptr %i.a
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit

_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit: ; preds = %bb.c, %bb.d, %bb.a, %bb.e, %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i, %bb.f
  %.sink.i.i = phi ptr [ %i.a, %bb.e ], [ %..i.i, %bb.f ], [ %spec.select.i.i, %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i ], [ %i.a, %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i ], [ %i.a, %bb.a ], [ %i.a, %bb.d ], [ %i.a, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8 ; 8 uses
  %i.ap = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.aq = xor i64 %i.ap, -1
  %i.ar = shl i64 %i.ap, 21
  %i.as = add i64 %i.ar, %i.aq                    ; 2 uses
  %i.at = lshr i64 %i.as, 24
  %i.au = xor i64 %i.at, %i.as
  %i.av = mul i64 %i.au, 265                      ; 2 uses
  %i.aw = lshr i64 %i.av, 14
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = mul i64 %i.ax, 21                       ; 2 uses
  %i.az = lshr i64 %i.ay, 28
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = mul i32 %i.bb, -2147483647              ; 2 uses
  %i.bd = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not16.i.i1 = icmp eq ptr %i.bd, null
  br i1 %.not16.i.i1, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, %bb.i
  %.018.i.i3 = phi ptr [ %i.bq, %bb.i ], [ %i.bd, %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit ] ; 6 uses
  %.01217.i.i4 = phi i32 [ %i.bi, %bb.i ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit ]
  %i.be = getelementptr inbounds nuw i8, ptr %.018.i.i3, i64 20
  %.sroa.01.0.copyload.i.i5 = load i32, ptr %i.be, align 4 ; 2 uses
  %.not15.i.i6 = icmp eq i32 %i.bc, %.sroa.01.0.copyload.i.i5
  br i1 %.not15.i.i6, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i, label %.preheader.i.i7

.preheader.i.i7:                                  ; preds = %.lr.ph.i.i2
  %i.bf = xor i32 %.sroa.01.0.copyload.i.i5, %i.bc
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i.i7
  %.1.i.i8 = phi i32 [ %i.bi, %bb.g ], [ %.01217.i.i4, %.preheader.i.i7 ] ; 4 uses
  %i.bg = lshr exact i32 -2147483648, %.1.i.i8
  %i.bh = and i32 %i.bg, %i.bf
  %.not.i.not.i.i9 = icmp eq i32 %i.bh, 0
  %i.bi = add nsw i32 %.1.i.i8, 1                 ; 2 uses
  br i1 %.not.i.not.i.i9, label %bb.g, label %bb.h, !llvm.loop !6

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %.018.i.i3, i64 16
  %i.bk = load i8, ptr %i.bj, align 8
  %i.bl = sext i8 %i.bk to i32
  %i.bm = icmp slt i32 %.1.i.i8, %i.bl
  br i1 %i.bm, label %bb.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %.018.i.i3, i64 32
  %i.bo = sext i32 %.1.i.i8 to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i11, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i2, !llvm.loop !7

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i: ; preds = %.lr.ph.i.i2
  %i.br = getelementptr inbounds nuw i8, ptr %.018.i.i3, i64 24
  %i.bs = load ptr, ptr %i.br, align 8            ; 3 uses
  %.not11.i.i12 = icmp eq ptr %i.bs, null
  br i1 %.not11.i.i12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 3 uses
  %.not10.i.i.i.i.i13 = icmp eq ptr %i.bu, null
  br i1 %.not10.i.i.i.i.i13, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i.i.i.i14

.lr.ph.i.i.i.i.i14:                               ; preds = %bb.j, %.lr.ph.i.i.i.i.i14
  %.012.i.i.i.i.i15 = phi ptr [ %.1.i.i.i.i.i20, %.lr.ph.i.i.i.i.i14 ], [ %i.bu, %bb.j ] ; 3 uses
  %.0811.i.i.i.i.i16 = phi ptr [ %.19.i.i.i.i.i17, %.lr.ph.i.i.i.i.i14 ], [ %i.bv, %bb.j ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i15, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = icmp ult ptr %i.bx, %2                  ; 2 uses
  %.19.i.i.i.i.i17 = select i1 %i.by, ptr %.0811.i.i.i.i.i16, ptr %.012.i.i.i.i.i15 ; 4 uses
  %.1.in.v.i.i.i.i.i18 = select i1 %i.by, i64 24, i64 16
  %.1.in.i.i.i.i.i19 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i15, i64 %.1.in.v.i.i.i.i.i18
  %.1.i.i.i.i.i20 = load ptr, ptr %.1.in.i.i.i.i.i19, align 8 ; 2 uses
  %.not.i.i.i.i.i21 = icmp eq ptr %.1.i.i.i.i.i20, null
  br i1 %.not.i.i.i.i.i21, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i14, !llvm.loop !8

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i14
  %i.bz = icmp eq ptr %.19.i.i.i.i.i17, %i.bv
  br i1 %i.bz, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i

_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i17, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = icmp ult ptr %2, %i.cb                  ; 2 uses
  %spec.select.i.i.i.i22 = select i1 %i.cc, ptr %i.bv, ptr %.19.i.i.i.i.i17
  %4 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i22, i64 32
  %spec.select.i.i23 = select i1 %i.cc, ptr %i.ao, ptr %4
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit

bb.k:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i
  %i.cd = load ptr, ptr %.018.i.i3, align 8
  %i.ce = icmp eq ptr %2, %i.cd
  %..i.i24 = select i1 %i.ce, ptr %.018.i.i3, ptr %i.ao
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit: ; preds = %bb.h, %bb.i, %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, %bb.j, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i, %bb.k
  %.sink.i.i10 = phi ptr [ %i.ao, %bb.j ], [ %..i.i24, %bb.k ], [ %spec.select.i.i23, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i ], [ %i.ao, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i ], [ %i.ao, %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit ], [ %i.ao, %bb.i ], [ %i.ao, %bb.h ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sink.i.i10, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.cf, align 8
  ret ptr %.sroa.0.0.copyload
}

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5ThrowEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN2v88internal8compiler4Node4KillEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler19WasmLoadElimination9HalfState8AddFieldEiPNS1_4NodeES5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.f, 88
  br i1 %i.g, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit, !prof !24

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef 88) #13
  %.pre.i.i = load i64, ptr %i.d, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i.i, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = add i64 %i.h, 88
  store i64 %i.j, ptr %i.d, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.i, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @_ZN2v88internal8compiler19WasmLoadElimination9HalfState6UpdateIiEEvRNS1_13PersistentMapIT_NS5_IPNS1_4NodeENS2_19FieldOrElementValueENS_4base4hashIS8_EEEENSB_IS6_EEEES6_S8_S9_(ptr noundef nonnull align 8 dereferenceable(40) %i.k, i32 noundef %1, ptr noundef %2, ptr %3)
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJRKNS4_9HalfStateES8_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::WasmLoadElimination::HalfState", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %i.e, 184
  br i1 %i.f, label %bb.b, label %_ZN2v88internal4Zone8AllocateINS0_8compiler19WasmLoadElimination13AbstractStateEEEPvm.exit, !prof !24

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 184) #13
  %.pre.i = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler19WasmLoadElimination13AbstractStateEEEPvm.exit

_ZN2v88internal4Zone8AllocateINS0_8compiler19WasmLoadElimination13AbstractStateEEEPvm.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = add i64 %i.g, 184
  store i64 %i.i, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler19WasmLoadElimination9HalfState9KillFieldEiPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::compiler::WasmLoadElimination::FieldOrElementValue", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::compiler::Type", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::Type", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::PersistentMap.0", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::compiler::PersistentMap.0", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::WasmLoadElimination::FieldOrElementValue>::iterator", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
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
  %i.l = xor i32 %i.k, %i.j                       ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not16.i.i = icmp eq ptr %i.m, null
  br i1 %.not16.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.018.i.i = phi ptr [ %i.z, %bb.d ], [ %i.m, %bb.a ] ; 6 uses
  %.01217.i.i = phi i32 [ %i.r, %bb.d ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 36
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.n, align 4 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.l, %.sroa.01.0.copyload.i.i
  br i1 %.not15.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %i.o = xor i32 %.sroa.01.0.copyload.i.i, %i.l
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.r, %bb.b ], [ %.01217.i.i, %.preheader.i.i ] ; 4 uses
  %i.p = lshr exact i32 -2147483648, %.1.i.i
  %i.q = and i32 %i.p, %i.o
  %.not.i.not.i.i = icmp eq i32 %i.q, 0
  %i.r = add nsw i32 %.1.i.i, 1                   ; 2 uses
  br i1 %.not.i.not.i.i, label %bb.b, label %bb.c, !llvm.loop !3

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 32
  %i.t = load i8, ptr %i.s, align 8
  %i.u = sext i8 %i.t to i32
  %i.v = icmp slt i32 %.1.i.i, %i.u
  br i1 %i.v, label %bb.d, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 48
  %i.x = sext i32 %.1.i.i to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %.lr.ph.i.i, !llvm.loop !4

_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i: ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %.not11.i.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.e ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ae, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp slt i32 %i.ag, %1                  ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ah, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ah, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = icmp eq ptr %.19.i.i.i.i.i, %i.ae
  br i1 %i.ai, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i

_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp slt i32 %1, %i.ak                  ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.al, ptr %i.ae, ptr %.19.i.i.i.i.i
  %9 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 32
  %spec.select.i.i = select i1 %i.al, ptr %i.a, ptr %9
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit

bb.f:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i
  %i.am = load i32, ptr %.018.i.i, align 8
  %i.an = icmp eq i32 %1, %i.am
  %..i.i = select i1 %i.an, ptr %.018.i.i, ptr %i.a
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit

_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit: ; preds = %bb.c, %bb.d, %bb.a, %bb.e, %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i, %bb.f
  %.sink.i.i = phi ptr [ %i.a, %bb.e ], [ %..i.i, %bb.f ], [ %spec.select.i.i, %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i ], [ %i.a, %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i ], [ %i.a, %bb.a ], [ %i.a, %bb.d ], [ %i.a, %bb.c ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !36 ; 4 uses
  %.not.i = icmp eq ptr %i.ap, null
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  br i1 %.not.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 280
  %i.as = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.as, align 8, !noalias !36 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  store i32 0, ptr %8, align 8, !alias.scope !38
  store i64 0, ptr %i.aq, align 8, !alias.scope !38
  store ptr %.sroa.0.0.copyload.i, ptr %i.ar, align 8, !alias.scope !38
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.av = load i8, ptr %i.au, align 8, !noalias !38
  %i.aw = icmp sgt i8 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i.i.i ], [ 0, %bb.g ] ; 4 uses
  %.041.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ap, %bb.g ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.041.i.i.i, i64 20
  %i.ay = load i32, ptr %i.ax, align 4, !noalias !38
  %i.az = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ba = lshr exact i32 -2147483648, %i.az
  %i.bb = and i32 %i.ay, %i.ba
  %.not.i.i.not.i.i.i = icmp eq i32 %i.bb, 0      ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.041.i.i.i, i64 32
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !38 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.be, null           ; 2 uses
  %spec.select.i.i11 = select i1 %.not.i.i.i, ptr null, ptr %.041.i.i.i
  %.sink.i.i.i = select i1 %.not.i.i.not.i.i.i, ptr %i.be, ptr %spec.select.i.i11
  %i.bf = select i1 %.not.i.i.not.i.i.i, i1 true, i1 %.not.i.i.i
  %.1.i.i.i = select i1 %i.bf, ptr %.041.i.i.i, ptr %i.be ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i
  store ptr %.sink.i.i.i, ptr %i.bg, align 8, !alias.scope !38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.bi = load i8, ptr %i.bh, align 8, !noalias !38
  %i.bj = sext i8 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit.i, !llvm.loop !9

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit.i: ; preds = %.lr.ph.i.i.i
  %i.bl = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.bl, ptr %8, align 8, !alias.scope !38
  br label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i: ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit.i, %bb.g
  %i.bm = phi ptr [ %i.ap, %bb.g ], [ %.1.i.i.i, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit.i ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8, !alias.scope !38
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !38 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i9, label %.lr.ph.i.i10.preheader, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !38
  store ptr %i.br, ptr %i.aq, align 8, !alias.scope !38
  br label %.lr.ph.i.i10.preheader

.lr.ph.i.i10.preheader:                           ; preds = %bb.h, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i
  br label %.lr.ph.i.i10

.lr.ph.i.i10:                                     ; preds = %.lr.ph.i.i10.preheader, %bb.k
  %i.bs = phi ptr [ %i.ca, %bb.k ], [ %i.bm, %.lr.ph.i.i10.preheader ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  %.not.i2.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i2.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i10
  %i.bv = load ptr, ptr %i.aq, align 8, !alias.scope !38
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = inttoptr i64 %i.bx to ptr
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i10
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i.i

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i.i: ; preds = %bb.j, %bb.i
  %.sroa.3.0.i.i.i = phi ptr [ %.sroa.3.0.copyload.i.i.i, %bb.j ], [ %i.by, %bb.i ]
  %.not5.i.i = icmp eq ptr %.sroa.3.0.i.i.i, %.sroa.0.0.copyload.i
  br i1 %.not5.i.i, label %bb.k, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph

bb.k:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i.i
  %i.bz = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(288) %8) ; 0 uses
  %i.ca = load ptr, ptr %i.bn, align 8, !alias.scope !38 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge, label %.lr.ph.i.i10, !llvm.loop !10

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph: ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge: ; preds = %bb.k, %_ZN2v88internal8compiler12_GLOBAL__N_18MayAliasEPNS1_4NodeES4_.exit.thread, %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.ce = load ptr, ptr %0, align 8               ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.cj = sub i64 %i.cg, %i.ci
  %i.ck = icmp ult i64 %i.cj, 88
  br i1 %i.ck, label %bb.l, label %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit, !prof !24

bb.l:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ce, i64 noundef 88) #13
  %.pre.i.i = load i64, ptr %i.ch, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination9HalfStateEJRKS5_EEEPT_DpOT0_.exit: ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge, %bb.l
  %i.cl = phi i64 [ %.pre.i.i, %bb.l ], [ %i.ci, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge ] ; 2 uses
  %i.cm = inttoptr i64 %i.cl to ptr               ; 3 uses
  %i.cn = add i64 %i.cl, 88
  store i64 %i.cn, ptr %i.ch, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cm, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE6ModifyIZNSC_3SetEiSA_EUlPSA_E_EEviT_(ptr noundef nonnull align 8 dereferenceable(40) %i.co, i32 noundef %1, ptr nonnull align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret ptr %i.cm

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit: ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph, %_ZN2v88internal8compiler12_GLOBAL__N_18MayAliasEPNS1_4NodeES4_.exit.thread
  %i.cp = phi ptr [ %i.bs, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph ], [ %i.dl, %_ZN2v88internal8compiler12_GLOBAL__N_18MayAliasEPNS1_4NodeES4_.exit.thread ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  %.not.i16 = icmp eq ptr %i.cr, null
  %i.cs = load ptr, ptr %i.aq, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %.sroa.0.0.in.i = select i1 %.not.i16, ptr %i.cp, ptr %i.ct
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8 ; 4 uses
  %i.cu = icmp eq ptr %.sroa.0.0.i, %2
  br i1 %i.cu, label %_ZN2v88internal8compiler12_GLOBAL__N_18MayAliasEPNS1_4NodeES4_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit
  %i.cv = getelementptr i8, ptr %.sroa.0.0.i, i64 8
  %.val.i = load i64, ptr %i.cv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i64 %.val.i, ptr %4, align 8
  %i.cw = call { i32, ptr } @_ZNK2v88internal8compiler4Type6AsWasmEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #13 ; 2 uses
  %i.cx = extractvalue { i32, ptr } %i.cw, 0      ; 3 uses
  %i.cy = extractvalue { i32, ptr } %i.cw, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %.sroa.0.0.copyload.i.i8.i.i = load i64, ptr %i.cd, align 8
  store i64 %.sroa.0.0.copyload.i.i8.i.i, ptr %5, align 8
  %i.cz = call { i32, ptr } @_ZNK2v88internal8compiler4Type6AsWasmEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %i.da = extractvalue { i32, ptr } %i.cz, 0      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.db = icmp eq i32 %i.cx, %i.da
  br i1 %i.db, label %_ZN2v88internal8compiler12_GLOBAL__N_114TypesUnrelatedEPNS1_4NodeES4_.exit.thread.i, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit11.i.i.i, !prof !25

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit11.i.i.i: ; preds = %bb.m
  %i.dc = call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %i.cx, i32 %i.da, ptr noundef %i.cy, ptr noundef %i.cy) #13
  br i1 %i.dc, label %_ZN2v88internal8compiler12_GLOBAL__N_114TypesUnrelatedEPNS1_4NodeES4_.exit.thread.i, label %_ZN2v88internal8compiler12_GLOBAL__N_114TypesUnrelatedEPNS1_4NodeES4_.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_114TypesUnrelatedEPNS1_4NodeES4_.exit.i: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit11.i.i.i
  %i.dd = call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %i.da, i32 %i.cx, ptr noundef %i.cy, ptr noundef %i.cy) #13
  br i1 %i.dd, label %_ZN2v88internal8compiler12_GLOBAL__N_114TypesUnrelatedEPNS1_4NodeES4_.exit.thread.i, label %_ZN2v88internal8compiler12_GLOBAL__N_18MayAliasEPNS1_4NodeES4_.exit.thread

_ZN2v88internal8compiler12_GLOBAL__N_114TypesUnrelatedEPNS1_4NodeES4_.exit.thread.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_114TypesUnrelatedEPNS1_4NodeES4_.exit.i, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit11.i.i.i, %bb.m
  %.val16.i = load ptr, ptr %.sroa.0.0.i, align 8
  %i.de = getelementptr i8, ptr %.val16.i, i64 16
  %.val16.val.i = load i16, ptr %i.de, align 8    ; 2 uses
  %i.df = and i16 %.val16.val.i, -2
  %spec.select.i.i17 = icmp eq i16 %i.df, 266
  br i1 %spec.select.i.i17, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_114TypesUnrelatedEPNS1_4NodeES4_.exit.thread.i
  %.val15.i = load ptr, ptr %2, align 8
  %i.dg = getelementptr i8, ptr %.val15.i, i64 16
  %.val15.val.i = load i16, ptr %i.dg, align 8    ; 2 uses
  %i.dh = and i16 %.val15.val.i, -2
  %spec.select.i19.i = icmp eq i16 %i.dh, 266
end_hunk_0
begin_hunk_1_@_ZNK2v88internal8compiler19WasmLoadElimination16ComputeLoopStateEPNS1_4NodeEPKNS2_13AbstractStateE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.ft = load ptr, ptr %i.fs, align 8            ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load i32, ptr %i.fu, align 8
  %i.fw = icmp slt i32 %.074, %i.fv
  br i1 %i.fw, label %bb.ae, label %bb.ad, !prof !25

bb.ad:                                            ; preds = %.lr.ph
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6) #14
  unreachable

bb.ae:                                            ; preds = %.lr.ph
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 20
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.ft) #13
  %i.ga = load ptr, ptr %i.fs, align 8
  %i.gb = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.ga) #13
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fs, i64 20
  %i.gd = load i32, ptr %i.gc, align 4
  %i.ge = and i32 %i.gd, 251658240
  %.not.i.i.i43 = icmp eq i32 %i.ge, 251658240
  %i.gf = ptrtoint ptr %i.fs to i64
  %i.gg = add i64 %i.gf, 32
  %i.gh = inttoptr i64 %i.gg to ptr               ; 2 uses
  br i1 %.not.i.i.i43, label %bb.af, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.af:                                            ; preds = %bb.ae
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = add i64 %i.gj, 16
  %i.gl = inttoptr i64 %i.gk to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.ae, %bb.af
  %.sink.i.i.i44 = phi ptr [ %i.gl, %bb.af ], [ %i.gh, %bb.ae ]
  %i.gm = zext i1 %i.fz to i32
  %i.gn = zext i1 %i.gb to i32
  %i.go = add i32 %i.fy, %.074
  %i.gp = add i32 %i.go, %i.gm
  %i.gq = add i32 %i.gp, %i.gn
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i44, i64 %i.gr
  %i.gt = load ptr, ptr %i.gs, align 8            ; 2 uses
  store ptr %i.gt, ptr %i.d, align 8
  %i.gu = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.gv = load ptr, ptr %i.ac, align 8
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 -8
  %.not.i.i.i45 = icmp eq ptr %i.gu, %i.gw
  br i1 %.not.i.i.i45, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  store ptr %i.gt, ptr %i.gu, align 8
  %i.gx = load ptr, ptr %i.z, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store ptr %i.gy, ptr %i.z, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit46

bb.ah:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  call void @_ZNSt5dequeIPN2v88internal8compiler4NodeESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit46

_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit46: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %i.gz = add nuw nsw i32 %.074, 1                ; 2 uses
  %i.ha = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load i32, ptr %i.hc, align 8
  %i.he = icmp slt i32 %i.gz, %i.hd
  br i1 %i.he, label %.lr.ph, label %.loopexit, !llvm.loop !40

.thread65:                                        ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit42, %bb.z
  %.4.ph = phi ptr [ %i.eu, %bb.z ], [ %i.fj, %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.loopexit69

.loopexit:                                        ; preds = %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit46, %.thread60, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE3popEv.exit
  %.534 = phi ptr [ %.02975, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE3popEv.exit ], [ %.332, %.thread60 ], [ %.332, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit46 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.hf = load ptr, ptr %i.z, align 8
  %i.hg = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %.loopexit69, label %bb.m, !llvm.loop !41

.loopexit69:                                      ; preds = %.loopexit, %.preheader, %.thread65
  %.5 = phi ptr [ %.4.ph, %.thread65 ], [ %2, %.preheader ], [ %.534, %.loopexit ]
  %i.hi = load ptr, ptr %i.ae, align 8
  %i.hj = load i64, ptr %i.ag, align 8
  %i.hk = shl i64 %i.hj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.hi, i8 0, i64 %i.hk, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @_ZN2v88internal4ZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(64) %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @_ZN2v88internal19AccountingAllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.hl = load ptr, ptr %10, align 8              ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i47, label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %.loopexit69
  %i.hm = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.hn = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = icmp ult ptr %i.hm, %i.ho
  br i1 %i.hp, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ai, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.hr, %.lr.ph.i.i.i.i ], [ %i.hm, %bb.ai ] ; 3 uses
  %i.hq = load ptr, ptr %.06.i.i.i.i, align 8
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef 512) #16
  %i.hr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.hs = icmp ult ptr %.06.i.i.i.i, %i.hn
  br i1 %i.hs, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, !llvm.loop !42

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %10, align 8
  br label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, %bb.ai
  %i.ht = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i ], [ %i.hl, %bb.ai ]
  %i.hu = load i64, ptr %i.m, align 8
  %i.hv = shl i64 %i.hu, 3
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hv) #16
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEED2Ev.exit

_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEED2Ev.exit: ; preds = %.loopexit69, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK2v88internal8compiler19WasmLoadElimination9HalfState7IsEmptyEv.exit, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEED2Ev.exit
  %.6 = phi ptr [ %.5, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEED2Ev.exit ], [ %2, %_ZNK2v88internal8compiler19WasmLoadElimination9HalfState7IsEmptyEv.exit ]
  ret ptr %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler19WasmLoadElimination9HalfState6UpdateIiEEvRNS1_13PersistentMapIT_NS5_IPNS1_4NodeENS2_19FieldOrElementValueENS_4base4hashIS8_EEEENSB_IS6_EEEES6_S8_S9_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::PersistentMap.0", align 8 ; 4 uses
  %5 = alloca %"struct.v8::internal::compiler::WasmLoadElimination::FieldOrElementValue", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::PersistentMap.0", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
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
  br i1 %.not16.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.018.i.i = phi ptr [ %i.y, %bb.d ], [ %i.l, %bb.a ] ; 6 uses
  %.01217.i.i = phi i32 [ %i.q, %bb.d ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 36
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.m, align 4 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.k, %.sroa.01.0.copyload.i.i
  br i1 %.not15.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %i.n = xor i32 %.sroa.01.0.copyload.i.i, %i.k
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.q, %bb.b ], [ %.01217.i.i, %.preheader.i.i ] ; 4 uses
  %i.o = lshr exact i32 -2147483648, %.1.i.i
  %i.p = and i32 %i.o, %i.n
  %.not.i.not.i.i = icmp eq i32 %i.p, 0
  %i.q = add nsw i32 %.1.i.i, 1                   ; 2 uses
  br i1 %.not.i.not.i.i, label %bb.b, label %bb.c, !llvm.loop !3

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 32
  %i.s = load i8, ptr %i.r, align 8
  %i.t = sext i8 %i.s to i32
  %i.u = icmp slt i32 %.1.i.i, %i.t
  br i1 %i.u, label %bb.d, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 48
  %i.w = sext i32 %.1.i.i to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %.lr.ph.i.i, !llvm.loop !4

_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i: ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 40
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %.not11.i.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ac, %bb.e ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp slt i32 %i.af, %1                  ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ag, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ag, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ah = icmp eq ptr %.19.i.i.i.i.i, %i.ad
  br i1 %i.ah, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i

_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp slt i32 %1, %i.aj                  ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.ak, ptr %i.ad, ptr %.19.i.i.i.i.i
  %7 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 32
  %spec.select.i.i = select i1 %i.ak, ptr %0, ptr %7
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit

bb.f:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i
  %i.al = load i32, ptr %.018.i.i, align 8
  %i.am = icmp eq i32 %1, %i.al
  %..i.i = select i1 %i.am, ptr %.018.i.i, ptr %0
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit

_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit: ; preds = %bb.c, %bb.d, %bb.a, %bb.e, %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i, %bb.f
  %.sink.i.i = phi ptr [ %0, %bb.e ], [ %..i.i, %bb.f ], [ %spec.select.i.i, %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i ], [ %0, %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i ], [ %0, %bb.a ], [ %0, %bb.d ], [ %0, %bb.c ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  call void @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE6ModifyIZNSA_3SetES4_S6_EUlPS6_E_EEvS4_T_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %2, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE6ModifyIZNSC_3SetEiSA_EUlPSA_E_EEviT_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr nonnull align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(288) ptr @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted25 = load ptr, ptr %i.a, align 8
  %.promoted26 = load i32, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.promoted = load ptr, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit, %bb.a
  %i.e = phi ptr [ %i.ba, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit ], [ %.promoted, %bb.a ] ; 2 uses
  %.promoted27 = phi i32 [ %.promoted28, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit ], [ %.promoted26, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %.0.lcssa.i, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit ], [ %.promoted25, %bb.a ] ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not8 = icmp eq ptr %i.h, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.e) #17 ; 3 uses
  store ptr %i.i, ptr %i.b, align 8
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = phi ptr [ %i.i, %bb.d ], [ %i.e, %bb.c ]
  %i.n = icmp eq i32 %.promoted27, 0
  br i1 %i.n, label %.loopexit.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.p = sext i32 %.promoted27 to i64
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %.critedge
  %indvars.iv = phi i64 [ %i.p, %.preheader ], [ %indvars.iv.next, %.critedge ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.q = trunc nsw i64 %indvars.iv.next to i32    ; 2 uses
  store i32 %i.q, ptr %0, align 8
  %i.r = load i32, ptr %i.o, align 4
  %i.s = lshr exact i32 -2147483648, %i.q
  %i.t = and i32 %i.r, %i.s
  %.not.i.not = icmp eq i32 %i.t, 0
  br i1 %.not.i.not, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.v = load ptr, ptr %i.u, align 8              ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.critedge, label %bb.h

.critedge:                                        ; preds = %bb.f, %bb.g
  %i.x = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.x, label %.loopexit.sink.split, label %bb.f, !llvm.loop !11

bb.h:                                             ; preds = %bb.g
  %i.y = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  store i32 %i.y, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = sext i8 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv, %i.ab
  br i1 %i.ac, label %.lr.ph.i, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %.lr.ph.i ], [ %indvars.iv, %bb.h ] ; 4 uses
  %.041.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %i.v, %bb.h ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.041.i, i64 20
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = trunc nsw i64 %indvars.iv32 to i32
  %i.ag = lshr exact i32 -2147483648, %i.af
  %i.ah = and i32 %i.ae, %i.ag
  %.not.i.i.not.i = icmp eq i32 %i.ah, 0          ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.041.i, i64 32
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %indvars.iv32
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %.not.i10 = icmp eq ptr %i.ak, null             ; 2 uses
  %spec.select = select i1 %.not.i10, ptr null, ptr %.041.i
  %.sink.i = select i1 %.not.i.i.not.i, ptr %i.ak, ptr %spec.select
  %i.al = select i1 %.not.i.i.not.i, i1 true, i1 %.not.i10
  %.1.i = select i1 %i.al, ptr %.041.i, ptr %i.ak ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv32
  store ptr %.sink.i, ptr %i.am, align 8
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, 1 ; 3 uses
  %i.an = trunc nsw i64 %indvars.iv.next33 to i32 ; 2 uses
  store i32 %i.an, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.ap = load i8, ptr %i.ao, align 8
  %i.aq = sext i8 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next33, %i.aq
  br i1 %i.ar, label %.lr.ph.i, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit, !llvm.loop !9

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit: ; preds = %.lr.ph.i, %bb.h
  %.promoted28 = phi i32 [ %i.y, %bb.h ], [ %i.an, %.lr.ph.i ]
  %.0.lcssa.i = phi ptr [ %i.v, %bb.h ], [ %.1.i, %.lr.ph.i ] ; 4 uses
  store ptr %.0.lcssa.i, ptr %i.a, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not9 = icmp eq ptr %i.at, null
  br i1 %.not9, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8            ; 4 uses
  store ptr %i.av, ptr %i.b, align 8
  %.pr = load ptr, ptr %i.as, align 8
  %.not.i11 = icmp eq ptr %.pr, null
  br i1 %.not.i11, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = inttoptr i64 %i.ax to ptr
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit

.thread:                                          ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit, %bb.i
  %i.az = phi ptr [ %i.m, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit ], [ %i.av, %bb.i ]
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit: ; preds = %bb.j, %.thread
  %i.ba = phi ptr [ %i.az, %.thread ], [ %i.av, %bb.j ]
  %.sroa.3.0.i = phi ptr [ %.sroa.3.0.copyload.i, %.thread ], [ %i.ay, %bb.j ]
  %i.bb = load ptr, ptr %i.d, align 8
  %.not21 = icmp eq ptr %.sroa.3.0.i, %i.bb
  br i1 %.not21, label %bb.b, label %.loopexit, !llvm.loop !12

.loopexit.sink.split:                             ; preds = %bb.e, %.critedge
  store i32 0, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit, %bb.d, %bb.b, %.loopexit.sink.split
  ret ptr %0
}

declare void @_ZN2v88internal19AccountingAllocatorC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2v88internal4ZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(64)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2v88internal19AccountingAllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19WasmLoadElimination9HalfState13IntersectWithEPKS3_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::compiler::WasmLoadElimination::FieldOrElementValue", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::PersistentMap.0", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::compiler::PersistentMap<int, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::WasmLoadElimination::FieldOrElementValue>>::iterator", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::compiler::PersistentMap.0", align 8 ; 7 uses
  %6 = alloca %"class.v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::WasmLoadElimination::FieldOrElementValue>::iterator", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::PersistentMap<int, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::WasmLoadElimination::FieldOrElementValue>>::iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not120 = icmp eq ptr %i.c, null
  br i1 %.not120, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorneERKSD_.exit._crit_edge, label %.lr.ph121

.lr.ph121:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 280 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  br label %bb.b

_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorneERKSD_.exit._crit_edge: ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorneERKSD_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void

bb.b:                                             ; preds = %.lr.ph121, %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorneERKSD_.exit
  %i.j = phi ptr [ %i.c, %.lr.ph121 ], [ %i.ef, %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorneERKSD_.exit ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !noalias !49
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.d, align 8, !noalias !49 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.8.8..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.11.8..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit

_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.11.0.in = phi ptr [ %.sroa.11.0..sroa_idx, %bb.d ], [ %.sroa.11.8..sroa_idx97, %bb.c ]
  %.sroa.8.0.in = phi ptr [ %.sroa.8.0..sroa_idx, %bb.d ], [ %.sroa.8.8..sroa_idx95, %bb.c ]
  %.sroa.593.0.in = phi ptr [ %.sroa.593.0..sroa_idx, %bb.d ], [ %i.o, %bb.c ]
  %.sroa.091.0.in = phi ptr [ %i.j, %bb.d ], [ %i.n, %bb.c ]
  %.sroa.091.0 = load i32, ptr %.sroa.091.0.in, align 8 ; 6 uses
  %.sroa.593.0 = load ptr, ptr %.sroa.593.0.in, align 8 ; 5 uses
  %.sroa.8.0 = load ptr, ptr %.sroa.8.0.in, align 8 ; 3 uses
  %.sroa.11.0 = load ptr, ptr %.sroa.11.0.in, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr %.sroa.593.0, ptr %5, align 8
  store ptr %.sroa.8.0, ptr %.sroa.8.8..sroa_idx, align 8
  store ptr %.sroa.11.0, ptr %.sroa.11.8..sroa_idx, align 8
  %i.p = xor i32 %.sroa.091.0, -1
  %i.q = shl i32 %.sroa.091.0, 15
  %i.r = add i32 %i.q, %i.p                       ; 2 uses
  %i.s = lshr i32 %i.r, 12
  %i.t = xor i32 %i.s, %i.r
  %i.u = mul i32 %i.t, 5                          ; 2 uses
  %i.v = lshr i32 %i.u, 4
  %i.w = xor i32 %i.v, %i.u
  %i.x = mul i32 %i.w, 2057                       ; 2 uses
  %i.y = lshr i32 %i.x, 16
  %i.z = xor i32 %i.y, %i.x                       ; 2 uses
  %i.aa = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not16.i.i = icmp eq ptr %i.aa, null
  br i1 %.not16.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit, %bb.g
  %.018.i.i = phi ptr [ %i.an, %bb.g ], [ %i.aa, %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit ] ; 6 uses
  %.01217.i.i = phi i32 [ %i.af, %bb.g ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 36
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.ab, align 4 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.z, %.sroa.01.0.copyload.i.i
  br i1 %.not15.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %i.ac = xor i32 %.sroa.01.0.copyload.i.i, %i.z
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.af, %bb.e ], [ %.01217.i.i, %.preheader.i.i ] ; 4 uses
  %i.ad = lshr exact i32 -2147483648, %.1.i.i
  %i.ae = and i32 %i.ad, %i.ac
  %.not.i.not.i.i = icmp eq i32 %i.ae, 0
  %i.af = add nsw i32 %.1.i.i, 1                  ; 2 uses
  br i1 %.not.i.not.i.i, label %bb.e, label %bb.f, !llvm.loop !3

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 32
  %i.ah = load i8, ptr %i.ag, align 8
  %i.ai = sext i8 %i.ah to i32
  %i.aj = icmp slt i32 %.1.i.i, %i.ai
  br i1 %i.aj, label %bb.g, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 48
  %i.al = sext i32 %.1.i.i to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.an, null
  br i1 %.not.i.i7, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %.lr.ph.i.i, !llvm.loop !4

_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i: ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %.not11.i.i = icmp eq ptr %i.ap, null
  br i1 %.not11.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ar, %bb.h ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.as, %bb.h ]
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp slt i32 %i.au, %.sroa.091.0        ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.av, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.av, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = icmp eq ptr %.19.i.i.i.i.i, %i.as
  br i1 %i.aw, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i

_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp slt i32 %.sroa.091.0, %i.ay        ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.az, ptr %i.as, ptr %.19.i.i.i.i.i
  %7 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 32
  %spec.select.i.i = select i1 %i.az, ptr %i.e, ptr %7
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit

bb.i:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i
  %i.ba = load i32, ptr %.018.i.i, align 8
  %i.bb = icmp eq i32 %.sroa.091.0, %i.ba
  %..i.i = select i1 %i.bb, ptr %.018.i.i, ptr %i.e
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit

_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit: ; preds = %bb.f, %bb.g, %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit, %bb.h, %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i, %bb.i
  %.sink.i.i = phi ptr [ %i.e, %bb.h ], [ %..i.i, %bb.i ], [ %spec.select.i.i, %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i ], [ %i.e, %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i ], [ %i.e, %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit ], [ %i.e, %bb.g ], [ %i.e, %bb.f ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %.not.i8 = icmp eq ptr %.sroa.593.0, null
  br i1 %.not.i8, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorneERKSD_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  store i32 0, ptr %6, align 8, !alias.scope !52
  store i64 0, ptr %i.f, align 8, !alias.scope !52
  store ptr %.sroa.8.0, ptr %i.g, align 8, !alias.scope !52
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.593.0, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !noalias !52
  %i.bf = icmp sgt i8 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i.i.i ], [ 0, %bb.j ] ; 4 uses
  %.041.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.593.0, %bb.j ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.041.i.i.i, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !noalias !52
  %i.bi = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bj = lshr exact i32 -2147483648, %i.bi
  %i.bk = and i32 %i.bh, %i.bj
  %.not.i.i.not.i.i.i = icmp eq i32 %i.bk, 0      ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.041.i.i.i, i64 32
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !52 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bn, null         ; 2 uses
  %spec.select.i.i12 = select i1 %.not.i.i.i11, ptr null, ptr %.041.i.i.i
  %.sink.i.i.i = select i1 %.not.i.i.not.i.i.i, ptr %i.bn, ptr %spec.select.i.i12
  %i.bo = select i1 %.not.i.i.not.i.i.i, i1 true, i1 %.not.i.i.i11
  %.1.i.i.i = select i1 %i.bo, ptr %.041.i.i.i, ptr %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  store ptr %.sink.i.i.i, ptr %i.bp, align 8, !alias.scope !52
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.br = load i8, ptr %i.bq, align 8, !noalias !52
  %i.bs = sext i8 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next.i, %i.bs
  br i1 %i.bt, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit.i, !llvm.loop !9

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit.i: ; preds = %.lr.ph.i.i.i
  %i.bu = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %i.bu, ptr %6, align 8, !alias.scope !52
  br label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i: ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit.i, %bb.j
  %.promoted = phi i32 [ 0, %bb.j ], [ %i.bu, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit.i ]
  %i.bv = phi ptr [ %.sroa.593.0, %bb.j ], [ %.1.i.i.i, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.loopexit.i ] ; 3 uses
  store ptr %i.bv, ptr %i.i, align 8, !alias.scope !52
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !52 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i9, label %.lr.ph.i.i10.preheader, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !52 ; 2 uses
  store ptr %i.bz, ptr %i.f, align 8, !alias.scope !52
  br label %.lr.ph.i.i10.preheader

.lr.ph.i.i10.preheader:                           ; preds = %bb.k, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i
  %.ph227 = phi ptr [ null, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i.i ], [ %i.bz, %bb.k ] ; 2 uses
  br label %.lr.ph.i.i10

.lr.ph.i.i10:                                     ; preds = %.lr.ph.i.i10.preheader, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratorppEv.exit84
  %.pr141 = phi ptr [ %.pr138, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratorppEv.exit84 ], [ %i.bv, %.lr.ph.i.i10.preheader ] ; 4 uses
  %.promoted.i54 = phi ptr [ %.promoted.i54134, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratorppEv.exit84 ], [ %.ph227, %.lr.ph.i.i10.preheader ] ; 4 uses
  %i.ca = phi ptr [ %i.ec, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratorppEv.exit84 ], [ %.ph227, %.lr.ph.i.i10.preheader ]
  %i.cb = phi i32 [ %i.ed, %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratorppEv.exit84 ], [ %.promoted, %.lr.ph.i.i10.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.pr141, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i2.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i10
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = inttoptr i64 %i.cf to ptr
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i.i

bb.m:                                             ; preds = %.lr.ph.i.i10
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pr141, i64 8
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i.i

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i.i: ; preds = %bb.m, %bb.l
  %.sroa.3.0.i.i.i = phi ptr [ %.sroa.3.0.copyload.i.i.i, %bb.m ], [ %i.cg, %bb.l ]
  %.not5.i.i = icmp eq ptr %.sroa.3.0.i.i.i, %.sroa.8.0
  br i1 %.not5.i.i, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i.i, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i69
  %.pr140 = phi ptr [ %.0.lcssa.i.i65, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i69 ], [ %.pr141, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i.i ] ; 2 uses
  %i.ch = phi ptr [ %i.du, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i69 ], [ %i.cd, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i.i ] ; 2 uses
  %.promoted.i54136 = phi ptr [ %.promoted.i54132, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i69 ], [ %.promoted.i54, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i.i ]
  %i.ci = phi i32 [ %i.ds, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i69 ], [ %i.cb, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i.i ] ; 3 uses
  %i.cj = phi ptr [ %i.ea, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i69 ], [ %.promoted.i54, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i.i ] ; 2 uses
  %.not8.i57 = icmp eq ptr %i.ch, null
  br i1 %.not8.i57, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader
  %i.ck = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.cj) #17 ; 6 uses
  store ptr %i.ck, ptr %i.f, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %bb.o, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratorppEv.exit84

bb.o:                                             ; preds = %bb.n, %.preheader
  %.promoted.i54133 = phi ptr [ %i.ck, %bb.n ], [ %.promoted.i54136, %.preheader ]
  %i.cn = phi ptr [ %i.ck, %bb.n ], [ %i.cj, %.preheader ]
  %i.co = icmp eq i32 %i.ci, 0
  br i1 %i.co, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorneERKSD_.exit, label %.preheader.i58

.preheader.i58:                                   ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %.pr140, i64 20
  %i.cq = sext i32 %i.ci to i64
  %.pre = load i32, ptr %i.cp, align 4
  br label %bb.p

bb.p:                                             ; preds = %.critedge.i62, %.preheader.i58
  %indvars.iv.i59 = phi i64 [ %i.cq, %.preheader.i58 ], [ %indvars.iv.next.i60, %.critedge.i62 ] ; 4 uses
  %indvars.iv.next.i60 = add nsw i64 %indvars.iv.i59, -1 ; 4 uses
  %i.cr = trunc nsw i64 %indvars.iv.next.i60 to i32 ; 2 uses
  store i32 %i.cr, ptr %6, align 8
  %i.cs = lshr exact i32 -2147483648, %i.cr
  %i.ct = and i32 %i.cs, %.pre
  %.not.i.not.i61 = icmp eq i32 %i.ct, 0
  br i1 %.not.i.not.i61, label %bb.q, label %.critedge.i62

bb.q:                                             ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.i60
  %i.cv = load ptr, ptr %i.cu, align 8            ; 4 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %.critedge.i62, label %bb.r

.critedge.i62:                                    ; preds = %bb.q, %bb.p
  %i.cx = icmp eq i64 %indvars.iv.next.i60, 0
  br i1 %i.cx, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorneERKSD_.exit, label %bb.p, !llvm.loop !11

bb.r:                                             ; preds = %bb.q
  %i.cy = trunc nuw nsw i64 %indvars.iv.i59 to i32 ; 2 uses
  store i32 %i.cy, ptr %6, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.da = load i8, ptr %i.cz, align 8
  %i.db = sext i8 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.i59, %i.db
  br i1 %i.dc, label %.lr.ph.i.i75, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i63

.lr.ph.i.i75:                                     ; preds = %bb.r, %.lr.ph.i.i75
  %indvars.iv32.i76 = phi i64 [ %indvars.iv.next33.i83, %.lr.ph.i.i75 ], [ %indvars.iv.i59, %bb.r ] ; 4 uses
  %.041.i.i77 = phi ptr [ %.1.i.i82, %.lr.ph.i.i75 ], [ %i.cv, %bb.r ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.041.i.i77, i64 20
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = trunc nuw nsw i64 %indvars.iv32.i76 to i32
  %i.dg = lshr exact i32 -2147483648, %i.df
  %i.dh = and i32 %i.de, %i.dg
  %.not.i.i.not.i.i78 = icmp eq i32 %i.dh, 0      ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.041.i.i77, i64 32
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.di, i64 %indvars.iv32.i76
  %i.dk = load ptr, ptr %i.dj, align 8            ; 3 uses
  %.not.i10.i79 = icmp eq ptr %i.dk, null         ; 2 uses
  %spec.select.i80 = select i1 %.not.i10.i79, ptr null, ptr %.041.i.i77
  %.sink.i.i81 = select i1 %.not.i.i.not.i.i78, ptr %i.dk, ptr %spec.select.i80
  %i.dl = select i1 %.not.i.i.not.i.i78, i1 true, i1 %.not.i10.i79
  %.1.i.i82 = select i1 %i.dl, ptr %.041.i.i77, ptr %i.dk ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv32.i76
  store ptr %.sink.i.i81, ptr %i.dm, align 8
  %indvars.iv.next33.i83 = add nuw nsw i64 %indvars.iv32.i76, 1 ; 3 uses
  %i.dn = trunc nuw nsw i64 %indvars.iv.next33.i83 to i32 ; 2 uses
  store i32 %i.dn, ptr %6, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %.1.i.i82, i64 16
  %i.dp = load i8, ptr %i.do, align 8
  %i.dq = sext i8 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next33.i83, %i.dq
  br i1 %i.dr, label %.lr.ph.i.i75, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i63, !llvm.loop !9

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i63: ; preds = %.lr.ph.i.i75, %bb.r
  %i.ds = phi i32 [ %i.cy, %bb.r ], [ %i.dn, %.lr.ph.i.i75 ] ; 2 uses
  %.0.lcssa.i.i65 = phi ptr [ %i.cv, %bb.r ], [ %.1.i.i82, %.lr.ph.i.i75 ] ; 5 uses
  store ptr %.0.lcssa.i.i65, ptr %i.i, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i65, i64 24
  %i.du = load ptr, ptr %i.dt, align 8            ; 3 uses
  %.not9.i66 = icmp eq ptr %i.du, null
  br i1 %.not9.i66, label %.thread.i72, label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i63
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8            ; 4 uses
  store ptr %i.dw, ptr %i.f, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = inttoptr i64 %i.dy to ptr
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i69

.thread.i72:                                      ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i63
  %.sroa.3.0..sroa_idx.i.i73 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i65, i64 8
  %.sroa.3.0.copyload.i.i74 = load ptr, ptr %.sroa.3.0..sroa_idx.i.i73, align 8
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i69

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i69: ; preds = %.thread.i72, %bb.s
  %.promoted.i54132 = phi ptr [ %.promoted.i54133, %.thread.i72 ], [ %i.dw, %bb.s ] ; 2 uses
  %i.ea = phi ptr [ %i.cn, %.thread.i72 ], [ %i.dw, %bb.s ] ; 2 uses
  %.sroa.3.0.i.i70 = phi ptr [ %.sroa.3.0.copyload.i.i74, %.thread.i72 ], [ %i.dz, %bb.s ]
  %i.eb = load ptr, ptr %i.g, align 8
  %.not21.i71 = icmp eq ptr %.sroa.3.0.i.i70, %i.eb
  br i1 %.not21.i71, label %.preheader, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratorppEv.exit84, !llvm.loop !12

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratorppEv.exit84: ; preds = %bb.n, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i69
  %.pr138 = phi ptr [ %.0.lcssa.i.i65, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i69 ], [ %.pr140, %bb.n ]
  %.promoted.i54134 = phi ptr [ %.promoted.i54132, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i69 ], [ %i.ck, %bb.n ]
  %i.ec = phi ptr [ %i.ea, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i69 ], [ %i.ck, %bb.n ]
  %i.ed = phi i32 [ %i.ds, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i69 ], [ %i.ci, %bb.n ]
  br label %.lr.ph.i.i10, !llvm.loop !10

_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorneERKSD_.exit: ; preds = %bb.o, %bb.ae, %bb.ab, %.critedge.i62, %.critedge.i, %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE6ModifyIZNSC_3SetEiSA_EUlPSA_E_EEviT_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef %.sroa.091.0, ptr nonnull align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.ee = call noundef nonnull align 8 dereferenceable(304) ptr @_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(304) %4) ; 0 uses
  %i.ef = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not = icmp eq ptr %i.ef, null
  br i1 %.not, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorneERKSD_.exit._crit_edge, label %bb.b

.lr.ph.loopexit:                                  ; preds = %bb.ad, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i
  %.ph = phi ptr [ %i.gh, %bb.ad ], [ %.0.lcssa.i.i, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i ]
  %.promoted.i.ph = phi ptr [ %i.gm, %bb.ad ], [ %.promoted.i144, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i ]
  %.ph224 = phi ptr [ %i.gm, %bb.ad ], [ %i.ic, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i ]
  %.ph225 = phi i32 [ %i.gi, %bb.ad ], [ %i.hu, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i.i, %.lr.ph.loopexit
  %i.eg = phi ptr [ %.ph, %.lr.ph.loopexit ], [ %.pr141, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i.i ] ; 4 uses
  %.promoted.i = phi ptr [ %.promoted.i.ph, %.lr.ph.loopexit ], [ %.promoted.i54, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i.i ] ; 2 uses
  %i.eh = phi ptr [ %.ph224, %.lr.ph.loopexit ], [ %.promoted.i54, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i.i ] ; 2 uses
  %i.ei = phi i32 [ %.ph225, %.lr.ph.loopexit ], [ %i.cb, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i.i ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  %.not.i21 = icmp eq ptr %i.ek, null
  br i1 %.not.i21, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = inttoptr i64 %i.en to ptr
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit

bb.u:                                             ; preds = %.lr.ph
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit: ; preds = %bb.t, %bb.u
  %.sroa.3.0.i = phi ptr [ %.sroa.3.0.copyload.i, %bb.u ], [ %i.eo, %bb.t ]
  %.sroa.0.0.in.i = phi ptr [ %i.eg, %bb.u ], [ %i.el, %bb.t ]
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8 ; 5 uses
  %i.ep = ptrtoint ptr %.sroa.0.0.i to i64        ; 2 uses
  %i.eq = xor i64 %i.ep, -1
  %i.er = shl i64 %i.ep, 21
  %i.es = add i64 %i.er, %i.eq                    ; 2 uses
  %i.et = lshr i64 %i.es, 24
  %i.eu = xor i64 %i.et, %i.es
  %i.ev = mul i64 %i.eu, 265                      ; 2 uses
  %i.ew = lshr i64 %i.ev, 14
  %i.ex = xor i64 %i.ew, %i.ev
  %i.ey = mul i64 %i.ex, 21                       ; 2 uses
  %i.ez = lshr i64 %i.ey, 28
  %i.fa = xor i64 %i.ez, %i.ey
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = mul i32 %i.fb, -2147483647              ; 2 uses
  %i.fd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not16.i.i22 = icmp eq ptr %i.fd, null
  br i1 %.not16.i.i22, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit, %bb.x
  %.018.i.i24 = phi ptr [ %i.fq, %bb.x ], [ %i.fd, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit ] ; 6 uses
  %.01217.i.i25 = phi i32 [ %i.fi, %bb.x ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.018.i.i24, i64 20
  %.sroa.01.0.copyload.i.i26 = load i32, ptr %i.fe, align 4 ; 2 uses
  %.not15.i.i27 = icmp eq i32 %i.fc, %.sroa.01.0.copyload.i.i26
  br i1 %.not15.i.i27, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i, label %.preheader.i.i28

.preheader.i.i28:                                 ; preds = %.lr.ph.i.i23
  %i.ff = xor i32 %.sroa.01.0.copyload.i.i26, %i.fc
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.preheader.i.i28
  %.1.i.i29 = phi i32 [ %i.fi, %bb.v ], [ %.01217.i.i25, %.preheader.i.i28 ] ; 4 uses
  %i.fg = lshr exact i32 -2147483648, %.1.i.i29
  %i.fh = and i32 %i.fg, %i.ff
  %.not.i.not.i.i30 = icmp eq i32 %i.fh, 0
  %i.fi = add nsw i32 %.1.i.i29, 1                ; 2 uses
  br i1 %.not.i.not.i.i30, label %bb.v, label %bb.w, !llvm.loop !6

bb.w:                                             ; preds = %bb.v
  %i.fj = getelementptr inbounds nuw i8, ptr %.018.i.i24, i64 16
  %i.fk = load i8, ptr %i.fj, align 8
  %i.fl = sext i8 %i.fk to i32
  %i.fm = icmp slt i32 %.1.i.i29, %i.fl
  br i1 %i.fm, label %bb.x, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit

bb.x:                                             ; preds = %bb.w
  %i.fn = getelementptr inbounds nuw i8, ptr %.018.i.i24, i64 32
  %i.fo = sext i32 %.1.i.i29 to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = load ptr, ptr %i.fp, align 8            ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i32, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i23, !llvm.loop !7

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i: ; preds = %.lr.ph.i.i23
  %i.fr = getelementptr inbounds nuw i8, ptr %.018.i.i24, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8            ; 3 uses
  %.not11.i.i33 = icmp eq ptr %i.fs, null
  br i1 %.not11.i.i33, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8            ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 3 uses
  %.not10.i.i.i.i.i34 = icmp eq ptr %i.fu, null
  br i1 %.not10.i.i.i.i.i34, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i.i.i.i35

.lr.ph.i.i.i.i.i35:                               ; preds = %bb.y, %.lr.ph.i.i.i.i.i35
  %.012.i.i.i.i.i36 = phi ptr [ %.1.i.i.i.i.i41, %.lr.ph.i.i.i.i.i35 ], [ %i.fu, %bb.y ] ; 3 uses
  %.0811.i.i.i.i.i37 = phi ptr [ %.19.i.i.i.i.i38, %.lr.ph.i.i.i.i.i35 ], [ %i.fv, %bb.y ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i36, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = icmp ult ptr %i.fx, %.sroa.0.0.i        ; 2 uses
  %.19.i.i.i.i.i38 = select i1 %i.fy, ptr %.0811.i.i.i.i.i37, ptr %.012.i.i.i.i.i36 ; 4 uses
  %.1.in.v.i.i.i.i.i39 = select i1 %i.fy, i64 24, i64 16
  %.1.in.i.i.i.i.i40 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i36, i64 %.1.in.v.i.i.i.i.i39
  %.1.i.i.i.i.i41 = load ptr, ptr %.1.in.i.i.i.i.i40, align 8 ; 2 uses
  %.not.i.i.i.i.i42 = icmp eq ptr %.1.i.i.i.i.i41, null
  br i1 %.not.i.i.i.i.i42, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i35, !llvm.loop !8

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i35
  %i.fz = icmp eq ptr %.19.i.i.i.i.i38, %i.fv
  br i1 %i.fz, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i

_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i38, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = icmp ult ptr %.sroa.0.0.i, %i.gb        ; 2 uses
  %spec.select.i.i.i.i43 = select i1 %i.gc, ptr %i.fv, ptr %.19.i.i.i.i.i38
  %8 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i43, i64 32
  %spec.select.i.i44 = select i1 %i.gc, ptr %i.bc, ptr %8
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit

bb.z:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i
  %i.gd = load ptr, ptr %.018.i.i24, align 8
  %i.ge = icmp eq ptr %.sroa.0.0.i, %i.gd
  %..i.i45 = select i1 %i.ge, ptr %.018.i.i24, ptr %i.bc
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit: ; preds = %bb.w, %bb.x, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit, %bb.y, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i, %bb.z
  %.sink.i.i31 = phi ptr [ %i.bc, %bb.y ], [ %..i.i45, %bb.z ], [ %spec.select.i.i44, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i ], [ %i.bc, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i ], [ %i.bc, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit ], [ %i.bc, %bb.x ], [ %i.bc, %bb.w ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.sink.i.i31, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  %.not106 = icmp eq ptr %i.gg, %.sroa.3.0.i
  br i1 %.not106, label %.preheader222, label %bb.aa

bb.aa:                                            ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr null, ptr %2, align 8
  call void @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE6ModifyIZNSA_3SetES4_S6_EUlPS6_E_EEvS4_T_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %.sroa.0.0.i, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.preheader222

.preheader222:                                    ; preds = %bb.aa, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit
  br label %bb.ab

bb.ab:                                            ; preds = %.preheader222, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i
  %i.gh = phi ptr [ %.0.lcssa.i.i, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %i.eg, %.preheader222 ] ; 4 uses
  %.promoted.i148 = phi ptr [ %.promoted.i144, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %.promoted.i, %.preheader222 ]
  %i.gi = phi i32 [ %i.hu, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %i.ei, %.preheader222 ] ; 3 uses
  %i.gj = phi ptr [ %i.ic, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %.promoted.i, %.preheader222 ] ; 2 uses
  %.not.i46 = icmp eq ptr %i.gh, null
  br i1 %.not.i46, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorneERKSD_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8            ; 2 uses
  %.not8.i = icmp eq ptr %i.gl, null
  br i1 %.not8.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gm = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.gj) #17 ; 6 uses
  store ptr %i.gm, ptr %i.f, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %bb.ae, label %.lr.ph.loopexit

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.promoted.i145 = phi ptr [ %i.gm, %bb.ad ], [ %.promoted.i148, %bb.ac ]
  %i.gp = phi ptr [ %i.gm, %bb.ad ], [ %i.gj, %bb.ac ]
  %i.gq = icmp eq i32 %i.gi, 0
  br i1 %i.gq, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorneERKSD_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ae
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gh, i64 20
  %i.gs = sext i32 %i.gi to i64
  %.pre150 = load i32, ptr %i.gr, align 4
  br label %bb.af

bb.af:                                            ; preds = %.critedge.i, %.preheader.i
  %indvars.iv.i47 = phi i64 [ %i.gs, %.preheader.i ], [ %indvars.iv.next.i48, %.critedge.i ] ; 4 uses
  %indvars.iv.next.i48 = add nsw i64 %indvars.iv.i47, -1 ; 4 uses
  %i.gt = trunc nsw i64 %indvars.iv.next.i48 to i32 ; 2 uses
  store i32 %i.gt, ptr %6, align 8
  %i.gu = lshr exact i32 -2147483648, %i.gt
  %i.gv = and i32 %i.gu, %.pre150
  %.not.i.not.i = icmp eq i32 %i.gv, 0
  br i1 %.not.i.not.i, label %bb.ag, label %.critedge.i

bb.ag:                                            ; preds = %bb.af
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.i48
  %i.gx = load ptr, ptr %i.gw, align 8            ; 4 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %.critedge.i, label %bb.ah

.critedge.i:                                      ; preds = %bb.ag, %bb.af
  %i.gz = icmp eq i64 %indvars.iv.next.i48, 0
  br i1 %i.gz, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorneERKSD_.exit, label %bb.af, !llvm.loop !11

bb.ah:                                            ; preds = %bb.ag
  %i.ha = trunc nuw nsw i64 %indvars.iv.i47 to i32 ; 2 uses
  store i32 %i.ha, ptr %6, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.hc = load i8, ptr %i.hb, align 8
  %i.hd = sext i8 %i.hc to i64
  %i.he = icmp slt i64 %indvars.iv.i47, %i.hd
  br i1 %i.he, label %.lr.ph.i.i49, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i

.lr.ph.i.i49:                                     ; preds = %bb.ah, %.lr.ph.i.i49
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %.lr.ph.i.i49 ], [ %indvars.iv.i47, %bb.ah ] ; 4 uses
  %.041.i.i = phi ptr [ %.1.i.i51, %.lr.ph.i.i49 ], [ %i.gx, %bb.ah ] ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 20
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = trunc nuw nsw i64 %indvars.iv32.i to i32
  %i.hi = lshr exact i32 -2147483648, %i.hh
  %i.hj = and i32 %i.hg, %i.hi
  %.not.i.i.not.i.i = icmp eq i32 %i.hj, 0        ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 32
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %indvars.iv32.i
  %i.hm = load ptr, ptr %i.hl, align 8            ; 3 uses
  %.not.i10.i = icmp eq ptr %i.hm, null           ; 2 uses
  %spec.select.i = select i1 %.not.i10.i, ptr null, ptr %.041.i.i
  %.sink.i.i50 = select i1 %.not.i.i.not.i.i, ptr %i.hm, ptr %spec.select.i
  %i.hn = select i1 %.not.i.i.not.i.i, i1 true, i1 %.not.i10.i
  %.1.i.i51 = select i1 %i.hn, ptr %.041.i.i, ptr %i.hm ; 3 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv32.i
  store ptr %.sink.i.i50, ptr %i.ho, align 8
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 3 uses
  %i.hp = trunc nuw nsw i64 %indvars.iv.next33.i to i32 ; 2 uses
  store i32 %i.hp, ptr %6, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %.1.i.i51, i64 16
  %i.hr = load i8, ptr %i.hq, align 8
  %i.hs = sext i8 %i.hr to i64
  %i.ht = icmp slt i64 %indvars.iv.next33.i, %i.hs
  br i1 %i.ht, label %.lr.ph.i.i49, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i, !llvm.loop !9

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i: ; preds = %.lr.ph.i.i49, %bb.ah
  %i.hu = phi i32 [ %i.ha, %bb.ah ], [ %i.hp, %.lr.ph.i.i49 ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %i.gx, %bb.ah ], [ %.1.i.i51, %.lr.ph.i.i49 ] ; 5 uses
  store ptr %.0.lcssa.i.i, ptr %i.i, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8            ; 2 uses
  %.not9.i = icmp eq ptr %i.hw, null
  br i1 %.not9.i, label %.thread.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  %i.hy = load ptr, ptr %i.hx, align 8            ; 4 uses
  store ptr %i.hy, ptr %i.f, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.ia = load i64, ptr %i.hz, align 8
  %i.ib = inttoptr i64 %i.ia to ptr
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i

.thread.i:                                        ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 8
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8iteratordeEv.exit.i: ; preds = %.thread.i, %bb.ai
  %.promoted.i144 = phi ptr [ %.promoted.i145, %.thread.i ], [ %i.hy, %bb.ai ] ; 2 uses
  %i.ic = phi ptr [ %i.gp, %.thread.i ], [ %i.hy, %bb.ai ] ; 2 uses
  %.sroa.3.0.i.i = phi ptr [ %.sroa.3.0.copyload.i.i, %.thread.i ], [ %i.ib, %bb.ai ]
  %i.id = load ptr, ptr %i.g, align 8
  %.not21.i = icmp eq ptr %.sroa.3.0.i.i, %i.id
  br i1 %.not21.i, label %bb.ab, label %.lr.ph.loopexit, !llvm.loop !12
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::PersistentMap<int, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::WasmLoadElimination::FieldOrElementValue>>::iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.110", align 8    ; 7 uses
  %3 = alloca %"class.v8::internal::compiler::PersistentMap.0", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8                ; 4 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i32 0, ptr %0, align 8, !alias.scope !62
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !alias.scope !62
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i32 0, ptr %0, align 8, !alias.scope !63
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !alias.scope !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load i8, ptr %i.h, align 8, !noalias !63
  %i.j = icmp sgt i8 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.i, label %_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE12FindLeftmostEPKNSC_11FocusedTreeEPiPSt5arrayISF_Lm32EE.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i ], [ 0, %bb.c ] ; 4 uses
  %.041.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 36
  %i.l = load i32, ptr %i.k, align 4, !noalias !63
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = lshr exact i32 -2147483648, %i.m
  %i.o = and i32 %i.l, %i.n
  %.not.i.i.not.i.i = icmp eq i32 %i.o, 0         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 48
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !noalias !63 ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null              ; 2 uses
  %spec.select.i = select i1 %.not.i.i, ptr null, ptr %.041.i.i
  %.sink.i.i = select i1 %.not.i.i.not.i.i, ptr %i.r, ptr %spec.select.i
  %i.s = select i1 %.not.i.i.not.i.i, i1 true, i1 %.not.i.i
  %.1.i.i = select i1 %i.s, ptr %.041.i.i, ptr %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  store ptr %.sink.i.i, ptr %i.t, align 8, !alias.scope !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE
declare noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal8compiler14NodeProperties17MergeControlToEndEPNS1_7TFGraphEPNS1_21CommonOperatorBuilderEPNS1_4NodeE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4DeadEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPKNS0_8compiler19WasmLoadElimination13AbstractStateEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler19WasmLoadElimination13AbstractStateEA_S7_EEPT_m.exit, !prof !24

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #13
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler19WasmLoadElimination13AbstractStateEA_S7_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler19WasmLoadElimination13AbstractStateEA_S7_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler19WasmLoadElimination13AbstractStateEA_S7_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler19WasmLoadElimination13AbstractStateEA_S7_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler19WasmLoadElimination13AbstractStateEA_S7_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE6ModifyIZNSA_3SetES4_S6_EUlPS6_E_EEvS4_T_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<v8::internal::compiler::Node *, std::pair<v8::internal::compiler::Node *const, v8::internal::compiler::WasmLoadElimination::FieldOrElementValue>, std::_Select1st<std::pair<v8::internal::compiler::Node *const, v8::internal::compiler::WasmLoadElimination::FieldOrElementValue>>, std::less<v8::internal::compiler::Node *>, v8::internal::ZoneAllocator<std::pair<v8::internal::compiler::Node *const, v8::internal::compiler::WasmLoadElimination::FieldOrElementValue>>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"struct.std::array", align 8       ; 6 uses
  %5 = alloca %"struct.v8::internal::compiler::WasmLoadElimination::FieldOrElementValue", align 8 ; 5 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.p = load ptr, ptr %0, align 8                ; 2 uses
  %.not44.i = icmp eq ptr %i.p, null
  br i1 %.not44.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE15GetFocusedValueEPKNSA_11FocusedTreeERKS4_.exit, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %bb.a, %bb.f
  %.046.i = phi ptr [ %i.aw, %bb.f ], [ %i.p, %bb.a ] ; 13 uses
  %.03245.i = phi i32 [ %i.ax, %bb.f ], [ 0, %bb.a ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.046.i, i64 20
  %.sroa.01.0.copyload.i = load i32, ptr %i.q, align 4 ; 2 uses
  %.not36.i = icmp eq i32 %i.o, %.sroa.01.0.copyload.i
  %i.r = getelementptr inbounds nuw i8, ptr %.046.i, i64 16 ; 2 uses
  br i1 %.not36.i, label %.critedge.preheader.i, label %bb.b

.critedge.preheader.i:                            ; preds = %.lr.ph48.i
  %i.s = load i8, ptr %i.r, align 8               ; 3 uses
  %i.t = sext i8 %i.s to i32
  %i.u = icmp slt i32 %.03245.i, %i.t
  br i1 %i.u, label %.lr.ph52.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8FindHashENSA_9HashValueEPSt5arrayIPKNSA_11FocusedTreeELm32EEPi.exit

.lr.ph52.i:                                       ; preds = %.critedge.preheader.i
  %i.v = sext i32 %.03245.i to i64                ; 2 uses
  %i.w = sext i8 %i.s to i64
  %i.x = shl nsw i64 %i.v, 3                      ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.x
  %scevgep72 = getelementptr i8, ptr %.046.i, i64 32
  %scevgep73 = getelementptr i8, ptr %scevgep72, i64 %i.x
  %i.y = sub nsw i64 %i.w, %i.v
  %i.z = shl nsw i64 %i.y, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %scevgep73, i64 %i.z, i1 false)
  %i.aa = sext i8 %i.s to i32
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8FindHashENSA_9HashValueEPSt5arrayIPKNSA_11FocusedTreeELm32EEPi.exit

bb.b:                                             ; preds = %.lr.ph48.i
  %i.ab = xor i32 %.sroa.01.0.copyload.i, %i.o    ; 2 uses
  %i.ac = lshr exact i32 -2147483648, %.03245.i
  %i.ad = and i32 %i.ab, %i.ac
  %.not.i.not42.i = icmp eq i32 %i.ad, 0
  %.pre = load i8, ptr %i.r, align 8              ; 2 uses
  br i1 %.not.i.not42.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %.046.i, i64 32
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
  br i1 %.not.i.not.i, label %bb.c, label %._crit_edge.i, !llvm.loop !206

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
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE15GetFocusedValueEPKNSA_11FocusedTreeERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.au = getelementptr inbounds nuw i8, ptr %.046.i, i64 32
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ap
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = add nuw nsw i32 %.1.lcssa.i, 1          ; 2 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE15GetFocusedValueEPKNSA_11FocusedTreeERKS4_.exit, label %.lr.ph48.i, !llvm.loop !207

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8FindHashENSA_9HashValueEPSt5arrayIPKNSA_11FocusedTreeELm32EEPi.exit: ; preds = %.lr.ph52.i, %.critedge.preheader.i
  %.3.i = phi i32 [ %.03245.i, %.critedge.preheader.i ], [ %i.aa, %.lr.ph52.i ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.046.i, i64 24
  %i.az = load ptr, ptr %i.ay, align 8            ; 3 uses
  %.not11.i = icmp eq ptr %i.az, null
  br i1 %.not11.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8FindHashENSA_9HashValueEPSt5arrayIPKNSA_11FocusedTreeELm32EEPi.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not10.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE15GetFocusedValueEPKNSA_11FocusedTreeERKS4_.exit, label %.lr.ph.i.i.i.i

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
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bg = icmp eq ptr %.19.i.i.i.i, %i.bc
  br i1 %i.bg, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE15GetFocusedValueEPKNSA_11FocusedTreeERKS4_.exit, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i

_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp ult ptr %1, %i.bi                  ; 2 uses
  %spec.select.i.i.i = select i1 %i.bj, ptr %i.bc, ptr %.19.i.i.i.i
  %6 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 32
  %spec.select.i = select i1 %i.bj, ptr %0, ptr %6
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE15GetFocusedValueEPKNSA_11FocusedTreeERKS4_.exit

bb.h:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8FindHashENSA_9HashValueEPSt5arrayIPKNSA_11FocusedTreeELm32EEPi.exit
  %i.bk = load ptr, ptr %.046.i, align 8
  %i.bl = icmp eq ptr %1, %i.bk
  %..i = select i1 %i.bl, ptr %.046.i, ptr %0
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE15GetFocusedValueEPKNSA_11FocusedTreeERKS4_.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE15GetFocusedValueEPKNSA_11FocusedTreeERKS4_.exit: ; preds = %bb.f, %.thread.i, %bb.a, %bb.g, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i, %bb.h
  %.not.i3454 = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ false, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i ], [ false, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i ], [ true, %bb.a ], [ true, %.thread.i ], [ true, %bb.f ]
  %.3.i53 = phi i32 [ %.3.i, %bb.g ], [ %.3.i, %bb.h ], [ %.3.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i ], [ %.3.i, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i ], [ 0, %bb.a ], [ %i.at, %.thread.i ], [ %i.ax, %bb.f ] ; 4 uses
  %.039.i52 = phi ptr [ %.046.i, %bb.g ], [ %.046.i, %bb.h ], [ %.046.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i ], [ %.046.i, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i ], [ null, %bb.a ], [ null, %.thread.i ], [ null, %bb.f ] ; 5 uses
  %.sink.i = phi ptr [ %0, %bb.g ], [ %..i, %bb.h ], [ %spec.select.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i ], [ %0, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i ], [ %0, %bb.a ], [ %0, %.thread.i ], [ %0, %bb.f ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = load i64, ptr %2, align 8               ; 2 uses
  store i64 %i.bo, ptr %5, align 8
  %.not = icmp eq i64 %i.bn, %i.bo
  br i1 %.not, label %bb.v, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE15GetFocusedValueEPKNSA_11FocusedTreeERKS4_.exit
  br i1 %.not.i3454, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.039.i52, i64 24 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %.039.i52, align 8
  %i.bt = icmp eq ptr %i.bs, %1
  br i1 %i.bt, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8            ; 2 uses
  %i.ca = sub i64 %i.bx, %i.bz
  %i.cb = icmp ult i64 %i.ca, 56
  br i1 %i.cb, label %bb.m, label %_ZN2v88internal4Zone3NewINS0_7ZoneMapIPNS0_8compiler4NodeENS4_19WasmLoadElimination19FieldOrElementValueESt4lessIS6_EEEJRPS1_EEEPT_DpOT0_.exit, !prof !24

bb.m:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bv, i64 noundef 56) #13
  %.pre.i.i = load i64, ptr %i.by, align 8
  br label %_ZN2v88internal4Zone3NewINS0_7ZoneMapIPNS0_8compiler4NodeENS4_19WasmLoadElimination19FieldOrElementValueESt4lessIS6_EEEJRPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_7ZoneMapIPNS0_8compiler4NodeENS4_19WasmLoadElimination19FieldOrElementValueESt4lessIS6_EEEJRPS1_EEEPT_DpOT0_.exit: ; preds = %bb.l, %bb.m
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
  %.not31 = icmp eq ptr %i.cm, null
  br i1 %.not31, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapIPNS0_8compiler4NodeENS4_19WasmLoadElimination19FieldOrElementValueESt4lessIS6_EEEJRPS1_EEEPT_DpOT0_.exit
  %.not.i.i.i = icmp eq ptr %i.cm, %i.cd
  br i1 %.not.i.i.i, label %_ZN2v88internal7ZoneMapIPNS0_8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_EEaSERKS9_.exit, label %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i

_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
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

bb.o:                                             ; preds = %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i
  %i.cr = call noundef ptr @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi ptr [ %i.cr, %bb.o ], [ %i.ct, %bb.p ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.p, !llvm.loop !15

_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.p
  store ptr %.0.i.i.i.i.i.i, ptr %i.cj, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.cr, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.cv, %bb.q ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ERKSG_RT0_.exit.i.i.i, label %bb.q, !llvm.loop !16

_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ERKSG_RT0_.exit.i.i.i: ; preds = %bb.q
  store ptr %.0.i.i7.i.i.i.i, ptr %i.ck, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.cx = load i64, ptr %i.cw, align 8
  store i64 %i.cx, ptr %i.cl, align 8
  store ptr %i.cr, ptr %i.ci, align 8
  %.pre.i.i.i = load ptr, ptr %i.co, align 8
  %.pre6.i.i.i = load ptr, ptr %3, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ERKSG_RT0_.exit.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i
  %i.cy = phi ptr [ %.pre6.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ERKSG_RT0_.exit.i.i.i ], [ null, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i ]
  %i.cz = phi ptr [ %.pre.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ERKSG_RT0_.exit.i.i.i ], [ %i.cd, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i ]
  call void @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(56) %i.cz, ptr noundef %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN2v88internal7ZoneMapIPNS0_8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_EEaSERKS9_.exit

bb.s:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapIPNS0_8compiler4NodeENS4_19WasmLoadElimination19FieldOrElementValueESt4lessIS6_EEEJRPS1_EEEPT_DpOT0_.exit
  %i.da = tail call noundef i64 @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE5eraseERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %.039.i52) ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.039.i52, i64 8
  %i.dc = tail call { ptr, i8 } @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE17_M_emplace_uniqueIJRS6_RKS8_EEES5_ISt17_Rb_tree_iteratorIS9_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %.039.i52, ptr noundef nonnull align 8 dereferenceable(8) %i.db) ; 0 uses
  br label %_ZN2v88internal7ZoneMapIPNS0_8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_EEaSERKS9_.exit

_ZN2v88internal7ZoneMapIPNS0_8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_EEaSERKS9_.exit: ; preds = %bb.r, %bb.n, %bb.s
  %i.dd = call noundef i64 @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE5eraseERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.de = call { ptr, i8 } @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE17_M_emplace_uniqueIJRS4_RS8_EEES5_ISt17_Rb_tree_iteratorIS9_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal7ZoneMapIPNS0_8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_EEaSERKS9_.exit, %bb.k, %bb.i
  %.028 = phi ptr [ null, %bb.k ], [ %i.cd, %_ZN2v88internal7ZoneMapIPNS0_8compiler4NodeENS2_19WasmLoadElimination19FieldOrElementValueESt4lessIS4_EEaSERKS9_.exit ], [ null, %bb.i ]
  %i.df = call i32 @llvm.smax.i32(i32 %.3.i53, i32 1)
  %.sroa.speculated = add nsw i32 %i.df, -1
  %i.dg = zext nneg i32 %.sroa.speculated to i64
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dj = load ptr, ptr %i.di, align 8            ; 3 uses
  %i.dk = add nuw nsw i64 %i.dh, 40               ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 3 uses
  %i.do = load i64, ptr %i.dn, align 8            ; 2 uses
  %i.dp = sub i64 %i.dm, %i.do
  %i.dq = icmp ugt i64 %i.dk, %i.dp
  br i1 %i.dq, label %bb.u, label %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIPNS3_4NodeENS3_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS6_EEE11FocusedTreeEEEPvm.exit, !prof !24

bb.u:                                             ; preds = %bb.t
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dj, i64 noundef %i.dk) #13
  %.pre.i = load i64, ptr %i.dn, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIPNS3_4NodeENS3_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS6_EEE11FocusedTreeEEEPvm.exit

_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIPNS3_4NodeENS3_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS6_EEE11FocusedTreeEEEPvm.exit: ; preds = %bb.t, %bb.u
  %i.dr = phi i64 [ %.pre.i, %bb.u ], [ %i.do, %bb.t ] ; 2 uses
  %i.ds = inttoptr i64 %i.dr to ptr               ; 7 uses
  %i.dt = add i64 %i.dr, %i.dk
  store i64 %i.dt, ptr %i.dn, align 8
  %i.du = load ptr, ptr %i.a, align 8
  store ptr %i.du, ptr %i.ds, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dw = load i64, ptr %5, align 8
  store i64 %i.dw, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dy = trunc i32 %.3.i53 to i8
  store i8 %i.dy, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  store i32 %i.o, ptr %i.dz, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store ptr %.028, ptr %i.ea, align 8
  %.ptr = getelementptr inbounds nuw i8, ptr %i.ds, i64 32 ; 2 uses
  store ptr null, ptr %.ptr, align 8
  %i.eb = icmp sgt i32 %.3.i53, 0
  br i1 %i.eb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIPNS3_4NodeENS3_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS6_EEE11FocusedTreeEEEPvm.exit
  %i.ec = zext nneg i32 %.3.i53 to i64
  %i.ed = shl nuw nsw i64 %i.ec, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.ptr, ptr nonnull align 8 %4, i64 %i.ed, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIPNS3_4NodeENS3_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS6_EEE11FocusedTreeEEEPvm.exit
  store ptr %i.ds, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE15GetFocusedValueEPKNSA_11FocusedTreeERKS4_.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
end_hunk_2
begin_hunk_3_@_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE17_M_emplace_uniqueIJRS4_RS8_EEES5_ISt17_Rb_tree_iteratorIS9_EbEDpOT_:bb.a
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8
  br label %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_nodeC2IJRS4_RS8_EEERSG_DpOT_.exit

_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_nodeC2IJRS4_RS8_EEERSG_DpOT_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 4 uses
  %i.j = add i64 %i.h, 48
  store i64 %i.j, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = load ptr, ptr %1, align 8                ; 4 uses
  store ptr %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.n = load i64, ptr %2, align 8
  store i64 %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.02022.i = load ptr, ptr %i.o, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_nodeC2IJRS4_RS8_EEERSG_DpOT_.exit, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_nodeC2IJRS4_RS8_EEERSG_DpOT_.exit ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp ult ptr %i.l, %i.r                  ; 2 uses
  %.in.v.i = select i1 %i.s, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !17

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.s, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_nodeC2IJRS4_RS8_EEERSG_DpOT_.exit
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.p, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_nodeC2IJRS4_RS8_EEERSG_DpOT_.exit ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %.019.lcssa29.i, %i.u
  br i1 %i.v, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.w = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #17 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.x = phi ptr [ %.pre, %bb.c ], [ %i.r, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.w, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %i.y = icmp ult ptr %i.x, %i.l
  br i1 %i.y, label %select.unfold, label %bb.f

select.unfold:                                    ; preds = %bb.d, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.d ] ; 3 uses
  %i.z = icmp eq ptr %.sroa.4.0.i.ph, %i.p
  br i1 %i.z, label %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSJ_E.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp ult ptr %i.l, %i.ab
  br label %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSJ_E.exit

_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSJ_E.exit: ; preds = %select.unfold, %bb.e
  %i.ad = phi i1 [ %i.ac, %bb.e ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ad, ptr noundef nonnull %i.i, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #13
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSJ_E.exit
  %.sroa.08.0 = phi ptr [ %i.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSJ_E.exit ], [ %.sroa.05.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSJ_E.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.08.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE6ModifyIZNSC_3SetEiSA_EUlPSA_E_EEviT_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::WasmLoadElimination::FieldOrElementValue>>, std::_Select1st<std::pair<const int, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::WasmLoadElimination::FieldOrElementValue>>>, std::less<int>, v8::internal::ZoneAllocator<std::pair<const int, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::WasmLoadElimination::FieldOrElementValue>>>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"struct.std::array.109", align 8   ; 6 uses
  %5 = alloca %"class.v8::internal::compiler::PersistentMap.0", align 8 ; 6 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %.not44.i = icmp eq ptr %i.m, null
  br i1 %.not44.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE15GetFocusedValueEPKNSC_11FocusedTreeERKi.exit, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %bb.a, %bb.f
  %.046.i = phi ptr [ %i.at, %bb.f ], [ %i.m, %bb.a ] ; 13 uses
  %.03245.i = phi i32 [ %i.au, %bb.f ], [ 0, %bb.a ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.046.i, i64 36
  %.sroa.01.0.copyload.i = load i32, ptr %i.n, align 4 ; 2 uses
  %.not36.i = icmp eq i32 %i.l, %.sroa.01.0.copyload.i
  %i.o = getelementptr inbounds nuw i8, ptr %.046.i, i64 32 ; 2 uses
  br i1 %.not36.i, label %.critedge.preheader.i, label %bb.b

.critedge.preheader.i:                            ; preds = %.lr.ph48.i
  %i.p = load i8, ptr %i.o, align 8               ; 3 uses
  %i.q = sext i8 %i.p to i32
  %i.r = icmp slt i32 %.03245.i, %i.q
  br i1 %i.r, label %.lr.ph52.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueEPSt5arrayIPKNSC_11FocusedTreeELm32EEPi.exit

.lr.ph52.i:                                       ; preds = %.critedge.preheader.i
  %i.s = sext i32 %.03245.i to i64                ; 2 uses
  %i.t = sext i8 %i.p to i64
  %i.u = shl nsw i64 %i.s, 3                      ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.u
  %scevgep70 = getelementptr i8, ptr %.046.i, i64 48
  %scevgep71 = getelementptr i8, ptr %scevgep70, i64 %i.u
  %i.v = sub nsw i64 %i.t, %i.s
  %i.w = shl nsw i64 %i.v, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %scevgep71, i64 %i.w, i1 false)
  %i.x = sext i8 %i.p to i32
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueEPSt5arrayIPKNSC_11FocusedTreeELm32EEPi.exit

bb.b:                                             ; preds = %.lr.ph48.i
  %i.y = xor i32 %.sroa.01.0.copyload.i, %i.l     ; 2 uses
  %i.z = lshr exact i32 -2147483648, %.03245.i
  %i.aa = and i32 %i.y, %i.z
  %.not.i.not42.i = icmp eq i32 %i.aa, 0
  %.pre = load i8, ptr %i.o, align 8              ; 2 uses
  br i1 %.not.i.not42.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.046.i, i64 48
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
  br i1 %.not.i.not.i, label %bb.c, label %._crit_edge.i, !llvm.loop !215

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
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE15GetFocusedValueEPKNSC_11FocusedTreeERKi.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.046.i, i64 48
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.am
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = add nuw nsw i32 %.1.lcssa.i, 1          ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE15GetFocusedValueEPKNSC_11FocusedTreeERKi.exit, label %.lr.ph48.i, !llvm.loop !216

_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueEPSt5arrayIPKNSC_11FocusedTreeELm32EEPi.exit: ; preds = %.lr.ph52.i, %.critedge.preheader.i
  %.3.i = phi i32 [ %.03245.i, %.critedge.preheader.i ], [ %i.x, %.lr.ph52.i ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.046.i, i64 40
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %.not11.i = icmp eq ptr %i.aw, null
  br i1 %.not11.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueEPSt5arrayIPKNSC_11FocusedTreeELm32EEPi.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not10.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE15GetFocusedValueEPKNSC_11FocusedTreeERKi.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ay, %bb.g ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.az, %bb.g ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp slt i32 %i.bb, %1                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.bc, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.bc, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bd = icmp eq ptr %.19.i.i.i.i, %i.az
  br i1 %i.bd, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE15GetFocusedValueEPKNSC_11FocusedTreeERKi.exit, label %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i

_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i: ; preds = %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = icmp slt i32 %1, %i.bf                  ; 2 uses
  %spec.select.i.i.i = select i1 %i.bg, ptr %i.az, ptr %.19.i.i.i.i
  %6 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 32
  %spec.select.i = select i1 %i.bg, ptr %0, ptr %6
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE15GetFocusedValueEPKNSC_11FocusedTreeERKi.exit

bb.h:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueEPSt5arrayIPKNSC_11FocusedTreeELm32EEPi.exit
  %i.bh = load i32, ptr %.046.i, align 8
  %i.bi = icmp eq i32 %1, %i.bh
  %..i = select i1 %i.bi, ptr %.046.i, ptr %0
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE15GetFocusedValueEPKNSC_11FocusedTreeERKi.exit

_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE15GetFocusedValueEPKNSC_11FocusedTreeERKi.exit: ; preds = %bb.f, %.thread.i, %bb.a, %bb.g, %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i, %bb.h
  %.not.i3353 = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ false, %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i ], [ false, %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ], [ true, %bb.a ], [ true, %.thread.i ], [ true, %bb.f ]
  %.3.i52 = phi i32 [ %.3.i, %bb.g ], [ %.3.i, %bb.h ], [ %.3.i, %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i ], [ %.3.i, %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ], [ 0, %bb.a ], [ %i.aq, %.thread.i ], [ %i.au, %bb.f ] ; 4 uses
  %.039.i51 = phi ptr [ %.046.i, %bb.g ], [ %.046.i, %bb.h ], [ %.046.i, %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i ], [ %.046.i, %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ], [ null, %bb.a ], [ null, %.thread.i ], [ null, %bb.f ] ; 5 uses
  %.sink.i = phi ptr [ %0, %bb.g ], [ %..i, %bb.h ], [ %spec.select.i, %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i ], [ %0, %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ], [ %0, %bb.a ], [ %0, %.thread.i ], [ %0, %bb.f ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %5, align 8
  %.not = icmp eq ptr %i.bk, %i.bl
  br i1 %.not, label %bb.v, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE15GetFocusedValueEPKNSC_11FocusedTreeERKi.exit
  br i1 %.not.i3353, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.039.i51, i64 40 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bp = load i32, ptr %.039.i51, align 8
  %i.bq = icmp eq i32 %i.bp, %1
  br i1 %i.bq, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8            ; 2 uses
  %i.bx = sub i64 %i.bu, %i.bw
  %i.by = icmp ult i64 %i.bx, 56
  br i1 %i.by, label %bb.m, label %_ZN2v88internal4Zone3NewINS0_7ZoneMapIiNS0_8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS7_EEEESt4lessIiEEEJRPS1_EEEPT_DpOT0_.exit, !prof !24

bb.m:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, i64 noundef 56) #13
  %.pre.i.i = load i64, ptr %i.bv, align 8
  br label %_ZN2v88internal4Zone3NewINS0_7ZoneMapIiNS0_8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS7_EEEESt4lessIiEEEJRPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_7ZoneMapIiNS0_8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS7_EEEESt4lessIiEEEJRPS1_EEEPT_DpOT0_.exit: ; preds = %bb.l, %bb.m
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

bb.n:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapIiNS0_8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS7_EEEESt4lessIiEEEJRPS1_EEEPT_DpOT0_.exit
  %.not.i.i.i = icmp eq ptr %i.cj, %i.ca
  br i1 %.not.i.i.i, label %_ZN2v88internal7ZoneMapIiNS0_8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS5_EEEESt4lessIiEEaSERKSE_.exit, label %_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE20_Reuse_or_alloc_nodeC2ERSL_.exit.i.i.i

_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE20_Reuse_or_alloc_nodeC2ERSL_.exit.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
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

bb.o:                                             ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE20_Reuse_or_alloc_nodeC2ERSL_.exit.i.i.i
  %i.co = call noundef ptr @_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE7_M_copyILb0ENSL_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISE_ESQ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ca, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi ptr [ %i.co, %bb.o ], [ %i.cq, %bb.p ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.p, !llvm.loop !15

_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.p
  store ptr %.0.i.i.i.i.i.i, ptr %i.cg, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.co, %_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.cs, %bb.q ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE7_M_copyILb0ENSL_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISE_ERKSL_RT0_.exit.i.i.i, label %bb.q, !llvm.loop !16

_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE7_M_copyILb0ENSL_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISE_ERKSL_RT0_.exit.i.i.i: ; preds = %bb.q
  store ptr %.0.i.i7.i.i.i.i, ptr %i.ch, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cu = load i64, ptr %i.ct, align 8
  store i64 %i.cu, ptr %i.ci, align 8
  store ptr %i.co, ptr %i.cf, align 8
  %.pre.i.i.i = load ptr, ptr %i.cl, align 8
  %.pre6.i.i.i = load ptr, ptr %3, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE7_M_copyILb0ENSL_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISE_ERKSL_RT0_.exit.i.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE20_Reuse_or_alloc_nodeC2ERSL_.exit.i.i.i
  %i.cv = phi ptr [ %.pre6.i.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE7_M_copyILb0ENSL_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISE_ERKSL_RT0_.exit.i.i.i ], [ null, %_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE20_Reuse_or_alloc_nodeC2ERSL_.exit.i.i.i ]
  %i.cw = phi ptr [ %.pre.i.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE7_M_copyILb0ENSL_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISE_ERKSL_RT0_.exit.i.i.i ], [ %i.ca, %_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE20_Reuse_or_alloc_nodeC2ERSL_.exit.i.i.i ]
  call void @_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(56) %i.cw, ptr noundef %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN2v88internal7ZoneMapIiNS0_8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS5_EEEESt4lessIiEEaSERKSE_.exit

bb.s:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapIiNS0_8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS7_EEEESt4lessIiEEEJRPS1_EEEPT_DpOT0_.exit
  %i.cx = tail call noundef i64 @_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE5eraseERS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %.039.i51) ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.039.i51, i64 8
  %i.cz = tail call { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE17_M_emplace_uniqueIJRS1_RKSD_EEES0_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %.039.i51, ptr noundef nonnull align 8 dereferenceable(24) %i.cy) ; 0 uses
  br label %_ZN2v88internal7ZoneMapIiNS0_8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS5_EEEESt4lessIiEEaSERKSE_.exit

_ZN2v88internal7ZoneMapIiNS0_8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS5_EEEESt4lessIiEEaSERKSE_.exit: ; preds = %bb.r, %bb.n, %bb.s
  %i.da = call noundef i64 @_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE5eraseERS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.db = call { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE17_M_emplace_uniqueIJRiRSD_EEES0_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %5) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal7ZoneMapIiNS0_8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS5_EEEESt4lessIiEEaSERKSE_.exit, %bb.k, %bb.i
  %.027 = phi ptr [ null, %bb.k ], [ %i.ca, %_ZN2v88internal7ZoneMapIiNS0_8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS5_EEEESt4lessIiEEaSERKSE_.exit ], [ null, %bb.i ]
  %i.dc = call i32 @llvm.smax.i32(i32 %.3.i52, i32 1)
  %.sroa.speculated = add nsw i32 %i.dc, -1
  %i.dd = zext nneg i32 %.sroa.speculated to i64
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dg = load ptr, ptr %i.df, align 8            ; 3 uses
  %i.dh = add nuw nsw i64 %i.de, 56               ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 3 uses
  %i.dl = load i64, ptr %i.dk, align 8            ; 2 uses
  %i.dm = sub i64 %i.dj, %i.dl
  %i.dn = icmp ugt i64 %i.dh, %i.dm
  br i1 %i.dn, label %bb.u, label %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIiNS4_IPNS3_4NodeENS3_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS6_EEEENSA_IiEEE11FocusedTreeEEEPvm.exit, !prof !24

bb.u:                                             ; preds = %bb.t
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dg, i64 noundef %i.dh) #13
  %.pre.i = load i64, ptr %i.dk, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIiNS4_IPNS3_4NodeENS3_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS6_EEEENSA_IiEEE11FocusedTreeEEEPvm.exit

_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIiNS4_IPNS3_4NodeENS3_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS6_EEEENSA_IiEEE11FocusedTreeEEEPvm.exit: ; preds = %bb.t, %bb.u
  %i.do = phi i64 [ %.pre.i, %bb.u ], [ %i.dl, %bb.t ] ; 2 uses
  %i.dp = inttoptr i64 %i.do to ptr               ; 7 uses
  %i.dq = add i64 %i.do, %i.dh
  store i64 %i.dq, ptr %i.dk, align 8
  %i.dr = load i32, ptr %i.a, align 4
  store i32 %i.dr, ptr %i.dp, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.du = trunc i32 %.3.i52 to i8
  store i8 %i.du, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 36
  store i32 %i.l, ptr %i.dv, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  store ptr %.027, ptr %i.dw, align 8
  %.ptr = getelementptr inbounds nuw i8, ptr %i.dp, i64 48 ; 2 uses
  store ptr null, ptr %.ptr, align 8
  %i.dx = icmp sgt i32 %.3.i52, 0
  br i1 %i.dx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIiNS4_IPNS3_4NodeENS3_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS6_EEEENSA_IiEEE11FocusedTreeEEEPvm.exit
  %i.dy = zext nneg i32 %.3.i52 to i64
  %i.dz = shl nuw nsw i64 %i.dy, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.ptr, ptr nonnull align 8 %4, i64 %i.dz, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapIiNS4_IPNS3_4NodeENS3_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS6_EEEENSA_IiEEE11FocusedTreeEEEPvm.exit
  store ptr %i.dp, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE15GetFocusedValueEPKNSC_11FocusedTreeERKi.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
end_hunk_3
