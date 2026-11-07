Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/CPUThreadPoolExecutor?download=true
inline.NumInlined: 4138
inline.NumDeleted: 2071
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN5folly6detail18SingleElementQueueINS_21CPUThreadPoolExecutor7CPUTaskESt6atomicE11enqueueImplEjRS4_IjEbOS3_NS5_10ImplByMoveE:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.r = load <2 x ptr>, ptr %i.o, align 8, !tbaa !758
  store ptr null, ptr %i.q, align 16, !tbaa !753
  store <2 x ptr> %i.r, ptr %i.n, align 8, !tbaa !758
  store ptr null, ptr %i.o, align 8, !tbaa !5918
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !5928
  store i64 %i.u, ptr %i.s, align 8, !tbaa !5928
  store ptr null, ptr %i.t, align 8, !tbaa !5928
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.v, ptr noundef nonnull align 16 dereferenceable(16) %i.w, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.z = load i64, ptr %i.y, align 16, !tbaa !5920
  store i64 %i.z, ptr %i.x, align 16, !tbaa !5920
  %i.aa = load atomic i32, ptr %i.a acquire, align 16 ; 2 uses
  %i.ab = or disjoint i32 %i.b, 1                 ; 2 uses
  %i.ac = shl i32 %i.ab, 6                        ; 2 uses
  %i.ad = and i32 %i.aa, 63                       ; 2 uses
  %i.ae = tail call i32 @llvm.usub.sat.i32(i32 %i.ad, i32 1)
  %i.af = or disjoint i32 %i.ae, %i.ac
  %i.ag = cmpxchg ptr %i.a, i32 %i.aa, i32 %i.af seq_cst seq_cst, align 4 ; 2 uses
  %i.ah = extractvalue { i32, i1 } %i.ag, 1
  br i1 %i.ah, label %._crit_edge.i, label %_ZN5folly6detail9futexWakeISt6atomicIjEEEiPKT_ij.exit.i

._crit_edge.i:                                    ; preds = %_ZN5folly6detail9futexWakeISt6atomicIjEEEiPKT_ij.exit.i, %_ZN5folly21CPUThreadPoolExecutor7CPUTaskC2EOS1_.exit
  %.lcssa17.i = phi i32 [ %i.ad, %_ZN5folly21CPUThreadPoolExecutor7CPUTaskC2EOS1_.exit ], [ %i.an, %_ZN5folly6detail9futexWakeISt6atomicIjEEEiPKT_ij.exit.i ]
  %.not.i = icmp eq i32 %.lcssa17.i, 0
  br i1 %.not.i, label %_ZN5folly6detail13TurnSequencerISt6atomicE12completeTurnEj.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.ai = and i32 %i.ab, 31
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 2147483647, i32 noundef %i.aj)
          to label %_ZN5folly6detail13TurnSequencerISt6atomicE12completeTurnEj.exit unwind label %bb.d ; 0 uses

_ZN5folly6detail9futexWakeISt6atomicIjEEEiPKT_ij.exit.i: ; preds = %_ZN5folly21CPUThreadPoolExecutor7CPUTaskC2EOS1_.exit, %_ZN5folly6detail9futexWakeISt6atomicIjEEEiPKT_ij.exit.i
  %i.al = phi { i32, i1 } [ %i.aq, %_ZN5folly6detail9futexWakeISt6atomicIjEEEiPKT_ij.exit.i ], [ %i.ag, %_ZN5folly21CPUThreadPoolExecutor7CPUTaskC2EOS1_.exit ]
  %i.am = extractvalue { i32, i1 } %i.al, 0       ; 2 uses
  %i.an = and i32 %i.am, 63                       ; 2 uses
  %i.ao = tail call i32 @llvm.usub.sat.i32(i32 %i.an, i32 1)
  %i.ap = or disjoint i32 %i.ao, %i.ac
  %i.aq = cmpxchg ptr %i.a, i32 %i.am, i32 %i.ap seq_cst seq_cst, align 4 ; 2 uses
  %i.ar = extractvalue { i32, i1 } %i.aq, 1
  br i1 %i.ar, label %._crit_edge.i, label %_ZN5folly6detail9futexWakeISt6atomicIjEEEiPKT_ij.exit.i

