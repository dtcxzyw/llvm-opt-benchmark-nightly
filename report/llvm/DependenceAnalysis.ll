Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DependenceAnalysis?download=true
inline.NumInlined: 3146
inline.NumDeleted: 1391
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4llvm14DependenceInfo14tryDelinearizeEPNS_11InstructionES2_RNS_15SmallVectorImplINS0_9SubscriptEEE:bb.a
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !213
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.pre49, i64 %indvars.iv.next
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !110
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !214
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !393

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod54 = trunc i32 %i.be to i1
  call void @llvm.assume(i1 %lcmp.mod54)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.epil.init
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !110
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %i.bi, i64 %indvars.iv.epil.init ; 2 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !213
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.pre49, i64 %indvars.iv.epil.init
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !110
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !214
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %..loopexit_crit_edge, %bb.f
  %i.cc = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %.pre49, %bb.f ], [ %.pre49, %.loopexit.loopexit.unr-lcssa ], [ %.pre49, %.epil.preheader ] ; 2 uses
  %.035 = phi i1 [ false, %..loopexit_crit_edge ], [ true, %bb.f ], [ true, %.loopexit.loopexit.unr-lcssa ], [ true, %.epil.preheader ]
  %i.cd = icmp eq ptr %i.cc, %i.az
  br i1 %i.cd, label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit
  call void @free(ptr noundef %i.cc) #26
  br label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit:  ; preds = %.loopexit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ce = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.aw
  br i1 %i.cf, label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit46, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit
  call void @free(ptr noundef %i.ce) #26
  br label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit46

_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit46: ; preds = %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEE10getLoopForEPKS1_.exit44, %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit46
  %.1 = phi i1 [ %.035, %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit46 ], [ false, %_ZNK4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEE10getLoopForEPKS1_.exit44 ]
  ret i1 %.1
}

declare noundef ptr @_ZN4llvm15ScalarEvolution14getSCEVAtScopeEPNS_5ValueEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef, ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZN4llvm15ScalarEvolution14getPointerBaseEPKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm14DependenceInfo23tryDelinearizeFixedSizeEPNS_11InstructionES2_PKNS_4SCEVES5_RNS_15SmallVectorImplIS5_EES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #3 align 2 {
bb.a:
  %7 = alloca %"class.llvm::SmallVector.236", align 8 ; 9 uses
  %8 = alloca %"class.llvm::SmallVector.236", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = tail call noundef ptr @_ZN4llvm15ScalarEvolution14getElementSizeEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1152) %i.b, ptr noundef %1) #26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 4, ptr %i.f, align 4, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.g, ptr %8, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i32 0, ptr %i.h, align 8, !tbaa !90
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 4, ptr %i.i, align 4, !tbaa !91
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.k = call noundef ptr @_ZN4llvm15ScalarEvolution17removePointerBaseEPKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(1152) %i.j, ptr noundef %3) #26
  %i.l = call noundef zeroext i1 @_ZN4llvm25delinearizeFixedSizeArrayERNS_15ScalarEvolutionEPKNS_4SCEVERNS_15SmallVectorImplIS4_EES7_S4_(ptr noundef nonnull align 8 dereferenceable(1152) %i.j, ptr noundef %i.k, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.c) #26
  br i1 %i.l, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.n = call noundef ptr @_ZN4llvm15ScalarEvolution17removePointerBaseEPKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(1152) %i.m, ptr noundef %4) #26
  %i.o = call noundef zeroext i1 @_ZN4llvm25delinearizeFixedSizeArrayERNS_15ScalarEvolutionEPKNS_4SCEVERNS_15SmallVectorImplIS4_EES7_S4_(ptr noundef nonnull align 8 dereferenceable(1152) %i.m, ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.c) #26
  br i1 %i.o, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.e, align 8, !tbaa !90   ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = load i32, ptr %i.h, align 8, !tbaa !90
  %.not = icmp eq i32 %i.p, %i.r
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %7, align 8, !tbaa !30     ; 2 uses
  %.not.not.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.not.i.i.i.i, label %_ZSt5equalIPPKN4llvm4SCEVES4_EbT_S5_T0_.exit.thread, label %_ZSt5equalIPPKN4llvm4SCEVES4_EbT_S5_T0_.exit

