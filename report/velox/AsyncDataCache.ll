Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/AsyncDataCache?download=true
inline.NumInlined: 5544
inline.NumDeleted: 2717
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN8facebook5velox5cache10CacheShard12lookupLockedENS1_15RawFileCacheKeyEmPN5folly10SemiFutureIbEE:bb.a
  %7 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %8 = alloca %"class.folly::ReadMostlySharedPtr", align 8 ; 8 uses
  %9 = alloca %"class.facebook::velox::cache::CachePin", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !185
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !185
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !186  ; 2 uses
  %i.g = icmp ult i64 %i.f, 256
  br i1 %i.g, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = xor i64 %3, %2
  %i.i = mul i64 %i.h, -7070675565921424023       ; 2 uses
  %i.j = lshr i64 %i.i, 47
  %i.k = xor i64 %2, %i.j
  %i.l = xor i64 %i.k, %i.i
  %i.m = mul i64 %i.l, -7070675565921424023       ; 2 uses
  %i.n = lshr i64 %i.m, 47
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -7070675565921424023       ; 2 uses
  %i.q = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.p) ; 2 uses
  %i.r = lshr i64 %i.q, 24
  %i.s = or i64 %i.r, 128                         ; 2 uses
  %i.t = add i64 %i.q, %i.p
  %i.u = shl nuw nsw i64 %i.s, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = trunc nuw i64 %i.s to i8
  %i.x = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.z = and i64 %i.f, 255                        ; 2 uses
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !187
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i172 = phi i64 [ %i.aa, %bb.b ], [ %i.bd, %bb.f ]
  %.024.i171 = phi i64 [ %i.t, %bb.b ], [ %i.be, %bb.f ] ; 2 uses
  %i.ad = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i171, i64 range(i64 0, 256) %i.z)
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %i.ad ; 3 uses
  %i.af = load <16 x i8>, ptr %i.ae, align 16     ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.af, %i.y
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = and i16 %i.ah, 4095
  %i.aj = zext nneg i16 %i.ai to i32
  %i.ak = icmp ne ptr %i.ae, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.am = extractelement <16 x i8> %i.af, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.095.0 = phi i32 [ %i.aj, %bb.c ], [ %i.ap, %bb.d ] ; 4 uses
  %.not161 = icmp eq i32 %.sroa.095.0, 0
  br i1 %.not161, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.an = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.095.0, i1 true)
  %i.ao = add nuw nsw i32 %.sroa.095.0, 4095
  %i.ap = and i32 %i.ao, %.sroa.095.0
  %i.aq = zext nneg i32 %i.an to i64
  tail call void @llvm.assume(i1 %i.ak)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aq
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !188
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !180 ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !190
  %i.ay = icmp eq i64 %3, %i.ax
  %i.az = load i64, ptr %i.av, align 8
  %i.ba = icmp eq i64 %2, %i.az
  %i.bb = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %i.bb, label %bb.g, label %.critedge.i, !prof !131, !llvm.loop !0

bb.e:                                             ; preds = %.critedge.i
  %i.bc = icmp eq i8 %i.am, 0
  br i1 %i.bc, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.f, !prof !131

bb.f:                                             ; preds = %bb.e
  %i.bd = add i64 %.022.i172, -1                  ; 2 uses
  %i.be = add i64 %i.v, %.024.i171
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.c, !llvm.loop !1

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %bb.e, %bb.f, %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bf, align 8, !tbaa !193
  br label %bb.az

bb.g:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !195 ; 12 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 116 ; 4 uses
  %i.bj = load atomic i32, ptr %i.bi seq_cst, align 4
  %i.bk = icmp eq i32 %i.bj, -10000
  br i1 %i.bk, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !196
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !196
  %.not34 = icmp eq ptr %5, null
  br i1 %.not34, label %_ZN8facebook5velox5cache8CachePinD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 104 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !93, !noalias !667 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i, label %bb.j, label %_ZN8facebook5velox5cache19AsyncDataCacheEntry15getFutureLockedEv.exit

