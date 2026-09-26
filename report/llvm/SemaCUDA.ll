Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaCUDA?download=true
inline.NumInlined: 2700
inline.NumDeleted: 1577
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5clang8SemaCUDA20EraseUnwantedMatchesEPKNS_12FunctionDeclERN4llvm15SmallVectorImplISt4pairINS_14DeclAccessPairEPS1_EEE:bb.a
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.p ; 7 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = lshr i64 %i.p, 2                         ; 2 uses
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN4llvm11max_elementIRNS_15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS3_12FunctionDeclEEEEZNS3_8SemaCUDA20EraseUnwantedMatchesEPKS5_S9_E3$_0EEDaOT_T0_.exit", %bb.f
  %.065.i.i.i.i.i.i = phi i64 [ %i.ag, %bb.f ], [ %i.s, %"_ZN4llvm11max_elementIRNS_15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS3_12FunctionDeclEEEEZNS3_8SemaCUDA20EraseUnwantedMatchesEPKS5_S9_E3$_0EEDaOT_T0_.exit" ] ; 2 uses
  %.02964.i.i.i.i.i.i = phi ptr [ %i.af, %bb.f ], [ %.val.i, %"_ZN4llvm11max_elementIRNS_15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS3_12FunctionDeclEEEEZNS3_8SemaCUDA20EraseUnwantedMatchesEPKS5_S9_E3$_0EEDaOT_T0_.exit" ] ; 9 uses
  %i.t = getelementptr i8, ptr %.02964.i.i.i.i.i.i, i64 8
  %.029.val46.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !1333
  %i.u = tail call noundef range(i32 0, 5) i32 @_ZN5clang8SemaCUDA18IdentifyPreferenceEPKNS_12FunctionDeclES3_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1, ptr noundef %.029.val46.i.i.i.i.i.i)
  %i.v = icmp samesign ult i32 %i.u, %i.o
  br i1 %i.v, label %"_ZSt9__find_ifIPSt4pairIN5clang14DeclAccessPairEPNS1_12FunctionDeclEEN9__gnu_cxx5__ops10_Iter_predIZNS1_8SemaCUDA20EraseUnwantedMatchesEPKS3_RN4llvm15SmallVectorImplIS5_EEE3$_2EEET_SJ_SJ_T0_.exit.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.w = getelementptr i8, ptr %.02964.i.i.i.i.i.i, i64 24
  %.val43.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !1333
  %i.x = tail call noundef range(i32 0, 5) i32 @_ZN5clang8SemaCUDA18IdentifyPreferenceEPKNS_12FunctionDeclES3_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1, ptr noundef %.val43.i.i.i.i.i.i)
  %i.y = icmp samesign ult i32 %i.x, %i.o
  br i1 %i.y, label %.loopexit.split.loop.exit55.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr i8, ptr %.02964.i.i.i.i.i.i, i64 40
  %.val40.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !1333
  %i.aa = tail call noundef range(i32 0, 5) i32 @_ZN5clang8SemaCUDA18IdentifyPreferenceEPKNS_12FunctionDeclES3_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1, ptr noundef %.val40.i.i.i.i.i.i)
  %i.ab = icmp samesign ult i32 %i.aa, %i.o
  br i1 %i.ab, label %.loopexit.split.loop.exit57.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %.02964.i.i.i.i.i.i, i64 56
  %.val37.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !1333
  %i.ad = tail call noundef range(i32 0, 5) i32 @_ZN5clang8SemaCUDA18IdentifyPreferenceEPKNS_12FunctionDeclES3_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1, ptr noundef %.val37.i.i.i.i.i.i)
  %i.ae = icmp samesign ult i32 %i.ad, %i.o
  br i1 %i.ae, label %.loopexit.split.loop.exit59.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.02964.i.i.i.i.i.i, i64 64 ; 3 uses
  %i.ag = add nsw i64 %.065.i.i.i.i.i.i, -1
  %i.ah = icmp sgt i64 %.065.i.i.i.i.i.i, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !1330

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.f
  %.pre.i.i.i.i.i.i = ptrtoint ptr %i.af to i64
  %.pre70.i.i.i.i.i.i = sub i64 %i.r, %.pre.i.i.i.i.i.i
  %i.ai = ashr exact i64 %.pre70.i.i.i.i.i.i, 4
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %"_ZN4llvm11max_elementIRNS_15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS3_12FunctionDeclEEEEZNS3_8SemaCUDA20EraseUnwantedMatchesEPKS5_S9_E3$_0EEDaOT_T0_.exit"
  %.pre-phi71.i.i.i.i.i.i = phi i64 [ %i.ai, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.p, %"_ZN4llvm11max_elementIRNS_15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS3_12FunctionDeclEEEEZNS3_8SemaCUDA20EraseUnwantedMatchesEPKS5_S9_E3$_0EEDaOT_T0_.exit" ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %i.af, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.val.i, %"_ZN4llvm11max_elementIRNS_15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS3_12FunctionDeclEEEEZNS3_8SemaCUDA20EraseUnwantedMatchesEPKS5_S9_E3$_0EEDaOT_T0_.exit" ] ; 5 uses
  switch i64 %.pre-phi71.i.i.i.i.i.i, label %"_ZN4llvm8erase_ifINS_15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS3_12FunctionDeclEEEEZNS3_8SemaCUDA20EraseUnwantedMatchesEPKS5_RS8_E3$_2EEvRT_T0_.exit" [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.aj = getelementptr i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  %.029.val.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !1333
  %i.ak = tail call noundef range(i32 0, 5) i32 @_ZN5clang8SemaCUDA18IdentifyPreferenceEPKNS_12FunctionDeclES3_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1, ptr noundef %.029.val.i.i.i.i.i.i)
  %i.al = icmp samesign ult i32 %i.ak, %i.o
  br i1 %i.al, label %"_ZSt9__find_ifIPSt4pairIN5clang14DeclAccessPairEPNS1_12FunctionDeclEEN9__gnu_cxx5__ops10_Iter_predIZNS1_8SemaCUDA20EraseUnwantedMatchesEPKS3_RN4llvm15SmallVectorImplIS5_EEE3$_2EEET_SJ_SJ_T0_.exit.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.am, %bb.h ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.an = getelementptr i8, ptr %.1.i.i.i.i.i.i, i64 8
  %.1.val.i.i.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !1333
  %i.ao = tail call noundef range(i32 0, 5) i32 @_ZN5clang8SemaCUDA18IdentifyPreferenceEPKNS_12FunctionDeclES3_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1, ptr noundef %.1.val.i.i.i.i.i.i)
  %i.ap = icmp samesign ult i32 %i.ao, %i.o
  br i1 %i.ap, label %"_ZSt9__find_ifIPSt4pairIN5clang14DeclAccessPairEPNS1_12FunctionDeclEEN9__gnu_cxx5__ops10_Iter_predIZNS1_8SemaCUDA20EraseUnwantedMatchesEPKS3_RN4llvm15SmallVectorImplIS5_EEE3$_2EEET_SJ_SJ_T0_.exit.i.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.j ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.ar = getelementptr i8, ptr %.2.i.i.i.i.i.i, i64 8
  %.2.val.i.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !tbaa !1333
  %i.as = tail call noundef range(i32 0, 5) i32 @_ZN5clang8SemaCUDA18IdentifyPreferenceEPKNS_12FunctionDeclES3_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1, ptr noundef %.2.val.i.i.i.i.i.i)
  %i.at = icmp samesign ult i32 %i.as, %i.o
  br i1 %i.at, label %"_ZSt9__find_ifIPSt4pairIN5clang14DeclAccessPairEPNS1_12FunctionDeclEEN9__gnu_cxx5__ops10_Iter_predIZNS1_8SemaCUDA20EraseUnwantedMatchesEPKS3_RN4llvm15SmallVectorImplIS5_EEE3$_2EEET_SJ_SJ_T0_.exit.i.i.i.i", label %"_ZN4llvm8erase_ifINS_15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS3_12FunctionDeclEEEEZNS3_8SemaCUDA20EraseUnwantedMatchesEPKS5_RS8_E3$_2EEvRT_T0_.exit"