_ZSt5equalIPPKN4llvm4SCEVES4_EbT_S5_T0_.exit:     ; preds = %bb.d
  %.idx = shl nuw nsw i64 %i.q, 3
  %i.t = load ptr, ptr %8, align 8, !tbaa !30
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.s, ptr %i.t, i64 %.idx)
  %.not9.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not9.i.i.i.i, label %_ZSt5equalIPPKN4llvm4SCEVES4_EbT_S5_T0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZSt5equalIPPKN4llvm4SCEVES4_EbT_S5_T0_.exit, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !90
  br label %.sink.split

_ZSt5equalIPPKN4llvm4SCEVES4_EbT_S5_T0_.exit.thread: ; preds = %bb.d, %_ZSt5equalIPPKN4llvm4SCEVES4_EbT_S5_T0_.exit
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL28DisableDelinearizationChecks, i64 120), align 8, !tbaa !219, !range !26, !noundef !27
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZSt5equalIPPKN4llvm4SCEVES4_EbT_S5_T0_.exit.thread
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.y = load ptr, ptr %5, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !90
  %i.ab = zext i32 %i.aa to i64
  %i.ac = call noundef zeroext i1 @_ZN4llvm29validateDelinearizationResultERNS_15ScalarEvolutionENS_8ArrayRefIPKNS_4SCEVEEES6_(ptr noundef nonnull align 8 dereferenceable(1152) %i.x, ptr %i.s, i64 %i.q, ptr %i.y, i64 %i.ab) #26
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.ae = load ptr, ptr %8, align 8, !tbaa !30
  %i.af = load i32, ptr %i.h, align 8, !tbaa !90
  %i.ag = zext i32 %i.af to i64
  %i.ah = load ptr, ptr %6, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !90
  %i.ak = zext i32 %i.aj to i64
  %i.al = call noundef zeroext i1 @_ZN4llvm29validateDelinearizationResultERNS_15ScalarEvolutionENS_8ArrayRefIPKNS_4SCEVEEES6_(ptr noundef nonnull align 8 dereferenceable(1152) %i.ad, ptr %i.ae, i64 %i.ag, ptr %i.ah, i64 %i.ak) #26
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 0, ptr %i.z, align 8, !tbaa !90
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.am, align 8, !tbaa !90
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g, %_ZSt5equalIPPKN4llvm4SCEVES4_EbT_S5_T0_.exit.thread, %bb.a, %bb.b
  %.0 = phi i1 [ true, %_ZSt5equalIPPKN4llvm4SCEVES4_EbT_S5_T0_.exit.thread ], [ false, %bb.a ], [ true, %bb.g ], [ false, %bb.b ], [ false, %.sink.split ]
  %i.an = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.g
  br i1 %i.ao, label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.an) #26
  br label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit:  ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ap = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.d
  br i1 %i.aq, label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit15, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit
  call void @free(ptr noundef %i.ap) #26
  br label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit15