bb.j:                                             ; preds = %bb.i
  %i.bq = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #47, !noalias !668 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bq, i8 0, i64 64, i1 false), !noalias !668
  store i32 2, ptr %i.br, align 8, !tbaa !135, !noalias !668
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bs, i8 0, i64 56, i1 false), !noalias !668
  %i.bt = load ptr, ptr %i.bo, align 8, !tbaa !93, !noalias !667 ; 3 uses
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !93, !noalias !667
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox5cache19AsyncDataCacheEntry15getFutureLockedEv.exit, label %_ZNKSt14default_deleteIN5folly13SharedPromiseIbEEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5folly13SharedPromiseIbEEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.j
  tail call void @_ZN5folly13SharedPromiseIbED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.bt) #22, !noalias !667
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 120) #44, !noalias !667
  %.pre.i = load ptr, ptr %i.bo, align 8, !tbaa !93, !noalias !667
  br label %_ZN8facebook5velox5cache19AsyncDataCacheEntry15getFutureLockedEv.exit

_ZN8facebook5velox5cache19AsyncDataCacheEntry15getFutureLockedEv.exit: ; preds = %bb.i, %bb.j, %_ZNKSt14default_deleteIN5folly13SharedPromiseIbEEEclEPS2_.exit.i.i.i.i.i
  %i.bu = phi ptr [ %i.bq, %bb.j ], [ %.pre.i, %_ZNKSt14default_deleteIN5folly13SharedPromiseIbEEEclEPS2_.exit.i.i.i.i.i ], [ %i.bp, %bb.i ]
  call void @_ZNK5folly13SharedPromiseIbE13getSemiFutureEv(ptr dead_on_unwind nonnull writable sret(%"class.folly::SemiFuture") align 8 %6, ptr noundef nonnull align 8 dereferenceable(120) %i.bu)
  %i.bv = load ptr, ptr %5, align 8, !tbaa !199
  invoke void @_ZN5folly10SemiFutureIbE23releaseDeferredExecutorEPNS_7futures6detail4CoreIbEE(ptr noundef %i.bv)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZN8facebook5velox5cache19AsyncDataCacheEntry15getFutureLockedEv.exit
  %i.bw = load ptr, ptr %5, align 8, !tbaa !199   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %_ZN5folly10SemiFutureIbEaSEOS1_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.bw) #22
  store ptr null, ptr %5, align 8, !tbaa !199
  br label %_ZN5folly10SemiFutureIbEaSEOS1_.exit

bb.m:                                             ; preds = %_ZN8facebook5velox5cache19AsyncDataCacheEntry15getFutureLockedEv.exit
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #45
  unreachable

_ZN5folly10SemiFutureIbEaSEOS1_.exit:             ; preds = %bb.k, %bb.l
  %i.bz = load ptr, ptr %6, align 8, !tbaa !200
  store ptr null, ptr %6, align 8, !tbaa !200
  store ptr %i.bz, ptr %5, align 8, !tbaa !199
  invoke void @_ZN5folly10SemiFutureIbE23releaseDeferredExecutorEPNS_7futures6detail4CoreIbEE(ptr noundef null)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %_ZN5folly10SemiFutureIbEaSEOS1_.exit
  %i.ca = load ptr, ptr %6, align 8, !tbaa !199   ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i62, label %_ZN5folly10SemiFutureIbED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.ca) #22
  br label %_ZN5folly10SemiFutureIbED2Ev.exit

bb.p:                                             ; preds = %_ZN5folly10SemiFutureIbEaSEOS1_.exit
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #45
  unreachable

_ZN5folly10SemiFutureIbED2Ev.exit:                ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN8facebook5velox5cache8CachePinD2Ev.exit

_ZN8facebook5velox5cache8CachePinD2Ev.exit:       ; preds = %bb.h, %_ZN5folly10SemiFutureIbED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !202
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cd, align 8, !tbaa !193
  br label %bb.az

bb.q:                                             ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 112 ; 4 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !145
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp ugt i64 %4, %i.cg
  br i1 %i.ch, label %.preheader166, label %bb.as

.preheader166:                                    ; preds = %bb.q
  %i.ci = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #22
  %i.cj = sdiv i64 %i.ci, 1000000                 ; 2 uses
  %invariant.op = add nsw i64 %i.cj, -1000
  %10 = load atomic i64, ptr @_ZZN8facebook5velox5cache10CacheShard12lookupLockedENS1_15RawFileCacheKeyEmPN5folly10SemiFutureIbEEE11FB_LEM_hist acquire, align 8 ; 2 uses
  %11 = icmp sgt i64 %10, %invariant.op
  br i1 %11, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, label %bb.r

