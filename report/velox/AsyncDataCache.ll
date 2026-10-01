Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/AsyncDataCache?download=true
inline.NumInlined: 5544
inline.NumDeleted: 2717
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN8facebook5velox5cache10CacheShard17removeEntryLockedEPNS1_19AsyncDataCacheEntryE:bb.a
  unreachable

.preheader:                                       ; preds = %bb.e, %bb.j
  %.022.i28143 = phi i64 [ %i.by, %bb.j ], [ %i.ab, %bb.e ]
  %.024.i27142 = phi i64 [ %i.bz, %bb.j ], [ %i.u, %bb.e ] ; 2 uses
  %i.bg = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i27142, i64 range(i64 0, 256) %i.aa)
  %i.bh = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %i.bg ; 3 uses
  %i.bi = load <16 x i8>, ptr %i.bh, align 16     ; 2 uses
  %i.bj = icmp eq <16 x i8> %i.bi, %i.z
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %i.bl = and i16 %i.bk, 4095
  %i.bm = zext nneg i16 %i.bl to i32
  %i.bn = icmp ne ptr %i.bh, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bp = extractelement <16 x i8> %i.bi, i64 15
  br label %.critedge.i30

.critedge.i30:                                    ; preds = %bb.h, %.preheader
  %.sroa.079.0 = phi i32 [ %i.bm, %.preheader ], [ %i.bs, %bb.h ] ; 4 uses
  %.not132 = icmp eq i32 %.sroa.079.0, 0
  br i1 %.not132, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge.i30
  %i.bq = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.079.0, i1 true)
  %i.br = add nsw i32 %.sroa.079.0, -1
  %i.bs = and i32 %i.br, %.sroa.079.0
  %i.bt = zext nneg i32 %i.bq to i64              ; 3 uses
  tail call void @llvm.assume(i1 %i.bn)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !180
  %i.bw = icmp eq i32 %i.au, %i.bv
  br i1 %i.bw, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.loopexit, label %.critedge.i30, !prof !131, !llvm.loop !4

bb.i:                                             ; preds = %.critedge.i30
  %i.bx = icmp eq i8 %i.bp, 0
  br i1 %i.bx, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %bb.j, !prof !131

bb.j:                                             ; preds = %bb.i
  %i.by = add i64 %.022.i28143, -1                ; 2 uses
  %i.bz = add i64 %i.w, %.024.i27142
  %.not.i29 = icmp eq i64 %i.by, 0
  br i1 %.not.i29, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %.preheader, !llvm.loop !5

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.loopexit: ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bt
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit: ; preds = %bb.j, %bb.i, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.loopexit
  %.sroa.582.3 = phi i64 [ %i.bt, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.loopexit ], [ 0, %bb.i ], [ 0, %bb.j ]
  %.sroa.081.3 = phi ptr [ %i.ca, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.loopexit ], [ null, %bb.i ], [ null, %bb.j ]
  tail call void @_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache15RawFileCacheKeyEPNS5_19AsyncDataCacheEntryENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S8_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %.sroa.081.3, i64 %.sroa.582.3, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE)
  %i.cb = load ptr, ptr %1, align 8, !tbaa !57    ; 2 uses
  %.not.i50 = icmp eq ptr %i.cb, null
  br i1 %.not.i50, label %_ZN8facebook5velox13StringIdLease5clearEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !58
  tail call void @_ZN8facebook5velox11StringIdMap7releaseEm(ptr noundef nonnull align 8 dereferenceable(104) %i.cb, i64 noundef %i.cc)
  store ptr null, ptr %1, align 8, !tbaa !57
  store i64 -1, ptr %i.a, align 8, !tbaa !58
  br label %_ZN8facebook5velox13StringIdLease5clearEv.exit