_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit15: ; preds = %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm14DependenceInfo28tryDelinearizeParametricSizeEPNS_11InstructionES2_PKNS_4SCEVES5_RNS_15SmallVectorImplIS5_EES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #3 align 2 {
bb.a:
  %7 = alloca %"class.llvm::SmallVector.236", align 8 ; 10 uses
  %8 = alloca %"class.llvm::SmallVector.236", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = tail call noundef ptr @_ZN4llvm15ScalarEvolution14getPointerBaseEPKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(1152) %i.b, ptr noundef %3) #26 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i16, ptr %i.d, align 8, !tbaa !153
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.g = tail call noundef ptr @_ZN4llvm15ScalarEvolution14getPointerBaseEPKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(1152) %i.f, ptr noundef %4) #26 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i16, ptr %i.h, align 8, !tbaa !153
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.k = tail call noundef ptr @_ZN4llvm15ScalarEvolution14getElementSizeEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1152) %i.j, ptr noundef %1) #26 ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.m = tail call noundef ptr @_ZN4llvm15ScalarEvolution14getElementSizeEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1152) %i.l, ptr noundef %2) #26
  %.not = icmp eq ptr %i.k, %i.m
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %.not51 = icmp eq i16 %i.i, 16                  ; 2 uses
  %9 = getelementptr inbounds i8, ptr %i.g, i64 -32
  %spec.select.i.i35 = select i1 %.not51, ptr %9, ptr null
  %.not50 = icmp eq i16 %i.e, 16                  ; 2 uses
  %10 = getelementptr inbounds i8, ptr %i.c, i64 -32
  %spec.select.i.i = select i1 %.not50, ptr %10, ptr null
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.o = ptrtoint ptr %3 to i64
  %i.p = and i64 %i.o, -7
  %11 = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 32
  %i.q = ptrtoint ptr %11 to i64
  %12 = and i64 %i.q, -7
  %i.r = select i1 %.not50, i64 %12, i64 0
  %i.s = tail call noundef ptr @_ZN4llvm15ScalarEvolution12getMinusSCEVENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj(ptr noundef nonnull align 8 dereferenceable(1152) %i.n, i64 %i.p, i64 %i.r, i32 noundef 0, i32 noundef 0) #26 ; 5 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.u = ptrtoint ptr %4 to i64
  %i.v = and i64 %i.u, -7
  %13 = getelementptr inbounds nuw i8, ptr %spec.select.i.i35, i64 32
  %i.w = ptrtoint ptr %13 to i64
  %14 = and i64 %i.w, -7
  %i.x = select i1 %.not51, i64 %14, i64 0
  %i.y = tail call noundef ptr @_ZN4llvm15ScalarEvolution12getMinusSCEVENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj(ptr noundef nonnull align 8 dereferenceable(1152) %i.t, i64 %i.v, i64 %i.x, i32 noundef 0, i32 noundef 0) #26 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !153
  %i.ab = icmp eq i16 %i.aa, 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !153
  %i.ae = icmp eq i16 %i.ad, 8
  %i.af = icmp ne ptr %i.s, null
  %i.ag = and i1 %i.af, %i.ab
  %i.ah = icmp ne ptr %i.y, null
  %i.ai = and i1 %i.ah, %i.ae
  %or.cond = and i1 %i.ag, %i.ai
  br i1 %or.cond, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !160
  %i.al = icmp eq i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !160
  %i.ao = icmp eq i64 %i.an, 2
  br i1 %i.ao, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.ap, ptr %7, align 8, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.aq, align 8, !tbaa !90
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 4, ptr %i.ar, align 4, !tbaa !91
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !38
  call void @_ZN4llvm22collectParametricTermsERNS_15ScalarEvolutionEPKNS_4SCEVERNS_15SmallVectorImplIS4_EE(ptr noundef nonnull align 8 dereferenceable(1152) %i.as, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(16) %7) #26
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !38
  call void @_ZN4llvm22collectParametricTermsERNS_15ScalarEvolutionEPKNS_4SCEVERNS_15SmallVectorImplIS4_EE(ptr noundef nonnull align 8 dereferenceable(1152) %i.at, ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(16) %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.au, ptr %8, align 8, !tbaa !30
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !90
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 4, ptr %i.aw, align 4, !tbaa !91
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !38
  call void @_ZN4llvm19findArrayDimensionsERNS_15ScalarEvolutionERNS_15SmallVectorImplIPKNS_4SCEVEEES7_S5_(ptr noundef nonnull align 8 dereferenceable(1152) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.k) #26
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !38
  call void @_ZN4llvm22computeAccessFunctionsERNS_15ScalarEvolutionEPKNS_4SCEVERNS_15SmallVectorImplIS4_EES7_(ptr noundef nonnull align 8 dereferenceable(1152) %i.ay, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %8) #26
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !38
  call void @_ZN4llvm22computeAccessFunctionsERNS_15ScalarEvolutionEPKNS_4SCEVERNS_15SmallVectorImplIS4_EES7_(ptr noundef nonnull align 8 dereferenceable(1152) %i.az, ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8) #26
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !90 ; 3 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = icmp ult i32 %i.bb, 2
  br i1 %i.bd, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !90
  %.not34 = icmp eq i32 %i.bb, %i.bf
  br i1 %.not34, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.bg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL28DisableDelinearizationChecks, i64 120), align 8, !tbaa !219, !range !26, !noundef !27
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.bj = load ptr, ptr %8, align 8, !tbaa !30
  %i.bk = load i32, ptr %i.av, align 8, !tbaa !90
  %i.bl = zext i32 %i.bk to i64
  %i.bm = load ptr, ptr %5, align 8, !tbaa !30
  %i.bn = call noundef zeroext i1 @_ZN4llvm29validateDelinearizationResultERNS_15ScalarEvolutionENS_8ArrayRefIPKNS_4SCEVEEES6_(ptr noundef nonnull align 8 dereferenceable(1152) %i.bi, ptr %i.bj, i64 %i.bl, ptr %i.bm, i64 %i.bc) #26
  br i1 %i.bn, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.bp = load ptr, ptr %8, align 8, !tbaa !30
  %i.bq = load i32, ptr %i.av, align 8, !tbaa !90
  %i.br = zext i32 %i.bq to i64
  %i.bs = load ptr, ptr %6, align 8, !tbaa !30
  %i.bt = load i32, ptr %i.be, align 8, !tbaa !90
  %i.bu = zext i32 %i.bt to i64
  %i.bv = call noundef zeroext i1 @_ZN4llvm29validateDelinearizationResultERNS_15ScalarEvolutionENS_8ArrayRefIPKNS_4SCEVEEES6_(ptr noundef nonnull align 8 dereferenceable(1152) %i.bo, ptr %i.bp, i64 %i.br, ptr %i.bs, i64 %i.bu) #26
  br i1 %i.bv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.g
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.e, %bb.f, %bb.j
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.i ]
  %i.bw = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.au
  br i1 %i.bx, label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef %i.bw) #26
  br label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit:  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.by = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ap
  br i1 %i.bz, label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit38, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit
  call void @free(ptr noundef %i.by) #26
  br label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit38