bb.r:                                             ; preds = %.preheader166
  %i.ck = cmpxchg ptr @_ZZN8facebook5velox5cache10CacheShard12lookupLockedENS1_15RawFileCacheKeyEmPN5folly10SemiFutureIbEEE11FB_LEM_hist, i64 %10, i64 %i.cj seq_cst seq_cst, align 8
  %i.cl = extractvalue { i64, i1 } %i.ck, 1
  br i1 %i.cl, label %bb.s, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull @.str, i32 noundef 186, i32 noundef 1)
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %7)
          to label %bb.t unwind label %bb.v       ; 3 uses

bb.t:                                             ; preds = %bb.s
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.15, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.t
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.16, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cp = load i32, ptr %i.ce, align 8, !tbaa !145
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, i32 noundef %i.cp)
          to label %bb.u unwind label %bb.v       ; 2 uses

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull @.str.17, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65: ; preds = %bb.u
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, i64 noundef %4)
          to label %_ZNSolsEm.exit unwind label %bb.v ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65, %bb.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.t, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64, %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ay

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %bb.r, %_ZNSolsEm.exit, %.preheader166
  %12 = load i8, ptr @_ZN8facebook5velox17BaseStatsReporter10registeredE, align 1, !tbaa !203, !range !204, !noundef !205
  %13 = trunc nuw i8 %12 to i1
  br i1 %13, label %bb.w, label %bb.al

bb.w:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.cu = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_15SingletonHolderIN8facebook5velox17BaseStatsReporterEE4ImplINS0_10DefaultTagES9_EEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8, !noalias !669 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i, label %bb.x, label %_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E8getEntryEv.exit.i, !prof !174

bb.x:                                             ; preds = %bb.w
  %i.cv = call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_15SingletonHolderIN8facebook5velox17BaseStatsReporterEE4ImplINS0_10DefaultTagES9_EEvNS1_9ArgCreateILb0EEEEERT1_vE3arg), !noalias !669
  br label %_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E8getEntryEv.exit.i

_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E8getEntryEv.exit.i: ; preds = %bb.x, %bb.w
  %i.cw = phi ptr [ %i.cv, %bb.x ], [ %i.cu, %bb.w ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %i.cy = load atomic i32, ptr %i.cx acquire, align 4, !noalias !671
  %.not.i.i66 = icmp eq i32 %i.cy, 2
  br i1 %.not.i.i66, label %bb.z, label %bb.y, !prof !131

bb.y:                                             ; preds = %_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E8getEntryEv.exit.i
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !129, !noalias !671
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !noalias !671
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(2304) %i.cw), !noalias !671, !inline_history !2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E8getEntryEv.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 1160
  call void @llvm.experimental.noalias.scope.decl(metadata !672)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !alias.scope !673
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !209, !noalias !673
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 1168
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !210, !noalias !673
  call void @_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEE5resetEPNS_6detail23ReadMostlySharedPtrCoreIS4_EEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.dd, ptr noundef %i.df)
  %i.dg = load ptr, ptr %8, align 8, !tbaa !212   ; 3 uses
  %.not162 = icmp eq ptr %i.dg, null
  br i1 %.not162, label %bb.ac, label %bb.aa, !prof !174

bb.aa:                                            ; preds = %bb.z
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !129
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr nonnull @.str.93, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.93, i64 36), i64 noundef 1)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ay

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !213 ; 5 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.do = call noundef i64 @_ZN5folly10TLRefCountmmEv(ptr noundef nonnull align 8 dereferenceable(240) %i.dm) #22
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.ae, label %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 224
  store ptr null, ptr %i.dq, align 8, !tbaa !214
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 232 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !215 ; 8 uses
  store ptr null, ptr %i.dr, align 8, !tbaa !215
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 4294967297
  %i.dw = trunc i64 %i.du to i32                  ; 2 uses
  br i1 %i.dv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.dt, align 8, !tbaa !217
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dx, align 4, !tbaa !218
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !129
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #22, !inline_history !3
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !129
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #22, !inline_history !3
  br label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ef = add nsw i32 %i.dw, -1
  store i32 %i.ef, ptr %i.dt, align 8, !tbaa !180
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.eg = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dw, %bb.ai ], [ %i.eg, %bb.aj ]
  %i.eh = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.eh, label %bb.ak, label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i, !prof !174

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #22
  br label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i

