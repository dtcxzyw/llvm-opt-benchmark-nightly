Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/AsyncDataCache?download=true
inline.NumInlined: 5544
inline.NumDeleted: 2717
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 22
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
  %i.br = add nuw nsw i32 %.sroa.079.0, 4095
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
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !175, !range !204, !noundef !205
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
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !229  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !229  ; 3 uses
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = icmp ne ptr %i.p, null
  %.neg.i.i = sext i1 %i.w to i64
  %i.x = add nsw i64 %i.v, %.neg.i.i
  %i.y = shl nsw i64 %i.x, 6
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !227
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !228
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = add nsw i64 %i.y, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !266 ; 2 uses
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !227 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = add nsw i64 %i.ag, %i.an                ; 3 uses
  %.not117 = icmp eq i64 %i.ao, 0
  br i1 %.not117, label %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i.thread, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !267
  %i.as = zext i32 %i.ar to i64
  %i.at = urem i64 %i.as, %i.ao                   ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !228, !noalias !745
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
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !182, !noalias !746 ; 2 uses
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
  br label %bb.l

bb.l:                                             ; preds = %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit, %bb.ax
  %indvars.iv = phi i64 [ 1, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %indvars.iv.next, %bb.ax ] ; 2 uses
  %.060195 = phi i64 [ %i.at, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.1, %bb.ax ]
  %.061194 = phi i32 [ 0, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.2, %bb.ax ] ; 2 uses
  %.078193 = phi i32 [ 0, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.280, %bb.ax ] ; 6 uses
  %.083192 = phi i64 [ 0, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.386, %bb.ax ] ; 5 uses
  %.089191 = phi i64 [ 0, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.392, %bb.ax ] ; 5 uses
  %.095190 = phi i32 [ %i.j, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.297, %bb.ax ] ; 2 uses
  %.0100189 = phi i64 [ %3, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.4104, %bb.ax ] ; 6 uses
  %.sroa.20.0188 = phi ptr [ %.sroa.20.2, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.sroa.20.1, %bb.ax ] ; 2 uses
  %.sroa.15.0187 = phi ptr [ %.sroa.15.2, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.sroa.15.1, %bb.ax ] ; 2 uses
  %.sroa.0160.0186 = phi ptr [ %storemerge.i.i, %_ZStplRKSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_El.exit ], [ %.sroa.0160.1, %bb.ax ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0160.0186, i64 8 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %.sroa.15.0187
  br i1 %i.cb, label %bb.m, label %_ZNSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_EppEv.exit

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.20.0188, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !182 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 512
  br label %_ZNSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_EppEv.exit

_ZNSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_EppEv.exit: ; preds = %bb.l, %bb.m
  %.sroa.0160.2 = phi ptr [ %i.cd, %bb.m ], [ %i.ca, %bb.l ] ; 2 uses
  %.sroa.15.3 = phi ptr [ %i.ce, %bb.m ], [ %.sroa.15.0187, %bb.l ]
  %.sroa.20.3 = phi ptr [ %i.cc, %bb.m ], [ %.sroa.20.0188, %bb.l ]
  %i.cf = load ptr, ptr %i.m, align 8, !tbaa !227, !noalias !747 ; 2 uses
  %i.cg = icmp eq ptr %.sroa.0160.2, %i.cf
  br i1 %i.cg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_EppEv.exit
  %i.ch = load ptr, ptr %i.n, align 8, !tbaa !227, !noalias !748
  %i.ci = load ptr, ptr %i.ah, align 8, !tbaa !266, !noalias !748
  %i.cj = load ptr, ptr %i.q, align 8, !tbaa !229, !noalias !748
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt15_Deque_iteratorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EERS7_PS7_EppEv.exit
  %i.ck = add i64 %.060195, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.0160.1 = phi ptr [ %i.ch, %bb.n ], [ %.sroa.0160.2, %bb.o ] ; 5 uses
  %.sroa.15.1 = phi ptr [ %i.ci, %bb.n ], [ %.sroa.15.3, %bb.o ]
  %.sroa.20.1 = phi ptr [ %i.cj, %bb.n ], [ %.sroa.20.3, %bb.o ]
  %.1 = phi i64 [ 0, %bb.n ], [ %i.ck, %bb.o ]    ; 2 uses
  %i.cl = load i64, ptr %i.bm, align 8, !tbaa !749
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.bm, align 8, !tbaa !749
  %i.cn = load i32, ptr %i.aq, align 8, !tbaa !267
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.aq, align 8, !tbaa !267
  %i.cp = load ptr, ptr %.sroa.0160.1, align 8, !tbaa !183 ; 13 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.ax, label %bb.q, !llvm.loop !744

bb.q:                                             ; preds = %bb.p
  %i.cr = add nsw i32 %.061194, 1                 ; 2 uses
  %i.cs = load i32, ptr %i.bn, align 8, !tbaa !268
  %i.ct = icmp eq i32 %i.cs, 2147483647
  br i1 %i.ct, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = load i32, ptr %i.bo, align 4, !tbaa !185
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load ptr, ptr %i.o, align 8, !tbaa !229 ; 2 uses
  %i.cx = load ptr, ptr %i.q, align 8, !tbaa !229
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 3
  %i.dc = icmp ne ptr %i.cw, null
  %.neg.i.i125 = sext i1 %i.dc to i64
  %i.dd = add nsw i64 %i.db, %.neg.i.i125
  %i.de = shl nsw i64 %i.dd, 6
  %i.df = load ptr, ptr %i.aa, align 8, !tbaa !228
  %i.dg = ptrtoint ptr %i.cf to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = ashr exact i64 %i.di, 3
  %i.dk = add nsw i64 %i.de, %i.dj
  %i.dl = load ptr, ptr %i.ah, align 8, !tbaa !266
  %i.dm = load ptr, ptr %i.n, align 8, !tbaa !227
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
  br i1 %i.dw, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.dx = call noundef i64 @llvm.x86.rdtsc()
  invoke void @_ZN8facebook5velox5cache10CacheShard24calibrateThresholdLockedEv(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.u unwind label %.loopexit.split-lp178.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.dy = lshr i64 %i.dx, 21
  %i.dz = trunc i64 %i.dy to i32
  store i32 0, ptr %i.bo, align 4, !tbaa !185
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.196 = phi i32 [ %i.dz, %bb.u ], [ %.095190, %bb.s ] ; 5 uses
  %.162 = phi i32 [ 0, %bb.u ], [ %i.cr, %bb.s ]  ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cp, i64 116
  %i.eb = load atomic i32, ptr %i.ea seq_cst, align 4
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.w, label %bb.ax

bb.w:                                             ; preds = %bb.v
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !58
  %.not176 = icmp eq i64 %i.ee, -1
  %or.cond = or i1 %2, %.not176
  br i1 %or.cond, label %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cp, i64 120
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !91 ; 2 uses
  %.not.i.i127 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i127, label %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit.thread, label %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit

_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit: ; preds = %bb.x
  %i.eh = sub nsw i32 %.196, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cp, i64 124
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !92
  %i.ek = add nsw i32 %i.ej, 1
  %i.el = sdiv i32 %i.eh, %i.ek                   ; 2 uses
  %i.em = load i32, ptr %i.bn, align 8, !tbaa !268
  %.not111 = icmp slt i32 %i.el, %i.em
  br i1 %.not111, label %bb.ax, label %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit.thread

_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit.thread: ; preds = %bb.x, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit, %bb.w
  %.0 = phi i32 [ 0, %bb.w ], [ %i.el, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit ], [ 2147483647, %bb.x ] ; 2 uses
  br i1 %i.g, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit.thread
  %i.en = getelementptr inbounds nuw i8, ptr %i.cp, i64 168
  %i.eo = load atomic i8, ptr %i.en seq_cst, align 8, !range !204, !noundef !205
  %i.ep = trunc nuw i8 %i.eo to i1
  %.not2 = xor i1 %i.ep, true
  %or.cond4 = or i1 %2, %.not2
  br i1 %or.cond4, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eq = add nsw i32 %.078193, 1
  br label %bb.ax, !llvm.loop !744

bb.aa:                                            ; preds = %bb.y, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit.thread
  %i.er = getelementptr inbounds nuw i8, ptr %i.cp, i64 168
  %i.es = load atomic i8, ptr %i.er seq_cst, align 8, !range !204, !noundef !205
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eu = load i64, ptr %i.bp, align 8, !tbaa !750
  %i.ev = add i64 %i.eu, 1
  store i64 %i.ev, ptr %i.bp, align 8, !tbaa !750
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cp, i64 32 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !177
  %i.ez = sext i32 %i.ey to i64                   ; 2 uses
  %i.fa = shl nsw i64 %i.ez, 12
  %i.fb = add i64 %i.fa, %.083192                 ; 3 uses
  %.not112 = icmp eq i64 %.0100189, 0
  br i1 %.not112, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fc = call i64 @llvm.usub.sat.i64(i64 %.0100189, i64 %i.ez)
  invoke void @_ZN8facebook5velox6memory10Allocation10appendMoveERS2_(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %i.ew)
          to label %bb.ae unwind label %.loopexit.split-lp178.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.fd = invoke noundef zeroext i1 @_ZNK8facebook5velox6memory10Allocation5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %i.ew)
          to label %bb.af unwind label %.loopexit.split-lp178.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  br i1 %i.fd, label %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE9push_backEOS3_.exit, label %bb.ag, !prof !131

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache10CacheShard5evictEmbmRNS0_6memory10AllocationEE18veloxCheckFailArgs) #46
          to label %bb.ah unwind label %.loopexit.split-lp178.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  unreachable

