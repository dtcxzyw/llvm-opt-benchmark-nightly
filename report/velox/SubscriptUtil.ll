Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SubscriptUtil?download=true
inline.NumInlined: 10385
inline.NumDeleted: 4577
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZN8facebook5velox12NullsBuilder7setNullEi:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.bmi.bzhi.64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSB_10MemoryPoolEEEESD_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESD_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.303") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(264) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1915 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !542
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !542  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.ak, %bb.f ]
  %.024.i75 = phi i64 [ %2, %bb.b ], [ %i.al, %bb.f ] ; 2 uses
  %i.n = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i75, i64 range(i64 0, 256) %i.i)
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.p = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.q = icmp eq <16 x i8> %i.p, %i.h
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = and i16 %i.r, 4095
  %i.t = zext nneg i16 %i.s to i32
  %i.u = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.w = extractelement <16 x i8> %i.p, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.t, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 4095
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.u)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !540
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !385
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i32, ptr %4, align 4, !tbaa !385
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !385
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %.critedge.i, !prof !321, !llvm.loop !16

bb.e:                                             ; preds = %.critedge.i
  %i.aj = icmp eq i8 %i.w, 0
  br i1 %i.aj, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %.022.i76, -1                   ; 2 uses
  %i.al = add i64 %i.e, %.024.i75
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !17

bb.g:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.an = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ao, align 1
  %i.ap = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.aq = add i64 %.pre-phi85, -1
  %i.ar = lshr i64 %i.aq, 12
  %i.as = add nuw nsw i64 %i.ar, 1
  %i.at = mul i64 %i.as, %i.ap                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.at
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.ap, i64 noundef %i.at)
  %.pre81 = load ptr, ptr %i.au, align 8, !tbaa !542
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.av = phi ptr [ %i.an, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.aw = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load <16 x i8>, ptr %i.ax, align 16, !tbaa !384
  %i.az = icmp slt <16 x i8> %i.ay, zeroinitializer
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = and i16 %i.ba, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.bb, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bc = shl i64 %3, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.be = phi i64 [ %i.aw, %bb.i ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bf = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !742 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bh, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !742
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bj = add i64 %i.bd, %.029                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bj, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.bk ; 3 uses
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp slt <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bp, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !1914

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bq = extractelement <16 x i8> %i.bm, i64 14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  %i.bs = add i8 %i.bq, 16
  store i8 %i.bs, ptr %i.br, align 2, !tbaa !743
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.l ]
  %.1 = phi ptr [ %i.ax, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bl, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64              ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !384
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !384
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !496
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !385
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !540, !nonnull !382, !noundef !382
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.ch ; 4 uses
  %i.cj = load i32, ptr %5, align 4, !tbaa !385
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !728
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = ptrtoint ptr %6 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !470
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cm, align 8, !tbaa !729
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.co = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.co, -256
  %i.cp = add i64 %7, 256
  %8 = and i64 %i.co, 255
  %9 = or disjoint i64 %i.cp, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !460
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cq, align 8, !tbaa !746
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1916 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !496
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1925 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !542  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3                         ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = call noundef ptr @_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %i.p, i64 noundef %i.x, i64 noundef %.0.i52, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !748
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !705 ; 13 uses
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ae = icmp ult i64 %4, 8
  br i1 %i.ae, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.au, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.al, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.an, i8 0, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.at, i8 0, i64 16, i1 false)
  %i.au = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1917

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod138 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod138)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.aw, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !1918

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ax = trunc i64 %5 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i16 %i.ax, ptr %i.ay, align 1
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !542
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !496
  %i.bc = and i64 %i.bb, -256
  %i.bd = select i1 %.not.i, i64 4294967295, i64 %i.ba
  %i.be = or i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.az, align 8, !tbaa !496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
end_hunk_0
begin_hunk_1_@_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv:bb.a
          to label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE11afterRehashEPSI_bmmmPhm.exit unwind label %bb.g, !inline_history !22

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE11afterRehashEPSI_bmmmPhm.exit: ; preds = %.noexc, %bb.f
  ret void

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #32
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE19tryEmplaceValueImplIbJbRmEEES8_INS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEEbES8_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.319") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1943 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !729
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !729  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i76 = phi i64 [ %i.j, %bb.b ], [ %i.ag, %bb.f ]
  %.025.i75 = phi i64 [ %2, %bb.b ], [ %i.ah, %bb.f ] ; 2 uses
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i75, i64 range(i64 0, 256) %i.i)
  %i.n = getelementptr inbounds nuw [128 x i8], ptr %i.l, i64 %i.m ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = and i16 %i.s, 16383
  %i.u = zext nneg i16 %i.t to i32
  %i.v = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.w = extractelement <16 x i8> %i.q, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.u, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 16383
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.v)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aa
  %i.ac = load i8, ptr %4, align 1, !tbaa !437, !range !381, !noundef !382
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !437, !range !381, !noundef !382
  %i.ae = icmp eq i8 %i.ac, %i.ad
  br i1 %i.ae, label %bb.g, label %.critedge.i, !prof !321, !llvm.loop !18

bb.e:                                             ; preds = %.critedge.i
  %i.af = icmp eq i8 %i.w, 0
  br i1 %i.af, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ag = add i64 %.023.i76, -1                   ; 2 uses
  %i.ah = add i64 %i.e, %.025.i75
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !19

bb.g:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aa
  br label %bb.p

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.aj = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !384
  %i.am = and i8 %i.al, 15
  %i.an = zext nneg i8 %i.am to i64               ; 2 uses
  %i.ao = shl i64 %i.an, %.pre-phi                ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.ao
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = shl nuw i64 1, %.pre-phi
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %i.aq, i64 noundef %i.an, i64 noundef %i.ao)
  %.pre81 = load ptr, ptr %i.ap, align 8, !tbaa !729
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre84 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi85 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre84, %bb.h ] ; 2 uses
  %i.ar = phi ptr [ %i.aj, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.as = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi85) ; 2 uses
  %i.at = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = load <16 x i8>, ptr %i.at, align 16, !tbaa !384
  %i.av = icmp slt <16 x i8> %i.au, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = and i16 %i.aw, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.ax, 16383
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16reserveForInsertEm.exit
  %i.ay = shl i64 %3, 1
  %i.az = or disjoint i64 %i.ay, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbiEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.ba = phi i64 [ %i.as, %bb.i ], [ %i.bg, %_ZN5folly3f146detail8F14ChunkISt4pairIKbiEE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bf, %_ZN5folly3f146detail8F14ChunkISt4pairIKbiEE25incrOutboundOverflowCountEv.exit ]
  %i.bb = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 15 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !761 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bd, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkISt4pairIKbiEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = add i8 %i.bd, 1
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !761
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKbiEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKbiEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bf = add i64 %i.az, %.029                    ; 2 uses
  %i.bg = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bf, i64 range(i64 0, 256) %.pre-phi85) ; 2 uses
  %i.bh = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %i.bg ; 3 uses
  %i.bi = load <16 x i8>, ptr %i.bh, align 16     ; 2 uses
  %i.bj = icmp slt <16 x i8> %i.bi, zeroinitializer
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %i.bl = and i16 %i.bk, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.bl, 16383
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !1942

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbiEE25incrOutboundOverflowCountEv.exit
  %i.bm = extractelement <16 x i8> %i.bi, i64 14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 14
  %i.bo = add i8 %i.bm, 16
  store i8 %i.bo, ptr %i.bn, align 2, !tbaa !762
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ax, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16reserveForInsertEm.exit ], [ %i.bl, %bb.l ]
  %.1 = phi ptr [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.bp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64              ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !384
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %_ZN5folly3f146detail8F14ChunkISt4pairIKbiEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKbiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKbiEE6setTagEmm.exit: ; preds = %bb.m
  %i.bu = trunc i64 %3 to i8
  store i8 %i.bu, ptr %i.br, align 1, !tbaa !384
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bq ; 4 uses
  %i.bx = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = load i8, ptr %5, align 1, !tbaa !437, !range !381, !noundef !382
  store i8 %i.by, ptr %i.bw, align 4, !tbaa !763
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.ca = load i64, ptr %6, align 8, !tbaa !409
  %i.cb = trunc i64 %i.ca to i32
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !739
  %i.cc = lshr i64 %i.bq, 1
  %i.cd = ptrtoint ptr %i.bw to i64
  %i.ce = or i64 %i.cc, %i.cd                     ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !737
  %i.ch = icmp ult i64 %i.cg, %i.ce
  br i1 %i.ch, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbiEE6setTagEmm.exit
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !409
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbiEE6setTagEmm.exit, %bb.o
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.ci, -256
  %i.cj = add i64 %7, 256
  %8 = and i64 %i.ci, 255
  %9 = or disjoint i64 %i.cj, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit
  %.sink99 = phi ptr [ %i.ai, %bb.g ], [ %i.bw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  %.lcssa97.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bq, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  store ptr %.sink99, ptr %0, align 8, !tbaa !1945
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa97.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ck, align 8, !tbaa !1948
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1949 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !496
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1960 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.328", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !729  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = mul i64 %3, %2
  store i64 %i.m, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.n = icmp eq i64 %2, 1                        ; 2 uses
  %i.o = shl i64 %3, 3
  %i.p = add i64 %i.o, 16
  %i.q = shl i64 %2, 7
  %.0.i = select i1 %i.n, i64 %i.p, i64 %i.q
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.r = mul i64 %5, %4
  store i64 %i.r, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.s = icmp eq i64 %4, 1                        ; 2 uses
  %i.t = shl i64 %5, 3
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %4, 7
  %.0.i69 = select i1 %i.s, i64 %i.u, i64 %i.v    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.w = load ptr, ptr %0, align 8, !tbaa !732    ; 2 uses
  %i.x = add i64 %.0.i69, 8
  %i.y = and i64 %i.x, -16
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !320
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i64 noundef %i.y, i64 0), !inline_history !1950 ; 16 uses
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !705
  store i8 0, ptr %i.i, align 1, !tbaa !437
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ad = icmp ult i64 %4, 8
  br i1 %i.ad, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.at, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ae, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.as, i8 0, i64 16, i1 false)
  %i.at = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1951

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod148 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.au = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.au, i8 0, i64 16, i1 false)
  %i.av = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !1952

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.ax = trunc i64 %5 to i8
  store i8 %i.ax, ptr %i.aw, align 2, !tbaa !762
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !729
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.az = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !496
  %i.bb = and i64 %i.ba, -256
  %i.bc = select i1 %.not.i, i64 4294967295, i64 %i.az
  %i.bd = or i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.ay, align 8, !tbaa !496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !750, !alias.scope !1961
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.be, align 8, !tbaa !452
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.485.0..sroa_idx, align 8, !tbaa !693
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyMapTypedILNS0_8TypeKindE3EEESt10shared_ptrINS0_10BaseVectorEEbRS5_INS1_6detail15LookupTableBaseEERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKS7_RNS0_4exec7EvalCtxEENKUliiE_clEii:bb.a
  br label %bb.aa

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEERKT_.exit.thread: ; preds = %bb.y, %bb.b, %bb.w, %bb.x, %.lr.ph.split.split.us, %.preheader, %bb.s, %_ZN8facebook5velox9functions6detail11LookupTableIiE13getMapAtIndexEi.exit42
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !2035, !nonnull !382, !align !444
  call void @_ZN8facebook5velox12NullsBuilder7setNullEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ip, i32 noundef %1)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread106, %.thread104, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEERKT_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSB_10MemoryPoolEEEESD_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESD_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.303") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(264) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2037 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !559
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !559  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.ak, %bb.f ]
  %.024.i75 = phi i64 [ %2, %bb.b ], [ %i.al, %bb.f ] ; 2 uses
  %i.n = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i75, i64 range(i64 0, 256) %i.i)
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.p = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.q = icmp eq <16 x i8> %i.p, %i.h
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = and i16 %i.r, 4095
  %i.t = zext nneg i16 %i.s to i32
  %i.u = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.w = extractelement <16 x i8> %i.p, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.t, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 4095
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.u)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !557
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !385
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i32, ptr %4, align 4, !tbaa !385
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !385
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %.critedge.i, !prof !321, !llvm.loop !26

bb.e:                                             ; preds = %.critedge.i
  %i.aj = icmp eq i8 %i.w, 0
  br i1 %i.aj, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %.022.i76, -1                   ; 2 uses
  %i.al = add i64 %i.e, %.024.i75
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !27

bb.g:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.an = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ao, align 1
  %i.ap = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.aq = add i64 %.pre-phi85, -1
  %i.ar = lshr i64 %i.aq, 12
  %i.as = add nuw nsw i64 %i.ar, 1
  %i.at = mul i64 %i.as, %i.ap                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.at
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.ap, i64 noundef %i.at)
  %.pre81 = load ptr, ptr %i.au, align 8, !tbaa !559
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.av = phi ptr [ %i.an, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.aw = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load <16 x i8>, ptr %i.ax, align 16, !tbaa !384
  %i.az = icmp slt <16 x i8> %i.ay, zeroinitializer
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = and i16 %i.ba, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.bb, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bc = shl i64 %3, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.be = phi i64 [ %i.aw, %bb.i ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bf = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !742 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bh, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !742
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bj = add i64 %i.bd, %.029                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bj, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.bk ; 3 uses
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp slt <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bp, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2036

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bq = extractelement <16 x i8> %i.bm, i64 14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  %i.bs = add i8 %i.bq, 16
  store i8 %i.bs, ptr %i.br, align 2, !tbaa !743
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.l ]
  %.1 = phi ptr [ %i.ax, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bl, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64              ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !384
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !384
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !496
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !385
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !557, !nonnull !382, !noundef !382
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.ch ; 4 uses
  %i.cj = load i32, ptr %5, align 4, !tbaa !385
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !779
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = ptrtoint ptr %6 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !470
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cm, align 8, !tbaa !780
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.co = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.co, -256
  %i.cp = add i64 %7, 256
  %8 = and i64 %i.co, 255
  %9 = or disjoint i64 %i.cp, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !460
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cq, align 8, !tbaa !746
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2038 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !496
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2047 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.401", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !559  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3                         ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = call noundef ptr @_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSB_ISC_ISD_SG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %i.p, i64 noundef %i.x, i64 noundef %.0.i52, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !786
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !705 ; 13 uses
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ae = icmp ult i64 %4, 8
  br i1 %i.ae, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.au, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.al, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.an, i8 0, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.at, i8 0, i64 16, i1 false)
  %i.au = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2039

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod138 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod138)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.aw, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2040

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ax = trunc i64 %5 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i16 %i.ax, ptr %i.ay, align 1
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !559
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !496
  %i.bc = and i64 %i.bb, -256
  %i.bd = select i1 %.not.i, i64 4294967295, i64 %i.ba
  %i.be = or i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.az, align 8, !tbaa !496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
end_hunk_2
begin_hunk_3_@_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(264) %i.at, ptr noundef nonnull %.0210, i64 noundef %i.ay)
          to label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSB_ISC_ISD_SG_EEESt17integral_constantIbLb1EEE11afterRehashEPSH_bmmmPhm.exit unwind label %bb.g, !inline_history !30

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSB_ISC_ISD_SG_EEESt17integral_constantIbLb1EEE11afterRehashEPSH_bmmmPhm.exit: ; preds = %.noexc, %bb.f
  ret void

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE19tryEmplaceValueImplIiJiRmEEES8_INS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEEbES8_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.408") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2065 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !780
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !780  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i76 = phi i64 [ %i.j, %bb.b ], [ %i.ag, %bb.f ]
  %.025.i75 = phi i64 [ %2, %bb.b ], [ %i.ah, %bb.f ] ; 2 uses
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i75, i64 range(i64 0, 256) %i.i)
  %i.n = getelementptr inbounds nuw [128 x i8], ptr %i.l, i64 %i.m ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = and i16 %i.s, 16383
  %i.u = zext nneg i16 %i.t to i32
  %i.v = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.w = extractelement <16 x i8> %i.q, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.u, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 16383
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.v)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aa
  %i.ac = load i32, ptr %4, align 4, !tbaa !385
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !385
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.g, label %.critedge.i, !prof !321, !llvm.loop !28

bb.e:                                             ; preds = %.critedge.i
  %i.af = icmp eq i8 %i.w, 0
  br i1 %i.af, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ag = add i64 %.023.i76, -1                   ; 2 uses
  %i.ah = add i64 %i.e, %.025.i75
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !29