_ZN8facebook5velox13StringIdLease5clearEv.exit:   ; preds = %bb.k, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  store atomic i8 0, ptr %i.ce seq_cst, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !175, !range !203, !noundef !204
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN8facebook5velox13StringIdLease5clearEv.exit
  store i8 0, ptr %i.cf, align 8, !tbaa !175
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !145
  %i.ck = sext i32 %i.cj to i64
  %i.cl = add nsw i64 %i.ck, 4095
  %i.cm = lshr i64 %i.cl, 12
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !87
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !127
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 104
  %i.cr = atomicrmw sub ptr %i.cq, i64 %i.cm seq_cst, align 8 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN8facebook5velox13StringIdLease5clearEv.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !177 ; 2 uses
  %.not = icmp eq i32 %i.cu, 0
  br i1 %.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = sext i32 %i.cu to i64
  %i.cw = load ptr, ptr %0, align 8, !tbaa !127
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 96
  %i.cy = atomicrmw sub ptr %i.cx, i64 %i.cv seq_cst, align 8 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.da = tail call noundef i64 @llvm.x86.rdtsc() ; 2 uses
  %i.db = load ptr, ptr %0, align 8, !tbaa !127   ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !129
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = invoke noundef ptr %i.de(ptr noundef nonnull align 8 dereferenceable(372) %i.db)
          to label %bb.o unwind label %_ZN8facebook5velox10ClockTimerD2Ev.exit53 ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !129
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = invoke noundef i64 %i.di(ptr noundef nonnull align 8 dereferenceable(888) %i.df, ptr noundef nonnull align 8 dereferenceable(36) %i.cs)
          to label %_ZN8facebook5velox10ClockTimerD2Ev.exit unwind label %_ZN8facebook5velox10ClockTimerD2Ev.exit53 ; 0 uses

_ZN8facebook5velox10ClockTimerD2Ev.exit:          ; preds = %bb.o
  %i.dk = tail call noundef i64 @llvm.x86.rdtsc()
  %i.dl = sub i64 %i.dk, %i.da
  %i.dm = atomicrmw add ptr %i.cz, i64 %i.dl seq_cst, align 8 ; 0 uses
  br label %bb.p

_ZN8facebook5velox10ClockTimerD2Ev.exit53:        ; preds = %bb.o, %bb.n
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = tail call noundef i64 @llvm.x86.rdtsc()
  %i.dp = sub i64 %i.do, %i.da
  %i.dq = atomicrmw add ptr %i.cz, i64 %i.dp seq_cst, align 8 ; 0 uses
  resume { ptr, i32 } %i.dn