bb.ai:                                            ; preds = %bb.ac
  %i.fe = load ptr, ptr %i.bq, align 8, !tbaa !271 ; 3 uses
  %i.ff = load ptr, ptr %i.br, align 8, !tbaa !272
  %.not.i.i128 = icmp eq ptr %i.fe, %i.ff
  br i1 %.not.i.i128, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN8facebook5velox6memory10AllocationC2EOS2_(ptr noundef nonnull align 8 dereferenceable(36) %i.fe, ptr noundef nonnull align 8 dereferenceable(36) %i.ew) #22
  %i.fg = load ptr, ptr %i.bq, align 8, !tbaa !271
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  store ptr %i.fh, ptr %i.bq, align 8, !tbaa !271
  br label %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE9push_backEOS3_.exit

bb.ak:                                            ; preds = %bb.ai
  invoke void @_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.fe, ptr noundef nonnull align 8 dereferenceable(36) %i.ew)
          to label %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE9push_backEOS3_.exit unwind label %.loopexit.split-lp178.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.aj, %bb.ak, %bb.af
  %.1101 = phi i64 [ %i.fc, %bb.af ], [ 0, %bb.ak ], [ 0, %bb.aj ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.cp, i64 72 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cp, i64 80 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !89
  %i.fl = add i64 %i.fk, %.089191                 ; 3 uses
  store i64 0, ptr %i.fj, align 8, !tbaa !89
  %i.fm = load ptr, ptr %i.fi, align 8, !tbaa !130
  store i8 0, ptr %i.fm, align 1, !tbaa !90
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEv(ptr noundef nonnull align 8 dereferenceable(32) %i.fi)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit unwind label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE9push_backEOS3_.exit
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #45
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit: ; preds = %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE9push_backEOS3_.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cp, i64 112
  store i32 0, ptr %i.fp, align 8, !tbaa !145
  invoke void @_ZN8facebook5velox5cache10CacheShard17removeEntryLockedEPNS1_19AsyncDataCacheEntryE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull %i.cp)
          to label %bb.am unwind label %.loopexit.split-lp178.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit
  %i.fq = trunc i64 %.1 to i32                    ; 2 uses
  %i.fr = load ptr, ptr %i.bt, align 8, !tbaa !226 ; 4 uses
  %i.fs = load ptr, ptr %i.bu, align 8, !tbaa !231
  %.not.i.i130 = icmp eq ptr %i.fr, %i.fs
  br i1 %.not.i.i130, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !180
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store ptr %i.ft, ptr %i.bt, align 8, !tbaa !226
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.ao:                                            ; preds = %bb.am
  %i.fu = load ptr, ptr %i.bs, align 8, !tbaa !230 ; 4 uses
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = ptrtoint ptr %i.fu to i64               ; 2 uses
  %i.fx = sub i64 %i.fv, %i.fw                    ; 5 uses
  %i.fy = icmp eq i64 %i.fx, 9223372036854775804
  br i1 %i.fy, label %bb.ap, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.102) #46
          to label %.noexc131 unwind label %.loopexit.split-lp178.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc131:                                        ; preds = %bb.ap
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ao
  %i.fz = ashr exact i64 %i.fx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fz, i64 1)
  %i.ga = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fz ; 2 uses
  %i.gb = icmp ult i64 %i.ga, %i.fz
  %i.gc = call i64 @llvm.umin.i64(i64 %i.ga, i64 2305843009213693951)
  %i.gd = select i1 %i.gb, i64 2305843009213693951, i64 %i.gc ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.gd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ge = shl nuw nsw i64 %i.gd, 2
  %i.gf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ge) #47
          to label %.noexc132 unwind label %.loopexit.split-lp178.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc132:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 %i.fx ; 2 uses
  store i32 %i.fq, ptr %i.gg, align 4, !tbaa !180
  %i.gh = icmp sgt i64 %i.fx, 0
  br i1 %i.gh, label %bb.aq, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.aq:                                            ; preds = %.noexc132
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gf, ptr align 4 %i.fu, i64 %i.fx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.aq, %.noexc132
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.gj = load ptr, ptr %i.bu, align 8, !tbaa !231
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = sub i64 %i.gk, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef %i.gl) #44
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ar, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.gf, ptr %i.bs, align 8, !tbaa !230
  store ptr %i.gi, ptr %i.bt, align 8, !tbaa !226
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gd
  store ptr %i.gm, ptr %i.bu, align 8, !tbaa !231
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.an
  %i.gn = load ptr, ptr %i.bw, align 8, !tbaa !184 ; 4 uses
  %i.go = load ptr, ptr %i.bx, align 8, !tbaa !273
  %.not.i.i.i = icmp eq ptr %i.gn, %i.go
  br i1 %.not.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.gp = load i64, ptr %.sroa.0160.1, align 8, !tbaa !183
  store i64 %i.gp, ptr %i.gn, align 8, !tbaa !183
  store ptr null, ptr %.sroa.0160.1, align 8, !tbaa !183
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  store ptr %i.gq, ptr %i.bw, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.i