bb.g:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aa
  br label %bb.p

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.aj = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !384
  %i.am = and i8 %i.al, 15
  %i.an = zext nneg i8 %i.am to i64               ; 2 uses
  %i.ao = shl i64 %i.an, %.pre-phi                ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.ao
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = shl nuw i64 1, %.pre-phi
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %i.aq, i64 noundef %i.an, i64 noundef %i.ao)
  %.pre81 = load ptr, ptr %i.ap, align 8, !tbaa !780
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre84 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi85 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre84, %bb.h ] ; 2 uses
  %i.ar = phi ptr [ %i.aj, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.as = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi85) ; 2 uses
  %i.at = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = load <16 x i8>, ptr %i.at, align 16, !tbaa !384
  %i.av = icmp slt <16 x i8> %i.au, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = and i16 %i.aw, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.ax, 16383
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16reserveForInsertEm.exit
  %i.ay = shl i64 %3, 1
  %i.az = or disjoint i64 %i.ay, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKiiEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.ba = phi i64 [ %i.as, %bb.i ], [ %i.bg, %_ZN5folly3f146detail8F14ChunkISt4pairIKiiEE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bf, %_ZN5folly3f146detail8F14ChunkISt4pairIKiiEE25incrOutboundOverflowCountEv.exit ]
  %i.bb = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 15 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !790 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bd, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkISt4pairIKiiEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = add i8 %i.bd, 1
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !790
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKiiEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKiiEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bf = add i64 %i.az, %.029                    ; 2 uses
  %i.bg = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bf, i64 range(i64 0, 256) %.pre-phi85) ; 2 uses
  %i.bh = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %i.bg ; 3 uses
  %i.bi = load <16 x i8>, ptr %i.bh, align 16     ; 2 uses
  %i.bj = icmp slt <16 x i8> %i.bi, zeroinitializer
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %i.bl = and i16 %i.bk, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.bl, 16383
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2064

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKiiEE25incrOutboundOverflowCountEv.exit
  %i.bm = extractelement <16 x i8> %i.bi, i64 14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 14
  %i.bo = add i8 %i.bm, 16
  store i8 %i.bo, ptr %i.bn, align 2, !tbaa !791
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ax, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16reserveForInsertEm.exit ], [ %i.bl, %bb.l ]
  %.1 = phi ptr [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.bp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64              ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !384
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %_ZN5folly3f146detail8F14ChunkISt4pairIKiiEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKiiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKiiEE6setTagEmm.exit: ; preds = %bb.m
  %i.bu = trunc i64 %3 to i8
  store i8 %i.bu, ptr %i.br, align 1, !tbaa !384
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bq ; 4 uses
  %i.bx = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = load i32, ptr %5, align 4, !tbaa !385
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !792
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.ca = load i64, ptr %6, align 8, !tbaa !409
  %i.cb = trunc i64 %i.ca to i32
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !785
  %i.cc = lshr i64 %i.bq, 1
  %i.cd = ptrtoint ptr %i.bw to i64
  %i.ce = or i64 %i.cc, %i.cd                     ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !783
  %i.ch = icmp ult i64 %i.cg, %i.ce
  br i1 %i.ch, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKiiEE6setTagEmm.exit
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !409
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKiiEE6setTagEmm.exit, %bb.o
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.ci, -256
  %i.cj = add i64 %7, 256
  %8 = and i64 %i.ci, 255
  %9 = or disjoint i64 %i.cj, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit
  %.sink99 = phi ptr [ %i.ai, %bb.g ], [ %i.bw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  %.lcssa97.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bq, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  store ptr %.sink99, ptr %0, align 8, !tbaa !2067
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa97.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ck, align 8, !tbaa !2070
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2071 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !496
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2082 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.415", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !780  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !781
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = mul i64 %3, %2
  store i64 %i.m, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.n = icmp eq i64 %2, 1                        ; 2 uses
  %i.o = shl i64 %3, 3
  %i.p = add i64 %i.o, 16
  %i.q = shl i64 %2, 7
  %.0.i = select i1 %i.n, i64 %i.p, i64 %i.q
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.r = mul i64 %5, %4
  store i64 %i.r, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.s = icmp eq i64 %4, 1                        ; 2 uses
  %i.t = shl i64 %5, 3
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %4, 7
  %.0.i69 = select i1 %i.s, i64 %i.u, i64 %i.v    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.w = load ptr, ptr %0, align 8, !tbaa !782    ; 2 uses
  %i.x = add i64 %.0.i69, 8
  %i.y = and i64 %i.x, -16
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !320
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i64 noundef %i.y, i64 0), !inline_history !2072 ; 16 uses
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !705
  store i8 0, ptr %i.i, align 1, !tbaa !437
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ad = icmp ult i64 %4, 8
  br i1 %i.ad, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.at, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ae, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.as, i8 0, i64 16, i1 false)
  %i.at = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2073

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod148 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.au = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.au, i8 0, i64 16, i1 false)
  %i.av = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2074

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.ax = trunc i64 %5 to i8
  store i8 %i.ax, ptr %i.aw, align 2, !tbaa !791
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !780
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.az = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !496
  %i.bb = and i64 %i.ba, -256
  %i.bc = select i1 %.not.i, i64 4294967295, i64 %i.az
  %i.bd = or i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.ay, align 8, !tbaa !496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !750, !alias.scope !2083
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.be, align 8, !tbaa !452
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.485.0..sroa_idx, align 8, !tbaa !693
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_3
begin_hunk_4_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyMapTypedILNS0_8TypeKindE1EEESt10shared_ptrINS0_10BaseVectorEEbRS5_INS1_6detail15LookupTableBaseEERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKS7_RNS0_4exec7EvalCtxEENKUliaE_clEia:bb.a
  br label %bb.aa

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEERKT_.exit.thread: ; preds = %bb.y, %bb.b, %bb.w, %bb.x, %.lr.ph.split.split.us, %.preheader, %bb.s, %_ZN8facebook5velox9functions6detail11LookupTableIaE13getMapAtIndexEi.exit42
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !2134, !nonnull !382, !align !444
  call void @_ZN8facebook5velox12NullsBuilder7setNullEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ip, i32 noundef %1)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread106, %.thread104, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEERKT_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSB_10MemoryPoolEEEESD_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESD_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.303") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(264) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2136 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !572
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !572  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.ak, %bb.f ]
  %.024.i75 = phi i64 [ %2, %bb.b ], [ %i.al, %bb.f ] ; 2 uses
  %i.n = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i75, i64 range(i64 0, 256) %i.i)
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.p = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.q = icmp eq <16 x i8> %i.p, %i.h
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = and i16 %i.r, 4095
  %i.t = zext nneg i16 %i.s to i32
  %i.u = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.w = extractelement <16 x i8> %i.p, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.t, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 4095
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.u)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !570
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !385
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i32, ptr %4, align 4, !tbaa !385
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !385
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %.critedge.i, !prof !321, !llvm.loop !34

bb.e:                                             ; preds = %.critedge.i
  %i.aj = icmp eq i8 %i.w, 0
  br i1 %i.aj, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %.022.i76, -1                   ; 2 uses
  %i.al = add i64 %i.e, %.024.i75
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !35

bb.g:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.an = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ao, align 1
  %i.ap = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.aq = add i64 %.pre-phi85, -1
  %i.ar = lshr i64 %i.aq, 12
  %i.as = add nuw nsw i64 %i.ar, 1
  %i.at = mul i64 %i.as, %i.ap                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.at
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.ap, i64 noundef %i.at)
  %.pre81 = load ptr, ptr %i.au, align 8, !tbaa !572
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.av = phi ptr [ %i.an, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.aw = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load <16 x i8>, ptr %i.ax, align 16, !tbaa !384
  %i.az = icmp slt <16 x i8> %i.ay, zeroinitializer
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = and i16 %i.ba, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.bb, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bc = shl i64 %3, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.be = phi i64 [ %i.aw, %bb.i ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bf = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !742 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bh, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !742
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bj = add i64 %i.bd, %.029                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bj, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.bk ; 3 uses
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp slt <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bp, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2135

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bq = extractelement <16 x i8> %i.bm, i64 14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  %i.bs = add i8 %i.bq, 16
  store i8 %i.bs, ptr %i.br, align 2, !tbaa !743
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.l ]
  %.1 = phi ptr [ %i.ax, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bl, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64              ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !384
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !384
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !496
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !385
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !570, !nonnull !382, !noundef !382
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.ch ; 4 uses
  %i.cj = load i32, ptr %5, align 4, !tbaa !385
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !808
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = ptrtoint ptr %6 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !470
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cm, align 8, !tbaa !809
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.co = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.co, -256
  %i.cp = add i64 %7, 256
  %8 = and i64 %i.co, 255
  %9 = or disjoint i64 %i.cp, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !460
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cq, align 8, !tbaa !746
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2137 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !496
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2146 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.496", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !572  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3                         ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = call noundef ptr @_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %i.p, i64 noundef %i.x, i64 noundef %.0.i52, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !815
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !705 ; 13 uses
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ae = icmp ult i64 %4, 8
  br i1 %i.ae, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.au, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.al, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.an, i8 0, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.at, i8 0, i64 16, i1 false)
  %i.au = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2138

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod138 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod138)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.aw, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2139

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ax = trunc i64 %5 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i16 %i.ax, ptr %i.ay, align 1
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !572
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !496
  %i.bc = and i64 %i.bb, -256
  %i.bd = select i1 %.not.i, i64 4294967295, i64 %i.ba
  %i.be = or i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.az, align 8, !tbaa !496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
end_hunk_4
begin_hunk_5_@_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(264) %i.at, ptr noundef nonnull %.0210, i64 noundef %i.ay)
          to label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE11afterRehashEPSI_bmmmPhm.exit unwind label %bb.g, !inline_history !38

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE11afterRehashEPSI_bmmmPhm.exit: ; preds = %.noexc, %bb.f
  ret void

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE19tryEmplaceValueImplIaJaRmEEES8_INS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEEbES8_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.503") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2164 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !809
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !809  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i76 = phi i64 [ %i.j, %bb.b ], [ %i.ag, %bb.f ]
  %.025.i75 = phi i64 [ %2, %bb.b ], [ %i.ah, %bb.f ] ; 2 uses
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i75, i64 range(i64 0, 256) %i.i)
  %i.n = getelementptr inbounds nuw [128 x i8], ptr %i.l, i64 %i.m ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = and i16 %i.s, 16383
  %i.u = zext nneg i16 %i.t to i32
  %i.v = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.w = extractelement <16 x i8> %i.q, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.u, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 16383
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.v)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aa
  %i.ac = load i8, ptr %4, align 1, !tbaa !384
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !384
  %i.ae = icmp eq i8 %i.ac, %i.ad
  br i1 %i.ae, label %bb.g, label %.critedge.i, !prof !321, !llvm.loop !36

bb.e:                                             ; preds = %.critedge.i
  %i.af = icmp eq i8 %i.w, 0
  br i1 %i.af, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ag = add i64 %.023.i76, -1                   ; 2 uses
  %i.ah = add i64 %i.e, %.025.i75
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !37

bb.g:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aa
  br label %bb.p

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.aj = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !384
  %i.am = and i8 %i.al, 15
  %i.an = zext nneg i8 %i.am to i64               ; 2 uses
  %i.ao = shl i64 %i.an, %.pre-phi                ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.ao
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = shl nuw i64 1, %.pre-phi
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %i.aq, i64 noundef %i.an, i64 noundef %i.ao)
  %.pre81 = load ptr, ptr %i.ap, align 8, !tbaa !809
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre84 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi85 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre84, %bb.h ] ; 2 uses
  %i.ar = phi ptr [ %i.aj, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.as = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi85) ; 2 uses
  %i.at = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = load <16 x i8>, ptr %i.at, align 16, !tbaa !384
  %i.av = icmp slt <16 x i8> %i.au, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = and i16 %i.aw, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.ax, 16383
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16reserveForInsertEm.exit
  %i.ay = shl i64 %3, 1
  %i.az = or disjoint i64 %i.ay, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKaiEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.ba = phi i64 [ %i.as, %bb.i ], [ %i.bg, %_ZN5folly3f146detail8F14ChunkISt4pairIKaiEE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bf, %_ZN5folly3f146detail8F14ChunkISt4pairIKaiEE25incrOutboundOverflowCountEv.exit ]
  %i.bb = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 15 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !819 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bd, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkISt4pairIKaiEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = add i8 %i.bd, 1
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !819
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKaiEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKaiEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bf = add i64 %i.az, %.029                    ; 2 uses
  %i.bg = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bf, i64 range(i64 0, 256) %.pre-phi85) ; 2 uses
  %i.bh = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %i.bg ; 3 uses
  %i.bi = load <16 x i8>, ptr %i.bh, align 16     ; 2 uses
  %i.bj = icmp slt <16 x i8> %i.bi, zeroinitializer
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %i.bl = and i16 %i.bk, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.bl, 16383
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2163

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKaiEE25incrOutboundOverflowCountEv.exit
  %i.bm = extractelement <16 x i8> %i.bi, i64 14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 14
  %i.bo = add i8 %i.bm, 16
  store i8 %i.bo, ptr %i.bn, align 2, !tbaa !820
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ax, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16reserveForInsertEm.exit ], [ %i.bl, %bb.l ]
  %.1 = phi ptr [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.bp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64              ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !384
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %_ZN5folly3f146detail8F14ChunkISt4pairIKaiEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKaiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKaiEE6setTagEmm.exit: ; preds = %bb.m
  %i.bu = trunc i64 %3 to i8
  store i8 %i.bu, ptr %i.br, align 1, !tbaa !384
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bq ; 4 uses
  %i.bx = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = load i8, ptr %5, align 1, !tbaa !384
  store i8 %i.by, ptr %i.bw, align 4, !tbaa !821
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.ca = load i64, ptr %6, align 8, !tbaa !409
  %i.cb = trunc i64 %i.ca to i32
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !814
  %i.cc = lshr i64 %i.bq, 1
  %i.cd = ptrtoint ptr %i.bw to i64
  %i.ce = or i64 %i.cc, %i.cd                     ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !812
  %i.ch = icmp ult i64 %i.cg, %i.ce
  br i1 %i.ch, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKaiEE6setTagEmm.exit
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !409
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKaiEE6setTagEmm.exit, %bb.o
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.ci, -256
  %i.cj = add i64 %7, 256
  %8 = and i64 %i.ci, 255
  %9 = or disjoint i64 %i.cj, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit
  %.sink99 = phi ptr [ %i.ai, %bb.g ], [ %i.bw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  %.lcssa97.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bq, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  store ptr %.sink99, ptr %0, align 8, !tbaa !2166
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa97.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ck, align 8, !tbaa !2169
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2170 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !496
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2181 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.510", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !809  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = mul i64 %3, %2
  store i64 %i.m, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.n = icmp eq i64 %2, 1                        ; 2 uses
  %i.o = shl i64 %3, 3
  %i.p = add i64 %i.o, 16
  %i.q = shl i64 %2, 7
  %.0.i = select i1 %i.n, i64 %i.p, i64 %i.q
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.r = mul i64 %5, %4
  store i64 %i.r, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.s = icmp eq i64 %4, 1                        ; 2 uses
  %i.t = shl i64 %5, 3
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %4, 7
  %.0.i69 = select i1 %i.s, i64 %i.u, i64 %i.v    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.w = load ptr, ptr %0, align 8, !tbaa !811    ; 2 uses
  %i.x = add i64 %.0.i69, 8
  %i.y = and i64 %i.x, -16
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !320
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i64 noundef %i.y, i64 0), !inline_history !2171 ; 16 uses
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !705
  store i8 0, ptr %i.i, align 1, !tbaa !437
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ad = icmp ult i64 %4, 8
  br i1 %i.ad, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.at, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ae, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.as, i8 0, i64 16, i1 false)
  %i.at = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2172

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod148 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.au = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.au, i8 0, i64 16, i1 false)
  %i.av = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2173

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.ax = trunc i64 %5 to i8
  store i8 %i.ax, ptr %i.aw, align 2, !tbaa !820
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !809
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.az = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !496
  %i.bb = and i64 %i.ba, -256
  %i.bc = select i1 %.not.i, i64 4294967295, i64 %i.az
  %i.bd = or i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.ay, align 8, !tbaa !496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !750, !alias.scope !2182
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.be, align 8, !tbaa !452
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.485.0..sroa_idx, align 8, !tbaa !693
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_5
begin_hunk_6_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyMapTypedILNS0_8TypeKindE2EEESt10shared_ptrINS0_10BaseVectorEEbRS5_INS1_6detail15LookupTableBaseEERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKS7_RNS0_4exec7EvalCtxEENKUlisE_clEis:bb.a
  br label %bb.aa

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEERKT_.exit.thread: ; preds = %bb.y, %bb.b, %bb.w, %bb.x, %.lr.ph.split.split.us, %.preheader, %bb.s, %_ZN8facebook5velox9functions6detail11LookupTableIsE13getMapAtIndexEi.exit42
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !2233, !nonnull !382, !align !444
  call void @_ZN8facebook5velox12NullsBuilder7setNullEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ip, i32 noundef %1)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread106, %.thread104, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEERKT_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSB_10MemoryPoolEEEESD_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESD_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.303") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(264) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2235 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !585
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !585  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.ak, %bb.f ]
  %.024.i75 = phi i64 [ %2, %bb.b ], [ %i.al, %bb.f ] ; 2 uses
  %i.n = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i75, i64 range(i64 0, 256) %i.i)
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.p = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.q = icmp eq <16 x i8> %i.p, %i.h
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = and i16 %i.r, 4095
  %i.t = zext nneg i16 %i.s to i32
  %i.u = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.w = extractelement <16 x i8> %i.p, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.t, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 4095
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.u)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !583
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !385
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i32, ptr %4, align 4, !tbaa !385
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !385
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %.critedge.i, !prof !321, !llvm.loop !42

bb.e:                                             ; preds = %.critedge.i
  %i.aj = icmp eq i8 %i.w, 0
  br i1 %i.aj, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %.022.i76, -1                   ; 2 uses
  %i.al = add i64 %i.e, %.024.i75
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !43