_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i: ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ag, %bb.ae
  call void @_ZN5folly6detail23ReadMostlySharedPtrCoreINS_10TLRefCountEE10decrefWeakEv(ptr noundef nonnull align 8 dereferenceable(240) %i.dm)
  br label %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit

_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit: ; preds = %bb.ac, %bb.ad, %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.al

bb.al:                                            ; preds = %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !219
  %i.ek = add i64 %i.ej, 1
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !219
  %i.el = load ptr, ptr %i.bh, align 8, !tbaa !57 ; 2 uses
  %.not.i67 = icmp eq ptr %i.el, null
  br i1 %.not.i67, label %_ZN8facebook5velox13StringIdLease5clearEv.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.em = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !58
  call void @_ZN8facebook5velox11StringIdMap7releaseEm(ptr noundef nonnull align 8 dereferenceable(104) %i.el, i64 noundef %i.en)
  store ptr null, ptr %i.bh, align 8, !tbaa !57
  store i64 -1, ptr %i.em, align 8, !tbaa !58
  br label %_ZN8facebook5velox13StringIdLease5clearEv.exit

_ZN8facebook5velox13StringIdLease5clearEv.exit:   ; preds = %bb.al, %bb.am
  %i.eo = load i64, ptr %i.e, align 8, !tbaa !186 ; 2 uses
  %i.ep = icmp ult i64 %i.eo, 256
  br i1 %i.ep, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %bb.an

bb.an:                                            ; preds = %_ZN8facebook5velox13StringIdLease5clearEv.exit
  %i.eq = load ptr, ptr %i.d, align 8, !tbaa !188
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.eq, i64 %i.au ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !220 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !190
  %i.ev = xor i64 %i.eu, %i.es
  %i.ew = mul i64 %i.ev, -7070675565921424023     ; 2 uses
  %i.ex = lshr i64 %i.ew, 47
  %i.ey = xor i64 %i.es, %i.ex
  %i.ez = xor i64 %i.ey, %i.ew
  %i.fa = mul i64 %i.ez, -7070675565921424023     ; 2 uses
  %i.fb = lshr i64 %i.fa, 47
  %i.fc = xor i64 %i.fb, %i.fa
  %i.fd = mul i64 %i.fc, -7070675565921424023     ; 2 uses
  %i.fe = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.fd) ; 2 uses
  %i.ff = lshr i64 %i.fe, 24
  %i.fg = or i64 %i.ff, 128                       ; 2 uses
  %i.fh = add i64 %i.fd, %i.fe
  %i.fi = shl nuw nsw i64 %i.fg, 1
  %i.fj = or disjoint i64 %i.fi, 1
  %i.fk = trunc nuw i64 %i.fg to i8
  %i.fl = insertelement <16 x i8> poison, i8 %i.fk, i64 0
  %i.fm = shufflevector <16 x i8> %i.fl, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.fn = and i64 %i.eo, 255                      ; 2 uses
  %i.fo = shl nuw i64 1, %i.fn
  %i.fp = load ptr, ptr %i.ab, align 8, !tbaa !187
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ar
  %.022.i46176 = phi i64 [ %i.fo, %bb.an ], [ %i.gi, %bb.ar ]
  %.024.i45175 = phi i64 [ %i.fh, %bb.an ], [ %i.gj, %bb.ar ] ; 2 uses
  %i.fq = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i45175, i64 range(i64 0, 256) %i.fn)
  %i.fr = getelementptr inbounds nuw [64 x i8], ptr %i.fp, i64 %i.fq ; 3 uses
  %i.fs = load <16 x i8>, ptr %i.fr, align 16     ; 2 uses
  %i.ft = icmp eq <16 x i8> %i.fs, %i.fm
  %i.fu = bitcast <16 x i1> %i.ft to i16
  %i.fv = and i16 %i.fu, 4095
  %i.fw = zext nneg i16 %i.fv to i32
  %i.fx = icmp ne ptr %i.fr, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %i.fz = extractelement <16 x i8> %i.fs, i64 15
  br label %.critedge.i48

