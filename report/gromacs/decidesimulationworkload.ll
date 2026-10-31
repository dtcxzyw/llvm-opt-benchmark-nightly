Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/decidesimulationworkload?download=true
inline.NumInlined: 132
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3gmx24createSimulationWorkloadERKNS_8MDLoggerERK10t_inputrecbbbRKNS_23DevelopmentFeatureFlagsEbbbbb10PmeRunModebbbbb:bb.a
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = load ptr, ptr %18, align 8, !tbaa !13   ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ck
  br i1 %i.cx, label %_ZN3gmx14LogEntryWriterD2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60: ; preds = %bb.l
  %i.cy = load i64, ptr %i.ck, align 8, !tbaa !14
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #12
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit62

_ZN3gmx14LogEntryWriterD2Ev.exit62:               ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  resume { ptr, i32 } %i.cv

bb.m:                                             ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit, %bb.i, %bb.h
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 0, ptr %i.da, align 1, !tbaa !130
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 0, ptr %i.db, align 1, !tbaa !131
  br i1 %i.cf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx24createSimulationWorkloadERKNS_8MDLoggerERK10t_inputrecbbbRKNS_23DevelopmentFeatureFlagsEbbbbb10PmeRunModebbbbbENK3$_0clEv", ptr noundef nonnull @.str.11, i32 noundef 160) #13
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %i.dc, align 1, !tbaa !168
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.dd, align 1, !tbaa !169
  ret void
}

declare noundef zeroext i1 @_Z17inputrecNeedMutotPK10t_inputrec(ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_Z28haveEwaldSurfaceContributionRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888)) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define { i64, i16 } @_ZN3gmx27setupDomainLifetimeWorkloadERK10t_inputrecRK10t_forcerecPK6pull_tPK9gmx_edsamRK9t_mdatomsRKNS_18SimulationWorkloadE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(584) %1, ptr noundef %2, ptr nofree noundef readnone captures(address_is_null) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %4, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(29) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275
  %i.c = tail call noundef zeroext i1 @_ZNK3gmx14ForceProviders16hasForceProviderEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.c, label %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.e = load i8, ptr %i.d, align 8, !tbaa !276, !range !17, !noundef !126
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_Z19pull_have_potentialRK6pull_t(ptr noundef nonnull align 1 %2)
  br i1 %i.g, label %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.i = load i8, ptr %i.h, align 8, !tbaa !277, !range !17, !noundef !126
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.l = load i8, ptr %i.k, align 8, !tbaa !278, !range !17, !noundef !126
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = icmp ne ptr %3, null
  %or.cond.i = or i1 %i.n, %i.m
  br i1 %or.cond.i, label %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.p = load i8, ptr %i.o, align 8, !tbaa !279, !range !17, !noundef !126
  %i.q = trunc nuw i8 %i.p to i1
  br label %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit

_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f
  %i.r = phi i1 [ %i.q, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.a ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !280  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !280  ; 2 uses
  %.not5154 = icmp eq ptr %i.t, %i.v
  br i1 %.not5154, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 464
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit
  %.sroa.029.sroa.3.0.lcssa = phi i8 [ 0, %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit ], [ %.sroa.029.sroa.3.1, %bb.g ] ; 3 uses
  %.sroa.029.sroa.6.0.lcssa = phi i8 [ 0, %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit ], [ %spec.select, %bb.g ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !281  ; 2 uses
  %.not52 = icmp eq ptr %i.y, null
  br i1 %.not52, label %bb.i, label %bb.h

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.026.057 = phi ptr [ %i.t, %.lr.ph ], [ %i.ac, %bb.g ] ; 3 uses
  %.sroa.029.sroa.6.056 = phi i8 [ 0, %.lr.ph ], [ %spec.select, %bb.g ]
  %.sroa.029.sroa.3.055 = phi i8 [ 0, %.lr.ph ], [ %.sroa.029.sroa.3.1, %bb.g ]
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !282
  %i.aa = tail call noundef zeroext i1 @_ZNK12ListedForces19haveCpuListedForcesERK8t_fcdata(ptr noundef nonnull align 8 dereferenceable(2880) %.sroa.026.057, ptr noundef nonnull align 1 %i.z)
  %spec.select = select i1 %i.aa, i8 1, i8 %.sroa.029.sroa.6.056 ; 2 uses
  %i.ab = tail call noundef zeroext i1 @_ZNK12ListedForces14haveCpuBondedsEv(ptr noundef nonnull align 8 dereferenceable(2880) %.sroa.026.057)
  %.sroa.029.sroa.3.1 = select i1 %i.ab, i8 1, i8 %.sroa.029.sroa.3.055 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.026.057, i64 2880 ; 2 uses
  %.not51 = icmp eq ptr %i.ac, %i.v
  br i1 %.not51, label %._crit_edge, label %bb.g

bb.h:                                             ; preds = %._crit_edge
  %i.ad = tail call noundef zeroext i1 @_ZNK3gmx15ListedForcesGpu16haveInteractionsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %i.ae = zext i1 %i.ad to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.sroa.029.sroa.0.0.insert.ext = phi i64 [ 0, %._crit_edge ], [ %i.ae, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !283
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %.thread48, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !307
  %.not53 = icmp eq i32 %i.ai, 0
  br i1 %.not53, label %.thread48, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !23, !range !17, !noundef !126
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 7
  %i.am = load i8, ptr %i.al, align 1, !tbaa !22, !range !17, !noundef !126
  %i.an = zext nneg i8 %i.am to i16
  br label %.thread48

.thread48:                                        ; preds = %bb.i, %bb.j, %bb.k
  %i.ao = phi i8 [ %i.ak, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ] ; 4 uses
  %.sroa.029.sroa.14.0.insert.ext = phi i64 [ 281474976710656, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ]
  %.sroa.19.8.insert.ext = phi i16 [ %i.an, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ]
  %i.ap = or i8 %i.ao, %.sroa.029.sroa.6.0.lcssa
  %i.aq = icmp ne i8 %i.ap, 0
  %or.cond5 = select i1 %i.r, i1 true, i1 %i.aq
  br i1 %or.cond5, label %.thread50, label %bb.l

bb.l:                                             ; preds = %.thread48
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !20, !range !17, !noundef !126
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %.thread50, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.av = load i8, ptr %i.au, align 1, !tbaa !27, !range !17, !noundef !126
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %.thread50, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 25
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !32, !range !17, !noundef !126
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.thread50, label %bb.o

.thread50:                                        ; preds = %bb.n, %bb.m, %bb.l, %.thread48
  %i.ba = or i8 %i.ao, %.sroa.029.sroa.3.0.lcssa
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !308
  %i.bd = icmp sgt i32 %i.bc, 0
  %i.be = trunc nuw i8 %.sroa.029.sroa.3.0.lcssa to i1
  %i.bf = select i1 %i.be, i8 1, i8 %i.ao         ; 2 uses
  br i1 %i.bd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !29, !range !17, !noundef !126
  %i.bi = zext nneg i8 %i.bh to i16
  %i.bj = shl nuw nsw i16 %i.bi, 8
  br label %bb.q

bb.q:                                             ; preds = %.thread50, %bb.p, %bb.o
  %i.bk = phi i8 [ %i.bf, %bb.o ], [ %i.bf, %bb.p ], [ %i.ba, %.thread50 ]
  %.sroa.029.sroa.11.0.insert.ext = phi i64 [ 4294967296, %bb.o ], [ 0, %bb.p ], [ 4294967296, %.thread50 ]
  %.sroa.19.9.insert.ext = phi i16 [ 256, %bb.o ], [ %i.bj, %bb.p ], [ 256, %.thread50 ]
  %.sroa.19.9.insert.insert = or disjoint i16 %.sroa.19.9.insert.ext, %.sroa.19.8.insert.ext
  %i.bl = insertelement <4 x i8> poison, i8 %.sroa.029.sroa.3.0.lcssa, i64 0
  %i.bm = insertelement <4 x i8> %i.bl, i8 %i.ao, i64 1
  %i.bn = insertelement <4 x i8> %i.bm, i8 %i.bk, i64 2
  %i.bo = insertelement <4 x i8> %i.bn, i8 %.sroa.029.sroa.6.0.lcssa, i64 3
  %i.bp = zext <4 x i8> %i.bo to <4 x i64>
  %.sroa.029.sroa.9.0.insert.shift = select i1 %i.r, i64 16777216, i64 0
  %i.bq = shl nuw nsw <4 x i64> %i.bp, <i64 8, i64 56, i64 40, i64 16>
  %i.br = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.bq)
  %op.rdx = or i64 %i.br, %.sroa.029.sroa.9.0.insert.shift
  %op.rdx61 = or disjoint i64 %.sroa.029.sroa.11.0.insert.ext, %.sroa.029.sroa.14.0.insert.ext
  %op.rdx62 = or i64 %op.rdx, %op.rdx61
  %op.rdx63 = or disjoint i64 %op.rdx62, %.sroa.029.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i16 } poison, i64 %op.rdx63, 0
  %.fca.1.insert = insertvalue { i64, i16 } %.fca.0.insert, i16 %.sroa.19.9.insert.insert, 1
  ret { i64, i16 } %.fca.1.insert
}