bb.g:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.an = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ao, align 1
  %i.ap = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.aq = add i64 %.pre-phi85, -1
  %i.ar = lshr i64 %i.aq, 12
  %i.as = add nuw nsw i64 %i.ar, 1
  %i.at = mul i64 %i.as, %i.ap                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.at
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.ap, i64 noundef %i.at)
  %.pre81 = load ptr, ptr %i.au, align 8, !tbaa !585
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.av = phi ptr [ %i.an, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.aw = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load <16 x i8>, ptr %i.ax, align 16, !tbaa !384
  %i.az = icmp slt <16 x i8> %i.ay, zeroinitializer
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = and i16 %i.ba, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.bb, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bc = shl i64 %3, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.be = phi i64 [ %i.aw, %bb.i ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bf = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !742 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bh, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !742
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bj = add i64 %i.bd, %.029                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bj, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.bk ; 3 uses
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp slt <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bp, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2234

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bq = extractelement <16 x i8> %i.bm, i64 14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  %i.bs = add i8 %i.bq, 16
  store i8 %i.bs, ptr %i.br, align 2, !tbaa !743
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.l ]
  %.1 = phi ptr [ %i.ax, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bl, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64              ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !384
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !384
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !496
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !385
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !583, !nonnull !382, !noundef !382
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.ch ; 4 uses
  %i.cj = load i32, ptr %5, align 4, !tbaa !385
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !837
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = ptrtoint ptr %6 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !470
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cm, align 8, !tbaa !838
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.co = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.co, -256
  %i.cp = add i64 %7, 256
  %8 = and i64 %i.co, 255
  %9 = or disjoint i64 %i.cp, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !460
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cq, align 8, !tbaa !746
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2236 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !496
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2245 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.591", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !585  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3                         ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = call noundef ptr @_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %i.p, i64 noundef %i.x, i64 noundef %.0.i52, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !844
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !705 ; 13 uses
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ae = icmp ult i64 %4, 8
  br i1 %i.ae, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.au, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.al, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.an, i8 0, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.at, i8 0, i64 16, i1 false)
  %i.au = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2237

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod138 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod138)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.aw, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2238

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ax = trunc i64 %5 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i16 %i.ax, ptr %i.ay, align 1
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !585
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !496
  %i.bc = and i64 %i.bb, -256
  %i.bd = select i1 %.not.i, i64 4294967295, i64 %i.ba
  %i.be = or i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.az, align 8, !tbaa !496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
end_hunk_6
begin_hunk_7_@_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(264) %i.at, ptr noundef nonnull %.0210, i64 noundef %i.ay)
          to label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE11afterRehashEPSI_bmmmPhm.exit unwind label %bb.g, !inline_history !46

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE11afterRehashEPSI_bmmmPhm.exit: ; preds = %.noexc, %bb.f
  ret void

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE19tryEmplaceValueImplIsJsRmEEES8_INS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEEbES8_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.598") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2263 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !838
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !838  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i76 = phi i64 [ %i.j, %bb.b ], [ %i.ag, %bb.f ]
  %.025.i75 = phi i64 [ %2, %bb.b ], [ %i.ah, %bb.f ] ; 2 uses
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i75, i64 range(i64 0, 256) %i.i)
  %i.n = getelementptr inbounds nuw [128 x i8], ptr %i.l, i64 %i.m ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = and i16 %i.s, 16383
  %i.u = zext nneg i16 %i.t to i32
  %i.v = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.w = extractelement <16 x i8> %i.q, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.u, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 16383
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.v)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aa
  %i.ac = load i16, ptr %4, align 2, !tbaa !590
  %i.ad = load i16, ptr %i.ab, align 2, !tbaa !590
  %i.ae = icmp eq i16 %i.ac, %i.ad
  br i1 %i.ae, label %bb.g, label %.critedge.i, !prof !321, !llvm.loop !44

bb.e:                                             ; preds = %.critedge.i
  %i.af = icmp eq i8 %i.w, 0
  br i1 %i.af, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ag = add i64 %.023.i76, -1                   ; 2 uses
  %i.ah = add i64 %i.e, %.025.i75
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !45

bb.g:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aa
  br label %bb.p

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.aj = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !384
  %i.am = and i8 %i.al, 15
  %i.an = zext nneg i8 %i.am to i64               ; 2 uses
  %i.ao = shl i64 %i.an, %.pre-phi                ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.ao
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = shl nuw i64 1, %.pre-phi
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %i.aq, i64 noundef %i.an, i64 noundef %i.ao)
  %.pre81 = load ptr, ptr %i.ap, align 8, !tbaa !838
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre84 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi85 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre84, %bb.h ] ; 2 uses
  %i.ar = phi ptr [ %i.aj, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.as = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi85) ; 2 uses
  %i.at = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = load <16 x i8>, ptr %i.at, align 16, !tbaa !384
  %i.av = icmp slt <16 x i8> %i.au, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = and i16 %i.aw, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.ax, 16383
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16reserveForInsertEm.exit
  %i.ay = shl i64 %3, 1
  %i.az = or disjoint i64 %i.ay, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKsiEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.ba = phi i64 [ %i.as, %bb.i ], [ %i.bg, %_ZN5folly3f146detail8F14ChunkISt4pairIKsiEE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bf, %_ZN5folly3f146detail8F14ChunkISt4pairIKsiEE25incrOutboundOverflowCountEv.exit ]
  %i.bb = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 15 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !848 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bd, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkISt4pairIKsiEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = add i8 %i.bd, 1
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !848
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKsiEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKsiEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bf = add i64 %i.az, %.029                    ; 2 uses
  %i.bg = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bf, i64 range(i64 0, 256) %.pre-phi85) ; 2 uses
  %i.bh = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %i.bg ; 3 uses
  %i.bi = load <16 x i8>, ptr %i.bh, align 16     ; 2 uses
  %i.bj = icmp slt <16 x i8> %i.bi, zeroinitializer
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %i.bl = and i16 %i.bk, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.bl, 16383
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2262

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKsiEE25incrOutboundOverflowCountEv.exit
  %i.bm = extractelement <16 x i8> %i.bi, i64 14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 14
  %i.bo = add i8 %i.bm, 16
  store i8 %i.bo, ptr %i.bn, align 2, !tbaa !849
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ax, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16reserveForInsertEm.exit ], [ %i.bl, %bb.l ]
  %.1 = phi ptr [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.bp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64              ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !384
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %_ZN5folly3f146detail8F14ChunkISt4pairIKsiEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKsiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKsiEE6setTagEmm.exit: ; preds = %bb.m
  %i.bu = trunc i64 %3 to i8
  store i8 %i.bu, ptr %i.br, align 1, !tbaa !384
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bq ; 4 uses
  %i.bx = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = load i16, ptr %5, align 2, !tbaa !590
  store i16 %i.by, ptr %i.bw, align 4, !tbaa !850
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.ca = load i64, ptr %6, align 8, !tbaa !409
  %i.cb = trunc i64 %i.ca to i32
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !843
  %i.cc = lshr i64 %i.bq, 1
  %i.cd = ptrtoint ptr %i.bw to i64
  %i.ce = or i64 %i.cc, %i.cd                     ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !841
  %i.ch = icmp ult i64 %i.cg, %i.ce
  br i1 %i.ch, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKsiEE6setTagEmm.exit
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !409
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKsiEE6setTagEmm.exit, %bb.o
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.ci, -256
  %i.cj = add i64 %7, 256
  %8 = and i64 %i.ci, 255
  %9 = or disjoint i64 %i.cj, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit
  %.sink99 = phi ptr [ %i.ai, %bb.g ], [ %i.bw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  %.lcssa97.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bq, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  store ptr %.sink99, ptr %0, align 8, !tbaa !2265
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa97.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ck, align 8, !tbaa !2268
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2269 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !496
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2280 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.605", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !838  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = mul i64 %3, %2
  store i64 %i.m, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.n = icmp eq i64 %2, 1                        ; 2 uses
  %i.o = shl i64 %3, 3
  %i.p = add i64 %i.o, 16
  %i.q = shl i64 %2, 7
  %.0.i = select i1 %i.n, i64 %i.p, i64 %i.q
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.r = mul i64 %5, %4
  store i64 %i.r, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.s = icmp eq i64 %4, 1                        ; 2 uses
  %i.t = shl i64 %5, 3
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %4, 7
  %.0.i69 = select i1 %i.s, i64 %i.u, i64 %i.v    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.w = load ptr, ptr %0, align 8, !tbaa !840    ; 2 uses
  %i.x = add i64 %.0.i69, 8
  %i.y = and i64 %i.x, -16
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !320
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i64 noundef %i.y, i64 0), !inline_history !2270 ; 16 uses
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !705
  store i8 0, ptr %i.i, align 1, !tbaa !437
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ad = icmp ult i64 %4, 8
  br i1 %i.ad, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.at, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ae, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.as, i8 0, i64 16, i1 false)
  %i.at = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2271

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod148 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.au = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.au, i8 0, i64 16, i1 false)
  %i.av = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2272

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.ax = trunc i64 %5 to i8
  store i8 %i.ax, ptr %i.aw, align 2, !tbaa !849
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !838
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.az = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !496
  %i.bb = and i64 %i.ba, -256
  %i.bc = select i1 %.not.i, i64 4294967295, i64 %i.az
  %i.bd = or i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.ay, align 8, !tbaa !496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !750, !alias.scope !2281
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.be, align 8, !tbaa !452
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.485.0..sroa_idx, align 8, !tbaa !693
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_7
begin_hunk_8_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyMapTypedILNS0_8TypeKindE4EEESt10shared_ptrINS0_10BaseVectorEEbRS5_INS1_6detail15LookupTableBaseEERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKS7_RNS0_4exec7EvalCtxEENKUlilE_clEil:bb.a
  br label %bb.aa

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEERKT_.exit.thread: ; preds = %bb.y, %bb.b, %bb.w, %bb.x, %.lr.ph.split.split.us, %.preheader, %bb.s, %_ZN8facebook5velox9functions6detail11LookupTableIlE13getMapAtIndexEi.exit42
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !2332, !nonnull !382, !align !444
  call void @_ZN8facebook5velox12NullsBuilder7setNullEi(ptr noundef nonnull align 8 dereferenceable(32) %i.im, i32 noundef %1)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread106, %.thread104, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEERKT_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSB_10MemoryPoolEEEESD_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESD_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.303") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(264) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2334 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !600
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !600  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.ak, %bb.f ]
  %.024.i75 = phi i64 [ %2, %bb.b ], [ %i.al, %bb.f ] ; 2 uses
  %i.n = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i75, i64 range(i64 0, 256) %i.i)
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.p = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.q = icmp eq <16 x i8> %i.p, %i.h
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = and i16 %i.r, 4095
  %i.t = zext nneg i16 %i.s to i32
  %i.u = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.w = extractelement <16 x i8> %i.p, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.t, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 4095
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.u)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !598
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !385
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i32, ptr %4, align 4, !tbaa !385
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !385
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %.critedge.i, !prof !321, !llvm.loop !50

bb.e:                                             ; preds = %.critedge.i
  %i.aj = icmp eq i8 %i.w, 0
  br i1 %i.aj, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %.022.i76, -1                   ; 2 uses
  %i.al = add i64 %i.e, %.024.i75
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !51

bb.g:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.an = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ao, align 1
  %i.ap = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.aq = add i64 %.pre-phi85, -1
  %i.ar = lshr i64 %i.aq, 12
  %i.as = add nuw nsw i64 %i.ar, 1
  %i.at = mul i64 %i.as, %i.ap                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.at
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.ap, i64 noundef %i.at)
  %.pre81 = load ptr, ptr %i.au, align 8, !tbaa !600
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.av = phi ptr [ %i.an, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.aw = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load <16 x i8>, ptr %i.ax, align 16, !tbaa !384
  %i.az = icmp slt <16 x i8> %i.ay, zeroinitializer
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = and i16 %i.ba, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.bb, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bc = shl i64 %3, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.be = phi i64 [ %i.aw, %bb.i ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bf = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !742 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bh, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !742
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bj = add i64 %i.bd, %.029                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bj, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.bk ; 3 uses
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp slt <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bp, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2333

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bq = extractelement <16 x i8> %i.bm, i64 14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  %i.bs = add i8 %i.bq, 16
  store i8 %i.bs, ptr %i.br, align 2, !tbaa !743
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.l ]
  %.1 = phi ptr [ %i.ax, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bl, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64              ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !384
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !384
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !496
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !385
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !598, !nonnull !382, !noundef !382
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.ch ; 4 uses
  %i.cj = load i32, ptr %5, align 4, !tbaa !385
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !866
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = ptrtoint ptr %6 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !470
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cm, align 8, !tbaa !867
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.co = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.co, -256
  %i.cp = add i64 %7, 256
  %8 = and i64 %i.co, 255
  %9 = or disjoint i64 %i.cp, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !460
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cq, align 8, !tbaa !746
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2335 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !496
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2344 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.689", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !600  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3                         ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = call noundef ptr @_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %i.p, i64 noundef %i.x, i64 noundef %.0.i52, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !873
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !705 ; 13 uses
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ae = icmp ult i64 %4, 8
  br i1 %i.ae, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.au, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.al, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.an, i8 0, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.at, i8 0, i64 16, i1 false)
  %i.au = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2336

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod138 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod138)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.aw, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2337

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ax = trunc i64 %5 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i16 %i.ax, ptr %i.ay, align 1
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !600
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !496
  %i.bc = and i64 %i.bb, -256
  %i.bd = select i1 %.not.i, i64 4294967295, i64 %i.ba
  %i.be = or i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.az, align 8, !tbaa !496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
