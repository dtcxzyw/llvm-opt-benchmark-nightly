Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SLPVectorizer?download=true
inline.NumInlined: 69834
inline.NumDeleted: 26527
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 297
loop-unroll.NumUnrolled: 333
begin_hunk_0_@"_ZN4llvm8count_ifIRKNS_11SmallVectorISt10unique_ptrINS_13slpvectorizer7BoUpSLP9TreeEntryESt14default_deleteIS5_EELj8EEEZNKS4_21isProfitableToReorderEvE3$_1EEDaOT_T0_":bb.a
  %.not137.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mv, %i.mw
  br i1 %.not137.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.thread9.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.thread9.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvENK3$_1clERKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS7_EEEUlPNS2_5ValueEE_EclIPSE_EEbT_.exit135.i.i.i.i.i.i.i.i.i", %bb.al, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.mx = add nsw i64 %.036.i.i, 1
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.thread.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.i.i.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvENK3$_1clERKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS7_EEEUlPNS2_5ValueEE_EclIPSE_EEbT_.exit87.i.i.i.i.i.i.i.i.i"
  %i.my = getelementptr inbounds nuw i8, ptr %.029165.i.i.i.i.i.i.i.i.i, i64 24
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.i.i.loopexit.split.loop.exit60": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvENK3$_1clERKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS7_EEEUlPNS2_5ValueEE_EclIPSE_EEbT_.exit71.i.i.i.i.i.i.i.i.i"
  %i.mz = getelementptr inbounds nuw i8, ptr %.029165.i.i.i.i.i.i.i.i.i, i64 16
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.i.i.loopexit.split.loop.exit62": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvENK3$_1clERKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS7_EEEUlPNS2_5ValueEE_EclIPSE_EEbT_.exit55.i.i.i.i.i.i.i.i.i"
  %i.na = getelementptr inbounds nuw i8, ptr %.029165.i.i.i.i.i.i.i.i.i, i64 8
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvENK3$_1clERKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS7_EEEUlPNS2_5ValueEE_EclIPSE_EEbT_.exit.i.i.i.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.i.i.loopexit.split.loop.exit", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.i.i.loopexit.split.loop.exit60", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.i.i.loopexit.split.loop.exit62", %"_ZN9__gnu_cxx5__ops10_Iter_predIZZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvENK3$_1clERKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS7_EEEUlPNS2_5ValueEE_EclIPSE_EEbT_.exit135.i.i.i.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvENK3$_1clERKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS7_EEEUlPNS2_5ValueEE_EclIPSE_EEbT_.exit119.i.i.i.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvENK3$_1clERKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS7_EEEUlPNS2_5ValueEE_EclIPSE_EEbT_.exit103.i.i.i.i.i.i.i.i.i"
  %.028.i.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvENK3$_1clERKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS7_EEEUlPNS2_5ValueEE_EclIPSE_EEbT_.exit119.i.i.i.i.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvENK3$_1clERKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS7_EEEUlPNS2_5ValueEE_EclIPSE_EEbT_.exit103.i.i.i.i.i.i.i.i.i" ], [ %.2.i.i.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvENK3$_1clERKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS7_EEEUlPNS2_5ValueEE_EclIPSE_EEbT_.exit135.i.i.i.i.i.i.i.i.i" ], [ %i.na, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.i.i.loopexit.split.loop.exit62" ], [ %i.mz, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.i.i.loopexit.split.loop.exit60" ], [ %i.my, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.i.i.loopexit.split.loop.exit" ], [ %.029165.i.i.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvENK3$_1clERKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS7_EEEUlPNS2_5ValueEE_EclIPSE_EEbT_.exit.i.i.i.i.i.i.i.i.i" ]
  %i.nb = icmp eq ptr %i.ai, %.028.i.i.i.i.i.i.i.i.i
  %cond.fr.i.i = freeze i1 %i.nb
  %i.nc = zext i1 %cond.fr.i.i to i64
  %spec.select.i.i = add nsw i64 %.036.i.i, %i.nc
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.thread.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.thread9.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.thread7.i.i", %bb.i, %bb.g, %bb.f, %bb.e, %bb.d
  %i.nd = phi i64 [ %.036.i.i, %bb.e ], [ %spec.select.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.i.i" ], [ %i.af, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.thread7.i.i" ], [ %i.mx, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.thread9.i.i" ], [ %.036.i.i, %bb.i ], [ %.036.i.i, %bb.g ], [ %.036.i.i, %bb.d ], [ %.036.i.i, %bb.f ] ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.0535.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ne, %i.b
  br i1 %.not.i.i, label %"_ZSt8count_ifIPKSt10unique_ptrIN4llvm13slpvectorizer7BoUpSLP9TreeEntryESt14default_deleteIS4_EEZNKS3_21isProfitableToReorderEvE3$_1ENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit", label %bb.b, !llvm.loop !2919

"_ZSt8count_ifIPKSt10unique_ptrIN4llvm13slpvectorizer7BoUpSLP9TreeEntryESt14default_deleteIS4_EEZNKS3_21isProfitableToReorderEvE3$_1ENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.thread.i.i", %bb.a
  %.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.nd, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEvE3$_1EclIPKSt10unique_ptrINS4_9TreeEntryESt14default_deleteIS9_EEEEbT_.exit.thread.i.i" ]
  ret i64 %.0.lcssa.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm13slpvectorizer7BoUpSLP9TreeEntry16reorderSplitNodeEjNS_8ArrayRefIiEES4_(ptr noundef nonnull align 8 dereferenceable(608) %0, i32 noundef %1, ptr nofree readonly captures(none) %2, i64 %3, ptr nofree readonly captures(none) %4, i64 %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %6 = alloca %"class.llvm::SmallVector.242", align 8 ; 11 uses
  %7 = alloca %"class.llvm::SmallVector.242", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !371  ; 3 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %.0.in.v.i = select i1 %.not.i.i, i32 %i.f, i32 %i.d ; 6 uses
  %i.g = zext i32 %.0.in.v.i to i64               ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !359
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.i, align 8, !tbaa !371
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 12, ptr %i.j, align 4, !tbaa !372
  %i.k = icmp eq i32 %.0.in.v.i, 0
  br i1 %i.k, label %_ZN4llvm11SmallVectorIiLj12EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i32 %.0.in.v.i, 12
  br i1 %i.l, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.h, i64 noundef %i.g, i64 noundef 4) #31
  %.pre.i.i.i = load i32, ptr %i.i, align 8, !tbaa !371 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %.0.in.v.i, %.pre.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !359
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.b
  %i.m = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.h, %bb.b ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = getelementptr [4 x i8], ptr %i.m, i64 %.pre-phi.i.i3.i
  %i.o = sub nsw i64 %i.g, %.pre-phi.i.i3.i
  %i.p = shl nsw i64 %i.o, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 0, i64 %i.p, i1 false), !tbaa !380
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  store i32 %.0.in.v.i, ptr %i.i, align 8, !tbaa !371
  %.pre = load i32, ptr %i.c, align 8, !tbaa !371
  %.pre55 = load i32, ptr %i.e, align 8
  br label %_ZN4llvm11SmallVectorIiLj12EEC2Em.exit

_ZN4llvm11SmallVectorIiLj12EEC2Em.exit:           ; preds = %bb.a, %.sink.split.i.i.i
  %i.q = phi i32 [ %i.f, %bb.a ], [ %.pre55, %.sink.split.i.i.i ]
  %i.r = phi i32 [ %i.d, %bb.a ], [ %.pre, %.sink.split.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.not.i.i11 = icmp eq i32 %i.r, 0
  %.0.in.v.i12 = select i1 %.not.i.i11, i32 %i.q, i32 %i.r ; 6 uses
  %i.s = zext i32 %.0.in.v.i12 to i64             ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.t, ptr %7, align 8, !tbaa !359
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.u, align 8, !tbaa !371
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 12, ptr %i.v, align 4, !tbaa !372
  %i.w = icmp eq i32 %.0.in.v.i12, 0
  br i1 %i.w, label %_ZN4llvm11SmallVectorIiLj12EEC2Em.exit22, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIiLj12EEC2Em.exit
  %i.x = icmp ugt i32 %.0.in.v.i12, 12
  br i1 %i.x, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i16, label %.lr.ph.preheader.i.i.i13

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i16: ; preds = %bb.c
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.t, i64 noundef %i.s, i64 noundef 4) #31
  %.pre.i.i.i17 = load i32, ptr %i.u, align 8, !tbaa !371 ; 2 uses
  %.not11.i.i.i19 = icmp eq i32 %.0.in.v.i12, %.pre.i.i.i17
  br i1 %.not11.i.i.i19, label %.sink.split.i.i.i15, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i20

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i20: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i16
  %.pre13.i.i.i18 = zext i32 %.pre.i.i.i17 to i64
  %.pre.i21 = load ptr, ptr %7, align 8, !tbaa !359
  br label %.lr.ph.preheader.i.i.i13

.lr.ph.preheader.i.i.i13:                         ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i20, %bb.c
  %i.y = phi ptr [ %.pre.i21, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i20 ], [ %i.t, %bb.c ]
  %.pre-phi.i.i3.i14 = phi i64 [ %.pre13.i.i.i18, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i20 ], [ 0, %bb.c ] ; 2 uses
  %i.z = getelementptr [4 x i8], ptr %i.y, i64 %.pre-phi.i.i3.i14
  %i.aa = sub nsw i64 %i.s, %.pre-phi.i.i3.i14
  %i.ab = shl nsw i64 %i.aa, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.z, i8 0, i64 %i.ab, i1 false), !tbaa !380
  br label %.sink.split.i.i.i15

.sink.split.i.i.i15:                              ; preds = %.lr.ph.preheader.i.i.i13, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i16
  store i32 %.0.in.v.i12, ptr %i.u, align 8, !tbaa !371
  %.pre56 = load i32, ptr %i.i, align 8, !tbaa !371
  br label %_ZN4llvm11SmallVectorIiLj12EEC2Em.exit22

