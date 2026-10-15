Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeLayout?download=true
inline.NumInlined: 2770
inline.NumDeleted: 1254
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4llvm10codelayout19computeExtTspLayoutENS_8ArrayRefImEES2_NS1_INS0_9EdgeCountEEE:bb.a
  %i.aow = getelementptr inbounds nuw i8, ptr %.05.i.i.i26.i, i64 24 ; 2 uses
  %.not.i.i.i27.i = icmp eq ptr %i.aow, %i.aop
  br i1 %.not.i.i.i27.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i25.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i, %_ZNSt6vectorIN12_GLOBAL__N_15NodeTESaIS1_EED2Ev.exit.i
  %.not.i.i1.i.i = icmp eq ptr %i.aoo, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit.i, label %bb.gi

bb.gi:                                            ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i
  %i.aox = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !75
  %i.aoz = ptrtoint ptr %i.aoy to i64
  %i.apa = ptrtoint ptr %i.aoo to i64
  %i.apb = sub i64 %i.aoz, %i.apa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aoo, i64 noundef %i.apb) #23
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit.i

_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit.i:       ; preds = %bb.gi, %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i
  %i.apc = load ptr, ptr %i.a, align 8, !tbaa !71 ; 5 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !70 ; 2 uses
  %.not4.i.i.i28.i = icmp eq ptr %i.apc, %i.ape
  br i1 %.not4.i.i.i28.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i36.i, label %.lr.ph.i.i.i29.i

.lr.ph.i.i.i29.i:                                 ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit.i, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i32.i
  %.05.i.i.i30.i = phi ptr [ %i.apl, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i32.i ], [ %i.apc, %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit.i ] ; 3 uses
  %i.apf = load ptr, ptr %.05.i.i.i30.i, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i.i.i.i.i31.i = icmp eq ptr %i.apf, null
  br i1 %.not.i.i.i.i.i.i.i31.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i32.i, label %bb.gj

bb.gj:                                            ; preds = %.lr.ph.i.i.i29.i
  %i.apg = getelementptr inbounds nuw i8, ptr %.05.i.i.i30.i, i64 16
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !79
  %i.api = ptrtoint ptr %i.aph to i64
  %i.apj = ptrtoint ptr %i.apf to i64
  %i.apk = sub i64 %i.api, %i.apj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.apf, i64 noundef %i.apk) #23
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i32.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i32.i: ; preds = %bb.gj, %.lr.ph.i.i.i29.i
  %i.apl = getelementptr inbounds nuw i8, ptr %.05.i.i.i30.i, i64 24 ; 2 uses
  %.not.i.i.i33.i = icmp eq ptr %i.apl, %i.ape
  br i1 %.not.i.i.i33.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i36.i, label %.lr.ph.i.i.i29.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i36.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i32.i, %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit.i
  %.not.i.i1.i37.i = icmp eq ptr %i.apc, null
  br i1 %.not.i.i1.i37.i, label %_ZN12_GLOBAL__N_110ExtTSPImplD2Ev.exit, label %bb.gk

bb.gk:                                            ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i36.i
  %i.apm = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !75
  %i.apo = ptrtoint ptr %i.apn to i64
  %i.app = ptrtoint ptr %i.apc to i64
  %i.apq = sub i64 %i.apo, %i.app
  tail call void @_ZdlPvm(ptr noundef nonnull %i.apc, i64 noundef %i.apq) #23
  br label %_ZN12_GLOBAL__N_110ExtTSPImplD2Ev.exit

_ZN12_GLOBAL__N_110ExtTSPImplD2Ev.exit:           ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i36.i, %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN4llvm10codelayout15calcExtTspScoreENS_8ArrayRefImEES2_NS1_INS0_9EdgeCountEEE(ptr nofree readonly captures(none) %0, i64 %1, ptr nofree readonly captures(none) %2, i64 %3, ptr nofree readonly captures(address) %4, i64 %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.64", align 8 ; 10 uses
  %7 = alloca %"class.llvm::SmallVector.64", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 6, ptr %i.c, align 4, !tbaa !162
  %i.d = icmp ugt i64 %3, 6                       ; 2 uses
  br i1 %i.d, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.loopexit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.loopexit: ; preds = %bb.a
  store i32 0, ptr %i.b, align 8, !tbaa !163
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.a, i64 noundef %3, i64 noundef 8) #22
  %i.e = load ptr, ptr %6, align 8, !tbaa !34
  br label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.sink.split

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i:          ; preds = %bb.a
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.sink.split

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.sink.split: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.loopexit
  %.sink = phi ptr [ %i.e, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.loopexit ], [ %i.a, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i ] ; 2 uses
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %3, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !42
  br label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit:         ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.sink.split, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i
  %i.f = phi ptr [ %i.a, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i ], [ %.sink, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.sink.split ] ; 6 uses
  %storemerge.i = trunc i64 %3 to i32             ; 2 uses
  store i32 %storemerge.i, ptr %i.b, align 8, !tbaa !163
  %i.g = icmp ugt i64 %1, 1
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit
  %i.h = add i64 %1, -1                           ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i64 %1, 2
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.h, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.055.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod76 = trunc i64 %i.h to i1
  call void @llvm.assume(i1 %lcmp.mod76)
  %i.j = getelementptr [8 x i8], ptr %0, i64 %.055.epil.init ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.l
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42
  %i.q = add i64 %i.p, %i.n
  %i.r = load i64, ptr %i.j, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.r
  store i64 %i.q, ptr %i.s, align 8, !tbaa !42
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.t, ptr %7, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 6, ptr %i.v, align 4, !tbaa !162
  br i1 %i.d, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit40.loopexit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i29

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit40.loopexit: ; preds = %._crit_edge
  store i32 0, ptr %i.u, align 8, !tbaa !163
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.t, i64 noundef %3, i64 noundef 8) #22
  %i.w = load ptr, ptr %7, align 8, !tbaa !34
  br label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit40.sink.split

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i29:        ; preds = %._crit_edge
  %.not.i30 = icmp eq i64 %3, 0
  br i1 %.not.i30, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit40, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit40.sink.split

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit40.sink.split: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i29, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit40.loopexit
  %.sink75 = phi ptr [ %i.w, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit40.loopexit ], [ %i.t, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i29 ] ; 2 uses
  %.idx.i.i.i.i.i.i31 = shl nuw nsw i64 %3, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink75, i8 0, i64 %.idx.i.i.i.i.i.i31, i1 false), !tbaa !42
  br label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit40

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit40:       ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit40.sink.split, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i29
  %i.x = phi ptr [ %i.t, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i29 ], [ %.sink75, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit40.sink.split ] ; 4 uses
  store i32 %storemerge.i, ptr %i.u, align 8, !tbaa !163
  %.idx = mul nuw nsw i64 %5, 24
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 2 uses
  %.not56 = icmp eq i64 %5, 0
  br i1 %.not56, label %._crit_edge63, label %.lr.ph58

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.055 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.at, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.z = getelementptr [8 x i8], ptr %0, i64 %.055 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !42 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ab
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !42
  %i.ag = add i64 %i.af, %i.ad
  %i.ah = load i64, ptr %i.z, align 8, !tbaa !42
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ah
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !42
  %i.aj = getelementptr [8 x i8], ptr %0, i64 %.055 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !42 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.al
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !42
  %i.aq = add i64 %i.ap, %i.an
  %i.ar = load i64, ptr %i.ak, align 8, !tbaa !42
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ar
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !42
  %i.at = add nuw i64 %.055, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !324