end_hunk_8
begin_hunk_9_@_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv:bb.a
  %i.aw = mul i64 %i.as, 40
  %reass.sub = sub i64 %i.aw, %i.av
  %i.ax = add i64 %reass.sub, 8
  %i.ay = and i64 %i.ax, -16
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !320
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(264) %i.at, ptr noundef nonnull %.0210, i64 noundef %i.ay)
          to label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE11afterRehashEPSI_bmmmPhm.exit unwind label %bb.g, !inline_history !54

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE11afterRehashEPSI_bmmmPhm.exit: ; preds = %.noexc, %bb.f
  ret void

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE19tryEmplaceValueImplIlJlRmEEES8_INS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEEbES8_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.696") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2362 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !867
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !867  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i74 = phi i64 [ %i.j, %bb.b ], [ %i.ag, %bb.f ]
  %.025.i73 = phi i64 [ %2, %bb.b ], [ %i.ah, %bb.f ] ; 2 uses
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i73, i64 range(i64 0, 256) %i.i)
  %i.n = getelementptr inbounds nuw [256 x i8], ptr %i.l, i64 %i.m ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  tail call void @llvm.prefetch.p0(ptr nonnull %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = and i16 %i.s, 16383
  %i.u = zext nneg i16 %i.t to i32
  %i.v = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.w = extractelement <16 x i8> %i.q, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.u, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 16383
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 2 uses
  tail call void @llvm.assume(i1 %i.v)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.aa ; 2 uses
  %i.ac = load i64, ptr %4, align 8, !tbaa !409
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !409
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %.loopexit, label %.critedge.i, !prof !321, !llvm.loop !52

bb.e:                                             ; preds = %.critedge.i
  %i.af = icmp eq i8 %i.w, 0
  br i1 %i.af, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ag = add i64 %.023.i74, -1                   ; 2 uses
  %i.ah = add i64 %i.e, %.025.i73
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !53

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ai = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 14
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !384
  %i.al = and i8 %i.ak, 15
  %i.am = zext nneg i8 %i.al to i64               ; 2 uses
  %i.an = shl i64 %i.am, %.pre-phi                ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.an
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread65
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = shl nuw i64 1, %.pre-phi
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %i.ap, i64 noundef %i.am, i64 noundef %i.an)
  %.pre78 = load ptr, ptr %i.ao, align 8, !tbaa !867
  %.pre79 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre81 = and i64 %.pre79, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.g
  %.pre-phi82 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre81, %bb.g ] ; 2 uses
  %i.aq = phi ptr [ %i.ai, %.thread65 ], [ %.pre78, %bb.g ] ; 3 uses
  %i.ar = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi82) ; 2 uses
  %i.as = getelementptr inbounds nuw [256 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  %i.at = load <16 x i8>, ptr %i.as, align 16, !tbaa !384
  %i.au = icmp slt <16 x i8> %i.at, zeroinitializer
  %i.av = bitcast <16 x i1> %i.au to i16
  %i.aw = and i16 %i.av, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.aw, 16383
  br i1 %.not68, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16reserveForInsertEm.exit
  %i.ax = shl i64 %3, 1
  %i.ay = or disjoint i64 %i.ax, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKliEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.az = phi i64 [ %i.ar, %bb.h ], [ %i.bf, %_ZN5folly3f146detail8F14ChunkISt4pairIKliEE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.h ], [ %i.be, %_ZN5folly3f146detail8F14ChunkISt4pairIKliEE25incrOutboundOverflowCountEv.exit ]
  %i.ba = getelementptr inbounds nuw [256 x i8], ptr %i.aq, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 15 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !877 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bc, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkISt4pairIKliEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = add i8 %i.bc, 1
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !877
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKliEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKliEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.be = add i64 %i.ay, %.029                    ; 2 uses
  %i.bf = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.be, i64 range(i64 0, 256) %.pre-phi82) ; 2 uses
  %i.bg = getelementptr inbounds nuw [256 x i8], ptr %i.aq, i64 %i.bf ; 3 uses
  %i.bh = load <16 x i8>, ptr %i.bg, align 16     ; 2 uses
  %i.bi = icmp slt <16 x i8> %i.bh, zeroinitializer
  %i.bj = bitcast <16 x i1> %i.bi to i16
  %i.bk = and i16 %i.bj, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.bk, 16383
  br i1 %.not69, label %bb.i, label %bb.k, !llvm.loop !2361

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKliEE25incrOutboundOverflowCountEv.exit
  %i.bl = extractelement <16 x i8> %i.bh, i64 14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 14
  %i.bn = add i8 %i.bl, 16
  store i8 %i.bn, ptr %i.bm, align 2, !tbaa !878
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16reserveForInsertEm.exit ], [ %i.bk, %bb.k ]
  %.1 = phi ptr [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.k ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bp = zext nneg i16 %i.bo to i64              ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bp ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !384
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %_ZN5folly3f146detail8F14ChunkISt4pairIKliEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKliEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKliEE6setTagEmm.exit: ; preds = %bb.l
  %i.bt = trunc i64 %3 to i8
  store i8 %i.bt, ptr %i.bq, align 1, !tbaa !384
  %i.bu = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bp ; 4 uses
  %i.bw = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = load i64, ptr %5, align 8, !tbaa !409
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !879
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bz = load i64, ptr %6, align 8, !tbaa !409
  %i.ca = trunc i64 %i.bz to i32
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !872
  %i.cb = ptrtoint ptr %i.bv to i64
  %i.cc = or i64 %i.cb, %i.bp                     ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !870
  %i.cf = icmp ult i64 %i.ce, %i.cc
  br i1 %i.cf, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKliEE6setTagEmm.exit
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !409
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKliEE6setTagEmm.exit, %bb.n
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.cg, -256
  %i.ch = add i64 %7, 256
  %8 = and i64 %i.cg, 255
  %9 = or disjoint i64 %i.ch, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit
  %.lcssa91.sink = phi ptr [ %i.bv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ], [ %i.ab, %bb.d ]
  %.lcssa92.sink = phi i64 [ %i.bp, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ], [ %i.aa, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa91.sink, ptr %0, align 8, !tbaa !2364
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa92.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ci, align 8, !tbaa !2367
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2368 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !496
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2379 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.703", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !867  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = mul i64 %3, %2
  store i64 %i.m, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.n = icmp eq i64 %2, 1                        ; 2 uses
  %i.o = shl i64 %3, 4
  %i.p = add i64 %i.o, 16
  %i.q = shl i64 %2, 8
  %.0.i = select i1 %i.n, i64 %i.p, i64 %i.q
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.r = mul i64 %5, %4
  store i64 %i.r, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.s = icmp eq i64 %4, 1                        ; 2 uses
  %i.t = shl i64 %5, 4
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %4, 8
  %.0.i69 = select i1 %i.s, i64 %i.u, i64 %i.v    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.w = load ptr, ptr %0, align 8, !tbaa !869    ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !320
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i64 noundef %.0.i69, i64 0), !inline_history !2369 ; 16 uses
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !705
  store i8 0, ptr %i.i, align 1, !tbaa !437
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ab = icmp ult i64 %4, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ar, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ac, i8 0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.08.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ae, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.08.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.08.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.08.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.08.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.08.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.08.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2370

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ar, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod148 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.at, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.as = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.as, i8 0, i64 16, i1 false)
  %i.at = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2371

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 14
  %i.av = trunc i64 %5 to i8
  store i8 %i.av, ptr %i.au, align 2, !tbaa !878
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !867
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ax = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !496
  %i.az = and i64 %i.ay, -256
  %i.ba = select i1 %.not.i, i64 4294967295, i64 %i.ax
  %i.bb = or i64 %i.az, %i.ba
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !750, !alias.scope !2380
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.bc, align 8, !tbaa !452
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.485.0..sroa_idx, align 8, !tbaa !693
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.586.0..sroa_idx, align 8, !tbaa !2381
  %.sroa.687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
end_hunk_9
begin_hunk_10_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyMapTypedILNS0_8TypeKindE10EEESt10shared_ptrINS0_10BaseVectorEEbRS5_INS1_6detail15LookupTableBaseEERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKS7_RNS0_4exec7EvalCtxEENKUlinE_clEin:bb.a
_ZNK5folly3f146detail21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEE8makeIterERKNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEE.exit.thread: ; preds = %bb.y, %bb.b, %bb.v, %bb.w, %.lr.ph.split.split.us, %.preheader, %_ZN8facebook5velox9functions6detail11LookupTableInE13getMapAtIndexEi.exit37
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !2431, !nonnull !382, !align !444
  call void @_ZN8facebook5velox12NullsBuilder7setNullEi(ptr noundef nonnull align 8 dereferenceable(32) %i.if, i32 noundef %1)
  br label %.thread91

.thread91:                                        ; preds = %bb.x, %.split.us, %_ZNK5folly3f146detail21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEE8makeIterERKNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEE.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSB_10MemoryPoolEEEESD_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESD_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.303") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(264) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2433 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !613
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !613  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.ak, %bb.f ]
  %.024.i75 = phi i64 [ %2, %bb.b ], [ %i.al, %bb.f ] ; 2 uses
  %i.n = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i75, i64 range(i64 0, 256) %i.i)
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.p = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.q = icmp eq <16 x i8> %i.p, %i.h
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = and i16 %i.r, 4095
  %i.t = zext nneg i16 %i.s to i32
  %i.u = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.w = extractelement <16 x i8> %i.p, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.t, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 4095
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.u)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !611
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !385
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i32, ptr %4, align 4, !tbaa !385
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !385
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %.critedge.i, !prof !321, !llvm.loop !57

bb.e:                                             ; preds = %.critedge.i
  %i.aj = icmp eq i8 %i.w, 0
  br i1 %i.aj, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %.022.i76, -1                   ; 2 uses
  %i.al = add i64 %i.e, %.024.i75
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !58

bb.g:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.an = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ao, align 1
  %i.ap = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.aq = add i64 %.pre-phi85, -1
  %i.ar = lshr i64 %i.aq, 12
  %i.as = add nuw nsw i64 %i.ar, 1
  %i.at = mul i64 %i.as, %i.ap                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.at
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.ap, i64 noundef %i.at)
  %.pre81 = load ptr, ptr %i.au, align 8, !tbaa !613
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.av = phi ptr [ %i.an, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.aw = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load <16 x i8>, ptr %i.ax, align 16, !tbaa !384
  %i.az = icmp slt <16 x i8> %i.ay, zeroinitializer
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = and i16 %i.ba, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.bb, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bc = shl i64 %3, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.be = phi i64 [ %i.aw, %bb.i ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bf = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !742 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bh, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !742
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bj = add i64 %i.bd, %.029                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bj, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.bk ; 3 uses
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp slt <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bp, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2432

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bq = extractelement <16 x i8> %i.bm, i64 14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  %i.bs = add i8 %i.bq, 16
  store i8 %i.bs, ptr %i.br, align 2, !tbaa !743
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.l ]
  %.1 = phi ptr [ %i.ax, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bl, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64              ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !384
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !384
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !496
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !385
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !611, !nonnull !382, !noundef !382
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.ch ; 5 uses
  %i.cj = load i32, ptr %5, align 4, !tbaa !385
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !892
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = ptrtoint ptr %6 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !470
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr null, ptr %i.cm, align 8, !tbaa !898
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cn, align 8, !tbaa !893
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  store i64 0, ptr %i.co, align 8, !tbaa !496
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.cp, -256
  %i.cq = add i64 %7, 256
  %8 = and i64 %i.cp, 255
  %9 = or disjoint i64 %i.cq, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !460
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cr, align 8, !tbaa !746
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2434 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !496
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2444 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.781", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !613  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = load ptr, ptr %0, align 8, !tbaa !895   ; 2 uses
  %i.ad = sub i64 0, %.0.i52
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %i.af = sub i64 0, %i.ae
  %i.ag = mul i64 %i.x, 40
  %i.ah = add i64 %i.ag, 8
  %i.ai = sub i64 %i.ah, %i.ae
  %i.aj = and i64 %i.ai, -16
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !320
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(264) %i.ac, i64 noundef %i.aj, i64 0), !inline_history !2435 ; 15 uses
  store ptr %i.an, ptr %i.h, align 8, !tbaa !705
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !611 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af ; 3 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i.preheader

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i.preheader: ; preds = %bb.a
  %xtraiter = and i64 %1, 1
  %i.ar = icmp eq i64 %1, 1
  br i1 %i.ar, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i.epil.preheader, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i.preheader.new

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i.preheader.new: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i.preheader
  %unroll_iter = and i64 %1, -2
  br label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i.preheader.new
  %.01418.i.i = phi ptr [ %i.ap, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i.preheader.new ], [ %i.bq, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i ] ; 9 uses
  %.01517.i.i = phi ptr [ %i.aq, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i.preheader.new ], [ %i.br, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i ] ; 12 uses
  %niter = phi i64 [ 0, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i.preheader.new ], [ %niter.next.1, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.as = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 8
  %i.at = load i32, ptr %.01418.i.i, align 4, !tbaa !385
  store i32 %i.at, ptr %.01517.i.i, align 8, !tbaa !892
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 8
  %i.av = load i64, ptr %i.as, align 8, !tbaa !470
  store i64 %i.av, ptr %i.au, align 8, !tbaa !470
  %i.aw = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.ay, align 8, !tbaa !893
  %i.az = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 32 ; 2 uses
  store i64 0, ptr %i.az, align 8, !tbaa !496
  %i.ba = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !414
  store <2 x ptr> %i.ba, ptr %i.aw, align 8, !tbaa !414
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.ax, align 8, !tbaa !414
  %i.bb = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 32 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !409
  store i64 %i.bc, ptr %i.az, align 8, !tbaa !409
  store i64 0, ptr %i.bb, align 8, !tbaa !409
  %i.bd = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 48
  %i.bg = load i32, ptr %i.bd, align 8, !tbaa !385
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !892
  %i.bh = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 48
  %i.bi = load i64, ptr %i.bf, align 8, !tbaa !470
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !470
  %i.bj = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 56 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 64
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.bl, align 8, !tbaa !893
  %i.bm = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 72 ; 2 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !496
  %i.bn = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !414
  store <2 x ptr> %i.bn, ptr %i.bj, align 8, !tbaa !414
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.bk, align 8, !tbaa !414
  %i.bo = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 72 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !409
  store i64 %i.bp, ptr %i.bm, align 8, !tbaa !409
  store i64 0, ptr %i.bo, align 8, !tbaa !409
  %i.bq = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 80 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 80 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i, !llvm.loop !56

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_10
begin_hunk_11_@_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv:bb.a
  ret void

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #32
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEE17afterFailedRehashEPS9_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #17 comdat align 2 !guid !2461 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !898
  %i.c = shl i64 %2, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.b, i64 %i.c, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !898
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplInJnRmEEES8_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbES8_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.303") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2463 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !893
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !893  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.ak, %bb.f ]
  %.024.i75 = phi i64 [ %2, %bb.b ], [ %i.al, %bb.f ] ; 2 uses
  %i.n = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i75, i64 range(i64 0, 256) %i.i)
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.p = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.q = icmp eq <16 x i8> %i.p, %i.h
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = and i16 %i.r, 4095
  %i.t = zext nneg i16 %i.s to i32
  %i.u = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.w = extractelement <16 x i8> %i.p, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.t, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 4095
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.u)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !898
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !385
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i128, ptr %4, align 16, !tbaa !897
  %i.ah = load i128, ptr %i.af, align 16, !tbaa !897
  %i.ai = icmp eq i128 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %.critedge.i, !prof !321, !llvm.loop !59

bb.e:                                             ; preds = %.critedge.i
  %i.aj = icmp eq i8 %i.w, 0
  br i1 %i.aj, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %.022.i76, -1                   ; 2 uses
  %i.al = add i64 %i.e, %.024.i75
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !60

bb.g:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.an = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ao, align 1
  %i.ap = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.aq = add i64 %.pre-phi85, -1
  %i.ar = lshr i64 %i.aq, 12
  %i.as = add nuw nsw i64 %i.ar, 1
  %i.at = mul i64 %i.as, %i.ap                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.at
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.ap, i64 noundef %i.at)
  %.pre81 = load ptr, ptr %i.au, align 8, !tbaa !893
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.av = phi ptr [ %i.an, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.aw = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load <16 x i8>, ptr %i.ax, align 16, !tbaa !384
  %i.az = icmp slt <16 x i8> %i.ay, zeroinitializer
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = and i16 %i.ba, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.bb, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bc = shl i64 %3, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.be = phi i64 [ %i.aw, %bb.i ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bf = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !742 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bh, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !742
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bj = add i64 %i.bd, %.029                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bj, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.bk ; 3 uses
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp slt <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bp, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2462

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bq = extractelement <16 x i8> %i.bm, i64 14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  %i.bs = add i8 %i.bq, 16
  store i8 %i.bs, ptr %i.br, align 2, !tbaa !743
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.l ]
  %.1 = phi ptr [ %i.ax, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bl, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64              ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !384
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !384
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !496 ; 3 uses
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !385
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !898, !nonnull !382, !noundef !382
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.ch ; 2 uses
  %i.cj = load i128, ptr %5, align 16, !tbaa !897
  store i128 %i.cj, ptr %i.ci, align 16, !tbaa !2464
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cl = load i64, ptr %6, align 8, !tbaa !409
  %i.cm = trunc i64 %i.cl to i32
  store i32 %i.cm, ptr %i.ck, align 16, !tbaa !900
  %7 = and i64 %i.cc, -256
  %i.cn = add i64 %7, 256
  %8 = and i64 %i.cc, 255
  %9 = or disjoint i64 %i.cn, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !460
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.co, align 8, !tbaa !746
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2465 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !496
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2475 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.792", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !893  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = load ptr, ptr %0, align 8, !tbaa !894   ; 2 uses
  %i.ad = sub i64 0, %.0.i52
  %i.ae = and i64 %i.ad, -16                      ; 2 uses
  %i.af = shl i64 %i.x, 5
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !320
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(264) %i.ac, i64 noundef %i.ag, i64 0), !inline_history !2466 ; 15 uses
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !705
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !898 ; 2 uses
  %i.an = sub i64 0, %i.ae
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = shl i64 %1, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.am, i64 %i.ap, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !898
  store ptr %i.am, ptr %i.i, align 8, !tbaa !904
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.aq = icmp ult i64 %4, 8
  br i1 %i.aq, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bg, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %.08.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.at, i8 0, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %.08.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %.08.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %.08.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.az, i8 0, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %.08.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bb, i8 0, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %.08.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bd, i8 0, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %.08.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bf, i8 0, i64 16, i1 false)
  %i.bg = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2467

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bg, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod140 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod140)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.bi, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
end_hunk_11
begin_hunk_12_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyMapTypedILNS0_8TypeKindE5EEESt10shared_ptrINS0_10BaseVectorEEbRS5_INS1_6detail15LookupTableBaseEERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKS7_RNS0_4exec7EvalCtxEENKUlifE_clEif:bb.a
  br label %bb.ak

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEERKT_.exit.thread: ; preds = %bb.ai, %bb.b, %bb.ag, %bb.ah, %.lr.ph.split.split.us, %.preheader, %bb.x, %_ZN8facebook5velox9functions6detail11LookupTableIfE13getMapAtIndexEi.exit42
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !2541, !nonnull !382, !align !444
  call void @_ZN8facebook5velox12NullsBuilder7setNullEi(ptr noundef nonnull align 8 dereferenceable(32) %i.kk, i32 noundef %1)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.thread110, %.thread108, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEERKT_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSD_10MemoryPoolEEEESF_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.303") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(264) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2543 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !626
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !626  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.ak, %bb.f ]
  %.024.i75 = phi i64 [ %2, %bb.b ], [ %i.al, %bb.f ] ; 2 uses
  %i.n = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i75, i64 range(i64 0, 256) %i.i)
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.p = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.q = icmp eq <16 x i8> %i.p, %i.h
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = and i16 %i.r, 4095
  %i.t = zext nneg i16 %i.s to i32
  %i.u = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.w = extractelement <16 x i8> %i.p, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.t, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 4095
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.u)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !624
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !385
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i32, ptr %4, align 4, !tbaa !385
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !385
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %.critedge.i, !prof !321, !llvm.loop !65

bb.e:                                             ; preds = %.critedge.i
  %i.aj = icmp eq i8 %i.w, 0
  br i1 %i.aj, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %.022.i76, -1                   ; 2 uses
  %i.al = add i64 %i.e, %.024.i75
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !66