_ZN4llvm11SmallVectorIiLj12EEC2Em.exit22:         ; preds = %_ZN4llvm11SmallVectorIiLj12EEC2Em.exit, %.sink.split.i.i.i15
  %i.ac = phi i32 [ %.0.in.v.i, %_ZN4llvm11SmallVectorIiLj12EEC2Em.exit ], [ %.pre56, %.sink.split.i.i.i15 ] ; 2 uses
  %i.ad = load ptr, ptr %6, align 8, !tbaa !359   ; 11 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 3 uses
  %i.af = zext i32 %i.ac to i64
  %.idx = shl nuw nsw i64 %i.af, 2                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx
  %.not6.i = icmp eq i32 %i.ac, 0
  br i1 %.not6.i, label %_ZSt4iotaIPiiEvT_S1_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4llvm11SmallVectorIiLj12EEC2Em.exit22
  %i.ah = add nsw i64 %.idx, -4                   ; 2 uses
  %i.ai = lshr exact i64 %i.ah, 2
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.aj, 9223372036854775800     ; 4 uses
  %i.ak = trunc i64 %n.vec to i32
  %i.al = shl i64 %n.vec, 2
  %i.am = getelementptr i8, ptr %i.ad, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.an = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !380
  store <4 x i32> %step.add, ptr %i.ao, align 4, !tbaa !380
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !2934

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit, label %.lr.ph.i.preheader109

.lr.ph.i.preheader109:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.08.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ak, %middle.block ]
  %.057.i.ph = phi ptr [ %i.ad, %.lr.ph.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader109, %.lr.ph.i
  %.08.i = phi i32 [ %i.aq, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader109 ] ; 2 uses
  %.057.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader109 ] ; 2 uses
  store i32 %.08.i, ptr %.057.i, align 4, !tbaa !380
  %i.aq = add nuw nsw i32 %.08.i, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.057.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, %i.ag
  br i1 %.not.i, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !2935

_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit:            ; preds = %.lr.ph.i, %middle.block
  %.pre57 = load i32, ptr %i.u, align 8, !tbaa !371
  br label %_ZSt4iotaIPiiEvT_S1_T0_.exit

_ZSt4iotaIPiiEvT_S1_T0_.exit:                     ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit, %_ZN4llvm11SmallVectorIiLj12EEC2Em.exit22
  %i.as = phi i32 [ %.pre57, %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit ], [ %.0.in.v.i12, %_ZN4llvm11SmallVectorIiLj12EEC2Em.exit22 ] ; 2 uses
  %i.at = load ptr, ptr %7, align 8, !tbaa !359   ; 11 uses
  %i.au = ptrtoaddr ptr %i.at to i64              ; 2 uses
  %i.av = zext i32 %i.as to i64
  %.idx50 = shl nuw nsw i64 %i.av, 2              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx50
  %.not6.i23 = icmp eq i32 %i.as, 0
  br i1 %.not6.i23, label %_ZSt4iotaIPiiEvT_S1_T0_.exit28, label %.lr.ph.i24.preheader

.lr.ph.i24.preheader:                             ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit
  %i.ax = add nsw i64 %.idx50, -4                 ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check72 = icmp ult i64 %i.ax, 28
  br i1 %min.iters.check72, label %.lr.ph.i24.preheader108, label %vector.ph73

vector.ph73:                                      ; preds = %.lr.ph.i24.preheader
  %n.vec74 = and i64 %i.az, 9223372036854775800   ; 4 uses
  %i.ba = trunc i64 %n.vec74 to i32
  %i.bb = shl i64 %n.vec74, 2
  %i.bc = getelementptr i8, ptr %i.at, i64 %i.bb
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next80, %vector.body75 ] ; 2 uses
  %vec.ind77 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph73 ], [ %vec.ind.next81, %vector.body75 ] ; 3 uses
  %step.add78 = add nuw nsw <4 x i32> %vec.ind77, splat (i32 4)
  %i.bd = shl i64 %index76, 2
  %next.gep79 = getelementptr i8, ptr %i.at, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep79, i64 16
  store <4 x i32> %vec.ind77, ptr %next.gep79, align 4, !tbaa !380
  store <4 x i32> %step.add78, ptr %i.be, align 4, !tbaa !380
  %index.next80 = add nuw i64 %index76, 8         ; 2 uses
  %vec.ind.next81 = add nuw nsw <4 x i32> %vec.ind77, splat (i32 8)
  %i.bf = icmp eq i64 %index.next80, %n.vec74
  br i1 %i.bf, label %middle.block82, label %vector.body75, !llvm.loop !2936

middle.block82:                                   ; preds = %vector.body75
  %cmp.n83 = icmp eq i64 %i.az, %n.vec74
  br i1 %cmp.n83, label %_ZSt4iotaIPiiEvT_S1_T0_.exit28, label %.lr.ph.i24.preheader108

.lr.ph.i24.preheader108:                          ; preds = %.lr.ph.i24.preheader, %middle.block82
  %.08.i25.ph = phi i32 [ 0, %.lr.ph.i24.preheader ], [ %i.ba, %middle.block82 ]
  %.057.i26.ph = phi ptr [ %i.at, %.lr.ph.i24.preheader ], [ %i.bc, %middle.block82 ]
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.lr.ph.i24.preheader108, %.lr.ph.i24
  %.08.i25 = phi i32 [ %i.bg, %.lr.ph.i24 ], [ %.08.i25.ph, %.lr.ph.i24.preheader108 ] ; 2 uses
  %.057.i26 = phi ptr [ %i.bh, %.lr.ph.i24 ], [ %.057.i26.ph, %.lr.ph.i24.preheader108 ] ; 2 uses
  store i32 %.08.i25, ptr %.057.i26, align 4, !tbaa !380
  %i.bg = add nuw nsw i32 %.08.i25, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.057.i26, i64 4 ; 2 uses
  %.not.i27 = icmp eq ptr %i.bh, %i.aw
  br i1 %.not.i27, label %_ZSt4iotaIPiiEvT_S1_T0_.exit28, label %.lr.ph.i24, !llvm.loop !2937

_ZSt4iotaIPiiEvT_S1_T0_.exit28:                   ; preds = %.lr.ph.i24, %middle.block82, %_ZSt4iotaIPiiEvT_S1_T0_.exit
  %i.bi = icmp eq i32 %1, 0
  br i1 %i.bi, label %bb.d, label %bb.k

bb.d:                                             ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit28
  %i.bj = icmp ugt i64 %3, 1
  br i1 %i.bj, label %bb.e, label %bb.f, !prof !548

bb.e:                                             ; preds = %bb.d
  %.idx.i = shl nuw nsw i64 %3, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ad, ptr align 4 %2, i64 %.idx.i, i1 false)
  %.pre58 = load ptr, ptr %7, align 8, !tbaa !359
  br label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit

bb.f:                                             ; preds = %bb.d
  %i.bk = icmp eq i64 %3, 1
  br i1 %i.bk, label %bb.g, label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.bl = load i32, ptr %2, align 4, !tbaa !380
  store i32 %i.bl, ptr %i.ad, align 4, !tbaa !380
  br label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit

_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.bm = phi ptr [ %.pre58, %bb.e ], [ %i.at, %bb.f ], [ %i.at, %bb.g ] ; 2 uses
  %i.bn = icmp ugt i64 %5, 1
  br i1 %i.bn, label %bb.h, label %bb.i, !prof !548

bb.h:                                             ; preds = %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit
  %.idx.i29 = shl nuw nsw i64 %5, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bm, ptr align 4 %4, i64 %.idx.i29, i1 false)
  br label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit30

bb.i:                                             ; preds = %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit
  %i.bo = icmp eq i64 %5, 1
  br i1 %i.bo, label %bb.j, label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit30

bb.j:                                             ; preds = %bb.i
  %i.bp = load i32, ptr %4, align 4, !tbaa !380
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !380
  br label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit30

bb.k:                                             ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit28
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !359
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !371
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !881 ; 13 uses
  %i.by = and i64 %3, 4294967295                  ; 6 uses
  %.not52 = icmp eq i64 %i.by, 0
  br i1 %.not52, label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit30, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %min.iters.check94 = icmp samesign ult i64 %i.by, 36
  br i1 %min.iters.check94, label %.lr.ph.preheader107, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.bz = add nsw i64 %i.by, -1                   ; 2 uses
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = xor i32 %i.bx, -1
  %i.cc = icmp ult i32 %i.cb, %i.ca
  %i.cd = icmp ugt i64 %i.bz, 4294967295
  %i.ce = or i1 %i.cc, %i.cd
  br i1 %i.ce, label %.lr.ph.preheader107, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cf = zext i32 %i.bx to i64
  %i.cg = shl nuw nsw i64 %i.cf, 2                ; 3 uses
  %i.ch = add i64 %i.cg, %i.ae
  %i.ci = sub i64 %i.b, %i.ch
  %diff.check = icmp ugt i64 %i.ci, -32
  %i.cj = add i64 %i.cg, %i.au                    ; 2 uses
  %i.ck = sub i64 %i.b, %i.cj
  %diff.check86 = icmp ugt i64 %i.ck, -32
  %conflict.rdx = or i1 %diff.check, %diff.check86
  %i.cl = add i64 %i.cg, %i.ae
  %i.cm = sub i64 %i.cl, %i.a
  %diff.check87 = icmp ugt i64 %i.cm, -32
  %conflict.rdx88 = or i1 %conflict.rdx, %diff.check87
  %i.cn = sub i64 %i.a, %i.cj
  %diff.check89 = icmp ugt i64 %i.cn, -32
  %conflict.rdx90 = or i1 %conflict.rdx88, %diff.check89
  %i.co = sub i64 %i.ae, %i.au
  %diff.check91 = icmp ugt i64 %i.co, -32
  %conflict.rdx92 = or i1 %conflict.rdx90, %diff.check91
  br i1 %conflict.rdx92, label %.lr.ph.preheader107, label %vector.ph95

vector.ph95:                                      ; preds = %vector.memcheck
  %n.vec96 = and i64 %3, 4294967288               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bx, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph95
  %index98 = phi i64 [ 0, %vector.ph95 ], [ %index.next102, %vector.body97 ] ; 4 uses
  %i.cp = trunc i64 %index98 to i32
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index98 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load = load <4 x i32>, ptr %i.cq, align 4, !tbaa !380
  %wide.load99 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !380
  %i.cs = add <4 x i32> %wide.load, %broadcast.splat
  %i.ct = add <4 x i32> %wide.load99, %broadcast.splat
  %i.cu = add i32 %i.bx, %i.cp
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <4 x i32> %i.cs, ptr %i.cw, align 4, !tbaa !380
  store <4 x i32> %i.ct, ptr %i.cx, align 4, !tbaa !380
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index98 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load100 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !380
  %wide.load101 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !380
  %i.da = add <4 x i32> %wide.load100, %broadcast.splat
  %i.db = add <4 x i32> %wide.load101, %broadcast.splat
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cv ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <4 x i32> %i.da, ptr %i.dc, align 4, !tbaa !380
  store <4 x i32> %i.db, ptr %i.dd, align 4, !tbaa !380
  %index.next102 = add nuw i64 %index98, 8        ; 2 uses
  %i.de = icmp eq i64 %index.next102, %n.vec96
  br i1 %i.de, label %middle.block103, label %vector.body97, !llvm.loop !2938