bb.at:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  invoke void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr %i.gn, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0160.1)
          to label %.noexc133 unwind label %.loopexit.split-lp178.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc133:                                        ; preds = %bb.at
  %.pre.i = load ptr, ptr %i.bw, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.i: ; preds = %.noexc133, %bb.as
  %i.gr = phi ptr [ %i.gq, %bb.as ], [ %.pre.i, %.noexc133 ] ; 3 uses
  %i.gs = load ptr, ptr %i.bv, align 8, !tbaa !274 ; 2 uses
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = icmp ugt i64 %i.gv, 8184
  br i1 %i.gw, label %bb.au, label %_ZN8facebook5velox5cache10CacheShard15tryAddFreeEntryEOSt10unique_ptrINS1_19AsyncDataCacheEntryESt14default_deleteIS4_EE.exit

bb.au:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 4096 ; 3 uses
  %.not.i.i2.i = icmp eq ptr %i.gr, %i.gx
  br i1 %.not.i.i2.i, label %_ZN8facebook5velox5cache10CacheShard15tryAddFreeEntryEOSt10unique_ptrINS1_19AsyncDataCacheEntryESt14default_deleteIS4_EE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.au, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.gz, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i ], [ %i.gx, %bb.au ] ; 2 uses
  %i.gy = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !183 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox5cache19AsyncDataCacheEntryEEclEPS3_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox5cache19AsyncDataCacheEntryEEclEPS3_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZN8facebook5velox5cache19AsyncDataCacheEntryD1Ev(ptr noundef nonnull align 8 dead_on_return(169) dereferenceable(169) %i.gy) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef 176) #44
  br label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox5cache19AsyncDataCacheEntryEEclEPS3_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gz, %i.gr
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i
  store ptr %i.gx, ptr %i.bw, align 8, !tbaa !184
  br label %_ZN8facebook5velox5cache10CacheShard15tryAddFreeEntryEOSt10unique_ptrINS1_19AsyncDataCacheEntryESt14default_deleteIS4_EE.exit