bb.g:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.an = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ao, align 1
  %i.ap = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.aq = add i64 %.pre-phi85, -1
  %i.ar = lshr i64 %i.aq, 12
  %i.as = add nuw nsw i64 %i.ar, 1
  %i.at = mul i64 %i.as, %i.ap                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.at
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.ap, i64 noundef %i.at)
  %.pre81 = load ptr, ptr %i.au, align 8, !tbaa !626
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.av = phi ptr [ %i.an, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.aw = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load <16 x i8>, ptr %i.ax, align 16, !tbaa !384
  %i.az = icmp slt <16 x i8> %i.ay, zeroinitializer
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = and i16 %i.ba, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.bb, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bc = shl i64 %3, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.be = phi i64 [ %i.aw, %bb.i ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bf = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !742 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bh, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !742
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bj = add i64 %i.bd, %.029                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bj, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.bk ; 3 uses
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp slt <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bp, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2542

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bq = extractelement <16 x i8> %i.bm, i64 14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  %i.bs = add i8 %i.bq, 16
  store i8 %i.bs, ptr %i.br, align 2, !tbaa !743
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.l ]
  %.1 = phi ptr [ %i.ax, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bl, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64              ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !384
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !384
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !496
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !385
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !624, !nonnull !382, !noundef !382
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.ch ; 4 uses
  %i.cj = load i32, ptr %5, align 4, !tbaa !385
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !920
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = ptrtoint ptr %6 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !470
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cm, align 8, !tbaa !921
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.co = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.co, -256
  %i.cp = add i64 %7, 256
  %8 = and i64 %i.co, 255
  %9 = or disjoint i64 %i.cp, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !460
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cq, align 8, !tbaa !746
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2544 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !496
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2553 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.865", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !626  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3                         ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = call noundef ptr @_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %i.p, i64 noundef %i.x, i64 noundef %.0.i52, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !928
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !705 ; 13 uses
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ae = icmp ult i64 %4, 8
  br i1 %i.ae, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.au, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.al, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.an, i8 0, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.at, i8 0, i64 16, i1 false)
  %i.au = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2545

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod138 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod138)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.aw, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2546

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ax = trunc i64 %5 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i16 %i.ax, ptr %i.ay, align 1
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !626
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !496
  %i.bc = and i64 %i.bb, -256
  %i.bd = select i1 %.not.i, i64 4294967295, i64 %i.ba
  %i.be = or i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.az, align 8, !tbaa !496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
end_hunk_12
begin_hunk_13_@_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv:bb.a

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEE11afterRehashEPSK_bmmmPhm.exit: ; preds = %.noexc, %bb.f
  ret void

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE19tryEmplaceValueImplIfJfRmEEESE_INS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEEbESE_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.872") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2571 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !921
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !921  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i76 = phi i64 [ %i.j, %bb.b ], [ %i.ai, %bb.f ]
  %.025.i75 = phi i64 [ %2, %bb.b ], [ %i.aj, %bb.f ] ; 2 uses
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i75, i64 range(i64 0, 256) %i.i)
  %i.n = getelementptr inbounds nuw [128 x i8], ptr %i.l, i64 %i.m ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = and i16 %i.s, 16383
  %i.u = zext nneg i16 %i.t to i32
  %i.v = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.w = extractelement <16 x i8> %i.q, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.u, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 16383
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.v)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aa
  %i.ac = load float, ptr %4, align 4, !tbaa !631 ; 2 uses
  %i.ad = fcmp uno float %i.ac, 0.000000e+00
  %i.ae = load float, ptr %i.ab, align 4          ; 2 uses
  %i.af = fcmp uno float %i.ae, 0.000000e+00
  %or.cond.i.i = select i1 %i.ad, i1 %i.af, i1 false
  %i.ag = fcmp oeq float %i.ac, %i.ae
  %.0.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.ag
  br i1 %.0.i.i, label %bb.g, label %.critedge.i, !prof !321, !llvm.loop !67

bb.e:                                             ; preds = %.critedge.i
  %i.ah = icmp eq i8 %i.w, 0
  br i1 %i.ah, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ai = add i64 %.023.i76, -1                   ; 2 uses
  %i.aj = add i64 %i.e, %.025.i75
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !68

bb.g:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aa
  br label %bb.p

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.al = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 14
  %i.an = load i8, ptr %i.am, align 1, !tbaa !384
  %i.ao = and i8 %i.an, 15
  %i.ap = zext nneg i8 %i.ao to i64               ; 2 uses
  %i.aq = shl i64 %i.ap, %.pre-phi                ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.aq
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = shl nuw i64 1, %.pre-phi
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %i.as, i64 noundef %i.ap, i64 noundef %i.aq)
  %.pre81 = load ptr, ptr %i.ar, align 8, !tbaa !921
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre84 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi85 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre84, %bb.h ] ; 2 uses
  %i.at = phi ptr [ %i.al, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.au = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi85) ; 2 uses
  %i.av = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.au ; 2 uses
  %i.aw = load <16 x i8>, ptr %i.av, align 16, !tbaa !384
  %i.ax = icmp slt <16 x i8> %i.aw, zeroinitializer
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %i.az = and i16 %i.ay, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.az, 16383
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16reserveForInsertEm.exit
  %i.ba = shl i64 %3, 1
  %i.bb = or disjoint i64 %i.ba, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKfiEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.bc = phi i64 [ %i.au, %bb.i ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkISt4pairIKfiEE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bh, %_ZN5folly3f146detail8F14ChunkISt4pairIKfiEE25incrOutboundOverflowCountEv.exit ]
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 15 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !932 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bf, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkISt4pairIKfiEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = add i8 %i.bf, 1
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !932
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKfiEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKfiEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bh = add i64 %i.bb, %.029                    ; 2 uses
  %i.bi = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bh, i64 range(i64 0, 256) %.pre-phi85) ; 2 uses
  %i.bj = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.bi ; 3 uses
  %i.bk = load <16 x i8>, ptr %i.bj, align 16     ; 2 uses
  %i.bl = icmp slt <16 x i8> %i.bk, zeroinitializer
  %i.bm = bitcast <16 x i1> %i.bl to i16
  %i.bn = and i16 %i.bm, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.bn, 16383
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2570

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKfiEE25incrOutboundOverflowCountEv.exit
  %i.bo = extractelement <16 x i8> %i.bk, i64 14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 14
  %i.bq = add i8 %i.bo, 16
  store i8 %i.bq, ptr %i.bp, align 2, !tbaa !933
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.az, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16reserveForInsertEm.exit ], [ %i.bn, %bb.l ]
  %.1 = phi ptr [ %i.av, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16reserveForInsertEm.exit ], [ %i.bj, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.br = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bs = zext nneg i16 %i.br to i64              ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !384
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %_ZN5folly3f146detail8F14ChunkISt4pairIKfiEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKfiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKfiEE6setTagEmm.exit: ; preds = %bb.m
  %i.bw = trunc i64 %3 to i8
  store i8 %i.bw, ptr %i.bt, align 1, !tbaa !384
  %i.bx = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bs ; 4 uses
  %i.bz = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = load float, ptr %5, align 4, !tbaa !631
  store float %i.ca, ptr %i.by, align 4, !tbaa !934
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cc = load i64, ptr %6, align 8, !tbaa !409
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !927
  %i.ce = lshr i64 %i.bs, 1
  %i.cf = ptrtoint ptr %i.by to i64
  %i.cg = or i64 %i.ce, %i.cf                     ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !925
  %i.cj = icmp ult i64 %i.ci, %i.cg
  br i1 %i.cj, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKfiEE6setTagEmm.exit
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !409
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKfiEE6setTagEmm.exit, %bb.o
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.ck, -256
  %i.cl = add i64 %7, 256
  %8 = and i64 %i.ck, 255
  %9 = or disjoint i64 %i.cl, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit
  %.sink99 = phi ptr [ %i.ak, %bb.g ], [ %i.by, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit ]
  %.lcssa97.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit ]
  store ptr %.sink99, ptr %0, align 8, !tbaa !2573
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa97.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cm, align 8, !tbaa !2576
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #27

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2577 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !496
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2588 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 7 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.879", align 8 ; 17 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !921  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = mul i64 %3, %2
  store i64 %i.m, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.n = icmp eq i64 %2, 1                        ; 2 uses
  %i.o = shl i64 %3, 3
  %i.p = add i64 %i.o, 16
  %i.q = shl i64 %2, 7
  %.0.i = select i1 %i.n, i64 %i.p, i64 %i.q
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.r = mul i64 %5, %4
  store i64 %i.r, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.s = icmp eq i64 %4, 1                        ; 2 uses
  %i.t = shl i64 %5, 3
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %4, 7
  %.0.i69 = select i1 %i.s, i64 %i.u, i64 %i.v    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.w = load ptr, ptr %0, align 8, !tbaa !923    ; 2 uses
  %i.x = add i64 %.0.i69, 8
  %i.y = and i64 %i.x, -16
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !320
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i64 noundef %i.y, i64 0), !inline_history !2578 ; 16 uses
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !705
  store i8 0, ptr %i.i, align 1, !tbaa !437
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ad = icmp ult i64 %4, 8
  br i1 %i.ad, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.at, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ae, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.as, i8 0, i64 16, i1 false)
  %i.at = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2579

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod151 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod151)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.au = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.au, i8 0, i64 16, i1 false)
  %i.av = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2580

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.ax = trunc i64 %5 to i8
  store i8 %i.ax, ptr %i.aw, align 2, !tbaa !933
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !921
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.az = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !496
  %i.bb = and i64 %i.ba, -256
  %i.bc = select i1 %.not.i, i64 4294967295, i64 %i.az
  %i.bd = or i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.ay, align 8, !tbaa !496
end_hunk_13
begin_hunk_14_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyMapTypedILNS0_8TypeKindE6EEESt10shared_ptrINS0_10BaseVectorEEbRS5_INS1_6detail15LookupTableBaseEERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKS7_RNS0_4exec7EvalCtxEENKUlidE_clEid:bb.a
  br label %bb.ak

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEERKT_.exit.thread: ; preds = %bb.ai, %bb.b, %bb.ag, %bb.ah, %.lr.ph.split.split.us, %.preheader, %bb.x, %_ZN8facebook5velox9functions6detail11LookupTableIdE13getMapAtIndexEi.exit42
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !2642, !nonnull !382, !align !444
  call void @_ZN8facebook5velox12NullsBuilder7setNullEi(ptr noundef nonnull align 8 dereferenceable(32) %i.kj, i32 noundef %1)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.thread110, %.thread108, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEERKT_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSD_10MemoryPoolEEEESF_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.303") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(264) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2644 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !641
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !641  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.ak, %bb.f ]
  %.024.i75 = phi i64 [ %2, %bb.b ], [ %i.al, %bb.f ] ; 2 uses
  %i.n = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i75, i64 range(i64 0, 256) %i.i)
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.p = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.q = icmp eq <16 x i8> %i.p, %i.h
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = and i16 %i.r, 4095
  %i.t = zext nneg i16 %i.s to i32
  %i.u = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.w = extractelement <16 x i8> %i.p, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.t, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 4095
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.u)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !639
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !385
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i32, ptr %4, align 4, !tbaa !385
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !385
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %.critedge.i, !prof !321, !llvm.loop !73

bb.e:                                             ; preds = %.critedge.i
  %i.aj = icmp eq i8 %i.w, 0
  br i1 %i.aj, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %.022.i76, -1                   ; 2 uses
  %i.al = add i64 %i.e, %.024.i75
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !74

bb.g:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.an = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ao, align 1
  %i.ap = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.aq = add i64 %.pre-phi85, -1
  %i.ar = lshr i64 %i.aq, 12
  %i.as = add nuw nsw i64 %i.ar, 1
  %i.at = mul i64 %i.as, %i.ap                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.at
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.ap, i64 noundef %i.at)
  %.pre81 = load ptr, ptr %i.au, align 8, !tbaa !641
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.av = phi ptr [ %i.an, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.aw = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load <16 x i8>, ptr %i.ax, align 16, !tbaa !384
  %i.az = icmp slt <16 x i8> %i.ay, zeroinitializer
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = and i16 %i.ba, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.bb, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bc = shl i64 %3, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.be = phi i64 [ %i.aw, %bb.i ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bf = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !742 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bh, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !742
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bj = add i64 %i.bd, %.029                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bj, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.bk ; 3 uses
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp slt <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bp, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2643

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bq = extractelement <16 x i8> %i.bm, i64 14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  %i.bs = add i8 %i.bq, 16
  store i8 %i.bs, ptr %i.br, align 2, !tbaa !743
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.l ]
  %.1 = phi ptr [ %i.ax, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bl, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64              ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !384
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !384
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !496
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !385
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !639, !nonnull !382, !noundef !382
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.ch ; 4 uses
  %i.cj = load i32, ptr %5, align 4, !tbaa !385
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !959
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = ptrtoint ptr %6 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !470
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cm, align 8, !tbaa !960
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.co = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.co, -256
  %i.cp = add i64 %7, 256
  %8 = and i64 %i.co, 255
  %9 = or disjoint i64 %i.cp, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !460
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cq, align 8, !tbaa !746
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2645 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !496
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2654 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.957", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !641  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3                         ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = call noundef ptr @_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %i.p, i64 noundef %i.x, i64 noundef %.0.i52, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !966
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !705 ; 13 uses
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ae = icmp ult i64 %4, 8
  br i1 %i.ae, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.au, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.al, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.an, i8 0, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.at, i8 0, i64 16, i1 false)
  %i.au = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2646

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod138 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod138)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.aw, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2647

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ax = trunc i64 %5 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i16 %i.ax, ptr %i.ay, align 1
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !641
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !496
  %i.bc = and i64 %i.bb, -256
  %i.bd = select i1 %.not.i, i64 4294967295, i64 %i.ba
  %i.be = or i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.az, align 8, !tbaa !496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