.lr.ph62:                                         ; preds = %.lr.ph58
  %i.au = load ptr, ptr %6, align 8, !tbaa !34    ; 2 uses
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL16BackwardDistance, i64 120), align 8 ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %.val.i = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL18BackwardWeightCond, i64 120), align 8
  %.val24.i = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL20BackwardWeightUncond, i64 120), align 8
  %i.ax = uitofp i32 %i.av to double
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL15ForwardDistance, i64 120), align 8 ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %.val25.i = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL17ForwardWeightCond, i64 120), align 8
  %.val26.i = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL19ForwardWeightUncond, i64 120), align 8
  %i.ba = uitofp i32 %i.ay to double
  %.val27.i = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL21FallthroughWeightCond, i64 120), align 8
  %.val28.i = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL23FallthroughWeightUncond, i64 120), align 8
  br label %bb.d

.lr.ph58:                                         ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit40, %.lr.ph58
  %.02757 = phi ptr [ %i.bf, %.lr.ph58 ], [ %4, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit40 ] ; 2 uses
  %i.bb = load i64, ptr %.02757, align 8, !tbaa !326
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !42
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !42
  %i.bf = getelementptr inbounds nuw i8, ptr %.02757, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.bf, %i.y
  br i1 %.not, label %.lr.ph62, label %.lr.ph58

._crit_edge63:                                    ; preds = %_ZN12_GLOBAL__N_111extTSPScoreEmmmmb.exit, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit40
  %.026.lcssa = phi double [ 0.000000e+00, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit40 ], [ %i.cs, %_ZN12_GLOBAL__N_111extTSPScoreEmmmmb.exit ]
  %i.bg = icmp eq ptr %i.x, %i.t
  br i1 %i.bg, label %_ZN4llvm11SmallVectorImLj6EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge63
  call void @free(ptr noundef %i.x) #22
  br label %_ZN4llvm11SmallVectorImLj6EED2Ev.exit

_ZN4llvm11SmallVectorImLj6EED2Ev.exit:            ; preds = %._crit_edge63, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.bh = load ptr, ptr %6, align 8, !tbaa !34    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.a
  br i1 %i.bi, label %_ZN4llvm11SmallVectorImLj6EED2Ev.exit41, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorImLj6EED2Ev.exit
  call void @free(ptr noundef %i.bh) #22
  br label %_ZN4llvm11SmallVectorImLj6EED2Ev.exit41

_ZN4llvm11SmallVectorImLj6EED2Ev.exit41:          ; preds = %_ZN4llvm11SmallVectorImLj6EED2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret double %.026.lcssa

bb.d:                                             ; preds = %.lr.ph62, %_ZN12_GLOBAL__N_111extTSPScoreEmmmmb.exit
  %.02561 = phi ptr [ %4, %.lr.ph62 ], [ %i.ct, %_ZN12_GLOBAL__N_111extTSPScoreEmmmmb.exit ] ; 4 uses
  %.02660 = phi double [ 0.000000e+00, %.lr.ph62 ], [ %i.cs, %_ZN12_GLOBAL__N_111extTSPScoreEmmmmb.exit ]
  %i.bj = load i64, ptr %.02561, align 8, !tbaa !326 ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !42
  %i.bm = icmp ugt i64 %i.bl, 1                   ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bj
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !42
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bj
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !42
  %i.br = getelementptr inbounds nuw i8, ptr %.02561, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !327
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !42 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.02561, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !328 ; 3 uses
  %i.bx = add i64 %i.bq, %i.bo                    ; 4 uses
  %i.by = icmp eq i64 %i.bx, %i.bu
  br i1 %i.by, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %8 = select i1 %i.bm, double %.val27.i, double %.val28.i
  %i.bz = uitofp i64 %i.bw to double
  %i.ca = fmul double %8, %i.bz
  br label %_ZN12_GLOBAL__N_111extTSPScoreEmmmmb.exit

bb.f:                                             ; preds = %bb.d
  %i.cb = icmp ult i64 %i.bx, %i.bu
  br i1 %i.cb, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.cc = sub nuw i64 %i.bu, %i.bx                ; 2 uses
  %i.cd = icmp ugt i64 %i.cc, %i.az
  br i1 %i.cd, label %_ZN12_GLOBAL__N_111extTSPScoreEmmmmb.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %9 = select i1 %i.bm, double %.val25.i, double %.val26.i
  %i.ce = uitofp nneg i64 %i.cc to double
  %i.cf = fdiv double %i.ce, %i.ba
  %i.cg = fsub double 1.000000e+00, %i.cf
  %i.ch = fmul double %i.cg, %9
  %i.ci = uitofp i64 %i.bw to double
  %i.cj = fmul double %i.ch, %i.ci
  br label %_ZN12_GLOBAL__N_111extTSPScoreEmmmmb.exit