bb.p:                                             ; preds = %_ZN8facebook5velox10ClockTimerD2Ev.exit, %bb.m
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 0, ptr %i.ds, align 8, !tbaa !89
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !130
  store i8 0, ptr %i.dt, align 1, !tbaa !90
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  tail call void @__clang_call_terminate(ptr %i.dv) #45
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit: ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 0, ptr %i.dw, align 8, !tbaa !145
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN8facebook5velox5cache10CacheShard5evictEmbmRNS0_6memory10AllocationE(ptr noundef nonnull align 8 dereferenceable(312) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.129", align 8   ; 13 uses
  %6 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !143  ; 3 uses
  %.not109 = icmp eq ptr %i.c, null               ; 2 uses
  br i1 %.not109, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load atomic i32, ptr %i.d seq_cst, align 4
  %i.f = icmp ne i32 %i.e, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  %i.h = tail call noundef i64 @llvm.x86.rdtsc()
  %i.i = lshr i64 %i.h, 21
  %i.j = trunc i64 %i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #22 ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.l) #46
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !228  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !228  ; 3 uses
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = icmp ne ptr %i.p, null
  %.neg.i.i = sext i1 %i.w to i64
  %i.x = add nsw i64 %i.v, %.neg.i.i
  %i.y = shl nsw i64 %i.x, 6                      ; 2 uses
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !226
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !227
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %i.ag = add nsw i64 %i.y, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !265 ; 2 uses
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !226 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3                 ; 2 uses
  %i.ao = add nsw i64 %i.ag, %i.an                ; 2 uses
  %.not117 = icmp eq i64 %i.ao, 0
  br i1 %.not117, label %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i.thread, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !266
  %i.as = zext i32 %i.ar to i64
  %i.at = urem i64 %i.as, %i.ao                   ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !227, !noalias !743
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.al, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3
  %i.az = add nsw i64 %i.ay, %i.at                ; 5 uses
  %i.ba = icmp sgt i64 %i.az, -1
  br i1 %i.ba, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bb = icmp samesign ult i64 %i.az, 64
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.at
  br label %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit

bb.i:                                             ; preds = %bb.g
  %i.bd = lshr i64 %i.az, 6
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.be = ashr i64 %i.az, 6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bf = phi i64 [ %i.bd, %bb.i ], [ %i.be, %bb.j ] ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bf ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !182, !noalias !744 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 512
  %i.bj = shl nsw i64 %i.bf, 6
  %i.bk = sub nsw i64 %i.az, %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bk
  br label %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit

_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit: ; preds = %bb.h, %bb.k
  %.sroa.15.2 = phi ptr [ %i.ai, %bb.h ], [ %i.bi, %bb.k ]
  %.sroa.20.2 = phi ptr [ %i.r, %bb.h ], [ %i.bg, %bb.k ]
  %storemerge.i.i = phi ptr [ %i.bc, %bb.h ], [ %i.bl, %bb.k ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %7 = add nsw i64 %i.af, %i.an
  %8 = add i64 %7, %i.y
  br label %bb.l

bb.l:                                             ; preds = %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit, %bb.bb
  %indvars.iv = phi i64 [ 1, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %indvars.iv.next, %bb.bb ] ; 2 uses
  %.060198 = phi i64 [ %i.at, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.1, %bb.bb ]
  %.061197 = phi i32 [ 0, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.2, %bb.bb ] ; 2 uses
  %.078196 = phi i32 [ 0, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.280, %bb.bb ] ; 6 uses
  %.083195 = phi i64 [ 0, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.386, %bb.bb ] ; 5 uses
  %.089194 = phi i64 [ 0, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.392, %bb.bb ] ; 5 uses
  %.095193 = phi i32 [ %i.j, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.297, %bb.bb ] ; 2 uses
  %.0100192 = phi i64 [ %3, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.4104, %bb.bb ] ; 6 uses
  %.sroa.20.0191 = phi ptr [ %.sroa.20.2, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.sroa.20.1, %bb.bb ] ; 2 uses
  %.sroa.15.0190 = phi ptr [ %.sroa.15.2, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.sroa.15.1, %bb.bb ] ; 2 uses
  %.sroa.0160.0189 = phi ptr [ %storemerge.i.i, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.sroa.0160.1, %bb.bb ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0160.0189, i64 8 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %.sroa.15.0190
  br i1 %i.cb, label %bb.m, label %_ZNSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_EppEv.exit

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.20.0191, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !182 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 512
  br label %_ZNSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_EppEv.exit

_ZNSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_EppEv.exit: ; preds = %bb.l, %bb.m
  %.sroa.0160.2 = phi ptr [ %i.cd, %bb.m ], [ %i.ca, %bb.l ] ; 2 uses
  %.sroa.15.3 = phi ptr [ %i.ce, %bb.m ], [ %.sroa.15.0190, %bb.l ]
  %.sroa.20.3 = phi ptr [ %i.cc, %bb.m ], [ %.sroa.20.0191, %bb.l ]
  %i.cf = load ptr, ptr %i.m, align 8, !tbaa !226, !noalias !745 ; 2 uses
  %i.cg = icmp eq ptr %.sroa.0160.2, %i.cf
  br i1 %i.cg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_EppEv.exit
  %i.ch = load ptr, ptr %i.n, align 8, !tbaa !226, !noalias !746
  %i.ci = load ptr, ptr %i.ah, align 8, !tbaa !265, !noalias !746
  %i.cj = load ptr, ptr %i.q, align 8, !tbaa !228, !noalias !746
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_EppEv.exit
  %i.ck = add i64 %.060198, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.0160.1 = phi ptr [ %i.ch, %bb.n ], [ %.sroa.0160.2, %bb.o ] ; 5 uses
  %.sroa.15.1 = phi ptr [ %i.ci, %bb.n ], [ %.sroa.15.3, %bb.o ]
  %.sroa.20.1 = phi ptr [ %i.cj, %bb.n ], [ %.sroa.20.3, %bb.o ]
  %.1 = phi i64 [ 0, %bb.n ], [ %i.ck, %bb.o ]    ; 2 uses
  %i.cl = load i64, ptr %i.bm, align 8, !tbaa !747
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.bm, align 8, !tbaa !747
  %i.cn = load i32, ptr %i.aq, align 8, !tbaa !266
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.aq, align 8, !tbaa !266
  %i.cp = load ptr, ptr %.sroa.0160.1, align 8, !tbaa !183 ; 13 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.bb, label %bb.q, !llvm.loop !742

bb.q:                                             ; preds = %bb.p
  %i.cr = add nsw i32 %.061197, 1                 ; 2 uses
  %i.cs = load i32, ptr %i.bn, align 8, !tbaa !267
  %i.ct = icmp eq i32 %i.cs, 2147483647
  br i1 %i.ct, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = load i32, ptr %i.bo, align 4, !tbaa !185
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load ptr, ptr %i.o, align 8, !tbaa !228 ; 2 uses
  %i.cx = load ptr, ptr %i.q, align 8, !tbaa !228
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 3
  %i.dc = icmp ne ptr %i.cw, null
  %.neg.i.i125 = sext i1 %i.dc to i64
  %i.dd = add nsw i64 %i.db, %.neg.i.i125
  %i.de = shl nsw i64 %i.dd, 6
  %i.df = load ptr, ptr %i.aa, align 8, !tbaa !227
  %i.dg = ptrtoint ptr %i.cf to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = ashr exact i64 %i.di, 3
  %i.dk = add nsw i64 %i.de, %i.dj
  %i.dl = load ptr, ptr %i.ah, align 8, !tbaa !265
  %i.dm = load ptr, ptr %i.n, align 8, !tbaa !226
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 3
  %i.dr = add nsw i64 %i.dk, %i.dq                ; 2 uses
  %i.ds = lshr i64 %i.dr, 2
  %i.dt = icmp samesign ult i64 %i.ds, %i.cv
  br i1 %i.dt, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.du = sext i32 %i.cr to i64
  %i.dv = lshr i64 %i.dr, 3
  %i.dw = icmp ult i64 %i.dv, %i.du
  br i1 %i.dw, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.dx = call noundef i64 @llvm.x86.rdtsc()
  invoke void @_ZN8facebook5velox5cache10CacheShard24calibrateThresholdLockedEv(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dy = lshr i64 %i.dx, 21
  %i.dz = trunc i64 %i.dy to i32
  store i32 0, ptr %i.bo, align 4, !tbaa !185
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.w:                                             ; preds = %bb.u, %bb.s
  %.196 = phi i32 [ %i.dz, %bb.u ], [ %.095193, %bb.s ] ; 5 uses
  %.162 = phi i32 [ 0, %bb.u ], [ %i.cr, %bb.s ]  ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cp, i64 116
  %i.ec = load atomic i32, ptr %i.eb seq_cst, align 4
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.x, label %bb.bb

bb.x:                                             ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !58
  %.not176 = icmp eq i64 %i.ef, -1
  %or.cond = or i1 %2, %.not176
  br i1 %or.cond, label %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cp, i64 120
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !91 ; 2 uses
  %.not.i.i127 = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i127, label %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit.thread, label %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit

_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit: ; preds = %bb.y
  %i.ei = sub nsw i32 %.196, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cp, i64 124
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !92
  %i.el = add nsw i32 %i.ek, 1
  %i.em = sdiv i32 %i.ei, %i.el                   ; 2 uses
  %i.en = load i32, ptr %i.bn, align 8, !tbaa !267
  %.not111 = icmp slt i32 %i.em, %i.en
  br i1 %.not111, label %bb.bb, label %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit.thread

_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit.thread: ; preds = %bb.y, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit, %bb.x
  %.0 = phi i32 [ 0, %bb.x ], [ %i.em, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit ], [ 2147483647, %bb.y ] ; 2 uses
  br i1 %i.g, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit.thread
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cp, i64 168
  %i.ep = load atomic i8, ptr %i.eo seq_cst, align 8, !range !203, !noundef !204
  %i.eq = trunc nuw i8 %i.ep to i1
  %.not2 = xor i1 %i.eq, true
  %or.cond4 = or i1 %2, %.not2
  br i1 %or.cond4, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.er = add nsw i32 %.078196, 1
  br label %bb.bb, !llvm.loop !742

bb.ab:                                            ; preds = %bb.ax, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ac:                                            ; preds = %bb.z, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit.thread
  %i.et = getelementptr inbounds nuw i8, ptr %i.cp, i64 168
  %i.eu = load atomic i8, ptr %i.et seq_cst, align 8, !range !203, !noundef !204
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ew = load i64, ptr %i.bp, align 8, !tbaa !748
  %i.ex = add i64 %i.ew, 1
  store i64 %i.ex, ptr %i.bp, align 8, !tbaa !748
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cp, i64 32 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !177
  %i.fb = sext i32 %i.fa to i64                   ; 2 uses
  %i.fc = shl nsw i64 %i.fb, 12
  %i.fd = add i64 %i.fc, %.083195                 ; 3 uses
  %.not112 = icmp eq i64 %.0100192, 0
  br i1 %.not112, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fe = call i64 @llvm.usub.sat.i64(i64 %.0100192, i64 %i.fb)
  invoke void @_ZN8facebook5velox6memory10Allocation10appendMoveERS2_(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %i.ey)
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.ff = invoke noundef zeroext i1 @_ZNK8facebook5velox6memory10Allocation5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %i.ey)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.ff, label %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE9push_backEOS3_.exit, label %bb.ai, !prof !131
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox5cache10CacheShard5evictEmbmRNS0_6memory10AllocationE:bb.a

bb.an:                                            ; preds = %bb.am
  call void @_ZN8facebook5velox6memory10AllocationC2EOS2_(ptr noundef nonnull align 8 dereferenceable(36) %i.fi, ptr noundef nonnull align 8 dereferenceable(36) %i.ey) #22
  %i.fk = load ptr, ptr %i.bq, align 8, !tbaa !270
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  store ptr %i.fl, ptr %i.bq, align 8, !tbaa !270
  br label %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE9push_backEOS3_.exit

bb.ao:                                            ; preds = %bb.am
  invoke void @_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.fi, ptr noundef nonnull align 8 dereferenceable(36) %i.ey)
          to label %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE9push_backEOS3_.exit unwind label %bb.ab

_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.an, %bb.ao, %bb.ah
  %.1101 = phi i64 [ %i.fe, %bb.ah ], [ 0, %bb.ao ], [ 0, %bb.an ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cp, i64 72 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cp, i64 80 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !89
  %i.fp = add i64 %i.fo, %.089194                 ; 3 uses
  store i64 0, ptr %i.fn, align 8, !tbaa !89
  %i.fq = load ptr, ptr %i.fm, align 8, !tbaa !130
  store i8 0, ptr %i.fq, align 1, !tbaa !90
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEv(ptr noundef nonnull align 8 dereferenceable(32) %i.fm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit unwind label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE9push_backEOS3_.exit
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #45
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit: ; preds = %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE9push_backEOS3_.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cp, i64 112
  store i32 0, ptr %i.ft, align 8, !tbaa !145
  invoke void @_ZN8facebook5velox5cache10CacheShard17removeEntryLockedEPNS1_19AsyncDataCacheEntryE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull %i.cp)
          to label %bb.aq unwind label %bb.ab

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit
  %i.fu = trunc i64 %.1 to i32                    ; 2 uses
  %i.fv = load ptr, ptr %i.bt, align 8, !tbaa !225 ; 4 uses
  %i.fw = load ptr, ptr %i.bu, align 8, !tbaa !230
  %.not.i.i130 = icmp eq ptr %i.fv, %i.fw
  br i1 %.not.i.i130, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !180
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store ptr %i.fx, ptr %i.bt, align 8, !tbaa !225
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.as:                                            ; preds = %bb.aq
  %i.fy = load ptr, ptr %i.bs, align 8, !tbaa !229 ; 4 uses
  %i.fz = ptrtoint ptr %i.fv to i64
  %i.ga = ptrtoint ptr %i.fy to i64               ; 2 uses
  %i.gb = sub i64 %i.fz, %i.ga                    ; 5 uses
  %i.gc = icmp eq i64 %i.gb, 9223372036854775804
  br i1 %i.gc, label %bb.at, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.102) #46
          to label %.noexc131 unwind label %.loopexit.split-lp178

.noexc131:                                        ; preds = %bb.at
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.as
  %i.gd = ashr exact i64 %i.gb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gd, i64 1)
  %i.ge = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gd ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.gd
  %i.gg = call i64 @llvm.umin.i64(i64 %i.ge, i64 2305843009213693951)
  %i.gh = select i1 %i.gf, i64 2305843009213693951, i64 %i.gg ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.gh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.gi = shl nuw nsw i64 %i.gh, 2
  %i.gj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gi) #47
          to label %.noexc132 unwind label %.loopexit177 ; 4 uses

