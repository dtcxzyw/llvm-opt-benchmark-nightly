Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/helpers?download=true
inline.NumInlined: 560
inline.NumDeleted: 344
begin_hunk_0
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [16 x i8] c"nullptr != node\00", align 1
@__func__._ZN12_GLOBAL__N_16Cycles10checkCycleERSt13unordered_mapIPN3ade4NodeENS0_13TraverseStateESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEERKNS2_6HandleIS3_EE = private unnamed_addr constant [11 x i8] c"checkCycle\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"/opt-bench/work/opencv/opencv_contrib/modules/gapi/src/compiler/passes/helpers.cpp\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv5gimpl12pass_helpers9hasCyclesERKN3ade5GraphE(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unordered_map.35", align 8 ; 15 uses
  %2 = alloca %"struct.ade::util::Range::MapRange", align 8 ; 6 uses
  %3 = alloca %"class.ade::Handle", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 1, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNK3ade5Graph5nodesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange") align 8 %2, ptr noundef nonnull align 8 dereferenceable(168) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.038.0.copyload.i = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.841.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.841.0.copyload.i = load ptr, ptr %.sroa.841.0..sroa_idx.i, align 8 ; 2 uses
  %i.f = icmp eq ptr %.sroa.038.0.copyload.i, %.sroa.841.0.copyload.i
  br i1 %i.f, label %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESF_EENS_5Graph12HandleMapperEEEE8iteratorneERKSL_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.d:                                             ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i, %.lr.ph.i
  %.01347.i = phi i8 [ 0, %.lr.ph.i ], [ %.215.i, %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i ] ; 4 uses
  %.sroa.038.046.i = phi ptr [ %.sroa.038.0.copyload.i, %.lr.ph.i ], [ %i.bn, %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.j = load ptr, ptr %.sroa.038.046.i, align 8, !tbaa !96, !noalias !97 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !35, !alias.scope !97
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.038.046.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36, !noalias !97 ; 15 uses
  store ptr %i.l, ptr %i.g, align 8, !tbaa !37, !alias.scope !97
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null  ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 4 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38, !noalias !97
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.m, align 4, !tbaa !39, !noalias !97
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !39, !noalias !97
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4, !noalias !97 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 7 uses
  %i.s = load atomic i32, ptr %i.r monotonic, align 8, !noalias !98
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.s, %bb.h ], [ %i.w, %bb.j ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.u = cmpxchg weak ptr %i.r, i32 %.06.i.i.i.i.i.i.i, i32 %i.t acq_rel monotonic, align 8, !noalias !98 ; 2 uses
  %i.v = extractvalue { i32, i1 } %i.u, 1
  %i.w = extractvalue { i32, i1 } %i.u, 0
  br i1 %i.v, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, label %bb.i, !llvm.loop !0

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.x = load atomic i32, ptr %i.r monotonic, align 8, !noalias !98
  %.not.i.i.i.i.i = icmp eq i32 %i.x, 0
  %spec.select.i = select i1 %.not.i.i.i.i.i, ptr null, ptr %i.j ; 3 uses
  %i.y = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  store i32 0, ptr %i.r, align 8, !tbaa !42
  store i32 0, ptr %i.m, align 4, !tbaa !43
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #17, !inline_history !90
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #17, !inline_history !90
  br label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i

bb.l:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i1.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i1.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.r, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.o, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i, !prof !46

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #17
  br label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i

_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i:          ; preds = %bb.i, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %bb.d
  %i.al = phi ptr [ %spec.select.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %spec.select.i, %bb.o ], [ %spec.select.i, %bb.k ], [ null, %bb.d ], [ null, %bb.i ] ; 4 uses
  %.val.i.i.i = load i64, ptr %i.h, align 8, !tbaa !47
  %.not.not.i.i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %.not.not.i.i.i, label %.preheader.i, label %bb.q

.preheader.i:                                     ; preds = %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i, %bb.p
  %.sroa.01.0.in.i.i.i = phi ptr [ %.sroa.01.0.i.i.i, %bb.p ], [ %i.c, %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i ]
  %.sroa.01.0.i.i.i = load ptr, ptr %.sroa.01.0.in.i.i.i, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.01.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapIPN3ade4NodeEN12_GLOBAL__N_16Cycles13TraverseStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSB_.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 8
  %.val10.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !49
  %i.an = icmp eq ptr %i.al, %.val10.i.i.i
  br i1 %i.an, label %_ZNSt13unordered_mapIPN3ade4NodeEN12_GLOBAL__N_16Cycles13TraverseStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSB_.exit.i, label %.preheader.i, !llvm.loop !1

bb.q:                                             ; preds = %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i
  %i.ao = ptrtoint ptr %i.al to i64
  %.val12.i.i.i = load i64, ptr %i.b, align 8, !tbaa !28 ; 2 uses
  %i.ap = urem i64 %i.ao, %.val12.i.i.i           ; 2 uses
  %.val13.i.i.i = load ptr, ptr %1, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.val13.i.i.i, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i24.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i24.i, label %_ZNSt13unordered_mapIPN3ade4NodeEN12_GLOBAL__N_16Cycles13TraverseStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSB_.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.val214.i.i.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !49
  %i.au = icmp eq ptr %i.al, %.val214.i.i.i.i.i
  br i1 %i.au, label %_ZNSt13unordered_mapIPN3ade4NodeEN12_GLOBAL__N_16Cycles13TraverseStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSB_.exit.i, label %.lr.ph.i.i.i.i.i

bb.s:                                             ; preds = %bb.t
  %i.av = icmp eq ptr %i.al, %.val23.i.i.i.i.i
  br i1 %i.av, label %_ZNSt13unordered_mapIPN3ade4NodeEN12_GLOBAL__N_16Cycles13TraverseStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSB_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %bb.s
  %.05.i.i.i.i.i = phi ptr [ %i.aw, %bb.s ], [ %i.as, %bb.r ]
  %i.aw = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !48 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not18.i.i.i.i.i, label %_ZNSt13unordered_mapIPN3ade4NodeEN12_GLOBAL__N_16Cycles13TraverseStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSB_.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val23.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !49 ; 2 uses
  %i.ay = ptrtoint ptr %.val23.i.i.i.i.i to i64
  %i.az = urem i64 %i.ay, %.val12.i.i.i
  %.not19.i.i.i.i.i = icmp eq i64 %i.az, %i.ap
  br i1 %.not19.i.i.i.i.i, label %bb.s, label %..loopexit_crit_edge6.i.i.i.i.i, !llvm.loop !2

..loopexit_crit_edge6.i.i.i.i.i:                  ; preds = %bb.t
  br label %_ZNSt13unordered_mapIPN3ade4NodeEN12_GLOBAL__N_16Cycles13TraverseStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSB_.exit.thread.i, !llvm.loop !2

_ZNSt13unordered_mapIPN3ade4NodeEN12_GLOBAL__N_16Cycles13TraverseStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSB_.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i, %.preheader.i, %..loopexit_crit_edge6.i.i.i.i.i, %bb.q
  %i.ba = invoke fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_16Cycles10checkCycleERSt13unordered_mapIPN3ade4NodeENS0_13TraverseStateESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEERKNS2_6HandleIS3_EE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZNSt13unordered_mapIPN3ade4NodeEN12_GLOBAL__N_16Cycles13TraverseStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSB_.exit.thread.i
  %i.bb = zext i1 %i.ba to i8
  %i.bc = or i8 %.01347.i, %i.bb
  %.not.i = icmp ne i8 %i.bc, 0                   ; 2 uses
  %4 = zext i1 %.not.i to i8
  br label %_ZNSt13unordered_mapIPN3ade4NodeEN12_GLOBAL__N_16Cycles13TraverseStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSB_.exit.i

bb.v:                                             ; preds = %_ZNSt13unordered_mapIPN3ade4NodeEN12_GLOBAL__N_16Cycles13TraverseStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSB_.exit.thread.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit32.i, label %bb.aa

_ZNSt13unordered_mapIPN3ade4NodeEN12_GLOBAL__N_16Cycles13TraverseStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSB_.exit.i: ; preds = %bb.s, %bb.p, %bb.u, %bb.r
  %.215.i = phi i8 [ %4, %bb.u ], [ %.01347.i, %bb.p ], [ %.01347.i, %bb.r ], [ %.01347.i, %bb.s ] ; 2 uses
  %cond.i = phi i1 [ %.not.i, %bb.u ], [ false, %bb.p ], [ false, %bb.r ], [ false, %bb.s ]
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt13unordered_mapIPN3ade4NodeEN12_GLOBAL__N_16Cycles13TraverseStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSB_.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 3 uses
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i25.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i25.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !39 ; 2 uses
  %i.bh = add nsw i32 %i.bg, -1
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26.i

bb.y:                                             ; preds = %bb.w
  %i.bi = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i27.i = phi i32 [ %i.bg, %bb.x ], [ %i.bi, %bb.y ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i27.i, 1
  br i1 %i.bj, label %bb.z, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26.i
  %i.bk = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #17, !inline_history !91
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i

_ZN3ade6HandleINS_4NodeEED2Ev.exit.i:             ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26.i, %_ZNSt13unordered_mapIPN3ade4NodeEN12_GLOBAL__N_16Cycles13TraverseStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSB_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.038.046.i, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %.sroa.841.0.copyload.i
  %or.cond.i = select i1 %cond.i, i1 true, i1 %i.bo
  br i1 %or.cond.i, label %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESF_EENS_5Graph12HandleMapperEEEE8iteratorneERKSL_.exit.loopexit.i, label %bb.d

bb.aa:                                            ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 3 uses
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i29.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i29.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !39 ; 2 uses
  %i.bs = add nsw i32 %i.br, -1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30.i

bb.ac:                                            ; preds = %bb.aa
  %i.bt = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i31.i = phi i32 [ %i.br, %bb.ab ], [ %i.bt, %bb.ac ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i31.i, 1
  br i1 %i.bu, label %bb.ad, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit32.i

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30.i
  %i.bv = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #17, !inline_history !91
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit32.i

_ZN3ade6HandleINS_4NodeEED2Ev.exit32.i:           ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.af

_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESF_EENS_5Graph12HandleMapperEEEE8iteratorneERKSL_.exit.loopexit.i: ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i
  %i.by = trunc nuw i8 %.215.i to i1
  br label %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESF_EENS_5Graph12HandleMapperEEEE8iteratorneERKSL_.exit.i

_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESF_EENS_5Graph12HandleMapperEEEE8iteratorneERKSL_.exit.i: ; preds = %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESF_EENS_5Graph12HandleMapperEEEE8iteratorneERKSL_.exit.loopexit.i, %bb.b
  %.316.i = phi i1 [ false, %bb.b ], [ %i.by, %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESF_EENS_5Graph12HandleMapperEEEE8iteratorneERKSL_.exit.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.val.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !51 ; 2 uses
  %.not1.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not1.i.i.i.i.i, label %_ZNSt10_HashtableIPN3ade4NodeESt4pairIKS2_N12_GLOBAL__N_16Cycles13TraverseStateEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i33.i

.lr.ph.i.i.i.i33.i:                               ; preds = %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESF_EENS_5Graph12HandleMapperEEEE8iteratorneERKSL_.exit.i, %.lr.ph.i.i.i.i33.i
  %.02.i.i.i.i.i = phi ptr [ %.0.val.i.i.i.i.i, %.lr.ph.i.i.i.i33.i ], [ %.val.i.i.i.i, %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESF_EENS_5Graph12HandleMapperEEEE8iteratorneERKSL_.exit.i ] ; 2 uses
  %.0.val.i.i.i.i.i = load ptr, ptr %.02.i.i.i.i.i, align 8, !tbaa !48 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.02.i.i.i.i.i, i64 noundef 24) #18
  %.not.i.i.i.i34.i = icmp eq ptr %.0.val.i.i.i.i.i, null
  br i1 %.not.i.i.i.i34.i, label %_ZNSt10_HashtableIPN3ade4NodeESt4pairIKS2_N12_GLOBAL__N_16Cycles13TraverseStateEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i33.i, !llvm.loop !3

_ZNSt10_HashtableIPN3ade4NodeESt4pairIKS2_N12_GLOBAL__N_16Cycles13TraverseStateEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i33.i, %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESF_EENS_5Graph12HandleMapperEEEE8iteratorneERKSL_.exit.i
  %i.bz = load ptr, ptr %1, align 8, !tbaa !27
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !28
  %i.cb = shl i64 %i.ca, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bz, i8 0, i64 %i.cb, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.cc = load ptr, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.a
  br i1 %i.cd, label %_ZN12_GLOBAL__N_16Cycles9hasCyclesERKN3ade5GraphE.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt10_HashtableIPN3ade4NodeESt4pairIKS2_N12_GLOBAL__N_16Cycles13TraverseStateEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !28
  %i.cf = shl i64 %i.ce, 3
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #18
  br label %_ZN12_GLOBAL__N_16Cycles9hasCyclesERKN3ade5GraphE.exit

bb.af:                                            ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit32.i, %bb.c
  %.pn19.pn.i = phi { ptr, i32 } [ %i.bd, %_ZN3ade6HandleINS_4NodeEED2Ev.exit32.i ], [ %i.i, %bb.c ]
  call fastcc void @_ZNSt13unordered_mapIPN3ade4NodeEN12_GLOBAL__N_16Cycles13TraverseStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn19.pn.i

_ZN12_GLOBAL__N_16Cycles9hasCyclesERKN3ade5GraphE.exit: ; preds = %_ZNSt10_HashtableIPN3ade4NodeESt4pairIKS2_N12_GLOBAL__N_16Cycles13TraverseStateEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret i1 %.316.i
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv5gimpl12pass_helpers8topoSortERKN3ade5GraphE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.30") align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.30", align 8    ; 11 uses
  %3 = alloca %"class.std::unordered_set", align 8 ; 13 uses
  %4 = alloca %"struct.ade::util::Range::MapRange", align 8 ; 6 uses
  %5 = alloca %"class.ade::Handle", align 16      ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !119
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !53, !noalias !119
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 1, ptr %i.b, align 8, !tbaa !54, !noalias !119
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !119
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !29, !noalias !119
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !119
  invoke void @_ZNK3ade5Graph5nodesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange") align 8 %4, ptr noundef nonnull align 8 dereferenceable(168) %1)
          to label %bb.b unwind label %bb.c, !noalias !119

bb.b:                                             ; preds = %bb.a
  %.sroa.048.0.copyload.i = load ptr, ptr %4, align 8, !noalias !119 ; 2 uses
  %.sroa.851.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.851.0.copyload.i = load ptr, ptr %.sroa.851.0..sroa_idx.i, align 8, !noalias !119 ; 2 uses
  %i.f = icmp eq ptr %.sroa.048.0.copyload.i, %.sroa.851.0.copyload.i
  br i1 %i.f, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.d:                                             ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i, %.lr.ph.i
  %.sroa.048.063.i = phi ptr [ %.sroa.048.0.copyload.i, %.lr.ph.i ], [ %i.aa, %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.048.063.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36, !noalias !123 ; 2 uses
  %i.k = load <2 x ptr>, ptr %.sroa.048.063.i, align 8, !tbaa !55, !noalias !123
  store <2 x ptr> %i.k, ptr %5, align 16, !tbaa !55, !alias.scope !123, !noalias !119
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESF_EENS_5Graph12HandleMapperEEEE8iteratordeEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38, !noalias !124
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.l, align 4, !tbaa !39, !noalias !123
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !39, !noalias !123
  br label %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESF_EENS_5Graph12HandleMapperEEEE8iteratordeEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4, !noalias !123 ; 0 uses
  br label %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESF_EENS_5Graph12HandleMapperEEEE8iteratordeEv.exit.i

_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESF_EENS_5Graph12HandleMapperEEEE8iteratordeEv.exit.i: ; preds = %bb.g, %bb.f, %bb.d
  invoke fastcc void @_ZN12_GLOBAL__N_18TopoSort5visitERSt6vectorIN3ade6HandleINS2_4NodeEEESaIS5_EERSt13unordered_setIPS4_St4hashISA_ESt8equal_toISA_ESaISA_EERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESF_EENS_5Graph12HandleMapperEEEE8iteratordeEv.exit.i
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !37, !noalias !119 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38, !noalias !119
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j
end_hunk_0
