inline.NumInlined: 10385
inline.NumDeleted: 4577
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSB_10MemoryPoolEEEESD_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESD_ImmERKT_DpOT0_:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !92
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !92
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !262
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !396, !nonnull !86, !noundef !86
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.ch ; 4 uses
  %i.cj = load i32, ptr %5, align 4, !tbaa !3
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !1222
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = ptrtoint ptr %6 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !229
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cm, align 8, !tbaa !1235
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.co = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.cp = and i64 %i.co, -256
  %i.cq = add i64 %i.cp, 256
  %i.cr = and i64 %i.co, 255
  %i.cs = or disjoint i64 %i.cq, %i.cr
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !262
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !219
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ct, align 8, !tbaa !1309
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !262
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !402  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3                         ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = call noundef ptr @_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %i.p, i64 noundef %i.x, i64 noundef %.0.i52, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !1313
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !1130 ; 13 uses
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
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1314

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.aw, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !1315

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ax = trunc i64 %5 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i16 %i.ax, ptr %i.ay, align 1
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !402
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !262
  %i.bc = and i64 %i.bb, -256
  %i.bd = select i1 %.not.i, i64 4294967295, i64 %i.ba
  %i.be = or i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.az, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !1318
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bf, align 8, !tbaa !203
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.474.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !1321
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.676.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.877.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !1325
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !1327
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  %i.bg = icmp eq i64 %1, 0
  br i1 %i.bg, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %.lr.ph107, label %bb.g