.noexc132:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 %i.gb ; 2 uses
  store i32 %i.fu, ptr %i.gk, align 4, !tbaa !180
  %i.gl = icmp sgt i64 %i.gb, 0
  br i1 %i.gl, label %bb.au, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.au:                                            ; preds = %.noexc132
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gj, ptr align 4 %i.fy, i64 %i.gb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.au, %.noexc132
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.gn = load ptr, ptr %i.bu, align 8, !tbaa !230
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = sub i64 %i.go, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.gp) #44
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.av, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.gj, ptr %i.bs, align 8, !tbaa !229
  store ptr %i.gm, ptr %i.bt, align 8, !tbaa !225
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gh
  store ptr %i.gq, ptr %i.bu, align 8, !tbaa !230
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.ar
  %i.gr = load ptr, ptr %i.bw, align 8, !tbaa !184 ; 4 uses
  %i.gs = load ptr, ptr %i.bx, align 8, !tbaa !272
  %.not.i.i.i = icmp eq ptr %i.gr, %i.gs
  br i1 %.not.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.gt = load i64, ptr %.sroa.0160.1, align 8, !tbaa !183
  store i64 %i.gt, ptr %i.gr, align 8, !tbaa !183
  store ptr null, ptr %.sroa.0160.1, align 8, !tbaa !183
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 2 uses
  store ptr %i.gu, ptr %i.bw, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.i