.critedge.i48:                                    ; preds = %bb.ap, %bb.ao
  %.sroa.0107.0 = phi i32 [ %i.fw, %bb.ao ], [ %i.gc, %bb.ap ] ; 4 uses
  %.not163 = icmp eq i32 %.sroa.0107.0, 0
  br i1 %.not163, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.critedge.i48
  %i.ga = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0107.0, i1 true)
  %i.gb = add nuw nsw i32 %.sroa.0107.0, 4095
  %i.gc = and i32 %i.gb, %.sroa.0107.0
  %i.gd = zext nneg i32 %i.ga to i64              ; 3 uses
  call void @llvm.assume(i1 %i.fx)
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !180
  %i.gg = icmp eq i32 %i.at, %i.gf
  br i1 %i.gg, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.loopexit, label %.critedge.i48, !prof !131, !llvm.loop !4

bb.aq:                                            ; preds = %.critedge.i48
  %i.gh = icmp eq i8 %i.fz, 0
  br i1 %i.gh, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %bb.ar, !prof !131

bb.ar:                                            ; preds = %bb.aq
  %i.gi = add i64 %.022.i46176, -1                ; 2 uses
  %i.gj = add i64 %i.fj, %.024.i45175
  %.not.i47 = icmp eq i64 %i.gi, 0
  br i1 %.not.i47, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %bb.ao, !llvm.loop !5

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.loopexit: ; preds = %bb.ap
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.gd
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit: ; preds = %bb.ar, %bb.aq, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.loopexit, %_ZN8facebook5velox13StringIdLease5clearEv.exit
  %.sroa.5106.0 = phi i64 [ 0, %_ZN8facebook5velox13StringIdLease5clearEv.exit ], [ %i.gd, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.loopexit ], [ 0, %bb.aq ], [ 0, %bb.ar ]
  %.sroa.0105.0 = phi ptr [ null, %_ZN8facebook5velox13StringIdLease5clearEv.exit ], [ %i.gk, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.loopexit ], [ null, %bb.aq ], [ null, %bb.ar ]
  call void @_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache15RawFileCacheKeyEPNS5_19AsyncDataCacheEntryENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S8_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %.sroa.0105.0, i64 %.sroa.5106.0, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE)
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.gl, align 8, !tbaa !193
  br label %bb.az

bb.as:                                            ; preds = %bb.q
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  %i.gn = tail call noundef i64 @llvm.x86.rdtsc()
  %i.go = lshr i64 %i.gn, 21
  %i.gp = trunc i64 %i.go to i32
  store i32 %i.gp, ptr %i.gm, align 8, !tbaa !91
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bh, i64 124 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !92
  %i.gs = add nsw i32 %i.gr, 1
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !92
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bh, i64 128 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 8, !tbaa !175, !range !204, !noundef !205
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gw = getelementptr inbounds nuw i8, ptr %i.bh, i64 129
  store atomic i8 1, ptr %i.gw seq_cst, align 1
  store i8 0, ptr %i.gt, align 8, !tbaa !175
  %i.gx = load i32, ptr %i.ce, align 8, !tbaa !145
  %i.gy = sext i32 %i.gx to i64
  %i.gz = add nsw i64 %i.gy, 4095
  %i.ha = lshr i64 %i.gz, 12
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !87
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !127
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 104
  %i.hf = atomicrmw sub ptr %i.he, i64 %i.ha seq_cst, align 8 ; 0 uses
  br label %_ZN8facebook5velox5cache8CachePin7releaseEv.exit.i

bb.au:                                            ; preds = %bb.as
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.hh = load i32, ptr %i.ce, align 8, !tbaa !145
  %i.hi = sext i32 %i.hh to i64
  %i.hj = load <2 x i64>, ptr %i.hg, align 8, !tbaa !176
  %i.hk = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.hi, i64 1
  %i.hl = add <2 x i64> %i.hj, %i.hk
  store <2 x i64> %i.hl, ptr %i.hg, align 8, !tbaa !176
  br label %_ZN8facebook5velox5cache8CachePin7releaseEv.exit.i