declare noundef zeroext i1 @_ZNK12ListedForces19haveCpuListedForcesERK8t_fcdata(ptr noundef nonnull align 8 dereferenceable(2880), ptr noundef nonnull align 1) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK12ListedForces14haveCpuBondedsEv(ptr noundef nonnull align 8 dereferenceable(2880)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK3gmx15ListedForcesGpu16haveInteractionsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gmx17setupStepWorkloadEiNS_8ArrayRefIKNS_8MtsLevelEEElRKNS_22DomainLifetimeWorkloadERKNS_18SimulationWorkloadE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.gmx::StepWorkload") align 1 captures(none) initializes((0, 19)) %0, i32 noundef %1, ptr nofree readonly captures(address) %2, ptr nofree readnone captures(address) %3, i64 noundef %4, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(10) %5, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(29) %6) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %2, %3
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !311
  %i.d = sext i32 %i.c to i64
  %i.e = srem i64 %4, %i.d
  %i.f = icmp eq i64 %i.e, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ true, %bb.a ], [ %i.f, %bb.b ]  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i16 0, ptr %i.h, align 1
  %i.i = trunc i32 %1 to i8                       ; 3 uses
  %i.j = lshr i8 %i.i, 2                          ; 2 uses
  %i.k = lshr i32 %1, 8                           ; 2 uses
  %i.l = trunc i32 %i.k to i8
  %i.m = lshr i32 %1, 9
  %i.n = trunc i32 %i.m to i8
  %i.o = and i32 %1, 128
  %i.p = icmp ne i32 %i.o, 0                      ; 2 uses
  %i.q = lshr i32 %1, 11                          ; 2 uses
  %i.r = trunc i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = lshr i8 %i.i, 4
  %i.u = and i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 1, !tbaa !313
  %i.v = and i32 %1, 64
  %.not = icmp ne i32 %i.v, 0
  %i.w = load i8, ptr %6, align 1, !range !17
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond40 = select i1 %.not, i1 %i.x, i1 false
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !17
  %i.aa = trunc nuw i8 %i.z to i1
  %.not33 = xor i1 %i.aa, true
  %i.ab = or i1 %i.g, %.not33
  %i.ac = zext i1 %i.g to i8                      ; 3 uses
  %i.ad = zext i1 %i.p to i8
  %narrow = select i1 %or.cond40, i1 %i.ab, i1 false
  %i.ae = zext i1 %narrow to i8
  %i.af = insertelement <8 x i8> poison, i8 %i.i, i64 0
  %i.ag = insertelement <8 x i8> %i.af, i8 %i.j, i64 1
  %i.ah = insertelement <8 x i8> %i.ag, i8 %i.ac, i64 2
  %i.ai = insertelement <8 x i8> %i.ah, i8 %i.l, i64 3
  %i.aj = insertelement <8 x i8> %i.ai, i8 %i.n, i64 4
  %i.ak = insertelement <8 x i8> %i.aj, i8 %i.ad, i64 5
  %i.al = insertelement <8 x i8> %i.ak, i8 %i.r, i64 6
  %i.am = insertelement <8 x i8> %i.al, i8 %i.ae, i64 7
  %i.an = and <8 x i8> %i.am, <i8 1, i8 1, i8 -1, i8 1, i8 1, i8 -1, i8 1, i8 -1>
  %i.ao = and i8 %i.j, 1
  store <8 x i8> %i.an, ptr %0, align 1, !tbaa !314
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.aq = lshr i32 %1, 10
  %i.ar = trunc i32 %i.aq to i8
  %i.as = and i8 %i.ar, 1
  store i8 %i.as, ptr %i.ap, align 1, !tbaa !315
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.au = load i8, ptr %i.at, align 1, !tbaa !130, !range !17, !noundef !126
  %i.av = xor i8 %i.ao, 1                         ; 3 uses
  %i.aw = and i8 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !316
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 15
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !131, !range !17, !noundef !126
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = trunc i32 %i.k to i1                    ; 2 uses
  %i.bc = xor i1 %i.bb, true
  %i.bd = and i1 %i.bc, %i.ba                     ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bf = zext i1 %i.bd to i8                     ; 2 uses
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !317
  %or.cond = select i1 %i.g, i1 %i.bd, i1 false
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !28, !range !17 ; 3 uses
  br i1 %or.cond, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %6, i64 20
  %.pre38 = load i8, ptr %.phi.trans.insert37, align 1, !range !17
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bk = load i8, ptr %i.bj, align 1, !range !17 ; 2 uses
  %i.bl = trunc nuw i8 %i.bk to i1
  %not. = xor i1 %i.bi, true
  %i.bm = select i1 %not., i1 true, i1 %i.bl
  br i1 %i.bm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 22
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !31, !range !17, !noundef !126
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d, %bb.e
  %i.bp = phi i8 [ %.pre38, %._crit_edge ], [ 0, %bb.d ], [ %i.bk, %bb.e ] ; 2 uses
  %i.bq = phi i8 [ %i.bh, %._crit_edge ], [ 1, %bb.d ], [ %i.bh, %bb.e ]
  %i.br = phi i8 [ 0, %._crit_edge ], [ 1, %bb.d ], [ %i.bo, %bb.e ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !318
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 19
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !30, !range !17, !noundef !126 ; 2 uses
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = and i8 %i.bu, %i.av
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !319
  %i.by = select i1 %i.bv, i8 %i.bf, i8 0         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !320
  %i.ca = trunc nuw i8 %i.bq to i1
  %i.cb = trunc nuw i8 %i.bp to i1
  %i.cc = xor i1 %i.cb, true
  %i.cd = select i1 %i.ca, i1 %i.cc, i1 false
  %i.ce = select i1 %i.cd, i8 %i.ac, i8 0         ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !321
  %i.cg = and i8 %i.bp, %i.ac
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !322
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 26
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !127, !range !17, !noundef !126
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = trunc i32 %i.q to i1
  %i.cm = and i1 %i.cl, %i.ck
  %or.cond8 = and i1 %i.g, %i.cm
  %or.cond8.not = xor i1 %or.cond8, true
  %or.cond35 = or i1 %i.bb, %or.cond8.not
  br i1 %or.cond35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 5
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !21, !range !17, !noundef !126
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = xor i8 %i.ce, 1
  %spec.select = select i1 %i.cp, i8 0, i8 %i.cq
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.cr = phi i8 [ 0, %bb.f ], [ 0, %bb.g ], [ %spec.select, %bb.h ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !323
  %i.ct = trunc nuw i8 %i.by to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cv = load i8, ptr %i.cu, align 1, !range !17
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = xor i1 %i.cw, true
  %i.cy = select i1 %i.ct, i1 %i.cx, i1 false
  %i.cz = select i1 %i.cy, i8 %i.av, i8 0
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !324
  ret void
}

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare noundef zeroext i1 @_ZNK3gmx14ForceProviders16hasForceProviderEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef zeroext i1 @_Z19pull_have_potentialRK6pull_t(ptr noundef nonnull align 1) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_decidesimulationworkload.cpp() #10 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
end_hunk_0