_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit38: ; preds = %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit38, %bb.d, %bb.c, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ %.0, %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EED2Ev.exit38 ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.2
}

declare noundef ptr @_ZN4llvm15ScalarEvolution14getElementSizeEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN4llvm25delinearizeFixedSizeArrayERNS_15ScalarEvolutionEPKNS_4SCEVERNS_15SmallVectorImplIS4_EES7_S4_(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZN4llvm15ScalarEvolution17removePointerBaseEPKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN4llvm29validateDelinearizationResultERNS_15ScalarEvolutionENS_8ArrayRefIPKNS_4SCEVEEES6_(ptr noundef nonnull align 8 dereferenceable(1152), ptr, i64, ptr, i64) local_unnamed_addr #7

declare void @_ZN4llvm22collectParametricTermsERNS_15ScalarEvolutionEPKNS_4SCEVERNS_15SmallVectorImplIS4_EE(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

declare void @_ZN4llvm19findArrayDimensionsERNS_15ScalarEvolutionERNS_15SmallVectorImplIPKNS_4SCEVEEES7_S5_(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

declare void @_ZN4llvm22computeAccessFunctionsERNS_15ScalarEvolutionEPKNS_4SCEVERNS_15SmallVectorImplIS4_EES7_(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm14DependenceInfo10invalidateERNS_8FunctionERKNS_17PreservedAnalysesERNS_15AnalysisManagerIS1_JEE11InvalidatorE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.c = load i8, ptr %i.b, align 8, !tbaa !25, !range !26, !noalias !396, !noundef !27
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNK4llvm17PreservedAnalyses10getCheckerINS_18DependenceAnalysisEEENS0_24PreservedAnalysisCheckerEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !28, !noalias !396 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !74, !noalias !396 ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i.i.i
  %.not17.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not17.i.i.i.i, label %_ZNK4llvm17PreservedAnalyses10getCheckerINS_18DependenceAnalysisEEENS0_24PreservedAnalysisCheckerEv.exit.thread, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i.i.i, label %_ZNK4llvm17PreservedAnalyses10getCheckerINS_18DependenceAnalysisEEENS0_24PreservedAnalysisCheckerEv.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.01218.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %.01218.i.i.i.i, align 8, !tbaa !41, !noalias !396
  %.not15.i.i.i.i = icmp eq ptr %i.k, @_ZN4llvm18DependenceAnalysis3KeyE
  br i1 %.not15.i.i.i.i, label %_ZN4llvm17PreservedAnalyses24PreservedAnalysisChecker12preservedSetINS_13AllAnalysesOnINS_8FunctionEEEEEbv.exit.thread, label %bb.c

_ZNK4llvm17PreservedAnalyses10getCheckerINS_18DependenceAnalysisEEENS0_24PreservedAnalysisCheckerEv.exit: ; preds = %bb.a
  %i.l = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef nonnull @_ZN4llvm18DependenceAnalysis3KeyE) #26, !noalias !396
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_ZNK4llvm17PreservedAnalyses10getCheckerINS_18DependenceAnalysisEEENS0_24PreservedAnalysisCheckerEv.exit.thread, label %_ZN4llvm17PreservedAnalyses24PreservedAnalysisChecker12preservedSetINS_13AllAnalysesOnINS_8FunctionEEEEEbv.exit.thread

_ZNK4llvm17PreservedAnalyses10getCheckerINS_18DependenceAnalysisEEENS0_24PreservedAnalysisCheckerEv.exit.thread: ; preds = %bb.c, %bb.b, %_ZNK4llvm17PreservedAnalyses10getCheckerINS_18DependenceAnalysisEEENS0_24PreservedAnalysisCheckerEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !25, !range !26, !noundef !27
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.i

bb.d:                                             ; preds = %_ZNK4llvm17PreservedAnalyses10getCheckerINS_18DependenceAnalysisEEENS0_24PreservedAnalysisCheckerEv.exit.thread
  %i.p = load ptr, ptr %2, align 8, !tbaa !28     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !74   ; 3 uses
  %i.s = zext i32 %i.r to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.s, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i
  %.not17.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not17.i.i.i, label %.thread.thread, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.01218.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.t
  br i1 %.not.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.01218.i.i.i = phi ptr [ %i.u, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  %i.v = load ptr, ptr %.01218.i.i.i, align 8, !tbaa !41
  %.not15.i.i.i = icmp eq ptr %i.v, @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE
  br i1 %.not15.i.i.i, label %_ZN4llvm17PreservedAnalyses24PreservedAnalysisChecker9preservedEv.exit.thread29, label %bb.e

_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.i:  ; preds = %_ZNK4llvm17PreservedAnalyses10getCheckerINS_18DependenceAnalysisEEENS0_24PreservedAnalysisCheckerEv.exit.thread
  %i.w = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE) #26
  %.not14.i = icmp eq ptr %i.w, null
  br i1 %.not14.i, label %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.i, label %_ZN4llvm17PreservedAnalyses24PreservedAnalysisChecker9preservedEv.exit.thread29
end_hunk_0
