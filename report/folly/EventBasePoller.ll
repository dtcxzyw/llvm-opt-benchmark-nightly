Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/EventBasePoller?download=true
inline.NumInlined: 1064
inline.NumDeleted: 632
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl9startLoopEvEUlvE_EEEEE6_M_runEv:bb.a
  %i.hg = phi ptr [ %i.hb, %bb.aq ], [ %.pre44.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 4 uses
  %i.hh = phi ptr [ %i.hd, %bb.aq ], [ %i.ep, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %.1.i.i.i.i.i.i.i = phi ptr [ %i.hf, %bb.aq ], [ %.012.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i.i.i.i.i.i.i, i64 8
  %i.hj = load ptr, ptr %i.bi, align 8, !tbaa !325
  %.not.i.i31.i.i.i.i.i.i.i = icmp eq ptr %i.hg, %i.hj
  br i1 %.not.i.i31.i.i.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store ptr %i.hh, ptr %i.hg, align 8, !tbaa !6913
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store ptr %i.hk, ptr %i.bh, align 8, !tbaa !6986
  br label %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE9push_backEOS4_.exit.i.i.i.i.i.i.i.backedge

bb.at:                                            ; preds = %bb.ar
  %i.hl = load ptr, ptr %i.bg, align 8, !tbaa !324 ; 4 uses
  %i.hm = ptrtoint ptr %i.hg to i64
  %i.hn = ptrtoint ptr %i.hl to i64               ; 2 uses
  %i.ho = sub i64 %i.hm, %i.hn                    ; 5 uses
  %i.hp = icmp eq i64 %i.ho, 9223372036854775800
  br i1 %i.hp, label %bb.au, label %_ZNKSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #34
  unreachable

_ZNKSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at
  %i.hq = ashr exact i64 %i.ho, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hq, i64 1)
  %i.hr = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i, %i.hq ; 2 uses
  %i.hs = icmp ult i64 %i.hr, %i.hq
  %i.ht = call i64 @llvm.umin.i64(i64 %i.hr, i64 1152921504606846975)
  %i.hu = select i1 %i.hs, i64 1152921504606846975, i64 %i.ht ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.hu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i.i)
  %i.hv = shl nuw nsw i64 %i.hu, 3
  %i.hw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hv) #35 ; 4 uses
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 %i.ho ; 2 uses
  store ptr %i.hh, ptr %i.hx, align 8, !tbaa !6913
  %i.hy = icmp sgt i64 %i.ho, 0
  br i1 %i.hy, label %bb.av, label %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i

bb.av:                                            ; preds = %_ZNKSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hw, ptr align 8 %i.hl, i64 %i.ho, i1 false)
  br label %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.av, %_ZNKSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %.not.i17.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i
  %i.ia = load ptr, ptr %i.bi, align 8, !tbaa !325
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = sub i64 %i.ib, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.ic) #36
  br label %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.aw, %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i
  store ptr %i.hw, ptr %i.bg, align 8, !tbaa !324
  store ptr %i.hz, ptr %i.bh, align 8, !tbaa !6986
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.hu
  store ptr %i.id, ptr %i.bi, align 8, !tbaa !325
  br label %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE9push_backEOS4_.exit.i.i.i.i.i.i.i.backedge

_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE9push_backEOS4_.exit.i.i.i.i.i.i.i.backedge: ; preds = %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i.i.i.i.i, %bb.as
  br label %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE9push_backEOS4_.exit.i.i.i.i.i.i.i, !llvm.loop !6979

bb.ax:                                            ; preds = %_ZNSt6vectorIPN5folly6detail15EventBasePoller6HandleESaIS4_EE5clearEv.exit.i.i.i.i.i.i.i
  %i.ie = load ptr, ptr %i.be, align 8, !tbaa !3814 ; 2 uses
  %.not.i.i32.i.i.i.i.i.i.i = icmp eq ptr %.sroa.036.0.i.i.i.i.i.i.i, %i.ie
  br i1 %.not.i.i32.i.i.i.i.i.i.i, label %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl17handleReadyEventsEv.exit.i.i.i.i.i.i, label %_ZSt8_DestroyIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ax
  store ptr %i.ie, ptr %i.bf, align 8, !tbaa !3812
  br label %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl17handleReadyEventsEv.exit.i.i.i.i.i.i