.lr.ph107:                                        ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bi = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph107, %bb.f
  %.0105 = phi i64 [ 0, %.lr.ph107 ], [ %i.bt, %bb.f ] ; 3 uses
  %.034104 = phi i64 [ 0, %.lr.ph107 ], [ %.1, %bb.f ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0105
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !92  ; 2 uses
  %.not85 = icmp eq i8 %i.bl, 0
  br i1 %.not85, label %bb.f, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.034104 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !92
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.d
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !92
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.034104
  call void @llvm.assume(i1 %i.bi)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.0105
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !3
  %i.bs = add nuw i64 %.034104, 1
  br label %bb.f

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.c
  %.1 = phi i64 [ %i.bs, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.034104, %bb.c ] ; 2 uses
  %i.bt = add i64 %.0105, 1
  %i.bu = icmp ult i64 %.1, %1
  br i1 %i.bu, label %bb.c, label %.loopexit, !llvm.loop !1329

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.h, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.h:                                             ; preds = %bb.g
  %i.bv = load ptr, ptr %0, align 8, !tbaa !1220  ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(264) %i.bv, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIiNS_10F14FastMapIbiNS_23HeterogeneousAccessHashIbvEENS_26HeterogeneousAccessEqualToIbvEEN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, !inline_history !1330

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.h, %bb.g
  %storemerge = phi ptr [ %7, %bb.g ], [ %i.bz, %bb.h ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not4599 = icmp eq i64 %i.ca, 0
  br i1 %.not4599, label %._crit_edge, label %.lr.ph103

.lr.ph103:                                        ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !1312
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !129
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.i

.loopexit86:                                      ; preds = %bb.r, %bb.i
  %.143.lcssa = phi i64 [ %.042100, %bb.i ], [ %i.cv, %bb.r ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %._crit_edge, label %bb.i, !llvm.loop !1331

bb.i:                                             ; preds = %.lr.ph103, %.loopexit86
  %.pn101 = phi ptr [ %i.cd, %.lr.ph103 ], [ %.041102, %.loopexit86 ] ; 2 uses
  %.042100 = phi i64 [ %i.ca, %.lr.ph103 ], [ %.143.lcssa, %.loopexit86 ] ; 2 uses
  %.041102 = getelementptr inbounds i8, ptr %.pn101, i64 -64 ; 4 uses
  %i.cf = load <16 x i8>, ptr %.041102, align 16, !tbaa !92
  %i.cg = icmp slt <16 x i8> %i.cf, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %i.ci = and i16 %i.ch, 4095                     ; 2 uses
  %.sroa.066.0.extract.trunc = zext nneg i16 %i.ci to i32 ; 2 uses
  %cond = icmp eq i16 %i.ci, 0
  br i1 %cond, label %.loopexit86, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.cj = icmp ne ptr %.041102, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds i8, ptr %.pn101, i64 -48 ; 2 uses
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !396
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.092 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.063.091 = phi i32 [ %.sroa.066.0.extract.trunc, %.lr.ph ], [ %.sroa.063.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cm = and i32 %.sroa.063.091, 1
  %.not.i53 = icmp eq i32 %i.cm, 0
  br i1 %.not.i53, label %bb.k, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !97

bb.k:                                             ; preds = %bb.j
  %i.cn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.063.091, i1 true) ; 2 uses
  %i.co = add i32 %.sroa.8.092, %i.cn
  %i.cp = add nuw nsw i32 %i.cn, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.j, %bb.k
  %.pn84 = phi i32 [ %i.cp, %bb.k ], [ 1, %bb.j ]
  %.sroa.8.1.in = phi i32 [ %i.co, %bb.k ], [ %.sroa.8.092, %bb.j ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.063.1 = lshr i32 %.sroa.063.091, %.pn84  ; 2 uses
  %i.cq = zext i32 %.sroa.8.1.in to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [40 x i8], ptr %i.cl, i64 %i.ct
  call void @llvm.prefetch.p0(ptr %i.cu, i32 0, i32 3, i32 1)
  %.not81 = icmp eq i32 %.sroa.063.1, 0
  br i1 %.not81, label %.lr.ph97, label %bb.j

.lr.ph97:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.r
  %.14396 = phi i64 [ %i.cv, %bb.r ], [ %.042100, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.868.095 = phi i32 [ %.sroa.868.1, %bb.r ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.066.094 = phi i32 [ %.sroa.066.1, %bb.r ], [ %.sroa.066.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cv = add i64 %.14396, -1                     ; 2 uses
  %i.cw = and i32 %.sroa.066.094, 1
  %.not.i55 = icmp eq i32 %i.cw, 0
  br i1 %.not.i55, label %bb.l, label %bb.m, !prof !97

bb.l:                                             ; preds = %.lr.ph97
  %i.cx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.066.094, i1 true) ; 2 uses
  %i.cy = add i32 %.sroa.868.095, %i.cx
  %i.cz = add nuw nsw i32 %i.cx, 1
  br label %bb.m
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE19tryEmplaceValueImplIbJbRmEEES8_INS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEEbES8_ImmERKT_DpOT0_:bb.a
  %.1 = phi ptr [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.bp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64              ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !92
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %_ZN5folly3f146detail8F14ChunkISt4pairIKbiEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKbiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKbiEE6setTagEmm.exit: ; preds = %bb.m
  %i.bu = trunc i64 %3 to i8
  store i8 %i.bu, ptr %i.br, align 1, !tbaa !92
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bq ; 4 uses
  %i.bx = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = load i8, ptr %5, align 1, !tbaa !172, !range !85, !noundef !86
  store i8 %i.by, ptr %i.bw, align 4, !tbaa !1355
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.ca = load i64, ptr %6, align 8, !tbaa !129
  %i.cb = trunc i64 %i.ca to i32
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !1296
  %i.cc = lshr i64 %i.bq, 1
  %i.cd = ptrtoint ptr %i.bw to i64
  %i.ce = or i64 %i.cc, %i.cd                     ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !1293
  %i.ch = icmp ult i64 %i.cg, %i.ce
  br i1 %i.ch, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbiEE6setTagEmm.exit
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !129
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbiEE6setTagEmm.exit, %bb.o
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.cj = and i64 %i.ci, -256
  %i.ck = add i64 %i.cj, 256
  %i.cl = and i64 %i.ci, 255
  %i.cm = or disjoint i64 %i.ck, %i.cl
  store i64 %i.cm, ptr %i.a, align 8, !tbaa !262
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit
  %.sink99 = phi ptr [ %i.ai, %bb.g ], [ %i.bw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  %.lcssa97.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bq, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  store ptr %.sink99, ptr %0, align 8, !tbaa !1356
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa97.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cn, align 8, !tbaa !1358
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !262
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1235 ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = mul i64 %3, %2
  store i64 %i.m, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.n = icmp eq i64 %2, 1                        ; 2 uses
  %i.o = shl i64 %3, 3
  %i.p = add i64 %i.o, 16
  %i.q = shl i64 %2, 7
  %.0.i = select i1 %i.n, i64 %i.p, i64 %i.q
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.r = mul i64 %5, %4
  store i64 %i.r, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.s = icmp eq i64 %4, 1                        ; 2 uses
  %i.t = shl i64 %5, 3
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %4, 7
  %.0.i69 = select i1 %i.s, i64 %i.u, i64 %i.v    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.w = load ptr, ptr %0, align 8, !tbaa !1238   ; 2 uses
  %i.x = add i64 %.0.i69, 8
  %i.y = and i64 %i.x, -16
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i64 noundef %i.y, i64 0), !inline_history !1361 ; 16 uses
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !1130
  store i8 0, ptr %i.i, align 1, !tbaa !172
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
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1362

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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !1363

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.ax = trunc i64 %5 to i8
  store i8 %i.ax, ptr %i.aw, align 2, !tbaa !1354
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !1235
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.az = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !262
  %i.bb = and i64 %i.ba, -256
  %i.bc = select i1 %.not.i, i64 4294967295, i64 %i.az
  %i.bd = or i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.ay, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !1364
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.be, align 8, !tbaa !203
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.485.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.586.0..sroa_idx, align 8, !tbaa !1367
  %.sroa.687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.687.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.888.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.888.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !1369
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !203
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  %i.bf = icmp eq i64 %1, 0
  br i1 %i.bf, label %bb.w, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.s, %i.n
  br i1 %or.cond, label %.lr.ph109, label %bb.h

.lr.ph109:                                        ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bh = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph109, %bb.g
  %.0107 = phi i64 [ 0, %.lr.ph109 ], [ %i.bv, %bb.g ] ; 3 uses
  %.042106 = phi i64 [ 0, %.lr.ph109 ], [ %.1, %bb.g ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0107
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !92  ; 2 uses
  %.not90 = icmp eq i8 %i.bk, 0
  br i1 %.not90, label %bb.g, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.042106 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !92
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKbiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !92
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.042106 ; 2 uses
  call void @llvm.assume(i1 %i.bh)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.0107 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !172, !range !85, !noundef !86
  store i8 %i.br, ptr %i.bo, align 4, !tbaa !1355
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !1296
  %i.bu = add nuw i64 %.042106, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1 = phi i64 [ %i.bu, %bb.f ], [ %.042106, %bb.c ] ; 3 uses
  %i.bv = add i64 %.0107, 1
  %i.bw = icmp ult i64 %.1, %1
  br i1 %i.bw, label %bb.c, label %._crit_edge110, !llvm.loop !1371

._crit_edge110:                                   ; preds = %bb.g
  %i.bx = add i64 %.1, -1                         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  %i.ca = icmp ne ptr %i.ac, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ca)
  %i.cb = and i64 %i.bx, 255                      ; 2 uses
  %i.cc = icmp samesign ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cc)
  %i.cd = lshr i64 %i.cb, 1
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = or i64 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !129
  br label %bb.w

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.i, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.i:                                             ; preds = %bb.h
  %i.ch = load ptr, ptr %0, align 8, !tbaa !1238  ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(264) %i.ch, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %bb.j, !inline_history !1330

bb.j:                                             ; preds = %bb.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIbivvN8facebook5velox6memory12StlAllocatorISt4pairIKbiEEEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  resume { ptr, i32 } %i.cm

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.i, %bb.h
  %storemerge = phi ptr [ %7, %bb.h ], [ %i.cl, %bb.i ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not57101 = icmp eq i64 %i.cn, 0
  br i1 %.not57101, label %._crit_edge, label %.lr.ph105.preheader

.lr.ph105.preheader:                              ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !1236
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !129
  %i.cq = getelementptr inbounds nuw [128 x i8], ptr %i.co, i64 %i.cp
  br label %.lr.ph105

.loopexit:                                        ; preds = %bb.r, %.lr.ph105
  %.155.lcssa = phi i64 [ %.054102, %.lr.ph105 ], [ %i.cx, %bb.r ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph105, !llvm.loop !1372

.lr.ph105:                                        ; preds = %.lr.ph105.preheader, %.loopexit
  %.pn59103 = phi ptr [ %.053104, %.loopexit ], [ %i.cq, %.lr.ph105.preheader ] ; 2 uses
  %.054102 = phi i64 [ %.155.lcssa, %.loopexit ], [ %i.cn, %.lr.ph105.preheader ] ; 2 uses
  %.053104 = getelementptr inbounds i8, ptr %.pn59103, i64 -128 ; 4 uses
  %i.cr = load <16 x i8>, ptr %.053104, align 16, !tbaa !92
  %i.cs = icmp slt <16 x i8> %i.cr, zeroinitializer
  %i.ct = bitcast <16 x i1> %i.cs to i16
  %i.cu = and i16 %i.ct, 16383                    ; 2 uses
  %.not8996 = icmp eq i16 %i.cu, 0
  br i1 %.not8996, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph105
  %.sroa.076.0.extract.trunc = zext nneg i16 %i.cu to i32
  %i.cv = icmp ne ptr %.053104, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds i8, ptr %.pn59103, i64 -112
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.r
  %.15599 = phi i64 [ %.054102, %.lr.ph ], [ %i.cx, %bb.r ]
  %.sroa.8.098 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.r ] ; 2 uses
  %.sroa.076.097 = phi i32 [ %.sroa.076.0.extract.trunc, %.lr.ph ], [ %.sroa.076.1, %bb.r ] ; 3 uses
  %i.cx = add i64 %.15599, -1                     ; 2 uses
  %i.cy = and i32 %.sroa.076.097, 1
  %.not.i70 = icmp eq i32 %i.cy, 0
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSB_10MemoryPoolEEEESD_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESD_ImmERKT_DpOT0_:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !92
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !92
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !262
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !461, !nonnull !86, !noundef !86
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.ch ; 4 uses
  %i.cj = load i32, ptr %5, align 4, !tbaa !3
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !1415
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = ptrtoint ptr %6 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !229
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cm, align 8, !tbaa !1428
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.co = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.cp = and i64 %i.co, -256
  %i.cq = add i64 %i.cp, 256
  %i.cr = and i64 %i.co, 255
  %i.cs = or disjoint i64 %i.cq, %i.cr
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !262
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !219
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ct, align 8, !tbaa !1309
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !262
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !467  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3                         ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = call noundef ptr @_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSB_ISC_ISD_SG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %i.p, i64 noundef %i.x, i64 noundef %.0.i52, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !1468
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !1130 ; 13 uses
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
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1469

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.aw, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !1470

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ax = trunc i64 %5 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i16 %i.ax, ptr %i.ay, align 1
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !467
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !262
  %i.bc = and i64 %i.bb, -256
  %i.bd = select i1 %.not.i, i64 4294967295, i64 %i.ba
  %i.be = or i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.az, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !1471
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bf, align 8, !tbaa !203
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.474.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !1321
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.676.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.877.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !1474
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !1476
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  %i.bg = icmp eq i64 %1, 0
  br i1 %i.bg, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSC_ISD_ISE_SH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %.lr.ph107, label %bb.g

.lr.ph107:                                        ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bi = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph107, %bb.f
  %.0105 = phi i64 [ 0, %.lr.ph107 ], [ %i.bt, %bb.f ] ; 3 uses
  %.034104 = phi i64 [ 0, %.lr.ph107 ], [ %.1, %bb.f ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0105
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !92  ; 2 uses
  %.not85 = icmp eq i8 %i.bl, 0
  br i1 %.not85, label %bb.f, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.034104 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !92
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.d
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !92
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.034104
  call void @llvm.assume(i1 %i.bi)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.0105
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !3
  %i.bs = add nuw i64 %.034104, 1
  br label %bb.f

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.c
  %.1 = phi i64 [ %i.bs, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.034104, %bb.c ] ; 2 uses
  %i.bt = add i64 %.0105, 1
  %i.bu = icmp ult i64 %.1, %1
  br i1 %i.bu, label %bb.c, label %.loopexit, !llvm.loop !1478

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.h, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.h:                                             ; preds = %bb.g
  %i.bv = load ptr, ptr %0, align 8, !tbaa !1414  ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(264) %i.bv, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIiNS_10F14FastMapIiiNS_23HeterogeneousAccessHashIivEENS_26HeterogeneousAccessEqualToIivEEN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEvvNSE_ISF_ISG_SJ_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, !inline_history !1330

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.h, %bb.g
  %storemerge = phi ptr [ %7, %bb.g ], [ %i.bz, %bb.h ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not4599 = icmp eq i64 %i.ca, 0
  br i1 %.not4599, label %._crit_edge, label %.lr.ph103

.lr.ph103:                                        ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !1312
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !129
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.i

.loopexit86:                                      ; preds = %bb.r, %bb.i
  %.143.lcssa = phi i64 [ %.042100, %bb.i ], [ %i.cv, %bb.r ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %._crit_edge, label %bb.i, !llvm.loop !1479

bb.i:                                             ; preds = %.lr.ph103, %.loopexit86
  %.pn101 = phi ptr [ %i.cd, %.lr.ph103 ], [ %.041102, %.loopexit86 ] ; 2 uses
  %.042100 = phi i64 [ %i.ca, %.lr.ph103 ], [ %.143.lcssa, %.loopexit86 ] ; 2 uses
  %.041102 = getelementptr inbounds i8, ptr %.pn101, i64 -64 ; 4 uses
  %i.cf = load <16 x i8>, ptr %.041102, align 16, !tbaa !92
  %i.cg = icmp slt <16 x i8> %i.cf, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %i.ci = and i16 %i.ch, 4095                     ; 2 uses
  %.sroa.066.0.extract.trunc = zext nneg i16 %i.ci to i32 ; 2 uses
  %cond = icmp eq i16 %i.ci, 0
  br i1 %cond, label %.loopexit86, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.cj = icmp ne ptr %.041102, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds i8, ptr %.pn101, i64 -48 ; 2 uses
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !461
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.092 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.063.091 = phi i32 [ %.sroa.066.0.extract.trunc, %.lr.ph ], [ %.sroa.063.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cm = and i32 %.sroa.063.091, 1
  %.not.i53 = icmp eq i32 %i.cm, 0
  br i1 %.not.i53, label %bb.k, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !97

bb.k:                                             ; preds = %bb.j
  %i.cn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.063.091, i1 true) ; 2 uses
  %i.co = add i32 %.sroa.8.092, %i.cn
  %i.cp = add nuw nsw i32 %i.cn, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.j, %bb.k
  %.pn84 = phi i32 [ %i.cp, %bb.k ], [ 1, %bb.j ]
  %.sroa.8.1.in = phi i32 [ %i.co, %bb.k ], [ %.sroa.8.092, %bb.j ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.063.1 = lshr i32 %.sroa.063.091, %.pn84  ; 2 uses
  %i.cq = zext i32 %.sroa.8.1.in to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [40 x i8], ptr %i.cl, i64 %i.ct
  call void @llvm.prefetch.p0(ptr %i.cu, i32 0, i32 3, i32 1)
  %.not81 = icmp eq i32 %.sroa.063.1, 0
  br i1 %.not81, label %.lr.ph97, label %bb.j

.lr.ph97:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.r
  %.14396 = phi i64 [ %i.cv, %bb.r ], [ %.042100, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.868.095 = phi i32 [ %.sroa.868.1, %bb.r ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.066.094 = phi i32 [ %.sroa.066.1, %bb.r ], [ %.sroa.066.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cv = add i64 %.14396, -1                     ; 2 uses
  %i.cw = and i32 %.sroa.066.094, 1
  %.not.i55 = icmp eq i32 %i.cw, 0
  br i1 %.not.i55, label %bb.l, label %bb.m, !prof !97

bb.l:                                             ; preds = %.lr.ph97
  %i.cx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.066.094, i1 true) ; 2 uses
  %i.cy = add i32 %.sroa.868.095, %i.cx
  %i.cz = add nuw nsw i32 %i.cx, 1
  br label %bb.m
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE19tryEmplaceValueImplIiJiRmEEES8_INS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEEbES8_ImmERKT_DpOT0_:bb.a
  %.1 = phi ptr [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.bp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64              ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !92
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %_ZN5folly3f146detail8F14ChunkISt4pairIKiiEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKiiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKiiEE6setTagEmm.exit: ; preds = %bb.m
  %i.bu = trunc i64 %3 to i8
  store i8 %i.bu, ptr %i.br, align 1, !tbaa !92
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bq ; 4 uses
  %i.bx = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = load i32, ptr %5, align 4, !tbaa !3
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !1499
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.ca = load i64, ptr %6, align 8, !tbaa !129
  %i.cb = trunc i64 %i.ca to i32
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !1463
  %i.cc = lshr i64 %i.bq, 1
  %i.cd = ptrtoint ptr %i.bw to i64
  %i.ce = or i64 %i.cc, %i.cd                     ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !1460
  %i.ch = icmp ult i64 %i.cg, %i.ce
  br i1 %i.ch, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKiiEE6setTagEmm.exit
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !129
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKiiEE6setTagEmm.exit, %bb.o
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.cj = and i64 %i.ci, -256
  %i.ck = add i64 %i.cj, 256
  %i.cl = and i64 %i.ci, 255
  %i.cm = or disjoint i64 %i.ck, %i.cl
  store i64 %i.cm, ptr %i.a, align 8, !tbaa !262
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit
  %.sink99 = phi ptr [ %i.ai, %bb.g ], [ %i.bw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  %.lcssa97.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bq, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  store ptr %.sink99, ptr %0, align 8, !tbaa !1500
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa97.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cn, align 8, !tbaa !1502
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !262
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1428 ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = mul i64 %3, %2
  store i64 %i.m, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.n = icmp eq i64 %2, 1                        ; 2 uses
  %i.o = shl i64 %3, 3
  %i.p = add i64 %i.o, 16
  %i.q = shl i64 %2, 7
  %.0.i = select i1 %i.n, i64 %i.p, i64 %i.q
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.r = mul i64 %5, %4
  store i64 %i.r, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.s = icmp eq i64 %4, 1                        ; 2 uses
  %i.t = shl i64 %5, 3
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %4, 7
  %.0.i69 = select i1 %i.s, i64 %i.u, i64 %i.v    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.w = load ptr, ptr %0, align 8, !tbaa !1430   ; 2 uses
  %i.x = add i64 %.0.i69, 8
  %i.y = and i64 %i.x, -16
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i64 noundef %i.y, i64 0), !inline_history !1505 ; 16 uses
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !1130
  store i8 0, ptr %i.i, align 1, !tbaa !172
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
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1506

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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !1507

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.ax = trunc i64 %5 to i8
  store i8 %i.ax, ptr %i.aw, align 2, !tbaa !1498
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !1428
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.az = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !262
  %i.bb = and i64 %i.ba, -256
  %i.bc = select i1 %.not.i, i64 4294967295, i64 %i.az
  %i.bd = or i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.ay, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !1508
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.be, align 8, !tbaa !203
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.485.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.586.0..sroa_idx, align 8, !tbaa !1511
  %.sroa.687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.687.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.888.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.888.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !1513
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !203
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  %i.bf = icmp eq i64 %1, 0
  br i1 %i.bf, label %bb.w, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.s, %i.n
  br i1 %or.cond, label %.lr.ph109, label %bb.h

.lr.ph109:                                        ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bh = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph109, %bb.g
  %.0107 = phi i64 [ 0, %.lr.ph109 ], [ %i.bv, %bb.g ] ; 3 uses
  %.042106 = phi i64 [ 0, %.lr.ph109 ], [ %.1, %bb.g ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0107
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !92  ; 2 uses
  %.not90 = icmp eq i8 %i.bk, 0
  br i1 %.not90, label %bb.g, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.042106 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !92
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKiiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !92
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.042106 ; 2 uses
  call void @llvm.assume(i1 %i.bh)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.0107 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !3
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !1499
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !1463
  %i.bu = add nuw i64 %.042106, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1 = phi i64 [ %i.bu, %bb.f ], [ %.042106, %bb.c ] ; 3 uses
  %i.bv = add i64 %.0107, 1
  %i.bw = icmp ult i64 %.1, %1
  br i1 %i.bw, label %bb.c, label %._crit_edge110, !llvm.loop !1515

._crit_edge110:                                   ; preds = %bb.g
  %i.bx = add i64 %.1, -1                         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  %i.ca = icmp ne ptr %i.ac, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ca)
  %i.cb = and i64 %i.bx, 255                      ; 2 uses
  %i.cc = icmp samesign ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cc)
  %i.cd = lshr i64 %i.cb, 1
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = or i64 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !129
  br label %bb.w

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.i, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.i:                                             ; preds = %bb.h
  %i.ch = load ptr, ptr %0, align 8, !tbaa !1430  ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(264) %i.ch, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %bb.j, !inline_history !1330

bb.j:                                             ; preds = %bb.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIiivvN8facebook5velox6memory12StlAllocatorISt4pairIKiiEEEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  resume { ptr, i32 } %i.cm

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.i, %bb.h
  %storemerge = phi ptr [ %7, %bb.h ], [ %i.cl, %bb.i ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not57101 = icmp eq i64 %i.cn, 0
  br i1 %.not57101, label %._crit_edge, label %.lr.ph105.preheader

.lr.ph105.preheader:                              ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !1429
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !129
  %i.cq = getelementptr inbounds nuw [128 x i8], ptr %i.co, i64 %i.cp
  br label %.lr.ph105

.loopexit:                                        ; preds = %bb.r, %.lr.ph105
  %.155.lcssa = phi i64 [ %.054102, %.lr.ph105 ], [ %i.cx, %bb.r ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph105, !llvm.loop !1516

.lr.ph105:                                        ; preds = %.lr.ph105.preheader, %.loopexit
  %.pn59103 = phi ptr [ %.053104, %.loopexit ], [ %i.cq, %.lr.ph105.preheader ] ; 2 uses
  %.054102 = phi i64 [ %.155.lcssa, %.loopexit ], [ %i.cn, %.lr.ph105.preheader ] ; 2 uses
  %.053104 = getelementptr inbounds i8, ptr %.pn59103, i64 -128 ; 4 uses
  %i.cr = load <16 x i8>, ptr %.053104, align 16, !tbaa !92
  %i.cs = icmp slt <16 x i8> %i.cr, zeroinitializer
  %i.ct = bitcast <16 x i1> %i.cs to i16
  %i.cu = and i16 %i.ct, 16383                    ; 2 uses
  %.not8996 = icmp eq i16 %i.cu, 0
  br i1 %.not8996, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph105
  %.sroa.076.0.extract.trunc = zext nneg i16 %i.cu to i32
  %i.cv = icmp ne ptr %.053104, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds i8, ptr %.pn59103, i64 -112
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.r
  %.15599 = phi i64 [ %.054102, %.lr.ph ], [ %i.cx, %bb.r ]
  %.sroa.8.098 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.r ] ; 2 uses
  %.sroa.076.097 = phi i32 [ %.sroa.076.0.extract.trunc, %.lr.ph ], [ %.sroa.076.1, %bb.r ] ; 3 uses
  %i.cx = add i64 %.15599, -1                     ; 2 uses
  %i.cy = and i32 %.sroa.076.097, 1
  %.not.i70 = icmp eq i32 %i.cy, 0
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSB_10MemoryPoolEEEESD_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESD_ImmERKT_DpOT0_:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !92
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !92
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !262
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !520, !nonnull !86, !noundef !86
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.ch ; 4 uses
  %i.cj = load i32, ptr %5, align 4, !tbaa !3
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !1533
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = ptrtoint ptr %6 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !229
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cm, align 8, !tbaa !1546
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.co = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.cp = and i64 %i.co, -256
  %i.cq = add i64 %i.cp, 256
  %i.cr = and i64 %i.co, 255
  %i.cs = or disjoint i64 %i.cq, %i.cr
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !262
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !219
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ct, align 8, !tbaa !1309
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !262
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !526  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3                         ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = call noundef ptr @_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %i.p, i64 noundef %i.x, i64 noundef %.0.i52, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !1586
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !1130 ; 13 uses
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
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1587

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.aw, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !1588

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ax = trunc i64 %5 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i16 %i.ax, ptr %i.ay, align 1
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !526
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !262
  %i.bc = and i64 %i.bb, -256
  %i.bd = select i1 %.not.i, i64 4294967295, i64 %i.ba
  %i.be = or i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.az, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !1589
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bf, align 8, !tbaa !203
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.474.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !1321
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.676.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.877.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !1592
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !1594
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  %i.bg = icmp eq i64 %1, 0
  br i1 %i.bg, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %.lr.ph107, label %bb.g

.lr.ph107:                                        ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bi = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph107, %bb.f
  %.0105 = phi i64 [ 0, %.lr.ph107 ], [ %i.bt, %bb.f ] ; 3 uses
  %.034104 = phi i64 [ 0, %.lr.ph107 ], [ %.1, %bb.f ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0105
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !92  ; 2 uses
  %.not85 = icmp eq i8 %i.bl, 0
  br i1 %.not85, label %bb.f, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.034104 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !92
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.d
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !92
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.034104
  call void @llvm.assume(i1 %i.bi)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.0105
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !3
  %i.bs = add nuw i64 %.034104, 1
  br label %bb.f

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.c
  %.1 = phi i64 [ %i.bs, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.034104, %bb.c ] ; 2 uses
  %i.bt = add i64 %.0105, 1
  %i.bu = icmp ult i64 %.1, %1
  br i1 %i.bu, label %bb.c, label %.loopexit, !llvm.loop !1596

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.h, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.h:                                             ; preds = %bb.g
  %i.bv = load ptr, ptr %0, align 8, !tbaa !1532  ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(264) %i.bv, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIiNS_10F14FastMapIaiNS_23HeterogeneousAccessHashIavEENS_26HeterogeneousAccessEqualToIavEEN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, !inline_history !1330

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.h, %bb.g
  %storemerge = phi ptr [ %7, %bb.g ], [ %i.bz, %bb.h ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not4599 = icmp eq i64 %i.ca, 0
  br i1 %.not4599, label %._crit_edge, label %.lr.ph103

.lr.ph103:                                        ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !1312
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !129
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.i

.loopexit86:                                      ; preds = %bb.r, %bb.i
  %.143.lcssa = phi i64 [ %.042100, %bb.i ], [ %i.cv, %bb.r ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %._crit_edge, label %bb.i, !llvm.loop !1597

bb.i:                                             ; preds = %.lr.ph103, %.loopexit86
  %.pn101 = phi ptr [ %i.cd, %.lr.ph103 ], [ %.041102, %.loopexit86 ] ; 2 uses
  %.042100 = phi i64 [ %i.ca, %.lr.ph103 ], [ %.143.lcssa, %.loopexit86 ] ; 2 uses
  %.041102 = getelementptr inbounds i8, ptr %.pn101, i64 -64 ; 4 uses
  %i.cf = load <16 x i8>, ptr %.041102, align 16, !tbaa !92
  %i.cg = icmp slt <16 x i8> %i.cf, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %i.ci = and i16 %i.ch, 4095                     ; 2 uses
  %.sroa.066.0.extract.trunc = zext nneg i16 %i.ci to i32 ; 2 uses
  %cond = icmp eq i16 %i.ci, 0
  br i1 %cond, label %.loopexit86, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.cj = icmp ne ptr %.041102, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds i8, ptr %.pn101, i64 -48 ; 2 uses
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !520
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.092 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.063.091 = phi i32 [ %.sroa.066.0.extract.trunc, %.lr.ph ], [ %.sroa.063.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cm = and i32 %.sroa.063.091, 1
  %.not.i53 = icmp eq i32 %i.cm, 0
  br i1 %.not.i53, label %bb.k, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !97

bb.k:                                             ; preds = %bb.j
  %i.cn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.063.091, i1 true) ; 2 uses
  %i.co = add i32 %.sroa.8.092, %i.cn
  %i.cp = add nuw nsw i32 %i.cn, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.j, %bb.k
  %.pn84 = phi i32 [ %i.cp, %bb.k ], [ 1, %bb.j ]
  %.sroa.8.1.in = phi i32 [ %i.co, %bb.k ], [ %.sroa.8.092, %bb.j ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.063.1 = lshr i32 %.sroa.063.091, %.pn84  ; 2 uses
  %i.cq = zext i32 %.sroa.8.1.in to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [40 x i8], ptr %i.cl, i64 %i.ct
  call void @llvm.prefetch.p0(ptr %i.cu, i32 0, i32 3, i32 1)
  %.not81 = icmp eq i32 %.sroa.063.1, 0
  br i1 %.not81, label %.lr.ph97, label %bb.j

.lr.ph97:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.r
  %.14396 = phi i64 [ %i.cv, %bb.r ], [ %.042100, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.868.095 = phi i32 [ %.sroa.868.1, %bb.r ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.066.094 = phi i32 [ %.sroa.066.1, %bb.r ], [ %.sroa.066.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cv = add i64 %.14396, -1                     ; 2 uses
  %i.cw = and i32 %.sroa.066.094, 1
  %.not.i55 = icmp eq i32 %i.cw, 0
  br i1 %.not.i55, label %bb.l, label %bb.m, !prof !97

bb.l:                                             ; preds = %.lr.ph97
  %i.cx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.066.094, i1 true) ; 2 uses
  %i.cy = add i32 %.sroa.868.095, %i.cx
  %i.cz = add nuw nsw i32 %i.cx, 1
  br label %bb.m
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE19tryEmplaceValueImplIaJaRmEEES8_INS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEEbES8_ImmERKT_DpOT0_:bb.a
  %.1 = phi ptr [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.bp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64              ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !92
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %_ZN5folly3f146detail8F14ChunkISt4pairIKaiEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKaiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKaiEE6setTagEmm.exit: ; preds = %bb.m
  %i.bu = trunc i64 %3 to i8
  store i8 %i.bu, ptr %i.br, align 1, !tbaa !92
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bq ; 4 uses
  %i.bx = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = load i8, ptr %5, align 1, !tbaa !92
  store i8 %i.by, ptr %i.bw, align 4, !tbaa !1617
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.ca = load i64, ptr %6, align 8, !tbaa !129
  %i.cb = trunc i64 %i.ca to i32
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !1581
  %i.cc = lshr i64 %i.bq, 1
  %i.cd = ptrtoint ptr %i.bw to i64
  %i.ce = or i64 %i.cc, %i.cd                     ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !1578
  %i.ch = icmp ult i64 %i.cg, %i.ce
  br i1 %i.ch, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKaiEE6setTagEmm.exit
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !129
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKaiEE6setTagEmm.exit, %bb.o
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.cj = and i64 %i.ci, -256
  %i.ck = add i64 %i.cj, 256
  %i.cl = and i64 %i.ci, 255
  %i.cm = or disjoint i64 %i.ck, %i.cl
  store i64 %i.cm, ptr %i.a, align 8, !tbaa !262
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit
  %.sink99 = phi ptr [ %i.ai, %bb.g ], [ %i.bw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  %.lcssa97.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bq, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  store ptr %.sink99, ptr %0, align 8, !tbaa !1618
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa97.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cn, align 8, !tbaa !1620
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !262
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1546 ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = mul i64 %3, %2
  store i64 %i.m, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.n = icmp eq i64 %2, 1                        ; 2 uses
  %i.o = shl i64 %3, 3
  %i.p = add i64 %i.o, 16
  %i.q = shl i64 %2, 7
  %.0.i = select i1 %i.n, i64 %i.p, i64 %i.q
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.r = mul i64 %5, %4
  store i64 %i.r, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.s = icmp eq i64 %4, 1                        ; 2 uses
  %i.t = shl i64 %5, 3
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %4, 7
  %.0.i69 = select i1 %i.s, i64 %i.u, i64 %i.v    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.w = load ptr, ptr %0, align 8, !tbaa !1548   ; 2 uses
  %i.x = add i64 %.0.i69, 8
  %i.y = and i64 %i.x, -16
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i64 noundef %i.y, i64 0), !inline_history !1623 ; 16 uses
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !1130
  store i8 0, ptr %i.i, align 1, !tbaa !172
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
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1624

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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !1625

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.ax = trunc i64 %5 to i8
  store i8 %i.ax, ptr %i.aw, align 2, !tbaa !1616
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !1546
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.az = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !262
  %i.bb = and i64 %i.ba, -256
  %i.bc = select i1 %.not.i, i64 4294967295, i64 %i.az
  %i.bd = or i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.ay, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !1626
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.be, align 8, !tbaa !203
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.485.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.586.0..sroa_idx, align 8, !tbaa !1629
  %.sroa.687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.687.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.888.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.888.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !1631
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !203
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  %i.bf = icmp eq i64 %1, 0
  br i1 %i.bf, label %bb.w, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.s, %i.n
  br i1 %or.cond, label %.lr.ph109, label %bb.h

.lr.ph109:                                        ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bh = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph109, %bb.g
  %.0107 = phi i64 [ 0, %.lr.ph109 ], [ %i.bv, %bb.g ] ; 3 uses
  %.042106 = phi i64 [ 0, %.lr.ph109 ], [ %.1, %bb.g ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0107
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !92  ; 2 uses
  %.not90 = icmp eq i8 %i.bk, 0
  br i1 %.not90, label %bb.g, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.042106 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !92
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKaiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !92
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.042106 ; 2 uses
  call void @llvm.assume(i1 %i.bh)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.0107 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !92
  store i8 %i.br, ptr %i.bo, align 4, !tbaa !1617
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !1581
  %i.bu = add nuw i64 %.042106, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1 = phi i64 [ %i.bu, %bb.f ], [ %.042106, %bb.c ] ; 3 uses
  %i.bv = add i64 %.0107, 1
  %i.bw = icmp ult i64 %.1, %1
  br i1 %i.bw, label %bb.c, label %._crit_edge110, !llvm.loop !1633

._crit_edge110:                                   ; preds = %bb.g
  %i.bx = add i64 %.1, -1                         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  %i.ca = icmp ne ptr %i.ac, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ca)
  %i.cb = and i64 %i.bx, 255                      ; 2 uses
  %i.cc = icmp samesign ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cc)
  %i.cd = lshr i64 %i.cb, 1
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = or i64 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !129
  br label %bb.w

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.i, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.i:                                             ; preds = %bb.h
  %i.ch = load ptr, ptr %0, align 8, !tbaa !1548  ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(264) %i.ch, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %bb.j, !inline_history !1330

bb.j:                                             ; preds = %bb.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIaivvN8facebook5velox6memory12StlAllocatorISt4pairIKaiEEEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  resume { ptr, i32 } %i.cm

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.i, %bb.h
  %storemerge = phi ptr [ %7, %bb.h ], [ %i.cl, %bb.i ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not57101 = icmp eq i64 %i.cn, 0
  br i1 %.not57101, label %._crit_edge, label %.lr.ph105.preheader

.lr.ph105.preheader:                              ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !1547
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !129
  %i.cq = getelementptr inbounds nuw [128 x i8], ptr %i.co, i64 %i.cp
  br label %.lr.ph105

.loopexit:                                        ; preds = %bb.r, %.lr.ph105
  %.155.lcssa = phi i64 [ %.054102, %.lr.ph105 ], [ %i.cx, %bb.r ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph105, !llvm.loop !1634

.lr.ph105:                                        ; preds = %.lr.ph105.preheader, %.loopexit
  %.pn59103 = phi ptr [ %.053104, %.loopexit ], [ %i.cq, %.lr.ph105.preheader ] ; 2 uses
  %.054102 = phi i64 [ %.155.lcssa, %.loopexit ], [ %i.cn, %.lr.ph105.preheader ] ; 2 uses
  %.053104 = getelementptr inbounds i8, ptr %.pn59103, i64 -128 ; 4 uses
  %i.cr = load <16 x i8>, ptr %.053104, align 16, !tbaa !92
  %i.cs = icmp slt <16 x i8> %i.cr, zeroinitializer
  %i.ct = bitcast <16 x i1> %i.cs to i16
  %i.cu = and i16 %i.ct, 16383                    ; 2 uses
  %.not8996 = icmp eq i16 %i.cu, 0
  br i1 %.not8996, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph105
  %.sroa.076.0.extract.trunc = zext nneg i16 %i.cu to i32
  %i.cv = icmp ne ptr %.053104, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds i8, ptr %.pn59103, i64 -112
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.r
  %.15599 = phi i64 [ %.054102, %.lr.ph ], [ %i.cx, %bb.r ]
  %.sroa.8.098 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.r ] ; 2 uses
  %.sroa.076.097 = phi i32 [ %.sroa.076.0.extract.trunc, %.lr.ph ], [ %.sroa.076.1, %bb.r ] ; 3 uses
  %i.cx = add i64 %.15599, -1                     ; 2 uses
  %i.cy = and i32 %.sroa.076.097, 1
  %.not.i70 = icmp eq i32 %i.cy, 0
end_hunk_5
begin_hunk_6_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSB_10MemoryPoolEEEESD_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESD_ImmERKT_DpOT0_:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !92
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !92
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !262
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !579, !nonnull !86, !noundef !86
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.ch ; 4 uses
  %i.cj = load i32, ptr %5, align 4, !tbaa !3
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !1651
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = ptrtoint ptr %6 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !229
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cm, align 8, !tbaa !1664
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.co = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.cp = and i64 %i.co, -256
  %i.cq = add i64 %i.cp, 256
  %i.cr = and i64 %i.co, 255
  %i.cs = or disjoint i64 %i.cq, %i.cr
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !262
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !219
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ct, align 8, !tbaa !1309
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !262
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !585  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3                         ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = call noundef ptr @_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %i.p, i64 noundef %i.x, i64 noundef %.0.i52, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !1704
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !1130 ; 13 uses
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
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1705

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.aw, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !1706

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ax = trunc i64 %5 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i16 %i.ax, ptr %i.ay, align 1
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !585
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !262
  %i.bc = and i64 %i.bb, -256
  %i.bd = select i1 %.not.i, i64 4294967295, i64 %i.ba
  %i.be = or i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.az, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !1707
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bf, align 8, !tbaa !203
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.474.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !1321
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.676.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.877.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !1710
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !1712
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  %i.bg = icmp eq i64 %1, 0
  br i1 %i.bg, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %.lr.ph107, label %bb.g

.lr.ph107:                                        ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bi = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph107, %bb.f
  %.0105 = phi i64 [ 0, %.lr.ph107 ], [ %i.bt, %bb.f ] ; 3 uses
  %.034104 = phi i64 [ 0, %.lr.ph107 ], [ %.1, %bb.f ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0105
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !92  ; 2 uses
  %.not85 = icmp eq i8 %i.bl, 0
  br i1 %.not85, label %bb.f, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.034104 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !92
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.d
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !92
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.034104
  call void @llvm.assume(i1 %i.bi)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.0105
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !3
  %i.bs = add nuw i64 %.034104, 1
  br label %bb.f

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.c
  %.1 = phi i64 [ %i.bs, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.034104, %bb.c ] ; 2 uses
  %i.bt = add i64 %.0105, 1
  %i.bu = icmp ult i64 %.1, %1
  br i1 %i.bu, label %bb.c, label %.loopexit, !llvm.loop !1714

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.h, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.h:                                             ; preds = %bb.g
  %i.bv = load ptr, ptr %0, align 8, !tbaa !1650  ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(264) %i.bv, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIiNS_10F14FastMapIsiNS_23HeterogeneousAccessHashIsvEENS_26HeterogeneousAccessEqualToIsvEEN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, !inline_history !1330

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.h, %bb.g
  %storemerge = phi ptr [ %7, %bb.g ], [ %i.bz, %bb.h ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not4599 = icmp eq i64 %i.ca, 0
  br i1 %.not4599, label %._crit_edge, label %.lr.ph103

.lr.ph103:                                        ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !1312
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !129
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.i

.loopexit86:                                      ; preds = %bb.r, %bb.i
  %.143.lcssa = phi i64 [ %.042100, %bb.i ], [ %i.cv, %bb.r ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %._crit_edge, label %bb.i, !llvm.loop !1715

bb.i:                                             ; preds = %.lr.ph103, %.loopexit86
  %.pn101 = phi ptr [ %i.cd, %.lr.ph103 ], [ %.041102, %.loopexit86 ] ; 2 uses
  %.042100 = phi i64 [ %i.ca, %.lr.ph103 ], [ %.143.lcssa, %.loopexit86 ] ; 2 uses
  %.041102 = getelementptr inbounds i8, ptr %.pn101, i64 -64 ; 4 uses
  %i.cf = load <16 x i8>, ptr %.041102, align 16, !tbaa !92
  %i.cg = icmp slt <16 x i8> %i.cf, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %i.ci = and i16 %i.ch, 4095                     ; 2 uses
  %.sroa.066.0.extract.trunc = zext nneg i16 %i.ci to i32 ; 2 uses
  %cond = icmp eq i16 %i.ci, 0
  br i1 %cond, label %.loopexit86, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.cj = icmp ne ptr %.041102, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds i8, ptr %.pn101, i64 -48 ; 2 uses
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !579
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.092 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.063.091 = phi i32 [ %.sroa.066.0.extract.trunc, %.lr.ph ], [ %.sroa.063.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cm = and i32 %.sroa.063.091, 1
  %.not.i53 = icmp eq i32 %i.cm, 0
  br i1 %.not.i53, label %bb.k, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !97

bb.k:                                             ; preds = %bb.j
  %i.cn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.063.091, i1 true) ; 2 uses
  %i.co = add i32 %.sroa.8.092, %i.cn
  %i.cp = add nuw nsw i32 %i.cn, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.j, %bb.k
  %.pn84 = phi i32 [ %i.cp, %bb.k ], [ 1, %bb.j ]
  %.sroa.8.1.in = phi i32 [ %i.co, %bb.k ], [ %.sroa.8.092, %bb.j ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.063.1 = lshr i32 %.sroa.063.091, %.pn84  ; 2 uses
  %i.cq = zext i32 %.sroa.8.1.in to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [40 x i8], ptr %i.cl, i64 %i.ct
  call void @llvm.prefetch.p0(ptr %i.cu, i32 0, i32 3, i32 1)
  %.not81 = icmp eq i32 %.sroa.063.1, 0
  br i1 %.not81, label %.lr.ph97, label %bb.j

.lr.ph97:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.r
  %.14396 = phi i64 [ %i.cv, %bb.r ], [ %.042100, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.868.095 = phi i32 [ %.sroa.868.1, %bb.r ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.066.094 = phi i32 [ %.sroa.066.1, %bb.r ], [ %.sroa.066.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cv = add i64 %.14396, -1                     ; 2 uses
  %i.cw = and i32 %.sroa.066.094, 1
  %.not.i55 = icmp eq i32 %i.cw, 0
  br i1 %.not.i55, label %bb.l, label %bb.m, !prof !97

bb.l:                                             ; preds = %.lr.ph97
  %i.cx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.066.094, i1 true) ; 2 uses
  %i.cy = add i32 %.sroa.868.095, %i.cx
  %i.cz = add nuw nsw i32 %i.cx, 1
  br label %bb.m
end_hunk_6
begin_hunk_7_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE19tryEmplaceValueImplIsJsRmEEES8_INS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEEbES8_ImmERKT_DpOT0_:bb.a
  %.1 = phi ptr [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.bp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64              ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !92
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %_ZN5folly3f146detail8F14ChunkISt4pairIKsiEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKsiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKsiEE6setTagEmm.exit: ; preds = %bb.m
  %i.bu = trunc i64 %3 to i8
  store i8 %i.bu, ptr %i.br, align 1, !tbaa !92
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bq ; 4 uses
  %i.bx = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = load i16, ptr %5, align 2, !tbaa !595
  store i16 %i.by, ptr %i.bw, align 4, !tbaa !1735
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.ca = load i64, ptr %6, align 8, !tbaa !129
  %i.cb = trunc i64 %i.ca to i32
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !1699
  %i.cc = lshr i64 %i.bq, 1
  %i.cd = ptrtoint ptr %i.bw to i64
  %i.ce = or i64 %i.cc, %i.cd                     ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !1696
  %i.ch = icmp ult i64 %i.cg, %i.ce
  br i1 %i.ch, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKsiEE6setTagEmm.exit
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !129
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKsiEE6setTagEmm.exit, %bb.o
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.cj = and i64 %i.ci, -256
  %i.ck = add i64 %i.cj, 256
  %i.cl = and i64 %i.ci, 255
  %i.cm = or disjoint i64 %i.ck, %i.cl
  store i64 %i.cm, ptr %i.a, align 8, !tbaa !262
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit
  %.sink99 = phi ptr [ %i.ai, %bb.g ], [ %i.bw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  %.lcssa97.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bq, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ]
  store ptr %.sink99, ptr %0, align 8, !tbaa !1736
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa97.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cn, align 8, !tbaa !1738
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !262
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1664 ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = mul i64 %3, %2
  store i64 %i.m, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.n = icmp eq i64 %2, 1                        ; 2 uses
  %i.o = shl i64 %3, 3
  %i.p = add i64 %i.o, 16
  %i.q = shl i64 %2, 7
  %.0.i = select i1 %i.n, i64 %i.p, i64 %i.q
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.r = mul i64 %5, %4
  store i64 %i.r, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.s = icmp eq i64 %4, 1                        ; 2 uses
  %i.t = shl i64 %5, 3
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %4, 7
  %.0.i69 = select i1 %i.s, i64 %i.u, i64 %i.v    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.w = load ptr, ptr %0, align 8, !tbaa !1666   ; 2 uses
  %i.x = add i64 %.0.i69, 8
  %i.y = and i64 %i.x, -16
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i64 noundef %i.y, i64 0), !inline_history !1741 ; 16 uses
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !1130
  store i8 0, ptr %i.i, align 1, !tbaa !172
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
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1742

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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !1743

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.ax = trunc i64 %5 to i8
  store i8 %i.ax, ptr %i.aw, align 2, !tbaa !1734
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !1664
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.az = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !262
  %i.bb = and i64 %i.ba, -256
  %i.bc = select i1 %.not.i, i64 4294967295, i64 %i.az
  %i.bd = or i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.ay, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !1744
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.be, align 8, !tbaa !203
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.485.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.586.0..sroa_idx, align 8, !tbaa !1747
  %.sroa.687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.687.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.888.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.888.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !1749
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !203
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  %i.bf = icmp eq i64 %1, 0
  br i1 %i.bf, label %bb.w, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.s, %i.n
  br i1 %or.cond, label %.lr.ph109, label %bb.h

.lr.ph109:                                        ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bh = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph109, %bb.g
  %.0107 = phi i64 [ 0, %.lr.ph109 ], [ %i.bv, %bb.g ] ; 3 uses
  %.042106 = phi i64 [ 0, %.lr.ph109 ], [ %.1, %bb.g ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0107
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !92  ; 2 uses
  %.not90 = icmp eq i8 %i.bk, 0
  br i1 %.not90, label %bb.g, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.042106 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !92
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKsiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !92
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.042106 ; 2 uses
  call void @llvm.assume(i1 %i.bh)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.0107 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i16, ptr %i.bp, align 2, !tbaa !595
  store i16 %i.br, ptr %i.bo, align 4, !tbaa !1735
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !1699
  %i.bu = add nuw i64 %.042106, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1 = phi i64 [ %i.bu, %bb.f ], [ %.042106, %bb.c ] ; 3 uses
  %i.bv = add i64 %.0107, 1
  %i.bw = icmp ult i64 %.1, %1
  br i1 %i.bw, label %bb.c, label %._crit_edge110, !llvm.loop !1751

._crit_edge110:                                   ; preds = %bb.g
  %i.bx = add i64 %.1, -1                         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  %i.ca = icmp ne ptr %i.ac, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ca)
  %i.cb = and i64 %i.bx, 255                      ; 2 uses
  %i.cc = icmp samesign ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cc)
  %i.cd = lshr i64 %i.cb, 1
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = or i64 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !129
  br label %bb.w

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.i, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.i:                                             ; preds = %bb.h
  %i.ch = load ptr, ptr %0, align 8, !tbaa !1666  ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(264) %i.ch, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %bb.j, !inline_history !1330

bb.j:                                             ; preds = %bb.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIsivvN8facebook5velox6memory12StlAllocatorISt4pairIKsiEEEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  resume { ptr, i32 } %i.cm

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.i, %bb.h
  %storemerge = phi ptr [ %7, %bb.h ], [ %i.cl, %bb.i ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not57101 = icmp eq i64 %i.cn, 0
  br i1 %.not57101, label %._crit_edge, label %.lr.ph105.preheader

.lr.ph105.preheader:                              ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !1665
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !129
  %i.cq = getelementptr inbounds nuw [128 x i8], ptr %i.co, i64 %i.cp
  br label %.lr.ph105

.loopexit:                                        ; preds = %bb.r, %.lr.ph105
  %.155.lcssa = phi i64 [ %.054102, %.lr.ph105 ], [ %i.cx, %bb.r ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph105, !llvm.loop !1752

.lr.ph105:                                        ; preds = %.lr.ph105.preheader, %.loopexit
  %.pn59103 = phi ptr [ %.053104, %.loopexit ], [ %i.cq, %.lr.ph105.preheader ] ; 2 uses
  %.054102 = phi i64 [ %.155.lcssa, %.loopexit ], [ %i.cn, %.lr.ph105.preheader ] ; 2 uses
  %.053104 = getelementptr inbounds i8, ptr %.pn59103, i64 -128 ; 4 uses
  %i.cr = load <16 x i8>, ptr %.053104, align 16, !tbaa !92
  %i.cs = icmp slt <16 x i8> %i.cr, zeroinitializer
  %i.ct = bitcast <16 x i1> %i.cs to i16
  %i.cu = and i16 %i.ct, 16383                    ; 2 uses
  %.not8996 = icmp eq i16 %i.cu, 0
  br i1 %.not8996, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph105
  %.sroa.076.0.extract.trunc = zext nneg i16 %i.cu to i32
  %i.cv = icmp ne ptr %.053104, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds i8, ptr %.pn59103, i64 -112
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.r
  %.15599 = phi i64 [ %.054102, %.lr.ph ], [ %i.cx, %bb.r ]
  %.sroa.8.098 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.r ] ; 2 uses
  %.sroa.076.097 = phi i32 [ %.sroa.076.0.extract.trunc, %.lr.ph ], [ %.sroa.076.1, %bb.r ] ; 3 uses
  %i.cx = add i64 %.15599, -1                     ; 2 uses
  %i.cy = and i32 %.sroa.076.097, 1
  %.not.i70 = icmp eq i32 %i.cy, 0
end_hunk_7
begin_hunk_8_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSB_10MemoryPoolEEEESD_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESD_ImmERKT_DpOT0_:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !92
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !92
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !262
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !640, !nonnull !86, !noundef !86
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.ch ; 4 uses
  %i.cj = load i32, ptr %5, align 4, !tbaa !3
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !1769
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = ptrtoint ptr %6 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !229
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cm, align 8, !tbaa !1782
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.co = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.cp = and i64 %i.co, -256
  %i.cq = add i64 %i.cp, 256
  %i.cr = and i64 %i.co, 255
  %i.cs = or disjoint i64 %i.cq, %i.cr
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !262
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !219
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ct, align 8, !tbaa !1309
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !262
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !646  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3                         ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = call noundef ptr @_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %i.p, i64 noundef %i.x, i64 noundef %.0.i52, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !1822
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !1130 ; 13 uses
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
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1823

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.aw, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !1824

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ax = trunc i64 %5 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i16 %i.ax, ptr %i.ay, align 1
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !646
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !262
  %i.bc = and i64 %i.bb, -256
  %i.bd = select i1 %.not.i, i64 4294967295, i64 %i.ba
  %i.be = or i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.az, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !1825
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bf, align 8, !tbaa !203
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.474.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !1321
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.676.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.877.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !1828
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !1830
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  %i.bg = icmp eq i64 %1, 0
  br i1 %i.bg, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %.lr.ph107, label %bb.g

.lr.ph107:                                        ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bi = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph107, %bb.f
  %.0105 = phi i64 [ 0, %.lr.ph107 ], [ %i.bt, %bb.f ] ; 3 uses
  %.034104 = phi i64 [ 0, %.lr.ph107 ], [ %.1, %bb.f ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0105
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !92  ; 2 uses
  %.not85 = icmp eq i8 %i.bl, 0
  br i1 %.not85, label %bb.f, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.034104 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !92
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.d
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !92
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.034104
  call void @llvm.assume(i1 %i.bi)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.0105
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !3
  %i.bs = add nuw i64 %.034104, 1
  br label %bb.f

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.c
  %.1 = phi i64 [ %i.bs, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.034104, %bb.c ] ; 2 uses
  %i.bt = add i64 %.0105, 1
  %i.bu = icmp ult i64 %.1, %1
  br i1 %i.bu, label %bb.c, label %.loopexit, !llvm.loop !1832

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.h, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.h:                                             ; preds = %bb.g
  %i.bv = load ptr, ptr %0, align 8, !tbaa !1768  ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(264) %i.bv, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIiNS_10F14FastMapIliNS_23HeterogeneousAccessHashIlvEENS_26HeterogeneousAccessEqualToIlvEEN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, !inline_history !1330

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.h, %bb.g
  %storemerge = phi ptr [ %7, %bb.g ], [ %i.bz, %bb.h ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not4599 = icmp eq i64 %i.ca, 0
  br i1 %.not4599, label %._crit_edge, label %.lr.ph103

.lr.ph103:                                        ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !1312
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !129
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.i

.loopexit86:                                      ; preds = %bb.r, %bb.i
  %.143.lcssa = phi i64 [ %.042100, %bb.i ], [ %i.cv, %bb.r ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %._crit_edge, label %bb.i, !llvm.loop !1833

bb.i:                                             ; preds = %.lr.ph103, %.loopexit86
  %.pn101 = phi ptr [ %i.cd, %.lr.ph103 ], [ %.041102, %.loopexit86 ] ; 2 uses
  %.042100 = phi i64 [ %i.ca, %.lr.ph103 ], [ %.143.lcssa, %.loopexit86 ] ; 2 uses
  %.041102 = getelementptr inbounds i8, ptr %.pn101, i64 -64 ; 4 uses
  %i.cf = load <16 x i8>, ptr %.041102, align 16, !tbaa !92
  %i.cg = icmp slt <16 x i8> %i.cf, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %i.ci = and i16 %i.ch, 4095                     ; 2 uses
  %.sroa.066.0.extract.trunc = zext nneg i16 %i.ci to i32 ; 2 uses
  %cond = icmp eq i16 %i.ci, 0
  br i1 %cond, label %.loopexit86, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.cj = icmp ne ptr %.041102, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds i8, ptr %.pn101, i64 -48 ; 2 uses
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !640
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.092 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.063.091 = phi i32 [ %.sroa.066.0.extract.trunc, %.lr.ph ], [ %.sroa.063.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cm = and i32 %.sroa.063.091, 1
  %.not.i53 = icmp eq i32 %i.cm, 0
  br i1 %.not.i53, label %bb.k, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !97

bb.k:                                             ; preds = %bb.j
  %i.cn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.063.091, i1 true) ; 2 uses
  %i.co = add i32 %.sroa.8.092, %i.cn
  %i.cp = add nuw nsw i32 %i.cn, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.j, %bb.k
  %.pn84 = phi i32 [ %i.cp, %bb.k ], [ 1, %bb.j ]
  %.sroa.8.1.in = phi i32 [ %i.co, %bb.k ], [ %.sroa.8.092, %bb.j ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.063.1 = lshr i32 %.sroa.063.091, %.pn84  ; 2 uses
  %i.cq = zext i32 %.sroa.8.1.in to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [40 x i8], ptr %i.cl, i64 %i.ct
  call void @llvm.prefetch.p0(ptr %i.cu, i32 0, i32 3, i32 1)
  %.not81 = icmp eq i32 %.sroa.063.1, 0
  br i1 %.not81, label %.lr.ph97, label %bb.j

.lr.ph97:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.r
  %.14396 = phi i64 [ %i.cv, %bb.r ], [ %.042100, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.868.095 = phi i32 [ %.sroa.868.1, %bb.r ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.066.094 = phi i32 [ %.sroa.066.1, %bb.r ], [ %.sroa.066.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cv = add i64 %.14396, -1                     ; 2 uses
  %i.cw = and i32 %.sroa.066.094, 1
  %.not.i55 = icmp eq i32 %i.cw, 0
  br i1 %.not.i55, label %bb.l, label %bb.m, !prof !97

bb.l:                                             ; preds = %.lr.ph97
  %i.cx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.066.094, i1 true) ; 2 uses
  %i.cy = add i32 %.sroa.868.095, %i.cx
  %i.cz = add nuw nsw i32 %i.cx, 1
  br label %bb.m
end_hunk_8
begin_hunk_9_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE19tryEmplaceValueImplIlJlRmEEES8_INS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEEbES8_ImmERKT_DpOT0_:bb.a

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16reserveForInsertEm.exit ], [ %i.bk, %bb.k ]
  %.1 = phi ptr [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.k ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bp = zext nneg i16 %i.bo to i64              ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bp ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !92
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %_ZN5folly3f146detail8F14ChunkISt4pairIKliEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKliEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKliEE6setTagEmm.exit: ; preds = %bb.l
  %i.bt = trunc i64 %3 to i8
  store i8 %i.bt, ptr %i.bq, align 1, !tbaa !92
  %i.bu = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bp ; 4 uses
  %i.bw = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = load i64, ptr %5, align 8, !tbaa !129
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !1853
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bz = load i64, ptr %6, align 8, !tbaa !129
  %i.ca = trunc i64 %i.bz to i32
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !1817
  %i.cb = ptrtoint ptr %i.bv to i64
  %i.cc = or i64 %i.cb, %i.bp                     ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !1814
  %i.cf = icmp ult i64 %i.ce, %i.cc
  br i1 %i.cf, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKliEE6setTagEmm.exit
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !129
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKliEE6setTagEmm.exit, %bb.n
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.ch = and i64 %i.cg, -256
  %i.ci = add i64 %i.ch, 256
  %i.cj = and i64 %i.cg, 255
  %i.ck = or disjoint i64 %i.ci, %i.cj
  store i64 %i.ck, ptr %i.a, align 8, !tbaa !262
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit
  %.lcssa91.sink = phi ptr [ %i.bv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ], [ %i.ab, %bb.d ]
  %.lcssa92.sink = phi i64 [ %i.bp, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ], [ %i.aa, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISA_EEEES8_ImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa91.sink, ptr %0, align 8, !tbaa !1854
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa92.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cl, align 8, !tbaa !1856
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !262
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1782 ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = mul i64 %3, %2
  store i64 %i.m, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.n = icmp eq i64 %2, 1                        ; 2 uses
  %i.o = shl i64 %3, 4
  %i.p = add i64 %i.o, 16
  %i.q = shl i64 %2, 8
  %.0.i = select i1 %i.n, i64 %i.p, i64 %i.q
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.r = mul i64 %5, %4
  store i64 %i.r, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.s = icmp eq i64 %4, 1                        ; 2 uses
  %i.t = shl i64 %5, 4
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %4, 8
  %.0.i69 = select i1 %i.s, i64 %i.u, i64 %i.v    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.w = load ptr, ptr %0, align 8, !tbaa !1784   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i64 noundef %.0.i69, i64 0), !inline_history !1859 ; 16 uses
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !1130
  store i8 0, ptr %i.i, align 1, !tbaa !172
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
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1860

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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !1861

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 14
  %i.av = trunc i64 %5 to i8
  store i8 %i.av, ptr %i.au, align 2, !tbaa !1852
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !1782
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ax = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !262
  %i.az = and i64 %i.ay, -256
  %i.ba = select i1 %.not.i, i64 4294967295, i64 %i.ax
  %i.bb = or i64 %i.az, %i.ba
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !1862
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.bc, align 8, !tbaa !203
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.485.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.586.0..sroa_idx, align 8, !tbaa !1865
  %.sroa.687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.687.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.888.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.888.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !1867
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !203
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  %i.bd = icmp eq i64 %1, 0
  br i1 %i.bd, label %bb.w, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.s, %i.n
  br i1 %or.cond, label %.lr.ph109, label %bb.h

.lr.ph109:                                        ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bf = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph109, %bb.g
  %.0107 = phi i64 [ 0, %.lr.ph109 ], [ %i.bt, %bb.g ] ; 3 uses
  %.042106 = phi i64 [ 0, %.lr.ph109 ], [ %.1, %bb.g ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0107
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !92  ; 2 uses
  %.not90 = icmp eq i8 %i.bi, 0
  br i1 %.not90, label %bb.g, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.042106 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !92
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKliEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !92
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %.042106 ; 2 uses
  call void @llvm.assume(i1 %i.bf)
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.0107 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !129
  store i64 %i.bp, ptr %i.bm, align 8, !tbaa !1853
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load i32, ptr %i.bo, align 8, !tbaa !3
  store i32 %i.br, ptr %i.bq, align 8, !tbaa !1817
  %i.bs = add nuw i64 %.042106, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1 = phi i64 [ %i.bs, %bb.f ], [ %.042106, %bb.c ] ; 4 uses
  %i.bt = add i64 %.0107, 1
  %i.bu = icmp ult i64 %.1, %1
  br i1 %i.bu, label %bb.c, label %._crit_edge110, !llvm.loop !1869

._crit_edge110:                                   ; preds = %bb.g
  %i.bv = add i64 %.1, 255
  %i.bw = getelementptr [16 x i8], ptr %i.aa, i64 %.1
  %i.bx = icmp ne ptr %i.aa, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bx)
  %i.by = and i64 %i.bv, 255                      ; 2 uses
  %i.bz = icmp samesign ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.bz)
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = or i64 %i.by, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !129
  br label %bb.w

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.i, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.i:                                             ; preds = %bb.h
  %i.cd = load ptr, ptr %0, align 8, !tbaa !1784  ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef ptr %i.cg(ptr noundef nonnull align 8 dereferenceable(264) %i.cd, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %bb.j, !inline_history !1330

bb.j:                                             ; preds = %bb.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  resume { ptr, i32 } %i.ci

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.i, %bb.h
  %storemerge = phi ptr [ %7, %bb.h ], [ %i.ch, %bb.i ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not57101 = icmp eq i64 %i.cj, 0
  br i1 %.not57101, label %._crit_edge, label %.lr.ph105.preheader

.lr.ph105.preheader:                              ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !1783
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !129
  %i.cm = getelementptr inbounds nuw [256 x i8], ptr %i.ck, i64 %i.cl
  br label %.lr.ph105

.loopexit:                                        ; preds = %bb.r, %.lr.ph105
  %.155.lcssa = phi i64 [ %.054102, %.lr.ph105 ], [ %i.ct, %bb.r ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph105, !llvm.loop !1870

.lr.ph105:                                        ; preds = %.lr.ph105.preheader, %.loopexit
  %.pn59103 = phi ptr [ %.053104, %.loopexit ], [ %i.cm, %.lr.ph105.preheader ] ; 2 uses
  %.054102 = phi i64 [ %.155.lcssa, %.loopexit ], [ %i.cj, %.lr.ph105.preheader ] ; 2 uses
  %.053104 = getelementptr inbounds i8, ptr %.pn59103, i64 -256 ; 4 uses
  %i.cn = load <16 x i8>, ptr %.053104, align 16, !tbaa !92
  %i.co = icmp slt <16 x i8> %i.cn, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16
  %i.cq = and i16 %i.cp, 16383                    ; 2 uses
  %.not8996 = icmp eq i16 %i.cq, 0
  br i1 %.not8996, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph105
  %.sroa.076.0.extract.trunc = zext nneg i16 %i.cq to i32
  %i.cr = icmp ne ptr %.053104, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds i8, ptr %.pn59103, i64 -240
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.r
  %.15599 = phi i64 [ %.054102, %.lr.ph ], [ %i.ct, %bb.r ]
  %.sroa.8.098 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.r ] ; 2 uses
  %.sroa.076.097 = phi i32 [ %.sroa.076.0.extract.trunc, %.lr.ph ], [ %.sroa.076.1, %bb.r ] ; 3 uses
  %i.ct = add i64 %.15599, -1                     ; 2 uses
  %i.cu = and i32 %.sroa.076.097, 1
  %.not.i70 = icmp eq i32 %i.cu, 0
  br i1 %.not.i70, label %bb.l, label %bb.m, !prof !97

end_hunk_9
begin_hunk_10_@_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !1782
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1883, !nonnull !86, !align !183
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !129 ; 2 uses
  %i.af = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ae, i1 true)
  %i.ag = icmp eq i64 %i.ae, 0
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !262
  %i.ai = and i64 %i.ah, -256
  %i.aj = select i1 %i.ag, i64 4294967295, i64 %i.af
  %i.ak = or i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.ab, align 8, !tbaa !262
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.n, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.q, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !1784 ; 2 uses
  %i.am = add i64 %.0.i.i, 15
  %i.an = and i64 %i.am, -16
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(264) %i.al, ptr noundef nonnull %.02.i.i, i64 noundef %i.an)
          to label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit unwind label %bb.h, !inline_history !1874

bb.h:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #32
  unreachable

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlivvN8facebook5velox6memory12StlAllocatorISt4pairIKliEEEEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions6detail11LookupTableInEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions6detail11LookupTableInEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox9functions6detail11LookupTableInEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #31, !inline_history !1884
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions6detail11LookupTableInEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions6detail11LookupTableInEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions6detail11LookupTableInEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1217 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !92
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #31
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox9functions6detail11LookupTableInED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN8facebook5velox9functions6detail11LookupTableInEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !707  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly10F14FastMapIiNS1_IniNS0_23HeterogeneousAccessHashInvEENS0_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEENS2_IivEENS4_IivEENS9_ISA_IKiSE_EEEEESt14default_deleteISK_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly10F14FastMapIiNS1_IniNS0_23HeterogeneousAccessHashInvEENS0_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEENS2_IivEENS4_IivEENS9_ISA_IKiSE_EEEEEEclEPSK_.exit.i

_ZNKSt14default_deleteIN5folly10F14FastMapIiNS1_IniNS0_23HeterogeneousAccessHashInvEENS0_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEENS2_IivEENS4_IivEENS9_ISA_IKiSE_EEEEEEclEPSK_.exit.i: ; preds = %bb.a
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrIN5folly10F14FastMapIiNS1_IniNS0_23HeterogeneousAccessHashInvEENS0_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEENS2_IivEENS4_IivEENS9_ISA_IKiSE_EEEEESt14default_deleteISK_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10F14FastMapIiNS1_IniNS0_23HeterogeneousAccessHashInvEENS0_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEENS2_IivEENS4_IivEENS9_ISA_IKiSE_EEEEESt14default_deleteISK_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5folly10F14FastMapIiNS1_IniNS0_23HeterogeneousAccessHashInvEENS0_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEENS2_IivEENS4_IivEENS9_ISA_IKiSE_EEEEEEclEPSK_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox9functions6detail11LookupTableInED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN8facebook5velox9functions6detail11LookupTableInEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !707  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN8facebook5velox9functions6detail11LookupTableInED2Ev.exit, label %_ZNKSt14default_deleteIN5folly10F14FastMapIiNS1_IniNS0_23HeterogeneousAccessHashInvEENS0_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEENS2_IivEENS4_IivEENS9_ISA_IKiSE_EEEEEEclEPSK_.exit.i.i

_ZNKSt14default_deleteIN5folly10F14FastMapIiNS1_IniNS0_23HeterogeneousAccessHashInvEENS0_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEENS2_IivEENS4_IivEENS9_ISA_IKiSE_EEEEEEclEPSK_.exit.i.i: ; preds = %bb.a
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #31, !inline_history !1885
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #34, !inline_history !1885
  br label %_ZN8facebook5velox9functions6detail11LookupTableInED2Ev.exit

_ZN8facebook5velox9functions6detail11LookupTableInED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5folly10F14FastMapIiNS1_IniNS0_23HeterogeneousAccessHashInvEENS0_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEENS2_IivEENS4_IivEENS9_ISA_IKiSE_EEEEEEclEPSK_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #34
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE17afterFailedRehashEPSI_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE8transferERSJ_PSI_SO_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !699  ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.c = icmp eq i64 %2, 1
  br i1 %i.c, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %2, -2
  br label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i, %.new
  %.01418.i = phi ptr [ %i.b, %.new ], [ %i.ab, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i ] ; 9 uses
  %.01517.i = phi ptr [ %1, %.new ], [ %i.ac, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i ] ; 12 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.01418.i, i64 8
  %i.e = load i32, ptr %.01418.i, align 4, !tbaa !3
  store i32 %i.e, ptr %.01517.i, align 8, !tbaa !1886
  %i.f = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  %i.g = load i64, ptr %i.d, align 8, !tbaa !229
  store i64 %i.g, ptr %i.f, align 8, !tbaa !229
  %i.h = getelementptr inbounds nuw i8, ptr %.01517.i, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.01418.i, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01517.i, i64 24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.j, align 8, !tbaa !1897
  %i.k = getelementptr inbounds nuw i8, ptr %.01517.i, i64 32 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !262
  %i.l = load <2 x ptr>, ptr %i.i, align 8, !tbaa !139
  store <2 x ptr> %i.l, ptr %i.h, align 8, !tbaa !139
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.i, align 8, !tbaa !139
  %i.m = getelementptr inbounds nuw i8, ptr %.01418.i, i64 32 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !129
  store i64 %i.n, ptr %i.k, align 8, !tbaa !129
  store i64 0, ptr %i.m, align 8, !tbaa !129
  %i.o = getelementptr inbounds nuw i8, ptr %.01418.i, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %.01517.i, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %.01418.i, i64 48
  %i.r = load i32, ptr %i.o, align 8, !tbaa !3
  store i32 %i.r, ptr %i.p, align 8, !tbaa !1886
  %i.s = getelementptr inbounds nuw i8, ptr %.01517.i, i64 48
  %i.t = load i64, ptr %i.q, align 8, !tbaa !229
  store i64 %i.t, ptr %i.s, align 8, !tbaa !229
  %i.u = getelementptr inbounds nuw i8, ptr %.01517.i, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %.01418.i, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01517.i, i64 64
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.w, align 8, !tbaa !1897
  %i.x = getelementptr inbounds nuw i8, ptr %.01517.i, i64 72 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !262
  %i.y = load <2 x ptr>, ptr %i.v, align 8, !tbaa !139
  store <2 x ptr> %i.y, ptr %i.u, align 8, !tbaa !139
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.v, align 8, !tbaa !139
  %i.z = getelementptr inbounds nuw i8, ptr %.01418.i, i64 72 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !129
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !129
  store i64 0, ptr %i.z, align 8, !tbaa !129
  %i.ab = getelementptr inbounds nuw i8, ptr %.01418.i, i64 80 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01517.i, i64 80 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE8transferERSJ_PSI_SO_m.exit.loopexit.unr-lcssa, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i, !llvm.loop !1898

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE8transferERSJ_PSI_SO_m.exit.loopexit.unr-lcssa: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE8transferERSJ_PSI_SO_m.exit, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.epil.preheader

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.epil.preheader: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE8transferERSJ_PSI_SO_m.exit.loopexit.unr-lcssa, %bb.b
  %.01418.i.epil.init = phi ptr [ %i.b, %bb.b ], [ %i.ab, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE8transferERSJ_PSI_SO_m.exit.loopexit.unr-lcssa ] ; 4 uses
  %.01517.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.ac, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE8transferERSJ_PSI_SO_m.exit.loopexit.unr-lcssa ] ; 6 uses
  %lcmp.mod5 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.epil.init) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.01418.i.epil.init, i64 8
  %i.ae = load i32, ptr %.01418.i.epil.init, align 4, !tbaa !3
  store i32 %i.ae, ptr %.01517.i.epil.init, align 8, !tbaa !1886
  %i.af = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 8
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !229
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !229
  %i.ah = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %.01418.i.epil.init, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aj, align 8, !tbaa !1897
  %i.ak = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 32 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !262
  %i.al = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !139
  store <2 x ptr> %i.al, ptr %i.ah, align 8, !tbaa !139
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.ai, align 8, !tbaa !139
  %i.am = getelementptr inbounds nuw i8, ptr %.01418.i.epil.init, i64 32 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !129
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !129
  store i64 0, ptr %i.am, align 8, !tbaa !129
  br label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE8transferERSJ_PSI_SO_m.exit

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE8transferERSJ_PSI_SO_m.exit: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.epil.preheader, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE8transferERSJ_PSI_SO_m.exit.loopexit.unr-lcssa, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ao, align 8, !tbaa !699
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !705  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !281
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !262  ; 3 uses
  %i.h = lshr i64 %i.g, 8                         ; 2 uses
  %i.i = and i64 %i.g, 255
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.0.copyload.i.i = load i16, ptr %i.j, align 1
  %i.k = zext i16 %.0.copyload.i.i to i64
  %notmask.i = shl nsw i64 -1, %i.i
  %i.l = xor i64 %notmask.i, -1
  %i.m = lshr i64 %i.l, 12
  %i.n = add nuw nsw i64 %i.m, 1
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i, %.lr.ph.i.i
  %.05.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.as, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i ] ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !699
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %.05.i.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1897 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 15
  %i.v = load i8, ptr %i.u, align 1, !tbaa !281
  %i.w = icmp eq i8 %i.v, -1
  br i1 %i.w, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !262  ; 2 uses
  %i.z = and i64 %i.y, 255                        ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.aa, align 1
  %i.ab = zext i16 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %notmask.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.z
  %i.ac = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = add nuw nsw i64 %i.ad, 1
  %i.af = icmp ult i64 %i.y, 256
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.z, ptr %i.x, align 8, !tbaa !262
  %.0.copyload.i.pre.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.aa, align 1
  %.pre20.i.i.i.i.i.i.i.i.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i.i.i.i.i.i.i.i.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi21.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ab, %bb.d ], [ %.pre20.i.i.i.i.i.i.i.i.i.i.i, %bb.e ]
  %i.ag = icmp eq i64 %i.z, 0
  %i.ah = shl nuw nsw i64 %.pre-phi21.i.i.i.i.i.i.i.i.i.i.i, 2
  %.neg17.i.i.i.i.i.i.i.i.i.i.i = sub nuw nsw i64 -16, %i.ah
  %.neg18.i.i.i.i.i.i.i.i.i.i.i = shl i64 -64, %i.z
  %.0.i.neg.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ag, i64 %.neg17.i.i.i.i.i.i.i.i.i.i.i, i64 %.neg18.i.i.i.i.i.i.i.i.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.s, align 8, !tbaa !1897
  store i64 0, ptr %i.x, align 8, !tbaa !262
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !1899 ; 2 uses
  %i.aj = and i64 %.0.i.neg.i.i.i.i.i.i.i.i.i.i.i, -16
  %i.ak = shl nuw nsw i64 %i.ab, 5
  %i.al = mul i64 %i.ak, %i.ae
  %i.am = sub i64 %i.al, %i.aj
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(264) %i.ai, ptr noundef nonnull %i.t, i64 noundef %i.am)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i unwind label %bb.g, !inline_history !1900

bb.g:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #32
  unreachable

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i: ; preds = %bb.f, %bb.c
  %i.as = add nuw nsw i64 %.05.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.as, %i.h
  br i1 %exitcond.not.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit, label %bb.c, !llvm.loop !1901

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i
  %.pre = load i64, ptr %i.f, align 8, !tbaa !262
  br label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit, %bb.b
  %i.at = phi i64 [ %.pre, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit ], [ %i.g, %bb.b ] ; 3 uses
  %i.au = icmp ult i64 %i.at, 256
  br i1 %i.au, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit
  %i.av = and i64 %i.at, 255                      ; 2 uses
  store i64 %i.av, ptr %i.f, align 8, !tbaa !262
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit, %bb.h
  %i.aw = phi i64 [ %i.at, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit ], [ %i.av, %bb.h ] ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !705 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %.0.copyload.i = load i16, ptr %i.ay, align 1
  %i.az = zext i16 %.0.copyload.i to i64
  %i.ba = icmp eq i64 %i.aw, 0
  %i.bb = shl nuw nsw i64 %i.az, 2
  %.neg17 = sub nuw nsw i64 -16, %i.bb
  %.neg18 = shl i64 -64, %i.aw
  %.0.i.neg = select i1 %i.ba, i64 %.neg17, i64 %.neg18
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !705
  store i64 0, ptr %i.f, align 8, !tbaa !262
  %i.bc = load ptr, ptr %0, align 8, !tbaa !1902  ; 2 uses
  %i.bd = and i64 %.0.i.neg, -8
  %i.be = mul nuw nsw i64 %i.k, 40
  %i.bf = mul i64 %i.be, %i.n
  %i.bg = add i64 %i.bf, 8
  %i.bh = sub i64 %i.bg, %i.bd
  %i.bi = and i64 %i.bh, -16
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 120
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(264) %i.bc, ptr noundef nonnull %i.ax, i64 noundef %i.bi)
          to label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE10afterResetEmmPhm.exit unwind label %bb.k, !inline_history !1903

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE10afterResetEmmPhm.exit: ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bm, align 8, !tbaa !699
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE10afterResetEmmPhm.exit, %bb.a
  ret void

bb.k:                                             ; preds = %bb.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #32
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_113applyMapTypedILNS0_8TypeKindE10EEESt10shared_ptrINS0_10BaseVectorEEbRS5_INS1_6detail15LookupTableBaseEERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKS7_RNS0_4exec7EvalCtxEENKUlinE_clEin(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i128 noundef %2) unnamed_addr #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.303", align 8    ; 3 uses
  %4 = alloca %"struct.std::pair.303", align 8    ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i128, align 16                    ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1904, !nonnull !86, !align !183
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !219
  %i.f = sext i32 %1 to i64                       ; 3 uses
end_hunk_10
begin_hunk_11_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSB_10MemoryPoolEEEESD_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESD_ImmERKT_DpOT0_:bb.a
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.cq = and i64 %i.cp, -256
  %i.cr = add i64 %i.cq, 256
  %i.cs = and i64 %i.cp, 255
  %i.ct = or disjoint i64 %i.cr, %i.cs
  store i64 %i.ct, ptr %i.a, align 8, !tbaa !262
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !219
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cu, align 8, !tbaa !1309
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !262
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !705  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = load ptr, ptr %0, align 8, !tbaa !1902  ; 2 uses
  %i.ad = sub i64 0, %.0.i52
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %i.af = sub i64 0, %i.ae
  %i.ag = mul i64 %i.x, 40
  %i.ah = add i64 %i.ag, 8
  %i.ai = sub i64 %i.ah, %i.ae
  %i.aj = and i64 %i.ai, -16
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(264) %i.ac, i64 noundef %i.aj, i64 0), !inline_history !1939 ; 15 uses
  store ptr %i.an, ptr %i.h, align 8, !tbaa !1130
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !699 ; 3 uses
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
  %i.at = load i32, ptr %.01418.i.i, align 4, !tbaa !3
  store i32 %i.at, ptr %.01517.i.i, align 8, !tbaa !1886
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 8
  %i.av = load i64, ptr %i.as, align 8, !tbaa !229
  store i64 %i.av, ptr %i.au, align 8, !tbaa !229
  %i.aw = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.ay, align 8, !tbaa !1897
  %i.az = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 32 ; 2 uses
  store i64 0, ptr %i.az, align 8, !tbaa !262
  %i.ba = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !139
  store <2 x ptr> %i.ba, ptr %i.aw, align 8, !tbaa !139
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.ax, align 8, !tbaa !139
  %i.bb = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 32 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !129
  store i64 %i.bc, ptr %i.az, align 8, !tbaa !129
  store i64 0, ptr %i.bb, align 8, !tbaa !129
  %i.bd = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 48
  %i.bg = load i32, ptr %i.bd, align 8, !tbaa !3
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !1886
  %i.bh = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 48
  %i.bi = load i64, ptr %i.bf, align 8, !tbaa !229
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !229
  %i.bj = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 56 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 64
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.bl, align 8, !tbaa !1897
  %i.bm = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 72 ; 2 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !262
  %i.bn = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !139
  store <2 x ptr> %i.bn, ptr %i.bj, align 8, !tbaa !139
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.bk, align 8, !tbaa !139
  %i.bo = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 72 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !129
  store i64 %i.bp, ptr %i.bm, align 8, !tbaa !129
  store i64 0, ptr %i.bo, align 8, !tbaa !129
  %i.bq = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 80 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 80 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i, !llvm.loop !1898

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i.epil.preheader

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i.epil.preheader: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i.preheader
  %.01418.i.i.epil.init = phi ptr [ %i.ap, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i.preheader ], [ %i.bq, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa ] ; 4 uses
  %.01517.i.i.epil.init = phi ptr [ %i.aq, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i.preheader ], [ %i.br, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa ] ; 6 uses
  %lcmp.mod141 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.epil.init) ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.01418.i.i.epil.init, i64 8
  %i.bt = load i32, ptr %.01418.i.i.epil.init, align 4, !tbaa !3
  store i32 %i.bt, ptr %.01517.i.i.epil.init, align 8, !tbaa !1886
  %i.bu = getelementptr inbounds nuw i8, ptr %.01517.i.i.epil.init, i64 8
  %i.bv = load i64, ptr %i.bs, align 8, !tbaa !229
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !229
  %i.bw = getelementptr inbounds nuw i8, ptr %.01517.i.i.epil.init, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.01418.i.i.epil.init, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01517.i.i.epil.init, i64 24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.by, align 8, !tbaa !1897
  %i.bz = getelementptr inbounds nuw i8, ptr %.01517.i.i.epil.init, i64 32 ; 2 uses
  store i64 0, ptr %i.bz, align 8, !tbaa !262
  %i.ca = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !139
  store <2 x ptr> %i.ca, ptr %i.bw, align 8, !tbaa !139
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.bx, align 8, !tbaa !139
  %i.cb = getelementptr inbounds nuw i8, ptr %.01418.i.i.epil.init, i64 32 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !129
  store i64 %i.cc, ptr %i.bz, align 8, !tbaa !129
  store i64 0, ptr %i.cb, align 8, !tbaa !129
  br label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapIniNS6_23HeterogeneousAccessHashInvEENS6_26HeterogeneousAccessEqualToInvEENS3_IS4_IKniEEEEEEEEE7destroyISG_EEvRSH_PT_.exit.i.i.epil.preheader, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa, %bb.a
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !699
  store ptr %i.ap, ptr %i.i, align 8, !tbaa !1940
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %xtraiter142 = and i64 %4, 7                    ; 3 uses
  %i.cd = icmp ult i64 %4, 8
  br i1 %i.cd, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter145 = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ct, %.lr.ph.i ] ; 9 uses
  %niter146 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter146.next.7, %.lr.ph.i ]
  %i.ce = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ce, i8 0, i64 16, i1 false)
  %i.cf = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cg, i8 0, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ci, i8 0, i64 16, i1 false)
  %i.cj = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ck, i8 0, i64 16, i1 false)
  %i.cl = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cm, i8 0, i64 16, i1 false)
  %i.cn = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.co, i8 0, i64 16, i1 false)
  %i.cp = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cq, i8 0, i64 16, i1 false)
  %i.cr = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cs, i8 0, i64 16, i1 false)
  %i.ct = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter146.next.7 = add i64 %niter146, 8         ; 2 uses
  %niter146.ncmp.7 = icmp eq i64 %niter146.next.7, %unroll_iter145
  br i1 %niter146.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1941

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ct, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod144 = icmp ne i64 %xtraiter142, 0
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.cv, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cu = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cu, i8 0, i64 16, i1 false)
  %i.cv = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter142
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !1942

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSB_ISC_IKiSG_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.cw = trunc i64 %5 to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i16 %i.cw, ptr %i.cx, align 1
  store ptr %i.an, ptr %i.k, align 8, !tbaa !705
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !262
  %i.db = and i64 %i.da, -256
  %i.dc = select i1 %.not.i53, i64 4294967295, i64 %i.cz
  %i.dd = or i64 %i.db, %i.dc
  store i64 %i.dd, ptr %i.cy, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !1943
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.de, align 8, !tbaa !203
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.475.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.576.0..sroa_idx, align 8, !tbaa !1321
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.677.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.878.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.878.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !1946
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !1948
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  br i1 %.not.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %.lr.ph108, label %bb.g

.lr.ph108:                                        ; preds = %bb.b
  %i.df = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.dg = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.dh = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph108, %bb.f
  %.0106 = phi i64 [ 0, %.lr.ph108 ], [ %i.dr, %bb.f ] ; 3 uses
  %.034105 = phi i64 [ 0, %.lr.ph108 ], [ %.1, %bb.f ] ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0106
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !92  ; 2 uses
  %.not86 = icmp eq i8 %i.dj, 0
  br i1 %.not86, label %bb.f, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.dk = getelementptr inbounds nuw i8, ptr %i.an, i64 %.034105 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !92
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.d
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !92
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.034105
  call void @llvm.assume(i1 %i.dg)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.0106
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !3
  %i.dq = add nuw i64 %.034105, 1
  br label %bb.f

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.c
  %.1 = phi i64 [ %i.dq, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.034105, %bb.c ] ; 2 uses
  %i.dr = add i64 %.0106, 1
  %i.ds = icmp ult i64 %.1, %1
  br i1 %i.ds, label %bb.c, label %.loopexit, !llvm.loop !1950

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.h, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.h:                                             ; preds = %bb.g
  %i.dt = load ptr, ptr %0, align 8, !tbaa !1902  ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !19
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 96
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = invoke noundef ptr %i.dw(ptr noundef nonnull align 8 dereferenceable(264) %i.dt, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIiNS_10F14FastMapIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEEN8facebook5velox6memory12StlAllocatorISt4pairIKniEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, !inline_history !1330

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.h, %bb.g
  %storemerge = phi ptr [ %7, %bb.g ], [ %i.dx, %bb.h ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.dy = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not45100 = icmp eq i64 %i.dy, 0
  br i1 %.not45100, label %._crit_edge, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !1312
  %i.ea = load i64, ptr %i.b, align 8, !tbaa !129
  %i.eb = getelementptr inbounds nuw [64 x i8], ptr %i.dz, i64 %i.ea
  br label %.lr.ph104

.loopexit87:                                      ; preds = %bb.q, %.lr.ph104
  %.143.lcssa = phi i64 [ %.042101, %.lr.ph104 ], [ %i.es, %bb.q ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph104, !llvm.loop !1951

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %.loopexit87
  %.pn102 = phi ptr [ %.041103, %.loopexit87 ], [ %i.eb, %.lr.ph104.preheader ] ; 2 uses
  %.042101 = phi i64 [ %.143.lcssa, %.loopexit87 ], [ %i.dy, %.lr.ph104.preheader ] ; 2 uses
  %.041103 = getelementptr inbounds i8, ptr %.pn102, i64 -64 ; 4 uses
  %i.ec = load <16 x i8>, ptr %.041103, align 16, !tbaa !92
  %i.ed = icmp slt <16 x i8> %i.ec, zeroinitializer
  %i.ee = bitcast <16 x i1> %i.ed to i16
  %i.ef = and i16 %i.ee, 4095                     ; 2 uses
  %.sroa.067.0.extract.trunc = zext nneg i16 %i.ef to i32 ; 2 uses
  %cond = icmp eq i16 %i.ef, 0
  br i1 %cond, label %.loopexit87, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph104
  %i.eg = icmp ne ptr %.041103, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.eg)
  %i.eh = getelementptr inbounds i8, ptr %.pn102, i64 -48 ; 2 uses
  %i.ei = load ptr, ptr %i.ao, align 8, !tbaa !699
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.093 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.064.092 = phi i32 [ %.sroa.067.0.extract.trunc, %.lr.ph ], [ %.sroa.064.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.ej = and i32 %.sroa.064.092, 1
  %.not.i54 = icmp eq i32 %i.ej, 0
  br i1 %.not.i54, label %bb.j, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !97

bb.j:                                             ; preds = %bb.i
  %i.ek = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.064.092, i1 true) ; 2 uses
  %i.el = add i32 %.sroa.8.093, %i.ek
  %i.em = add nuw nsw i32 %i.ek, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.i, %bb.j
  %.pn85 = phi i32 [ %i.em, %bb.j ], [ 1, %bb.i ]
  %.sroa.8.1.in = phi i32 [ %i.el, %bb.j ], [ %.sroa.8.093, %bb.i ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.064.1 = lshr i32 %.sroa.064.092, %.pn85  ; 2 uses
  %i.en = zext i32 %.sroa.8.1.in to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [40 x i8], ptr %i.ei, i64 %i.eq
  call void @llvm.prefetch.p0(ptr %i.er, i32 0, i32 3, i32 1)
  %.not82 = icmp eq i32 %.sroa.064.1, 0
  br i1 %.not82, label %.lr.ph98, label %bb.i

.lr.ph98:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.q
  %.14397 = phi i64 [ %i.es, %bb.q ], [ %.042101, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.869.096 = phi i32 [ %.sroa.869.1, %bb.q ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.067.095 = phi i32 [ %.sroa.067.1, %bb.q ], [ %.sroa.067.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.es = add i64 %.14397, -1                     ; 2 uses
  %i.et = and i32 %.sroa.067.095, 1
  %.not.i56 = icmp eq i32 %i.et, 0
  br i1 %.not.i56, label %bb.k, label %bb.l, !prof !97

bb.k:                                             ; preds = %.lr.ph98
  %i.eu = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.067.095, i1 true) ; 2 uses
  %i.ev = add i32 %.sroa.869.096, %i.eu
  %i.ew = add nuw nsw i32 %i.eu, 1
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph98, %bb.k
end_hunk_11
begin_hunk_12_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplInJnRmEEES8_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbES8_ImmERKT_DpOT0_:bb.a
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1931, !nonnull !86, !noundef !86
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.ch ; 2 uses
  %i.cj = load i128, ptr %5, align 16, !tbaa !1925
  store i128 %i.cj, ptr %i.ci, align 16, !tbaa !1968
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cl = load i64, ptr %6, align 8, !tbaa !129
  %i.cm = trunc i64 %i.cl to i32
  store i32 %i.cm, ptr %i.ck, align 16, !tbaa !1934
  %i.cn = and i64 %i.cc, -256
  %i.co = add i64 %i.cn, 256
  %i.cp = and i64 %i.cc, 255
  %i.cq = or disjoint i64 %i.co, %i.cp
  store i64 %i.cq, ptr %i.a, align 8, !tbaa !262
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !219
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cr, align 8, !tbaa !1309
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !262
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1897 ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = load ptr, ptr %0, align 8, !tbaa !1899  ; 2 uses
  %i.ad = sub i64 0, %.0.i52
  %i.ae = and i64 %i.ad, -16                      ; 2 uses
  %i.af = shl i64 %i.x, 5
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(264) %i.ac, i64 noundef %i.ag, i64 0), !inline_history !1969 ; 15 uses
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !1130
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1931 ; 2 uses
  %i.an = sub i64 0, %i.ae
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = shl i64 %1, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.am, i64 %i.ap, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !1931
  store ptr %i.am, ptr %i.i, align 8, !tbaa !1970
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
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1971

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bg, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod141 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod141)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.bi, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bh = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bh, i8 0, i64 16, i1 false)
  %i.bi = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !1972

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.bj = trunc i64 %5 to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i16 %i.bj, ptr %i.bk, align 1
  store ptr %i.ak, ptr %i.k, align 8, !tbaa !1897
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !262
  %i.bo = and i64 %i.bn, -256
  %i.bp = select i1 %.not.i53, i64 4294967295, i64 %i.bm
  %i.bq = or i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %i.bl, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !1973
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.br, align 8, !tbaa !203
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.475.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.576.0..sroa_idx, align 8, !tbaa !1321
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.677.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.878.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.878.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !1976
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !1978
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %.lr.ph108, label %bb.h

.lr.ph108:                                        ; preds = %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bt = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph108, %bb.g
  %.0106 = phi i64 [ 0, %.lr.ph108 ], [ %i.ce, %bb.g ] ; 3 uses
  %.034105 = phi i64 [ 0, %.lr.ph108 ], [ %.1, %bb.g ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0106
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !92  ; 2 uses
  %.not86 = icmp eq i8 %i.bw, 0
  br i1 %.not86, label %bb.g, label %bb.e, !prof !97

bb.e:                                             ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.034105 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !92
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.e
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !92
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.034105
  call void @llvm.assume(i1 %i.bt)
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.0106
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !3
  %i.cd = add nuw i64 %.034105, 1
  br label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.d
  %.1 = phi i64 [ %i.cd, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.034105, %bb.d ] ; 2 uses
  %i.ce = add i64 %.0106, 1
  %i.cf = icmp ult i64 %.1, %1
  br i1 %i.cf, label %bb.d, label %.loopexit, !llvm.loop !1980

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.i, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.i:                                             ; preds = %bb.h
  %i.cg = load ptr, ptr %0, align 8, !tbaa !1899  ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !19
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 96
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = invoke noundef ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(264) %i.cg, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyInivvN8facebook5velox6memory12StlAllocatorISt4pairIKniEEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, !inline_history !1330

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.i, %bb.h
  %storemerge = phi ptr [ %7, %bb.h ], [ %i.ck, %bb.i ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not45100 = icmp eq i64 %i.cl, 0
  br i1 %.not45100, label %._crit_edge, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !1312
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !129
  %i.co = getelementptr inbounds nuw [64 x i8], ptr %i.cm, i64 %i.cn
  br label %.lr.ph104

.loopexit87:                                      ; preds = %bb.r, %.lr.ph104
  %.143.lcssa = phi i64 [ %.042101, %.lr.ph104 ], [ %i.df, %bb.r ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph104, !llvm.loop !1981

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %.loopexit87
  %.pn102 = phi ptr [ %.041103, %.loopexit87 ], [ %i.co, %.lr.ph104.preheader ] ; 2 uses
  %.042101 = phi i64 [ %.143.lcssa, %.loopexit87 ], [ %i.cl, %.lr.ph104.preheader ] ; 2 uses
  %.041103 = getelementptr inbounds i8, ptr %.pn102, i64 -64 ; 4 uses
  %i.cp = load <16 x i8>, ptr %.041103, align 16, !tbaa !92
  %i.cq = icmp slt <16 x i8> %i.cp, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16
  %i.cs = and i16 %i.cr, 4095                     ; 2 uses
  %.sroa.067.0.extract.trunc = zext nneg i16 %i.cs to i32 ; 2 uses
  %cond = icmp eq i16 %i.cs, 0
  br i1 %cond, label %.loopexit87, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph104
  %i.ct = icmp ne ptr %.041103, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds i8, ptr %.pn102, i64 -48 ; 2 uses
  %i.cv = load ptr, ptr %i.al, align 8, !tbaa !1931
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.093 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.064.092 = phi i32 [ %.sroa.067.0.extract.trunc, %.lr.ph ], [ %.sroa.064.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cw = and i32 %.sroa.064.092, 1
  %.not.i54 = icmp eq i32 %i.cw, 0
  br i1 %.not.i54, label %bb.k, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !97

bb.k:                                             ; preds = %bb.j
  %i.cx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.064.092, i1 true) ; 2 uses
  %i.cy = add i32 %.sroa.8.093, %i.cx
  %i.cz = add nuw nsw i32 %i.cx, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.j, %bb.k
  %.pn85 = phi i32 [ %i.cz, %bb.k ], [ 1, %bb.j ]
  %.sroa.8.1.in = phi i32 [ %i.cy, %bb.k ], [ %.sroa.8.093, %bb.j ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.064.1 = lshr i32 %.sroa.064.092, %.pn85  ; 2 uses
  %i.da = zext i32 %.sroa.8.1.in to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %i.dd
  call void @llvm.prefetch.p0(ptr %i.de, i32 0, i32 3, i32 1)
  %.not82 = icmp eq i32 %.sroa.064.1, 0
  br i1 %.not82, label %.lr.ph98, label %bb.j

.lr.ph98:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.r
  %.14397 = phi i64 [ %i.df, %bb.r ], [ %.042101, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.869.096 = phi i32 [ %.sroa.869.1, %bb.r ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.067.095 = phi i32 [ %.sroa.067.1, %bb.r ], [ %.sroa.067.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.df = add i64 %.14397, -1                     ; 2 uses
  %i.dg = and i32 %.sroa.067.095, 1
  %.not.i56 = icmp eq i32 %i.dg, 0
  br i1 %.not.i56, label %bb.l, label %bb.m, !prof !97

bb.l:                                             ; preds = %.lr.ph98
  %i.dh = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.067.095, i1 true) ; 2 uses
  %i.di = add i32 %.sroa.869.096, %i.dh
  %i.dj = add nuw nsw i32 %i.dh, 1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph98, %bb.l
end_hunk_12
begin_hunk_13_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSD_10MemoryPoolEEEESF_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESF_ImmERKT_DpOT0_:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !92
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !92
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !262
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !758, !nonnull !86, !noundef !86
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.ch ; 4 uses
  %i.cj = load i32, ptr %5, align 4, !tbaa !3
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !2000
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = ptrtoint ptr %6 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !229
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cm, align 8, !tbaa !2013
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.co = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.cp = and i64 %i.co, -256
  %i.cq = add i64 %i.cp, 256
  %i.cr = and i64 %i.co, 255
  %i.cs = or disjoint i64 %i.cq, %i.cr
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !262
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !219
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ct, align 8, !tbaa !1309
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !262
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !764  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3                         ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = call noundef ptr @_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %i.p, i64 noundef %i.x, i64 noundef %.0.i52, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !2065
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !1130 ; 13 uses
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
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2066

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.aw, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2067

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ax = trunc i64 %5 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i16 %i.ax, ptr %i.ay, align 1
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !764
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !262
  %i.bc = and i64 %i.bb, -256
  %i.bd = select i1 %.not.i, i64 4294967295, i64 %i.ba
  %i.be = or i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.az, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !2068
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bf, align 8, !tbaa !203
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.474.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !1321
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.676.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.877.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !2071
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !2073
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  %i.bg = icmp eq i64 %1, 0
  br i1 %i.bg, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEENS6_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %.lr.ph107, label %bb.g

.lr.ph107:                                        ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bi = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph107, %bb.f
  %.0105 = phi i64 [ 0, %.lr.ph107 ], [ %i.bt, %bb.f ] ; 3 uses
  %.034104 = phi i64 [ 0, %.lr.ph107 ], [ %.1, %bb.f ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0105
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !92  ; 2 uses
  %.not85 = icmp eq i8 %i.bl, 0
  br i1 %.not85, label %bb.f, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.034104 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !92
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.d
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !92
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.034104
  call void @llvm.assume(i1 %i.bi)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.0105
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !3
  %i.bs = add nuw i64 %.034104, 1
  br label %bb.f

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.c
  %.1 = phi i64 [ %i.bs, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.034104, %bb.c ] ; 2 uses
  %i.bt = add i64 %.0105, 1
  %i.bu = icmp ult i64 %.1, %1
  br i1 %i.bu, label %bb.c, label %.loopexit, !llvm.loop !2075

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.h, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.h:                                             ; preds = %bb.g
  %i.bv = load ptr, ptr %0, align 8, !tbaa !1999  ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(264) %i.bv, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIiNS_10F14FastMapIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENSA_14NaNAwareEqualsIfLb1EEENS8_6memory12StlAllocatorISt4pairIKfiEEEEEvvNSG_ISH_IKiSL_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, !inline_history !1330

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.h, %bb.g
  %storemerge = phi ptr [ %7, %bb.g ], [ %i.bz, %bb.h ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not4599 = icmp eq i64 %i.ca, 0
  br i1 %.not4599, label %._crit_edge, label %.lr.ph103

.lr.ph103:                                        ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !1312
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !129
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.i

.loopexit86:                                      ; preds = %bb.r, %bb.i
  %.143.lcssa = phi i64 [ %.042100, %bb.i ], [ %i.cv, %bb.r ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %._crit_edge, label %bb.i, !llvm.loop !2076

bb.i:                                             ; preds = %.lr.ph103, %.loopexit86
  %.pn101 = phi ptr [ %i.cd, %.lr.ph103 ], [ %.041102, %.loopexit86 ] ; 2 uses
  %.042100 = phi i64 [ %i.ca, %.lr.ph103 ], [ %.143.lcssa, %.loopexit86 ] ; 2 uses
  %.041102 = getelementptr inbounds i8, ptr %.pn101, i64 -64 ; 4 uses
  %i.cf = load <16 x i8>, ptr %.041102, align 16, !tbaa !92
  %i.cg = icmp slt <16 x i8> %i.cf, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %i.ci = and i16 %i.ch, 4095                     ; 2 uses
  %.sroa.066.0.extract.trunc = zext nneg i16 %i.ci to i32 ; 2 uses
  %cond = icmp eq i16 %i.ci, 0
  br i1 %cond, label %.loopexit86, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.cj = icmp ne ptr %.041102, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds i8, ptr %.pn101, i64 -48 ; 2 uses
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !758
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.092 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.063.091 = phi i32 [ %.sroa.066.0.extract.trunc, %.lr.ph ], [ %.sroa.063.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cm = and i32 %.sroa.063.091, 1
  %.not.i53 = icmp eq i32 %i.cm, 0
  br i1 %.not.i53, label %bb.k, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !97

bb.k:                                             ; preds = %bb.j
  %i.cn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.063.091, i1 true) ; 2 uses
  %i.co = add i32 %.sroa.8.092, %i.cn
  %i.cp = add nuw nsw i32 %i.cn, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.j, %bb.k
  %.pn84 = phi i32 [ %i.cp, %bb.k ], [ 1, %bb.j ]
  %.sroa.8.1.in = phi i32 [ %i.co, %bb.k ], [ %.sroa.8.092, %bb.j ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.063.1 = lshr i32 %.sroa.063.091, %.pn84  ; 2 uses
  %i.cq = zext i32 %.sroa.8.1.in to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [40 x i8], ptr %i.cl, i64 %i.ct
  call void @llvm.prefetch.p0(ptr %i.cu, i32 0, i32 3, i32 1)
  %.not81 = icmp eq i32 %.sroa.063.1, 0
  br i1 %.not81, label %.lr.ph97, label %bb.j

.lr.ph97:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.r
  %.14396 = phi i64 [ %i.cv, %bb.r ], [ %.042100, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.868.095 = phi i32 [ %.sroa.868.1, %bb.r ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.066.094 = phi i32 [ %.sroa.066.1, %bb.r ], [ %.sroa.066.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cv = add i64 %.14396, -1                     ; 2 uses
  %i.cw = and i32 %.sroa.066.094, 1
  %.not.i55 = icmp eq i32 %i.cw, 0
  br i1 %.not.i55, label %bb.l, label %bb.m, !prof !97

bb.l:                                             ; preds = %.lr.ph97
  %i.cx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.066.094, i1 true) ; 2 uses
  %i.cy = add i32 %.sroa.868.095, %i.cx
  %i.cz = add nuw nsw i32 %i.cx, 1
  br label %bb.m
end_hunk_13
begin_hunk_14_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE19tryEmplaceValueImplIfJfRmEEESE_INS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEEbESE_ImmERKT_DpOT0_:bb.a
bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKfiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKfiEE6setTagEmm.exit: ; preds = %bb.m
  %i.bw = trunc i64 %3 to i8
  store i8 %i.bw, ptr %i.bt, align 1, !tbaa !92
  %i.bx = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bs ; 4 uses
  %i.bz = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = load float, ptr %5, align 4, !tbaa !774
  store float %i.ca, ptr %i.by, align 4, !tbaa !2096
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cc = load i64, ptr %6, align 8, !tbaa !129
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !2060
  %i.ce = lshr i64 %i.bs, 1
  %i.cf = ptrtoint ptr %i.by to i64
  %i.cg = or i64 %i.ce, %i.cf                     ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !2057
  %i.cj = icmp ult i64 %i.ci, %i.cg
  br i1 %i.cj, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKfiEE6setTagEmm.exit
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !129
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKfiEE6setTagEmm.exit, %bb.o
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.cl = and i64 %i.ck, -256
  %i.cm = add i64 %i.cl, 256
  %i.cn = and i64 %i.ck, 255
  %i.co = or disjoint i64 %i.cm, %i.cn
  store i64 %i.co, ptr %i.a, align 8, !tbaa !262
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit
  %.sink99 = phi ptr [ %i.ak, %bb.g ], [ %i.by, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit ]
  %.lcssa97.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit ]
  store ptr %.sink99, ptr %0, align 8, !tbaa !2097
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa97.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cp, align 8, !tbaa !2099
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #27

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !262
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2013 ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !2014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = mul i64 %3, %2
  store i64 %i.m, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.n = icmp eq i64 %2, 1                        ; 2 uses
  %i.o = shl i64 %3, 3
  %i.p = add i64 %i.o, 16
  %i.q = shl i64 %2, 7
  %.0.i = select i1 %i.n, i64 %i.p, i64 %i.q
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.r = mul i64 %5, %4
  store i64 %i.r, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.s = icmp eq i64 %4, 1                        ; 2 uses
  %i.t = shl i64 %5, 3
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %4, 7
  %.0.i69 = select i1 %i.s, i64 %i.u, i64 %i.v    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.w = load ptr, ptr %0, align 8, !tbaa !2015   ; 2 uses
  %i.x = add i64 %.0.i69, 8
  %i.y = and i64 %i.x, -16
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i64 noundef %i.y, i64 0), !inline_history !2102 ; 16 uses
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !1130
  store i8 0, ptr %i.i, align 1, !tbaa !172
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
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2103

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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2104

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.ax = trunc i64 %5 to i8
  store i8 %i.ax, ptr %i.aw, align 2, !tbaa !2095
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !2013
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.az = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !262
  %i.bb = and i64 %i.ba, -256
  %i.bc = select i1 %.not.i, i64 4294967295, i64 %i.az
  %i.bd = or i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.ay, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !2105
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.be, align 8, !tbaa !203
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.d, ptr %.sroa.487.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.c, ptr %.sroa.588.0..sroa_idx, align 8, !tbaa !2108
  %.sroa.689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %i.e, ptr %.sroa.689.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.890.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr %i.g, ptr %.sroa.890.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !2110
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !203
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  %i.bf = icmp eq i64 %1, 0
  br i1 %i.bf, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEENS5_6memory12StlAllocatorISt4pairIKfiEEEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.s, %i.n
  br i1 %or.cond, label %.lr.ph111, label %bb.h

.lr.ph111:                                        ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bh = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph111, %bb.g
  %.0109 = phi i64 [ 0, %.lr.ph111 ], [ %i.bv, %bb.g ] ; 3 uses
  %.042108 = phi i64 [ 0, %.lr.ph111 ], [ %.1, %bb.g ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0109
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !92  ; 2 uses
  %.not92 = icmp eq i8 %i.bk, 0
  br i1 %.not92, label %bb.g, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.042108 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !92
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKfiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !92
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.042108 ; 2 uses
  call void @llvm.assume(i1 %i.bh)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.0109 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load float, ptr %i.bp, align 4, !tbaa !774
  store float %i.br, ptr %i.bo, align 4, !tbaa !2096
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !2060
  %i.bu = add nuw i64 %.042108, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1 = phi i64 [ %i.bu, %bb.f ], [ %.042108, %bb.c ] ; 3 uses
  %i.bv = add i64 %.0109, 1
  %i.bw = icmp ult i64 %.1, %1
  br i1 %i.bw, label %bb.c, label %._crit_edge112, !llvm.loop !2112

._crit_edge112:                                   ; preds = %bb.g
  %i.bx = add i64 %.1, -1                         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  %i.ca = icmp ne ptr %i.ac, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ca)
  %i.cb = and i64 %i.bx, 255                      ; 2 uses
  %i.cc = icmp samesign ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cc)
  %i.cd = lshr i64 %i.cb, 1
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = or i64 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !129
  br label %.thread

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.i, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.i:                                             ; preds = %bb.h
  %i.ch = load ptr, ptr %0, align 8, !tbaa !2015  ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(264) %i.ch, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %bb.j, !inline_history !1330

bb.j:                                             ; preds = %bb.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfiN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS9_14NaNAwareEqualsIfLb1EEENS7_6memory12StlAllocatorISt4pairIKfiEEEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  resume { ptr, i32 } %i.cm

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.i, %bb.h
  %storemerge = phi ptr [ %7, %bb.h ], [ %i.cl, %bb.i ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not57103 = icmp eq i64 %i.cn, 0
  br i1 %.not57103, label %._crit_edge, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !2014
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !129
  %i.cq = getelementptr inbounds nuw [128 x i8], ptr %i.co, i64 %i.cp
  br label %.lr.ph107

.loopexit:                                        ; preds = %bb.w, %.lr.ph107
  %.155.lcssa = phi i64 [ %.054104, %.lr.ph107 ], [ %i.cx, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph107, !llvm.loop !2113

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %.loopexit
  %.pn59105 = phi ptr [ %.053106, %.loopexit ], [ %i.cq, %.lr.ph107.preheader ] ; 2 uses
  %.054104 = phi i64 [ %.155.lcssa, %.loopexit ], [ %i.cn, %.lr.ph107.preheader ] ; 2 uses
  %.053106 = getelementptr inbounds i8, ptr %.pn59105, i64 -128 ; 4 uses
  %i.cr = load <16 x i8>, ptr %.053106, align 16, !tbaa !92
  %i.cs = icmp slt <16 x i8> %i.cr, zeroinitializer
  %i.ct = bitcast <16 x i1> %i.cs to i16
  %i.cu = and i16 %i.ct, 16383                    ; 2 uses
  %.not9198 = icmp eq i16 %i.cu, 0
  br i1 %.not9198, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph107
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.cu to i32
  %i.cv = icmp ne ptr %.053106, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds i8, ptr %.pn59105, i64 -112
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.w
  %.155101 = phi i64 [ %.054104, %.lr.ph ], [ %i.cx, %bb.w ]
  %.sroa.8.0100 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %.sroa.078.099 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.w ] ; 3 uses
  %i.cx = add i64 %.155101, -1                    ; 2 uses
  %i.cy = and i32 %.sroa.078.099, 1
  %.not.i70 = icmp eq i32 %i.cy, 0
end_hunk_14
begin_hunk_15_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSD_10MemoryPoolEEEESF_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESF_ImmERKT_DpOT0_:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !92
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !92
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !262
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !819, !nonnull !86, !noundef !86
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.ch ; 4 uses
  %i.cj = load i32, ptr %5, align 4, !tbaa !3
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !2130
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = ptrtoint ptr %6 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !229
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cm, align 8, !tbaa !2143
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.co = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.cp = and i64 %i.co, -256
  %i.cq = add i64 %i.cp, 256
  %i.cr = and i64 %i.co, 255
  %i.cs = or disjoint i64 %i.cq, %i.cr
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !262
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !219
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ct, align 8, !tbaa !1309
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !262
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !825  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3                         ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = call noundef ptr @_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %i.p, i64 noundef %i.x, i64 noundef %.0.i52, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !2194
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !1130 ; 13 uses
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
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2195

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.aw, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2196

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ax = trunc i64 %5 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i16 %i.ax, ptr %i.ay, align 1
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !825
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !262
  %i.bc = and i64 %i.bb, -256
  %i.bd = select i1 %.not.i, i64 4294967295, i64 %i.ba
  %i.be = or i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.az, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !2197
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bf, align 8, !tbaa !203
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.474.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !1321
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.676.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.877.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !2200
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !2202
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  %i.bg = icmp eq i64 %1, 0
  br i1 %i.bg, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEENS6_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSE_ISF_IKiSJ_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %.lr.ph107, label %bb.g

.lr.ph107:                                        ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bi = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph107, %bb.f
  %.0105 = phi i64 [ 0, %.lr.ph107 ], [ %i.bt, %bb.f ] ; 3 uses
  %.034104 = phi i64 [ 0, %.lr.ph107 ], [ %.1, %bb.f ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0105
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !92  ; 2 uses
  %.not85 = icmp eq i8 %i.bl, 0
  br i1 %.not85, label %bb.f, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.034104 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !92
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.d
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !92
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.034104
  call void @llvm.assume(i1 %i.bi)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.0105
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !3
  %i.bs = add nuw i64 %.034104, 1
  br label %bb.f

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.c
  %.1 = phi i64 [ %i.bs, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.034104, %bb.c ] ; 2 uses
  %i.bt = add i64 %.0105, 1
  %i.bu = icmp ult i64 %.1, %1
  br i1 %i.bu, label %bb.c, label %.loopexit, !llvm.loop !2204

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.h, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.h:                                             ; preds = %bb.g
  %i.bv = load ptr, ptr %0, align 8, !tbaa !2129  ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(264) %i.bv, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIiNS_10F14FastMapIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENSA_14NaNAwareEqualsIdLb1EEENS8_6memory12StlAllocatorISt4pairIKdiEEEEEvvNSG_ISH_IKiSL_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, !inline_history !1330

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.h, %bb.g
  %storemerge = phi ptr [ %7, %bb.g ], [ %i.bz, %bb.h ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not4599 = icmp eq i64 %i.ca, 0
  br i1 %.not4599, label %._crit_edge, label %.lr.ph103

.lr.ph103:                                        ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !1312
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !129
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.i

.loopexit86:                                      ; preds = %bb.r, %bb.i
  %.143.lcssa = phi i64 [ %.042100, %bb.i ], [ %i.cv, %bb.r ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %._crit_edge, label %bb.i, !llvm.loop !2205

bb.i:                                             ; preds = %.lr.ph103, %.loopexit86
  %.pn101 = phi ptr [ %i.cd, %.lr.ph103 ], [ %.041102, %.loopexit86 ] ; 2 uses
  %.042100 = phi i64 [ %i.ca, %.lr.ph103 ], [ %.143.lcssa, %.loopexit86 ] ; 2 uses
  %.041102 = getelementptr inbounds i8, ptr %.pn101, i64 -64 ; 4 uses
  %i.cf = load <16 x i8>, ptr %.041102, align 16, !tbaa !92
  %i.cg = icmp slt <16 x i8> %i.cf, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %i.ci = and i16 %i.ch, 4095                     ; 2 uses
  %.sroa.066.0.extract.trunc = zext nneg i16 %i.ci to i32 ; 2 uses
  %cond = icmp eq i16 %i.ci, 0
  br i1 %cond, label %.loopexit86, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.cj = icmp ne ptr %.041102, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds i8, ptr %.pn101, i64 -48 ; 2 uses
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !819
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.092 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.063.091 = phi i32 [ %.sroa.066.0.extract.trunc, %.lr.ph ], [ %.sroa.063.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cm = and i32 %.sroa.063.091, 1
  %.not.i53 = icmp eq i32 %i.cm, 0
  br i1 %.not.i53, label %bb.k, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !97

bb.k:                                             ; preds = %bb.j
  %i.cn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.063.091, i1 true) ; 2 uses
  %i.co = add i32 %.sroa.8.092, %i.cn
  %i.cp = add nuw nsw i32 %i.cn, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.j, %bb.k
  %.pn84 = phi i32 [ %i.cp, %bb.k ], [ 1, %bb.j ]
  %.sroa.8.1.in = phi i32 [ %i.co, %bb.k ], [ %.sroa.8.092, %bb.j ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.063.1 = lshr i32 %.sroa.063.091, %.pn84  ; 2 uses
  %i.cq = zext i32 %.sroa.8.1.in to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [40 x i8], ptr %i.cl, i64 %i.ct
  call void @llvm.prefetch.p0(ptr %i.cu, i32 0, i32 3, i32 1)
  %.not81 = icmp eq i32 %.sroa.063.1, 0
  br i1 %.not81, label %.lr.ph97, label %bb.j

.lr.ph97:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.r
  %.14396 = phi i64 [ %i.cv, %bb.r ], [ %.042100, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.868.095 = phi i32 [ %.sroa.868.1, %bb.r ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.066.094 = phi i32 [ %.sroa.066.1, %bb.r ], [ %.sroa.066.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cv = add i64 %.14396, -1                     ; 2 uses
  %i.cw = and i32 %.sroa.066.094, 1
  %.not.i55 = icmp eq i32 %i.cw, 0
  br i1 %.not.i55, label %bb.l, label %bb.m, !prof !97

bb.l:                                             ; preds = %.lr.ph97
  %i.cx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.066.094, i1 true) ; 2 uses
  %i.cy = add i32 %.sroa.868.095, %i.cx
  %i.cz = add nuw nsw i32 %i.cx, 1
  br label %bb.m
end_hunk_15
begin_hunk_16_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE19tryEmplaceValueImplIdJdRmEEESE_INS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEEbESE_ImmERKT_DpOT0_:bb.a

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ay, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16reserveForInsertEm.exit ], [ %i.bm, %bb.k ]
  %.1 = phi ptr [ %i.au, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16reserveForInsertEm.exit ], [ %i.bi, %bb.k ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.br = zext nneg i16 %i.bq to i64              ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.1, i64 %i.br ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !92
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %_ZN5folly3f146detail8F14ChunkISt4pairIKdiEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKdiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKdiEE6setTagEmm.exit: ; preds = %bb.l
  %i.bv = trunc i64 %3 to i8
  store i8 %i.bv, ptr %i.bs, align 1, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.br ; 4 uses
  %i.by = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = load double, ptr %5, align 8, !tbaa !835
  store double %i.bz, ptr %i.bx, align 8, !tbaa !2225
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cb = load i64, ptr %6, align 8, !tbaa !129
  %i.cc = trunc i64 %i.cb to i32
  store i32 %i.cc, ptr %i.ca, align 8, !tbaa !2189
  %i.cd = ptrtoint ptr %i.bx to i64
  %i.ce = or i64 %i.cd, %i.br                     ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !2186
  %i.ch = icmp ult i64 %i.cg, %i.ce
  br i1 %i.ch, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKdiEE6setTagEmm.exit
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !129
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKdiEE6setTagEmm.exit, %bb.n
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.cj = and i64 %i.ci, -256
  %i.ck = add i64 %i.cj, 256
  %i.cl = and i64 %i.ci, 255
  %i.cm = or disjoint i64 %i.ck, %i.cl
  store i64 %i.cm, ptr %i.a, align 8, !tbaa !262
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit
  %.lcssa91.sink = phi ptr [ %i.bx, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit ], [ %i.ab, %bb.d ]
  %.lcssa92.sink = phi i64 [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit ], [ %i.aa, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISG_EEEESE_ImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa91.sink, ptr %0, align 8, !tbaa !2226
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa92.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cn, align 8, !tbaa !2228
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !262
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2143 ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !2144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = mul i64 %3, %2
  store i64 %i.m, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.n = icmp eq i64 %2, 1                        ; 2 uses
  %i.o = shl i64 %3, 4
  %i.p = add i64 %i.o, 16
  %i.q = shl i64 %2, 8
  %.0.i = select i1 %i.n, i64 %i.p, i64 %i.q
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.r = mul i64 %5, %4
  store i64 %i.r, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.s = icmp eq i64 %4, 1                        ; 2 uses
  %i.t = shl i64 %5, 4
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %4, 8
  %.0.i69 = select i1 %i.s, i64 %i.u, i64 %i.v    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.w = load ptr, ptr %0, align 8, !tbaa !2145   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i64 noundef %.0.i69, i64 0), !inline_history !2231 ; 16 uses
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !1130
  store i8 0, ptr %i.i, align 1, !tbaa !172
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
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2232

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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2233

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 14
  %i.av = trunc i64 %5 to i8
  store i8 %i.av, ptr %i.au, align 2, !tbaa !2224
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !2143
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ax = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !262
  %i.az = and i64 %i.ay, -256
  %i.ba = select i1 %.not.i, i64 4294967295, i64 %i.ax
  %i.bb = or i64 %i.az, %i.ba
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !2234
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bc, align 8, !tbaa !203
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.d, ptr %.sroa.487.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.c, ptr %.sroa.588.0..sroa_idx, align 8, !tbaa !2237
  %.sroa.689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %i.e, ptr %.sroa.689.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.890.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr %i.g, ptr %.sroa.890.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !2239
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !203
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  %i.bd = icmp eq i64 %1, 0
  br i1 %i.bd, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEENS5_6memory12StlAllocatorISt4pairIKdiEEEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.s, %i.n
  br i1 %or.cond, label %.lr.ph111, label %bb.h

.lr.ph111:                                        ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bf = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph111, %bb.g
  %.0109 = phi i64 [ 0, %.lr.ph111 ], [ %i.bt, %bb.g ] ; 3 uses
  %.042108 = phi i64 [ 0, %.lr.ph111 ], [ %.1, %bb.g ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0109
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !92  ; 2 uses
  %.not92 = icmp eq i8 %i.bi, 0
  br i1 %.not92, label %bb.g, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.042108 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !92
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKdiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !92
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %.042108 ; 2 uses
  call void @llvm.assume(i1 %i.bf)
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.0109 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load double, ptr %i.bn, align 8, !tbaa !835
  store double %i.bp, ptr %i.bm, align 8, !tbaa !2225
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load i32, ptr %i.bo, align 8, !tbaa !3
  store i32 %i.br, ptr %i.bq, align 8, !tbaa !2189
  %i.bs = add nuw i64 %.042108, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1 = phi i64 [ %i.bs, %bb.f ], [ %.042108, %bb.c ] ; 4 uses
  %i.bt = add i64 %.0109, 1
  %i.bu = icmp ult i64 %.1, %1
  br i1 %i.bu, label %bb.c, label %._crit_edge112, !llvm.loop !2241

._crit_edge112:                                   ; preds = %bb.g
  %i.bv = add i64 %.1, 255
  %i.bw = getelementptr [16 x i8], ptr %i.aa, i64 %.1
  %i.bx = icmp ne ptr %i.aa, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bx)
  %i.by = and i64 %i.bv, 255                      ; 2 uses
  %i.bz = icmp samesign ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.bz)
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = or i64 %i.by, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !129
  br label %.thread

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.i, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.i:                                             ; preds = %bb.h
  %i.cd = load ptr, ptr %0, align 8, !tbaa !2145  ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef ptr %i.cg(ptr noundef nonnull align 8 dereferenceable(264) %i.cd, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %bb.j, !inline_history !1330

bb.j:                                             ; preds = %bb.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS9_14NaNAwareEqualsIdLb1EEENS7_6memory12StlAllocatorISt4pairIKdiEEEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  resume { ptr, i32 } %i.ci

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.i, %bb.h
  %storemerge = phi ptr [ %7, %bb.h ], [ %i.ch, %bb.i ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not57103 = icmp eq i64 %i.cj, 0
  br i1 %.not57103, label %._crit_edge, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !2144
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !129
  %i.cm = getelementptr inbounds nuw [256 x i8], ptr %i.ck, i64 %i.cl
  br label %.lr.ph107

.loopexit:                                        ; preds = %bb.w, %.lr.ph107
  %.155.lcssa = phi i64 [ %.054104, %.lr.ph107 ], [ %i.ct, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph107, !llvm.loop !2242

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %.loopexit
  %.pn59105 = phi ptr [ %.053106, %.loopexit ], [ %i.cm, %.lr.ph107.preheader ] ; 2 uses
  %.054104 = phi i64 [ %.155.lcssa, %.loopexit ], [ %i.cj, %.lr.ph107.preheader ] ; 2 uses
  %.053106 = getelementptr inbounds i8, ptr %.pn59105, i64 -256 ; 4 uses
  %i.cn = load <16 x i8>, ptr %.053106, align 16, !tbaa !92
  %i.co = icmp slt <16 x i8> %i.cn, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16
  %i.cq = and i16 %i.cp, 16383                    ; 2 uses
  %.not9198 = icmp eq i16 %i.cq, 0
  br i1 %.not9198, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph107
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.cq to i32
  %i.cr = icmp ne ptr %.053106, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds i8, ptr %.pn59105, i64 -240
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.w
  %.155101 = phi i64 [ %.054104, %.lr.ph ], [ %i.ct, %bb.w ]
  %.sroa.8.0100 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %.sroa.078.099 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.w ] ; 3 uses
  %i.ct = add i64 %.155101, -1                    ; 2 uses
  %i.cu = and i32 %.sroa.078.099, 1
  %.not.i70 = icmp eq i32 %i.cu, 0
  br i1 %.not.i70, label %bb.l, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !97

end_hunk_16
begin_hunk_17_@_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS9_14NaNAwareEqualsIdLb1EEENS7_6memory12StlAllocatorISt4pairIKdiEEEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !2143
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2254, !nonnull !86, !align !183
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !129 ; 2 uses
  %i.af = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ae, i1 true)
  %i.ag = icmp eq i64 %i.ae, 0
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !262
  %i.ai = and i64 %i.ah, -256
  %i.aj = select i1 %i.ag, i64 4294967295, i64 %i.af
  %i.ak = or i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.ab, align 8, !tbaa !262
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.n, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.q, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS9_14NaNAwareEqualsIdLb1EEENS7_6memory12StlAllocatorISt4pairIKdiEEEEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !2145 ; 2 uses
  %i.am = add i64 %.0.i.i, 15
  %i.an = and i64 %i.am, -16
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(264) %i.al, ptr noundef nonnull %.02.i.i, i64 noundef %i.an)
          to label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS9_14NaNAwareEqualsIdLb1EEENS7_6memory12StlAllocatorISt4pairIKdiEEEEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit unwind label %bb.h, !inline_history !2255

bb.h:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #32
  unreachable

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdiN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS9_14NaNAwareEqualsIdLb1EEENS7_6memory12StlAllocatorISt4pairIKdiEEEEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions6detail11LookupTableINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions6detail11LookupTableINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox9functions6detail11LookupTableINS4_10StringViewEEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #31, !inline_history !2256
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions6detail11LookupTableINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions6detail11LookupTableINS2_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions6detail11LookupTableINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1217 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !92
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #31
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox9functions6detail11LookupTableINS0_10StringViewEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN8facebook5velox9functions6detail11LookupTableINS0_10StringViewEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !888  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly10F14FastMapIiNS1_IN8facebook5velox10StringViewEiNS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEENS3_6memory12StlAllocatorISt4pairIKS4_iEEEEENS5_IivEENS7_IivEENSA_ISB_IKiSF_EEEEESt14default_deleteISL_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly10F14FastMapIiNS1_IN8facebook5velox10StringViewEiNS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEENS3_6memory12StlAllocatorISt4pairIKS4_iEEEEENS5_IivEENS7_IivEENSA_ISB_IKiSF_EEEEEEclEPSL_.exit.i

_ZNKSt14default_deleteIN5folly10F14FastMapIiNS1_IN8facebook5velox10StringViewEiNS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEENS3_6memory12StlAllocatorISt4pairIKS4_iEEEEENS5_IivEENS7_IivEENSA_ISB_IKiSF_EEEEEEclEPSL_.exit.i: ; preds = %bb.a
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrIN5folly10F14FastMapIiNS1_IN8facebook5velox10StringViewEiNS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEENS3_6memory12StlAllocatorISt4pairIKS4_iEEEEENS5_IivEENS7_IivEENSA_ISB_IKiSF_EEEEESt14default_deleteISL_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10F14FastMapIiNS1_IN8facebook5velox10StringViewEiNS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEENS3_6memory12StlAllocatorISt4pairIKS4_iEEEEENS5_IivEENS7_IivEENSA_ISB_IKiSF_EEEEESt14default_deleteISL_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5folly10F14FastMapIiNS1_IN8facebook5velox10StringViewEiNS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEENS3_6memory12StlAllocatorISt4pairIKS4_iEEEEENS5_IivEENS7_IivEENSA_ISB_IKiSF_EEEEEEclEPSL_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox9functions6detail11LookupTableINS0_10StringViewEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN8facebook5velox9functions6detail11LookupTableINS0_10StringViewEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !888  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN8facebook5velox9functions6detail11LookupTableINS0_10StringViewEED2Ev.exit, label %_ZNKSt14default_deleteIN5folly10F14FastMapIiNS1_IN8facebook5velox10StringViewEiNS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEENS3_6memory12StlAllocatorISt4pairIKS4_iEEEEENS5_IivEENS7_IivEENSA_ISB_IKiSF_EEEEEEclEPSL_.exit.i.i

_ZNKSt14default_deleteIN5folly10F14FastMapIiNS1_IN8facebook5velox10StringViewEiNS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEENS3_6memory12StlAllocatorISt4pairIKS4_iEEEEENS5_IivEENS7_IivEENSA_ISB_IKiSF_EEEEEEclEPSL_.exit.i.i: ; preds = %bb.a
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #31, !inline_history !2257
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #34, !inline_history !2257
  br label %_ZN8facebook5velox9functions6detail11LookupTableINS0_10StringViewEED2Ev.exit

_ZN8facebook5velox9functions6detail11LookupTableINS0_10StringViewEED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5folly10F14FastMapIiNS1_IN8facebook5velox10StringViewEiNS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEENS3_6memory12StlAllocatorISt4pairIKS4_iEEEEENS5_IivEENS7_IivEENSA_ISB_IKiSF_EEEEEEclEPSL_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #34
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE17afterFailedRehashEPSJ_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !880  ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.c = icmp eq i64 %2, 1
  br i1 %i.c, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %2, -2
  br label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i, %.new
  %.01418.i = phi ptr [ %i.b, %.new ], [ %i.ab, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i ] ; 9 uses
  %.01517.i = phi ptr [ %1, %.new ], [ %i.ac, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i ] ; 12 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.01418.i, i64 8
  %i.e = load i32, ptr %.01418.i, align 4, !tbaa !3
  store i32 %i.e, ptr %.01517.i, align 8, !tbaa !2258
  %i.f = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  %i.g = load i64, ptr %i.d, align 8, !tbaa !229
  store i64 %i.g, ptr %i.f, align 8, !tbaa !229
  %i.h = getelementptr inbounds nuw i8, ptr %.01517.i, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.01418.i, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01517.i, i64 24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.j, align 8, !tbaa !2269
  %i.k = getelementptr inbounds nuw i8, ptr %.01517.i, i64 32 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !262
  %i.l = load <2 x ptr>, ptr %i.i, align 8, !tbaa !139
  store <2 x ptr> %i.l, ptr %i.h, align 8, !tbaa !139
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.i, align 8, !tbaa !139
  %i.m = getelementptr inbounds nuw i8, ptr %.01418.i, i64 32 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !129
  store i64 %i.n, ptr %i.k, align 8, !tbaa !129
  store i64 0, ptr %i.m, align 8, !tbaa !129
  %i.o = getelementptr inbounds nuw i8, ptr %.01418.i, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %.01517.i, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %.01418.i, i64 48
  %i.r = load i32, ptr %i.o, align 8, !tbaa !3
  store i32 %i.r, ptr %i.p, align 8, !tbaa !2258
  %i.s = getelementptr inbounds nuw i8, ptr %.01517.i, i64 48
  %i.t = load i64, ptr %i.q, align 8, !tbaa !229
  store i64 %i.t, ptr %i.s, align 8, !tbaa !229
  %i.u = getelementptr inbounds nuw i8, ptr %.01517.i, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %.01418.i, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01517.i, i64 64
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.w, align 8, !tbaa !2269
  %i.x = getelementptr inbounds nuw i8, ptr %.01517.i, i64 72 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !262
  %i.y = load <2 x ptr>, ptr %i.v, align 8, !tbaa !139
  store <2 x ptr> %i.y, ptr %i.u, align 8, !tbaa !139
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.v, align 8, !tbaa !139
  %i.z = getelementptr inbounds nuw i8, ptr %.01418.i, i64 72 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !129
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !129
  store i64 0, ptr %i.z, align 8, !tbaa !129
  %i.ab = getelementptr inbounds nuw i8, ptr %.01418.i, i64 80 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01517.i, i64 80 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit.loopexit.unr-lcssa, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i, !llvm.loop !2270

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit.loopexit.unr-lcssa: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.epil.preheader

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.epil.preheader: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit.loopexit.unr-lcssa, %bb.b
  %.01418.i.epil.init = phi ptr [ %i.b, %bb.b ], [ %i.ab, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit.loopexit.unr-lcssa ] ; 4 uses
  %.01517.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.ac, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit.loopexit.unr-lcssa ] ; 6 uses
  %lcmp.mod5 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.epil.init) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.01418.i.epil.init, i64 8
  %i.ae = load i32, ptr %.01418.i.epil.init, align 4, !tbaa !3
  store i32 %i.ae, ptr %.01517.i.epil.init, align 8, !tbaa !2258
  %i.af = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 8
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !229
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !229
  %i.ah = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %.01418.i.epil.init, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aj, align 8, !tbaa !2269
  %i.ak = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 32 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !262
  %i.al = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !139
  store <2 x ptr> %i.al, ptr %i.ah, align 8, !tbaa !139
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.ai, align 8, !tbaa !139
  %i.am = getelementptr inbounds nuw i8, ptr %.01418.i.epil.init, i64 32 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !129
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !129
  store i64 0, ptr %i.am, align 8, !tbaa !129
  br label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.epil.preheader, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit.loopexit.unr-lcssa, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ao, align 8, !tbaa !880
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !886  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !281
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !262  ; 3 uses
  %i.h = lshr i64 %i.g, 8                         ; 2 uses
  %i.i = and i64 %i.g, 255
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.0.copyload.i.i = load i16, ptr %i.j, align 1
  %i.k = zext i16 %.0.copyload.i.i to i64
  %notmask.i = shl nsw i64 -1, %i.i
  %i.l = xor i64 %notmask.i, -1
  %i.m = lshr i64 %i.l, 12
  %i.n = add nuw nsw i64 %i.m, 1
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i, %.lr.ph.i.i
  %.05.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.au, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i ] ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !880
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %.05.i.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2269 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 15
  %i.v = load i8, ptr %i.u, align 1, !tbaa !281
  %i.w = icmp eq i8 %i.v, -1
  br i1 %i.w, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !262  ; 2 uses
  %i.z = and i64 %i.y, 255                        ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.aa, align 1
  %i.ab = zext i16 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %notmask.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.z
  %i.ac = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = add nuw nsw i64 %i.ad, 1
  %i.af = icmp ult i64 %i.y, 256
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.z, ptr %i.x, align 8, !tbaa !262
  %.0.copyload.i.pre.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.aa, align 1
  %.pre20.i.i.i.i.i.i.i.i.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i.i.i.i.i.i.i.i.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi21.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ab, %bb.d ], [ %.pre20.i.i.i.i.i.i.i.i.i.i.i, %bb.e ]
  %i.ag = icmp eq i64 %i.z, 0
  %i.ah = shl nuw nsw i64 %.pre-phi21.i.i.i.i.i.i.i.i.i.i.i, 2
  %.neg17.i.i.i.i.i.i.i.i.i.i.i = sub nuw nsw i64 -16, %i.ah
  %.neg18.i.i.i.i.i.i.i.i.i.i.i = shl i64 -64, %i.z
  %.0.i.neg.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ag, i64 %.neg17.i.i.i.i.i.i.i.i.i.i.i, i64 %.neg18.i.i.i.i.i.i.i.i.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.s, align 8, !tbaa !2269
  store i64 0, ptr %i.x, align 8, !tbaa !262
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !2271 ; 2 uses
  %i.aj = and i64 %.0.i.neg.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.ak = mul nuw nsw i64 %i.ab, 24
  %i.al = mul i64 %i.ak, %i.ae
  %i.am = add i64 %i.al, 8
  %i.an = sub i64 %i.am, %i.aj
  %i.ao = and i64 %i.an, -16
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(264) %i.ai, ptr noundef nonnull %i.t, i64 noundef %i.ao)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i unwind label %bb.g, !inline_history !2272

bb.g:                                             ; preds = %bb.f
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #32
  unreachable

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i: ; preds = %bb.f, %bb.c
  %i.au = add nuw nsw i64 %.05.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.h
  br i1 %exitcond.not.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit, label %bb.c, !llvm.loop !2273

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i
  %.pre = load i64, ptr %i.f, align 8, !tbaa !262
  br label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit, %bb.b
  %i.av = phi i64 [ %.pre, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit ], [ %i.g, %bb.b ] ; 3 uses
  %i.aw = icmp ult i64 %i.av, 256
  br i1 %i.aw, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit
  %i.ax = and i64 %i.av, 255                      ; 2 uses
  store i64 %i.ax, ptr %i.f, align 8, !tbaa !262
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit, %bb.h
  %i.ay = phi i64 [ %i.av, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit ], [ %i.ax, %bb.h ] ; 2 uses
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !886 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %.0.copyload.i = load i16, ptr %i.ba, align 1
  %i.bb = zext i16 %.0.copyload.i to i64
  %i.bc = icmp eq i64 %i.ay, 0
  %i.bd = shl nuw nsw i64 %i.bb, 2
  %.neg17 = sub nuw nsw i64 -16, %i.bd
  %.neg18 = shl i64 -64, %i.ay
  %.0.i.neg = select i1 %i.bc, i64 %.neg17, i64 %.neg18
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !886
  store i64 0, ptr %i.f, align 8, !tbaa !262
  %i.be = load ptr, ptr %0, align 8, !tbaa !2274  ; 2 uses
  %i.bf = and i64 %.0.i.neg, -8
  %i.bg = mul nuw nsw i64 %i.k, 40
  %i.bh = mul i64 %i.bg, %i.n
  %i.bi = add i64 %i.bh, 8
  %i.bj = sub i64 %i.bi, %i.bf
  %i.bk = and i64 %i.bj, -16
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 120
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(264) %i.be, ptr noundef nonnull %i.az, i64 noundef %i.bk)
          to label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE10afterResetEmmPhm.exit unwind label %bb.k, !inline_history !2275

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE10afterResetEmmPhm.exit: ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bo, align 8, !tbaa !880
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE10afterResetEmmPhm.exit, %bb.a
  ret void

bb.k:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #32
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_113applyMapTypedILNS0_8TypeKindE7EEESt10shared_ptrINS0_10BaseVectorEEbRS5_INS1_6detail15LookupTableBaseEERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKS7_RNS0_4exec7EvalCtxEENKUliNS0_10StringViewEE_clEiSN_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i64 %2, ptr %3) unnamed_addr #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.std::pair.303", align 8    ; 3 uses
  %7 = alloca %"struct.std::pair.303", align 8    ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
end_hunk_17
begin_hunk_18_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSC_10MemoryPoolEEEESE_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESE_ImmERKT_DpOT0_:bb.a
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.cq = and i64 %i.cp, -256
  %i.cr = add i64 %i.cq, 256
  %i.cs = and i64 %i.cp, 255
  %i.ct = or disjoint i64 %i.cr, %i.cs
  store i64 %i.ct, ptr %i.a, align 8, !tbaa !262
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !219
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cu, align 8, !tbaa !1309
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !262
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !886  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = load ptr, ptr %0, align 8, !tbaa !2274  ; 2 uses
  %i.ad = sub i64 0, %.0.i52
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %i.af = sub i64 0, %i.ae
  %i.ag = mul i64 %i.x, 40
  %i.ah = add i64 %i.ag, 8
  %i.ai = sub i64 %i.ah, %i.ae
  %i.aj = and i64 %i.ai, -16
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(264) %i.ac, i64 noundef %i.aj, i64 0), !inline_history !2323 ; 15 uses
  store ptr %i.an, ptr %i.h, align 8, !tbaa !1130
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !880 ; 3 uses
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
  %i.at = load i32, ptr %.01418.i.i, align 4, !tbaa !3
  store i32 %i.at, ptr %.01517.i.i, align 8, !tbaa !2258
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 8
  %i.av = load i64, ptr %i.as, align 8, !tbaa !229
  store i64 %i.av, ptr %i.au, align 8, !tbaa !229
  %i.aw = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.ay, align 8, !tbaa !2269
  %i.az = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 32 ; 2 uses
  store i64 0, ptr %i.az, align 8, !tbaa !262
  %i.ba = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !139
  store <2 x ptr> %i.ba, ptr %i.aw, align 8, !tbaa !139
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.ax, align 8, !tbaa !139
  %i.bb = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 32 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !129
  store i64 %i.bc, ptr %i.az, align 8, !tbaa !129
  store i64 0, ptr %i.bb, align 8, !tbaa !129
  %i.bd = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 48
  %i.bg = load i32, ptr %i.bd, align 8, !tbaa !3
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !2258
  %i.bh = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 48
  %i.bi = load i64, ptr %i.bf, align 8, !tbaa !229
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !229
  %i.bj = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 56 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 64
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.bl, align 8, !tbaa !2269
  %i.bm = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 72 ; 2 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !262
  %i.bn = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !139
  store <2 x ptr> %i.bn, ptr %i.bj, align 8, !tbaa !139
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.bk, align 8, !tbaa !139
  %i.bo = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 72 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !129
  store i64 %i.bp, ptr %i.bm, align 8, !tbaa !129
  store i64 0, ptr %i.bo, align 8, !tbaa !129
  %i.bq = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 80 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 80 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i, !llvm.loop !2270

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.epil.preheader

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.epil.preheader: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader
  %.01418.i.i.epil.init = phi ptr [ %i.ap, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader ], [ %i.bq, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa ] ; 4 uses
  %.01517.i.i.epil.init = phi ptr [ %i.aq, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader ], [ %i.br, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa ] ; 6 uses
  %lcmp.mod141 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.epil.init) ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.01418.i.i.epil.init, i64 8
  %i.bt = load i32, ptr %.01418.i.i.epil.init, align 4, !tbaa !3
  store i32 %i.bt, ptr %.01517.i.i.epil.init, align 8, !tbaa !2258
  %i.bu = getelementptr inbounds nuw i8, ptr %.01517.i.i.epil.init, i64 8
  %i.bv = load i64, ptr %i.bs, align 8, !tbaa !229
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !229
  %i.bw = getelementptr inbounds nuw i8, ptr %.01517.i.i.epil.init, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.01418.i.i.epil.init, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01517.i.i.epil.init, i64 24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.by, align 8, !tbaa !2269
  %i.bz = getelementptr inbounds nuw i8, ptr %.01517.i.i.epil.init, i64 32 ; 2 uses
  store i64 0, ptr %i.bz, align 8, !tbaa !262
  %i.ca = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !139
  store <2 x ptr> %i.ca, ptr %i.bw, align 8, !tbaa !139
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.bx, align 8, !tbaa !139
  %i.cb = getelementptr inbounds nuw i8, ptr %.01418.i.i.epil.init, i64 32 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !129
  store i64 %i.cc, ptr %i.bz, align 8, !tbaa !129
  store i64 0, ptr %i.cb, align 8, !tbaa !129
  br label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_10StringViewEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.epil.preheader, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa, %bb.a
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !880
  store ptr %i.ap, ptr %i.i, align 8, !tbaa !2324
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %xtraiter142 = and i64 %4, 7                    ; 3 uses
  %i.cd = icmp ult i64 %4, 8
  br i1 %i.cd, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter145 = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ct, %.lr.ph.i ] ; 9 uses
  %niter146 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter146.next.7, %.lr.ph.i ]
  %i.ce = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ce, i8 0, i64 16, i1 false)
  %i.cf = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cg, i8 0, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ci, i8 0, i64 16, i1 false)
  %i.cj = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ck, i8 0, i64 16, i1 false)
  %i.cl = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cm, i8 0, i64 16, i1 false)
  %i.cn = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.co, i8 0, i64 16, i1 false)
  %i.cp = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cq, i8 0, i64 16, i1 false)
  %i.cr = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cs, i8 0, i64 16, i1 false)
  %i.ct = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter146.next.7 = add i64 %niter146, 8         ; 2 uses
  %niter146.ncmp.7 = icmp eq i64 %niter146.next.7, %unroll_iter145
  br i1 %niter146.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2325

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ct, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod144 = icmp ne i64 %xtraiter142, 0
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.cv, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cu = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cu, i8 0, i64 16, i1 false)
  %i.cv = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter142
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2326

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.cw = trunc i64 %5 to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i16 %i.cw, ptr %i.cx, align 1
  store ptr %i.an, ptr %i.k, align 8, !tbaa !886
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !262
  %i.db = and i64 %i.da, -256
  %i.dc = select i1 %.not.i53, i64 4294967295, i64 %i.cz
  %i.dd = or i64 %i.db, %i.dc
  store i64 %i.dd, ptr %i.cy, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !2327
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.de, align 8, !tbaa !203
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.475.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.576.0..sroa_idx, align 8, !tbaa !1321
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.677.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.878.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.878.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !2330
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !2332
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  br i1 %.not.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %.lr.ph108, label %bb.g

.lr.ph108:                                        ; preds = %bb.b
  %i.df = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.dg = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.dh = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph108, %bb.f
  %.0106 = phi i64 [ 0, %.lr.ph108 ], [ %i.dr, %bb.f ] ; 3 uses
  %.034105 = phi i64 [ 0, %.lr.ph108 ], [ %.1, %bb.f ] ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0106
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !92  ; 2 uses
  %.not86 = icmp eq i8 %i.dj, 0
  br i1 %.not86, label %bb.f, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.dk = getelementptr inbounds nuw i8, ptr %i.an, i64 %.034105 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !92
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.d
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !92
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.034105
  call void @llvm.assume(i1 %i.dg)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.0106
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !3
  %i.dq = add nuw i64 %.034105, 1
  br label %bb.f

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.c
  %.1 = phi i64 [ %i.dq, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.034105, %bb.c ] ; 2 uses
  %i.dr = add i64 %.0106, 1
  %i.ds = icmp ult i64 %.1, %1
  br i1 %i.ds, label %bb.c, label %.loopexit, !llvm.loop !2334

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.h, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.h:                                             ; preds = %bb.g
  %i.dt = load ptr, ptr %0, align 8, !tbaa !2274  ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !19
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 96
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = invoke noundef ptr %i.dw(ptr noundef nonnull align 8 dereferenceable(264) %i.dt, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEENS8_6memory12StlAllocatorISt4pairIKS9_iEEEEEvvNSF_ISG_IKiSK_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, !inline_history !1330

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.h, %bb.g
  %storemerge = phi ptr [ %7, %bb.g ], [ %i.dx, %bb.h ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.dy = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not45100 = icmp eq i64 %i.dy, 0
  br i1 %.not45100, label %._crit_edge, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !1312
  %i.ea = load i64, ptr %i.b, align 8, !tbaa !129
  %i.eb = getelementptr inbounds nuw [64 x i8], ptr %i.dz, i64 %i.ea
  br label %.lr.ph104

.loopexit87:                                      ; preds = %bb.q, %.lr.ph104
  %.143.lcssa = phi i64 [ %.042101, %.lr.ph104 ], [ %i.es, %bb.q ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph104, !llvm.loop !2335

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %.loopexit87
  %.pn102 = phi ptr [ %.041103, %.loopexit87 ], [ %i.eb, %.lr.ph104.preheader ] ; 2 uses
  %.042101 = phi i64 [ %.143.lcssa, %.loopexit87 ], [ %i.dy, %.lr.ph104.preheader ] ; 2 uses
  %.041103 = getelementptr inbounds i8, ptr %.pn102, i64 -64 ; 4 uses
  %i.ec = load <16 x i8>, ptr %.041103, align 16, !tbaa !92
  %i.ed = icmp slt <16 x i8> %i.ec, zeroinitializer
  %i.ee = bitcast <16 x i1> %i.ed to i16
  %i.ef = and i16 %i.ee, 4095                     ; 2 uses
  %.sroa.067.0.extract.trunc = zext nneg i16 %i.ef to i32 ; 2 uses
  %cond = icmp eq i16 %i.ef, 0
  br i1 %cond, label %.loopexit87, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph104
  %i.eg = icmp ne ptr %.041103, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.eg)
  %i.eh = getelementptr inbounds i8, ptr %.pn102, i64 -48 ; 2 uses
  %i.ei = load ptr, ptr %i.ao, align 8, !tbaa !880
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.093 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.064.092 = phi i32 [ %.sroa.067.0.extract.trunc, %.lr.ph ], [ %.sroa.064.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.ej = and i32 %.sroa.064.092, 1
  %.not.i54 = icmp eq i32 %i.ej, 0
  br i1 %.not.i54, label %bb.j, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !97

bb.j:                                             ; preds = %bb.i
  %i.ek = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.064.092, i1 true) ; 2 uses
  %i.el = add i32 %.sroa.8.093, %i.ek
  %i.em = add nuw nsw i32 %i.ek, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.i, %bb.j
  %.pn85 = phi i32 [ %i.em, %bb.j ], [ 1, %bb.i ]
  %.sroa.8.1.in = phi i32 [ %i.el, %bb.j ], [ %.sroa.8.093, %bb.i ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.064.1 = lshr i32 %.sroa.064.092, %.pn85  ; 2 uses
  %i.en = zext i32 %.sroa.8.1.in to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [40 x i8], ptr %i.ei, i64 %i.eq
  call void @llvm.prefetch.p0(ptr %i.er, i32 0, i32 3, i32 1)
  %.not82 = icmp eq i32 %.sroa.064.1, 0
  br i1 %.not82, label %.lr.ph98, label %bb.i

.lr.ph98:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.q
  %.14397 = phi i64 [ %i.es, %bb.q ], [ %.042101, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.869.096 = phi i32 [ %.sroa.869.1, %bb.q ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.067.095 = phi i32 [ %.sroa.067.1, %bb.q ], [ %.sroa.067.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.es = add i64 %.14397, -1                     ; 2 uses
  %i.et = and i32 %.sroa.067.095, 1
  %.not.i56 = icmp eq i32 %i.et, 0
  br i1 %.not.i56, label %bb.k, label %bb.l, !prof !97

bb.k:                                             ; preds = %.lr.ph98
  %i.eu = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.067.095, i1 true) ; 2 uses
  %i.ev = add i32 %.sroa.869.096, %i.eu
  %i.ew = add nuw nsw i32 %i.eu, 1
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph98, %bb.k
end_hunk_18
begin_hunk_19_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JS6_RmEEES9_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbES9_ImmERKT_DpOT0_:bb.a
  %i.es = trunc i64 %i.er to i32
  store i32 %i.es, ptr %i.eq, align 8, !tbaa !2316
  %i.et = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.eu = and i64 %i.et, -256
  %i.ev = add i64 %i.eu, 256
  %i.ew = and i64 %i.et, 255
  %i.ex = or disjoint i64 %i.ev, %i.ew
  store i64 %i.ex, ptr %i.a, align 8, !tbaa !262
  br label %bb.r

bb.r:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink166 = phi ptr [ %i.ct, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ %i.eh, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ %i.eb, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink166, ptr %0, align 8, !tbaa !219
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ey, align 8, !tbaa !1309
  ret void
}

declare noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !262
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  store i64 %4, ptr %i.c, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2269 ; 4 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.o = add i64 %2, -1
  %i.p = lshr i64 %i.o, 12
  %i.q = add nuw nsw i64 %i.p, 1
  %i.r = mul i64 %i.q, %3
  store i64 %i.r, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.s = icmp eq i64 %2, 1                        ; 2 uses
  %i.t = shl i64 %3, 2
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %2, 6
  %.0.i = select i1 %i.s, i64 %i.u, i64 %i.v
  store i64 %.0.i, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.w = add i64 %4, -1
  %i.x = lshr i64 %i.w, 12
  %i.y = add nuw nsw i64 %i.x, 1
  %i.z = mul i64 %i.y, %5                         ; 2 uses
  store i64 %i.z, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  %i.aa = icmp eq i64 %4, 1                       ; 2 uses
  %i.ab = shl i64 %5, 2
  %i.ac = add i64 %i.ab, 16
  %i.ad = shl i64 %4, 6
  %.0.i52 = select i1 %i.aa, i64 %i.ac, i64 %i.ad ; 2 uses
  store i64 %.0.i52, ptr %i.h, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  %i.ae = load ptr, ptr %0, align 8, !tbaa !2271  ; 2 uses
  %i.af = sub i64 0, %.0.i52
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %i.ah = sub i64 0, %i.ag
  %i.ai = mul i64 %i.z, 24
  %i.aj = add i64 %i.ai, 8
  %i.ak = sub i64 %i.aj, %i.ag
  %i.al = and i64 %i.ak, -16
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(264) %i.ae, i64 noundef %i.al, i64 0), !inline_history !2353 ; 15 uses
  store ptr %i.ap, ptr %i.i, align 8, !tbaa !1130
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2311 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.at = mul i64 %1, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.ar, i64 %i.at, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !2311
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !2354
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
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2355

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bk, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod143 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod143)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.bm, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bl, i8 0, i64 16, i1 false)
  %i.bm = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2356

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.bn = trunc i64 %5 to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i16 %i.bn, ptr %i.bo, align 1
  store ptr %i.ap, ptr %i.m, align 8, !tbaa !2269
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !262
  %i.bs = and i64 %i.br, -256
  %i.bt = select i1 %.not.i53, i64 4294967295, i64 %i.bq
  %i.bu = or i64 %i.bs, %i.bt
  store i64 %i.bu, ptr %i.bp, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #31
  store i8 0, ptr %i.k, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store i8 0, ptr %7, align 8, !tbaa !1316, !alias.scope !2357
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.bv, align 8, !tbaa !203
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.e, ptr %.sroa.475.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.d, ptr %.sroa.576.0..sroa_idx, align 8, !tbaa !1321
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.f, ptr %.sroa.677.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.878.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.h, ptr %.sroa.878.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !2360
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr %i.j, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !2362
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr %i.g, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.aa, %i.s
  br i1 %or.cond, label %.lr.ph109, label %bb.h

.lr.ph109:                                        ; preds = %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bx = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph109, %bb.g
  %.0107 = phi i64 [ 0, %.lr.ph109 ], [ %i.ci, %bb.g ] ; 3 uses
  %.034106 = phi i64 [ 0, %.lr.ph109 ], [ %.1, %bb.g ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0107
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !92  ; 2 uses
  %.not86 = icmp eq i8 %i.ca, 0
  br i1 %.not86, label %bb.g, label %bb.e, !prof !97

bb.e:                                             ; preds = %bb.d
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.034106 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !92
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.e
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !92
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.034106
  call void @llvm.assume(i1 %i.bx)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.0107
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !3
  %i.ch = add nuw i64 %.034106, 1
  br label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.d
  %.1 = phi i64 [ %i.ch, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.034106, %bb.d ] ; 2 uses
  %i.ci = add i64 %.0107, 1
  %i.cj = icmp ult i64 %.1, %1
  br i1 %i.cj, label %bb.d, label %.loopexit, !llvm.loop !2364

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #31
  %.not = icmp ugt i64 %4, 256
  br i1 %.not, label %bb.i, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.i:                                             ; preds = %bb.h
  %i.ck = load ptr, ptr %0, align 8, !tbaa !2271  ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !19
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = invoke noundef ptr %i.cn(ptr noundef nonnull align 8 dereferenceable(264) %i.ck, i64 noundef %4, i64 0)
          to label %._ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit_crit_edge unwind label %bb.j, !inline_history !1330

._ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit_crit_edge: ; preds = %bb.i
  %.pre = load i64, ptr %i.c, align 8, !tbaa !129
  br label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.j:                                             ; preds = %bb.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS7_6memory12StlAllocatorISt4pairIKS8_iEEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %._ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit_crit_edge, %bb.h
  %i.cq = phi i64 [ %4, %bb.h ], [ %.pre, %._ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit_crit_edge ]
  %storemerge = phi ptr [ %8, %bb.h ], [ %i.co, %._ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit_crit_edge ] ; 2 uses
  store ptr %storemerge, ptr %i.l, align 8, !tbaa !1130
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %i.cq, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store i8 0, ptr %9, align 8, !tbaa !1316, !alias.scope !2365
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.c, ptr %i.cr, align 8, !tbaa !1112
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %8, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !2368
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %0, ptr %.sroa.572.0..sroa_idx, align 8, !tbaa !2360
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.l, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !1323
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not45101 = icmp eq i64 %i.cs, 0
  br i1 %.not45101, label %._crit_edge, label %.lr.ph105

.lr.ph105:                                        ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.ct = load ptr, ptr %i.d, align 8, !tbaa !1312
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !129
  %i.cv = getelementptr inbounds nuw [64 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 4
  br label %bb.k

.loopexit87:                                      ; preds = %bb.u, %bb.k
  %.143.lcssa = phi i64 [ %.042102, %bb.k ], [ %i.do, %bb.u ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %._crit_edge, label %bb.k, !llvm.loop !2370

bb.k:                                             ; preds = %.lr.ph105, %.loopexit87
  %.pn103 = phi ptr [ %i.cv, %.lr.ph105 ], [ %.041104, %.loopexit87 ] ; 2 uses
  %.042102 = phi i64 [ %i.cs, %.lr.ph105 ], [ %.143.lcssa, %.loopexit87 ] ; 2 uses
  %.041104 = getelementptr inbounds i8, ptr %.pn103, i64 -64 ; 4 uses
  %i.cy = load <16 x i8>, ptr %.041104, align 16, !tbaa !92
  %i.cz = icmp slt <16 x i8> %i.cy, zeroinitializer
  %i.da = bitcast <16 x i1> %i.cz to i16
  %i.db = and i16 %i.da, 4095                     ; 2 uses
  %.sroa.067.0.extract.trunc = zext nneg i16 %i.db to i32 ; 2 uses
  %cond = icmp eq i16 %i.db, 0
  br i1 %cond, label %.loopexit87, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.dc = icmp ne ptr %.041104, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds i8, ptr %.pn103, i64 -48 ; 2 uses
  %i.de = load ptr, ptr %i.aq, align 8, !tbaa !2311
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.094 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.064.093 = phi i32 [ %.sroa.067.0.extract.trunc, %.lr.ph ], [ %.sroa.064.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.df = and i32 %.sroa.064.093, 1
  %.not.i54 = icmp eq i32 %i.df, 0
  br i1 %.not.i54, label %bb.m, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !97

bb.m:                                             ; preds = %bb.l
  %i.dg = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.064.093, i1 true) ; 2 uses
  %i.dh = add i32 %.sroa.8.094, %i.dg
  %i.di = add nuw nsw i32 %i.dg, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.l, %bb.m
  %.pn85 = phi i32 [ %i.di, %bb.m ], [ 1, %bb.l ]
  %.sroa.8.1.in = phi i32 [ %i.dh, %bb.m ], [ %.sroa.8.094, %bb.l ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.064.1 = lshr i32 %.sroa.064.093, %.pn85  ; 2 uses
  %i.dj = zext i32 %.sroa.8.1.in to i64
end_hunk_19
begin_hunk_20_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyMapTypedILNS0_8TypeKindE8EEESt10shared_ptrINS0_10BaseVectorEEbRS5_INS1_6detail15LookupTableBaseEERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKS7_RNS0_4exec7EvalCtxEENKUliNS0_10StringViewEE_clEiSN_:bb.a
  %.not.i.i51 = icmp eq i64 %.sroa.0.0.copyload.i45, %.fr
  %i.ji = trunc i64 %.sroa.0.0.copyload.i45 to i32 ; 2 uses
  br i1 %.not.i.i51, label %bb.aa, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread108

bb.aa:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit50
  %i.jj = icmp ult i32 %i.ji, 13
  br i1 %i.jj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.jk = icmp samesign ult i32 %i.ji, 5
  %i.jl = icmp eq ptr %.sroa.2.0.copyload.i47, %3
  %or.cond115 = select i1 %i.jk, i1 true, i1 %i.jl
  br i1 %or.cond115, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread108

bb.ac:                                            ; preds = %bb.aa
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i47, i64 4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.jm, ptr nonnull %i.am, i64 %i.ao)
  %i.jn = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.jn, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread108

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread: ; preds = %bb.ab, %bb.ac
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !2415, !nonnull !86, !align !183
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !219
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.jq, i64 %i.e
  store i32 %i.iy, ptr %i.jr, align 4, !tbaa !3
  br label %.thread111

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread108: ; preds = %bb.ab, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit50, %bb.ac
  %i.js = add i64 %.0121, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.js, %i.u
  br i1 %exitcond.not, label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE8makeIterERKNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEE.exit.thread, label %bb.w, !llvm.loop !2416

_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE8makeIterERKNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEE.exit.thread: ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread108, %bb.v, %.critedge.i.i._crit_edge, %.preheader, %_ZN8facebook5velox9functions6detail11LookupTableINS0_10StringViewEE13getMapAtIndexEi.exit39
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !2417, !nonnull !86, !align !183
  call void @_ZN8facebook5velox12NullsBuilder7setNullEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ju, i32 noundef %1)
  br label %.thread111

.thread111:                                       ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE8makeIterERKNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEE.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions6detail11LookupTableINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions6detail11LookupTableINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox9functions6detail11LookupTableINS4_9TimestampEEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #31, !inline_history !2418
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions6detail11LookupTableINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions6detail11LookupTableINS2_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions6detail11LookupTableINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1217 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !92
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #31
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox9functions6detail11LookupTableINS0_9TimestampEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN8facebook5velox9functions6detail11LookupTableINS0_9TimestampEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !992  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly10F14FastMapIiNS1_IN8facebook5velox9TimestampEiNS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEENS3_6memory12StlAllocatorISt4pairIKS4_iEEEEENS5_IivEENS7_IivEENSA_ISB_IKiSF_EEEEESt14default_deleteISL_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly10F14FastMapIiNS1_IN8facebook5velox9TimestampEiNS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEENS3_6memory12StlAllocatorISt4pairIKS4_iEEEEENS5_IivEENS7_IivEENSA_ISB_IKiSF_EEEEEEclEPSL_.exit.i

_ZNKSt14default_deleteIN5folly10F14FastMapIiNS1_IN8facebook5velox9TimestampEiNS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEENS3_6memory12StlAllocatorISt4pairIKS4_iEEEEENS5_IivEENS7_IivEENSA_ISB_IKiSF_EEEEEEclEPSL_.exit.i: ; preds = %bb.a
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrIN5folly10F14FastMapIiNS1_IN8facebook5velox9TimestampEiNS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEENS3_6memory12StlAllocatorISt4pairIKS4_iEEEEENS5_IivEENS7_IivEENSA_ISB_IKiSF_EEEEESt14default_deleteISL_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10F14FastMapIiNS1_IN8facebook5velox9TimestampEiNS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEENS3_6memory12StlAllocatorISt4pairIKS4_iEEEEENS5_IivEENS7_IivEENSA_ISB_IKiSF_EEEEESt14default_deleteISL_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5folly10F14FastMapIiNS1_IN8facebook5velox9TimestampEiNS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEENS3_6memory12StlAllocatorISt4pairIKS4_iEEEEENS5_IivEENS7_IivEENSA_ISB_IKiSF_EEEEEEclEPSL_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox9functions6detail11LookupTableINS0_9TimestampEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN8facebook5velox9functions6detail11LookupTableINS0_9TimestampEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !992  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN8facebook5velox9functions6detail11LookupTableINS0_9TimestampEED2Ev.exit, label %_ZNKSt14default_deleteIN5folly10F14FastMapIiNS1_IN8facebook5velox9TimestampEiNS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEENS3_6memory12StlAllocatorISt4pairIKS4_iEEEEENS5_IivEENS7_IivEENSA_ISB_IKiSF_EEEEEEclEPSL_.exit.i.i

_ZNKSt14default_deleteIN5folly10F14FastMapIiNS1_IN8facebook5velox9TimestampEiNS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEENS3_6memory12StlAllocatorISt4pairIKS4_iEEEEENS5_IivEENS7_IivEENSA_ISB_IKiSF_EEEEEEclEPSL_.exit.i.i: ; preds = %bb.a
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #31, !inline_history !2419
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #34, !inline_history !2419
  br label %_ZN8facebook5velox9functions6detail11LookupTableINS0_9TimestampEED2Ev.exit

_ZN8facebook5velox9functions6detail11LookupTableINS0_9TimestampEED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5folly10F14FastMapIiNS1_IN8facebook5velox9TimestampEiNS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEENS3_6memory12StlAllocatorISt4pairIKS4_iEEEEENS5_IivEENS7_IivEENSA_ISB_IKiSF_EEEEEEclEPSL_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #34
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE17afterFailedRehashEPSJ_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !984  ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.c = icmp eq i64 %2, 1
  br i1 %i.c, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %2, -2
  br label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i, %.new
  %.01418.i = phi ptr [ %i.b, %.new ], [ %i.ab, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i ] ; 9 uses
  %.01517.i = phi ptr [ %1, %.new ], [ %i.ac, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i ] ; 12 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.01418.i, i64 8
  %i.e = load i32, ptr %.01418.i, align 4, !tbaa !3
  store i32 %i.e, ptr %.01517.i, align 8, !tbaa !2420
  %i.f = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  %i.g = load i64, ptr %i.d, align 8, !tbaa !229
  store i64 %i.g, ptr %i.f, align 8, !tbaa !229
  %i.h = getelementptr inbounds nuw i8, ptr %.01517.i, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.01418.i, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01517.i, i64 24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.j, align 8, !tbaa !2431
  %i.k = getelementptr inbounds nuw i8, ptr %.01517.i, i64 32 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !262
  %i.l = load <2 x ptr>, ptr %i.i, align 8, !tbaa !139
  store <2 x ptr> %i.l, ptr %i.h, align 8, !tbaa !139
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.i, align 8, !tbaa !139
  %i.m = getelementptr inbounds nuw i8, ptr %.01418.i, i64 32 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !129
  store i64 %i.n, ptr %i.k, align 8, !tbaa !129
  store i64 0, ptr %i.m, align 8, !tbaa !129
  %i.o = getelementptr inbounds nuw i8, ptr %.01418.i, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %.01517.i, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %.01418.i, i64 48
  %i.r = load i32, ptr %i.o, align 8, !tbaa !3
  store i32 %i.r, ptr %i.p, align 8, !tbaa !2420
  %i.s = getelementptr inbounds nuw i8, ptr %.01517.i, i64 48
  %i.t = load i64, ptr %i.q, align 8, !tbaa !229
  store i64 %i.t, ptr %i.s, align 8, !tbaa !229
  %i.u = getelementptr inbounds nuw i8, ptr %.01517.i, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %.01418.i, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01517.i, i64 64
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.w, align 8, !tbaa !2431
  %i.x = getelementptr inbounds nuw i8, ptr %.01517.i, i64 72 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !262
  %i.y = load <2 x ptr>, ptr %i.v, align 8, !tbaa !139
  store <2 x ptr> %i.y, ptr %i.u, align 8, !tbaa !139
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.v, align 8, !tbaa !139
  %i.z = getelementptr inbounds nuw i8, ptr %.01418.i, i64 72 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !129
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !129
  store i64 0, ptr %i.z, align 8, !tbaa !129
  %i.ab = getelementptr inbounds nuw i8, ptr %.01418.i, i64 80 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01517.i, i64 80 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit.loopexit.unr-lcssa, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i, !llvm.loop !2432

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit.loopexit.unr-lcssa: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.epil.preheader

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.epil.preheader: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit.loopexit.unr-lcssa, %bb.b
  %.01418.i.epil.init = phi ptr [ %i.b, %bb.b ], [ %i.ab, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit.loopexit.unr-lcssa ] ; 4 uses
  %.01517.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.ac, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit.loopexit.unr-lcssa ] ; 6 uses
  %lcmp.mod5 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.epil.init) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.01418.i.epil.init, i64 8
  %i.ae = load i32, ptr %.01418.i.epil.init, align 4, !tbaa !3
  store i32 %i.ae, ptr %.01517.i.epil.init, align 8, !tbaa !2420
  %i.af = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 8
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !229
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !229
  %i.ah = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %.01418.i.epil.init, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aj, align 8, !tbaa !2431
  %i.ak = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 32 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !262
  %i.al = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !139
  store <2 x ptr> %i.al, ptr %i.ah, align 8, !tbaa !139
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.ai, align 8, !tbaa !139
  %i.am = getelementptr inbounds nuw i8, ptr %.01418.i.epil.init, i64 32 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !129
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !129
  store i64 0, ptr %i.am, align 8, !tbaa !129
  br label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.epil.preheader, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE8transferERSK_PSJ_SP_m.exit.loopexit.unr-lcssa, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ao, align 8, !tbaa !984
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !990  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !281
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !262  ; 3 uses
  %i.h = lshr i64 %i.g, 8                         ; 2 uses
  %i.i = and i64 %i.g, 255
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.0.copyload.i.i = load i16, ptr %i.j, align 1
  %i.k = zext i16 %.0.copyload.i.i to i64
  %notmask.i = shl nsw i64 -1, %i.i
  %i.l = xor i64 %notmask.i, -1
  %i.m = lshr i64 %i.l, 12
  %i.n = add nuw nsw i64 %i.m, 1
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i, %.lr.ph.i.i
  %.05.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.au, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i ] ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !984
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %.05.i.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2431 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 15
  %i.v = load i8, ptr %i.u, align 1, !tbaa !281
  %i.w = icmp eq i8 %i.v, -1
  br i1 %i.w, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !262  ; 2 uses
  %i.z = and i64 %i.y, 255                        ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.aa, align 1
  %i.ab = zext i16 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %notmask.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.z
  %i.ac = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = add nuw nsw i64 %i.ad, 1
  %i.af = icmp ult i64 %i.y, 256
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.z, ptr %i.x, align 8, !tbaa !262
  %.0.copyload.i.pre.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.aa, align 1
  %.pre20.i.i.i.i.i.i.i.i.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i.i.i.i.i.i.i.i.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi21.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ab, %bb.d ], [ %.pre20.i.i.i.i.i.i.i.i.i.i.i, %bb.e ]
  %i.ag = icmp eq i64 %i.z, 0
  %i.ah = shl nuw nsw i64 %.pre-phi21.i.i.i.i.i.i.i.i.i.i.i, 2
  %.neg17.i.i.i.i.i.i.i.i.i.i.i = sub nuw nsw i64 -16, %i.ah
  %.neg18.i.i.i.i.i.i.i.i.i.i.i = shl i64 -64, %i.z
  %.0.i.neg.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ag, i64 %.neg17.i.i.i.i.i.i.i.i.i.i.i, i64 %.neg18.i.i.i.i.i.i.i.i.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.s, align 8, !tbaa !2431
  store i64 0, ptr %i.x, align 8, !tbaa !262
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !2433 ; 2 uses
  %i.aj = and i64 %.0.i.neg.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.ak = mul nuw nsw i64 %i.ab, 24
  %i.al = mul i64 %i.ak, %i.ae
  %i.am = add i64 %i.al, 8
  %i.an = sub i64 %i.am, %i.aj
  %i.ao = and i64 %i.an, -16
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(264) %i.ai, ptr noundef nonnull %i.t, i64 noundef %i.ao)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i unwind label %bb.g, !inline_history !2434

bb.g:                                             ; preds = %bb.f
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #32
  unreachable

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i: ; preds = %bb.f, %bb.c
  %i.au = add nuw nsw i64 %.05.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.h
  br i1 %exitcond.not.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit, label %bb.c, !llvm.loop !2435

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i
  %.pre = load i64, ptr %i.f, align 8, !tbaa !262
  br label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit, %bb.b
  %i.av = phi i64 [ %.pre, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit ], [ %i.g, %bb.b ] ; 3 uses
  %i.aw = icmp ult i64 %i.av, 256
  br i1 %i.aw, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit
  %i.ax = and i64 %i.av, 255                      ; 2 uses
  store i64 %i.ax, ptr %i.f, align 8, !tbaa !262
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit, %bb.h
  %i.ay = phi i64 [ %i.av, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE11beforeResetEmm.exit ], [ %i.ax, %bb.h ] ; 2 uses
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !990 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %.0.copyload.i = load i16, ptr %i.ba, align 1
  %i.bb = zext i16 %.0.copyload.i to i64
  %i.bc = icmp eq i64 %i.ay, 0
  %i.bd = shl nuw nsw i64 %i.bb, 2
  %.neg17 = sub nuw nsw i64 -16, %i.bd
  %.neg18 = shl i64 -64, %i.ay
  %.0.i.neg = select i1 %i.bc, i64 %.neg17, i64 %.neg18
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !990
  store i64 0, ptr %i.f, align 8, !tbaa !262
  %i.be = load ptr, ptr %0, align 8, !tbaa !2436  ; 2 uses
  %i.bf = and i64 %.0.i.neg, -8
  %i.bg = mul nuw nsw i64 %i.k, 40
  %i.bh = mul i64 %i.bg, %i.n
  %i.bi = add i64 %i.bh, 8
  %i.bj = sub i64 %i.bi, %i.bf
  %i.bk = and i64 %i.bj, -16
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 120
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(264) %i.be, ptr noundef nonnull %i.az, i64 noundef %i.bk)
          to label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE10afterResetEmmPhm.exit unwind label %bb.k, !inline_history !2437

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE10afterResetEmmPhm.exit: ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bo, align 8, !tbaa !984
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE10afterResetEmmPhm.exit, %bb.a
  ret void

bb.k:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #32
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_113applyMapTypedILNS0_8TypeKindE9EEESt10shared_ptrINS0_10BaseVectorEEbRS5_INS1_6detail15LookupTableBaseEERKNS0_17SelectivityVectorERKNS0_13DecodedVectorERKS7_RNS0_4exec7EvalCtxEENKUliNS0_9TimestampEE_clEiSN_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i64 %2, i64 %3) unnamed_addr #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair.303", align 8    ; 3 uses
  %5 = alloca %"struct.std::pair.303", align 8    ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.facebook::velox::Timestamp", align 8 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2438, !nonnull !86, !align !183
end_hunk_20
begin_hunk_21_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSC_10MemoryPoolEEEESE_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESE_ImmERKT_DpOT0_:bb.a
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.cq = and i64 %i.cp, -256
  %i.cr = add i64 %i.cq, 256
  %i.cs = and i64 %i.cp, 255
  %i.ct = or disjoint i64 %i.cr, %i.cs
  store i64 %i.ct, ptr %i.a, align 8, !tbaa !262
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !219
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cu, align 8, !tbaa !1309
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !262
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !990  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = load ptr, ptr %0, align 8, !tbaa !2436  ; 2 uses
  %i.ad = sub i64 0, %.0.i52
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %i.af = sub i64 0, %i.ae
  %i.ag = mul i64 %i.x, 40
  %i.ah = add i64 %i.ag, 8
  %i.ai = sub i64 %i.ah, %i.ae
  %i.aj = and i64 %i.ai, -16
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(264) %i.ac, i64 noundef %i.aj, i64 0), !inline_history !2473 ; 15 uses
  store ptr %i.an, ptr %i.h, align 8, !tbaa !1130
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !984 ; 3 uses
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
  %i.at = load i32, ptr %.01418.i.i, align 4, !tbaa !3
  store i32 %i.at, ptr %.01517.i.i, align 8, !tbaa !2420
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 8
  %i.av = load i64, ptr %i.as, align 8, !tbaa !229
  store i64 %i.av, ptr %i.au, align 8, !tbaa !229
  %i.aw = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.ay, align 8, !tbaa !2431
  %i.az = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 32 ; 2 uses
  store i64 0, ptr %i.az, align 8, !tbaa !262
  %i.ba = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !139
  store <2 x ptr> %i.ba, ptr %i.aw, align 8, !tbaa !139
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.ax, align 8, !tbaa !139
  %i.bb = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 32 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !129
  store i64 %i.bc, ptr %i.az, align 8, !tbaa !129
  store i64 0, ptr %i.bb, align 8, !tbaa !129
  %i.bd = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 48
  %i.bg = load i32, ptr %i.bd, align 8, !tbaa !3
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !2420
  %i.bh = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 48
  %i.bi = load i64, ptr %i.bf, align 8, !tbaa !229
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !229
  %i.bj = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 56 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 64
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.bl, align 8, !tbaa !2431
  %i.bm = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 72 ; 2 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !262
  %i.bn = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !139
  store <2 x ptr> %i.bn, ptr %i.bj, align 8, !tbaa !139
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.bk, align 8, !tbaa !139
  %i.bo = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 72 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !129
  store i64 %i.bp, ptr %i.bm, align 8, !tbaa !129
  store i64 0, ptr %i.bo, align 8, !tbaa !129
  %i.bq = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 80 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 80 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i, !llvm.loop !2432

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.epil.preheader

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.epil.preheader: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader
  %.01418.i.i.epil.init = phi ptr [ %i.ap, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader ], [ %i.bq, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa ] ; 4 uses
  %.01517.i.i.epil.init = phi ptr [ %i.aq, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.preheader ], [ %i.br, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa ] ; 6 uses
  %lcmp.mod141 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.epil.init) ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.01418.i.i.epil.init, i64 8
  %i.bt = load i32, ptr %.01418.i.i.epil.init, align 4, !tbaa !3
  store i32 %i.bt, ptr %.01517.i.i.epil.init, align 8, !tbaa !2420
  %i.bu = getelementptr inbounds nuw i8, ptr %.01517.i.i.epil.init, i64 8
  %i.bv = load i64, ptr %i.bs, align 8, !tbaa !229
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !229
  %i.bw = getelementptr inbounds nuw i8, ptr %.01517.i.i.epil.init, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.01418.i.i.epil.init, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01517.i.i.epil.init, i64 24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.by, align 8, !tbaa !2431
  %i.bz = getelementptr inbounds nuw i8, ptr %.01517.i.i.epil.init, i64 32 ; 2 uses
  store i64 0, ptr %i.bz, align 8, !tbaa !262
  %i.ca = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !139
  store <2 x ptr> %i.ca, ptr %i.bw, align 8, !tbaa !139
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.bx, align 8, !tbaa !139
  %i.cb = getelementptr inbounds nuw i8, ptr %.01418.i.i.epil.init, i64 32 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !129
  store i64 %i.cc, ptr %i.bz, align 8, !tbaa !129
  store i64 0, ptr %i.cb, align 8, !tbaa !129
  br label %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorISt4pairIKiN5folly10F14FastMapINS1_9TimestampEiNS6_23HeterogeneousAccessHashIS8_vEENS6_26HeterogeneousAccessEqualToIS8_vEENS3_IS4_IKS8_iEEEEEEEEE7destroyISH_EEvRSI_PT_.exit.i.i.epil.preheader, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa, %bb.a
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !984
  store ptr %i.ap, ptr %i.i, align 8, !tbaa !2474
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %xtraiter142 = and i64 %4, 7                    ; 3 uses
  %i.cd = icmp ult i64 %4, 8
  br i1 %i.cd, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter145 = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ct, %.lr.ph.i ] ; 9 uses
  %niter146 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter146.next.7, %.lr.ph.i ]
  %i.ce = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ce, i8 0, i64 16, i1 false)
  %i.cf = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cg, i8 0, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ci, i8 0, i64 16, i1 false)
  %i.cj = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ck, i8 0, i64 16, i1 false)
  %i.cl = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cm, i8 0, i64 16, i1 false)
  %i.cn = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.co, i8 0, i64 16, i1 false)
  %i.cp = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cq, i8 0, i64 16, i1 false)
  %i.cr = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cs, i8 0, i64 16, i1 false)
  %i.ct = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter146.next.7 = add i64 %niter146, 8         ; 2 uses
  %niter146.ncmp.7 = icmp eq i64 %niter146.next.7, %unroll_iter145
  br i1 %niter146.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2475

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ct, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod144 = icmp ne i64 %xtraiter142, 0
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.cv, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cu = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cu, i8 0, i64 16, i1 false)
  %i.cv = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter142
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2476

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEENS5_6memory12StlAllocatorISt4pairIKS6_iEEEEEvvNSC_ISD_IKiSH_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.cw = trunc i64 %5 to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i16 %i.cw, ptr %i.cx, align 1
  store ptr %i.an, ptr %i.k, align 8, !tbaa !990
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !262
  %i.db = and i64 %i.da, -256
  %i.dc = select i1 %.not.i53, i64 4294967295, i64 %i.cz
  %i.dd = or i64 %i.db, %i.dc
  store i64 %i.dd, ptr %i.cy, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !2477
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.de, align 8, !tbaa !203
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.475.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.576.0..sroa_idx, align 8, !tbaa !1321
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.677.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.878.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.878.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !2480
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !2482
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  br i1 %.not.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEENS6_6memory12StlAllocatorISt4pairIKS7_iEEEEEvvNSD_ISE_IKiSI_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %.lr.ph108, label %bb.g