bb.d:                                             ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #40
  unreachable

_ZN5folly6detail13TurnSequencerISt6atomicE12completeTurnEj.exit: ; preds = %._crit_edge.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN5folly6detail13TurnSequencerISt6atomicE14tryWaitForTurnINSt6chrono3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEENS3_13TryWaitResultEjRS2_IjEbPKNS5_10time_pointIT_T0_EE(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !17210 {
bb.a:
  %5 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %i.a = load atomic i32, ptr %2 monotonic, align 4 ; 5 uses
  %i.b = icmp eq i32 %i.a, 0                      ; 4 uses
  %i.c = shl i32 %1, 6                            ; 5 uses
  %i.d = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  %i.e = and i32 %i.d, -64                        ; 3 uses
  %i.f = icmp eq i32 %i.e, %i.c
  br i1 %i.f, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread141, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %or.cond = or i1 %3, %i.b
  %i.g = zext i32 %i.a to i64
  %i.h = select i1 %or.cond, i64 20000, i64 %i.g  ; 2 uses
  %.not67 = icmp eq ptr %4, null
  %i.i = and i32 %1, 31
  %i.j = shl nuw i32 1, %i.i                      ; 2 uses
  br i1 %.not67, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %i.k = phi i32 [ %i.z, %bb.g ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.l = phi i32 [ %i.y, %bb.g ], [ %i.d, %.lr.ph ] ; 5 uses
  %.049112.us = phi i32 [ %i.x, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %.050111.us = phi i64 [ %spec.select.us, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = sub i32 %i.c, %i.k                       ; 2 uses
  %.not.us = icmp ult i32 %i.m, 2147483647
  br i1 %.not.us, label %bb.b, label %_ZNSt13__atomic_baseIjE21compare_exchange_weakERjjSt12memory_order.exit

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.n = tail call noundef i64 @llvm.x86.rdtsc()  ; 2 uses
  %i.o = icmp eq i32 %.049112.us, 0               ; 2 uses
  %spec.select.us = select i1 %i.o, i64 %i.n, i64 %.050111.us ; 2 uses
  %i.p = add i64 %.050111.us, %i.h
  %i.q = icmp ult i64 %i.n, %i.p
  %or.cond118 = select i1 %i.o, i1 true, i1 %i.q
  br i1 %or.cond118, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = and i32 %i.l, 63
  %i.s = lshr exact i32 %i.m, 6                   ; 2 uses
  %.not65.us = icmp samesign ugt i32 %i.s, %i.r
  br i1 %.not65.us, label %bb.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us

bb.d:                                             ; preds = %bb.c
  %.sroa.speculated.i.us = tail call i32 @llvm.umin.i32(i32 %i.s, i32 63)
  %i.t = or disjoint i32 %.sroa.speculated.i.us, %i.k ; 3 uses
  %.not66.us = icmp eq i32 %i.l, %i.t
  br i1 %.not66.us, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = cmpxchg ptr %0, i32 %i.l, i32 %i.t seq_cst seq_cst, align 4
  %i.v = extractvalue { i32, i1 } %i.u, 1
  br i1 %i.v, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us, label %bb.g

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us: ; preds = %bb.e, %bb.d, %bb.c
  %.047.us = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.c ], [ %i.t, %bb.e ]
  %i.w = invoke noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %0, i32 noundef %.047.us, ptr noundef null, ptr noundef null, i32 noundef %i.j)
          to label %bb.g unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.f:                                             ; preds = %bb.b
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !6178
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us, %bb.e
  %i.x = add i32 %.049112.us, 1                   ; 2 uses
  %i.y = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  %i.z = and i32 %i.y, -64                        ; 2 uses
  %i.aa = icmp eq i32 %i.z, %i.c
  br i1 %i.aa, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit, label %.lr.ph.split.us, !llvm.loop !17209

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.n
  %i.ab = phi i32 [ %i.ar, %bb.n ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.ac = phi i32 [ %i.aq, %bb.n ], [ %i.d, %.lr.ph ] ; 5 uses
  %.049112 = phi i32 [ %i.ap, %bb.n ], [ 0, %.lr.ph ] ; 2 uses
  %.050111 = phi i64 [ %spec.select, %bb.n ], [ 0, %.lr.ph ] ; 2 uses
  %i.ad = sub i32 %i.c, %i.ab                     ; 2 uses
  %.not = icmp ult i32 %i.ad, 2147483647
  br i1 %.not, label %bb.h, label %_ZNSt13__atomic_baseIjE21compare_exchange_weakERjjSt12memory_order.exit

bb.h:                                             ; preds = %.lr.ph.split
  %i.ae = call noundef i64 @llvm.x86.rdtsc()      ; 2 uses
  %i.af = icmp eq i32 %.049112, 0                 ; 2 uses
  %spec.select = select i1 %i.af, i64 %i.ae, i64 %.050111 ; 2 uses
  %i.ag = add i64 %.050111, %i.h
  %i.ah = icmp ult i64 %i.ae, %i.ag
  %or.cond120 = select i1 %i.af, i1 true, i1 %i.ah
  br i1 %or.cond120, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !6178
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.ai = and i32 %i.ac, 63
  %i.aj = lshr exact i32 %i.ad, 6                 ; 2 uses
  %.not65 = icmp samesign ugt i32 %i.aj, %i.ai
  br i1 %.not65, label %bb.k, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread

bb.k:                                             ; preds = %bb.j
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %i.aj, i32 63)
  %i.ak = or disjoint i32 %.sroa.speculated.i, %i.ab ; 3 uses
  %.not66 = icmp eq i32 %i.ac, %i.ak
  br i1 %.not66, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = cmpxchg ptr %0, i32 %i.ac, i32 %i.ak seq_cst seq_cst, align 4
  %i.am = extractvalue { i32, i1 } %i.al, 1
  br i1 %i.am, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread, label %bb.n

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread: ; preds = %bb.l, %bb.j, %bb.k
  %.047 = phi i32 [ %i.ac, %bb.k ], [ %i.ac, %bb.j ], [ %i.ak, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %4, align 8, !tbaa !6022 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %5, align 8
  %i.an = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 9223372036854775807
  %. = select i1 %i.an, ptr null, ptr %5
  %i.ao = invoke noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %0, i32 noundef %.047, ptr noundef null, ptr noundef %., i32 noundef %i.j)
          to label %bb.m unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %.not68 = icmp eq i32 %i.ao, 3
  br i1 %.not68, label %_ZNSt13__atomic_baseIjE21compare_exchange_weakERjjSt12memory_order.exit, label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.l, %bb.m
  %i.ap = add i32 %.049112, 1                     ; 2 uses
  %i.aq = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  %i.ar = and i32 %i.aq, -64                      ; 2 uses
  %i.as = icmp eq i32 %i.ar, %i.c
  br i1 %i.as, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit, label %.lr.ph.split, !llvm.loop !17209

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit: ; preds = %bb.n, %bb.g
  %.050.lcssa = phi i64 [ %spec.select.us, %bb.g ], [ %spec.select, %bb.n ]
  %.049.lcssa = phi i32 [ %i.x, %bb.g ], [ %i.ap, %bb.n ] ; 2 uses
  %or.cond4 = select i1 %3, i1 true, i1 %i.b
  br i1 %or.cond4, label %bb.o, label %_ZNSt13__atomic_baseIjE21compare_exchange_weakERjjSt12memory_order.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread141: ; preds = %bb.a
  %or.cond4144 = select i1 %3, i1 true, i1 %i.b
  br i1 %or.cond4144, label %bb.q, label %_ZNSt13__atomic_baseIjE21compare_exchange_weakERjjSt12memory_order.exit

bb.o:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit
  %i.at = icmp eq i32 %.049.lcssa, 0
  br i1 %i.at, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = call noundef i64 @llvm.x86.rdtsc()
  %6 = sub i64 %i.au, %.050.lcssa
  %7 = trunc i64 %6 to i32
  %8 = shl i32 %7, 1
  %i.av = icmp ugt i32 %.049.lcssa, 19999
  br i1 %i.av, label %.thread103, label %bb.q

bb.q:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread141, %bb.o, %bb.p
  %9 = phi i32 [ %8, %bb.p ], [ 0, %bb.o ], [ 0, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread141 ]
  %i.aw = call i32 @llvm.umax.i32(i32 %9, i32 200)
  %i.ax = call i32 @llvm.umin.i32(i32 %i.aw, i32 20000)
  br label %.thread103

.thread103:                                       ; preds = %bb.p, %bb.q
  %.0 = phi i32 [ %i.ax, %bb.q ], [ 200, %bb.p ]  ; 2 uses
  br i1 %i.b, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.thread103
  store atomic i32 %.0, ptr %2 seq_cst, align 4
  br label %_ZNSt13__atomic_baseIjE21compare_exchange_weakERjjSt12memory_order.exit

bb.s:                                             ; preds = %.thread103
  %i.ay = sub i32 %.0, %i.a
  %i.az = sdiv i32 %i.ay, 8
  %i.ba = add i32 %i.az, %i.a
  %i.bb = cmpxchg weak ptr %2, i32 %i.a, i32 %i.ba seq_cst seq_cst, align 4 ; 0 uses
  br label %_ZNSt13__atomic_baseIjE21compare_exchange_weakERjjSt12memory_order.exit

_ZNSt13__atomic_baseIjE21compare_exchange_weakERjjSt12memory_order.exit: ; preds = %.lr.ph.split, %bb.m, %.lr.ph.split.us, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread141, %bb.s, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit, %bb.r
  %.5 = phi i32 [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit ], [ 0, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread141 ], [ 1, %.lr.ph.split.us ], [ 1, %.lr.ph.split ], [ 2, %bb.m ]
  ret i32 %.5

.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  call void @__clang_call_terminate(ptr %i.bc) #40
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly18QueueFullExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 comdat align 2 !guid !17211 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #42
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail18SingleElementQueueINS_21CPUThreadPoolExecutor7CPUTaskESt6atomicE11dequeueImplEjRS4_IjEbRS3_NS5_10ImplByMoveE(ptr noundef nonnull align 16 dereferenceable(132) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext %3, ptr noundef nonnull align 16 dereferenceable(120) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !17212 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.b = shl i32 %1, 1                            ; 2 uses
  %i.c = or disjoint i32 %i.b, 1
  %i.d = tail call noundef i32 @_ZN5folly6detail13TurnSequencerISt6atomicE14tryWaitForTurnINSt6chrono3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEENS3_13TryWaitResultEjRS2_IjEbPKNS5_10time_pointIT_T0_EE(ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.c, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext %3, ptr noundef null) #30 ; 0 uses
  %i.e = tail call noundef nonnull align 16 dereferenceable(112) ptr @_ZN5folly18ThreadPoolExecutor4TaskaSEOS1_(ptr noundef nonnull align 16 dereferenceable(120) %4, ptr noundef nonnull align 16 dereferenceable(120) %0) #30 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i64, ptr %i.f, align 16, !tbaa !5920
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i64 %i.g, ptr %i.h, align 16, !tbaa !5920
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !5928 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !757  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = tail call noundef i64 %i.l(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.m, ptr noundef null) #30, !inline_history !524 ; 0 uses
  br label %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 80) #42
  br label %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i.i, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !753 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.q, align 8, !tbaa !728
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !729
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !731
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30, !call_target !1265, !inline_history !525
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !731
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30, !call_target !1266, !inline_history !525
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !755
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !5929
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.ad, %bb.h ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !5930

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e, %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !757 ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5folly6detail18SingleElementQueueINS_21CPUThreadPoolExecutor7CPUTaskESt6atomicE15destroyContentsEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.ah = tail call noundef i64 %i.ag(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(132) %0, ptr noundef null) #30, !inline_history !526 ; 0 uses
  br label %_ZN5folly6detail18SingleElementQueueINS_21CPUThreadPoolExecutor7CPUTaskESt6atomicE15destroyContentsEv.exit

_ZN5folly6detail18SingleElementQueueINS_21CPUThreadPoolExecutor7CPUTaskESt6atomicE15destroyContentsEv.exit: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %bb.j
  %i.ai = load atomic i32, ptr %i.a acquire, align 16 ; 2 uses
  %i.aj = add i32 %i.b, 2                         ; 2 uses
  %i.ak = shl i32 %i.aj, 6                        ; 2 uses
  %i.al = and i32 %i.ai, 63                       ; 2 uses
  %i.am = tail call i32 @llvm.usub.sat.i32(i32 %i.al, i32 1)
  %i.an = or disjoint i32 %i.am, %i.ak
  %i.ao = cmpxchg ptr %i.a, i32 %i.ai, i32 %i.an seq_cst seq_cst, align 4 ; 2 uses
  %i.ap = extractvalue { i32, i1 } %i.ao, 1
  br i1 %i.ap, label %._crit_edge.i, label %_ZN5folly6detail9futexWakeISt6atomicIjEEEiPKT_ij.exit.i

._crit_edge.i:                                    ; preds = %_ZN5folly6detail9futexWakeISt6atomicIjEEEiPKT_ij.exit.i, %_ZN5folly6detail18SingleElementQueueINS_21CPUThreadPoolExecutor7CPUTaskESt6atomicE15destroyContentsEv.exit
  %.lcssa17.i = phi i32 [ %i.al, %_ZN5folly6detail18SingleElementQueueINS_21CPUThreadPoolExecutor7CPUTaskESt6atomicE15destroyContentsEv.exit ], [ %i.av, %_ZN5folly6detail9futexWakeISt6atomicIjEEEiPKT_ij.exit.i ]
  %.not.i = icmp eq i32 %.lcssa17.i, 0
  br i1 %.not.i, label %_ZN5folly6detail13TurnSequencerISt6atomicE12completeTurnEj.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.aq = and i32 %i.aj, 30
  %i.ar = shl nuw nsw i32 1, %i.aq
  %i.as = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 2147483647, i32 noundef %i.ar)
          to label %_ZN5folly6detail13TurnSequencerISt6atomicE12completeTurnEj.exit unwind label %bb.l ; 0 uses

_ZN5folly6detail9futexWakeISt6atomicIjEEEiPKT_ij.exit.i: ; preds = %_ZN5folly6detail18SingleElementQueueINS_21CPUThreadPoolExecutor7CPUTaskESt6atomicE15destroyContentsEv.exit, %_ZN5folly6detail9futexWakeISt6atomicIjEEEiPKT_ij.exit.i
  %i.at = phi { i32, i1 } [ %i.ay, %_ZN5folly6detail9futexWakeISt6atomicIjEEEiPKT_ij.exit.i ], [ %i.ao, %_ZN5folly6detail18SingleElementQueueINS_21CPUThreadPoolExecutor7CPUTaskESt6atomicE15destroyContentsEv.exit ]
  %i.au = extractvalue { i32, i1 } %i.at, 0       ; 2 uses
  %i.av = and i32 %i.au, 63                       ; 2 uses
  %i.aw = tail call i32 @llvm.usub.sat.i32(i32 %i.av, i32 1)
  %i.ax = or disjoint i32 %i.aw, %i.ak
  %i.ay = cmpxchg ptr %i.a, i32 %i.au, i32 %i.ax seq_cst seq_cst, align 4 ; 2 uses
  %i.az = extractvalue { i32, i1 } %i.ay, 1
  br i1 %i.az, label %._crit_edge.i, label %_ZN5folly6detail9futexWakeISt6atomicIjEEEiPKT_ij.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #40
  unreachable

_ZN5folly6detail13TurnSequencerISt6atomicE12completeTurnEj.exit: ; preds = %._crit_edge.i, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 16 dereferenceable(112) ptr @_ZN5folly18ThreadPoolExecutor4TaskaSEOS1_(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !guid !17216 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !757  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 %i.b(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef null) #30, !inline_history !17213 ; 0 uses
  br label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i

_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i: ; preds = %bb.b, %bb.a
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5folly8FunctionIFvvEEaSEOS2_.exit, label %bb.c, !prof !5930

bb.c:                                             ; preds = %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !757  ; 2 uses
  %.not.i9.i = icmp eq ptr %i.e, null
  br i1 %.not.i9.i, label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef i64 %i.e(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %0) #30, !inline_history !17213 ; 0 uses
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !757
  br label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i

_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i: ; preds = %bb.d, %bb.c
  %i.g = phi ptr [ null, %bb.c ], [ %.pre.i, %bb.d ]
  store ptr %i.g, ptr %i.a, align 8, !tbaa !757
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !759
end_hunk_0