_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl17handleReadyEventsEv.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, %bb.ax
  %i.if = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25, !noalias !6987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !6987
  %i.ig = load atomic i32, ptr %i.bj acquire, align 8, !noalias !6987 ; 4 uses
  store i32 %i.ig, ptr %i.b, align 4, !tbaa !257, !noalias !6987
  %i.ih = and i32 %i.ig, -1312
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %bb.ay, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i, !prof !266

bb.ay:                                            ; preds = %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl17handleReadyEventsEv.exit.i.i.i.i.i.i
  %i.ij = or disjoint i32 %i.ig, 128
  %i.ik = cmpxchg ptr %i.bj, i32 %i.ig, i32 %i.ij seq_cst seq_cst, align 4, !noalias !6987 ; 2 uses
  %i.il = extractvalue { i32, i1 } %i.ik, 1
  br i1 %i.il, label %bb.az, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !6988

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ay
  %i.im = extractvalue { i32, i1 } %i.ik, 0
  store i32 %i.im, ptr %i.b, align 4, !noalias !6987
  br label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl17handleReadyEventsEv.exit.i.i.i.i.i.i
  %i.in = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.bj, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %1), !noalias !6987 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !6987
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !6987
  %.val.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !3814
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !3812
  %i.io = ptrtoint ptr %.val5.i.i.i.i.i.i to i64
  %i.ip = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.iq = sub i64 %i.io, %i.ip                    ; 2 uses
  %i.ir = lshr exact i64 %i.iq, 3
  %i.is = trunc i64 %i.ir to i32                  ; 2 uses
  %i.it = sub nsw i64 %i.bz, %.sroa.014.0.ph.i.i.i.i.i.i ; 3 uses
  %i.iu = sub nsw i64 %i.if, %i.bz                ; 3 uses
  %i.iv = load i32, ptr %i.bk, align 8, !tbaa !257
  %.sroa.speculated10.i.i.i.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.is, i32 %i.iv)
  store i32 %.sroa.speculated10.i.i.i.i.i.i.i, ptr %i.bk, align 8, !tbaa !260
  %i.iw = load i32, ptr %i.bl, align 4, !tbaa !257
  %.sroa.speculated.i.i.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.iw, i32 %i.is)
  store i32 %.sroa.speculated.i.i.i.i.i.i.i, ptr %i.bl, align 4, !tbaa !261
  %sext.i.i.i.i.i.i = shl i64 %i.iq, 29
  %i.ix = ashr i64 %sext.i.i.i.i.i.i, 32
  %i.iy = load <2 x i64>, ptr %i.bm, align 8, !tbaa !262
  %i.iz = insertelement <2 x i64> <i64 poison, i64 1>, i64 %i.ix, i64 0
  %i.ja = add <2 x i64> %i.iy, %i.iz
  store <2 x i64> %i.ja, ptr %i.bm, align 8, !tbaa !262
  %i.jb = load i64, ptr %i.bn, align 8, !tbaa !263
  %i.jc = add nsw i64 %i.jb, %i.it
  store i64 %i.jc, ptr %i.bn, align 8, !tbaa !263
  %i.jd = load i64, ptr %i.bo, align 8, !tbaa !262
  %.sroa.speculated33.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %i.it, i64 %i.jd)
  store i64 %.sroa.speculated33.i.i.i.i.i.i.i, ptr %i.bo, align 8, !tbaa !262
  %i.je = load i64, ptr %i.bp, align 8, !tbaa !262
  %.sroa.speculated30.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.je, i64 %i.it)
  store i64 %.sroa.speculated30.i.i.i.i.i.i.i, ptr %i.bp, align 8, !tbaa !262
  %i.jf = load i64, ptr %i.bq, align 8, !tbaa !263
  %i.jg = add nsw i64 %i.jf, %i.iu
  store i64 %i.jg, ptr %i.bq, align 8, !tbaa !263
  %i.jh = load i64, ptr %i.br, align 8, !tbaa !262
  %.sroa.speculated21.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %i.iu, i64 %i.jh)
  store i64 %.sroa.speculated21.i.i.i.i.i.i.i, ptr %i.br, align 8, !tbaa !262
  %i.ji = load i64, ptr %i.bs, align 8, !tbaa !262
  %.sroa.speculated18.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ji, i64 %i.iu)
  store i64 %.sroa.speculated18.i.i.i.i.i.i.i, ptr %i.bs, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.jj = atomicrmw and ptr %i.bj, i32 -401 seq_cst, align 4 ; 2 uses
  %i.jk = and i32 %i.jj, -401
  store i32 %i.jk, ptr %i.a, align 4, !tbaa !257
  %i.jl = and i32 %i.jj, 15
  %.not.i.i.i.i.i9.i.i.i.i.i.i = icmp eq i32 %i.jl, 0
  br i1 %.not.i.i.i.i.i9.i.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail15EventBasePoller5StatsENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE1ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit.i.i.i.i.i.i, label %bb.ba, !prof !266

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bj, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail15EventBasePoller5StatsENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE1ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit.i.i.i.i.i.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jm = landingpad { ptr, i32 }
          catch ptr null
  %i.jn = extractvalue { ptr, i32 } %i.jm, 0
  call void @__clang_call_terminate(ptr %i.jn) #33
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail15EventBasePoller5StatsENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE1ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.outer.i.i.i.i.i.i, !llvm.loop !6972