bb.ax:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  invoke void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr %i.gr, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0160.1)
          to label %.noexc133 unwind label %bb.ab

.noexc133:                                        ; preds = %bb.ax
  %.pre.i = load ptr, ptr %i.bw, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.i: ; preds = %.noexc133, %bb.aw
  %i.gv = phi ptr [ %i.gu, %bb.aw ], [ %.pre.i, %.noexc133 ] ; 3 uses
  %i.gw = load ptr, ptr %i.bv, align 8, !tbaa !273 ; 2 uses
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = icmp ugt i64 %i.gz, 8184
  br i1 %i.ha, label %bb.ay, label %_ZN8facebook5velox5cache10CacheShard15tryAddFreeEntryEOSt10unique_ptrINS1_19AsyncDataCacheEntryESt14default_deleteIS4_EE.exit

bb.ay:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 4096 ; 3 uses
  %.not.i.i2.i = icmp eq ptr %i.gv, %i.hb
  br i1 %.not.i.i2.i, label %_ZN8facebook5velox5cache10CacheShard15tryAddFreeEntryEOSt10unique_ptrINS1_19AsyncDataCacheEntryESt14default_deleteIS4_EE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ay, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.hd, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i ], [ %i.hb, %bb.ay ] ; 2 uses
  %i.hc = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !183 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox5cache19AsyncDataCacheEntryEEclEPS3_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox5cache19AsyncDataCacheEntryEEclEPS3_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZN8facebook5velox5cache19AsyncDataCacheEntryD1Ev(ptr noundef nonnull align 8 dead_on_return(169) dereferenceable(169) %i.hc) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef 176) #44
  br label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox5cache19AsyncDataCacheEntryEEclEPS3_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hd, %i.gv
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i
  store ptr %i.hb, ptr %i.bw, align 8, !tbaa !184
  br label %_ZN8facebook5velox5cache10CacheShard15tryAddFreeEntryEOSt10unique_ptrINS1_19AsyncDataCacheEntryESt14default_deleteIS4_EE.exit