middle.block103:                                  ; preds = %vector.body97
  %cmp.n104 = icmp eq i64 %i.by, %n.vec96
  br i1 %cmp.n104, label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit30, label %.lr.ph.preheader107

.lr.ph.preheader107:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader, %middle.block103
  %.sroa.039.053.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec96, %middle.block103 ] ; 6 uses
  %.neg = or disjoint i64 %.sroa.039.053.ph, 1
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader107
  %i.df = trunc nuw i64 %.sroa.039.053.ph to i32
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.039.053.ph
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !380
  %i.di = add i32 %i.dh, %i.bx
  %i.dj = add i32 %i.bx, %i.df
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.dk
  store i32 %i.di, ptr %i.dl, align 4, !tbaa !380
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.039.053.ph
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !380
  %i.do = add i32 %i.dn, %i.bx
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.dk
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !380
  %i.dq = or disjoint i64 %.sroa.039.053.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader107
  %.sroa.039.053.unr = phi i64 [ %.sroa.039.053.ph, %.lr.ph.preheader107 ], [ %i.dq, %.lr.ph.prol ]
  %i.dr = icmp eq i64 %i.by, %.neg
  br i1 %i.dr, label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit30, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.039.053 = phi i64 [ %i.ep, %.lr.ph ], [ %.sroa.039.053.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ds = trunc i64 %.sroa.039.053 to i32
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.039.053
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !380
  %i.dv = add i32 %i.du, %i.bx
  %i.dw = add i32 %i.bx, %i.ds
  %i.dx = zext i32 %i.dw to i64                   ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.dx
  store i32 %i.dv, ptr %i.dy, align 4, !tbaa !380
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.039.053
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !380
  %i.eb = add i32 %i.ea, %i.bx
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.dx
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !380
  %i.ed = add nuw nsw i64 %.sroa.039.053, 1       ; 3 uses
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ed
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !380
  %i.eh = add i32 %i.eg, %i.bx
  %i.ei = add i32 %i.bx, %i.ee
  %i.ej = zext i32 %i.ei to i64                   ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ej
  store i32 %i.eh, ptr %i.ek, align 4, !tbaa !380
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ed
  %i.em = load i32, ptr %i.el, align 4, !tbaa !380
  %i.en = add i32 %i.em, %i.bx
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ej
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !380
  %i.ep = add nuw nsw i64 %.sroa.039.053, 2       ; 2 uses
  %.not.1 = icmp eq i64 %i.ep, %i.by
  br i1 %.not.1, label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit30, label %.lr.ph, !llvm.loop !2939

_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit30: ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block103, %bb.k, %bb.j, %bb.i, %bb.h
  %i.eq = load ptr, ptr %6, align 8, !tbaa !359
  call fastcc void @_ZL14reorderScalarsRN4llvm15SmallVectorImplIPNS_5ValueEEENS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %i.eq)
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.es = load ptr, ptr %7, align 8, !tbaa !359
  %i.et = load i32, ptr %i.u, align 8, !tbaa !371
  %i.eu = zext i32 %i.et to i64
  call fastcc void @_ZL12reorderOrderRN4llvm15SmallVectorImplIjEENS_8ArrayRefIiEEb(ptr noundef nonnull align 8 dereferenceable(16) %i.er, ptr %i.es, i64 %i.eu, i1 noundef zeroext true)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !371 ; 5 uses
  %.not.i32 = icmp eq i32 %i.ew, 0
  br i1 %.not.i32, label %bb.l, label %.lr.ph.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.preheader.i.i.i:                     ; preds = %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit30
  %i.ex = load ptr, ptr %i.er, align 8, !tbaa !359 ; 4 uses
  %i.ey = zext i32 %i.ew to i64
  %.idx.i.i = shl nuw nsw i64 %i.ey, 2
  %i.ez = getelementptr i8, ptr %i.ex, i64 %.idx.i.i ; 2 uses
  %i.fa = load i32, ptr %i.ex, align 4, !tbaa !380, !noalias !2946 ; 2 uses
  %i.fb = icmp eq i32 %i.fa, 0
  %.not2.i.i.i.i.i2.i = icmp eq i32 %i.fa, %i.ew
  %or.cond3.i = or i1 %.not2.i.i.i.i.i2.i, %i.fb
  br i1 %or.cond3.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i.preheader, label %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit

_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.preheader.i.i.i
  %.not.i.i.i.i.i.i68 = icmp eq i32 %i.ew, 1
  br i1 %.not.i.i.i.i.i.i68, label %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread, label %.lr.ph.i.i.i.i.i.i.lr.ph, !llvm.loop !23

.lr.ph.i.i.i.i.i.i.lr.ph:                         ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i.preheader
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  br label %.lr.ph.i.i.i.i.i.i, !llvm.loop !23

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.lr.ph, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i
  %i.fd = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i.lr.ph ], [ %i.fi, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i4.i69 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.lr.ph ], [ %i.fe, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i ]
  %i.fe = add nuw nsw i64 %.sroa.2.0.copyload.i.i.i.i.i4.i69, 1 ; 2 uses
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !380, !noalias !2946 ; 2 uses
  %i.fg = zext i32 %i.ff to i64
  %i.fh = icmp eq i64 %i.fe, %i.fg
  %.not2.i.i.i.i.i.i = icmp eq i32 %i.ff, %i.ew
  %or.cond.i = or i1 %.not2.i.i.i.i.i.i, %i.fh
  br i1 %or.cond.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i, label %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit, !llvm.loop !23

_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fi, %i.ez
  br i1 %.not.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i._ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread.loopexit_crit_edge, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !23

_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i.i
  %.ph.i.i.in.i = phi ptr [ %i.ex, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.fd, %.lr.ph.i.i.i.i.i.i ]
  %i.fj = icmp eq ptr %i.ez, %.ph.i.i.in.i
  br i1 %i.fj, label %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread, label %bb.l

_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i._ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread.loopexit_crit_edge: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i
  br label %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread, !llvm.loop !23

_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i.preheader, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i._ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread.loopexit_crit_edge, %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit
  store i32 0, ptr %i.ev, align 8, !tbaa !371
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread, %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit, %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit30
  %i.fk = load ptr, ptr %7, align 8, !tbaa !359   ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.t
  br i1 %i.fl, label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef %i.fk) #31
  br label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit

_ZN4llvm11SmallVectorIiLj12EED2Ev.exit:           ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.fm = load ptr, ptr %6, align 8, !tbaa !359   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.h
  br i1 %i.fn, label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit33, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit
  call void @free(ptr noundef %i.fm) #31
  br label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit33

_ZN4llvm11SmallVectorIiLj12EED2Ev.exit33:         ; preds = %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11SmallVectorIiLj12EEC2Em(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !359
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !371
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
end_hunk_0
begin_hunk_1_@_ZZN4llvm13slpvectorizer7BoUpSLP18processBuildVectorINS1_20ShuffleCostEstimatorENS_15InstructionCostEJNS_19TargetTransformInfoENS_8ArrayRefIPNS_5ValueEEES1_NS_15SmallPtrSetImplIS8_EEEEET0_PKNS1_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRS8_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFS8_S8_S8_NS6_IiEEEEEEEDaSL_SO_SP_:bb.a
._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.i
  %.pre-phi53.i.i.i.i = phi i32 [ %i.cf, %._crit_edge.loopexit.i.i.i.i ], [ %i.bm, %bb.i ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.bk, %bb.i ] ; 4 uses
  switch i32 %.pre-phi53.i.i.i.i, label %bb.s [
    i32 3, label %bb.n
    i32 2, label %bb.p
    i32 1, label %bb.r
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cg = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !579 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !391
  %spec.select.i.i.i.i.i.i.i.i.i.i33.i.i.i.i = icmp ugt i8 %i.ch, 1
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i33.i.i.i.i, label %_ZN4llvm11find_if_notIRNS_11SmallVectorIPNS_5ValueELj6EEENS_6detail17IsaCheckPredicateIJNS_10UndefValueEEEEEEDaOT_T0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.ci, %bb.o ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.cj = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !579 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !391
  %spec.select.i.i.i.i.i.i.i.i.i.i34.i.i.i.i = icmp ugt i8 %i.ck, 1
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i34.i.i.i.i, label %_ZN4llvm11find_if_notIRNS_11SmallVectorIPNS_5ValueELj6EEENS_6detail17IsaCheckPredicateIJNS_10UndefValueEEEEEEDaOT_T0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.cl, %bb.q ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.cm = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !579 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !391
  %spec.select.i.i.i.i.i.i.i.i.i.i35.i.i.i.i = icmp ugt i8 %i.cn, 1
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i35.i.i.i.i, label %_ZN4llvm11find_if_notIRNS_11SmallVectorIPNS_5ValueELj6EEENS_6detail17IsaCheckPredicateIJNS_10UndefValueEEEEEEDaOT_T0_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i
  %.pre = load ptr, ptr %i.bo, align 8, !tbaa !579
  br label %_ZN4llvm11find_if_notIRNS_11SmallVectorIPNS_5ValueELj6EEENS_6detail17IsaCheckPredicateIJNS_10UndefValueEEEEEEDaOT_T0_.exit

_ZN4llvm11find_if_notIRNS_11SmallVectorIPNS_5ValueELj6EEENS_6detail17IsaCheckPredicateIJNS_10UndefValueEEEEEEDaOT_T0_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.l, %bb.k, %bb.j, %bb.n, %bb.p, %bb.r, %bb.s
  %i.co = phi ptr [ %i.cj, %bb.p ], [ %.pre, %bb.s ], [ %i.cm, %bb.r ], [ %i.cg, %bb.n ], [ %i.br, %.lr.ph.i.i.i.i ], [ %i.bx, %bb.k ], [ %i.ca, %bb.l ], [ %i.bu, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.cp = load i32, ptr %i.bl, align 8, !tbaa !371 ; 9 uses
  %i.cq = zext i32 %i.cp to i64                   ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !14294, !nonnull !369, !align !655
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !653
  %i.cu = call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.ct) #31 ; 15 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  store ptr %i.cv, ptr %7, align 8, !tbaa !359
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 6, ptr %i.cx, align 4, !tbaa !372
  %i.cy = icmp ugt i32 %i.cp, 6
  br i1 %i.cy, label %bb.t, label %_ZSt6fill_nIPPN4llvm5ValueEmS2_ET_S4_T0_RKT1_.exit.i.i

bb.t:                                             ; preds = %_ZN4llvm11find_if_notIRNS_11SmallVectorIPNS_5ValueELj6EEENS_6detail17IsaCheckPredicateIJNS_10UndefValueEEEEEEDaOT_T0_.exit
  store i32 0, ptr %i.cw, align 8, !tbaa !371
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.cv, i64 noundef %i.cq, i64 noundef 8) #31
  %i.cz = load ptr, ptr %7, align 8, !tbaa !359   ; 5 uses
  %.idx.i.i.i.i.i.i.i41 = shl nuw nsw i64 %i.cq, 3 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx.i.i.i.i.i.i.i41
  %i.db = add nsw i64 %.idx.i.i.i.i.i.i.i41, -8   ; 2 uses
  %i.dc = lshr exact i64 %i.db, 3
  %i.dd = add nuw nsw i64 %i.dc, 1
  %xtraiter = and i64 %i.dd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i42.prol

.lr.ph.i.i.i.i.i.i.i.i.i42.prol:                  ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i.i.i42.prol
  %.07.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.i.i.i.i42.prol ], [ %i.cz, %bb.t ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i42.prol ], [ 0, %bb.t ]
  store ptr %i.cu, ptr %.07.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !579
  %i.de = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i42.prol, !llvm.loop !14267