_ZN8facebook5velox5cache10CacheShard15tryAddFreeEntryEOSt10unique_ptrINS1_19AsyncDataCacheEntryESt14default_deleteIS4_EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.i, %bb.au, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox5cache19AsyncDataCacheEntryESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.i
  %i.ha = load i64, ptr %i.by, align 8, !tbaa !751
  %i.hb = add i64 %i.ha, 1
  store i64 %i.hb, ptr %i.by, align 8, !tbaa !751
  %i.hc = icmp sgt i32 %.0, 0
  br i1 %i.hc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN8facebook5velox5cache10CacheShard15tryAddFreeEntryEOSt10unique_ptrINS1_19AsyncDataCacheEntryESt14default_deleteIS4_EE.exit
  %i.hd = zext nneg i32 %.0 to i64
  %i.he = load i64, ptr %i.bz, align 8, !tbaa !275
  %i.hf = add i64 %i.he, %i.hd
  store i64 %i.hf, ptr %i.bz, align 8, !tbaa !275
  br label %bb.aw

.loopexit.split-lp178.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ae, %bb.ad, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit, %bb.ak, %bb.at, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.ag, %bb.ap
  %lpad.loopexit.split-lp242 = landingpad { ptr, i32 }
          cleanup
  %i.hg = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #22 ; 0 uses
  br label %bb.bo