_ZN8facebook5velox5cache10CacheShard15tryAddFreeEntryEOSt10unique_ptrINS1_19AsyncDataCacheEntryESt14default_deleteIS4_EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.i, %bb.ay, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.i
  %i.he = load i64, ptr %i.by, align 8, !tbaa !749
  %i.hf = add i64 %i.he, 1
  store i64 %i.hf, ptr %i.by, align 8, !tbaa !749
  %i.hg = icmp sgt i32 %.0, 0
  br i1 %i.hg, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZN8facebook5velox5cache10CacheShard15tryAddFreeEntryEOSt10unique_ptrINS1_19AsyncDataCacheEntryESt14default_deleteIS4_EE.exit
  %i.hh = zext nneg i32 %.0 to i64
  %i.hi = load i64, ptr %i.bz, align 8, !tbaa !274
  %i.hj = add i64 %i.hi, %i.hh
  store i64 %i.hj, ptr %i.bz, align 8, !tbaa !274
  br label %bb.ba

.loopexit177:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit179 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp178:                            ; preds = %bb.at
  %lpad.loopexit.split-lp180 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ba:                                            ; preds = %bb.az, %_ZN8facebook5velox5cache10CacheShard15tryAddFreeEntryEOSt10unique_ptrINS1_19AsyncDataCacheEntryESt14default_deleteIS4_EE.exit
  %i.hk = add nsw i64 %i.fp, %i.fd
  %i.hl = icmp ugt i64 %i.hk, %1
  br i1 %i.hl, label %.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.aa, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit, %bb.w, %bb.p
  %.4104 = phi i64 [ %.0100192, %bb.p ], [ %.0100192, %bb.aa ], [ %.1101, %bb.ba ], [ %.0100192, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit ], [ %.0100192, %bb.w ]
  %.297 = phi i32 [ %.095193, %bb.p ], [ %.196, %bb.aa ], [ %.196, %bb.ba ], [ %.196, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit ], [ %.196, %bb.w ]
  %.392 = phi i64 [ %.089194, %bb.p ], [ %.089194, %bb.aa ], [ %i.fp, %bb.ba ], [ %.089194, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit ], [ %.089194, %bb.w ] ; 2 uses
  %.386 = phi i64 [ %.083195, %bb.p ], [ %.083195, %bb.aa ], [ %i.fd, %bb.ba ], [ %.083195, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit ], [ %.083195, %bb.w ] ; 2 uses
  %.280 = phi i32 [ %.078196, %bb.p ], [ %i.er, %bb.aa ], [ %.078196, %bb.ba ], [ %.078196, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit ], [ %.078196, %bb.w ] ; 2 uses
  %.2 = phi i32 [ %.061197, %bb.p ], [ %.162, %bb.aa ], [ %.162, %bb.ba ], [ %.162, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit ], [ %.162, %bb.w ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv, %8
  br i1 %exitcond, label %.thread, label %bb.l

bb.bc:                                            ; preds = %.loopexit177, %.loopexit.split-lp178, %bb.ab, %bb.al, %bb.ak, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ea, %bb.v ], [ %i.fg, %bb.ak ], [ %i.es, %bb.ab ], [ %i.fh, %bb.al ], [ %lpad.loopexit179, %.loopexit177 ], [ %lpad.loopexit.split-lp180, %.loopexit.split-lp178 ]
  %i.hm = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #22 ; 0 uses
  br label %bb.bu