.lr.ph.i.i.i.i.i.i.i.i.i42.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i42.prol, %bb.t
  %.07.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.cz, %bb.t ], [ %i.de, %.lr.ph.i.i.i.i.i.i.i.i.i42.prol ]
  %i.df = icmp ult i64 %i.db, 56
  br i1 %i.df, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i.i.i.i42:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i42.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i42
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i.i42 ], [ %.07.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i42.prol.loopexit ] ; 9 uses
  store ptr %i.cu, ptr %.07.i.i.i.i.i.i.i.i.i, align 8, !tbaa !579
  %i.dg = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 8
  store ptr %i.cu, ptr %i.dg, align 8, !tbaa !579
  %i.dh = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.cu, ptr %i.dh, align 8, !tbaa !579
  %i.di = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 24
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !579
  %i.dj = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 32
  store ptr %i.cu, ptr %i.dj, align 8, !tbaa !579
  %i.dk = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 40
  store ptr %i.cu, ptr %i.dk, align 8, !tbaa !579
  %i.dl = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 48
  store ptr %i.cu, ptr %i.dl, align 8, !tbaa !579
  %i.dm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 56
  store ptr %i.cu, ptr %i.dm, align 8, !tbaa !579
  %i.dn = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i43.7 = icmp eq ptr %i.dn, %i.da
  br i1 %.not.i.i.i.i.i.i.i.i.i43.7, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i42, !llvm.loop !25

_ZSt6fill_nIPPN4llvm5ValueEmS2_ET_S4_T0_RKT1_.exit.i.i: ; preds = %_ZN4llvm11find_if_notIRNS_11SmallVectorIPNS_5ValueELj6EEENS_6detail17IsaCheckPredicateIJNS_10UndefValueEEEEEEDaOT_T0_.exit
  %.not.i37 = icmp eq i32 %i.cp, 0
  br i1 %.not.i37, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i39

.lr.ph.i.i.i.i.i.i.i.i39:                         ; preds = %_ZSt6fill_nIPPN4llvm5ValueEmS2_ET_S4_T0_RKT1_.exit.i.i
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !579
  %.not.i.i.i.i.i.i.i.i40 = icmp eq i32 %i.cp, 1
  br i1 %.not.i.i.i.i.i.i.i.i40, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i39.1

.lr.ph.i.i.i.i.i.i.i.i39.1:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i39
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.cu, ptr %i.do, align 8, !tbaa !579
  %.not.i.i.i.i.i.i.i.i40.1 = icmp eq i32 %i.cp, 2
  br i1 %.not.i.i.i.i.i.i.i.i40.1, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i39.2

.lr.ph.i.i.i.i.i.i.i.i39.2:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i39.1
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.cu, ptr %i.dp, align 8, !tbaa !579
  %.not.i.i.i.i.i.i.i.i40.2 = icmp eq i32 %i.cp, 3
  br i1 %.not.i.i.i.i.i.i.i.i40.2, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i39.3

.lr.ph.i.i.i.i.i.i.i.i39.3:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i39.2
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.cu, ptr %i.dq, align 8, !tbaa !579
  %.not.i.i.i.i.i.i.i.i40.3 = icmp eq i32 %i.cp, 4
  br i1 %.not.i.i.i.i.i.i.i.i40.3, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i39.4

.lr.ph.i.i.i.i.i.i.i.i39.4:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i39.3
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.cu, ptr %i.dr, align 8, !tbaa !579
  %.not.i.i.i.i.i.i.i.i40.4 = icmp eq i32 %i.cp, 5
  br i1 %.not.i.i.i.i.i.i.i.i40.4, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i39.5

.lr.ph.i.i.i.i.i.i.i.i39.5:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i39.4
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %i.cu, ptr %i.ds, align 8, !tbaa !579
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i39, %.lr.ph.i.i.i.i.i.i.i.i39.1, %.lr.ph.i.i.i.i.i.i.i.i39.2, %.lr.ph.i.i.i.i.i.i.i.i39.3, %.lr.ph.i.i.i.i.i.i.i.i39.4, %.lr.ph.i.i.i.i.i.i.i.i39.5, %.lr.ph.i.i.i.i.i.i.i.i.i42.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i42, %_ZSt6fill_nIPPN4llvm5ValueEmS2_ET_S4_T0_RKT1_.exit.i.i
  %i.dt = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i.i42.prol.loopexit ], [ %i.cv, %_ZSt6fill_nIPPN4llvm5ValueEmS2_ET_S4_T0_RKT1_.exit.i.i ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i.i42 ], [ %i.cv, %.lr.ph.i.i.i.i.i.i.i.i39.5 ], [ %i.cv, %.lr.ph.i.i.i.i.i.i.i.i39.4 ], [ %i.cv, %.lr.ph.i.i.i.i.i.i.i.i39.3 ], [ %i.cv, %.lr.ph.i.i.i.i.i.i.i.i39.2 ], [ %i.cv, %.lr.ph.i.i.i.i.i.i.i.i39.1 ], [ %i.cv, %.lr.ph.i.i.i.i.i.i.i.i39 ] ; 2 uses
  store i32 %i.cp, ptr %i.cw, align 8, !tbaa !371
  store ptr %i.co, ptr %i.dt, align 8, !tbaa !579
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !14293, !nonnull !369, !align !655
  %i.dw = load i32, ptr %i.m, align 8, !tbaa !371
  %i.dx = call noundef ptr @_ZN4llvm13slpvectorizer7BoUpSLP20ShuffleCostEstimator6gatherENS_8ArrayRefIPNS_5ValueEEEjS5_(ptr noundef nonnull align 8 dereferenceable(273) %i.dv, ptr nonnull %i.dt, i64 %i.cq, i32 noundef %i.dw, ptr noundef null) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.dy = load i32, ptr %i.m, align 8, !tbaa !371 ; 7 uses
  %i.dz = zext i32 %i.dy to i64                   ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ea, ptr %8, align 8, !tbaa !359
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i32 0, ptr %i.eb, align 8, !tbaa !371
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 12, ptr %i.ec, align 4, !tbaa !372
  %i.ed = icmp ugt i32 %i.dy, 12
  br i1 %i.ed, label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i44

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i44:        ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit
  %.not.i45 = icmp eq i32 %i.dy, 0
  br i1 %.not.i45, label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread, label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread154

_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i44
  store i32 %i.dy, ptr %i.eb, align 8, !tbaa !371
  br label %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_20ShuffleCostEstimatorENS_15InstructionCostEJNS_19TargetTransformInfoENS_8ArrayRefIPNS_5ValueEEES6_NS_15SmallPtrSetImplISD_EEEEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSD_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSD_SD_SD_NSB_IiEEEEEEEDaSQ_ST_SU_EUliE_EESH_OSU_SH_T1_.exit

_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread154: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i44
  %.idx.i.i.i.i.i.i46 = shl nuw nsw i64 %i.dz, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ea, i8 -1, i64 %.idx.i.i.i.i.i.i46, i1 false), !tbaa !380
  store i32 %i.dy, ptr %i.eb, align 8, !tbaa !371
  %i.ee = load ptr, ptr %5, align 8, !tbaa !359   ; 2 uses
  %i.ef = shl nuw nsw i32 %i.dy, 2
  %.idx.i155 = zext nneg i32 %i.ef to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx.i155
  br label %.lr.ph.i.i.preheader