.loopexit.split.loop.exit55.i.i.i.i.i.i:          ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %.02964.i.i.i.i.i.i, i64 16
  br label %"_ZSt9__find_ifIPSt4pairIN5clang14DeclAccessPairEPNS1_12FunctionDeclEEN9__gnu_cxx5__ops10_Iter_predIZNS1_8SemaCUDA20EraseUnwantedMatchesEPKS3_RN4llvm15SmallVectorImplIS5_EEE3$_2EEET_SJ_SJ_T0_.exit.i.i.i.i"

.loopexit.split.loop.exit57.i.i.i.i.i.i:          ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %.02964.i.i.i.i.i.i, i64 32
  br label %"_ZSt9__find_ifIPSt4pairIN5clang14DeclAccessPairEPNS1_12FunctionDeclEEN9__gnu_cxx5__ops10_Iter_predIZNS1_8SemaCUDA20EraseUnwantedMatchesEPKS3_RN4llvm15SmallVectorImplIS5_EEE3$_2EEET_SJ_SJ_T0_.exit.i.i.i.i"

.loopexit.split.loop.exit59.i.i.i.i.i.i:          ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %.02964.i.i.i.i.i.i, i64 48
  br label %"_ZSt9__find_ifIPSt4pairIN5clang14DeclAccessPairEPNS1_12FunctionDeclEEN9__gnu_cxx5__ops10_Iter_predIZNS1_8SemaCUDA20EraseUnwantedMatchesEPKS3_RN4llvm15SmallVectorImplIS5_EEE3$_2EEET_SJ_SJ_T0_.exit.i.i.i.i"