.thread:                                          ; preds = %bb.ba, %bb.bb
  %.078.lcssa = phi i32 [ %.078196, %bb.ba ], [ %.280, %bb.bb ]
  %.493 = phi i64 [ %i.fp, %bb.ba ], [ %.392, %bb.bb ]
  %.487 = phi i64 [ %i.fd, %bb.ba ], [ %.386, %bb.bb ] ; 2 uses
  %i.hn = icmp eq i32 %.078.lcssa, 0
  %i.ho = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #22 ; 0 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.hq = call noundef i64 @llvm.x86.rdtsc()      ; 2 uses
  %i.hr = load ptr, ptr %5, align 8, !tbaa !275   ; 2 uses
  %i.hs = load ptr, ptr %i.bq, align 8, !tbaa !275 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %bb.bd, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc140
  %.pre.i134 = load ptr, ptr %5, align 8, !tbaa !276 ; 3 uses
  %.pre10.i = load ptr, ptr %i.bq, align 8, !tbaa !270 ; 2 uses
  %.not.i.i.i135 = icmp eq ptr %.pre10.i, %.pre.i134
  br i1 %.not.i.i.i135, label %bb.bd, label %.lr.ph.i.i.i.i.i136

.lr.ph.i.i.i.i.i136:                              ; preds = %._crit_edge.i, %.lr.ph.i.i.i.i.i136
  %.05.i.i.i.i.i137 = phi ptr [ %i.hu, %.lr.ph.i.i.i.i.i136 ], [ %.pre.i134, %._crit_edge.i ] ; 2 uses
  call void @_ZN8facebook5velox6memory10AllocationD1Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %.05.i.i.i.i.i137) #22
  %i.hu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i137, i64 40 ; 2 uses
  %.not.i.i.i.i.i138 = icmp eq ptr %i.hu, %.pre10.i
  br i1 %.not.i.i.i.i.i138, label %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i136, !llvm.loop !8

_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i136
  store ptr %.pre.i134, ptr %i.bq, align 8, !tbaa !270
  br label %bb.bd

.lr.ph.i:                                         ; preds = %.thread, %.noexc140
  %.sroa.06.09.i = phi ptr [ %i.ie, %.noexc140 ], [ %i.hr, %.thread ] ; 2 uses
  %i.hv = load ptr, ptr %0, align 8, !tbaa !127   ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !129
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = invoke noundef ptr %i.hy(ptr noundef nonnull align 8 dereferenceable(372) %i.hv)
          to label %.noexc139 unwind label %.loopexit, !inline_history !277 ; 2 uses

.noexc139:                                        ; preds = %.lr.ph.i
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !129
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 40
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = invoke noundef i64 %i.ic(ptr noundef nonnull align 8 dereferenceable(888) %i.hz, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.06.09.i)
          to label %.noexc140 unwind label %.loopexit, !inline_history !277 ; 0 uses

.noexc140:                                        ; preds = %.noexc139
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 40 ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.hs
  br i1 %i.if, label %._crit_edge.i, label %.lr.ph.i

bb.bd:                                            ; preds = %.thread, %._crit_edge.i, %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.ig = load ptr, ptr %0, align 8, !tbaa !127
  %i.ih = add i64 %.487, 4095
  %i.ii = lshr i64 %i.ih, 12
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 96
  %i.ik = atomicrmw sub ptr %i.ij, i64 %i.ii seq_cst, align 8 ; 0 uses
  br i1 %i.hn, label %bb.bs, label %bb.be

