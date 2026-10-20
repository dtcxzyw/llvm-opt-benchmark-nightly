Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/low_level_alloc?download=true
inline.NumInlined: 94
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4absl12lts_2026052613base_internalL13AddToFreelistEPvPNS1_13LowLevelAlloc5ArenaE:bb.a

._crit_edge.i.i:                                  ; preds = %.preheader.i.i.prol.loopexit, %bb.k, %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistLevelsEmmPj.exit
  %i.ap = icmp slt i32 %i.ae, %i.ab
  br i1 %i.ap, label %.lr.ph.preheader.i, label %.lr.ph23.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i.i
  %i.aq = sext i32 %i.ae to i64
  br label %.lr.ph.i

bb.i:                                             ; preds = %bb.i, %.preheader.i.i
  %.1.i.i = phi ptr [ %i.at, %bb.i ], [ %.01316.i.i, %.preheader.i.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !47 ; 3 uses
  %i.au = icmp ne ptr %i.at, null
  %i.av = icmp ult ptr %i.at, %i.b
  %i.aw = and i1 %i.au, %i.av
  br i1 %i.aw, label %bb.i, label %.preheader.i.i.1, !llvm.loop !2

.preheader.i.i.1:                                 ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store ptr %.1.i.i, ptr %i.ax, align 8, !tbaa !47
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader.i.i.1
  %.1.i.i.1 = phi ptr [ %i.ba, %bb.j ], [ %.1.i.i, %.preheader.i.i.1 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.1.i.i.1, i64 40
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.1
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !47 ; 3 uses
  %i.bb = icmp ne ptr %i.ba, null
  %i.bc = icmp ult ptr %i.ba, %i.b
  %i.bd = and i1 %i.bb, %i.bc
  br i1 %i.bd, label %bb.j, label %bb.k, !llvm.loop !2

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.1
  store ptr %.1.i.i.1, ptr %i.be, align 8, !tbaa !47
  %i.bf = icmp sgt i64 %indvars.iv.i.i, 2
  br i1 %i.bf, label %.preheader.i.i, label %._crit_edge.i.i, !llvm.loop !3

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not21.i = icmp eq i32 %i.bl, 0
  br i1 %.not21.i, label %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit, label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %._crit_edge.i.i, %.preheader.i
  %.lcssa.i25 = phi i32 [ %i.bl, %.preheader.i ], [ %i.ab, %._crit_edge.i.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bh = zext i32 %.lcssa.i25 to i64             ; 2 uses
  %xtraiter32 = and i64 %i.bh, 1
  %i.bi = icmp eq i32 %.lcssa.i25, 1
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph23.i.new

.lr.ph23.i.new:                                   ; preds = %.lr.ph23.i
  %unroll_iter = and i64 %i.bh, 4294967294
  br label %bb.l

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.aq, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store ptr %i.ac, ptr %i.bj, align 8, !tbaa !47
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bk = trunc nsw i64 %indvars.iv.next.i to i32
  store i32 %i.bk, ptr %i.ad, align 8, !tbaa !54
  %i.bl = load i32, ptr %0, align 8, !tbaa !54    ; 3 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv.next.i, %i.bm
  br i1 %i.bn, label %.lr.ph.i, label %.preheader.i, !llvm.loop !4

bb.l:                                             ; preds = %bb.l, %.lr.ph23.i.new
  %indvars.iv26.i = phi i64 [ 0, %.lr.ph23.i.new ], [ %indvars.iv.next27.i.1, %bb.l ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph23.i.new ], [ %niter.next.1, %bb.l ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv26.i
  %i.bp = load ptr, ptr %i.bo, align 16, !tbaa !47
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv26.i ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !47
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv26.i
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !47
  store ptr %i.b, ptr %i.br, align 8, !tbaa !47
  %indvars.iv.next27.i = or disjoint i64 %indvars.iv26.i, 1 ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next27.i
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !47
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next27.i ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !47
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next27.i
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !47
  store ptr %i.b, ptr %i.bx, align 8, !tbaa !47
  %indvars.iv.next27.i.1 = add nuw nsw i64 %indvars.iv26.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.loopexit.unr-lcssa, label %bb.l, !llvm.loop !5

_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.loopexit.unr-lcssa, %.lr.ph23.i
  %indvars.iv26.i.epil.init = phi i64 [ 0, %.lr.ph23.i ], [ %indvars.iv.next27.i.1, %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod34 = trunc i32 %.lcssa.i25 to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv26.i.epil.init
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !47
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv26.i.epil.init ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !47
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv26.i.epil.init
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !47
  store ptr %i.b, ptr %i.cd, align 8, !tbaa !47
  br label %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit

_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit: ; preds = %.epil.preheader, %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.loopexit.unr-lcssa, %.preheader.i
  %i.cg = xor i64 %i.e, -1283669654
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !49
  tail call fastcc void @_ZN4absl12lts_2026052613base_internalL8CoalesceEPNS1_12_GLOBAL__N_19AllocListE(ptr noundef nonnull %i.b)
  %i.ch = load ptr, ptr %i.a, align 16, !tbaa !47
  tail call fastcc void @_ZN4absl12lts_2026052613base_internalL8CoalesceEPNS1_12_GLOBAL__N_19AllocListE(ptr noundef %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef ptr @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc5AllocEm(i64 noundef %0) local_unnamed_addr #5 section "malloc_hook" align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_119create_globals_onceE acquire, align 4
  %.not.i.i = icmp eq i32 %i.a, 221
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613base_internal13LowLevelAlloc12DefaultArenaEv.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_2026052613base_internal12CallOnceImplIRFvvEJEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef nonnull @_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_119create_globals_onceE, i32 noundef 0, ptr noundef nonnull @_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118CreateGlobalArenasEv)
  br label %_ZN4absl12lts_2026052613base_internal13LowLevelAlloc12DefaultArenaEv.exit

_ZN4absl12lts_2026052613base_internal13LowLevelAlloc12DefaultArenaEv.exit: ; preds = %bb.a, %bb.b
  %i.b = tail call fastcc noundef ptr @_ZN4absl12lts_2026052613base_internalL16DoAllocWithArenaEmPNS1_13LowLevelAlloc5ArenaE(i64 noundef %0, ptr noundef nonnull @_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_121default_arena_storageE)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2026052613base_internalL16DoAllocWithArenaEmPNS1_13LowLevelAlloc5ArenaE(i64 noundef %0, ptr noundef %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::base_internal::(anonymous namespace)::ArenaLock", align 8 ; 8 uses
  %i.a = alloca [30 x ptr], align 16              ; 6 uses
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call fastcc void @_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_19ArenaLockC2EPNS1_13LowLevelAlloc5ArenaE(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef %1)
  %.not.i = icmp ugt i64 %0, -33
  br i1 %.not.i, label %.invoke, label %_ZN4absl12lts_2026052613base_internalL10CheckedAddEmm.exit, !prof !38

_ZN4absl12lts_2026052613base_internalL10CheckedAddEmm.exit: ; preds = %bb.b
  %i.b = add nuw i64 %0, 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = add nuw i64 %0, 31
  %i.f = add i64 %i.e, %i.d                       ; 2 uses
  %.not.i.i = icmp ult i64 %i.f, %i.b
  br i1 %.not.i.i, label %.invoke, label %_ZN4absl12lts_2026052613base_internalL7RoundUpEmm.exit, !prof !38

_ZN4absl12lts_2026052613base_internalL7RoundUpEmm.exit: ; preds = %_ZN4absl12lts_2026052613base_internalL10CheckedAddEmm.exit
  %i.g = sub i64 0, %i.d
  %i.h = and i64 %i.f, %i.g                       ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.j = add i64 %i.h, -40
  %i.k = lshr i64 %i.j, 3                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.o = add i64 %i.h, -1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.q = icmp eq i64 %i.k, 0
  br label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock4lockEv.exit, %_ZN4absl12lts_2026052613base_internalL7RoundUpEmm.exit
  %i.r = load i64, ptr %i.i, align 8, !tbaa !32   ; 3 uses
  %i.s = icmp ugt i64 %i.h, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.08.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.h, %bb.c ]
  %.067.i.i = phi i32 [ %i.t, %.lr.ph.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.t = add nuw nsw i32 %.067.i.i, 1
  %i.u = lshr i64 %.08.i.i, 1                     ; 2 uses
  %i.v = icmp ugt i64 %i.u, %i.r
  br i1 %i.v, label %.lr.ph.i.i, label %_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i.loopexit, !llvm.loop !0

_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i32 %.067.i.i, 2
  %i.x = zext nneg i32 %i.w to i64
  br label %_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i

_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i: ; preds = %_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i.loopexit, %bb.c
  %.06.lcssa.i.i = phi i64 [ 1, %bb.c ], [ %i.x, %_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i.loopexit ]
  br i1 %i.q, label %.invoke, label %bb.d, !prof !38

bb.d:                                             ; preds = %_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i
  %spec.select12.i = call i64 @llvm.umin.i64(i64 %i.k, i64 %.06.lcssa.i.i)
  %spec.select.i = trunc nuw nsw i64 %spec.select12.i to i32
  %i.y = call noundef range(i32 1, 30) i32 @llvm.umin.i32(i32 %spec.select.i, i32 29) ; 3 uses
  %i.z = load i32, ptr %i.m, align 8, !tbaa !37   ; 3 uses
  %.not78 = icmp sgt i32 %i.y, %i.z
  br i1 %.not78, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.aa = zext nneg i32 %i.y to i64
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.l
  %.064 = phi ptr [ %i.ad, %bb.l ], [ %i.l, %.preheader ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.064, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !54
  %.not.i92.not = icmp sgt i32 %i.y, %i.ac
  br i1 %.not.i92.not, label %.invoke, label %bb.f, !prof !38

bb.f:                                             ; preds = %bb.e
  %3 = getelementptr [8 x i8], ptr %.064, i64 %i.aa
  %4 = getelementptr i8, ptr %3, i64 32
  %i.ad = load ptr, ptr %4, align 8, !tbaa !47    ; 17 uses
  %.not17.i = icmp eq ptr %i.ad, null
  br i1 %.not17.i, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !49
  %i.ag = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ah = xor i64 %i.af, %i.ag
  %.not18.i = icmp eq i64 %i.ah, -1283669654
  br i1 %.not18.i, label %bb.h, label %.invoke, !prof !17

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50
  %.not19.i = icmp eq ptr %i.aj, %1
  br i1 %.not19.i, label %bb.i, label %.invoke, !prof !17

bb.i:                                             ; preds = %bb.h
  %.not20.i = icmp eq ptr %.064, %i.l
  br i1 %.not20.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not21.i = icmp ult ptr %.064, %i.ad
  br i1 %.not21.i, label %bb.k, label %.invoke, !prof !17

bb.k:                                             ; preds = %bb.j
  %i.ak = load i64, ptr %.064, align 8, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %.064, i64 %i.ak
  %.not22.i = icmp ult ptr %i.al, %i.ad
  br i1 %.not22.i, label %bb.l, label %.invoke, !prof !17

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.am = load i64, ptr %i.ad, align 8, !tbaa !48 ; 3 uses
  %i.an = icmp ult i64 %i.am, %i.h
  br i1 %i.an, label %bb.e, label %.preheader.preheader.i.i, !llvm.loop !60

.critedge.thread:                                 ; preds = %bb.f, %bb.d
  %i.ao = load atomic i32, ptr %1 monotonic, align 8
  %i.ap = and i32 %i.ao, 2
  %i.aq = atomicrmw xchg ptr %1, i32 %i.ap release, align 4 ; 3 uses
  %i.ar = and i32 %i.aq, 4
  %.not.i98 = icmp eq i32 %i.ar, 0
  br i1 %.not.i98, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge.thread
  %i.as = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc99:                                         ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 76 ; 2 uses
  %i.au = load atomic i32, ptr %i.at monotonic, align 4
  %i.av = add nsw i32 %i.au, -1
  store atomic i32 %i.av, ptr %i.at monotonic, align 4
  br label %bb.n

bb.n:                                             ; preds = %.noexc99, %.critedge.thread
  %.not4.i = icmp ult i32 %i.aq, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4absl12lts_2026052613base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %i.aq) #15
          to label %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit: ; preds = %bb.n, %bb.o
  %i.aw = load i64, ptr %i.n, align 8, !tbaa !30
  %i.ax = shl i64 %i.aw, 4                        ; 2 uses
  %i.ay = add i64 %i.o, %i.ax                     ; 2 uses
  %.not.i.i101 = icmp ult i64 %i.ay, %i.h
  br i1 %.not.i.i101, label %.invoke, label %bb.p, !prof !38

.invoke:                                          ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit, %_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i, %bb.k, %bb.j, %bb.h, %bb.g, %bb.e, %_ZN4absl12lts_2026052613base_internalL10CheckedAddEmm.exit, %bb.b
  %i.az = phi i32 [ 472, %bb.b ], [ 499, %bb.k ], [ 472, %_ZN4absl12lts_2026052613base_internalL10CheckedAddEmm.exit ], [ 496, %bb.j ], [ 494, %bb.h ], [ 493, %bb.g ], [ 488, %bb.e ], [ 157, %_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i ], [ 472, %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit ]
  %i.ba = phi ptr [ @.str.35, %bb.b ], [ @.str.45, %bb.k ], [ @.str.35, %_ZN4absl12lts_2026052613base_internalL10CheckedAddEmm.exit ], [ @.str.43, %bb.j ], [ @.str.41, %bb.h ], [ @.str.39, %bb.g ], [ @.str.37, %bb.e ], [ @.str.25, %_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i ], [ @.str.35, %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit ]
  %i.bb = phi ptr [ @.str.36, %bb.b ], [ @.str.46, %bb.k ], [ @.str.36, %_ZN4absl12lts_2026052613base_internalL10CheckedAddEmm.exit ], [ @.str.44, %bb.j ], [ @.str.42, %bb.h ], [ @.str.40, %bb.g ], [ @.str.38, %bb.e ], [ @.str.26, %_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i ], [ @.str.36, %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit ]
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 42), i32 noundef %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb)
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit
  %i.bc = sub i64 0, %i.ax
  %i.bd = and i64 %i.ay, %i.bc                    ; 4 uses
  %i.be = load i32, ptr %i.p, align 4, !tbaa !29
  %i.bf = and i32 %i.be, 2
  %.not80.a = icmp eq i32 %i.bf, 0
  br i1 %.not80.a, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = call i64 (i64, ...) @syscall(i64 noundef 9, i64 noundef 0, i64 noundef %i.bd, i64 noundef 3, i64 noundef 34, i64 noundef -1, i64 noundef 0) #14
  %i.bh = inttoptr i64 %i.bg to ptr
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bi = call ptr @mmap(ptr noundef null, i64 noundef %i.bd, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0 = phi ptr [ %i.bh, %bb.q ], [ %i.bi, %bb.r ] ; 7 uses
  %i.bj = icmp eq ptr %.0, inttoptr (i64 -1 to ptr)
  br i1 %i.bj, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bk = tail call ptr @__errno_location() #16
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !52
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 42), i32 noundef 605, ptr noundef nonnull @.str.31, i32 noundef %i.bl)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.bm = call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, ptr noundef %.0, i64 noundef %i.bd, ptr noundef nonnull @.str.32) #14 ; 0 uses
  %i.bn = load atomic i32, ptr %1 monotonic, align 8 ; 10 uses
  %i.bo = and i32 %i.bn, 1
  %.not.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i, label %bb.w, label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i

bb.w:                                             ; preds = %bb.v
  %i.bp = and i32 %i.bn, 2
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.x, label %.thread.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.br = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %.noexc104.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc104.a:                                      ; preds = %bb.x
  %.not.i.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.not.i.i.i, label %bb.y, label %.thread13.i.i.i

bb.y:                                             ; preds = %.noexc104.a
  %i.bs = or disjoint i32 %i.bn, 1
  %i.bt = cmpxchg ptr %1, i32 %i.bn, i32 %i.bs acquire monotonic, align 4
  %i.bu = extractvalue { i32, i1 } %i.bt, 0
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i

.thread13.i.i.i:                                  ; preds = %.noexc104.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 76 ; 2 uses
  %i.bw = load atomic i32, ptr %i.bv monotonic, align 4
  %i.bx = add nsw i32 %i.bw, 1
  store atomic i32 %i.bx, ptr %i.bv monotonic, align 4
  %i.by = or i32 %i.bn, 5
  %i.bz = cmpxchg ptr %1, i32 %i.bn, i32 %i.by acquire monotonic, align 4 ; 2 uses
  %i.ca = extractvalue { i32, i1 } %i.bz, 1
  br i1 %i.ca, label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i, label %bb.z

.thread.i.i.i:                                    ; preds = %bb.w
  %i.cb = or disjoint i32 %i.bn, 1
  %i.cc = cmpxchg ptr %1, i32 %i.bn, i32 %i.cb acquire monotonic, align 4
  %i.cd = extractvalue { i32, i1 } %i.cc, 0
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i

bb.z:                                             ; preds = %.thread13.i.i.i
  %i.ce = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %.noexc105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc105:                                        ; preds = %bb.z
  %i.cf = extractvalue { i32, i1 } %i.bz, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 76 ; 2 uses
  %i.ch = load atomic i32, ptr %i.cg monotonic, align 4
  %i.ci = add nsw i32 %i.ch, -1
  store atomic i32 %i.ci, ptr %i.cg monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i

_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i: ; preds = %.noexc105, %.thread.i.i.i, %.thread13.i.i.i, %bb.y, %bb.v
  %.04.i.i.i = phi i32 [ %i.bn, %bb.v ], [ %i.cf, %.noexc105 ], [ %i.bu, %bb.y ], [ %i.bn, %.thread13.i.i.i ], [ %i.cd, %.thread.i.i.i ]
  %i.cj = and i32 %.04.i.i.i, 1
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZN4absl12lts_2026052613base_internal8SpinLock4lockEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i
  invoke void @_ZN4absl12lts_2026052613base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %1) #15
          to label %_ZN4absl12lts_2026052613base_internal8SpinLock4lockEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4absl12lts_2026052613base_internal8SpinLock4lockEv.exit: ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i, %bb.aa
  store i64 %i.bd, ptr %.0, align 8, !tbaa !48
  %i.cl = ptrtoint ptr %.0 to i64
  %i.cm = xor i64 %i.cl, 1283669653
  %i.cn = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !49
  %i.co = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store ptr %1, ptr %i.co, align 8, !tbaa !50
  %i.cp = getelementptr inbounds nuw i8, ptr %.0, i64 32
  invoke fastcc void @_ZN4absl12lts_2026052613base_internalL13AddToFreelistEPvPNS1_13LowLevelAlloc5ArenaE(ptr noundef nonnull %i.cp, ptr noundef nonnull %1)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %bb.z, %bb.x, %bb.o, %bb.m, %_ZN4absl12lts_2026052613base_internal8SpinLock4lockEv.exit, %.invoke, %bb.t
  %lpad.loopexit.split-lp235 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.preheader.preheader.i.i:                         ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.cs = zext nneg i32 %i.z to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ac, %.preheader.preheader.i.i
end_hunk_0