"_ZSt9__find_ifIPSt4pairIN5clang14DeclAccessPairEPNS1_12FunctionDeclEEN9__gnu_cxx5__ops10_Iter_predIZNS1_8SemaCUDA20EraseUnwantedMatchesEPKS3_RN4llvm15SmallVectorImplIS5_EEE3$_2EEET_SJ_SJ_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %.loopexit.split.loop.exit59.i.i.i.i.i.i, %.loopexit.split.loop.exit57.i.i.i.i.i.i, %.loopexit.split.loop.exit55.i.i.i.i.i.i, %bb.k, %bb.i, %bb.g
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.i ], [ %i.aw, %.loopexit.split.loop.exit59.i.i.i.i.i.i ], [ %.2.i.i.i.i.i.i, %bb.k ], [ %.029.lcssa.i.i.i.i.i.i, %bb.g ], [ %i.av, %.loopexit.split.loop.exit57.i.i.i.i.i.i ], [ %i.au, %.loopexit.split.loop.exit55.i.i.i.i.i.i ], [ %.02964.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %i.ax = icmp eq ptr %.028.i.i.i.i.i.i, %i.q
  br i1 %i.ax, label %"_ZN4llvm8erase_ifINS_15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS3_12FunctionDeclEEEEZNS3_8SemaCUDA20EraseUnwantedMatchesEPKS5_RS8_E3$_2EEvRT_T0_.exit", label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %"_ZSt9__find_ifIPSt4pairIN5clang14DeclAccessPairEPNS1_12FunctionDeclEEN9__gnu_cxx5__ops10_Iter_predIZNS1_8SemaCUDA20EraseUnwantedMatchesEPKS3_RN4llvm15SmallVectorImplIS5_EEE3$_2EEET_SJ_SJ_T0_.exit.i.i.i.i"
  %.01728.i.i.i.i = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not29.i.i.i.i = icmp eq ptr %.01728.i.i.i.i, %i.q
  br i1 %.not29.i.i.i.i, label %"_ZN4llvm8erase_ifINS_15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS3_12FunctionDeclEEEEZNS3_8SemaCUDA20EraseUnwantedMatchesEPKS5_RS8_E3$_2EEvRT_T0_.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.m
  %.01732.i.i.i.i = phi ptr [ %.017.i.i.i.i, %bb.m ], [ %.01728.i.i.i.i, %.preheader.i.i.i.i ] ; 3 uses
  %.031.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.m ], [ %.028.i.i.i.i.i.i, %.preheader.i.i.i.i ] ; 4 uses
  %.pn30.i.i.i.i = phi ptr [ %.01732.i.i.i.i, %bb.m ], [ %.028.i.i.i.i.i.i, %.preheader.i.i.i.i ]
  %i.ay = getelementptr i8, ptr %.pn30.i.i.i.i, i64 24 ; 2 uses
  %.017.val.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !1333
  %i.az = tail call noundef range(i32 0, 5) i32 @_ZN5clang8SemaCUDA18IdentifyPreferenceEPKNS_12FunctionDeclES3_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1, ptr noundef %.017.val.i.i.i.i)
  %i.ba = icmp samesign ult i32 %i.az, %i.o
  br i1 %i.ba, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bb = load i64, ptr %.01732.i.i.i.i, align 8, !tbaa !731
  store i64 %i.bb, ptr %.031.i.i.i.i, align 8, !tbaa !731
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !727
  %i.bd = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !1333
  %i.be = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %.031.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.be, %bb.l ] ; 2 uses
  %.017.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01732.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.017.i.i.i.i, %i.q
  br i1 %.not.i.i.i.i, label %"_ZN4llvm8erase_ifINS_15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS3_12FunctionDeclEEEEZNS3_8SemaCUDA20EraseUnwantedMatchesEPKS5_RS8_E3$_2EEvRT_T0_.exit", label %.lr.ph.i.i.i.i, !llvm.loop !1331