_ZNSt6thread8_InvokerISt5tupleIJZN5folly6detail12_GLOBAL__N_119EventBasePollerImpl9startLoopEvEUlvE_EEEclEv.exit: ; preds = %bb.j
  ret void
}

declare noundef zeroext i1 @_ZN5folly13setThreadNameENS_5RangeIPKcEE(ptr, ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #17

declare void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #22 {
bb.a:
  %.fr31 = freeze ptr %1                          ; 3 uses
  %.fr30 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr30 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr31 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr30, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph55

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEET_SH_SH_T0_.exit"
  %i.h = icmp eq i64 %i.dl, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph55, !llvm.loop !6989

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i29.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.eo, %bb.b ] ; 2 uses
  %storemerge27.lcssa = phi ptr [ %.fr31, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i29.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i29.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.ar, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3813 ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.038.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.038.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !3813
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !3813
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val2.i.i.us.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !319
  %i.ad = getelementptr i8, ptr %i.ab, i64 16
  %.val3.i.i.us.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !319
  %i.ae = icmp ugt ptr %.val2.i.i.us.i.i.i, %.val3.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %spec.select.i.us.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !3813
  %i.ah = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.038.i.us.i.i.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !3813
  %i.ai = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ai, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !6990

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.aj = getelementptr i8, ptr %i.t, i64 16
  %.val16.val.i.i.us.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !319
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.06.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.097.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.097.in.i.i.us.i.i.i = add nsw i64 %.06.i.i.us.i.i.i, -1
  %.097.i.i.us.i.i.i = sdiv i64 %.097.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.097.i.i.us.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !3813 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %.val2.i.i.i.us.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !319
  %i.an = icmp ugt ptr %.val2.i.i.i.us.i.i.i, %.val16.val.i.i.us.i.i.i
  br i1 %i.an, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.06.i.i.us.i.i.i
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !3813
  %i.ap = icmp sgt i64 %.097.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.ap, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i", !llvm.loop !6991

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i": ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.097.i.i.us.i.i.i, %bb.d ], [ %.06.i.i.us.i.i.i, %bb.c ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.aq, align 8, !tbaa !3813
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.ar = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !6992

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bu, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.09.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !3813 ; 2 uses
  %i.au = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.av = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.ay
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !3813
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !3813
  %i.bc = getelementptr i8, ptr %i.ba, i64 16
  %.val2.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !319
  %i.bd = getelementptr i8, ptr %i.bb, i64 16
  %.val3.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !319
  %i.be = icmp ugt ptr %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.be, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %spec.select.i.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !3813
  %i.bh = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.038.i.i.i.i
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !3813
  %i.bi = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !6990

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = load ptr, ptr %i.q, align 8, !tbaa !3813
  store ptr %i.bk, ptr %i.r, align 8, !tbaa !3813
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bl = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.bm = getelementptr i8, ptr %i.at, i64 16
  %.val16.val.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !tbaa !319
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.097.i.i.i.i.i, %bb.h ] ; 3 uses
  %.097.in.i.i.i.i.i = add nsw i64 %.06.i.i.i.i.i, -1
  %.097.i.i.i.i.i = sdiv i64 %.097.in.i.i.i.i.i, 2 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.097.i.i.i.i.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !3813 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.bp, align 8, !tbaa !319
  %i.bq = icmp ugt ptr %.val2.i.i.i.i.i.i, %.val16.val.i.i.i.i.i
  br i1 %i.bq, label %bb.h, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.06.i.i.i.i.i
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !3813
  %i.bs = icmp sgt i64 %.097.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bs, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i", !llvm.loop !6991

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.06.i.i.i.i.i, %bb.g ], [ %.097.i.i.i.i.i, %bb.h ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.at, ptr %i.bt, align 8, !tbaa !3813
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bu = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !6992

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i"
  %.sroa.0.02.i.i = phi ptr [ %i.bv, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i" ], [ %storemerge27.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_RT0_.exit.i.i" ]
  %i.bv = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8 ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !3813 ; 2 uses
  %i.bx = load ptr, ptr %.fr30, align 8, !tbaa !3813
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !3813
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.by, %i.a                     ; 3 uses
  %i.ca = ashr exact i64 %i.bz, 3                 ; 3 uses
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = icmp sgt i64 %i.ca, 2
  br i1 %i.cd, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.038.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ce = shl i64 %.038.i.i.i20.i, 1              ; 2 uses
  %i.cf = add i64 %i.ce, 2                        ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.cf
  %i.ch = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.ch
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !3813
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !3813
  %i.cl = getelementptr i8, ptr %i.cj, i64 16
  %.val2.i.i.i.i21.i = load ptr, ptr %i.cl, align 8, !tbaa !319
  %i.cm = getelementptr i8, ptr %i.ck, i64 16
  %.val3.i.i.i.i22.i = load ptr, ptr %i.cm, align 8, !tbaa !319
  %i.cn = icmp ugt ptr %.val2.i.i.i.i21.i, %.val3.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.cn, i64 %i.ch, i64 %i.cf ; 4 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %spec.select.i.i.i23.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !3813
  %i.cq = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.038.i.i.i20.i
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !3813
  %i.cr = icmp slt i64 %spec.select.i.i.i23.i, %i.cc
  br i1 %i.cr, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i, !llvm.loop !6990

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.cs = and i64 %i.bz, 8
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cu = add nsw i64 %i.ca, -2
  %i.cv = ashr exact i64 %i.cu, 1
  %i.cw = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cv
  br i1 %i.cw, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.cx = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.cy = or disjoint i64 %i.cx, 1                ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !3813
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.da, ptr %i.db, align 8, !tbaa !3813
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i4.i.i.i = phi i64 [ %i.cy, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %i.dc = getelementptr i8, ptr %i.bw, i64 16
  %.val16.val.i.i.i.i14.i = load ptr, ptr %i.dc, align 8, !tbaa !319
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.06.i.i.i.i15.i = phi i64 [ %.1.i4.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.097.i.i56.i.i.i, %bb.l ] ; 3 uses
  %.097.in.i.i.i.i16.i = add nsw i64 %.06.i.i.i.i15.i, -1
  %.097.i.i56.i.i.i = lshr i64 %.097.in.i.i.i.i16.i, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.097.i.i56.i.i.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !3813 ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 16
  %.val2.i.i.i.i.i17.i = load ptr, ptr %i.df, align 8, !tbaa !319
  %i.dg = icmp ugt ptr %.val2.i.i.i.i.i17.i, %.val16.val.i.i.i.i14.i
  br i1 %i.dg, label %bb.l, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.06.i.i.i.i15.i
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !3813
  %.not7.i.i.i = icmp eq i64 %.097.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i", label %bb.k, !llvm.loop !6991

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i": ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.j ], [ %.06.i.i.i.i15.i, %bb.k ], [ 0, %bb.l ]
  %i.di = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.i.i18.i
  store ptr %i.bw, ptr %i.di, align 8, !tbaa !3813
  %i.dj = icmp sgt i64 %i.bz, 8
  br i1 %i.dj, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !6993

.lr.ph55:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2754 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %.fr31, %.lr.ph ] ; 3 uses
  %.02853 = phi i64 [ %i.dl, %bb.b ], [ %2, %.lr.ph ]
  %i.dk = phi i64 [ %i.ep, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dl = add nsw i64 %.02853, -1                 ; 3 uses
  %i.dm = lshr i64 %i.dk, 1
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %storemerge2754, i64 -8 ; 3 uses
  %i.dp = load ptr, ptr %i.f, align 8, !tbaa !3813 ; 3 uses
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !3813 ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 16
  %.val2.i.i.i = load ptr, ptr %i.dr, align 8, !tbaa !319 ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dq, i64 16
  %.val3.i.i.i = load ptr, ptr %i.ds, align 8, !tbaa !319 ; 3 uses
  %i.dt = icmp ugt ptr %.val2.i.i.i, %.val3.i.i.i
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !3813 ; 3 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 16
  %.val3.i27.i.i = load ptr, ptr %i.dv, align 8, !tbaa !319 ; 4 uses
  br i1 %i.dt, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph55
  %i.dw = icmp ugt ptr %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.dw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dx = load ptr, ptr %.fr30, align 8, !tbaa !3813
  store ptr %i.dq, ptr %.fr30, align 8, !tbaa !3813
  store ptr %i.dx, ptr %i.dn, align 8, !tbaa !3813
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.dy = icmp ugt ptr %.val2.i.i.i, %.val3.i27.i.i
  %i.dz = load ptr, ptr %.fr30, align 8, !tbaa !3813 ; 2 uses
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.du, ptr %.fr30, align 8, !tbaa !3813
  store ptr %i.dz, ptr %i.do, align 8, !tbaa !3813
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %.fr30, align 8, !tbaa !3813
  store ptr %i.dz, ptr %i.f, align 8, !tbaa !3813
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph55
  %i.ea = icmp ugt ptr %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.ea, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eb = load ptr, ptr %.fr30, align 8, !tbaa !3813
  store ptr %i.dp, ptr %.fr30, align 8, !tbaa !3813
  store ptr %i.eb, ptr %i.f, align 8, !tbaa !3813
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.ec = icmp ugt ptr %.val3.i.i.i, %.val3.i27.i.i
  %i.ed = load ptr, ptr %.fr30, align 8, !tbaa !3813 ; 2 uses
  br i1 %i.ec, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.du, ptr %.fr30, align 8, !tbaa !3813
  store ptr %i.ed, ptr %i.do, align 8, !tbaa !3813
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  store ptr %i.dq, ptr %.fr30, align 8, !tbaa !3813
  store ptr %i.ed, ptr %i.dn, align 8, !tbaa !3813
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader", %bb.y
  %.sroa.014.0.i.i = phi ptr [ %i.ej, %bb.y ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2754, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %i.ee = load ptr, ptr %.fr30, align 8, !tbaa !3813
  %i.ef = getelementptr i8, ptr %i.ee, i64 16
  %.val3.i.i18.i = load ptr, ptr %i.ef, align 8, !tbaa !319 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i"
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i" ], [ %i.ej, %bb.w ] ; 8 uses
  %i.eg = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !3813 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 16
  %.val2.i.i19.i = load ptr, ptr %i.eh, align 8, !tbaa !319
  %i.ei = icmp ugt ptr %.val2.i.i19.i, %.val3.i.i18.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  br i1 %i.ei, label %bb.w, label %.preheader.i.i, !llvm.loop !6994

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.ek = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !3813 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 16
  %.val3.i12.i.i = load ptr, ptr %i.el, align 8, !tbaa !319
  %i.em = icmp ugt ptr %.val3.i.i18.i, %.val3.i12.i.i
  br i1 %i.em, label %.preheader.i.i, label %bb.x, !llvm.loop !6995

bb.x:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEET_SH_SH_T0_.exit"

bb.y:                                             ; preds = %bb.x
  store ptr %i.ek, ptr %.sroa.014.1.i.i, align 8, !tbaa !3813
  store ptr %i.eg, ptr %.sroa.0.1.i.i, align 8, !tbaa !3813
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i", !llvm.loop !6996

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEET_SH_SH_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2754, i64 noundef %i.dl)
  %i.en = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.eo = sub i64 %i.en, %i.a                     ; 2 uses
  %i.ep = ashr exact i64 %i.eo, 3                 ; 2 uses
  %i.eq = icmp sgt i64 %i.ep, 16
  br i1 %i.eq, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !6989

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEET_SH_SH_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_17handleReadyEventsEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i", %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google17MakeCheckOpStringImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) local_unnamed_addr #24 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::base::CheckOpMessageBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !6916
  %i.b = load i64, ptr %0, align 8, !tbaa !262
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.b)
          to label %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit: ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit
  %i.e = load i32, ptr %1, align 4, !tbaa !257
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %i.e)
          to label %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit: ; preds = %bb.b
  %i.g = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret ptr %i.g