_ZN8facebook5velox5cache8CachePin7releaseEv.exit.i: ; preds = %bb.at, %bb.au
  %i.hm = atomicrmw add ptr %i.bi, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr null, ptr %9, align 8, !tbaa !202
  %i.hn = load atomic i32, ptr %i.bi seq_cst, align 4
  %i.ho = icmp eq i32 %i.hn, -10000
  br i1 %i.ho, label %_ZN8facebook5velox5cache8CachePinD2Ev.exit78, label %bb.av

bb.av:                                            ; preds = %_ZN8facebook5velox5cache8CachePin7releaseEv.exit.i
  %i.hp = load atomic i32, ptr %i.bi seq_cst, align 4
  %i.hq = icmp slt i32 %i.hp, 1
  br i1 %i.hq, label %bb.aw, label %_ZN8facebook5velox5cache8CachePinD2Ev.exit78, !prof !174

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache8CachePin8setEntryEPNS1_19AsyncDataCacheEntryEE18veloxCheckFailArgs) #46
          to label %.noexc76 unwind label %bb.ax

.noexc76:                                         ; preds = %bb.aw
  unreachable

_ZN8facebook5velox5cache8CachePinD2Ev.exit78:     ; preds = %_ZN8facebook5velox5cache8CachePin7releaseEv.exit.i, %bb.av
  store ptr %i.bh, ptr %0, align 8, !tbaa !202
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.hr, align 8, !tbaa !193
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox5cache8CachePinD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.ab, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.v ], [ %i.dk, %bb.ab ], [ %i.hs, %bb.ax ]
  resume { ptr, i32 } %.pn

bb.az:                                            ; preds = %_ZN8facebook5velox5cache8CachePinD2Ev.exit, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, %_ZN8facebook5velox5cache8CachePinD2Ev.exit78, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache15RawFileCacheKeyEPNS6_19AsyncDataCacheEntryEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox5cache8CachePinD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !202    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN8facebook5velox5cache19AsyncDataCacheEntry7releaseEv(ptr noundef nonnull align 8 dereferenceable(169) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox5cache14AsyncDataCache9makeSpaceEmSt8functionIFbRNS0_6memory10AllocationEEE:bb.a
  %i.cl = and i32 %i.ck, %i.cj
  %i.cm = sext i32 %i.cl to i64
  %i.cn = load ptr, ptr %i.ad, align 8, !tbaa !319
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !282
  %i.cq = fmul float %.029103, %i.af
  %i.cr = fptoui float %i.cq to i64
  %i.cs = shl i64 %i.cr, 12
  %i.ct = load i32, ptr %i.b, align 8, !tbaa !314
  %i.cu = icmp sge i32 %.020104, %i.ct
  %i.cv = invoke noundef i64 @_ZN8facebook5velox5cache10CacheShard5evictEmbmRNS0_6memory10AllocationE(ptr noundef nonnull align 8 dereferenceable(312) %i.cp, i64 noundef %i.cs, i1 noundef zeroext %i.cu, i64 noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %bb.aj unwind label %bb.ak     ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.cw = fcmp olt float %.029103, 4.000000e+00
  %or.cond = select i1 %i.ag, i1 %i.cw, i1 false
  %i.cx = fmul nnan float %.029103, 2.000000e+00
  %spec.select = select i1 %or.cond, float %i.cx, float %.029103
  %i.cy = add nuw nsw i32 %.020104, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cy, %smax
  br i1 %exitcond.not, label %.critedge44, label %bb.k, !llvm.loop !881

bb.ak:                                            ; preds = %bb.ai
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.critedge44:                                      ; preds = %bb.aj, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  invoke void @_ZNK8facebook5velox5cache14AsyncDataCache8toStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(372) %0, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %.critedge44
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !889
  %i.da = load ptr, ptr %11, align 8, !tbaa !130
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !89
  store ptr %i.da, ptr %5, align 16, !tbaa !90
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !90
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.49, i64 36, i64 13, ptr nonnull %5)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !889
  invoke void @_ZN8facebook5velox6memory22setCacheFailureMessageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 %10)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.de = load ptr, ptr %10, align 8, !tbaa !130  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.am
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !90
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  %i.dj = load ptr, ptr %11, align 8, !tbaa !130  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !90
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.loopexit92

bb.an:                                            ; preds = %.critedge44
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.ao:                                            ; preds = %.noexc
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