"_ZN4llvm8erase_ifINS_15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS3_12FunctionDeclEEEEZNS3_8SemaCUDA20EraseUnwantedMatchesEPKS5_RS8_E3$_2EEvRT_T0_.exit": ; preds = %bb.m, %._crit_edge.i.i.i.i.i.i, %bb.k, %"_ZSt9__find_ifIPSt4pairIN5clang14DeclAccessPairEPNS1_12FunctionDeclEEN9__gnu_cxx5__ops10_Iter_predIZNS1_8SemaCUDA20EraseUnwantedMatchesEPKS3_RN4llvm15SmallVectorImplIS5_EEE3$_2EEET_SJ_SJ_T0_.exit.i.i.i.i", %.preheader.i.i.i.i
  %.016.i.i.i.i = phi ptr [ %i.q, %"_ZSt9__find_ifIPSt4pairIN5clang14DeclAccessPairEPNS1_12FunctionDeclEEN9__gnu_cxx5__ops10_Iter_predIZNS1_8SemaCUDA20EraseUnwantedMatchesEPKS3_RN4llvm15SmallVectorImplIS5_EEE3$_2EEET_SJ_SJ_T0_.exit.i.i.i.i" ], [ %i.q, %bb.k ], [ %i.q, %._crit_edge.i.i.i.i.i.i ], [ %.028.i.i.i.i.i.i, %.preheader.i.i.i.i ], [ %.1.i.i.i.i, %bb.m ]
  %i.bf = load ptr, ptr %2, align 8, !tbaa !1118
  %i.bg = ptrtoint ptr %.016.i.i.i.i to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 4
  %i.bk = trunc i64 %i.bj to i32
  store i32 %i.bk, ptr %i.a, align 8, !tbaa !1119
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %"_ZN4llvm8erase_ifINS_15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS3_12FunctionDeclEEEEZNS3_8SemaCUDA20EraseUnwantedMatchesEPKS5_RS8_E3$_2EEvRT_T0_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang8SemaCUDA35inferTargetForImplicitSpecialMemberEPNS_13CXXRecordDeclENS_20CXXSpecialMemberKindEPNS_13CXXMethodDeclEbb(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.std::optional.1119", align 8 ; 12 uses
  %7 = alloca %"class.llvm::SmallVector.1127", align 8 ; 12 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.f = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.e) #18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8 ; 3 uses
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang11DeclContext16getLexicalParentEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1134
  br label %_ZN5clang11DeclContext16getLexicalParentEv.exit