_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54:      ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %i.ea, i64 noundef %i.dz, i64 noundef 4) #31
  %i.eh = load ptr, ptr %8, align 8, !tbaa !359   ; 3 uses
  %.idx.i.i.i.i.i.i.i50 = shl nuw nsw i64 %i.dz, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.eh, i8 -1, i64 %.idx.i.i.i.i.i.i.i50, i1 false), !tbaa !380
  %.pre138 = load i32, ptr %i.m, align 8, !tbaa !371 ; 2 uses
  store i32 %i.dy, ptr %i.eb, align 8, !tbaa !371
  %i.ei = load ptr, ptr %5, align 8, !tbaa !359   ; 2 uses
  %i.ej = zext i32 %.pre138 to i64
  %.idx.i = shl nuw nsw i64 %i.ej, 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx.i
  %.not8.i.i = icmp eq i32 %.pre138, 0
  br i1 %.not8.i.i, label %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_20ShuffleCostEstimatorENS_15InstructionCostEJNS_19TargetTransformInfoENS_8ArrayRefIPNS_5ValueEEES6_NS_15SmallPtrSetImplISD_EEEEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSD_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSD_SD_SD_NSB_IiEEEEEEEDaSQ_ST_SU_EUliE_EESH_OSU_SH_T1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread154, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54
  %i.el = phi ptr [ %i.eg, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread154 ], [ %i.ek, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54 ] ; 2 uses
  %i.em = phi ptr [ %i.ee, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread154 ], [ %i.ei, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54 ] ; 4 uses
  %i.en = phi ptr [ %i.ea, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread154 ], [ %i.eh, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54 ] ; 5 uses
  %i.eo = ptrtoaddr ptr %i.em to i64              ; 2 uses
  %i.ep = ptrtoaddr ptr %i.el to i64
  %i.eq = add i64 %i.ep, -4
  %i.er = sub i64 %i.eq, %i.eo                    ; 2 uses
  %i.es = lshr i64 %i.er, 2
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.er, 28
  %i.eu = ptrtoaddr ptr %i.en to i64
  %i.ev = sub i64 %i.eo, %i.eu
  %diff.check = icmp ugt i64 %i.ev, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader192, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.et, 9223372036854775800     ; 3 uses
  %i.ew = shl i64 %n.vec, 2                       ; 2 uses
  %i.ex = getelementptr i8, ptr %i.en, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.em, i64 %i.ew
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ez = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.en, i64 %i.ez ; 2 uses
  %next.gep159 = getelementptr i8, ptr %i.em, i64 %i.ez ; 2 uses
  %i.fa = getelementptr i8, ptr %next.gep159, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep159, align 4, !tbaa !380
  %wide.load160 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !380
  %i.fb = icmp eq <4 x i32> %wide.load, splat (i32 -1)
  %i.fc = icmp eq <4 x i32> %wide.load160, splat (i32 -1)
  %i.fd = sext <4 x i1> %i.fb to <4 x i32>
  %i.fe = sext <4 x i1> %i.fc to <4 x i32>
  %i.ff = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.fd, ptr %next.gep, align 4, !tbaa !380
  store <4 x i32> %i.fe, ptr %i.ff, align 4, !tbaa !380
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !14268

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.et, %n.vec
  br i1 %cmp.n, label %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_20ShuffleCostEstimatorENS_15InstructionCostEJNS_19TargetTransformInfoENS_8ArrayRefIPNS_5ValueEEES6_NS_15SmallPtrSetImplISD_EEEEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSD_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSD_SD_SD_NSB_IiEEEEEEEDaSQ_ST_SU_EUliE_EESH_OSU_SH_T1_.exit.loopexit, label %.lr.ph.i.i.preheader192

.lr.ph.i.i.preheader192:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.en, %.lr.ph.i.i.preheader ], [ %i.ex, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.em, %.lr.ph.i.i.preheader ], [ %i.ey, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader192, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.fl, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader192 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.fk, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader192 ] ; 2 uses
  %i.fh = load i32, ptr %.079.i.i, align 4, !tbaa !380
  %i.fi = icmp eq i32 %i.fh, -1
  %i.fj = sext i1 %i.fi to i32
  store i32 %i.fj, ptr %.010.i.i, align 4, !tbaa !380
  %i.fk = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.fk, %i.el
  br i1 %.not.i.i, label %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_20ShuffleCostEstimatorENS_15InstructionCostEJNS_19TargetTransformInfoENS_8ArrayRefIPNS_5ValueEEES6_NS_15SmallPtrSetImplISD_EEEEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSD_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSD_SD_SD_NSB_IiEEEEEEEDaSQ_ST_SU_EUliE_EESH_OSU_SH_T1_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !14269

_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_20ShuffleCostEstimatorENS_15InstructionCostEJNS_19TargetTransformInfoENS_8ArrayRefIPNS_5ValueEEES6_NS_15SmallPtrSetImplISD_EEEEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSD_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSD_SD_SD_NSB_IiEEEEEEEDaSQ_ST_SU_EUliE_EESH_OSU_SH_T1_.exit.loopexit: ; preds = %.lr.ph.i.i, %middle.block
  %.pre139 = load i32, ptr %i.eb, align 8, !tbaa !371
  %.pre140 = zext i32 %.pre139 to i64
  br label %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_20ShuffleCostEstimatorENS_15InstructionCostEJNS_19TargetTransformInfoENS_8ArrayRefIPNS_5ValueEEES6_NS_15SmallPtrSetImplISD_EEEEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSD_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSD_SD_SD_NSB_IiEEEEEEEDaSQ_ST_SU_EUliE_EESH_OSU_SH_T1_.exit

_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_20ShuffleCostEstimatorENS_15InstructionCostEJNS_19TargetTransformInfoENS_8ArrayRefIPNS_5ValueEEES6_NS_15SmallPtrSetImplISD_EEEEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSD_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSD_SD_SD_NSB_IiEEEEEEEDaSQ_ST_SU_EUliE_EESH_OSU_SH_T1_.exit: ; preds = %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread, %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_20ShuffleCostEstimatorENS_15InstructionCostEJNS_19TargetTransformInfoENS_8ArrayRefIPNS_5ValueEEES6_NS_15SmallPtrSetImplISD_EEEEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSD_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSD_SD_SD_NSB_IiEEEEEEEDaSQ_ST_SU_EUliE_EESH_OSU_SH_T1_.exit.loopexit, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54
  %i.fm = phi ptr [ %i.en, %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_20ShuffleCostEstimatorENS_15InstructionCostEJNS_19TargetTransformInfoENS_8ArrayRefIPNS_5ValueEEES6_NS_15SmallPtrSetImplISD_EEEEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSD_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSD_SD_SD_NSB_IiEEEEEEEDaSQ_ST_SU_EUliE_EESH_OSU_SH_T1_.exit.loopexit ], [ %i.eh, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54 ], [ %i.ea, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread ]
  %.pre-phi = phi i64 [ %.pre140, %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_20ShuffleCostEstimatorENS_15InstructionCostEJNS_19TargetTransformInfoENS_8ArrayRefIPNS_5ValueEEES6_NS_15SmallPtrSetImplISD_EEEEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSD_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSD_SD_SD_NSB_IiEEEEEEEDaSQ_ST_SU_EUliE_EESH_OSU_SH_T1_.exit.loopexit ], [ %i.dz, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54 ], [ 0, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread ]
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !14295, !nonnull !369, !align !1220
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !380
  %i.fq = call noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst14isIdentityMaskENS_8ArrayRefIiEEi(ptr %i.fm, i64 %.pre-phi, i32 noundef %i.fp) #31
  br i1 %i.fq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_20ShuffleCostEstimatorENS_15InstructionCostEJNS_19TargetTransformInfoENS_8ArrayRefIPNS_5ValueEEES6_NS_15SmallPtrSetImplISD_EEEEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSD_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSD_SD_SD_NSB_IiEEEEEEEDaSQ_ST_SU_EUliE_EESH_OSU_SH_T1_.exit
  %i.fr = load ptr, ptr %8, align 8, !tbaa !359
  %i.fs = load i32, ptr %i.eb, align 8, !tbaa !371
  %i.ft = zext i32 %i.fs to i64
  %i.fu = call noundef ptr %3(i64 noundef %4, ptr noundef %i.dx, ptr noundef null, ptr %i.fr, i64 %i.ft) #31, !inline_history !91
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_20ShuffleCostEstimatorENS_15InstructionCostEJNS_19TargetTransformInfoENS_8ArrayRefIPNS_5ValueEEES6_NS_15SmallPtrSetImplISD_EEEEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSD_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSD_SD_SD_NSB_IiEEEEEEEDaSQ_ST_SU_EUliE_EESH_OSU_SH_T1_.exit
  %.0 = phi ptr [ %i.dx, %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_20ShuffleCostEstimatorENS_15InstructionCostEJNS_19TargetTransformInfoENS_8ArrayRefIPNS_5ValueEEES6_NS_15SmallPtrSetImplISD_EEEEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSD_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSD_SD_SD_NSB_IiEEEEEEEDaSQ_ST_SU_EUliE_EESH_OSU_SH_T1_.exit ], [ %i.fu, %bb.u ]
  %i.fv = load ptr, ptr %5, align 8, !tbaa !359, !noalias !14296 ; 2 uses
  %i.fw = load i32, ptr %i.m, align 8, !tbaa !371, !noalias !14297 ; 2 uses
  %.not100114 = icmp eq i32 %i.fw, 0
  br i1 %.not100114, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.v
  %i.fx = zext i32 %i.fw to i64
  %i.fy = add nuw nsw i64 %i.fx, 4611686018427387903 ; 2 uses
  %i.fz = and i64 %i.fy, 4611686018427387903      ; 2 uses
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %i.gb = icmp eq i64 %i.fz, 0
  br i1 %i.gb, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ga, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.z
  %i.gc = and i64 %i.fy, 1
  %lcmp.mod195.not.not = icmp eq i64 %i.gc, 0
  br i1 %lcmp.mod195.not.not, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.069.0116.epil.init = phi ptr [ %i.fv, %.lr.ph.preheader ], [ %i.iw, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.772.0115.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.iv, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod196 = trunc i64 %i.ga to i1
  call void @llvm.assume(i1 %lcmp.mod196)
  %i.gd = load i32, ptr %.sroa.069.0116.epil.init, align 4, !tbaa !380
  %.not34.epil = icmp eq i32 %i.gd, -1
  br i1 %.not34.epil, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %.lr.ph.epil.preheader
  %i.ge = load i32, ptr %i.m, align 8, !tbaa !371
  %i.gf = trunc i64 %.sroa.772.0115.epil.init to i32
  %i.gg = add i32 %i.ge, %i.gf
  %i.gh = load ptr, ptr %2, align 8, !tbaa !359
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %.sroa.772.0115.epil.init
  store i32 %i.gg, ptr %i.gi, align 4, !tbaa !380
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.w, %.lr.ph.epil.preheader, %bb.v
  %i.gj = load ptr, ptr %1, align 8, !tbaa !579
  %i.gk = load ptr, ptr %2, align 8, !tbaa !359
  %i.gl = load i32, ptr %i.i, align 8, !tbaa !371
  %i.gm = zext i32 %i.gl to i64
  %i.gn = call noundef ptr %3(i64 noundef %4, ptr noundef %i.gj, ptr noundef %.0, ptr %i.gk, i64 %i.gm) #31, !inline_history !91
  store ptr %i.gn, ptr %1, align 8, !tbaa !579
  %i.go = load ptr, ptr %2, align 8, !tbaa !359, !noalias !14298 ; 13 uses
  %i.gp = load i32, ptr %i.i, align 8, !tbaa !371, !noalias !14299 ; 2 uses
  %i.gq = zext i32 %i.gp to i64
  %.idx129 = shl nuw nsw i64 %i.gq, 2             ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 %.idx129
  %.not101117 = icmp eq i32 %i.gp, 0
  br i1 %.not101117, label %._crit_edge122, label %.lr.ph121.preheader

.lr.ph121.preheader:                              ; preds = %._crit_edge
  %i.gs = add nsw i64 %.idx129, -4                ; 2 uses
  %i.gt = lshr exact i64 %i.gs, 2
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 2 uses
  %min.iters.check163 = icmp ult i64 %i.gs, 28
  br i1 %min.iters.check163, label %.lr.ph121.preheader191, label %vector.ph164

vector.ph164:                                     ; preds = %.lr.ph121.preheader
  %n.vec165 = and i64 %i.gu, 9223372036854775800  ; 4 uses
  %i.gv = shl i64 %n.vec165, 2
  %i.gw = getelementptr i8, ptr %i.go, i64 %i.gv
  br label %vector.body166

vector.body166:                                   ; preds = %pred.store.continue184, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next185, %pred.store.continue184 ] ; 11 uses
  %i.gx = shl i64 %index167, 2
  %next.gep168 = getelementptr i8, ptr %i.go, i64 %i.gx ; 2 uses
  %i.gy = trunc i64 %index167 to i32              ; 8 uses
  %i.gz = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <4 x i32>, ptr %next.gep168, align 4, !tbaa !380
  %wide.load170 = load <4 x i32>, ptr %i.gz, align 4, !tbaa !380
  %i.ha = icmp ne <4 x i32> %wide.load169, splat (i32 -1) ; 4 uses
  %i.hb = icmp ne <4 x i32> %wide.load170, splat (i32 -1) ; 4 uses
  %i.hc = extractelement <4 x i1> %i.ha, i64 0
  br i1 %i.hc, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body166
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %index167
  store i32 %i.gy, ptr %i.hd, align 4, !tbaa !380
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body166
  %i.he = extractelement <4 x i1> %i.ha, i64 1
  br i1 %i.he, label %pred.store.if171, label %pred.store.continue172