bb.i:                                             ; preds = %bb.f
  %i.ck = sub nuw i64 %i.bx, %i.bu                ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, %i.aw
  br i1 %i.cl, label %_ZN12_GLOBAL__N_111extTSPScoreEmmmmb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %10 = select i1 %i.bm, double %.val.i, double %.val24.i
  %i.cm = uitofp nneg i64 %i.ck to double
  %i.cn = fdiv double %i.cm, %i.ax
  %i.co = fsub double 1.000000e+00, %i.cn
  %i.cp = fmul double %i.co, %10
  %i.cq = uitofp i64 %i.bw to double
  %i.cr = fmul double %i.cp, %i.cq
  br label %_ZN12_GLOBAL__N_111extTSPScoreEmmmmb.exit

_ZN12_GLOBAL__N_111extTSPScoreEmmmmb.exit:        ; preds = %bb.e, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi double [ %i.ca, %bb.e ], [ 0.000000e+00, %bb.g ], [ %i.cj, %bb.h ], [ %i.cr, %bb.j ], [ 0.000000e+00, %bb.i ]
  %i.cs = fadd double %.02660, %.0.i              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.02561, i64 24 ; 2 uses
  %.not28 = icmp eq ptr %i.ct, %i.y
  br i1 %.not28, label %._crit_edge63, label %bb.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN4llvm10codelayout15calcExtTspScoreENS_8ArrayRefImEENS1_INS0_9EdgeCountEEE(ptr nofree readonly captures(none) %0, i64 %1, ptr nofree readonly captures(address) %2, i64 %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.64", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !163
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 6, ptr %i.c, align 4, !tbaa !162
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, 6
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %i.a, i64 noundef %1, i64 noundef 8) #22
  %.pre.i.i.i = load i32, ptr %i.b, align 8, !tbaa !163
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %1, %.pre13.i.i.i
  %.pre.pre.pre = load ptr, ptr %4, align 8, !tbaa !34 ; 2 uses
  br i1 %.not11.i.i.i, label %.lr.ph, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i.i.i, %bb.b
  %i.f = phi ptr [ %i.a, %bb.b ], [ %.pre.pre.pre, %_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ 0, %bb.b ], [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i.i.i ] ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.pre-phi.i.i3.i
  %i.h = sub i64 %1, %.pre-phi.i.i3.i
  %i.i = shl i64 %i.h, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.i, i1 false), !tbaa !42
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i.i.i
  %.pre.pre = phi ptr [ %i.f, %.lr.ph.preheader.i.i.i ], [ %.pre.pre.pre, %_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i.i.i ] ; 4 uses
  %i.j = trunc i64 %1 to i32
  store i32 %i.j, ptr %i.b, align 8, !tbaa !163
  %i.k = and i64 %1, 4294967295                   ; 2 uses
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %1, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.pre.pre, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x i64> %vec.ind, ptr %i.l, align 8, !tbaa !42
  store <2 x i64> %step.add, ptr %i.m, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.012.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %i.o = phi i64 [ 0, %bb.a ], [ %i.k, %middle.block ], [ %i.k, %scalar.ph ]
  %.pre17 = phi ptr [ %i.a, %bb.a ], [ %.pre.pre, %middle.block ], [ %.pre.pre, %scalar.ph ]
  %i.p = call noundef double @_ZN4llvm10codelayout15calcExtTspScoreENS_8ArrayRefImEES2_NS1_INS0_9EdgeCountEEE(ptr nonnull %.pre17, i64 %i.o, ptr %0, i64 %1, ptr %2, i64 %3)
  %i.q = load ptr, ptr %4, align 8, !tbaa !34     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZN4llvm11SmallVectorImLj6EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.q) #22
  br label %_ZN4llvm11SmallVectorImLj6EED2Ev.exit

_ZN4llvm11SmallVectorImLj6EED2Ev.exit:            ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret double %i.p

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.012 = phi i64 [ %i.t, %scalar.ph ], [ %.012.ph, %scalar.ph.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.pre.pre, i64 %.012
  store i64 %.012, ptr %i.s, align 8, !tbaa !42
  %i.t = add nuw i64 %.012, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %1
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !330
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm10codelayout26computeCacheDirectedLayoutERKNS0_12CDSortConfigENS_8ArrayRefImEES5_NS4_INS0_9EdgeCountEEES5_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.29") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree readonly captures(none) %2, i64 %3, ptr nofree readonly captures(none) %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.28") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %7) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %"class.llvm::DenseMap", align 8    ; 19 uses
  %9 = alloca %"struct.(anonymous namespace)::MergeGainT", align 8 ; 4 uses
  %10 = alloca %"struct.(anonymous namespace)::MergedNodesT", align 8 ; 9 uses
  %11 = alloca %"class.std::vector", align 8      ; 5 uses
  %12 = alloca %"struct.(anonymous namespace)::MergeGainT", align 8 ; 4 uses
  %13 = alloca %"class.std::set", align 8         ; 15 uses
  %14 = alloca %"class.(anonymous namespace)::CDSortImpl", align 8 ; 37 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %.sroa.067.0.copyload = load ptr, ptr %6, align 8, !tbaa !40
  %.sroa.268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.268.0.copyload = load i64, ptr %.sroa.268.0..sroa_idx, align 8, !tbaa !42 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %14, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !421
  %i.b = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 4 uses
  store i64 %3, ptr %i.b, align 8, !tbaa !422
  %i.c = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 112 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 136 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 160 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 184 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 192 ; 2 uses
  %i.k = icmp ugt i64 %3, 82351536043346212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.c, i8 0, i64 160, i1 false)
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 104 ; 2 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.n = mul nuw nsw i64 %3, 112
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 3 uses
  store ptr %i.o, ptr %i.e, align 8, !tbaa !72
  store ptr %i.o, ptr %i.m, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw [112 x i8], ptr %i.o, i64 %3
  store ptr %i.p, ptr %i.l, align 8, !tbaa !74
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.v
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70   ; 7 uses
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !71   ; 10 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = sdiv exact i64 %i.v, 24                  ; 7 uses
  %i.x = icmp ugt i64 %i.eb, %i.w
  br i1 %i.x, label %bb.d, label %bb.h

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.y = sub nuw i64 %i.eb, %i.w                  ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = sub i64 %i.ab, %i.t
  %i.ad = sdiv exact i64 %i.ac, 24                ; 2 uses
  %i.ae = icmp ult i64 %i.w, 384307168202282326
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = sub nuw nsw i64 384307168202282325, %i.w
  %i.ag = icmp ule i64 %i.ad, %i.af
  tail call void @llvm.assume(i1 %i.ag)
  %.not23.i53 = icmp ult i64 %i.ad, %i.y
  br i1 %.not23.i53, label %bb.e, label %_ZSt27__uninitialized_default_n_aIPSt6vectorImSaImEEmS2_ET_S4_T0_RSaIT1_E.exit.i54