end_hunk_14
begin_hunk_15_@_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv:bb.a
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !320
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(264) %i.at, ptr noundef nonnull %.0210, i64 noundef %i.ay)
          to label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEE11afterRehashEPSK_bmmmPhm.exit unwind label %bb.g, !inline_history !77

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEE11afterRehashEPSK_bmmmPhm.exit: ; preds = %.noexc, %bb.f
  ret void

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE19tryEmplaceValueImplIdJdRmEEESE_INS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEEbESE_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.964") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2672 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !960
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !960  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i74 = phi i64 [ %i.j, %bb.b ], [ %i.ai, %bb.f ]
  %.025.i73 = phi i64 [ %2, %bb.b ], [ %i.aj, %bb.f ] ; 2 uses
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i73, i64 range(i64 0, 256) %i.i)
  %i.n = getelementptr inbounds nuw [256 x i8], ptr %i.l, i64 %i.m ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  tail call void @llvm.prefetch.p0(ptr nonnull %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = and i16 %i.s, 16383
  %i.u = zext nneg i16 %i.t to i32
  %i.v = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.w = extractelement <16 x i8> %i.q, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.u, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 16383
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 2 uses
  tail call void @llvm.assume(i1 %i.v)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.aa ; 2 uses
  %i.ac = load double, ptr %4, align 8, !tbaa !646 ; 2 uses
  %i.ad = fcmp uno double %i.ac, 0.000000e+00
  %i.ae = load double, ptr %i.ab, align 8         ; 2 uses
  %i.af = fcmp uno double %i.ae, 0.000000e+00
  %or.cond.i.i = select i1 %i.ad, i1 %i.af, i1 false
  %i.ag = fcmp oeq double %i.ac, %i.ae
  %.0.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.ag
  br i1 %.0.i.i, label %.loopexit, label %.critedge.i, !prof !321, !llvm.loop !75

bb.e:                                             ; preds = %.critedge.i
  %i.ah = icmp eq i8 %i.w, 0
  br i1 %i.ah, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ai = add i64 %.023.i74, -1                   ; 2 uses
  %i.aj = add i64 %i.e, %.025.i73
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !76

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ak = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.am = load i8, ptr %i.al, align 1, !tbaa !384
  %i.an = and i8 %i.am, 15
  %i.ao = zext nneg i8 %i.an to i64               ; 2 uses
  %i.ap = shl i64 %i.ao, %.pre-phi                ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.ap
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread65
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = shl nuw i64 1, %.pre-phi
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %i.ar, i64 noundef %i.ao, i64 noundef %i.ap)
  %.pre78 = load ptr, ptr %i.aq, align 8, !tbaa !960
  %.pre79 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre81 = and i64 %.pre79, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.g
  %.pre-phi82 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre81, %bb.g ] ; 2 uses
  %i.as = phi ptr [ %i.ak, %.thread65 ], [ %.pre78, %bb.g ] ; 3 uses
  %i.at = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi82) ; 2 uses
  %i.au = getelementptr inbounds nuw [256 x i8], ptr %i.as, i64 %i.at ; 2 uses
  %i.av = load <16 x i8>, ptr %i.au, align 16, !tbaa !384
  %i.aw = icmp slt <16 x i8> %i.av, zeroinitializer
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = and i16 %i.ax, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.ay, 16383
  br i1 %.not68, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16reserveForInsertEm.exit
  %i.az = shl i64 %3, 1
  %i.ba = or disjoint i64 %i.az, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKdiEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bb = phi i64 [ %i.at, %bb.h ], [ %i.bh, %_ZN5folly3f146detail8F14ChunkISt4pairIKdiEE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.h ], [ %i.bg, %_ZN5folly3f146detail8F14ChunkISt4pairIKdiEE25incrOutboundOverflowCountEv.exit ]
  %i.bc = getelementptr inbounds nuw [256 x i8], ptr %i.as, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 15 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !970 ; 2 uses
  %.not.i32 = icmp eq i8 %i.be, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkISt4pairIKdiEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = add i8 %i.be, 1
  store i8 %i.bf, ptr %i.bd, align 1, !tbaa !970
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKdiEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKdiEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bg = add i64 %i.ba, %.029                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bg, i64 range(i64 0, 256) %.pre-phi82) ; 2 uses
  %i.bi = getelementptr inbounds nuw [256 x i8], ptr %i.as, i64 %i.bh ; 3 uses
  %i.bj = load <16 x i8>, ptr %i.bi, align 16     ; 2 uses
  %i.bk = icmp slt <16 x i8> %i.bj, zeroinitializer
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %i.bm = and i16 %i.bl, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.bm, 16383
  br i1 %.not69, label %bb.i, label %bb.k, !llvm.loop !2671

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKdiEE25incrOutboundOverflowCountEv.exit
  %i.bn = extractelement <16 x i8> %i.bj, i64 14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 14
  %i.bp = add i8 %i.bn, 16
  store i8 %i.bp, ptr %i.bo, align 2, !tbaa !971
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ay, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16reserveForInsertEm.exit ], [ %i.bm, %bb.k ]
  %.1 = phi ptr [ %i.au, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16reserveForInsertEm.exit ], [ %i.bi, %bb.k ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.br = zext nneg i16 %i.bq to i64              ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.1, i64 %i.br ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !384
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %_ZN5folly3f146detail8F14ChunkISt4pairIKdiEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKdiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKdiEE6setTagEmm.exit: ; preds = %bb.l
  %i.bv = trunc i64 %3 to i8
  store i8 %i.bv, ptr %i.bs, align 1, !tbaa !384
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.br ; 4 uses
  %i.by = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = load double, ptr %5, align 8, !tbaa !646
  store double %i.bz, ptr %i.bx, align 8, !tbaa !972
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cb = load i64, ptr %6, align 8, !tbaa !409
  %i.cc = trunc i64 %i.cb to i32
  store i32 %i.cc, ptr %i.ca, align 8, !tbaa !965
  %i.cd = ptrtoint ptr %i.bx to i64
  %i.ce = or i64 %i.cd, %i.br                     ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !963
  %i.ch = icmp ult i64 %i.cg, %i.ce
  br i1 %i.ch, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKdiEE6setTagEmm.exit
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !409
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKdiEE6setTagEmm.exit, %bb.n
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.ci, -256
  %i.cj = add i64 %7, 256
  %8 = and i64 %i.ci, 255
  %9 = or disjoint i64 %i.cj, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit
  %.lcssa91.sink = phi ptr [ %i.bx, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit ], [ %i.ab, %bb.d ]
  %.lcssa92.sink = phi i64 [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit ], [ %i.aa, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa91.sink, ptr %0, align 8, !tbaa !2674
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa92.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ck, align 8, !tbaa !2677
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2678 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !496
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2689 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 7 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.973", align 8 ; 17 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !960  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = mul i64 %3, %2
  store i64 %i.m, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.n = icmp eq i64 %2, 1                        ; 2 uses
  %i.o = shl i64 %3, 4
  %i.p = add i64 %i.o, 16
  %i.q = shl i64 %2, 8
  %.0.i = select i1 %i.n, i64 %i.p, i64 %i.q
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.r = mul i64 %5, %4
  store i64 %i.r, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.s = icmp eq i64 %4, 1                        ; 2 uses
  %i.t = shl i64 %5, 4
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %4, 8
  %.0.i69 = select i1 %i.s, i64 %i.u, i64 %i.v    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.w = load ptr, ptr %0, align 8, !tbaa !962    ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !320
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i64 noundef %.0.i69, i64 0), !inline_history !2679 ; 16 uses
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !705
  store i8 0, ptr %i.i, align 1, !tbaa !437
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ab = icmp ult i64 %4, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ar, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ac, i8 0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.08.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ae, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.08.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.08.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.08.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.08.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.08.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.08.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2680

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ar, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod151 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod151)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.at, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.as = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.as, i8 0, i64 16, i1 false)
  %i.at = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2681

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 14
  %i.av = trunc i64 %5 to i8
  store i8 %i.av, ptr %i.au, align 2, !tbaa !971
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !960
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ax = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !496
  %i.az = and i64 %i.ay, -256
  %i.ba = select i1 %.not.i, i64 4294967295, i64 %i.ax
  %i.bb = or i64 %i.az, %i.ba
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !750, !alias.scope !2690
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bc, align 8, !tbaa !452
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.d, ptr %.sroa.487.0..sroa_idx, align 8, !tbaa !693
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.c, ptr %.sroa.588.0..sroa_idx, align 8, !tbaa !2691
  %.sroa.689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
end_hunk_15
begin_hunk_16_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyMapTypedILNS0_8TypeKindE7EEESt10shared_ptrINS0_10BaseVectorEEbRS5_INS1_6detail15LookupTableBaseEERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKS7_RNS0_4exec7EvalCtxEENKUliNS0_10StringViewEE_clEiSN_:bb.a
_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE8makeIterERKNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEE.exit.thread: ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread107, %bb.t, %.critedge.i.i._crit_edge, %.preheader, %_ZN8facebook5velox9functions6detail11LookupTableINS0_10StringViewEE13getMapAtIndexEi.exit38
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !2735, !nonnull !382, !align !444
  call void @_ZN8facebook5velox12NullsBuilder7setNullEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ju, i32 noundef %1)
  br label %.thread111

.thread111:                                       ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE8makeIterERKNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEE.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSC_10MemoryPoolEEEESE_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESE_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.303") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(264) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2737 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !656
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !656  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.ak, %bb.f ]
  %.024.i75 = phi i64 [ %2, %bb.b ], [ %i.al, %bb.f ] ; 2 uses
  %i.n = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i75, i64 range(i64 0, 256) %i.i)
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.p = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.q = icmp eq <16 x i8> %i.p, %i.h
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = and i16 %i.r, 4095
  %i.t = zext nneg i16 %i.s to i32
  %i.u = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.w = extractelement <16 x i8> %i.p, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.t, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 4095
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.u)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !654
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !385
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i32, ptr %4, align 4, !tbaa !385
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !385
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %.critedge.i, !prof !321, !llvm.loop !80

bb.e:                                             ; preds = %.critedge.i
  %i.aj = icmp eq i8 %i.w, 0
  br i1 %i.aj, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %.022.i76, -1                   ; 2 uses
  %i.al = add i64 %i.e, %.024.i75
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !81

bb.g:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.an = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ao, align 1
  %i.ap = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.aq = add i64 %.pre-phi85, -1
  %i.ar = lshr i64 %i.aq, 12
  %i.as = add nuw nsw i64 %i.ar, 1
  %i.at = mul i64 %i.as, %i.ap                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.at
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.ap, i64 noundef %i.at)
  %.pre81 = load ptr, ptr %i.au, align 8, !tbaa !656
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.av = phi ptr [ %i.an, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.aw = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load <16 x i8>, ptr %i.ax, align 16, !tbaa !384
  %i.az = icmp slt <16 x i8> %i.ay, zeroinitializer
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = and i16 %i.ba, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.bb, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bc = shl i64 %3, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.be = phi i64 [ %i.aw, %bb.i ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bf = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !742 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bh, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !742
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bj = add i64 %i.bd, %.029                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bj, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.bk ; 3 uses
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp slt <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bp, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2736

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bq = extractelement <16 x i8> %i.bm, i64 14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  %i.bs = add i8 %i.bq, 16
  store i8 %i.bs, ptr %i.br, align 2, !tbaa !743
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.l ]
  %.1 = phi ptr [ %i.ax, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bl, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64              ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !384
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !384
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !496
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !385
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !654, !nonnull !382, !noundef !382
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.ch ; 5 uses
  %i.cj = load i32, ptr %5, align 4, !tbaa !385
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !994
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = ptrtoint ptr %6 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !470
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr null, ptr %i.cm, align 8, !tbaa !1006
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cn, align 8, !tbaa !995
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  store i64 0, ptr %i.co, align 8, !tbaa !496
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.cp, -256
  %i.cq = add i64 %7, 256
  %8 = and i64 %i.cp, 255
  %9 = or disjoint i64 %i.cq, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !460
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cr, align 8, !tbaa !746
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2738 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !496
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2748 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.1051", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !656  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = load ptr, ptr %0, align 8, !tbaa !997   ; 2 uses
  %i.ad = sub i64 0, %.0.i52
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %i.af = sub i64 0, %i.ae
  %i.ag = mul i64 %i.x, 40
  %i.ah = add i64 %i.ag, 8
  %i.ai = sub i64 %i.ah, %i.ae
  %i.aj = and i64 %i.ai, -16
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !320
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(264) %i.ac, i64 noundef %i.aj, i64 0), !inline_history !2739 ; 15 uses
  store ptr %i.an, ptr %i.h, align 8, !tbaa !705
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !654 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af ; 3 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader: ; preds = %bb.a
  %xtraiter = and i64 %1, 1
  %i.ar = icmp eq i64 %1, 1
  br i1 %i.ar, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.epil.preheader, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader.new

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader.new: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader
  %unroll_iter = and i64 %1, -2
  br label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader.new
  %.01418.i.i = phi ptr [ %i.ap, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader.new ], [ %i.bq, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i ] ; 9 uses
  %.01517.i.i = phi ptr [ %i.aq, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader.new ], [ %i.br, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i ] ; 12 uses
  %niter = phi i64 [ 0, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader.new ], [ %niter.next.1, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.as = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 8
  %i.at = load i32, ptr %.01418.i.i, align 4, !tbaa !385
  store i32 %i.at, ptr %.01517.i.i, align 8, !tbaa !994
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 8
  %i.av = load i64, ptr %i.as, align 8, !tbaa !470
  store i64 %i.av, ptr %i.au, align 8, !tbaa !470
  %i.aw = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.ay, align 8, !tbaa !995
  %i.az = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 32 ; 2 uses
  store i64 0, ptr %i.az, align 8, !tbaa !496
  %i.ba = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !414
  store <2 x ptr> %i.ba, ptr %i.aw, align 8, !tbaa !414
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.ax, align 8, !tbaa !414
  %i.bb = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 32 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !409
  store i64 %i.bc, ptr %i.az, align 8, !tbaa !409
  store i64 0, ptr %i.bb, align 8, !tbaa !409
  %i.bd = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 48
  %i.bg = load i32, ptr %i.bd, align 8, !tbaa !385
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !994
  %i.bh = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 48
  %i.bi = load i64, ptr %i.bf, align 8, !tbaa !470
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !470
  %i.bj = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 56 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 64
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.bl, align 8, !tbaa !995
  %i.bm = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 72 ; 2 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !496
  %i.bn = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !414
  store <2 x ptr> %i.bn, ptr %i.bj, align 8, !tbaa !414
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.bk, align 8, !tbaa !414
  %i.bo = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 72 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !409
  store i64 %i.bp, ptr %i.bm, align 8, !tbaa !409
  store i64 0, ptr %i.bo, align 8, !tbaa !409
  %i.bq = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 80 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 80 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i, !llvm.loop !79

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_16
begin_hunk_17_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JS6_RmEEES9_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbES9_ImmERKT_DpOT0_:bb.a
  %i.be = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !385
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.bh ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !409
  %.not.i.i.i.us.us100 = icmp eq i64 %.fr, %i.bj
  br i1 %.not.i.i.i.us.us100, label %.split46.us.us, label %.critedge.i.backedge.us.us101, !prof !1007

.split46.us.us:                                   ; preds = %bb.e
  %i.bk = load i64, ptr %i.r, align 8, !tbaa !409
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !409
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge.us.us101, !prof !1008

.critedge.i.backedge.us.us101:                    ; preds = %.split46.us.us, %bb.e
  %.not70.us.us102 = icmp eq i32 %i.bd, 0
  br i1 %.not70.us.us102, label %.critedge.i._crit_edge.split.us.split.us103, label %bb.e, !llvm.loop !82

.critedge.i._crit_edge.split.us.split.us103:      ; preds = %.critedge.i.backedge.us.us101, %.split97.us.split
  %i.bo = icmp eq i8 %i.ax, 0
  br i1 %i.bo, label %.thread68, label %bb.f, !prof !321

bb.f:                                             ; preds = %.critedge.i._crit_edge.split.us.split.us103
  %i.bp = add i64 %.022.i96.us, -1                ; 2 uses
  %i.bq = add i64 %i.e, %.024.i95.us
  %.not.i.us = icmp eq i64 %i.bp, 0
  br i1 %.not.i.us, label %.thread68, label %.split97.us.split, !llvm.loop !83

.split97:                                         ; preds = %bb.b, %bb.h
  %.022.i96 = phi i64 [ %i.cr, %bb.h ], [ %i.j, %bb.b ]
  %.024.i95 = phi i64 [ %i.cs, %bb.h ], [ %2, %bb.b ] ; 2 uses
  %i.br = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i95, i64 range(i64 0, 256) %i.i)
  %i.bs = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.br ; 3 uses
  %i.bt = load <16 x i8>, ptr %i.bs, align 16     ; 2 uses
  %i.bu = icmp eq <16 x i8> %i.bt, %i.h
  %i.bv = bitcast <16 x i1> %i.bu to i16
  %i.bw = and i16 %i.bv, 4095                     ; 2 uses
  %.not7078 = icmp eq i16 %i.bw, 0
  %i.bx = extractelement <16 x i8> %i.bt, i64 15
  br i1 %.not7078, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split97
  %i.by = zext nneg i16 %i.bw to i32
  %i.bz = icmp ne ptr %i.bs, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.041.079 = phi i32 [ %i.by, %.lr.ph ], [ %i.cd, %.critedge.i.backedge ] ; 3 uses
  %i.cb = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.079, i1 true)
  %i.cc = add nuw nsw i32 %.sroa.041.079, 4095
  %i.cd = and i32 %i.cc, %.sroa.041.079           ; 2 uses
  %i.ce = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !385
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.ch ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !409
  %.not.i.i.i = icmp eq i64 %.fr, %i.cj
  br i1 %.not.i.i.i, label %.split, label %.critedge.i.backedge, !prof !1007

.split:                                           ; preds = %bb.g
  %i.ck = load ptr, ptr %i.r, align 8, !tbaa !384
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !384
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.cl, ptr nonnull %i.co, i64 %i.t)
  %i.cp = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.cp, label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge, !prof !1008

.critedge.i.backedge:                             ; preds = %.split, %bb.g
  %.not70 = icmp eq i32 %i.cd, 0
  br i1 %.not70, label %.critedge.i._crit_edge.split, label %bb.g, !llvm.loop !82

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split97
  %i.cq = icmp eq i8 %i.bx, 0
  br i1 %i.cq, label %.thread68, label %bb.h, !prof !321

bb.h:                                             ; preds = %.critedge.i._crit_edge.split
  %i.cr = add i64 %.022.i96, -1                   ; 2 uses
  %i.cs = add i64 %i.e, %.024.i95
  %.not.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i, label %.thread68, label %.split97, !llvm.loop !83

_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread: ; preds = %.split, %.split46.us.us, %bb.c
  %.us-phi = phi i64 [ %i.be, %.split46.us.us ], [ %i.ag, %bb.c ], [ %i.ce, %.split ] ; 2 uses
  %.us-phi80 = phi ptr [ %i.ba, %.split46.us.us ], [ %i.ae, %bb.c ], [ %i.ca, %.split ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.us-phi80, i64 %.us-phi
  br label %bb.p

.thread68:                                        ; preds = %bb.h, %.critedge.i._crit_edge.split, %.critedge.i._crit_edge.split.us.split.us103, %bb.f, %.critedge.i._crit_edge.split.us.split.us.us.us, %bb.d, %..thread68_crit_edge
  %.pre-phi135 = phi i64 [ %.pre134, %..thread68_crit_edge ], [ %i.j, %.critedge.i._crit_edge.split.us.split.us103 ], [ %i.j, %.critedge.i._crit_edge.split.us.split.us.us.us ], [ %i.j, %bb.d ], [ %i.j, %bb.f ], [ %i.j, %.critedge.i._crit_edge.split ], [ %i.j, %bb.h ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread68_crit_edge ], [ %i.i, %.critedge.i._crit_edge.split.us.split.us103 ], [ %i.i, %.critedge.i._crit_edge.split.us.split.us.us.us ], [ %i.i, %bb.d ], [ %i.i, %bb.f ], [ %i.i, %.critedge.i._crit_edge.split ], [ %i.i, %bb.h ]
  %i.cu = phi ptr [ %.pre, %..thread68_crit_edge ], [ %i.l, %.critedge.i._crit_edge.split.us.split.us103 ], [ %i.l, %.critedge.i._crit_edge.split.us.split.us.us.us ], [ %i.l, %bb.d ], [ %i.l, %bb.f ], [ %i.l, %.critedge.i._crit_edge.split ], [ %i.l, %bb.h ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %.0.copyload.i.i = load i16, ptr %i.cv, align 1
  %i.cw = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.cx = add i64 %.pre-phi135, -1
  %i.cy = lshr i64 %i.cx, 12
  %i.cz = add nuw nsw i64 %i.cy, 1
  %i.da = mul i64 %i.cz, %i.cw                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.da
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.i

bb.i:                                             ; preds = %.thread68
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %.pre-phi135, i64 noundef %i.cw, i64 noundef %i.da)
  %.pre131 = load ptr, ptr %i.db, align 8, !tbaa !995
  %.pre132 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre136 = and i64 %.pre132, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread68, %bb.i
  %.pre-phi137 = phi i64 [ %.pre-phi, %.thread68 ], [ %.pre136, %bb.i ] ; 2 uses
  %i.dc = phi ptr [ %i.cu, %.thread68 ], [ %.pre131, %bb.i ] ; 3 uses
  %i.dd = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi137) ; 2 uses
  %i.de = getelementptr inbounds nuw [64 x i8], ptr %i.dc, i64 %i.dd ; 2 uses
  %i.df = load <16 x i8>, ptr %i.de, align 16, !tbaa !384
  %i.dg = icmp slt <16 x i8> %i.df, zeroinitializer
  %i.dh = bitcast <16 x i1> %i.dg to i16
  %i.di = and i16 %i.dh, 4095                     ; 2 uses
  %.not71 = icmp eq i16 %i.di, 4095
  br i1 %.not71, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.dj = shl i64 %3, 1
  %i.dk = or disjoint i64 %i.dj, 1
  br label %bb.k

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.j
  %i.dl = phi i64 [ %i.dd, %bb.j ], [ %i.dr, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.j ], [ %i.dq, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.dm = getelementptr inbounds nuw [64 x i8], ptr %i.dc, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 15 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !742 ; 2 uses
  %.not.i32 = icmp eq i8 %i.do, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dp = add i8 %i.do, 1
  store i8 %i.dp, ptr %i.dn, align 1, !tbaa !742
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.k, %bb.l
  %i.dq = add i64 %i.dk, %.029                    ; 2 uses
  %i.dr = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.dq, i64 range(i64 0, 256) %.pre-phi137) ; 2 uses
  %i.ds = getelementptr inbounds nuw [64 x i8], ptr %i.dc, i64 %i.dr ; 3 uses
  %i.dt = load <16 x i8>, ptr %i.ds, align 16     ; 2 uses
  %i.du = icmp slt <16 x i8> %i.dt, zeroinitializer
  %i.dv = bitcast <16 x i1> %i.du to i16
  %i.dw = and i16 %i.dv, 4095                     ; 2 uses
  %.not72 = icmp eq i16 %i.dw, 4095
  br i1 %.not72, label %bb.k, label %bb.m, !llvm.loop !2766