bb.ap:                                            ; preds = %bb.al
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %10, align 8, !tbaa !130  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.ap
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !90
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %bb.ao
  %.pn37 = phi { ptr, i32 } [ %i.dp, %bb.ao ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %i.dq, %bb.ap ] ; 2 uses
  %i.dw = load ptr, ptr %11, align 8, !tbaa !130  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !90
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.an
  %.pn37.pn = phi { ptr, i32 } [ %i.do, %bb.an ], [ %.pn37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.as

.loopexit92:                                      ; preds = %_ZNKSt8functionIFbRN8facebook5velox6memory10AllocationEEEclES4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.not36100 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ true, %_ZNKSt8functionIFbRN8facebook5velox6memory10AllocationEEEclES4_.exit ]
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !316 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !129
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = invoke noundef i64 %i.ef(ptr noundef nonnull align 8 dereferenceable(888) %i.ec, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %.noexc.i.i unwind label %bb.ar, !inline_history !16 ; 0 uses

.noexc.i.i:                                       ; preds = %.loopexit92
  %i.eh = load i8, ptr %i.a, align 1, !tbaa !203, !range !204, !noundef !205
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.aq, label %"_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox5cache14AsyncDataCache9makeSpaceEmSt8functionIFbRNS3_6memory10AllocationEEEE3$_0Lb1EED2Ev.exit"

bb.aq:                                            ; preds = %.noexc.i.i
  %i.ej = atomicrmw sub ptr %i.f, i32 1 seq_cst, align 4 ; 0 uses
  br label %"_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox5cache14AsyncDataCache9makeSpaceEmSt8functionIFbRNS3_6memory10AllocationEEEE3$_0Lb1EED2Ev.exit"

bb.ar:                                            ; preds = %.loopexit92
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  %i.em = call ptr @__cxa_begin_catch(ptr %i.el) #22 ; 0 uses
  call void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() #22, !inline_history !17
  unreachable

"_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox5cache14AsyncDataCache9makeSpaceEmSt8functionIFbRNS3_6memory10AllocationEEEE3$_0Lb1EED2Ev.exit": ; preds = %.noexc.i.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN8facebook5velox6memory10AllocationD1Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i1 %.not36100

bb.as:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.aa, %bb.ab, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn37.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %i.cz, %bb.ak ], [ %.pn, %bb.aa ], [ %i.bo, %bb.ab ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @"_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox5cache14AsyncDataCache9makeSpaceEmSt8functionIFbRNS3_6memory10AllocationEEEE3$_0Lb1EED2Ev"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN8facebook5velox6memory10AllocationD1Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %.pn40.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK8facebook5velox5cache14AsyncDataCache14canTryAllocateEmRKNS0_6memory10AllocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !177
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %.not = icmp ugt i64 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %1, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !316  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !129
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(888) %i.f)
  %i.k = add i64 %i.j, 4095
  %i.l = lshr i64 %i.k, 12
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !316  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !129
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(888) %i.m)
  %i.r = sub i64 %i.l, %i.q
  %i.s = icmp ule i64 %i.d, %i.r
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.s, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox5cache14AsyncDataCache7backoffEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(372) %0, i32 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %2 = alloca %struct.timespec, align 8           ; 6 uses
  %3 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.b = atomicrmw add ptr %i.a, i16 1 seq_cst, align 2
  %i.c = add i16 %i.b, 1
  %i.d = zext i16 %i.c to i32
  %i.e = mul nuw nsw i32 %i.d, 4097               ; 2 uses
  %i.f = lshr i32 %i.e, 22
  %i.g = xor i32 %i.f, %i.e
  %i.h = mul i32 %i.g, 17                         ; 2 uses
  %i.i = lshr i32 %i.h, 9
  %i.j = xor i32 %i.i, %i.h
  %i.k = mul i32 %i.j, 1025                       ; 2 uses
  %i.l = lshr i32 %i.k, 2
  %i.m = xor i32 %i.l, %i.k
  %i.n = mul i32 %i.m, 129
  %i.o = and i32 %i.n, 4095
  %i.p = and i32 %1, 31
  %narrow = mul nuw nsw i32 %i.o, %i.p            ; 2 uses
  %i.q = zext nneg i32 %narrow to i64             ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.r = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #22
  %i.s = sdiv i64 %i.r, 1000000                   ; 2 uses
  %invariant.op = add nsw i64 %i.s, -1000
  %7 = load atomic i64, ptr @_ZZN8facebook5velox5cache14AsyncDataCache7backoffEiE11FB_LEM_hist acquire, align 8 ; 2 uses
  %8 = icmp sgt i64 %7, %invariant.op
  br i1 %8, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, label %bb.d