.lr.ph108:                                        ; preds = %bb.b
  %i.df = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.dg = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.dh = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph108, %bb.f
  %.0106 = phi i64 [ 0, %.lr.ph108 ], [ %i.dr, %bb.f ] ; 3 uses
  %.034105 = phi i64 [ 0, %.lr.ph108 ], [ %.1, %bb.f ] ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0106
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !92  ; 2 uses
  %.not86 = icmp eq i8 %i.dj, 0
  br i1 %.not86, label %bb.f, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.dk = getelementptr inbounds nuw i8, ptr %i.an, i64 %.034105 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !92
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.d
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !92
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.034105
  call void @llvm.assume(i1 %i.dg)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.0106
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !3
  %i.dq = add nuw i64 %.034105, 1
  br label %bb.f

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.c
  %.1 = phi i64 [ %i.dq, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.034105, %bb.c ] ; 2 uses
  %i.dr = add i64 %.0106, 1
  %i.ds = icmp ult i64 %.1, %1
  br i1 %i.ds, label %bb.c, label %.loopexit, !llvm.loop !2484

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.h, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.h:                                             ; preds = %bb.g
  %i.dt = load ptr, ptr %0, align 8, !tbaa !2436  ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !19
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 96
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = invoke noundef ptr %i.dw(ptr noundef nonnull align 8 dereferenceable(264) %i.dt, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIiNS_10F14FastMapIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEENS8_6memory12StlAllocatorISt4pairIKS9_iEEEEEvvNSF_ISG_IKiSK_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, !inline_history !1330

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.h, %bb.g
  %storemerge = phi ptr [ %7, %bb.g ], [ %i.dx, %bb.h ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.dy = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not45100 = icmp eq i64 %i.dy, 0
  br i1 %.not45100, label %._crit_edge, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !1312
  %i.ea = load i64, ptr %i.b, align 8, !tbaa !129
  %i.eb = getelementptr inbounds nuw [64 x i8], ptr %i.dz, i64 %i.ea
  br label %.lr.ph104

.loopexit87:                                      ; preds = %bb.q, %.lr.ph104
  %.143.lcssa = phi i64 [ %.042101, %.lr.ph104 ], [ %i.es, %bb.q ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph104, !llvm.loop !2485

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %.loopexit87
  %.pn102 = phi ptr [ %.041103, %.loopexit87 ], [ %i.eb, %.lr.ph104.preheader ] ; 2 uses
  %.042101 = phi i64 [ %.143.lcssa, %.loopexit87 ], [ %i.dy, %.lr.ph104.preheader ] ; 2 uses
  %.041103 = getelementptr inbounds i8, ptr %.pn102, i64 -64 ; 4 uses
  %i.ec = load <16 x i8>, ptr %.041103, align 16, !tbaa !92
  %i.ed = icmp slt <16 x i8> %i.ec, zeroinitializer
  %i.ee = bitcast <16 x i1> %i.ed to i16
  %i.ef = and i16 %i.ee, 4095                     ; 2 uses
  %.sroa.067.0.extract.trunc = zext nneg i16 %i.ef to i32 ; 2 uses
  %cond = icmp eq i16 %i.ef, 0
  br i1 %cond, label %.loopexit87, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph104
  %i.eg = icmp ne ptr %.041103, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.eg)
  %i.eh = getelementptr inbounds i8, ptr %.pn102, i64 -48 ; 2 uses
  %i.ei = load ptr, ptr %i.ao, align 8, !tbaa !984
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.093 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.064.092 = phi i32 [ %.sroa.067.0.extract.trunc, %.lr.ph ], [ %.sroa.064.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.ej = and i32 %.sroa.064.092, 1
  %.not.i54 = icmp eq i32 %i.ej, 0
  br i1 %.not.i54, label %bb.j, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !97

bb.j:                                             ; preds = %bb.i
  %i.ek = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.064.092, i1 true) ; 2 uses
  %i.el = add i32 %.sroa.8.093, %i.ek
  %i.em = add nuw nsw i32 %i.ek, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.i, %bb.j
  %.pn85 = phi i32 [ %i.em, %bb.j ], [ 1, %bb.i ]
  %.sroa.8.1.in = phi i32 [ %i.el, %bb.j ], [ %.sroa.8.093, %bb.i ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.064.1 = lshr i32 %.sroa.064.092, %.pn85  ; 2 uses
  %i.en = zext i32 %.sroa.8.1.in to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [40 x i8], ptr %i.ei, i64 %i.eq
  call void @llvm.prefetch.p0(ptr %i.er, i32 0, i32 3, i32 1)
  %.not82 = icmp eq i32 %.sroa.064.1, 0
  br i1 %.not82, label %.lr.ph98, label %bb.i

.lr.ph98:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.q
  %.14397 = phi i64 [ %i.es, %bb.q ], [ %.042101, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.869.096 = phi i32 [ %.sroa.869.1, %bb.q ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.067.095 = phi i32 [ %.sroa.067.1, %bb.q ], [ %.sroa.067.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.es = add i64 %.14397, -1                     ; 2 uses
  %i.et = and i32 %.sroa.067.095, 1
  %.not.i56 = icmp eq i32 %i.et, 0
  br i1 %.not.i56, label %bb.k, label %bb.l, !prof !97

bb.k:                                             ; preds = %.lr.ph98
  %i.eu = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.067.095, i1 true) ; 2 uses
  %i.ev = add i32 %.sroa.869.096, %i.eu
  %i.ew = add nuw nsw i32 %i.eu, 1
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph98, %bb.k
end_hunk_21
begin_hunk_22_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JS6_RmEEES9_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbES9_ImmERKT_DpOT0_:bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2463, !nonnull !86, !noundef !86
  %i.ck = and i64 %i.cg, 4294967295
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.ck ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1237
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i64, ptr %6, align 8, !tbaa !129
  %i.co = trunc i64 %i.cn to i32
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !2468
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.cq = and i64 %i.cp, -256
  %i.cr = add i64 %i.cq, 256
  %i.cs = and i64 %i.cp, 255
  %i.ct = or disjoint i64 %i.cr, %i.cs
  store i64 %i.ct, ptr %i.a, align 8, !tbaa !262
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.ap, %bb.g ], [ %i.cd, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bx, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !219
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cu, align 8, !tbaa !1309
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !262
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2431 ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = load ptr, ptr %0, align 8, !tbaa !2433  ; 2 uses
  %i.ad = sub i64 0, %.0.i52
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %i.af = sub i64 0, %i.ae
  %i.ag = mul i64 %i.x, 24
  %i.ah = add i64 %i.ag, 8
  %i.ai = sub i64 %i.ah, %i.ae
  %i.aj = and i64 %i.ai, -16
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(264) %i.ac, i64 noundef %i.aj, i64 0), !inline_history !2502 ; 15 uses
  store ptr %i.an, ptr %i.h, align 8, !tbaa !1130
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2463 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ar = mul i64 %1, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.ap, i64 %i.ar, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !2463
  store ptr %i.ap, ptr %i.i, align 8, !tbaa !2503
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
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2504

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bi, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod141 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod141)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.bk, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bj, i8 0, i64 16, i1 false)
  %i.bk = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2505

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS4_6memory12StlAllocatorISt4pairIKS5_iEEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.bl = trunc i64 %5 to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i16 %i.bl, ptr %i.bm, align 1
  store ptr %i.an, ptr %i.k, align 8, !tbaa !2431
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !262
  %i.bq = and i64 %i.bp, -256
  %i.br = select i1 %.not.i53, i64 4294967295, i64 %i.bo
  %i.bs = or i64 %i.bq, %i.br
  store i64 %i.bs, ptr %i.bn, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !2506
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bt, align 8, !tbaa !203
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.475.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.576.0..sroa_idx, align 8, !tbaa !1321
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.677.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.878.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.878.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !2509
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !2511
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS5_6memory12StlAllocatorISt4pairIKS6_iEEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %.lr.ph108, label %bb.h

.lr.ph108:                                        ; preds = %bb.c
  %i.bu = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bv = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph108, %bb.g
  %.0106 = phi i64 [ 0, %.lr.ph108 ], [ %i.cg, %bb.g ] ; 3 uses
  %.034105 = phi i64 [ 0, %.lr.ph108 ], [ %.1, %bb.g ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0106
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !92  ; 2 uses
  %.not86 = icmp eq i8 %i.by, 0
  br i1 %.not86, label %bb.g, label %bb.e, !prof !97

bb.e:                                             ; preds = %bb.d
  %i.bz = getelementptr inbounds nuw i8, ptr %i.an, i64 %.034105 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !92
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.e
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !92
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.034105
  call void @llvm.assume(i1 %i.bv)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.0106
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !3
  %i.cf = add nuw i64 %.034105, 1
  br label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.d
  %.1 = phi i64 [ %i.cf, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.034105, %bb.d ] ; 2 uses
  %i.cg = add i64 %.0106, 1
  %i.ch = icmp ult i64 %.1, %1
  br i1 %i.ch, label %bb.d, label %.loopexit, !llvm.loop !2513

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.i, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.i:                                             ; preds = %bb.h
  %i.ci = load ptr, ptr %0, align 8, !tbaa !2433  ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !19
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = invoke noundef ptr %i.cl(ptr noundef nonnull align 8 dereferenceable(264) %i.ci, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9TimestampEivvNS7_6memory12StlAllocatorISt4pairIKS8_iEEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, !inline_history !1330

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.i, %bb.h
  %storemerge = phi ptr [ %7, %bb.h ], [ %i.cm, %bb.i ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not45100 = icmp eq i64 %i.cn, 0
  br i1 %.not45100, label %._crit_edge, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !1312
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !129
  %i.cq = getelementptr inbounds nuw [64 x i8], ptr %i.co, i64 %i.cp
  br label %.lr.ph104

.loopexit87:                                      ; preds = %bb.r, %.lr.ph104
  %.143.lcssa = phi i64 [ %.042101, %.lr.ph104 ], [ %i.dh, %bb.r ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph104, !llvm.loop !2514

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %.loopexit87
  %.pn102 = phi ptr [ %.041103, %.loopexit87 ], [ %i.cq, %.lr.ph104.preheader ] ; 2 uses
  %.042101 = phi i64 [ %.143.lcssa, %.loopexit87 ], [ %i.cn, %.lr.ph104.preheader ] ; 2 uses
  %.041103 = getelementptr inbounds i8, ptr %.pn102, i64 -64 ; 4 uses
  %i.cr = load <16 x i8>, ptr %.041103, align 16, !tbaa !92
  %i.cs = icmp slt <16 x i8> %i.cr, zeroinitializer
  %i.ct = bitcast <16 x i1> %i.cs to i16
  %i.cu = and i16 %i.ct, 4095                     ; 2 uses
  %.sroa.067.0.extract.trunc = zext nneg i16 %i.cu to i32 ; 2 uses
  %cond = icmp eq i16 %i.cu, 0
  br i1 %cond, label %.loopexit87, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph104
  %i.cv = icmp ne ptr %.041103, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds i8, ptr %.pn102, i64 -48 ; 2 uses
  %i.cx = load ptr, ptr %i.ao, align 8, !tbaa !2463
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.093 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.064.092 = phi i32 [ %.sroa.067.0.extract.trunc, %.lr.ph ], [ %.sroa.064.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cy = and i32 %.sroa.064.092, 1
  %.not.i54 = icmp eq i32 %i.cy, 0
  br i1 %.not.i54, label %bb.k, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !97

bb.k:                                             ; preds = %bb.j
  %i.cz = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.064.092, i1 true) ; 2 uses
  %i.da = add i32 %.sroa.8.093, %i.cz
  %i.db = add nuw nsw i32 %i.cz, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.j, %bb.k
  %.pn85 = phi i32 [ %i.db, %bb.k ], [ 1, %bb.j ]
  %.sroa.8.1.in = phi i32 [ %i.da, %bb.k ], [ %.sroa.8.093, %bb.j ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.064.1 = lshr i32 %.sroa.064.092, %.pn85  ; 2 uses
  %i.dc = zext i32 %.sroa.8.1.in to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %i.df
  call void @llvm.prefetch.p0(ptr %i.dg, i32 0, i32 3, i32 1)
  %.not82 = icmp eq i32 %.sroa.064.1, 0
  br i1 %.not82, label %.lr.ph98, label %bb.j

.lr.ph98:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.r
  %.14397 = phi i64 [ %i.dh, %bb.r ], [ %.042101, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.869.096 = phi i32 [ %.sroa.869.1, %bb.r ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.067.095 = phi i32 [ %.sroa.067.1, %bb.r ], [ %.sroa.067.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.dh = add i64 %.14397, -1                     ; 2 uses
  %i.di = and i32 %.sroa.067.095, 1
  %.not.i56 = icmp eq i32 %i.di, 0
  br i1 %.not.i56, label %bb.l, label %bb.m, !prof !97

bb.l:                                             ; preds = %.lr.ph98
  %i.dj = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.067.095, i1 true) ; 2 uses
  %i.dk = add i32 %.sroa.869.096, %i.dj
  %i.dl = add nuw nsw i32 %i.dj, 1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph98, %bb.l
end_hunk_22
begin_hunk_23_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJRiRNSD_10MemoryPoolEEEESH_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESH_ImmERKT_DpOT0_:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !92
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.by = trunc i64 %3 to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !92
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !262
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !252, !nonnull !86, !noundef !86
  %i.ch = and i64 %i.cd, 4294967295
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.ch ; 4 uses
  %i.cj = load i32, ptr %5, align 4, !tbaa !3
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !2533
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = ptrtoint ptr %6 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !229
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cm, align 8, !tbaa !230
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.co = load i64, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %i.cp = and i64 %i.co, -256
  %i.cq = add i64 %i.cp, 256
  %i.cr = and i64 %i.co, 255
  %i.cs = or disjoint i64 %i.cq, %i.cr
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !262
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.am, %bb.g ], [ %i.ca, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.aa, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !219
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !129
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ct, align 8, !tbaa !1309
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !262
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !258  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3                         ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.ac = call noundef ptr @_ZN5folly3f146detail21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS7_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS8_vEENS5_6memory12StlAllocatorIS8_EEEEvvNSD_ISt4pairIKiSF_EEESt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %i.p, i64 noundef %i.x, i64 noundef %.0.i52, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !2543
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !1130 ; 13 uses
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
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2544

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.aw, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.08.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2545

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ax = trunc i64 %5 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i16 %i.ax, ptr %i.ay, align 1
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !258
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !262
  %i.bc = and i64 %i.bb, -256
  %i.bd = select i1 %.not.i, i64 4294967295, i64 %i.ba
  %i.be = or i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.az, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !2546
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bf, align 8, !tbaa !203
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.474.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !1321
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.676.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.877.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !2549
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !2551
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  %i.bg = icmp eq i64 %1, 0
  br i1 %i.bg, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENS8_12MapKeyHasherENS_26HeterogeneousAccessEqualToIS9_vEENS6_6memory12StlAllocatorIS9_EEEEvvNSE_ISt4pairIKiSG_EEESt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %.lr.ph107, label %bb.g

.lr.ph107:                                        ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bi = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph107, %bb.f
  %.0105 = phi i64 [ 0, %.lr.ph107 ], [ %i.bt, %bb.f ] ; 3 uses
  %.034104 = phi i64 [ 0, %.lr.ph107 ], [ %.1, %bb.f ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0105
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !92  ; 2 uses
  %.not85 = icmp eq i8 %i.bl, 0
  br i1 %.not85, label %bb.f, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.034104 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !92
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.d
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !92
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.034104
  call void @llvm.assume(i1 %i.bi)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.0105
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !3
  %i.bs = add nuw i64 %.034104, 1
  br label %bb.f

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.c
  %.1 = phi i64 [ %i.bs, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.034104, %bb.c ] ; 2 uses
  %i.bt = add i64 %.0105, 1
  %i.bu = icmp ult i64 %.1, %1
  br i1 %i.bu, label %bb.c, label %.loopexit, !llvm.loop !2553

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.h, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.h:                                             ; preds = %bb.g
  %i.bv = load ptr, ptr %0, align 8, !tbaa !2532  ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(264) %i.bv, i64 noundef %4, i64 0)
          to label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIiNS_10F14FastSetIN8facebook5velox9functions6detail6MapKeyENSA_12MapKeyHasherENS_26HeterogeneousAccessEqualToISB_vEENS8_6memory12StlAllocatorISB_EEEEvvNSG_ISt4pairIKiSI_EEESt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, !inline_history !1330

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %bb.h, %bb.g
  %storemerge = phi ptr [ %7, %bb.g ], [ %i.bz, %bb.h ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %4, i1 false)
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not4599 = icmp eq i64 %i.ca, 0
  br i1 %.not4599, label %._crit_edge, label %.lr.ph103

.lr.ph103:                                        ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !1312
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !129
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.i

.loopexit86:                                      ; preds = %bb.r, %bb.i
  %.143.lcssa = phi i64 [ %.042100, %bb.i ], [ %i.cv, %bb.r ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %._crit_edge, label %bb.i, !llvm.loop !2554

bb.i:                                             ; preds = %.lr.ph103, %.loopexit86
  %.pn101 = phi ptr [ %i.cd, %.lr.ph103 ], [ %.041102, %.loopexit86 ] ; 2 uses
  %.042100 = phi i64 [ %i.ca, %.lr.ph103 ], [ %.143.lcssa, %.loopexit86 ] ; 2 uses
  %.041102 = getelementptr inbounds i8, ptr %.pn101, i64 -64 ; 4 uses
  %i.cf = load <16 x i8>, ptr %.041102, align 16, !tbaa !92
  %i.cg = icmp slt <16 x i8> %i.cf, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %i.ci = and i16 %i.ch, 4095                     ; 2 uses
  %.sroa.066.0.extract.trunc = zext nneg i16 %i.ci to i32 ; 2 uses
  %cond = icmp eq i16 %i.ci, 0
  br i1 %cond, label %.loopexit86, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.cj = icmp ne ptr %.041102, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds i8, ptr %.pn101, i64 -48 ; 2 uses
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !252
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.092 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.063.091 = phi i32 [ %.sroa.066.0.extract.trunc, %.lr.ph ], [ %.sroa.063.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cm = and i32 %.sroa.063.091, 1
  %.not.i53 = icmp eq i32 %i.cm, 0
  br i1 %.not.i53, label %bb.k, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !97

bb.k:                                             ; preds = %bb.j
  %i.cn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.063.091, i1 true) ; 2 uses
  %i.co = add i32 %.sroa.8.092, %i.cn
  %i.cp = add nuw nsw i32 %i.cn, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.j, %bb.k
  %.pn84 = phi i32 [ %i.cp, %bb.k ], [ 1, %bb.j ]
  %.sroa.8.1.in = phi i32 [ %i.co, %bb.k ], [ %.sroa.8.092, %bb.j ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.063.1 = lshr i32 %.sroa.063.091, %.pn84  ; 2 uses
  %i.cq = zext i32 %.sroa.8.1.in to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [40 x i8], ptr %i.cl, i64 %i.ct
  call void @llvm.prefetch.p0(ptr %i.cu, i32 0, i32 3, i32 1)
  %.not81 = icmp eq i32 %.sroa.063.1, 0
  br i1 %.not81, label %.lr.ph97, label %bb.j

.lr.ph97:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.r
  %.14396 = phi i64 [ %i.cv, %bb.r ], [ %.042100, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.868.095 = phi i32 [ %.sroa.868.1, %bb.r ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.066.094 = phi i32 [ %.sroa.066.1, %bb.r ], [ %.sroa.066.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cv = add i64 %.14396, -1                     ; 2 uses
  %i.cw = and i32 %.sroa.066.094, 1
  %.not.i55 = icmp eq i32 %i.cw, 0
  br i1 %.not.i55, label %bb.l, label %bb.m, !prof !97

bb.l:                                             ; preds = %.lr.ph97
  %i.cx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.066.094, i1 true) ; 2 uses
  %i.cy = add i32 %.sroa.868.095, %i.cx
  %i.cz = add nuw nsw i32 %i.cx, 1
  br label %bb.m
end_hunk_23
begin_hunk_24_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE11reserveImplEm:bb.a
  %i.aa = and i64 %i.b, 255                       ; 4 uses
  br i1 %.not, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !230
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 14
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !92
  %i.ag = and i8 %i.af, 15
  %i.ah = zext nneg i8 %i.ag to i64               ; 2 uses
  %i.ai = shl i64 %i.ah, %i.aa
  %i.aj = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.aj, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = add i64 %.sroa.speculated, -1
  %i.al = udiv i64 %i.ak, 12
  %i.am = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.al, i1 true)
  %i.an = sub nuw nsw i64 64, %i.am               ; 2 uses
  %i.ao = shl i64 12, %i.an
  %i.ap = icmp ugt i64 %i.ao, 72057594037927935
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aq = shl nuw nsw i64 1, %i.an
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.i

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.i: ; preds = %bb.h, %bb.k
  %.pn21.i.i = phi i64 [ %i.aq, %bb.k ], [ 1, %bb.h ] ; 2 uses
  %.0.pn.i.i = phi i64 [ 12, %bb.k ], [ %.sroa.speculated, %bb.h ] ; 2 uses
  %i.ar = mul i64 %.0.pn.i.i, %.pn21.i.i
  %.not.i = icmp eq i64 %i.ai, %i.ar
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE5resetEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.i
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c, i64 noundef %i.ab, i64 noundef %i.ah, i64 noundef %.pn21.i.i, i64 noundef %.0.pn.i.i)
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE5resetEv.exit

bb.m:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !230
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 14
  %i.av = load i8, ptr %i.au, align 1, !tbaa !92
  %i.aw = and i8 %i.av, 15
  %i.ax = zext nneg i8 %i.aw to i64               ; 2 uses
  %i.ay = shl i64 %i.ax, %i.aa                    ; 4 uses
  %.not10 = icmp ugt i64 %.sroa.speculated, %i.ay
  br i1 %.not10, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE5resetEv.exit

bb.n:                                             ; preds = %bb.m
  %i.az = shl nuw i64 1, %i.aa
  %i.ba = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.ba, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bb = add i64 %i.ay, 7
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add i64 %i.bc, %i.ay
  %i.be = icmp ugt i64 %.sroa.speculated, %i.bd
  br i1 %i.be, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.i11, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.bf, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.i11, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.inv.i.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i.i = select i1 %.inv.i.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.i11

bb.r:                                             ; preds = %bb.n
  %i.bg = add i64 %.sroa.speculated, -1
  %i.bh = udiv i64 %i.bg, 12
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 true)
  %i.bj = sub nuw nsw i64 64, %i.bi               ; 2 uses
  %i.bk = shl i64 12, %i.bj
  %i.bl = icmp ugt i64 %i.bk, 72057594037927935
  br i1 %i.bl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bm = shl nuw nsw i64 1, %i.bj
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.i11

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.i11: ; preds = %bb.t, %bb.q, %bb.p, %bb.o
  %.pn21.i.i12 = phi i64 [ %i.bm, %bb.t ], [ 1, %bb.q ], [ 1, %bb.p ], [ 1, %bb.o ] ; 2 uses
  %.0.pn.i.i13 = phi i64 [ 12, %bb.t ], [ %spec.select.i.i, %bb.q ], [ 2, %bb.p ], [ %.sroa.speculated, %bb.o ] ; 2 uses
  %i.bn = mul i64 %.0.pn.i.i13, %.pn21.i.i12
  %.not.i14 = icmp eq i64 %i.ay, %i.bn
  br i1 %.not.i14, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE5resetEv.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.i11
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c, i64 noundef %i.az, i64 noundef %i.ax, i64 noundef %.pn21.i.i12, i64 noundef %.0.pn.i.i13)
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE5resetEv.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE5resetEv.exit: ; preds = %bb.u, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.i11, %bb.l, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE25computeChunkCountAndScaleEmbb.exit.i, %bb.e, %bb.b, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 5 uses
  %i.k = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.1233", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.314", align 1   ; 5 uses
  %i.l = alloca ptr, align 8                      ; 7 uses
  %8 = alloca %"class.folly::detail::ScopeGuardImpl.1235", align 8 ; 9 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !129
  store i64 %2, ptr %i.b, align 8, !tbaa !129
  store i64 %4, ptr %i.c, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !230  ; 4 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !2538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.o = mul i64 %3, %2
  store i64 %i.o, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.p = icmp eq i64 %2, 1                        ; 2 uses
  %i.q = shl i64 %3, 4
  %i.r = add i64 %i.q, 16
  %i.s = shl i64 %2, 8
  %.0.i = select i1 %i.p, i64 %i.r, i64 %i.s
  store i64 %.0.i, ptr %i.f, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.t = mul i64 %5, %4
  store i64 %i.t, ptr %i.g, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  %i.u = icmp eq i64 %4, 1                        ; 2 uses
  %i.v = shl i64 %5, 4
  %i.w = add i64 %i.v, 16
  %i.x = shl i64 %4, 8
  %.0.i69 = select i1 %i.u, i64 %i.w, i64 %i.x    ; 2 uses
  store i64 %.0.i69, ptr %i.h, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  %i.y = load ptr, ptr %0, align 8, !tbaa !284    ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(264) %i.y, i64 noundef %.0.i69, i64 0), !inline_history !2570 ; 16 uses
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !1130
  store i8 0, ptr %i.j, align 1, !tbaa !172
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

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
  %i.ae = getelementptr inbounds nuw [256 x i8], ptr %i.ac, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ae, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw [256 x i8], ptr %i.ac, i64 %.08.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw [256 x i8], ptr %i.ac, i64 %.08.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw [256 x i8], ptr %i.ac, i64 %.08.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw [256 x i8], ptr %i.ac, i64 %.08.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw [256 x i8], ptr %i.ac, i64 %.08.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw [256 x i8], ptr %i.ac, i64 %.08.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw [256 x i8], ptr %i.ac, i64 %.08.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.as, i8 0, i64 16, i1 false)
  %i.at = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !286

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod149 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod149)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.au = getelementptr inbounds nuw [256 x i8], ptr %i.ac, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.au, i8 0, i64 16, i1 false)
  %i.av = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2571

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.ax = trunc i64 %5 to i8
  store i8 %i.ax, ptr %i.aw, align 2, !tbaa !289
  store ptr %i.ac, ptr %i.m, align 8, !tbaa !230
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.az = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !262
  %i.bb = and i64 %i.ba, -256
  %i.bc = select i1 %.not.i, i64 4294967295, i64 %i.az
  %i.bd = or i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.ay, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #31
  store i8 0, ptr %i.k, align 1, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1316, !alias.scope !2572
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.k, ptr %i.be, align 8, !tbaa !203
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.e, ptr %.sroa.485.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.d, ptr %.sroa.586.0..sroa_idx, align 8, !tbaa !2575
  %.sroa.687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.f, ptr %.sroa.687.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1323
  %.sroa.888.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.h, ptr %.sroa.888.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !2577
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.j, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !203
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.g, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1112
  %i.bf = icmp eq i64 %1, 0
  br i1 %i.bf, label %bb.y, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions6detail6MapKeyEvNS7_12MapKeyHasherEvNS5_6memory12StlAllocatorIS8_EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.u, %i.p
  br i1 %or.cond, label %.lr.ph110, label %bb.h

.lr.ph110:                                        ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bh = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph110, %bb.g
  %.0108 = phi i64 [ 0, %.lr.ph110 ], [ %i.br, %bb.g ] ; 3 uses
  %.042107 = phi i64 [ 0, %.lr.ph110 ], [ %.1, %bb.g ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0108
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !92  ; 2 uses
  %.not90 = icmp eq i8 %i.bk, 0
  br i1 %.not90, label %bb.g, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.042107 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !92
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIN8facebook5velox9functions6detail6MapKeyEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.13) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !92
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.042107
  call void @llvm.assume(i1 %i.bh)
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %.0108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !2579
  %i.bq = add nuw i64 %.042107, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1 = phi i64 [ %i.bq, %bb.f ], [ %.042107, %bb.c ] ; 4 uses
  %i.br = add i64 %.0108, 1
  %i.bs = icmp ult i64 %.1, %1
  br i1 %i.bs, label %bb.c, label %._crit_edge111, !llvm.loop !2580

._crit_edge111:                                   ; preds = %bb.g
  %i.bt = add i64 %.1, 255
  %i.bu = getelementptr [16 x i8], ptr %i.ac, i64 %.1
  %i.bv = icmp ne ptr %i.ac, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bv)
  %i.bw = and i64 %i.bt, 255                      ; 2 uses
  %i.bx = icmp samesign ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.bx)
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = or i64 %i.bw, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !129
  br label %bb.y

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #31
  %.not = icmp ugt i64 %4, 256
  br i1 %.not, label %bb.i, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.i:                                             ; preds = %bb.h
  %i.cb = load ptr, ptr %0, align 8, !tbaa !284   ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef ptr %i.ce(ptr noundef nonnull align 8 dereferenceable(264) %i.cb, i64 noundef %4, i64 0)
          to label %._ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit_crit_edge unwind label %bb.j, !inline_history !1330

._ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit_crit_edge: ; preds = %bb.i
  %.pre = load i64, ptr %i.c, align 8, !tbaa !129
  br label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit

bb.j:                                             ; preds = %bb.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit: ; preds = %._ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit_crit_edge, %bb.h
  %i.ch = phi i64 [ %4, %bb.h ], [ %.pre, %._ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit_crit_edge ]
  %storemerge = phi ptr [ %7, %bb.h ], [ %i.cf, %._ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit_crit_edge ] ; 2 uses
  store ptr %storemerge, ptr %i.l, align 8, !tbaa !1130
  call void @llvm.memset.p0.i64(ptr align 1 %storemerge, i8 0, i64 %i.ch, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  store i8 0, ptr %8, align 8, !tbaa !1316, !alias.scope !2581
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.c, ptr %i.ci, align 8, !tbaa !1112
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %7, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !2368
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %0, ptr %.sroa.580.0..sroa_idx, align 8, !tbaa !2577
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.l, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !1323
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not57102 = icmp eq i64 %i.cj, 0
  br i1 %.not57102, label %._crit_edge, label %.lr.ph106.preheader

.lr.ph106.preheader:                              ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorIhEEE8allocateERS4_m.exit
  %i.ck = load ptr, ptr %i.d, align 8, !tbaa !2538
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !129
  %i.cm = getelementptr inbounds nuw [256 x i8], ptr %i.ck, i64 %i.cl
  br label %.lr.ph106

.loopexit:                                        ; preds = %bb.s, %.lr.ph106
  %.155.lcssa = phi i64 [ %.054103, %.lr.ph106 ], [ %i.ct, %bb.s ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph106, !llvm.loop !2584

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %.loopexit
  %.pn59104 = phi ptr [ %.053105, %.loopexit ], [ %i.cm, %.lr.ph106.preheader ] ; 2 uses
  %.054103 = phi i64 [ %.155.lcssa, %.loopexit ], [ %i.cj, %.lr.ph106.preheader ] ; 2 uses
  %.053105 = getelementptr inbounds i8, ptr %.pn59104, i64 -256 ; 4 uses
  %i.cn = load <16 x i8>, ptr %.053105, align 16, !tbaa !92
  %i.co = icmp slt <16 x i8> %i.cn, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16
  %i.cq = and i16 %i.cp, 16383                    ; 2 uses
  %.not8997 = icmp eq i16 %i.cq, 0
  br i1 %.not8997, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph106
  %.sroa.076.0.extract.trunc = zext nneg i16 %i.cq to i32
  %i.cr = icmp ne ptr %.053105, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds i8, ptr %.pn59104, i64 -240
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.s
  %.155100 = phi i64 [ %.054103, %.lr.ph ], [ %i.ct, %bb.s ]
  %.sroa.8.099 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.s ] ; 2 uses
  %.sroa.076.098 = phi i32 [ %.sroa.076.0.extract.trunc, %.lr.ph ], [ %.sroa.076.1, %bb.s ] ; 3 uses
  %i.ct = add i64 %.155100, -1                    ; 2 uses
  %i.cu = and i32 %.sroa.076.098, 1
  %.not.i70 = icmp eq i32 %i.cu, 0
  br i1 %.not.i70, label %bb.l, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !97
end_hunk_24