_ZSt27__uninitialized_default_n_aIPSt6vectorImSaImEEmS2_ET_S4_T0_RSaIT1_E.exit.i54: ; preds = %bb.d
  %i.ah = mul nuw nsw i64 %i.y, 24                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.ah, i1 false)
  %scevgep.i.i.i.i55 = getelementptr i8, ptr %i.r, i64 %i.ah
  store ptr %scevgep.i.i.i.i55, ptr %i.q, align 8, !tbaa !70
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit.i.ithread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.ai = icmp ugt i64 %i.eb, 384307168202282325
  br i1 %i.ai, label %bb.f, label %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit.i56

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #24
  unreachable

_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit.i56: ; preds = %bb.e
  %.sroa.speculated.i.i57 = tail call i64 @llvm.umax.i64(i64 %i.w, i64 %i.y)
  %i.aj = add nuw nsw i64 %.sroa.speculated.i.i57, %i.w
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 384307168202282325) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_16ChainT10mergeEdgesEPS0_:bb.a
bb.ag:                                            ; preds = %_ZN12_GLOBAL__N_16ChainT7addEdgeEPS0_PNS_9ChainEdgeE.exit54
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %.val3.i = load ptr, ptr %i.dj, align 8, !tbaa !114 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 64 ; 2 uses
  %.val.i58 = load ptr, ptr %i.dk, align 8, !tbaa !114 ; 5 uses
  %.not13.i = icmp eq ptr %.val3.i, %.val.i58
  br i1 %.not13.i, label %_ZN12_GLOBAL__N_16ChainT10removeEdgeEPS0_.exit, label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %bb.ag, %bb.aj
  %.sroa.09.014.i = phi ptr [ %i.fd, %bb.aj ], [ %.val3.i, %bb.ag ] ; 3 uses
  %i.dl = load ptr, ptr %.sroa.09.014.i, align 8, !tbaa !512
  %i.dm = icmp eq ptr %i.dl, %1
  br i1 %i.dm, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %.lr.ph.i59
  %i.dn = ptrtoint ptr %.sroa.09.014.i to i64
  %i.do = ptrtoint ptr %.val3.i to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = getelementptr inbounds i8, ptr %.val3.i, i64 %i.dp ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 4 uses
  %.not.i.i.i61 = icmp eq ptr %i.dr, %.val.i58
  br i1 %.not.i.i.i61, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ds = ptrtoint ptr %.val.i58 to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 4                 ; 5 uses
  %i.dw = icmp sgt i64 %i.dv, 0
  br i1 %i.dw, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.ai
  %xtraiter = and i64 %i.dv, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ea, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %.0812.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.dr, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.dx = load <2 x ptr>, ptr %.0911.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !115
  store <2 x ptr> %i.dx, ptr %.0812.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !115
  %i.dy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ea = add nsw i64 %.013.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !506

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.013.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ea, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.0812.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.0911.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.eb = icmp ult i64 %i.dv, 8
  br i1 %i.eb, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i = phi i64 [ %i.fa, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0812.i.i.i.i.i.i.i.i = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0812.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ec = load <2 x ptr>, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !115
  store <2 x ptr> %i.ec, ptr %.0812.i.i.i.i.i.i.i.i, align 8, !tbaa !115
  %i.ed = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i.i, i64 16
  %i.ef = load <2 x ptr>, ptr %i.ed, align 8, !tbaa !115
  store <2 x ptr> %i.ef, ptr %i.ee, align 8, !tbaa !115
  %i.eg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i.i, i64 32
  %i.ei = load <2 x ptr>, ptr %i.eg, align 8, !tbaa !115
  store <2 x ptr> %i.ei, ptr %i.eh, align 8, !tbaa !115
  %i.ej = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 48
  %i.ek = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i.i, i64 48
  %i.el = load <2 x ptr>, ptr %i.ej, align 8, !tbaa !115
  store <2 x ptr> %i.el, ptr %i.ek, align 8, !tbaa !115
  %i.em = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 64
  %i.en = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i.i, i64 64
  %i.eo = load <2 x ptr>, ptr %i.em, align 8, !tbaa !115
  store <2 x ptr> %i.eo, ptr %i.en, align 8, !tbaa !115
  %i.ep = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i.i, i64 80
  %i.er = load <2 x ptr>, ptr %i.ep, align 8, !tbaa !115
  store <2 x ptr> %i.er, ptr %i.eq, align 8, !tbaa !115
  %i.es = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 96
  %i.et = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i.i, i64 96
  %i.eu = load <2 x ptr>, ptr %i.es, align 8, !tbaa !115
  store <2 x ptr> %i.eu, ptr %i.et, align 8, !tbaa !115
  %i.ev = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 112
  %i.ew = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i.i, i64 112
  %i.ex = load <2 x ptr>, ptr %i.ev, align 8, !tbaa !115
  store <2 x ptr> %i.ex, ptr %i.ew, align 8, !tbaa !115
  %i.ey = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 128
  %i.ez = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i.i, i64 128
  %i.fa = add nsw i64 %.013.i.i.i.i.i.i.i.i, -8
  %i.fb = icmp sgt i64 %.013.i.i.i.i.i.i.i.i, 8
  br i1 %i.fb, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.i, !llvm.loop !507

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %bb.ai, %bb.ah
  %i.fc = getelementptr inbounds i8, ptr %.val.i58, i64 -16
  store ptr %i.fc, ptr %i.dk, align 8, !tbaa !134
  br label %_ZN12_GLOBAL__N_16ChainT10removeEdgeEPS0_.exit

bb.aj:                                            ; preds = %.lr.ph.i59
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i, i64 16 ; 2 uses
  %.not.i60 = icmp eq ptr %i.fd, %.val.i58
  br i1 %.not.i60, label %_ZN12_GLOBAL__N_16ChainT10removeEdgeEPS0_.exit, label %.lr.ph.i59, !llvm.loop !508

_ZN12_GLOBAL__N_16ChainT10removeEdgeEPS0_.exit:   ; preds = %bb.aj, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.i, %bb.ag, %_ZN12_GLOBAL__N_16ChainT7addEdgeEPS0_PNS_9ChainEdgeE.exit54
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.062.068, i64 16 ; 2 uses
  %.not63 = icmp eq ptr %i.fe, %.val34
  br i1 %.not63, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef double @_ZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree readonly captures(address_is_null) %.0.val, ptr nofree readonly captures(address_is_null) %.8.val) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !110
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10.i = load ptr, ptr %i.c, align 8, !tbaa !110 ; 2 uses
  %.not5.i = icmp eq ptr %.val10.i, %i.b
  br i1 %.not5.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !110
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val8.i = load ptr, ptr %i.g, align 8, !tbaa !110 ; 2 uses
  %.not37.i = icmp eq ptr %.val8.i, %i.f
  br i1 %.not37.i, label %._crit_edge11.i, label %.lr.ph10.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.h = phi i64 [ %i.m, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.02.06.i, align 8, !tbaa !85 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.h, ptr %i.j, align 8, !tbaa !204
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !203
  %i.m = add i64 %i.l, %i.h                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.n, %.val10.i
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !513

._crit_edge11.i:                                  ; preds = %.lr.ph10.i, %._crit_edge.i
  %.1 = phi i64 [ %.0, %._crit_edge.i ], [ %i.x, %.lr.ph10.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !110
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val6.i = load ptr, ptr %i.r, align 8, !tbaa !110 ; 2 uses
  %.not412.i = icmp eq ptr %.val6.i, %i.q
  br i1 %.not412.i, label %_ZNK12_GLOBAL__N_112MergedNodesT7forEachIZNKS_10ExtTSPImpl11extTSPScoreERKS0_RKNS_12MergedJumpsTEEUlPKNS_5NodeTEE_EEvRKT_.exit, label %.lr.ph15.i

.lr.ph10.i:                                       ; preds = %._crit_edge.i, %.lr.ph10.i
  %i.s = phi i64 [ %i.x, %.lr.ph10.i ], [ %.0, %._crit_edge.i ] ; 2 uses
  %.sroa.01.08.i = phi ptr [ %i.y, %.lr.ph10.i ], [ %i.f, %._crit_edge.i ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.01.08.i, align 8, !tbaa !85 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i64 %i.s, ptr %i.u, align 8, !tbaa !204
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !203
  %i.x = add i64 %i.w, %i.s                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i, i64 8 ; 2 uses
  %.not3.i = icmp eq ptr %i.y, %.val8.i
  br i1 %.not3.i, label %._crit_edge11.i, label %.lr.ph10.i, !llvm.loop !514

.lr.ph15.i:                                       ; preds = %._crit_edge11.i, %.lr.ph15.i
  %i.z = phi i64 [ %i.ae, %.lr.ph15.i ], [ %.1, %._crit_edge11.i ] ; 2 uses
  %.sroa.0.013.i = phi ptr [ %i.af, %.lr.ph15.i ], [ %i.q, %._crit_edge11.i ] ; 2 uses
  %i.aa = load ptr, ptr %.sroa.0.013.i, align 8, !tbaa !85 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !204
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !203
  %i.ae = add i64 %i.ad, %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 8 ; 2 uses
  %.not4.i = icmp eq ptr %i.af, %.val6.i
  br i1 %.not4.i, label %_ZNK12_GLOBAL__N_112MergedNodesT7forEachIZNKS_10ExtTSPImpl11extTSPScoreERKS0_RKNS_12MergedJumpsTEEUlPKNS_5NodeTEE_EEvRKT_.exit, label %.lr.ph15.i, !llvm.loop !515

_ZNK12_GLOBAL__N_112MergedNodesT7forEachIZNKS_10ExtTSPImpl11extTSPScoreERKS0_RKNS_12MergedJumpsTEEUlPKNS_5NodeTEE_EEvRKT_.exit: ; preds = %.lr.ph15.i, %._crit_edge11.i
  %.not14.i = icmp eq ptr %.0.val, null
  br i1 %.not14.i, label %.loopexit.i, label %bb.b

bb.b:                                             ; preds = %_ZNK12_GLOBAL__N_112MergedNodesT7forEachIZNKS_10ExtTSPImpl11extTSPScoreERKS0_RKNS_12MergedJumpsTEEUlPKNS_5NodeTEE_EEvRKT_.exit
  %.val.i = load ptr, ptr %.0.val, align 8, !tbaa !121 ; 2 uses
  %i.ag = getelementptr i8, ptr %.0.val, i64 8
  %.val15.i = load ptr, ptr %i.ag, align 8, !tbaa !121 ; 2 uses
  %.not23.i = icmp eq ptr %.val.i, %.val15.i
  br i1 %.not23.i, label %.loopexit.i, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %bb.b
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL16BackwardDistance, i64 120), align 8 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = uitofp i32 %i.ah to double
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL15ForwardDistance, i64 120), align 8 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = uitofp i32 %i.ak to double
  %.val.i.i.i = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL18BackwardWeightCond, i64 120), align 8
  %.val24.i.i.i = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL20BackwardWeightUncond, i64 120), align 8
  %.val25.i.i.i = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL17ForwardWeightCond, i64 120), align 8
  %.val26.i.i.i = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL19ForwardWeightUncond, i64 120), align 8
  %.val27.i.i.i = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL21FallthroughWeightCond, i64 120), align 8
  %.val28.i.i.i = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL23FallthroughWeightUncond, i64 120), align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.i, %.lr.ph.i3
  %.06 = phi double [ 0.000000e+00, %.lr.ph.i3 ], [ %i.bx, %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.i ]
  %.sroa.01.04.i = phi ptr [ %.val.i, %.lr.ph.i3 ], [ %i.by, %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.i ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.01.04.i, align 8, !tbaa !89 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !92 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !93
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !204
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !203
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !204 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !94 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !95, !range !30, !noundef !31
  %i.bb = trunc nuw i8 %i.ba to i1                ; 3 uses
  %i.bc = add i64 %i.au, %i.as                    ; 4 uses
  %i.bd = icmp eq i64 %i.bc, %i.aw
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %1 = select i1 %i.bb, double %.val27.i.i.i, double %.val28.i.i.i
  %i.be = uitofp i64 %i.ay to double
  %i.bf = fmul double %1, %i.be
  br label %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.bg = icmp ult i64 %i.bc, %i.aw
  br i1 %i.bg, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bh = sub nuw i64 %i.aw, %i.bc                ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, %i.al
  br i1 %i.bi, label %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %2 = select i1 %i.bb, double %.val25.i.i.i, double %.val26.i.i.i
  %i.bj = uitofp nneg i64 %i.bh to double
  %i.bk = fdiv double %i.bj, %i.am
  %i.bl = fsub double 1.000000e+00, %i.bk
  %i.bm = fmul double %i.bl, %2
  %i.bn = uitofp i64 %i.ay to double
  %i.bo = fmul double %i.bm, %i.bn
  br label %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.i

bb.h:                                             ; preds = %bb.e
  %i.bp = sub nuw i64 %i.bc, %i.aw                ; 2 uses
  %i.bq = icmp ugt i64 %i.bp, %i.ai
  br i1 %i.bq, label %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %3 = select i1 %i.bb, double %.val.i.i.i, double %.val24.i.i.i
  %i.br = uitofp nneg i64 %i.bp to double
  %i.bs = fdiv double %i.br, %i.aj
  %i.bt = fsub double 1.000000e+00, %i.bs
  %i.bu = fmul double %i.bt, %3
  %i.bv = uitofp i64 %i.ay to double
  %i.bw = fmul double %i.bu, %i.bv
  br label %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.i

_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.d
  %.0.i.i.i = phi double [ %i.bf, %bb.d ], [ 0.000000e+00, %bb.f ], [ %i.bo, %bb.g ], [ %i.bw, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.bx = fadd double %.06, %.0.i.i.i             ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 8 ; 2 uses
  %.not2.i = icmp eq ptr %i.by, %.val15.i
  br i1 %.not2.i, label %.loopexit.i, label %bb.c

.loopexit.i:                                      ; preds = %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.i, %bb.b, %_ZNK12_GLOBAL__N_112MergedNodesT7forEachIZNKS_10ExtTSPImpl11extTSPScoreERKS0_RKNS_12MergedJumpsTEEUlPKNS_5NodeTEE_EEvRKT_.exit
  %.17 = phi double [ 0.000000e+00, %_ZNK12_GLOBAL__N_112MergedNodesT7forEachIZNKS_10ExtTSPImpl11extTSPScoreERKS0_RKNS_12MergedJumpsTEEUlPKNS_5NodeTEE_EEvRKT_.exit ], [ 0.000000e+00, %bb.b ], [ %i.bx, %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.i ] ; 3 uses
  %.not14.1.i = icmp eq ptr %.8.val, null
  br i1 %.not14.1.i, label %_ZNK12_GLOBAL__N_112MergedJumpsT7forEachIZNKS_10ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKS0_EUlPKNS_5JumpTEE_EEvRKT_.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit.i
  %.val.1.i = load ptr, ptr %.8.val, align 8, !tbaa !121 ; 2 uses
  %i.bz = getelementptr i8, ptr %.8.val, i64 8
  %.val15.1.i = load ptr, ptr %i.bz, align 8, !tbaa !121 ; 2 uses
  %.not23.1.i = icmp eq ptr %.val.1.i, %.val15.1.i
  br i1 %.not23.1.i, label %_ZNK12_GLOBAL__N_112MergedJumpsT7forEachIZNKS_10ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKS0_EUlPKNS_5JumpTEE_EEvRKT_.exit, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %bb.j
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL16BackwardDistance, i64 120), align 8 ; 2 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = uitofp i32 %i.ca to double
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL15ForwardDistance, i64 120), align 8 ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = uitofp i32 %i.cd to double
  %.val.i.i.1.i = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL18BackwardWeightCond, i64 120), align 8
  %.val24.i.i.1.i = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL20BackwardWeightUncond, i64 120), align 8
  %.val25.i.i.1.i = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL17ForwardWeightCond, i64 120), align 8
  %.val26.i.i.1.i = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL19ForwardWeightUncond, i64 120), align 8
  %.val27.i.i.1.i = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL21FallthroughWeightCond, i64 120), align 8
  %.val28.i.i.1.i = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL23FallthroughWeightUncond, i64 120), align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.1.i, %.lr.ph.1.i
  %.2 = phi double [ %.17, %.lr.ph.1.i ], [ %i.dq, %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.1.i ]
  %.sroa.01.04.1.i = phi ptr [ %.val.1.i, %.lr.ph.1.i ], [ %i.dr, %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.1.i ] ; 2 uses
  %i.cg = load ptr, ptr %.sroa.01.04.1.i, align 8, !tbaa !89 ; 4 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !92 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !93
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !204
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !203
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !204 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !94 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !95, !range !30, !noundef !31
  %i.cu = trunc nuw i8 %i.ct to i1                ; 3 uses
  %i.cv = add i64 %i.cn, %i.cl                    ; 4 uses
  %i.cw = icmp eq i64 %i.cv, %i.cp
  br i1 %i.cw, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = icmp ult i64 %i.cv, %i.cp
  br i1 %i.cx, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cy = sub nuw i64 %i.cv, %i.cp                ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, %i.cb
  br i1 %i.cz, label %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.1.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %4 = select i1 %i.cu, double %.val.i.i.1.i, double %.val24.i.i.1.i
  %i.da = uitofp nneg i64 %i.cy to double
  %i.db = fdiv double %i.da, %i.cc
  %i.dc = fsub double 1.000000e+00, %i.db
  %i.dd = fmul double %i.dc, %4
  %i.de = uitofp i64 %i.cr to double
  %i.df = fmul double %i.dd, %i.de
  br label %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.1.i