bb.m:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.dx = extractelement <16 x i8> %i.dt, i64 14
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 14
  %i.dz = add i8 %i.dx, 16
  store i8 %i.dz, ptr %i.dy, align 2, !tbaa !743
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.di, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.dw, %bb.m ]
  %.1 = phi ptr [ %i.de, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.ds, %bb.m ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.eb = zext nneg i16 %i.ea to i64              ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.1, i64 %i.eb ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !384
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.n
  %i.ef = trunc i64 %3 to i8
  store i8 %i.ef, ptr %i.ec, align 1, !tbaa !384
  %i.eg = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.eb ; 2 uses
  %i.ei = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = load i64, ptr %i.a, align 8, !tbaa !496
  %i.ek = lshr i64 %i.ej, 8                       ; 2 uses
  %i.el = trunc i64 %i.ek to i32
  store i32 %i.el, ptr %i.eh, align 4, !tbaa !385
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1006, !nonnull !382, !noundef !382
  %i.eo = and i64 %i.ek, 4294967295
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.en, i64 %i.eo ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !2768
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load i64, ptr %6, align 8, !tbaa !409
  %i.es = trunc i64 %i.er to i32
  store i32 %i.es, ptr %i.eq, align 8, !tbaa !1011
  %i.et = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.et, -256
  %i.eu = add i64 %7, 256
  %8 = and i64 %i.et, 255
  %9 = or disjoint i64 %i.eu, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %bb.p

bb.p:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink168 = phi ptr [ %i.ct, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ %i.eh, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ %i.eb, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink168, ptr %0, align 8, !tbaa !460
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ev, align 8, !tbaa !746
  ret void
}

declare noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2769 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !496
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2781 {
bb.a:
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca i8, align 1                       ; 6 uses
  %7 = alloca %"class.folly::detail::ScopeGuardImpl.1062", align 8 ; 15 uses
  %8 = alloca %"struct.std::array.314", align 1   ; 5 uses
  %i.l = alloca ptr, align 8                      ; 7 uses
  %9 = alloca %"class.folly::detail::ScopeGuardImpl.1064", align 8 ; 9 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  store i64 %4, ptr %i.c, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !995  ; 4 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.o = add i64 %2, -1
  %i.p = lshr i64 %i.o, 12
  %i.q = add nuw nsw i64 %i.p, 1
  %i.r = mul i64 %i.q, %3
  store i64 %i.r, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.s = icmp eq i64 %2, 1                        ; 2 uses
  %i.t = shl i64 %3, 2
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %2, 6
  %.0.i = select i1 %i.s, i64 %i.u, i64 %i.v
  store i64 %.0.i, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.w = add i64 %4, -1
  %i.x = lshr i64 %i.w, 12
  %i.y = add nuw nsw i64 %i.x, 1
  %i.z = mul i64 %i.y, %5                         ; 2 uses
  store i64 %i.z, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  %i.aa = icmp eq i64 %4, 1                       ; 2 uses
  %i.ab = shl i64 %5, 2
  %i.ac = add i64 %i.ab, 16
  %i.ad = shl i64 %4, 6
  %.0.i52 = select i1 %i.aa, i64 %i.ac, i64 %i.ad ; 2 uses
  store i64 %.0.i52, ptr %i.h, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  %i.ae = load ptr, ptr %0, align 8, !tbaa !996   ; 2 uses
  %i.af = sub i64 0, %.0.i52
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %i.ah = sub i64 0, %i.ag
  %i.ai = mul i64 %i.z, 24
  %i.aj = add i64 %i.ai, 8
  %i.ak = sub i64 %i.aj, %i.ag
  %i.al = and i64 %i.ak, -16
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !320
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(264) %i.ae, i64 noundef %i.al, i64 0), !inline_history !2770 ; 15 uses
  store ptr %i.ap, ptr %i.i, align 8, !tbaa !705
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1006 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.at = mul i64 %1, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.ar, i64 %i.at, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !1006
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !1015
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.au = icmp ult i64 %4, 8
  br i1 %i.au, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bk, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %.08.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %.08.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.az, i8 0, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %.08.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bb, i8 0, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %.08.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bd, i8 0, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %.08.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bf, i8 0, i64 16, i1 false)
  %i.bg = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %.08.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bh, i8 0, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %.08.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bj, i8 0, i64 16, i1 false)
  %i.bk = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2771

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

end_hunk_17
begin_hunk_18_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyMapTypedILNS0_8TypeKindE9EEESt10shared_ptrINS0_10BaseVectorEEbRS5_INS1_6detail15LookupTableBaseEERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKS7_RNS0_4exec7EvalCtxEENKUliNS0_9TimestampEE_clEiSN_:bb.a
_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE8makeIterERKNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEE.exit.thread: ; preds = %bb.y, %bb.b, %bb.v, %bb.w, %.lr.ph.split.split.us, %.preheader, %_ZN8facebook5velox9functions6detail11LookupTableINS0_9TimestampEE13getMapAtIndexEi.exit41
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !2872, !nonnull !382, !align !444
  call void @_ZN8facebook5velox12NullsBuilder7setNullEi(ptr noundef nonnull align 8 dereferenceable(32) %i.jc, i32 noundef %1)
  br label %.thread104

.thread104:                                       ; preds = %bb.x, %.split.us, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE8makeIterERKNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEE.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSC_10MemoryPoolEEEESE_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESE_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.303") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(264) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2874 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !669
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !669  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.ak, %bb.f ]
  %.024.i75 = phi i64 [ %2, %bb.b ], [ %i.al, %bb.f ] ; 2 uses
  %i.n = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i75, i64 range(i64 0, 256) %i.i)
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.p = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.q = icmp eq <16 x i8> %i.p, %i.h
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = and i16 %i.r, 4095
  %i.t = zext nneg i16 %i.s to i32
  %i.u = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.w = extractelement <16 x i8> %i.p, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.t, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 4095
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.u)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !667
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !385
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i32, ptr %4, align 4, !tbaa !385
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !385
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %.critedge.i, !prof !321, !llvm.loop !87

bb.e:                                             ; preds = %.critedge.i
  %i.aj = icmp eq i8 %i.w, 0
  br i1 %i.aj, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %.022.i76, -1                   ; 2 uses
  %i.al = add i64 %i.e, %.024.i75
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !88

bb.g:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.an = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ao, align 1
  %i.ap = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.aq = add i64 %.pre-phi85, -1
  %i.ar = lshr i64 %i.aq, 12
  %i.as = add nuw nsw i64 %i.ar, 1
  %i.at = mul i64 %i.as, %i.ap                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.at
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.ap, i64 noundef %i.at)
  %.pre81 = load ptr, ptr %i.au, align 8, !tbaa !669
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.av = phi ptr [ %i.an, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.aw = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load <16 x i8>, ptr %i.ax, align 16, !tbaa !384
  %i.az = icmp slt <16 x i8> %i.ay, zeroinitializer
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = and i16 %i.ba, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.bb, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bc = shl i64 %3, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.be = phi i64 [ %i.aw, %bb.i ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bf = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !742 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bh, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !742
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bj = add i64 %i.bd, %.029                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bj, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.bk ; 3 uses
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp slt <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bp, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2873

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bq = extractelement <16 x i8> %i.bm, i64 14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  %i.bs = add i8 %i.bq, 16
  store i8 %i.bs, ptr %i.br, align 2, !tbaa !743
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.l ]
  %.1 = phi ptr [ %i.ax, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bl, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64              ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !384
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !384
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !496
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !385
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !667, !nonnull !382, !noundef !382
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.ch ; 5 uses
  %i.cj = load i32, ptr %5, align 4, !tbaa !385
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !1030
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = ptrtoint ptr %6 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !470
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr null, ptr %i.cm, align 8, !tbaa !1034
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cn, align 8, !tbaa !1031
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  store i64 0, ptr %i.co, align 8, !tbaa !496
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.cp, -256
  %i.cq = add i64 %7, 256
  %8 = and i64 %i.cp, 255
  %9 = or disjoint i64 %i.cq, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !460
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cr, align 8, !tbaa !746
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2875 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !496
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2885 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.1144", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !669  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = load ptr, ptr %0, align 8, !tbaa !1033  ; 2 uses
  %i.ad = sub i64 0, %.0.i52
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %i.af = sub i64 0, %i.ae
  %i.ag = mul i64 %i.x, 40
  %i.ah = add i64 %i.ag, 8
  %i.ai = sub i64 %i.ah, %i.ae
  %i.aj = and i64 %i.ai, -16
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !320
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(264) %i.ac, i64 noundef %i.aj, i64 0), !inline_history !2876 ; 15 uses
  store ptr %i.an, ptr %i.h, align 8, !tbaa !705
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !667 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af ; 3 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader: ; preds = %bb.a
  %xtraiter = and i64 %1, 1
  %i.ar = icmp eq i64 %1, 1
  br i1 %i.ar, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.epil.preheader, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader.new

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader.new: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader
  %unroll_iter = and i64 %1, -2
  br label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader.new
  %.01418.i.i = phi ptr [ %i.ap, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader.new ], [ %i.bq, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i ] ; 9 uses
  %.01517.i.i = phi ptr [ %i.aq, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader.new ], [ %i.br, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i ] ; 12 uses
  %niter = phi i64 [ 0, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader.new ], [ %niter.next.1, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.as = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 8
  %i.at = load i32, ptr %.01418.i.i, align 4, !tbaa !385
  store i32 %i.at, ptr %.01517.i.i, align 8, !tbaa !1030
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 8
  %i.av = load i64, ptr %i.as, align 8, !tbaa !470
  store i64 %i.av, ptr %i.au, align 8, !tbaa !470
  %i.aw = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.ay, align 8, !tbaa !1031
  %i.az = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 32 ; 2 uses
  store i64 0, ptr %i.az, align 8, !tbaa !496
  %i.ba = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !414
  store <2 x ptr> %i.ba, ptr %i.aw, align 8, !tbaa !414
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.ax, align 8, !tbaa !414
  %i.bb = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 32 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !409
  store i64 %i.bc, ptr %i.az, align 8, !tbaa !409
  store i64 0, ptr %i.bb, align 8, !tbaa !409
  %i.bd = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 48
  %i.bg = load i32, ptr %i.bd, align 8, !tbaa !385
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !1030
  %i.bh = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 48
  %i.bi = load i64, ptr %i.bf, align 8, !tbaa !470
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !470
  %i.bj = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 56 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 64
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.bl, align 8, !tbaa !1031
  %i.bm = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 72 ; 2 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !496
  %i.bn = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !414
  store <2 x ptr> %i.bn, ptr %i.bj, align 8, !tbaa !414
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.bk, align 8, !tbaa !414
  %i.bo = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 72 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !409
  store i64 %i.bp, ptr %i.bm, align 8, !tbaa !409
  store i64 0, ptr %i.bo, align 8, !tbaa !409
  %i.bq = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 80 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 80 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i, !llvm.loop !86

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_18
begin_hunk_19_@_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE17afterFailedRehashEPSA_m:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1034
  %i.c = mul i64 %2, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.b, i64 %i.c, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !1034
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JS6_RmEEES9_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbES9_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.303") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2904 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1031
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1031 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.an, %bb.f ]
  %.024.i75 = phi i64 [ %2, %bb.b ], [ %i.ao, %bb.f ] ; 2 uses
  %i.n = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i75, i64 range(i64 0, 256) %i.i)
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.p = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.q = icmp eq <16 x i8> %i.p, %i.h
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = and i16 %i.r, 4095
  %i.t = zext nneg i16 %i.s to i32
  %i.u = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.w = extractelement <16 x i8> %i.p, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.t, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 4095
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.u)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !1034
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !385
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load <2 x i64>, ptr %4, align 8
  %i.ah = load <2 x i64>, ptr %i.af, align 8
  %i.ai = icmp eq <2 x i64> %i.ag, %i.ah          ; 2 uses
  %i.aj = extractelement <2 x i1> %i.ai, i64 0
  %i.ak = extractelement <2 x i1> %i.ai, i64 1
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %i.al, label %bb.g, label %.critedge.i, !prof !321, !llvm.loop !89

bb.e:                                             ; preds = %.critedge.i
  %i.am = icmp eq i8 %i.w, 0
  br i1 %i.am, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.an = add i64 %.022.i76, -1                   ; 2 uses
  %i.ao = add i64 %i.e, %.024.i75
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !90

bb.g:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.aq = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ar, align 1
  %i.as = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.at = add i64 %.pre-phi85, -1
  %i.au = lshr i64 %i.at, 12
  %i.av = add nuw nsw i64 %i.au, 1
  %i.aw = mul i64 %i.av, %i.as                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.aw
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.as, i64 noundef %i.aw)
  %.pre81 = load ptr, ptr %i.ax, align 8, !tbaa !1031
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.ay = phi ptr [ %i.aq, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.az = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.ba = getelementptr inbounds nuw [64 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %i.bb = load <16 x i8>, ptr %i.ba, align 16, !tbaa !384
  %i.bc = icmp slt <16 x i8> %i.bb, zeroinitializer
  %i.bd = bitcast <16 x i1> %i.bc to i16
  %i.be = and i16 %i.bd, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.be, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bf = shl i64 %3, 1
  %i.bg = or disjoint i64 %i.bf, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.bh = phi i64 [ %i.az, %bb.i ], [ %i.bn, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bm, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bi = getelementptr inbounds nuw [64 x i8], ptr %i.ay, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 15 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !742 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bk, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = add i8 %i.bk, 1
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !742
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bm = add i64 %i.bg, %.029                    ; 2 uses
  %i.bn = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bm, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bo = getelementptr inbounds nuw [64 x i8], ptr %i.ay, i64 %i.bn ; 3 uses
  %i.bp = load <16 x i8>, ptr %i.bo, align 16     ; 2 uses
  %i.bq = icmp slt <16 x i8> %i.bp, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16
  %i.bs = and i16 %i.br, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bs, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2903

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bt = extractelement <16 x i8> %i.bp, i64 14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 14
  %i.bv = add i8 %i.bt, 16
  store i8 %i.bv, ptr %i.bu, align 2, !tbaa !743
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.be, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bs, %bb.l ]
  %.1 = phi ptr [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bo, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bx = zext nneg i16 %i.bw to i64              ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bx ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !384
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.cb = trunc i64 %3 to i8
  store i8 %i.cb, ptr %i.by, align 1, !tbaa !384
  %i.cc = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bx ; 2 uses
  %i.ce = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !496
  %i.cg = lshr i64 %i.cf, 8                       ; 2 uses
  %i.ch = trunc i64 %i.cg to i32
  store i32 %i.ch, ptr %i.cd, align 4, !tbaa !385
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1034, !nonnull !382, !noundef !382
  %i.ck = and i64 %i.cg, 4294967295
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.ck ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !731
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i64, ptr %6, align 8, !tbaa !409
  %i.co = trunc i64 %i.cn to i32
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !1037
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.cp, -256
  %i.cq = add i64 %7, 256
  %8 = and i64 %i.cp, 255
  %9 = or disjoint i64 %i.cq, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.ap, %bb.g ], [ %i.cd, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bx, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !460
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cr, align 8, !tbaa !746
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2905 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !496
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2915 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.1155", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1031 ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = load ptr, ptr %0, align 8, !tbaa !1032  ; 2 uses
  %i.ad = sub i64 0, %.0.i52
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %i.af = sub i64 0, %i.ae
  %i.ag = mul i64 %i.x, 24
  %i.ah = add i64 %i.ag, 8
  %i.ai = sub i64 %i.ah, %i.ae
  %i.aj = and i64 %i.ai, -16
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !320
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(264) %i.ac, i64 noundef %i.aj, i64 0), !inline_history !2906 ; 15 uses
  store ptr %i.an, ptr %i.h, align 8, !tbaa !705
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1034 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ar = mul i64 %1, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.ap, i64 %i.ar, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !1034
  store ptr %i.ap, ptr %i.i, align 8, !tbaa !1041
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.as = icmp ult i64 %4, 8
  br i1 %i.as, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bi, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.at, i8 0, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.az, i8 0, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bb, i8 0, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bd, i8 0, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bf, i8 0, i64 16, i1 false)
  %i.bg = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bh, i8 0, i64 16, i1 false)
  %i.bi = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2907

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bi, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod140 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod140)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
end_hunk_19
begin_hunk_20_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv:bb.a