bb.aw:                                            ; preds = %bb.av, %_ZN8facebook5velox5cache10CacheShard15tryAddFreeEntryEOSt10unique_ptrINS1_19AsyncDataCacheEntryESt14default_deleteIS4_EE.exit
  %i.hh = add nsw i64 %i.fl, %i.fb
  %i.hi = icmp ugt i64 %i.hh, %1
  br i1 %i.hi, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.z, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit, %bb.v, %bb.p
  %.4104 = phi i64 [ %.0100189, %bb.p ], [ %.0100189, %bb.z ], [ %.1101, %bb.aw ], [ %.0100189, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit ], [ %.0100189, %bb.v ]
  %.297 = phi i32 [ %.095190, %bb.p ], [ %.196, %bb.z ], [ %.196, %bb.aw ], [ %.196, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit ], [ %.196, %bb.v ]
  %.392 = phi i64 [ %.089191, %bb.p ], [ %.089191, %bb.z ], [ %i.fl, %bb.aw ], [ %.089191, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit ], [ %.089191, %bb.v ] ; 2 uses
  %.386 = phi i64 [ %.083192, %bb.p ], [ %.083192, %bb.z ], [ %i.fb, %bb.aw ], [ %.083192, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit ], [ %.083192, %bb.v ] ; 2 uses
  %.280 = phi i32 [ %.078193, %bb.p ], [ %i.eq, %bb.z ], [ %.078193, %bb.aw ], [ %.078193, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit ], [ %.078193, %bb.v ] ; 2 uses
  %.2 = phi i32 [ %.061194, %bb.p ], [ %.162, %bb.z ], [ %.162, %bb.aw ], [ %.162, %_ZNK8facebook5velox5cache19AsyncDataCacheEntry5scoreEi.exit ], [ %.162, %bb.v ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv, %i.ao
  br i1 %exitcond, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.aw, %bb.ax
  %.078.lcssa = phi i32 [ %.078193, %bb.aw ], [ %.280, %bb.ax ]
  %.493 = phi i64 [ %i.fl, %bb.aw ], [ %.392, %bb.ax ]
  %.487 = phi i64 [ %i.fb, %bb.aw ], [ %.386, %bb.ax ] ; 2 uses
  %i.hj = icmp eq i32 %.078.lcssa, 0
  %i.hk = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #22 ; 0 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.hm = call noundef i64 @llvm.x86.rdtsc()      ; 2 uses
  %i.hn = load ptr, ptr %5, align 8, !tbaa !276   ; 2 uses
  %i.ho = load ptr, ptr %i.bq, align 8, !tbaa !276 ; 2 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %bb.ay, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc140
  %.pre.i134 = load ptr, ptr %5, align 8, !tbaa !277 ; 3 uses
  %.pre10.i = load ptr, ptr %i.bq, align 8, !tbaa !271 ; 2 uses
  %.not.i.i.i135 = icmp eq ptr %.pre10.i, %.pre.i134
  br i1 %.not.i.i.i135, label %bb.ay, label %.lr.ph.i.i.i.i.i136

.lr.ph.i.i.i.i.i136:                              ; preds = %._crit_edge.i, %.lr.ph.i.i.i.i.i136
  %.05.i.i.i.i.i137 = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i136 ], [ %.pre.i134, %._crit_edge.i ] ; 2 uses
  call void @_ZN8facebook5velox6memory10AllocationD1Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %.05.i.i.i.i.i137) #22
  %i.hq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i137, i64 40 ; 2 uses
  %.not.i.i.i.i.i138 = icmp eq ptr %i.hq, %.pre10.i
  br i1 %.not.i.i.i.i.i138, label %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i136, !llvm.loop !8