pred.store.if171:                                 ; preds = %pred.store.continue
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %index167
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hh = or disjoint i32 %i.gy, 1
  store i32 %i.hh, ptr %i.hg, align 4, !tbaa !380
  br label %pred.store.continue172

pred.store.continue172:                           ; preds = %pred.store.if171, %pred.store.continue
  %i.hi = extractelement <4 x i1> %i.ha, i64 2
  br i1 %i.hi, label %pred.store.if173, label %pred.store.continue174

pred.store.if173:                                 ; preds = %pred.store.continue172
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %index167
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = or disjoint i32 %i.gy, 2
  store i32 %i.hl, ptr %i.hk, align 4, !tbaa !380
  br label %pred.store.continue174

pred.store.continue174:                           ; preds = %pred.store.if173, %pred.store.continue172
  %i.hm = extractelement <4 x i1> %i.ha, i64 3
  br i1 %i.hm, label %pred.store.if175, label %pred.store.continue176

pred.store.if175:                                 ; preds = %pred.store.continue174
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %index167
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  %i.hp = or disjoint i32 %i.gy, 3
  store i32 %i.hp, ptr %i.ho, align 4, !tbaa !380
  br label %pred.store.continue176

pred.store.continue176:                           ; preds = %pred.store.if175, %pred.store.continue174
  %i.hq = extractelement <4 x i1> %i.hb, i64 0
  br i1 %i.hq, label %pred.store.if177, label %pred.store.continue178

pred.store.if177:                                 ; preds = %pred.store.continue176
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %index167
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
end_hunk_1
begin_hunk_2_@_ZZN4llvm13slpvectorizer7BoUpSLP18processBuildVectorINS1_25ShuffleInstructionBuilderEPNS_5ValueEJNS_9IRBuilderINS_12TargetFolderENS_24IRBuilderDefaultInserterEEES1_EEET0_PKNS1_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRS5_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFS5_S5_S5_NS_8ArrayRefIiEEEEEEEDaSJ_SM_SN_:bb.a
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !391
  %spec.select.i.i.i.i.i.i.i.i.i.i33.i.i.i.i = icmp ugt i8 %i.cl, 1
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i33.i.i.i.i, label %_ZN4llvm11find_if_notIRNS_11SmallVectorIPNS_5ValueELj6EEENS_6detail17IsaCheckPredicateIJNS_10UndefValueEEEEEEDaOT_T0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.cm, %bb.o ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.cn = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !579 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !391
  %spec.select.i.i.i.i.i.i.i.i.i.i34.i.i.i.i = icmp ugt i8 %i.co, 1
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i34.i.i.i.i, label %_ZN4llvm11find_if_notIRNS_11SmallVectorIPNS_5ValueELj6EEENS_6detail17IsaCheckPredicateIJNS_10UndefValueEEEEEEDaOT_T0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.cp, %bb.q ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.cq = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !579 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !391
  %spec.select.i.i.i.i.i.i.i.i.i.i35.i.i.i.i = icmp ugt i8 %i.cr, 1
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i35.i.i.i.i, label %_ZN4llvm11find_if_notIRNS_11SmallVectorIPNS_5ValueELj6EEENS_6detail17IsaCheckPredicateIJNS_10UndefValueEEEEEEDaOT_T0_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i
  %.pre = load ptr, ptr %i.bs, align 8, !tbaa !579
  br label %_ZN4llvm11find_if_notIRNS_11SmallVectorIPNS_5ValueELj6EEENS_6detail17IsaCheckPredicateIJNS_10UndefValueEEEEEEDaOT_T0_.exit

_ZN4llvm11find_if_notIRNS_11SmallVectorIPNS_5ValueELj6EEENS_6detail17IsaCheckPredicateIJNS_10UndefValueEEEEEEDaOT_T0_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.l, %bb.k, %bb.j, %bb.n, %bb.p, %bb.r, %bb.s
  %i.cs = phi ptr [ %i.cn, %bb.p ], [ %.pre, %bb.s ], [ %i.cq, %bb.r ], [ %i.ck, %bb.n ], [ %i.bv, %.lr.ph.i.i.i.i ], [ %i.cb, %bb.k ], [ %i.ce, %bb.l ], [ %i.by, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.ct = load i32, ptr %i.bp, align 8, !tbaa !371 ; 9 uses
  %i.cu = zext i32 %i.ct to i64                   ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !15407, !nonnull !369, !align !655
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !653
  %i.cy = call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.cx) #31 ; 15 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 11 uses
  store ptr %i.cz, ptr %11, align 8, !tbaa !359
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 6, ptr %i.db, align 4, !tbaa !372
  %i.dc = icmp ugt i32 %i.ct, 6
  br i1 %i.dc, label %bb.t, label %_ZSt6fill_nIPPN4llvm5ValueEmS2_ET_S4_T0_RKT1_.exit.i.i

bb.t:                                             ; preds = %_ZN4llvm11find_if_notIRNS_11SmallVectorIPNS_5ValueELj6EEENS_6detail17IsaCheckPredicateIJNS_10UndefValueEEEEEEDaOT_T0_.exit
  store i32 0, ptr %i.da, align 8, !tbaa !371
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull %i.cz, i64 noundef %i.cu, i64 noundef 8) #31
  %i.dd = load ptr, ptr %11, align 8, !tbaa !359  ; 5 uses
  %.idx.i.i.i.i.i.i.i41 = shl nuw nsw i64 %i.cu, 3 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx.i.i.i.i.i.i.i41
  %i.df = add nsw i64 %.idx.i.i.i.i.i.i.i41, -8   ; 2 uses
  %i.dg = lshr exact i64 %i.df, 3
  %i.dh = add nuw nsw i64 %i.dg, 1
  %xtraiter = and i64 %i.dh, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i42.prol

.lr.ph.i.i.i.i.i.i.i.i.i42.prol:                  ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i.i.i42.prol
  %.07.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i.i.i.i42.prol ], [ %i.dd, %bb.t ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i42.prol ], [ 0, %bb.t ]
  store ptr %i.cy, ptr %.07.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !579
  %i.di = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i42.prol, !llvm.loop !15380

.lr.ph.i.i.i.i.i.i.i.i.i42.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i42.prol, %bb.t
  %.07.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.dd, %bb.t ], [ %i.di, %.lr.ph.i.i.i.i.i.i.i.i.i42.prol ]
  %i.dj = icmp ult i64 %i.df, 56
  br i1 %i.dj, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i.i.i.i42:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i42.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i42
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i.i.i.i42 ], [ %.07.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i42.prol.loopexit ] ; 9 uses
  store ptr %i.cy, ptr %.07.i.i.i.i.i.i.i.i.i, align 8, !tbaa !579
  %i.dk = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 8
  store ptr %i.cy, ptr %i.dk, align 8, !tbaa !579
  %i.dl = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.cy, ptr %i.dl, align 8, !tbaa !579
  %i.dm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 24
  store ptr %i.cy, ptr %i.dm, align 8, !tbaa !579
  %i.dn = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 32
  store ptr %i.cy, ptr %i.dn, align 8, !tbaa !579
  %i.do = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 40
  store ptr %i.cy, ptr %i.do, align 8, !tbaa !579
  %i.dp = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 48
  store ptr %i.cy, ptr %i.dp, align 8, !tbaa !579
  %i.dq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 56
  store ptr %i.cy, ptr %i.dq, align 8, !tbaa !579
  %i.dr = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i43.7 = icmp eq ptr %i.dr, %i.de
  br i1 %.not.i.i.i.i.i.i.i.i.i43.7, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i42, !llvm.loop !25

_ZSt6fill_nIPPN4llvm5ValueEmS2_ET_S4_T0_RKT1_.exit.i.i: ; preds = %_ZN4llvm11find_if_notIRNS_11SmallVectorIPNS_5ValueELj6EEENS_6detail17IsaCheckPredicateIJNS_10UndefValueEEEEEEDaOT_T0_.exit
  %.not.i37 = icmp eq i32 %i.ct, 0
  br i1 %.not.i37, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i39

.lr.ph.i.i.i.i.i.i.i.i39:                         ; preds = %_ZSt6fill_nIPPN4llvm5ValueEmS2_ET_S4_T0_RKT1_.exit.i.i
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !579
  %.not.i.i.i.i.i.i.i.i40 = icmp eq i32 %i.ct, 1
  br i1 %.not.i.i.i.i.i.i.i.i40, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i39.1