bb.o:                                             ; preds = %bb.l
  %i.dg = sub nuw i64 %i.cp, %i.cv                ; 2 uses
  %i.dh = icmp ugt i64 %i.dg, %i.ce
  br i1 %i.dh, label %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.1.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %5 = select i1 %i.cu, double %.val25.i.i.1.i, double %.val26.i.i.1.i
  %i.di = uitofp nneg i64 %i.dg to double
  %i.dj = fdiv double %i.di, %i.cf
  %i.dk = fsub double 1.000000e+00, %i.dj
  %i.dl = fmul double %i.dk, %5
  %i.dm = uitofp i64 %i.cr to double
  %i.dn = fmul double %i.dl, %i.dm
  br label %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.1.i

bb.q:                                             ; preds = %bb.k
  %6 = select i1 %i.cu, double %.val27.i.i.1.i, double %.val28.i.i.1.i
  %i.do = uitofp i64 %i.cr to double
  %i.dp = fmul double %6, %i.do
  br label %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.1.i

_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.1.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.0.i.i.1.i = phi double [ %i.dp, %bb.q ], [ 0.000000e+00, %bb.o ], [ %i.dn, %bb.p ], [ %i.df, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.dq = fadd double %.2, %.0.i.i.1.i            ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.01.04.1.i, i64 8 ; 2 uses
  %.not2.1.i = icmp eq ptr %i.dr, %.val15.1.i
  br i1 %.not2.1.i, label %_ZNK12_GLOBAL__N_112MergedJumpsT7forEachIZNKS_10ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKS0_EUlPKNS_5JumpTEE_EEvRKT_.exit, label %bb.k

_ZNK12_GLOBAL__N_112MergedJumpsT7forEachIZNKS_10ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKS0_EUlPKNS_5JumpTEE_EEvRKT_.exit: ; preds = %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.1.i, %.loopexit.i, %bb.j
  %.3 = phi double [ %.17, %.loopexit.i ], [ %.17, %bb.j ], [ %i.dq, %_ZZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTEENKUlPKNS_5JumpTEE_clES9_.exit.1.i ]
  ret double %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE6insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEvEENS7_IPS2_S4_EESA_T_SD_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) unnamed_addr #3 align 2 {