_ZN5clang11DeclContext16getLexicalParentEv.exit:  ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.n, %bb.c ]
  %i.o = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.e) #18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8 ; 3 uses
  %i.q = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5clang11DeclContext16getLexicalParentEv.exit
  %i.s = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

bb.e:                                             ; preds = %_ZN5clang11DeclContext16getLexicalParentEv.exit
  %i.t = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1135
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

_ZN5clang13CXXMethodDecl9getParentEv.exit:        ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.v, %bb.e ] ; 2 uses
  %10 = icmp eq ptr %.0.i.i.i, null               ; 2 uses
  %11 = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -64
  %12 = select i1 %10, ptr null, ptr %11
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 64
  %spec.select = select i1 %10, ptr null, ptr %13
  %i.w = icmp ne ptr %.0.i.i, %spec.select        ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = and i32 %i.y, 256
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %_ZNK5clang4Decl7hasAttrINS_12CUDAHostAttrEEEbv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit
  %i.aa = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %3) #18 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1118 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1119 ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %.idx.i.i = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i ; 3 uses
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %_ZNK5clang4Decl7hasAttrINS_12CUDAHostAttrEEEbv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.ak, %bb.g ], [ %i.ab, %bb.f ] ; 3 uses
  %i.ag = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !1128
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  %i.ai = load i16, ptr %i.ah, align 4
  %i.aj = icmp eq i16 %i.ai, 174
  br i1 %i.aj, label %_ZN5clangneENS_22specific_attr_iteratorINS_12CUDAHostAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.af
  br i1 %.not.i.i.i.i.i, label %_ZN5clangneENS_22specific_attr_iteratorINS_12CUDAHostAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZN5clangneENS_22specific_attr_iteratorINS_12CUDAHostAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.sroa.07.0.i.i.ph.i.i = phi ptr [ %i.af, %bb.g ], [ %.sroa.07.1.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.al = icmp ne ptr %.sroa.07.0.i.i.ph.i.i, %i.af
  br label %_ZNK5clang4Decl7hasAttrINS_12CUDAHostAttrEEEbv.exit

_ZNK5clang4Decl7hasAttrINS_12CUDAHostAttrEEEbv.exit: ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit, %bb.f, %_ZN5clangneENS_22specific_attr_iteratorINS_12CUDAHostAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i
  %i.am = phi i1 [ false, %_ZN5clang13CXXMethodDecl9getParentEv.exit ], [ false, %bb.f ], [ %i.al, %_ZN5clangneENS_22specific_attr_iteratorINS_12CUDAHostAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i ] ; 5 uses
  %i.an = load i32, ptr %i.x, align 4
  %i.ao = and i32 %i.an, 256
  %.not.i120 = icmp eq i32 %i.ao, 0
  br i1 %.not.i120, label %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit.thread209, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_12CUDAHostAttrEEEbv.exit
  %i.ap = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %3) #18 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1118 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !1119 ; 2 uses
  %i.at = zext i32 %i.as to i64
  %.idx.i.i121 = shl nuw nsw i64 %i.at, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i121 ; 2 uses
  %.not.i.i122 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i122, label %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit.thread209, label %.lr.ph.i.i.i.i.i123