.lr.ph.i.i.i.i.i.i.i.i39.1:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i39
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.cy, ptr %i.ds, align 8, !tbaa !579
  %.not.i.i.i.i.i.i.i.i40.1 = icmp eq i32 %i.ct, 2
  br i1 %.not.i.i.i.i.i.i.i.i40.1, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i39.2

.lr.ph.i.i.i.i.i.i.i.i39.2:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i39.1
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.cy, ptr %i.dt, align 8, !tbaa !579
  %.not.i.i.i.i.i.i.i.i40.2 = icmp eq i32 %i.ct, 3
  br i1 %.not.i.i.i.i.i.i.i.i40.2, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i39.3

.lr.ph.i.i.i.i.i.i.i.i39.3:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i39.2
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %i.cy, ptr %i.du, align 8, !tbaa !579
  %.not.i.i.i.i.i.i.i.i40.3 = icmp eq i32 %i.ct, 4
  br i1 %.not.i.i.i.i.i.i.i.i40.3, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i39.4

.lr.ph.i.i.i.i.i.i.i.i39.4:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i39.3
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %i.cy, ptr %i.dv, align 8, !tbaa !579
  %.not.i.i.i.i.i.i.i.i40.4 = icmp eq i32 %i.ct, 5
  br i1 %.not.i.i.i.i.i.i.i.i40.4, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i39.5

.lr.ph.i.i.i.i.i.i.i.i39.5:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i39.4
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr %i.cy, ptr %i.dw, align 8, !tbaa !579
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i39, %.lr.ph.i.i.i.i.i.i.i.i39.1, %.lr.ph.i.i.i.i.i.i.i.i39.2, %.lr.ph.i.i.i.i.i.i.i.i39.3, %.lr.ph.i.i.i.i.i.i.i.i39.4, %.lr.ph.i.i.i.i.i.i.i.i39.5, %.lr.ph.i.i.i.i.i.i.i.i.i42.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i42, %_ZSt6fill_nIPPN4llvm5ValueEmS2_ET_S4_T0_RKT1_.exit.i.i
  %i.dx = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i.i42.prol.loopexit ], [ %i.cz, %_ZSt6fill_nIPPN4llvm5ValueEmS2_ET_S4_T0_RKT1_.exit.i.i ], [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i.i42 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i39.5 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i39.4 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i39.3 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i39.2 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i39.1 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i39 ] ; 2 uses
  store i32 %i.ct, ptr %i.da, align 8, !tbaa !371
  store ptr %i.cs, ptr %i.dx, align 8, !tbaa !579
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !15406, !nonnull !369, !align !655 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 120
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1687, !nonnull !369, !align !655
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !1462
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store ptr %i.dz, ptr %6, align 8, !tbaa !1690
  store ptr @_ZN4llvm12function_refIFPNS_5ValueES2_S2_NS_8ArrayRefIiEEEE11callback_fnIZNS_13slpvectorizer7BoUpSLP25ShuffleInstructionBuilder6gatherENS3_IS2_EEjS2_EUlS2_S2_S4_E_EES2_lS2_S2_S4_, ptr %5, align 8, !tbaa !1649
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ee = ptrtoint ptr %6 to i64
  store i64 %i.ee, ptr %i.ed, align 8, !tbaa !1650
  %i.ef = call noundef ptr @_ZN4llvm13slpvectorizer7BoUpSLP6gatherENS_8ArrayRefIPNS_5ValueEEES4_PNS_4TypeENS_12function_refIFS4_S4_S4_NS2_IiEEEEE(ptr noundef nonnull align 8 dereferenceable(5088) %i.eb, ptr nonnull %i.dx, i64 %i.cu, ptr noundef null, ptr noundef %i.ec, ptr noundef nonnull byval(%"class.llvm::function_ref.1646") align 8 %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %i.eg = load i32, ptr %i.m, align 8, !tbaa !371 ; 7 uses
  %i.eh = zext i32 %i.eg to i64                   ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.ei, ptr %12, align 8, !tbaa !359
  %i.ej = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  store i32 0, ptr %i.ej, align 8, !tbaa !371
  %i.ek = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 12, ptr %i.ek, align 4, !tbaa !372
  %i.el = icmp ugt i32 %i.eg, 12
  br i1 %i.el, label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i44

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i44:        ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit
  %.not.i45 = icmp eq i32 %i.eg, 0
  br i1 %.not.i45, label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread, label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread154

_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i44
  store i32 %i.eg, ptr %i.ej, align 8, !tbaa !371
  br label %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_25ShuffleInstructionBuilderEPNS_5ValueEJNS_9IRBuilderINS_12TargetFolderENS_24IRBuilderDefaultInserterEEES6_EEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSA_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSA_SA_SA_NS_8ArrayRefIiEEEEEEEDaSO_SR_SS_EUliE_EESF_OSS_SF_T1_.exit

_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread154: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i44
  %.idx.i.i.i.i.i.i46 = shl nuw nsw i64 %i.eh, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ei, i8 -1, i64 %.idx.i.i.i.i.i.i46, i1 false), !tbaa !380
  store i32 %i.eg, ptr %i.ej, align 8, !tbaa !371
  %i.em = load ptr, ptr %9, align 8, !tbaa !359   ; 2 uses
  %i.en = shl nuw nsw i32 %i.eg, 2
  %.idx.i155 = zext nneg i32 %i.en to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx.i155
  br label %.lr.ph.i.i.preheader

_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54:      ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull %i.ei, i64 noundef %i.eh, i64 noundef 4) #31
  %i.ep = load ptr, ptr %12, align 8, !tbaa !359  ; 3 uses
  %.idx.i.i.i.i.i.i.i50 = shl nuw nsw i64 %i.eh, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ep, i8 -1, i64 %.idx.i.i.i.i.i.i.i50, i1 false), !tbaa !380
  %.pre138 = load i32, ptr %i.m, align 8, !tbaa !371 ; 2 uses
  store i32 %i.eg, ptr %i.ej, align 8, !tbaa !371
  %i.eq = load ptr, ptr %9, align 8, !tbaa !359   ; 2 uses
  %i.er = zext i32 %.pre138 to i64
  %.idx.i = shl nuw nsw i64 %i.er, 2
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx.i
  %.not8.i.i = icmp eq i32 %.pre138, 0
  br i1 %.not8.i.i, label %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_25ShuffleInstructionBuilderEPNS_5ValueEJNS_9IRBuilderINS_12TargetFolderENS_24IRBuilderDefaultInserterEEES6_EEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSA_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSA_SA_SA_NS_8ArrayRefIiEEEEEEEDaSO_SR_SS_EUliE_EESF_OSS_SF_T1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread154, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54
  %i.et = phi ptr [ %i.eo, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread154 ], [ %i.es, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54 ] ; 2 uses
  %i.eu = phi ptr [ %i.em, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread154 ], [ %i.eq, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54 ] ; 4 uses
  %i.ev = phi ptr [ %i.ei, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread154 ], [ %i.ep, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54 ] ; 5 uses
  %i.ew = ptrtoaddr ptr %i.eu to i64              ; 2 uses
  %i.ex = ptrtoaddr ptr %i.et to i64
  %i.ey = add i64 %i.ex, -4
  %i.ez = sub i64 %i.ey, %i.ew                    ; 2 uses
  %i.fa = lshr i64 %i.ez, 2
  %i.fb = add nuw nsw i64 %i.fa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ez, 28
  %i.fc = ptrtoaddr ptr %i.ev to i64
  %i.fd = sub i64 %i.ew, %i.fc
  %diff.check = icmp ugt i64 %i.fd, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader192, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.fb, 9223372036854775800     ; 3 uses
  %i.fe = shl i64 %n.vec, 2                       ; 2 uses
  %i.ff = getelementptr i8, ptr %i.ev, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.eu, i64 %i.fe
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fh = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ev, i64 %i.fh ; 2 uses
  %next.gep159 = getelementptr i8, ptr %i.eu, i64 %i.fh ; 2 uses
  %i.fi = getelementptr i8, ptr %next.gep159, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep159, align 4, !tbaa !380
  %wide.load160 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !380
  %i.fj = icmp eq <4 x i32> %wide.load, splat (i32 -1)
  %i.fk = icmp eq <4 x i32> %wide.load160, splat (i32 -1)
  %i.fl = sext <4 x i1> %i.fj to <4 x i32>
  %i.fm = sext <4 x i1> %i.fk to <4 x i32>
  %i.fn = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.fl, ptr %next.gep, align 4, !tbaa !380
  store <4 x i32> %i.fm, ptr %i.fn, align 4, !tbaa !380
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fo = icmp eq i64 %index.next, %n.vec
  br i1 %i.fo, label %middle.block, label %vector.body, !llvm.loop !15381

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fb, %n.vec
  br i1 %cmp.n, label %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_25ShuffleInstructionBuilderEPNS_5ValueEJNS_9IRBuilderINS_12TargetFolderENS_24IRBuilderDefaultInserterEEES6_EEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSA_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSA_SA_SA_NS_8ArrayRefIiEEEEEEEDaSO_SR_SS_EUliE_EESF_OSS_SF_T1_.exit.loopexit, label %.lr.ph.i.i.preheader192

.lr.ph.i.i.preheader192:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.ev, %.lr.ph.i.i.preheader ], [ %i.ff, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.eu, %.lr.ph.i.i.preheader ], [ %i.fg, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader192, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ft, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader192 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.fs, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader192 ] ; 2 uses
  %i.fp = load i32, ptr %.079.i.i, align 4, !tbaa !380
  %i.fq = icmp eq i32 %i.fp, -1
  %i.fr = sext i1 %i.fq to i32
  store i32 %i.fr, ptr %.010.i.i, align 4, !tbaa !380
  %i.fs = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.fs, %i.et
  br i1 %.not.i.i, label %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_25ShuffleInstructionBuilderEPNS_5ValueEJNS_9IRBuilderINS_12TargetFolderENS_24IRBuilderDefaultInserterEEES6_EEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSA_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSA_SA_SA_NS_8ArrayRefIiEEEEEEEDaSO_SR_SS_EUliE_EESF_OSS_SF_T1_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !15382