_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i136
  store ptr %.pre.i134, ptr %i.bq, align 8, !tbaa !271
  br label %bb.ay

.lr.ph.i:                                         ; preds = %.thread, %.noexc140
  %.sroa.06.09.i = phi ptr [ %i.ia, %.noexc140 ], [ %i.hn, %.thread ] ; 2 uses
  %i.hr = load ptr, ptr %0, align 8, !tbaa !127   ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !129
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = invoke noundef ptr %i.hu(ptr noundef nonnull align 8 dereferenceable(372) %i.hr)
          to label %.noexc139 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !278 ; 2 uses

.noexc139:                                        ; preds = %.lr.ph.i
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !129
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = invoke noundef i64 %i.hy(ptr noundef nonnull align 8 dereferenceable(888) %i.hv, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.06.09.i)
          to label %.noexc140 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !278 ; 0 uses

.noexc140:                                        ; preds = %.noexc139
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 40 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.ho
  br i1 %i.ib, label %._crit_edge.i, label %.lr.ph.i

bb.ay:                                            ; preds = %.thread, %._crit_edge.i, %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.ic = load ptr, ptr %0, align 8, !tbaa !127
  %i.id = add i64 %.487, 4095
  %i.ie = lshr i64 %i.id, 12
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 96
  %i.ig = atomicrmw sub ptr %i.if, i64 %i.ie seq_cst, align 8 ; 0 uses
  br i1 %i.hj, label %bb.bm, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %.not109, label %bb.ba, label %bb.bc, !prof !174

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache10CacheShard5evictEmbmRNS0_6memory10AllocationEE18veloxCheckFailArgs_0) #46
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ba
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc139, %.lr.ph.i, %bb.bc, %bb.bh, %bb.ba
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook5velox10ClockTimerD2Ev.exit145

bb.bc:                                            ; preds = %bb.az
  %i.ih = invoke noundef zeroext i1 @_ZN8facebook5velox5cache8SsdCache10startWriteEv(ptr noundef nonnull align 8 dereferenceable(133) %i.c)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.ih, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull @.str, i32 noundef 485)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.ii = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %bb.bg unwind label %bb.bj     ; 3 uses