.lr.ph.i.i.i.i.i123:                              ; preds = %bb.h, %bb.i
  %.sroa.07.1.i.i.i.i124 = phi ptr [ %i.az, %bb.i ], [ %i.aq, %bb.h ] ; 3 uses
  %i.av = load ptr, ptr %.sroa.07.1.i.i.i.i124, align 8, !tbaa !1128
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 36
  %i.ax = load i16, ptr %i.aw, align 4
  %i.ay = icmp eq i16 %i.ax, 169
  br i1 %i.ay, label %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i123
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i124, i64 8 ; 2 uses
  %.not.i.i.i.i.i125 = icmp eq ptr %i.az, %i.au
  br i1 %.not.i.i.i.i.i125, label %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit.thread209, label %.lr.ph.i.i.i.i.i123, !llvm.loop !0

_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i123
  %.not235 = icmp eq ptr %.sroa.07.1.i.i.i.i124, %i.au
  br i1 %.not235, label %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit.thread209, label %bb.j

bb.j:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit
  %i.ba = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %3) #18
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1118 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1128 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 36
  %i.be = load i16, ptr %i.bd, align 4
  %i.bf = icmp eq i16 %i.be, 169
  br i1 %i.bf, label %_ZNK5clang4Decl7getAttrINS_14CUDADeviceAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.bg = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %i.bb, %bb.j ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1128 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 36
  %i.bk = load i16, ptr %i.bj, align 4
  %i.bl = icmp eq i16 %i.bk, 169
  br i1 %i.bl, label %_ZNK5clang4Decl7getAttrINS_14CUDADeviceAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNK5clang4Decl7getAttrINS_14CUDADeviceAttrEEEPT_v.exit: ; preds = %.lr.ph.i.i.i.i, %bb.j
  %i.bm = phi ptr [ %i.bc, %bb.j ], [ %i.bi, %.lr.ph.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 38
  %i.bo = load i8, ptr %i.bn, align 2
  %i.bp = and i8 %i.bo, 4
  %.not236 = icmp eq i8 %i.bp, 0                  ; 2 uses
  %.not112 = xor i1 %i.am, true
  %brmerge = or i1 %.not236, %.not112
  %.mux = select i1 %.not236, i1 true, i1 %i.w
  br i1 %brmerge, label %bb.l, label %bb.k

_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit.thread209: ; preds = %bb.i, %bb.h, %_ZNK5clang4Decl7hasAttrINS_12CUDAHostAttrEEEbv.exit, %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5clang4Decl7getAttrINS_14CUDADeviceAttrEEEPT_v.exit, %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit.thread209
  %i.bq = phi i1 [ true, %_ZNK5clang4Decl7getAttrINS_14CUDADeviceAttrEEEPT_v.exit ], [ false, %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit.thread209 ]
  %i.br = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %3) #18
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1118 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1128 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 36
  %i.bv = load i16, ptr %i.bu, align 4
  %i.bw = icmp eq i16 %i.bv, 174
  br i1 %i.bw, label %_ZNK5clang4Decl7getAttrINS_12CUDAHostAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i140