bb.a:
  %.val9 = load ptr, ptr %0, align 8, !tbaa !110  ; 6 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %.val9 to i64               ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.val9, i64 %i.c ; 10 uses
  %.not73.i = icmp eq ptr %2, %3
  br i1 %.not73.i, label %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.f = ptrtoint ptr %2 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 12 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !137  ; 12 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 4 uses
  %i.o = sub i64 %i.m, %i.n
  %.not.i = icmp ult i64 %i.o, %i.g
  br i1 %.not.i, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = sub i64 %i.n, %i.a                       ; 9 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %i.r = icmp ugt i64 %i.q, %i.h
  br i1 %i.r, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN12_GLOBAL__N_15NodeTESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

bb.d:                                             ; preds = %bb.c
  %i.s = sub nsw i64 0, %i.h
  %i.t = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.s ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = icmp sgt i64 %i.g, 8                     ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f, !prof !187

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr nonnull align 8 %i.t, i64 %i.g, i1 false)
  %.pre75.i = load ptr, ptr %i.k, align 8, !tbaa !137
  br label %_ZSt22__uninitialized_move_aIPPN12_GLOBAL__N_15NodeTES3_SaIS2_EET0_T_S6_S5_RT1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.w = icmp eq i64 %i.g, 8
  br i1 %i.w, label %bb.g, label %_ZSt22__uninitialized_move_aIPPN12_GLOBAL__N_15NodeTES3_SaIS2_EET0_T_S6_S5_RT1_.exit.i

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !85
  store ptr %.val.i.i.i.i.i.i.i.i.i.i, ptr %i.l, align 8, !tbaa !85
  br label %_ZSt22__uninitialized_move_aIPPN12_GLOBAL__N_15NodeTES3_SaIS2_EET0_T_S6_S5_RT1_.exit.i