bb.d:                                             ; preds = %bb.b, %bb.a, %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit, %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.h
}

declare void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #9

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef ptr @_ZN6google17MakeCheckOpStringIPN5folly6detail15EventBasePoller6HandleEPNS2_12_GLOBAL__N_119EventBasePollerImpl5EventEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #24 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::base::CheckOpMessageBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.36)
  %i.a = load ptr, ptr %2, align 8, !tbaa !6916
  %i.b = load ptr, ptr %0, align 8, !tbaa !6913
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.b)
          to label %_ZN6google22MakeCheckOpValueStringIPN5folly6detail15EventBasePoller6HandleEEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIPN5folly6detail15EventBasePoller6HandleEEEvPSoRKT_.exit: ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIPN5folly6detail15EventBasePoller6HandleEEEvPSoRKT_.exit
  %.val = load ptr, ptr %1, align 8, !tbaa !3813
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %.val)
          to label %_ZN6google22MakeCheckOpValueStringIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEEEvPSoRKT_.exit: ; preds = %bb.b
  %i.f = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEEEvPSoRKT_.exit
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret ptr %i.f

bb.d:                                             ; preds = %bb.b, %bb.a, %_ZN6google22MakeCheckOpValueStringIPN5folly6detail12_GLOBAL__N_119EventBasePollerImpl5EventEEEvPSoRKT_.exit, %_ZN6google22MakeCheckOpValueStringIPN5folly6detail15EventBasePoller6HandleEEEvPSoRKT_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.g
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.pre = load i32, ptr %1, align 4, !tbaa !257
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.a = phi i32 [ %i.p, %bb.i ], [ %.pre, %bb.a ] ; 2 uses
  %i.b = and i32 %i.a, %2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !266

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef 12, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  %.pre35 = load i32, ptr %1, align 4, !tbaa !257
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = phi i32 [ %.pre35, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %i.e = lshr i32 %i.d, 1
  %i.f = and i32 %i.e, 256
  %i.g = and i32 %i.d, -673
  %i.h = or i32 %i.g, %i.f
  %i.i = or disjoint i32 %i.h, 128                ; 3 uses
  %i.j = cmpxchg ptr %0, i32 %i.d, i32 %i.i seq_cst seq_cst, align 4 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %1, align 4, !tbaa !257
  store i32 %i.i, ptr %1, align 4, !tbaa !257
  %i.m = and i32 %i.l, 512
  %.not27 = icmp eq i32 %i.m, 0
  br i1 %.not27, label %bb.g, label %bb.f, !prof !266

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %.pr = load i32, ptr %1, align 4, !tbaa !257
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i32 [ %.pr, %bb.f ], [ %i.i, %bb.e ]
  %.not28 = icmp ult i32 %i.n, 2048
  br i1 %.not28, label %bb.j, label %bb.h, !prof !266

bb.h:                                             ; preds = %bb.g
  %i.o = tail call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef -2048, i32 noundef 16, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.p = extractvalue { i32, i1 } %i.j, 0         ; 2 uses
  store i32 %i.p, ptr %1, align 4
  br label %bb.b

bb.j:                                             ; preds = %bb.h, %bb.g
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @llvm.x86.rdtsc()
  %i.b = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.b, ptr %1, align 4, !tbaa !257
  %i.c = and i32 %i.b, %2
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = tail call noundef i64 @llvm.x86.rdtsc()
  %i.f = sub i64 %i.e, %i.a
  %i.g = icmp ult i64 %i.f, 4000
  br i1 %i.g, label %bb.b, label %.thread, !prof !266

.thread:                                          ; preds = %.lr.ph
  %i.h = tail call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !6917
  %i.i = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.i, ptr %1, align 4, !tbaa !257
  %i.j = and i32 %i.i, %2
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %.lr.ph, !llvm.loop !6997

.loopexit:                                        ; preds = %bb.b, %bb.a, %.thread
  %.2 = phi i1 [ %i.h, %.thread ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !248

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #38
  br label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit

end_hunk_0