.lr.ph.i.i.i.i140:                                ; preds = %bb.k, %.lr.ph.i.i.i.i140
  %i.bx = phi ptr [ %i.by, %.lr.ph.i.i.i.i140 ], [ %i.bs, %bb.k ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1128 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 36
  %i.cb = load i16, ptr %i.ca, align 4
  %i.cc = icmp eq i16 %i.cb, 174
  br i1 %i.cc, label %_ZNK5clang4Decl7getAttrINS_12CUDAHostAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i140, !llvm.loop !3

_ZNK5clang4Decl7getAttrINS_12CUDAHostAttrEEEPT_v.exit: ; preds = %.lr.ph.i.i.i.i140, %bb.k
  %i.cd = phi ptr [ %i.bt, %bb.k ], [ %i.bz, %.lr.ph.i.i.i.i140 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 38
  %i.cf = load i8, ptr %i.ce, align 2
  %i.cg = and i8 %i.cf, 4
  %.not237 = icmp eq i8 %i.cg, 0
  %i.ch = or i1 %i.w, %.not237
  br i1 %i.ch, label %bb.aw, label %bb.m

bb.l:                                             ; preds = %_ZNK5clang4Decl7getAttrINS_14CUDADeviceAttrEEEPT_v.exit, %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit.thread209
  %i.ci = phi i1 [ true, %_ZNK5clang4Decl7getAttrINS_14CUDADeviceAttrEEEPT_v.exit ], [ false, %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit.thread209 ]
  %or.cond = phi i1 [ %.mux, %_ZNK5clang4Decl7getAttrINS_14CUDADeviceAttrEEEPT_v.exit ], [ %i.w, %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit.thread209 ]
  br i1 %or.cond, label %bb.aw, label %bb.m

bb.m:                                             ; preds = %_ZNK5clang4Decl7getAttrINS_12CUDAHostAttrEEEPT_v.exit, %bb.l
  %i.cj = phi i1 [ %i.bq, %_ZNK5clang4Decl7getAttrINS_12CUDAHostAttrEEEPT_v.exit ], [ %i.ci, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  store i8 0, ptr %i.ck, align 4, !tbaa !1335
  %i.cl = load ptr, ptr %0, align 8, !tbaa !40, !nonnull !41, !align !42 ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 616 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !725 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 584 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1336
  store ptr null, ptr %i.co, align 8, !tbaa !1336
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 11136 ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !731
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 80 ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !1337
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 2584 ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !1338
  store ptr %i.e, ptr %i.cm, align 8, !tbaa !725
  store i64 0, ptr %i.cq, align 8, !tbaa !731
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !1119
  store i32 %i.cx, ptr %i.cs, align 8, !tbaa !1337
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 3664
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !1119
  store i32 %i.cz, ptr %i.cu, align 8, !tbaa !1338
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.da, ptr %7, align 8, !tbaa !1118
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i32 0, ptr %i.db, align 8, !tbaa !1119
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 16, ptr %i.dc, align 4, !tbaa !1120
  %i.dd = call noundef ptr @_ZN5clang13CXXRecordDecl11bases_beginEv(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 2 uses
  %i.de = call noundef ptr @_ZN5clang13CXXRecordDecl9bases_endEv(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 2 uses
  %.not247 = icmp eq ptr %i.dd, %i.de
  br i1 %.not247, label %._crit_edge, label %.lr.ph249

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang16CXXBaseSpecifierELb1EE9push_backES4_.exit, %bb.m
  %i.df = call noundef zeroext i1 @_ZNK5clang13CXXRecordDecl10isAbstractEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.dg = icmp ne i32 %2, 5
  %or.cond10.not = and i1 %i.dg, %i.df
  br i1 %or.cond10.not, label %bb.r, label %bb.q

.lr.ph249:                                        ; preds = %bb.m, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang16CXXBaseSpecifierELb1EE9push_backES4_.exit
  %.091248 = phi ptr [ %i.dr, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang16CXXBaseSpecifierELb1EE9push_backES4_.exit ], [ %i.dd, %bb.m ] ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.091248, i64 12
  %i.di = load i8, ptr %i.dh, align 4
  %i.dj = trunc i8 %i.di to i1
  br i1 %i.dj, label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang16CXXBaseSpecifierELb1EE9push_backES4_.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph249
  %i.dk = load i32, ptr %i.db, align 8, !tbaa !1119 ; 2 uses
  %i.dl = load i32, ptr %i.dc, align 4, !tbaa !1120
  %.not.i141 = icmp ult i32 %i.dk, %i.dl
  br i1 %.not.i141, label %bb.p, label %bb.o, !prof !1125

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang16CXXBaseSpecifierELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %.091248)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang16CXXBaseSpecifierELb1EE9push_backES4_.exit

bb.p:                                             ; preds = %bb.n
  %i.dm = zext i32 %i.dk to i64
  %i.dn = load ptr, ptr %7, align 8, !tbaa !1118
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dm
  store ptr %.091248, ptr %i.do, align 1
end_hunk_0