bb.j:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS7_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS8_vEENS5_6memory12StlAllocatorIS8_EEEEvvNSD_ISt4pairIKiSF_EEESt17integral_constantIbLb1EEE10afterResetEmmPhm.exit, %bb.a
  ret void

bb.k:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSD_10MemoryPoolEEEESH_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESH_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.303") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(264) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2948 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !495
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !495  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.ak, %bb.f ]
  %.024.i75 = phi i64 [ %2, %bb.b ], [ %i.al, %bb.f ] ; 2 uses
  %i.n = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i75, i64 range(i64 0, 256) %i.i)
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.p = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.q = icmp eq <16 x i8> %i.p, %i.h
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = and i16 %i.r, 4095
  %i.t = zext nneg i16 %i.s to i32
  %i.u = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.w = extractelement <16 x i8> %i.p, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.t, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.041.0, 4095
  %i.z = and i32 %i.y, %.sroa.041.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.u)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !491
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !385
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i32, ptr %4, align 4, !tbaa !385
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !385
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %.critedge.i, !prof !321, !llvm.loop !2

bb.e:                                             ; preds = %.critedge.i
  %i.aj = icmp eq i8 %i.w, 0
  br i1 %i.aj, label %.thread65, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %.022.i76, -1                   ; 2 uses
  %i.al = add i64 %i.e, %.024.i75
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !3

bb.g:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.an = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ao, align 1
  %i.ap = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.aq = add i64 %.pre-phi85, -1
  %i.ar = lshr i64 %i.aq, 12
  %i.as = add nuw nsw i64 %i.ar, 1
  %i.at = mul i64 %i.as, %i.ap                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.at
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.ap, i64 noundef %i.at)
  %.pre81 = load ptr, ptr %i.au, align 8, !tbaa !495
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.av = phi ptr [ %i.an, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.aw = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load <16 x i8>, ptr %i.ax, align 16, !tbaa !384
  %i.az = icmp slt <16 x i8> %i.ay, zeroinitializer
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = and i16 %i.ba, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.bb, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bc = shl i64 %3, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.be = phi i64 [ %i.aw, %bb.i ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bf = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !742 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bh, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !742
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bj = add i64 %i.bd, %.029                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bj, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.bk ; 3 uses
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp slt <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bp, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2947

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bq = extractelement <16 x i8> %i.bm, i64 14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  %i.bs = add i8 %i.bq, 16
  store i8 %i.bs, ptr %i.br, align 2, !tbaa !743
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.l ]
  %.1 = phi ptr [ %i.ax, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bl, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64              ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !384
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !384
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !496
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !385
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !491, !nonnull !382, !noundef !382
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.ch ; 4 uses
  %i.cj = load i32, ptr %5, align 4, !tbaa !385
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !1049
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = ptrtoint ptr %6 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !470
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cm, align 8, !tbaa !480
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.co = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %7 = and i64 %i.co, -256
  %i.cp = add i64 %7, 256
  %8 = and i64 %i.co, 255
  %9 = or disjoint i64 %i.cp, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !496
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !460
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !409
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cq, align 8, !tbaa !746
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2949 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !496
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2958 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.1226", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !409
  store i64 %2, ptr %i.b, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !495  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3                         ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = call noundef ptr @_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS7_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS8_vEENS5_6memory12StlAllocatorIS8_EEEEvvNSD_ISt4pairIKiSF_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %i.p, i64 noundef %i.x, i64 noundef %.0.i52, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !1051
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !705 ; 13 uses
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ae = icmp ult i64 %4, 8
  br i1 %i.ae, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.au, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.al, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.an, i8 0, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.at, i8 0, i64 16, i1 false)
  %i.au = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2950

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod138 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod138)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.aw, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2951

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ax = trunc i64 %5 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i16 %i.ax, ptr %i.ay, align 1
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !495
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !496
  %i.bc = and i64 %i.bb, -256
  %i.bd = select i1 %.not.i, i64 4294967295, i64 %i.ba
  %i.be = or i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.az, align 8, !tbaa !496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
end_hunk_20
begin_hunk_21_@_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS9_12MapKeyHasherEvNS7_6memory12StlAllocatorISA_EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(264) %i.al, ptr noundef nonnull %.02.i.i, i64 noundef %i.an)
          to label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS9_12MapKeyHasherEvNS7_6memory12StlAllocatorISA_EEEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit unwind label %bb.h, !inline_history !95

bb.h:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #32
  unreachable

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS9_12MapKeyHasherEvNS7_6memory12StlAllocatorISA_EEEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESG_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.1239") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !3009 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 3 uses
  %.not = icmp ult i64 %i.b, 256
  br i1 %.not, label %.thread64, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl i64 %3, 1
  %i.d = or disjoint i64 %i.c, 1
  %i.e = trunc i64 %3 to i8
  %i.f = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.h = and i64 %i.b, 255
  %i.i = shl nuw i64 1, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i73 = phi i64 [ %i.i, %bb.b ], [ %i.ap, %bb.f ]
  %.025.i72 = phi i64 [ %2, %bb.b ], [ %i.aq, %bb.f ] ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !480
  %i.m = load i64, ptr %i.a, align 8, !tbaa !496
  %i.n = and i64 %i.m, 255
  %i.o = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i72, i64 range(i64 0, 256) %i.n)
  %i.p = getelementptr inbounds nuw [256 x i8], ptr %i.l, i64 %i.o ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  tail call void @llvm.prefetch.p0(ptr nonnull %i.r, i32 0, i32 3, i32 1)
  %i.s = load <16 x i8>, ptr %i.p, align 16, !tbaa !384
  %i.t = icmp eq <16 x i8> %i.s, %i.g
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = and i16 %i.u, 16383
  %i.w = zext nneg i16 %i.v to i32
  %i.x = icmp ne ptr %i.p, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.040.0 = phi i32 [ %i.w, %bb.c ], [ %i.aa, %bb.d ] ; 4 uses
  %.not66 = icmp eq i32 %.sroa.040.0, 0
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.0, i1 true)
  %i.z = add nuw nsw i32 %.sroa.040.0, 16383
  %i.aa = and i32 %i.z, %.sroa.040.0
  %i.ab = zext nneg i32 %i.y to i64               ; 2 uses
  tail call void @llvm.assume(i1 %i.x)
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ab ; 3 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !511   ; 2 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !511
  %i.af = load i32, ptr %i.k, align 8, !tbaa !512
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !512
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !320
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(94) %i.ad, ptr noundef %i.ae, i32 noundef %i.af, i32 noundef %i.ah), !inline_history !96
  br i1 %i.al, label %.loopexit, label %.critedge.i, !prof !321, !llvm.loop !97

bb.e:                                             ; preds = %.critedge.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  %i.an = load i8, ptr %i.am, align 1, !tbaa !1057
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %.thread64.loopexit, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ap = add i64 %.023.i73, -1                   ; 2 uses
  %i.aq = add i64 %i.d, %.025.i72
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %.thread64.loopexit, label %bb.c, !llvm.loop !98

.thread64.loopexit:                               ; preds = %bb.e, %bb.f
  %.pre = load i64, ptr %i.a, align 8, !tbaa !496
  br label %.thread64

.thread64:                                        ; preds = %.thread64.loopexit, %bb.a
  %i.ar = phi i64 [ %.pre, %.thread64.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.as = lshr i64 %i.ar, 8                       ; 2 uses
  %i.at = and i64 %i.ar, 255                      ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !480 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 14
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !384
  %i.ay = and i8 %i.ax, 15
  %i.az = zext nneg i8 %i.ay to i64               ; 2 uses
  %i.ba = shl i64 %i.az, %i.at                    ; 2 uses
  %.not.i30 = icmp ult i64 %i.as, %i.ba
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread64
  %i.bb = shl nuw i64 1, %i.at
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.as, i64 noundef %i.bb, i64 noundef %i.az, i64 noundef %i.ba)
  %.pre77 = load ptr, ptr %i.au, align 8, !tbaa !480
  %.pre78 = load i64, ptr %i.a, align 8, !tbaa !496
  %.pre79 = and i64 %.pre78, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16reserveForInsertEm.exit: ; preds = %.thread64, %bb.g
  %.pre-phi = phi i64 [ %i.at, %.thread64 ], [ %.pre79, %bb.g ] ; 2 uses
  %i.bc = phi ptr [ %i.av, %.thread64 ], [ %.pre77, %bb.g ] ; 3 uses
  %i.bd = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.be = getelementptr inbounds nuw [256 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bf = load <16 x i8>, ptr %i.be, align 16, !tbaa !384
  %i.bg = icmp slt <16 x i8> %i.bf, zeroinitializer
  %i.bh = bitcast <16 x i1> %i.bg to i16
  %i.bi = and i16 %i.bh, 16383                    ; 2 uses
  %.not67 = icmp eq i16 %i.bi, 16383
  br i1 %.not67, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16reserveForInsertEm.exit
  %i.bj = shl i64 %3, 1
  %i.bk = or disjoint i64 %i.bj, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9functions6detail6MapKeyEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bl = phi i64 [ %i.bd, %bb.h ], [ %i.br, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9functions6detail6MapKeyEE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.h ], [ %i.bq, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9functions6detail6MapKeyEE25incrOutboundOverflowCountEv.exit ]
  %i.bm = getelementptr inbounds nuw [256 x i8], ptr %i.bc, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 15 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !1057 ; 2 uses
  %.not.i31 = icmp eq i8 %i.bo, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9functions6detail6MapKeyEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = add i8 %i.bo, 1
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !1057
  br label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9functions6detail6MapKeyEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIN8facebook5velox9functions6detail6MapKeyEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bq = add i64 %i.bk, %.028                    ; 2 uses
  %i.br = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bq, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bs = getelementptr inbounds nuw [256 x i8], ptr %i.bc, i64 %i.br ; 3 uses
  %i.bt = load <16 x i8>, ptr %i.bs, align 16     ; 2 uses
  %i.bu = icmp slt <16 x i8> %i.bt, zeroinitializer
  %i.bv = bitcast <16 x i1> %i.bu to i16
  %i.bw = and i16 %i.bv, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.bw, 16383
  br i1 %.not68, label %bb.i, label %bb.k, !llvm.loop !3008

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9functions6detail6MapKeyEE25incrOutboundOverflowCountEv.exit
  %i.bx = extractelement <16 x i8> %i.bt, i64 14
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 14
  %i.bz = add i8 %i.bx, 16
  store i8 %i.bz, ptr %i.by, align 2, !tbaa !509
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.bi, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16reserveForInsertEm.exit ], [ %i.bw, %bb.k ]
  %.1 = phi ptr [ %i.be, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16reserveForInsertEm.exit ], [ %i.bs, %bb.k ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.ca = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64              ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !384
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9functions6detail6MapKeyEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIN8facebook5velox9functions6detail6MapKeyEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIN8facebook5velox9functions6detail6MapKeyEE6setTagEmm.exit: ; preds = %bb.l
  %i.cf = trunc i64 %3 to i8
  store i8 %i.cf, ptr %i.cc, align 1, !tbaa !384
  %i.cg = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.cb ; 3 uses
  %i.ci = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ci)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1056
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = or i64 %i.cj, %i.cb                     ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1058
  %i.cn = icmp ult i64 %i.cm, %i.ck
  br i1 %i.cn, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9functions6detail6MapKeyEE6setTagEmm.exit
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !409
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9functions6detail6MapKeyEE6setTagEmm.exit, %bb.n
  %i.co = load i64, ptr %i.a, align 8, !tbaa !496 ; 2 uses
  %6 = and i64 %i.co, -256
  %i.cp = add i64 %6, 256
  %7 = and i64 %i.co, 255
  %8 = or disjoint i64 %i.cp, %7
  store i64 %8, ptr %i.a, align 8, !tbaa !496
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit
  %.lcssa90.sink = phi ptr [ %i.ch, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ], [ %i.ac, %bb.d ]
  %.lcssa91.sink = phi i64 [ %i.cb, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ], [ %i.ab, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa90.sink, ptr %0, align 8, !tbaa !3011
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa91.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !409
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cq, align 8, !tbaa !3014
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !3015 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !496
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN8facebook5velox9functions12_GLOBAL__N_119applyMapComplexTypeERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEbRS9_INS1_6detail15LookupTableBaseEEENK3$_0clEi"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #23 align 2 personality ptr @__gxx_personality_v0 !guid !3019 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.1244", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3023, !nonnull !382, !align !444
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !460
  %i.c = sext i32 %1 to i64                       ; 3 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !385  ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !321

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !3024
  store i32 0, ptr %2, align 16, !tbaa !384, !noalias !3024
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.e, ptr %i.f, align 16, !tbaa !384, !noalias !3024
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.24, i64 11, i64 17, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !3024
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @"_ZZZN8facebook5velox9functions12_GLOBAL__N_119applyMapComplexTypeERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEbRS9_INS1_6detail15LookupTableBaseEEENK3$_0clEiE18veloxCheckFailArgs", ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.24) #30
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %3, align 8, !tbaa !675    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8, !tbaa !384
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3025, !nonnull !382, !align !444
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !460
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.c
  %i.q = load i32, ptr %i.p, align 4, !tbaa !385  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3026, !nonnull !382, !align !444
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !482  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3027, !nonnull !382, !align !444
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !466  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !496
  %i.z = lshr i64 %i.y, 8
  switch i64 %i.z, label %bb.g [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEERKT_.exit.thread
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1058
  %i.ac = and i64 %i.ab, -16
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !511
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !512
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !320
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(94) %i.w, ptr noundef %i.ae, i32 noundef %i.q, i32 noundef %i.ag), !inline_history !96
  br i1 %i.ak, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEERKT_.exit.thread56, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEERKT_.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !320
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef i64 %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.w, i32 noundef %i.q), !inline_history !3018 ; 2 uses
  %i.ap = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ao) ; 2 uses
  %i.aq = lshr i64 %i.ap, 24
  %i.ar = or i64 %i.aq, 128                       ; 2 uses
  %i.as = add i64 %i.ap, %i.ao
  %i.at = shl nuw nsw i64 %i.ar, 1
  %i.au = or disjoint i64 %i.at, 1
  %i.av = trunc nuw i64 %i.ar to i8
  %i.aw = insertelement <16 x i8> poison, i8 %i.av, i64 0
  %i.ax = shufflevector <16 x i8> %i.aw, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ay = load i64, ptr %i.x, align 8, !tbaa !496
  %i.az = and i64 %i.ay, 255
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.k
  %.023.i.i71 = phi i64 [ %i.ba, %bb.g ], [ %i.ce, %bb.k ]
  %.025.i.i70 = phi i64 [ %i.as, %bb.g ], [ %i.cf, %bb.k ] ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !480
  %i.bd = load i64, ptr %i.x, align 8, !tbaa !496
  %i.be = and i64 %i.bd, 255
  %i.bf = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i.i70, i64 range(i64 0, 256) %i.be)
  %i.bg = getelementptr inbounds nuw [256 x i8], ptr %i.bc, i64 %i.bf ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bi, i32 0, i32 3, i32 1)
  %i.bj = load <16 x i8>, ptr %i.bg, align 16, !tbaa !384
  %i.bk = icmp eq <16 x i8> %i.bj, %i.ax
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %i.bm = and i16 %i.bl, 16383
  %i.bn = zext nneg i16 %i.bm to i32
  %i.bo = icmp ne ptr %i.bg, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.i, %bb.h
  %.sroa.032.0 = phi i32 [ %i.bn, %bb.h ], [ %i.br, %bb.i ] ; 4 uses
  %.not69 = icmp eq i32 %.sroa.032.0, 0
  br i1 %.not69, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge.i.i
  %i.bp = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.032.0, i1 true)
  %i.bq = add nuw nsw i32 %.sroa.032.0, 16383
  %i.br = and i32 %i.bq, %.sroa.032.0
  %i.bs = zext nneg i32 %i.bp to i64
  tail call void @llvm.assume(i1 %i.bo)
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bs ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !511
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !512
  %i.bx = load ptr, ptr %i.w, align 8, !tbaa !320
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.bz = load ptr, ptr %i.by, align 8
end_hunk_21