_ZSt22__uninitialized_move_aIPPN12_GLOBAL__N_15NodeTES3_SaIS2_EET0_T_S6_S5_RT1_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.x = phi ptr [ %.pre75.i, %bb.e ], [ %i.l, %bb.f ], [ %i.l, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.g
  store ptr %i.y, ptr %i.k, align 8, !tbaa !137
  %i.z = sub i64 %i.u, %i.a                       ; 3 uses
  %i.aa = ashr exact i64 %i.z, 3                  ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 1
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !187

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN12_GLOBAL__N_15NodeTES3_SaIS2_EET0_T_S6_S5_RT1_.exit.i
  %i.ac = sub nsw i64 0, %i.aa
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.d, i64 %i.z, i1 false)
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_15NodeTES3_ET0_T_S5_S4_.exit.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN12_GLOBAL__N_15NodeTES3_SaIS2_EET0_T_S6_S5_RT1_.exit.i
  %i.ae = icmp eq i64 %i.z, 8
  br i1 %i.ae, label %bb.j, label %_ZSt13move_backwardIPPN12_GLOBAL__N_15NodeTES3_ET0_T_S5_S4_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds i8, ptr %i.l, i64 -8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !85
  store ptr %.val.i.i.i.i.i.i, ptr %i.af, align 8, !tbaa !85
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_15NodeTES3_ET0_T_S5_S4_.exit.i