bb.a:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit
  %i.t = mul nuw nsw i64 %i.q, 1000
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store i64 0, ptr %2, align 8, !tbaa !327
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !328
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.v = call i32 @nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %2)
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.x = tail call ptr @__errno_location() #48
  %i.y = load i32, ptr %i.x, align 4, !tbaa !180
  %i.z = icmp eq i32 %i.y, 4
  br i1 %i.z, label %bb.b, label %.critedge.i, !llvm.loop !890

.critedge.i:                                      ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %.critedge.i
  ret void

bb.d:                                             ; preds = %.preheader
  %i.aa = cmpxchg ptr @_ZZN8facebook5velox5cache14AsyncDataCache7backoffEiE11FB_LEM_hist, i64 %7, i64 %i.s seq_cst seq_cst, align 8
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.e, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str, i32 noundef 933)
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.f unwind label %bb.h       ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.58, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN8facebook5velox14succinctMicrosB5cxx11Emi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 noundef %i.q, i32 noundef 2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.af = load ptr, ptr %4, align 8, !tbaa !130
  %i.ag = load i64, ptr %5, align 8, !tbaa !89
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.af, i64 noundef %i.ag)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.g
  %i.ai = load ptr, ptr %4, align 8, !tbaa !130   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %6
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ak = load i64, ptr %6, align 8, !tbaa !90
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.f, %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.j:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !130   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %6
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.j
  %i.ar = load i64, ptr %6, align 8, !tbaa !90
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.i
  %.pn = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.ao, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.am, %bb.h ]
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn.pn

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.preheader
  %9 = icmp eq i32 %narrow, 0
  br i1 %9, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, label %bb.a
}

declare void @_ZN8facebook5velox6memory22setCacheFailureMessageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef align 8) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox5cache14AsyncDataCache8toStringB5cxx11Eb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(372) %1, i1 noundef zeroext %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.facebook::velox::cache::CacheStats", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = load ptr, ptr %1, align 8, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"struct.facebook::velox::cache::CacheStats") align 8 %3, ptr noundef nonnull align 8 dereferenceable(372) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.63, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNK8facebook5velox5cache10CacheStats8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(192) %3)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = load ptr, ptr %5, align 8, !tbaa !130
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !89
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.l ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.57, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.64, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !316  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !129
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(888) %i.m)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.q)
          to label %_ZNSolsEm.exit unwind label %bb.l ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %bb.d
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.65, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZNSolsEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.u = load atomic i64, ptr %i.t seq_cst, align 8
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef %i.u)
          to label %_ZNSolsEm.exit19 unwind label %bb.l

_ZNSolsEm.exit19:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.57, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %_ZNSolsEm.exit19
  %i.x = load ptr, ptr %5, align 8, !tbaa !130    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !90
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %2, label %bb.e, label %bb.q

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.66, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !316 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !129
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(888) %i.ad)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.ah = load ptr, ptr %6, align 8, !tbaa !130
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !89
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.ah, i64 noundef %i.aj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit22 unwind label %bb.n ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit22: ; preds = %bb.f
  %i.al = load ptr, ptr %6, align 8, !tbaa !130   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit22
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !90
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !143
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.q, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.67, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !143
  invoke void @_ZNK8facebook5velox5cache8SsdCache8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(133) %i.at)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.au = load ptr, ptr %7, align 8, !tbaa !130
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !89
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.au, i64 noundef %i.aw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27 unwind label %bb.p ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27: ; preds = %bb.h
  %i.ay = load ptr, ptr %7, align 8, !tbaa !130   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !90
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.j:                                             ; preds = %bb.g, %bb.e, %bb.b
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.l:                                             ; preds = %_ZNSolsEm.exit19, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %_ZNSolsEm.exit, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %5, align 8, !tbaa !130   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.l
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !90
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.k ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.bg, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.body

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

end_hunk_1