bb.bg:                                            ; preds = %bb.bf
  %i.ij = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ii, ptr noundef nonnull @.str.31, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.bg
  %i.ik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ii, ptr noundef nonnull @.str.32, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.il = load ptr, ptr %0, align 8, !tbaa !127
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 360
  %i.in = load i32, ptr %i.im, align 4, !tbaa !180
  %i.io = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ii, i32 noundef %i.in)
          to label %bb.bh unwind label %bb.bj     ; 0 uses

bb.bh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ip = load ptr, ptr %0, align 8, !tbaa !127   ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 360
  store i32 0, ptr %i.iq, align 4, !tbaa !180
  invoke void @_ZN8facebook5velox5cache14AsyncDataCache9saveToSsdEb(ptr noundef nonnull align 8 dereferenceable(372) %i.ip, i1 noundef zeroext false)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.be
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.bg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143, %bb.bf
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #22
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn119 = phi { ptr, i32 } [ %i.is, %bb.bj ], [ %i.ir, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN8facebook5velox10ClockTimerD2Ev.exit145

bb.bl:                                            ; preds = %bb.bd
  %i.it = load ptr, ptr %0, align 8, !tbaa !127
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 360 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !180
  %i.iw = add nsw i32 %i.iv, 1
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !180
  br label %bb.bm

_ZN8facebook5velox10ClockTimerD2Ev.exit145:       ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bk
  %.pn121 = phi { ptr, i32 } [ %.pn119, %bb.bk ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ix = call noundef i64 @llvm.x86.rdtsc()
  %i.iy = sub i64 %i.ix, %i.hm
  %i.iz = atomicrmw add ptr %i.hl, i64 %i.iy seq_cst, align 8 ; 0 uses
  br label %bb.bo

_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i.thread: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ja = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #22 ; 0 uses
  br label %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EED2Ev.exit

bb.bm:                                            ; preds = %bb.ay, %bb.bh, %bb.bl
  %i.jb = add nsw i64 %.487, %.493                ; 2 uses
  %i.jc = call noundef i64 @llvm.x86.rdtsc()
  %i.jd = sub i64 %i.jc, %i.hm
  %i.je = atomicrmw add ptr %i.hl, i64 %i.jd seq_cst, align 8 ; 0 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !277   ; 3 uses
  %.pre200 = load ptr, ptr %i.bq, align 8, !tbaa !271 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre200
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bm, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.jf, %.lr.ph.i.i.i ], [ %.pre, %bb.bm ] ; 2 uses
  call void @_ZN8facebook5velox6memory10AllocationD1Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %.05.i.i.i) #22
  %i.jf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i146 = icmp eq ptr %i.jf, %.pre200
  br i1 %.not.i.i.i146, label %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !277
  br label %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.bm
  %i.jg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %bb.bm ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.jg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i
  %i.jh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !272
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = ptrtoint ptr %i.jg to i64
  %i.jl = sub i64 %i.jj, %i.jk
  call void @_ZdlPvm(ptr noundef nonnull %i.jg, i64 noundef %i.jl) #44
  br label %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EED2Ev.exit

_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i.thread, %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i, %bb.bn
  %.199233236 = phi i64 [ 0, %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i.thread ], [ %i.jb, %_ZSt8_DestroyIPN8facebook5velox6memory10AllocationES3_EvT_S5_RSaIT0_E.exit.i ], [ %i.jb, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i64 %.199233236

bb.bo:                                            ; preds = %_ZN8facebook5velox10ClockTimerD2Ev.exit145, %bb.e, %.loopexit.split-lp178.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn121.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %lpad.loopexit.split-lp242, %.loopexit.split-lp178.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn121, %_ZN8facebook5velox10ClockTimerD2Ev.exit145 ]
  call void @_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn121.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox5cache10CacheShard24calibrateThresholdLockedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(312) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