_ZSt13move_backwardIPPN12_GLOBAL__N_15NodeTES3_ET0_T_S5_S4_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  br i1 %i.v, label %bb.k, label %bb.l, !prof !187

bb.k:                                             ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_15NodeTES3_ET0_T_S5_S4_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %2, i64 %i.g, i1 false)
  br label %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_15NodeTES3_ET0_T_S5_S4_.exit.i
  %i.ag = icmp eq i64 %i.g, 8
  br i1 %i.ag, label %bb.m, label %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag.exit

bb.m:                                             ; preds = %bb.l
  %.val.i.i.i.i.i51.i = load ptr, ptr %2, align 8, !tbaa !85
  store ptr %.val.i.i.i.i.i51.i, ptr %i.d, align 8, !tbaa !85
  br label %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN12_GLOBAL__N_15NodeTESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.p, 8
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.p ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.e, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.n, label %bb.o, !prof !187

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN12_GLOBAL__N_15NodeTESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !137
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN12_GLOBAL__N_15NodeTESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit.i

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN12_GLOBAL__N_15NodeTESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN12_GLOBAL__N_15NodeTESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit.i

bb.p:                                             ; preds = %bb.o
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !85
  store ptr %.val.i.i.i.i.i.i.i.i.i, ptr %i.l, align 8, !tbaa !85
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN12_GLOBAL__N_15NodeTESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit.i

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN12_GLOBAL__N_15NodeTESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.an = phi ptr [ %.pre.i, %bb.n ], [ %i.l, %bb.o ], [ %i.l, %bb.p ]
  %i.ao = sub nuw nsw i64 %i.h, %i.q
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao ; 5 uses
  store ptr %i.ap, ptr %i.k, align 8, !tbaa !137
  %i.aq = icmp sgt i64 %i.p, 8
  br i1 %i.aq, label %bb.r, label %bb.q, !prof !187

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN12_GLOBAL__N_15NodeTESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit.i
  br i1 %i.ah, label %bb.t, label %bb.s

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN12_GLOBAL__N_15NodeTESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ap, ptr align 8 %i.d, i64 %i.p, i1 false)
  %.pre74.i = load ptr, ptr %i.k, align 8, !tbaa !137
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre74.i, i64 %i.p
  store ptr %i.ar, ptr %i.k, align 8, !tbaa !137
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %2, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag.exit

bb.s:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.p
  store ptr %i.as, ptr %i.k, align 8, !tbaa !137
  br label %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag.exit

bb.t:                                             ; preds = %bb.q
  %.val.i.i.i.i.i.i.i.i.i52.i = load ptr, ptr %i.d, align 8, !tbaa !85
  store ptr %.val.i.i.i.i.i.i.i.i.i52.i, ptr %i.ap, align 8, !tbaa !85
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.p
  store ptr %i.at, ptr %i.k, align 8, !tbaa !137
  %.val.i.i.i.i.i54.i = load ptr, ptr %2, align 8, !tbaa !85
  store ptr %.val.i.i.i.i.i54.i, ptr %i.d, align 8, !tbaa !85
  br label %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag.exit

bb.u:                                             ; preds = %bb.b
  %i.au = sub i64 %i.n, %i.b
  %i.av = ashr exact i64 %i.au, 3                 ; 4 uses
  %i.aw = sub nsw i64 1152921504606846975, %i.av
  %i.ax = icmp ult i64 %i.aw, %i.h
  br i1 %i.ax, label %bb.v, label %_ZNKSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #24
  unreachable

_ZNKSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.u
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 range(i64 -1152921504606846976, 1152921504606846976) %i.h)
  %i.ay = add nsw i64 %.sroa.speculated.i.i, %i.av ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.av
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 1152921504606846975)
  %i.bb = select i1 %i.az, i64 1152921504606846975, i64 %i.ba ; 3 uses
  %.not.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIPN12_GLOBAL__N_15NodeTESaIS2_EE11_M_allocateEm.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNKSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #25
  br label %_ZNSt12_Vector_baseIPN12_GLOBAL__N_15NodeTESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPN12_GLOBAL__N_15NodeTESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.w, %_ZNKSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.be = phi ptr [ %i.bd, %bb.w ], [ null, %_ZNKSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 5 uses
  %i.bf = icmp sgt i64 %i.c, 8
  br i1 %i.bf, label %bb.x, label %bb.y, !prof !187

bb.x:                                             ; preds = %_ZNSt12_Vector_baseIPN12_GLOBAL__N_15NodeTESaIS2_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.be, ptr align 8 %.val9, i64 %i.c, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN12_GLOBAL__N_15NodeTES3_SaIS2_EET0_T_S6_S5_RT1_.exit.i

bb.y:                                             ; preds = %_ZNSt12_Vector_baseIPN12_GLOBAL__N_15NodeTESaIS2_EE11_M_allocateEm.exit.i
  %i.bg = icmp eq i64 %i.c, 8
  br i1 %i.bg, label %bb.z, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN12_GLOBAL__N_15NodeTES3_SaIS2_EET0_T_S6_S5_RT1_.exit.i
end_hunk_1