_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_25ShuffleInstructionBuilderEPNS_5ValueEJNS_9IRBuilderINS_12TargetFolderENS_24IRBuilderDefaultInserterEEES6_EEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSA_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSA_SA_SA_NS_8ArrayRefIiEEEEEEEDaSO_SR_SS_EUliE_EESF_OSS_SF_T1_.exit.loopexit: ; preds = %.lr.ph.i.i, %middle.block
  %.pre139 = load i32, ptr %i.ej, align 8, !tbaa !371
  %.pre140 = zext i32 %.pre139 to i64
  br label %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_25ShuffleInstructionBuilderEPNS_5ValueEJNS_9IRBuilderINS_12TargetFolderENS_24IRBuilderDefaultInserterEEES6_EEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSA_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSA_SA_SA_NS_8ArrayRefIiEEEEEEEDaSO_SR_SS_EUliE_EESF_OSS_SF_T1_.exit

_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_25ShuffleInstructionBuilderEPNS_5ValueEJNS_9IRBuilderINS_12TargetFolderENS_24IRBuilderDefaultInserterEEES6_EEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSA_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSA_SA_SA_NS_8ArrayRefIiEEEEEEEDaSO_SR_SS_EUliE_EESF_OSS_SF_T1_.exit: ; preds = %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread, %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_25ShuffleInstructionBuilderEPNS_5ValueEJNS_9IRBuilderINS_12TargetFolderENS_24IRBuilderDefaultInserterEEES6_EEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSA_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSA_SA_SA_NS_8ArrayRefIiEEEEEEEDaSO_SR_SS_EUliE_EESF_OSS_SF_T1_.exit.loopexit, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54
  %i.fu = phi ptr [ %i.ev, %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_25ShuffleInstructionBuilderEPNS_5ValueEJNS_9IRBuilderINS_12TargetFolderENS_24IRBuilderDefaultInserterEEES6_EEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSA_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSA_SA_SA_NS_8ArrayRefIiEEEEEEEDaSO_SR_SS_EUliE_EESF_OSS_SF_T1_.exit.loopexit ], [ %i.ep, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54 ], [ %i.ei, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread ]
  %.pre-phi = phi i64 [ %.pre140, %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_25ShuffleInstructionBuilderEPNS_5ValueEJNS_9IRBuilderINS_12TargetFolderENS_24IRBuilderDefaultInserterEEES6_EEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSA_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSA_SA_SA_NS_8ArrayRefIiEEEEEEEDaSO_SR_SS_EUliE_EESF_OSS_SF_T1_.exit.loopexit ], [ %i.eh, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54 ], [ 0, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit54.thread ]
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !15408, !nonnull !369, !align !1220
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !380
  %i.fy = call noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst14isIdentityMaskENS_8ArrayRefIiEEi(ptr %i.fu, i64 %.pre-phi, i32 noundef %i.fx) #31
  br i1 %i.fy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_25ShuffleInstructionBuilderEPNS_5ValueEJNS_9IRBuilderINS_12TargetFolderENS_24IRBuilderDefaultInserterEEES6_EEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSA_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSA_SA_SA_NS_8ArrayRefIiEEEEEEEDaSO_SR_SS_EUliE_EESF_OSS_SF_T1_.exit
  %i.fz = load ptr, ptr %12, align 8, !tbaa !359
  %i.ga = load i32, ptr %i.ej, align 8, !tbaa !371
  %i.gb = zext i32 %i.ga to i64
  %i.gc = call noundef ptr %3(i64 noundef %4, ptr noundef %i.ef, ptr noundef null, ptr %i.fz, i64 %i.gb) #31, !inline_history !91
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_25ShuffleInstructionBuilderEPNS_5ValueEJNS_9IRBuilderINS_12TargetFolderENS_24IRBuilderDefaultInserterEEES6_EEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSA_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSA_SA_SA_NS_8ArrayRefIiEEEEEEEDaSO_SR_SS_EUliE_EESF_OSS_SF_T1_.exit
  %.0 = phi ptr [ %i.ef, %_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPiZZNS_13slpvectorizer7BoUpSLP18processBuildVectorINS6_25ShuffleInstructionBuilderEPNS_5ValueEJNS_9IRBuilderINS_12TargetFolderENS_24IRBuilderDefaultInserterEEES6_EEET0_PKNS6_9TreeEntryEPNS_4TypeEDpRT1_ENKUlRSA_RNS_15SmallVectorImplIiEET_E_clINS_12function_refIFSA_SA_SA_NS_8ArrayRefIiEEEEEEEDaSO_SR_SS_EUliE_EESF_OSS_SF_T1_.exit ], [ %i.gc, %bb.u ]
  %i.gd = load ptr, ptr %9, align 8, !tbaa !359, !noalias !15409 ; 2 uses
  %i.ge = load i32, ptr %i.m, align 8, !tbaa !371, !noalias !15410 ; 2 uses
  %.not100114 = icmp eq i32 %i.ge, 0
  br i1 %.not100114, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.v
  %i.gf = zext i32 %i.ge to i64
  %i.gg = add nuw nsw i64 %i.gf, 4611686018427387903 ; 2 uses
  %i.gh = and i64 %i.gg, 4611686018427387903      ; 2 uses
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %i.gj = icmp eq i64 %i.gh, 0
  br i1 %i.gj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.gi, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.z
  %i.gk = and i64 %i.gg, 1
  %lcmp.mod195.not.not = icmp eq i64 %i.gk, 0
  br i1 %lcmp.mod195.not.not, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.069.0116.epil.init = phi ptr [ %i.gd, %.lr.ph.preheader ], [ %i.je, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.772.0115.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.jd, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod196 = trunc i64 %i.gi to i1
  call void @llvm.assume(i1 %lcmp.mod196)
  %i.gl = load i32, ptr %.sroa.069.0116.epil.init, align 4, !tbaa !380
  %.not34.epil = icmp eq i32 %i.gl, -1
  br i1 %.not34.epil, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %.lr.ph.epil.preheader
  %i.gm = load i32, ptr %i.m, align 8, !tbaa !371
  %i.gn = trunc i64 %.sroa.772.0115.epil.init to i32
  %i.go = add i32 %i.gm, %i.gn
  %i.gp = load ptr, ptr %2, align 8, !tbaa !359
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %.sroa.772.0115.epil.init
  store i32 %i.go, ptr %i.gq, align 4, !tbaa !380
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.w, %.lr.ph.epil.preheader, %bb.v
  %i.gr = load ptr, ptr %1, align 8, !tbaa !579
  %i.gs = load ptr, ptr %2, align 8, !tbaa !359
  %i.gt = load i32, ptr %i.i, align 8, !tbaa !371
  %i.gu = zext i32 %i.gt to i64
  %i.gv = call noundef ptr %3(i64 noundef %4, ptr noundef %i.gr, ptr noundef %.0, ptr %i.gs, i64 %i.gu) #31, !inline_history !91
  store ptr %i.gv, ptr %1, align 8, !tbaa !579
  %i.gw = load ptr, ptr %2, align 8, !tbaa !359, !noalias !15411 ; 13 uses
  %i.gx = load i32, ptr %i.i, align 8, !tbaa !371, !noalias !15412 ; 2 uses
  %i.gy = zext i32 %i.gx to i64
  %.idx129 = shl nuw nsw i64 %i.gy, 2             ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.idx129
  %.not101117 = icmp eq i32 %i.gx, 0
  br i1 %.not101117, label %._crit_edge122, label %.lr.ph121.preheader

.lr.ph121.preheader:                              ; preds = %._crit_edge
  %i.ha = add nsw i64 %.idx129, -4                ; 2 uses
  %i.hb = lshr exact i64 %i.ha, 2
  %i.hc = add nuw nsw i64 %i.hb, 1                ; 2 uses
  %min.iters.check163 = icmp ult i64 %i.ha, 28
  br i1 %min.iters.check163, label %.lr.ph121.preheader191, label %vector.ph164

vector.ph164:                                     ; preds = %.lr.ph121.preheader
  %n.vec165 = and i64 %i.hc, 9223372036854775800  ; 4 uses
  %i.hd = shl i64 %n.vec165, 2
  %i.he = getelementptr i8, ptr %i.gw, i64 %i.hd
  br label %vector.body166

vector.body166:                                   ; preds = %pred.store.continue184, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next185, %pred.store.continue184 ] ; 11 uses
  %i.hf = shl i64 %index167, 2
  %next.gep168 = getelementptr i8, ptr %i.gw, i64 %i.hf ; 2 uses
  %i.hg = trunc i64 %index167 to i32              ; 8 uses
  %i.hh = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <4 x i32>, ptr %next.gep168, align 4, !tbaa !380
  %wide.load170 = load <4 x i32>, ptr %i.hh, align 4, !tbaa !380
  %i.hi = icmp ne <4 x i32> %wide.load169, splat (i32 -1) ; 4 uses
  %i.hj = icmp ne <4 x i32> %wide.load170, splat (i32 -1) ; 4 uses
  %i.hk = extractelement <4 x i1> %i.hi, i64 0
  br i1 %i.hk, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body166
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %index167
  store i32 %i.hg, ptr %i.hl, align 4, !tbaa !380
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body166
  %i.hm = extractelement <4 x i1> %i.hi, i64 1
  br i1 %i.hm, label %pred.store.if171, label %pred.store.continue172

pred.store.if171:                                 ; preds = %pred.store.continue
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %index167
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hp = or disjoint i32 %i.hg, 1
  store i32 %i.hp, ptr %i.ho, align 4, !tbaa !380
  br label %pred.store.continue172

pred.store.continue172:                           ; preds = %pred.store.if171, %pred.store.continue
  %i.hq = extractelement <4 x i1> %i.hi, i64 2
  br i1 %i.hq, label %pred.store.if173, label %pred.store.continue174

pred.store.if173:                                 ; preds = %pred.store.continue172
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %index167
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = or disjoint i32 %i.hg, 2
  store i32 %i.ht, ptr %i.hs, align 4, !tbaa !380
  br label %pred.store.continue174

pred.store.continue174:                           ; preds = %pred.store.if173, %pred.store.continue172
  %i.hu = extractelement <4 x i1> %i.hi, i64 3
  br i1 %i.hu, label %pred.store.if175, label %pred.store.continue176

pred.store.if175:                                 ; preds = %pred.store.continue174
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %index167
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  %i.hx = or disjoint i32 %i.hg, 3
  store i32 %i.hx, ptr %i.hw, align 4, !tbaa !380
  br label %pred.store.continue176

pred.store.continue176:                           ; preds = %pred.store.if175, %pred.store.continue174
  %i.hy = extractelement <4 x i1> %i.hj, i64 0
  br i1 %i.hy, label %pred.store.if177, label %pred.store.continue178

pred.store.if177:                                 ; preds = %pred.store.continue176
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %index167
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
end_hunk_2