bb.be:                                            ; preds = %bb.bd
  br i1 %.not109, label %bb.bf, label %bb.bi, !prof !174

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache10CacheShard5evictEmbmRNS0_6memory10AllocationEE18veloxCheckFailArgs_0) #46
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc139
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook5velox10ClockTimerD2Ev.exit145

.loopexit.split-lp:                               ; preds = %bb.bi, %bb.bn
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook5velox10ClockTimerD2Ev.exit145

bb.bh:                                            ; preds = %bb.bf
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook5velox10ClockTimerD2Ev.exit145

bb.bi:                                            ; preds = %bb.be
  %i.im = invoke noundef zeroext i1 @_ZN8facebook5velox5cache8SsdCache10startWriteEv(ptr noundef nonnull align 8 dereferenceable(133) %i.c)
          to label %bb.bj unwind label %.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.im, label %bb.bk, label %bb.br

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull @.str, i32 noundef 485)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.in = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %bb.bm unwind label %bb.bp     ; 3 uses

bb.bm:                                            ; preds = %bb.bl
  %i.io = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.in, ptr noundef nonnull @.str.31, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.bp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.bm
  %i.ip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.in, ptr noundef nonnull @.str.32, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143 unwind label %bb.bp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.iq = load ptr, ptr %0, align 8, !tbaa !127
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 360
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !180
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.in, i32 noundef %i.is)
          to label %bb.bn unwind label %bb.bp     ; 0 uses

bb.bn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.iu = load ptr, ptr %0, align 8, !tbaa !127   ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 360
  store i32 0, ptr %i.iv, align 4, !tbaa !180
  invoke void @_ZN8facebook5velox5cache14AsyncDataCache9saveToSsdEb(ptr noundef nonnull align 8 dereferenceable(372) %i.iu, i1 noundef zeroext false)
          to label %bb.bs unwind label %.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bk
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.bm, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143, %bb.bl
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #22
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn119 = phi { ptr, i32 } [ %i.ix, %bb.bp ], [ %i.iw, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN8facebook5velox10ClockTimerD2Ev.exit145

bb.br:                                            ; preds = %bb.bj
  %i.iy = load ptr, ptr %0, align 8, !tbaa !127
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 360 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !180
  %i.jb = add nsw i32 %i.ja, 1
  store i32 %i.jb, ptr %i.iz, align 4, !tbaa !180
  br label %bb.bs

_ZN8facebook5velox10ClockTimerD2Ev.exit145:       ; preds = %.loopexit, %.loopexit.split-lp, %bb.bq, %bb.bh
  %.pn121 = phi { ptr, i32 } [ %i.il, %bb.bh ], [ %.pn119, %bb.bq ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.jc = call noundef i64 @llvm.x86.rdtsc()
  %i.jd = sub i64 %i.jc, %i.hq
  %i.je = atomicrmw add ptr %i.hp, i64 %i.jd seq_cst, align 8 ; 0 uses
  br label %bb.bu

_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i.thread: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.jf = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #22 ; 0 uses
  br label %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EED2Ev.exit

bb.bs:                                            ; preds = %bb.bd, %bb.bn, %bb.br
  %i.jg = add nsw i64 %.487, %.493                ; 2 uses
  %i.jh = call noundef i64 @llvm.x86.rdtsc()
  %i.ji = sub i64 %i.jh, %i.hq
  %i.jj = atomicrmw add ptr %i.hp, i64 %i.ji seq_cst, align 8 ; 0 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !276   ; 3 uses
  %.pre200 = load ptr, ptr %i.bq, align 8, !tbaa !270 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre200
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bs, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.jk, %.lr.ph.i.i.i ], [ %.pre, %bb.bs ] ; 2 uses
  call void @_ZN8facebook5velox6memory10AllocationD1Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %.05.i.i.i) #22
  %i.jk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i146 = icmp eq ptr %i.jk, %.pre200
  br i1 %.not.i.i.i146, label %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !276
  br label %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.bs
  %i.jl = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %bb.bs ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.jl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !271
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = ptrtoint ptr %i.jl to i64
  %i.jq = sub i64 %i.jo, %i.jp
  call void @_ZdlPvm(ptr noundef nonnull %i.jl, i64 noundef %i.jq) #44
  br label %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EED2Ev.exit
end_hunk_1
