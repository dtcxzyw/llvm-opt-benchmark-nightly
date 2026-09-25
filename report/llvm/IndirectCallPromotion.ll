Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IndirectCallPromotion?download=true
inline.NumInlined: 6931
inline.NumDeleted: 3349
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4llvm4bolt21IndirectCallPromotion14getCallTargetsERNS0_16BinaryBasicBlockERKNS_6MCInstE:bb.a

bb.aq:                                            ; preds = %bb.ap
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i.i.i.i.i.i, i64 72
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge.i.i.i.i.i.i
  %.sroa.037.2.i.i.i.i.i.i = phi ptr [ %i.ke, %bb.aq ], [ %.sroa.037.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.kf = getelementptr i8, ptr %.sroa.037.2.i.i.i.i.i.i, i64 16
  %.val.i26.i.i.i.i.i.i = load ptr, ptr %i.kf, align 8, !tbaa !94
  %.not.i.i27.i.i.i.i.i.i = icmp eq ptr %.val.i26.i.i.i.i.i.i, null
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i27.i.i.i.i.i.i, ptr %.sroa.037.2.i.i.i.i.i.i, ptr %.val3.i
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predIZNKS4_14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_2EEET_SK_SK_T0_.exit.i.i.i.i"

.loopexit.split.loop.exit47.i.i.i.i.i.i:          ; preds = %bb.aj
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i.i.i, i64 72
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predIZNKS4_14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_2EEET_SK_SK_T0_.exit.i.i.i.i"

.loopexit.split.loop.exit49.i.i.i.i.i.i:          ; preds = %bb.ak
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i.i.i, i64 144
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predIZNKS4_14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_2EEET_SK_SK_T0_.exit.i.i.i.i"

.loopexit.split.loop.exit51.i.i.i.i.i.i:          ; preds = %bb.al
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i.i.i, i64 216
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predIZNKS4_14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_2EEET_SK_SK_T0_.exit.i.i.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predIZNKS4_14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_2EEET_SK_SK_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i93, %.loopexit.split.loop.exit51.i.i.i.i.i.i, %.loopexit.split.loop.exit49.i.i.i.i.i.i, %.loopexit.split.loop.exit47.i.i.i.i.i.i, %bb.ar, %bb.ap, %bb.an
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.037.1.i.i.i.i.i.i, %bb.ap ], [ %spec.select.i.i.i.i.i.i, %bb.ar ], [ %i.ki, %.loopexit.split.loop.exit51.i.i.i.i.i.i ], [ %.sroa.037.0.lcssa.i.i.i.i.i.i, %bb.an ], [ %i.kh, %.loopexit.split.loop.exit49.i.i.i.i.i.i ], [ %i.kg, %.loopexit.split.loop.exit47.i.i.i.i.i.i ], [ %.sroa.037.056.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i93 ] ; 5 uses
  %i.kj = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, %.val3.i
  %.sroa.06.021.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not22.i.i.i.i = icmp eq ptr %.sroa.06.021.i.i.i.i, %.val3.i
  %or.cond.i.i.i.i = select i1 %i.kj, i1 true, i1 %.not22.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %"_ZN4llvm9remove_ifIRSt6vectorINS_4bolt21IndirectCallPromotion8CallsiteESaIS4_EEZNKS3_14getCallTargetsERNS2_16BinaryBasicBlockERKNS_6MCInstEE3$_2EEDaOT_T0_.exit.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predIZNKS4_14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_2EEET_SK_SK_T0_.exit.i.i.i.i", %bb.au
  %.sroa.06.025.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.au ], [ %.sroa.06.021.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predIZNKS4_14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_2EEET_SK_SK_T0_.exit.i.i.i.i" ] ; 3 uses
  %.sroa.012.024.i.i.i.i = phi ptr [ %.sroa.012.1.i.i.i.i, %bb.au ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predIZNKS4_14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_2EEET_SK_SK_T0_.exit.i.i.i.i" ] ; 5 uses
  %.sroa.08.0.in.sroa.speculated.i.i.pn23.i.i.i.i = phi ptr [ %.sroa.06.025.i.i.i.i, %bb.au ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predIZNKS4_14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_2EEET_SK_SK_T0_.exit.i.i.i.i" ] ; 3 uses
  %i.kk = getelementptr i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn23.i.i.i.i, i64 88
  %.val.i.i.i.i.i = load ptr, ptr %i.kk, align 8, !tbaa !94
  %.not.i.i.i.i.i.i85 = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i85, label %bb.au, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.012.024.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.06.025.i.i.i.i, i64 48, i1 false)
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.012.024.i.i.i.i, i64 48 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn23.i.i.i.i, i64 120 ; 2 uses
  %i.kn = load ptr, ptr %i.kl, align 8, !tbaa !269 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.012.024.i.i.i.i, i64 64 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !309
  %i.kq = load <2 x ptr>, ptr %i.km, align 8, !tbaa !117
  store <2 x ptr> %i.kq, ptr %i.kl, align 8, !tbaa !117
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn23.i.i.i.i, i64 136
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !309
  store ptr %i.ks, ptr %i.ko, align 8, !tbaa !309
  %.not.i.i.i.i.i.i.i.i.i.i86 = icmp eq ptr %i.kn, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.km, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i86, label %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kt = ptrtoint ptr %i.kp to i64
  %i.ku = ptrtoint ptr %i.kn to i64
  %i.kv = sub i64 %i.kt, %i.ku
  call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef %i.kv) #26
  br label %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i

_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i: ; preds = %bb.at, %bb.as
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.012.024.i.i.i.i, i64 72
  br label %bb.au

bb.au:                                            ; preds = %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.012.1.i.i.i.i = phi ptr [ %.sroa.012.024.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.kw, %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i ] ; 2 uses
  %.sroa.06.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.025.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i87 = icmp eq ptr %.sroa.06.0.i.i.i.i, %.val3.i
  br i1 %.not.i.i.i.i87, label %"_ZN4llvm9remove_ifIRSt6vectorINS_4bolt21IndirectCallPromotion8CallsiteESaIS4_EEZNKS3_14getCallTargetsERNS2_16BinaryBasicBlockERKNS_6MCInstEE3$_2EEDaOT_T0_.exit.loopexit.i", label %.lr.ph.i.i.i.i, !llvm.loop !769

"_ZN4llvm9remove_ifIRSt6vectorINS_4bolt21IndirectCallPromotion8CallsiteESaIS4_EEZNKS3_14getCallTargetsERNS2_16BinaryBasicBlockERKNS_6MCInstEE3$_2EEDaOT_T0_.exit.loopexit.i": ; preds = %bb.au
  %.pre.i88 = load ptr, ptr %i.hl, align 8, !tbaa !97
  br label %"_ZN4llvm9remove_ifIRSt6vectorINS_4bolt21IndirectCallPromotion8CallsiteESaIS4_EEZNKS3_14getCallTargetsERNS2_16BinaryBasicBlockERKNS_6MCInstEE3$_2EEDaOT_T0_.exit.i"

"_ZN4llvm9remove_ifIRSt6vectorINS_4bolt21IndirectCallPromotion8CallsiteESaIS4_EEZNKS3_14getCallTargetsERNS2_16BinaryBasicBlockERKNS_6MCInstEE3$_2EEDaOT_T0_.exit.i": ; preds = %"_ZN4llvm9remove_ifIRSt6vectorINS_4bolt21IndirectCallPromotion8CallsiteESaIS4_EEZNKS3_14getCallTargetsERNS2_16BinaryBasicBlockERKNS_6MCInstEE3$_2EEDaOT_T0_.exit.loopexit.i", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predIZNKS4_14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_2EEET_SK_SK_T0_.exit.i.i.i.i"
  %i.kx = phi ptr [ %.pre.i88, %"_ZN4llvm9remove_ifIRSt6vectorINS_4bolt21IndirectCallPromotion8CallsiteESaIS4_EEZNKS3_14getCallTargetsERNS2_16BinaryBasicBlockERKNS_6MCInstEE3$_2EEDaOT_T0_.exit.loopexit.i" ], [ %.val3.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predIZNKS4_14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_2EEET_SK_SK_T0_.exit.i.i.i.i" ] ; 2 uses
  %.sroa.012.2.i.i.i.i = phi ptr [ %.sroa.012.1.i.i.i.i, %"_ZN4llvm9remove_ifIRSt6vectorINS_4bolt21IndirectCallPromotion8CallsiteESaIS4_EEZNKS3_14getCallTargetsERNS2_16BinaryBasicBlockERKNS_6MCInstEE3$_2EEDaOT_T0_.exit.loopexit.i" ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predIZNKS4_14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_2EEET_SK_SK_T0_.exit.i.i.i.i" ] ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %.sroa.012.2.i.i.i.i, %i.kx
  br i1 %.not.i.i.i89, label %"_ZN4llvm8erase_ifISt6vectorINS_4bolt21IndirectCallPromotion8CallsiteESaIS4_EEZNKS3_14getCallTargetsERNS2_16BinaryBasicBlockERKNS_6MCInstEE3$_2EEvRT_T0_.exit", label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i: ; preds = %"_ZN4llvm9remove_ifIRSt6vectorINS_4bolt21IndirectCallPromotion8CallsiteESaIS4_EEZNKS3_14getCallTargetsERNS2_16BinaryBasicBlockERKNS_6MCInstEE3$_2EEDaOT_T0_.exit.i"
  %i.ky = load ptr, ptr %0, align 8, !tbaa !97    ; 2 uses
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %.sroa.012.2.i.i.i.i to i64
  %i.lb = sub i64 %i.la, %i.kz
  %i.lc = getelementptr inbounds i8, ptr %i.ky, i64 %i.lb ; 2 uses
  br label %.lr.ph.i.i.i.i.i5.i

.lr.ph.i.i.i.i.i5.i:                              ; preds = %_ZSt8_DestroyIN4llvm4bolt21IndirectCallPromotion8CallsiteEEvPT_.exit.i.i.i.i.i.i92, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i
  %.05.i.i.i.i.i.i90 = phi ptr [ %i.lk, %_ZSt8_DestroyIN4llvm4bolt21IndirectCallPromotion8CallsiteEEvPT_.exit.i.i.i.i.i.i92 ], [ %i.lc, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i ] ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i90, i64 48
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !269 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i91 = icmp eq ptr %i.le, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i91, label %_ZSt8_DestroyIN4llvm4bolt21IndirectCallPromotion8CallsiteEEvPT_.exit.i.i.i.i.i.i92, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i.i.i5.i
  %i.lf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i90, i64 64
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !309
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = ptrtoint ptr %i.le to i64
  %i.lj = sub i64 %i.lh, %i.li
  call void @_ZdlPvm(ptr noundef nonnull %i.le, i64 noundef %i.lj) #26
  br label %_ZSt8_DestroyIN4llvm4bolt21IndirectCallPromotion8CallsiteEEvPT_.exit.i.i.i.i.i.i92

_ZSt8_DestroyIN4llvm4bolt21IndirectCallPromotion8CallsiteEEvPT_.exit.i.i.i.i.i.i92: ; preds = %bb.av, %.lr.ph.i.i.i.i.i5.i
  %i.lk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i90, i64 72 ; 2 uses
  %.not.i.i.i.i.i6.i = icmp eq ptr %i.lk, %i.kx
  br i1 %.not.i.i.i.i.i6.i, label %_ZSt8_DestroyIPN4llvm4bolt21IndirectCallPromotion8CallsiteEEvT_S5_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i5.i, !llvm.loop !3

_ZSt8_DestroyIPN4llvm4bolt21IndirectCallPromotion8CallsiteEEvT_S5_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN4llvm4bolt21IndirectCallPromotion8CallsiteEEvPT_.exit.i.i.i.i.i.i92
  store ptr %i.lc, ptr %i.hl, align 8, !tbaa !104
  br label %"_ZN4llvm8erase_ifISt6vectorINS_4bolt21IndirectCallPromotion8CallsiteESaIS4_EEZNKS3_14getCallTargetsERNS2_16BinaryBasicBlockERKNS_6MCInstEE3$_2EEvRT_T0_.exit"

"_ZN4llvm8erase_ifISt6vectorINS_4bolt21IndirectCallPromotion8CallsiteESaIS4_EEZNKS3_14getCallTargetsERNS2_16BinaryBasicBlockERKNS_6MCInstEE3$_2EEvRT_T0_.exit": ; preds = %_ZSt8_DestroyIPN4llvm4bolt21IndirectCallPromotion8CallsiteEEvT_S5_.exit.i.i.i.i, %"_ZN4llvm9remove_ifIRSt6vectorINS_4bolt21IndirectCallPromotion8CallsiteESaIS4_EEZNKS3_14getCallTargetsERNS2_16BinaryBasicBlockERKNS_6MCInstEE3$_2EEDaOT_T0_.exit.i", %._crit_edge.i.i.i.i.i.i, %bb.u, %bb.d
  ret void
}

declare { i64, i64 } @_ZNK4llvm4bolt9JumpTable20getEntriesForAddressEm(ptr noundef nonnull align 8 dereferenceable(264), i64 noundef) local_unnamed_addr #5

declare noundef i64 @_ZNK4llvm4bolt13MCPlusBuilder12getJumpTableERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm4bolt16BinaryBasicBlock13getBranchInfoERKS1_(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEENS_7ErrorOrIRKT_EERKNS_6MCInstENS_9StringRefE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr %3, i64 %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #25
  switch i32 %i.b, label %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i [
    i32 11, label %bb.b
    i32 35, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #30
  unreachable

_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %3, i64 %4) #25
  %i.e = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr %3, i64 %4, i32 noundef %i.d) #25 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !322
  br i1 %i.f, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread, label %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i

_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i: ; preds = %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i
  %i.h = sext i32 %i.e to i64                     ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !323
  %.pre8.i = zext i32 %.pre.i to i64
  %i.i = icmp eq i64 %i.h, %.pre8.i
  br i1 %i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit

_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread: ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i, %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i
  %i.j = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #25 ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8
  store i32 34, ptr %0, align 8, !tbaa !301
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !325
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit: ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i
  %i.o = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !327
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !59
  %i.s = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #25 ; 0 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.r to i32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  %i.t = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.sroa.0.0.extract.trunc) #25, !noalias !774
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !alias.scope !774
  %i.x = or i8 %i.w, 1
  store i8 %i.x, ptr %i.v, align 8, !alias.scope !774
  store i32 34, ptr %0, align 8, !tbaa !301, !alias.scope !774
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !325, !alias.scope !774
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.e:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !318, !noalias !774 ; 5 uses
  %.01317.i.i.i.i.i = add i32 %i.z, -1            ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42, !noalias !774 ; 4 uses
  %5 = zext i32 %i.z to i64                       ; 2 uses
  %i.ac = zext nneg i32 %.01317.i.i.i.i.i to i64  ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !312, !noalias !774
  %i.af = icmp eq i8 %i.ae, 6
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !774
  %i.ai = icmp eq ptr %i.ah, null
  %i.aj = select i1 %i.af, i1 %i.ai, i1 false
  br i1 %i.aj, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.e, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.ac, %bb.e ] ; 2 uses
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i ], [ %5, %bb.e ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.ak = icmp sgt i64 %indvars.iv.i.i, 0
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.a, -1 ; 2 uses
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !312, !noalias !774
  %i.an = icmp eq i8 %i.am, 6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !774
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false
  br i1 %i.ar, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.as = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.e
  %indvars.iv.i.lcssa.i.i = phi i64 [ %5, %bb.e ], [ %indvars.iv.next.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.e ], [ %i.as, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.z, %.01318.i.i.i.lcssa.i.i
  %i.at = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1
  %.not1324.i.i.i = icmp ult i32 %i.at, %i.z
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv.i.lcssa.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !66, !noalias !774 ; 2 uses
  %i.ax = lshr i64 %i.aw, 56
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %.not.i3.i.i = icmp eq i32 %.sroa.0.0.extract.trunc, %i.ay
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i.a, %.critedge.i.i.i ], [ %indvars.iv.i.lcssa.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i.a = add nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %lftr.wideiv.i.i.i = trunc i64 %indvars.iv.next.i.i.i.a to i32
  %exitcond.not.i.i.i = icmp ne i32 %i.z, %lftr.wideiv.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !66, !noalias !774 ; 2 uses
  %i.bc = lshr i64 %i.bb, 56
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %.not.i.i.i = icmp eq i32 %.sroa.0.0.extract.trunc, %i.bd
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.aw, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.bb, %.critedge.i.i.i ]
  %i.be = shl i64 %.lcssa.i.i, 8
  %i.bf = ashr exact i64 %i.be, 8
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 8, !alias.scope !774
  %i.bk = and i8 %i.bj, -2
  store i8 %i.bk, ptr %i.bi, align 8, !alias.scope !774
  store ptr %i.bh, ptr %0, align 8, !tbaa !317, !alias.scope !774
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEERT_RKNS_6MCInstEj.exit.i, %bb.d, %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm4bolt21IndirectCallPromotion27maybeGetHotJumpTableTargetsERNS0_16BinaryBasicBlockERNS_6MCInstERPS4_PKNS0_9JumpTableE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.570") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4, ptr noundef %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %7 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %8 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %9 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %10 = alloca %"class.llvm::bolt::MCPlusBuilder::InstructionIterator", align 8 ; 3 uses
  %11 = alloca %"class.llvm::bolt::MCPlusBuilder::InstructionIterator", align 8 ; 3 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %14 = alloca %"class.llvm::ErrorOr.619", align 8 ; 5 uses
  %15 = alloca %"class.std::map.640", align 8     ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !142  ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !258, !nonnull !39, !align !62 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 314
  %i.n = load i8, ptr %i.m, align 2, !tbaa !328, !range !38, !noundef !39
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14EliminateLoadsE, i64 120), align 8, !range !38
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond = select i1 %i.o, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.ca

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.r = load ptr, ptr %2, align 8, !tbaa !329    ; 3 uses
  %i.s = ptrtoint ptr %3 to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 1568 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !260  ; 2 uses
  %i.x = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4llvm4bolt13MCPlusBuilder19InstructionIterator7SeqImplIPNS_6MCInstEEE, i64 16), ptr %i.x, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.r, ptr %i.y, align 8, !tbaa !332
  store ptr %i.x, ptr %10, align 8, !tbaa !334
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  %i.aa = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4llvm4bolt13MCPlusBuilder19InstructionIterator7SeqImplIPNS_6MCInstEEE, i64 16), ptr %i.aa, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !332
  store ptr %i.aa, ptr %11, align 8, !tbaa !334
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 1528
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !336
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !357
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1160
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef signext i8 %i.ai(ptr noundef nonnull align 8 dereferenceable(536) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %10, ptr nofree noundef nonnull align 8 dereferenceable(8) %11, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d) #25
  %i.ak = load ptr, ptr %11, align 8, !tbaa !334  ; 3 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZN4llvm4bolt13MCPlusBuilder19InstructionIteratorD2Ev.exit, label %_ZNKSt14default_deleteIN4llvm4bolt13MCPlusBuilder19InstructionIterator4ImplEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN4llvm4bolt13MCPlusBuilder19InstructionIterator4ImplEEclEPS4_.exit.i.i: ; preds = %bb.c
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) #25, !inline_history !4
  br label %_ZN4llvm4bolt13MCPlusBuilder19InstructionIteratorD2Ev.exit

_ZN4llvm4bolt13MCPlusBuilder19InstructionIteratorD2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN4llvm4bolt13MCPlusBuilder19InstructionIterator4ImplEEclEPS4_.exit.i.i
  %i.ao = load ptr, ptr %10, align 8, !tbaa !334  ; 3 uses
  %.not.i.i77 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i77, label %_ZN4llvm4bolt13MCPlusBuilder19InstructionIteratorD2Ev.exit79, label %_ZNKSt14default_deleteIN4llvm4bolt13MCPlusBuilder19InstructionIterator4ImplEEclEPS4_.exit.i.i78

_ZNKSt14default_deleteIN4llvm4bolt13MCPlusBuilder19InstructionIterator4ImplEEclEPS4_.exit.i.i78: ; preds = %_ZN4llvm4bolt13MCPlusBuilder19InstructionIteratorD2Ev.exit
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) #25, !inline_history !4
  br label %_ZN4llvm4bolt13MCPlusBuilder19InstructionIteratorD2Ev.exit79

_ZN4llvm4bolt13MCPlusBuilder19InstructionIteratorD2Ev.exit79: ; preds = %_ZN4llvm4bolt13MCPlusBuilder19InstructionIteratorD2Ev.exit, %_ZNKSt14default_deleteIN4llvm4bolt13MCPlusBuilder19InstructionIterator4ImplEEclEPS4_.exit.i.i78
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !329
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder19InstructionIteratorD2Ev.exit79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

bb.e:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder19InstructionIteratorD2Ev.exit79
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts9VerbosityE, i64 120), align 8, !tbaa !362
  %.not67 = icmp eq i32 %i.at, 0
  br i1 %.not67, label %_ZN4llvm11raw_ostreamlsEPKc.exit130, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #25 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !101
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !102 ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp ult i64 %i.bb, 17
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef nonnull @.str.75, i64 noundef 17) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ay, ptr noundef nonnull align 1 dereferenceable(17) @.str.75, i64 17, i1 false)
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !102
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 17
  store ptr %i.bf, ptr %i.ax, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.bd, %bb.g ], [ %i.au, %bb.h ]
  %i.bg = sext i8 %i.aj to i64
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.bh) #25 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !101
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !102 ; 2 uses
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp ult i64 %i.bp, 2
  br i1 %i.bq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.br = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull @.str.68, i64 noundef 2) #25 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit82

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i16 8236, ptr %i.bm, align 1
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !102
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2 ; 2 uses
  store ptr %i.bt, ptr %i.bl, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit82

_ZN4llvm11raw_ostreamlsEPKc.exit82:               ; preds = %bb.i, %bb.j
  %i.bu = phi ptr [ %.pre, %bb.i ], [ %i.bt, %bb.j ] ; 2 uses
  %.0.i.i81 = phi ptr [ %i.br, %bb.i ], [ %i.bi, %bb.j ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i81, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !101
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = icmp ult i64 %i.bz, 10
  br i1 %i.ca, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit82
  %i.cb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i81, ptr noundef nonnull @.str.76, i64 noundef 10) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit85
end_hunk_0
begin_hunk_1_@_ZNK4llvm4bolt21IndirectCallPromotion27maybeGetHotJumpTableTargetsERNS0_16BinaryBasicBlockERNS_6MCInstERPS4_PKNS0_9JumpTableE:bb.a
bb.bv:                                            ; preds = %bb.bu
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.145) #30
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.bu
  %i.pv = ashr exact i64 %i.pt, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.pv, i64 1)
  %i.pw = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.pv ; 2 uses
  %i.px = icmp ult i64 %i.pw, %i.pv
  %i.py = call i64 @llvm.umin.i64(i64 %i.pw, i64 576460752303423487)
  %i.pz = select i1 %i.px, i64 576460752303423487, i64 %i.py ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.pz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.qa = shl nuw nsw i64 %i.pz, 4
  %i.qb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qa) #28 ; 5 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 %i.pt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qc, ptr noundef nonnull align 8 dereferenceable(16) %i.pq, i64 16, i1 false)
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0175.3, %.sroa.15.3
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.qe, %.lr.ph.i.i.i.i.i.i.i ], [ %i.qb, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.qd, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0175.3, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !831
  %i.qd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.qd, %.sroa.15.3
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !794

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.qb, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.qe, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.0175.3, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.3, i64 noundef %i.pt) #26
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.bw, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  %i.qf = getelementptr inbounds nuw [16 x i8], ptr %i.qb, i64 %i.pz
  br label %_ZNSt20back_insert_iteratorISt6vectorISt4pairImmESaIS2_EEEaSERKS2_.exit.i

_ZNSt20back_insert_iteratorISt6vectorISt4pairImmESaIS2_EEEaSERKS2_.exit.i: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.bt
  %.sroa.15.4 = phi ptr [ %i.qf, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.15.3, %bb.bt ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %i.pp, %bb.bt ]
  %.sroa.0175.4 = phi ptr [ %i.qb, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.0175.3, %bb.bt ] ; 5 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 16 ; 5 uses
  %i.qg = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.02.06.i) #27 ; 2 uses
  %.not.i155 = icmp eq ptr %i.qg, %i.kk
  br i1 %.not.i155, label %_ZNSt11__copy_moveILb0ELb0ESt26bidirectional_iterator_tagE8__copy_mIN4llvm15mapped_iteratorISt17_Rb_tree_iteratorISt4pairIKPNS3_8MCSymbolES6_ImmEEEZNS3_17make_second_rangeIRSt3mapIS8_SA_St4lessIS8_ESaISB_EEEEDaOT_EUlRSB_E_RSA_EESt20back_insert_iteratorISt6vectorISA_SaISA_EEEEET0_SK_SK_SV_.exit, label %.lr.ph.i, !llvm.loop !795

_ZNSt11__copy_moveILb0ELb0ESt26bidirectional_iterator_tagE8__copy_mIN4llvm15mapped_iteratorISt17_Rb_tree_iteratorISt4pairIKPNS3_8MCSymbolES6_ImmEEEZNS3_17make_second_rangeIRSt3mapIS8_SA_St4lessIS8_ESaISB_EEEEDaOT_EUlRSB_E_RSA_EESt20back_insert_iteratorISt6vectorISA_SaISA_EEEEET0_SK_SK_SV_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorISt4pairImmESaIS2_EEEaSERKS2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %.not.i.i.i.i = icmp eq ptr %.sroa.9.1, %.sroa.0175.4
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEEEEEEvOT_.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt11__copy_moveILb0ELb0ESt26bidirectional_iterator_tagE8__copy_mIN4llvm15mapped_iteratorISt17_Rb_tree_iteratorISt4pairIKPNS3_8MCSymbolES6_ImmEEEZNS3_17make_second_rangeIRSt3mapIS8_SA_St4lessIS8_ESaISB_EEEEDaOT_EUlRSB_E_RSA_EESt20back_insert_iteratorISt6vectorISA_SaISA_EEEEET0_SK_SK_SV_.exit
  %i.qh = ptrtoint ptr %.sroa.0175.4 to i64       ; 3 uses
  %i.qi = ptrtoint ptr %.sroa.9.1 to i64          ; 3 uses
  store i64 %i.qi, ptr %6, align 8, !tbaa !397
  store i64 %i.qh, ptr %7, align 8, !tbaa !397
  %i.qj = sub i64 %i.qi, %i.qh
  %i.qk = ashr exact i64 %i.qj, 4
  %i.ql = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.qk, i1 true)
  %i.qm = shl nuw nsw i64 %i.ql, 1
  %i.qn = sub nuw nsw i64 126, %i.qm
  call void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %7, i64 noundef %i.qn)
  store i64 %i.qi, ptr %8, align 8, !tbaa !397
  store i64 %i.qh, ptr %9, align 8, !tbaa !397
  call void @_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %8, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %9)
  br label %_ZN4llvm4sortINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEEEEEEvOT_.exit

_ZN4llvm4sortINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEEEEEEvOT_.exit: ; preds = %_ZNSt11__copy_moveILb0ELb0ESt26bidirectional_iterator_tagE8__copy_mIN4llvm15mapped_iteratorISt17_Rb_tree_iteratorISt4pairIKPNS3_8MCSymbolES6_ImmEEEZNS3_17make_second_rangeIRSt3mapIS8_SA_St4lessIS8_ESaISB_EEEEDaOT_EUlRSB_E_RSA_EESt20back_insert_iteratorISt6vectorISA_SaISA_EEEEET0_SK_SK_SV_.exit.thread, %_ZNSt11__copy_moveILb0ELb0ESt26bidirectional_iterator_tagE8__copy_mIN4llvm15mapped_iteratorISt17_Rb_tree_iteratorISt4pairIKPNS3_8MCSymbolES6_ImmEEEZNS3_17make_second_rangeIRSt3mapIS8_SA_St4lessIS8_ESaISB_EEEEDaOT_EUlRSB_E_RSA_EESt20back_insert_iteratorISt6vectorISA_SaISA_EEEEET0_SK_SK_SV_.exit, %bb.bx
  %.sroa.0175.5243 = phi ptr [ null, %_ZNSt11__copy_moveILb0ELb0ESt26bidirectional_iterator_tagE8__copy_mIN4llvm15mapped_iteratorISt17_Rb_tree_iteratorISt4pairIKPNS3_8MCSymbolES6_ImmEEEZNS3_17make_second_rangeIRSt3mapIS8_SA_St4lessIS8_ESaISB_EEEEDaOT_EUlRSB_E_RSA_EESt20back_insert_iteratorISt6vectorISA_SaISA_EEEEET0_SK_SK_SV_.exit.thread ], [ %.sroa.0175.4, %_ZNSt11__copy_moveILb0ELb0ESt26bidirectional_iterator_tagE8__copy_mIN4llvm15mapped_iteratorISt17_Rb_tree_iteratorISt4pairIKPNS3_8MCSymbolES6_ImmEEEZNS3_17make_second_rangeIRSt3mapIS8_SA_St4lessIS8_ESaISB_EEEEDaOT_EUlRSB_E_RSA_EESt20back_insert_iteratorISt6vectorISA_SaISA_EEEEET0_SK_SK_SV_.exit ], [ %.sroa.0175.4, %bb.bx ]
  %.sroa.9.2242 = phi ptr [ null, %_ZNSt11__copy_moveILb0ELb0ESt26bidirectional_iterator_tagE8__copy_mIN4llvm15mapped_iteratorISt17_Rb_tree_iteratorISt4pairIKPNS3_8MCSymbolES6_ImmEEEZNS3_17make_second_rangeIRSt3mapIS8_SA_St4lessIS8_ESaISB_EEEEDaOT_EUlRSB_E_RSA_EESt20back_insert_iteratorISt6vectorISA_SaISA_EEEEET0_SK_SK_SV_.exit.thread ], [ %.sroa.9.1, %_ZNSt11__copy_moveILb0ELb0ESt26bidirectional_iterator_tagE8__copy_mIN4llvm15mapped_iteratorISt17_Rb_tree_iteratorISt4pairIKPNS3_8MCSymbolES6_ImmEEEZNS3_17make_second_rangeIRSt3mapIS8_SA_St4lessIS8_ESaISB_EEEEDaOT_EUlRSB_E_RSA_EESt20back_insert_iteratorISt6vectorISA_SaISA_EEEEET0_SK_SK_SV_.exit ], [ %.sroa.9.1, %bb.bx ]
  %.sroa.15.5241 = phi ptr [ null, %_ZNSt11__copy_moveILb0ELb0ESt26bidirectional_iterator_tagE8__copy_mIN4llvm15mapped_iteratorISt17_Rb_tree_iteratorISt4pairIKPNS3_8MCSymbolES6_ImmEEEZNS3_17make_second_rangeIRSt3mapIS8_SA_St4lessIS8_ESaISB_EEEEDaOT_EUlRSB_E_RSA_EESt20back_insert_iteratorISt6vectorISA_SaISA_EEEEET0_SK_SK_SV_.exit.thread ], [ %.sroa.15.4, %_ZNSt11__copy_moveILb0ELb0ESt26bidirectional_iterator_tagE8__copy_mIN4llvm15mapped_iteratorISt17_Rb_tree_iteratorISt4pairIKPNS3_8MCSymbolES6_ImmEEEZNS3_17make_second_rangeIRSt3mapIS8_SA_St4lessIS8_ESaISB_EEEEDaOT_EUlRSB_E_RSA_EESt20back_insert_iteratorISt6vectorISA_SaISA_EEEEET0_SK_SK_SV_.exit ], [ %.sroa.15.4, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.qo = load i32, ptr %i.f, align 4, !tbaa !301
  %i.qp = trunc i32 %i.qo to i16
  %i.qq = load ptr, ptr %i.v, align 8, !tbaa !260 ; 2 uses
  %i.qr = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.qq, ptr nonnull @.str.84, i64 10)
  %i.qs = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsItEERT_RNS_6MCInstEjt(ptr noundef nonnull align 8 dereferenceable(536) %i.qq, ptr noundef nonnull align 8 dereferenceable(128) %3, i32 noundef %i.qr, i16 noundef zeroext 0)
  store i16 %i.qp, ptr %i.qs, align 2, !tbaa !398
  %i.qt = load ptr, ptr %i.b, align 8, !tbaa !329
  store ptr %i.qt, ptr %4, align 8, !tbaa !329
  store ptr %.sroa.0175.5243, ptr %0, align 8, !tbaa !400
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.2242, ptr %i.qu, align 8, !tbaa !832
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.15.5241, ptr %i.qv, align 8, !tbaa !401
  br label %bb.by

bb.by:                                            ; preds = %_ZN4llvm4bolt14BinaryFunction21getBasicBlockForLabelEPKNS_8MCSymbolE.exit.thread, %bb.bn, %bb.bj, %bb.ay, %_ZN4llvm4sortINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEEEEEEvOT_.exit
  %i.qw = load ptr, ptr %i.kl, align 8, !tbaa !261
  call void @_ZNSt8_Rb_treeIPN4llvm8MCSymbolESt4pairIKS2_S3_ImmEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.qw)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %_ZN4llvm11raw_ostreamlsEPKc.exit134
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit:        ; preds = %bb.d, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #5

declare void @_ZNK4llvm4bolt13BinaryContext16printInstructionERNS_11raw_ostreamERKNS_6MCInstEmPKNS0_14BinaryFunctionEbbbNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(2268), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef byval(%"class.llvm::StringRef") align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS0_19MemoryAccessProfileEEENS_7ErrorOrIRT_EERNS_6MCInstENS_9StringRefE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr.619") align 8 %0, ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr %3, i64 %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #25
  switch i32 %i.b, label %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i [
    i32 11, label %bb.b
    i32 35, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #30
  unreachable

_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %3, i64 %4) #25
  %i.e = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr %3, i64 %4, i32 noundef %i.d) #25 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !322
  br i1 %i.f, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread, label %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i

_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i: ; preds = %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i
  %i.h = sext i32 %i.e to i64                     ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !323
  %.pre8.i = zext i32 %.pre.i to i64
  %i.i = icmp eq i64 %i.h, %.pre8.i
  br i1 %i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit

_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread: ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i, %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i
  %i.j = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #25 ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8
  store i32 34, ptr %0, align 8, !tbaa !301
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !325
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS0_19MemoryAccessProfileEEENS_7ErrorOrIRT_EERNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit: ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i
  %i.o = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !327
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !59
  %i.s = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #25 ; 0 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.r to i32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  %i.t = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.sroa.0.0.extract.trunc) #25, !noalias !835
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !alias.scope !835
  %i.x = or i8 %i.w, 1
  store i8 %i.x, ptr %i.v, align 8, !alias.scope !835
  store i32 34, ptr %0, align 8, !tbaa !301, !alias.scope !835
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !325, !alias.scope !835
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS0_19MemoryAccessProfileEEENS_7ErrorOrIRT_EERNS_6MCInstEj.exit

bb.e:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !318, !noalias !835 ; 5 uses
  %.01317.i.i.i.i.i = add i32 %i.z, -1            ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42, !noalias !835 ; 4 uses
  %5 = zext i32 %i.z to i64                       ; 2 uses
  %i.ac = zext nneg i32 %.01317.i.i.i.i.i to i64  ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !312, !noalias !835
  %i.af = icmp eq i8 %i.ae, 6
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !835
  %i.ai = icmp eq ptr %i.ah, null
  %i.aj = select i1 %i.af, i1 %i.ai, i1 false
  br i1 %i.aj, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.e, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.ac, %bb.e ] ; 2 uses
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i ], [ %5, %bb.e ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.ak = icmp sgt i64 %indvars.iv.i.i, 0
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.a, -1 ; 2 uses
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !312, !noalias !835
  %i.an = icmp eq i8 %i.am, 6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !835
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false
  br i1 %i.ar, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.as = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.e
  %indvars.iv.i.lcssa.i.i = phi i64 [ %5, %bb.e ], [ %indvars.iv.next.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.e ], [ %i.as, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.z, %.01318.i.i.i.lcssa.i.i
  %i.at = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1
  %.not1324.i.i.i = icmp ult i32 %i.at, %i.z
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv.i.lcssa.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !66, !noalias !835 ; 2 uses
  %i.ax = lshr i64 %i.aw, 56
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %.not.i3.i.i = icmp eq i32 %.sroa.0.0.extract.trunc, %i.ay
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS0_19MemoryAccessProfileEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i.a, %.critedge.i.i.i ], [ %indvars.iv.i.lcssa.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i.a = add nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %lftr.wideiv.i.i.i = trunc i64 %indvars.iv.next.i.i.i.a to i32
  %exitcond.not.i.i.i = icmp ne i32 %i.z, %lftr.wideiv.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !66, !noalias !835 ; 2 uses
  %i.bc = lshr i64 %i.bb, 56
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %.not.i.i.i = icmp eq i32 %.sroa.0.0.extract.trunc, %i.bd
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS0_19MemoryAccessProfileEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS0_19MemoryAccessProfileEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.aw, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.bb, %.critedge.i.i.i ]
  %i.be = shl i64 %.lcssa.i.i, 8
  %i.bf = ashr exact i64 %i.be, 8
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 8, !alias.scope !835
  %i.bk = and i8 %i.bj, -2
  store i8 %i.bk, ptr %i.bi, align 8, !alias.scope !835
  store ptr %i.bh, ptr %0, align 8, !tbaa !377, !alias.scope !835
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS0_19MemoryAccessProfileEEENS_7ErrorOrIRT_EERNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS0_19MemoryAccessProfileEEENS_7ErrorOrIRT_EERNS_6MCInstEj.exit: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS0_19MemoryAccessProfileEEERT_RKNS_6MCInstEj.exit.i, %bb.d, %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIPN4llvm8MCSymbolESt4pairImmESt4lessIS2_ESaIS3_IKS2_S4_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !84     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.g = icmp ult ptr %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !262 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIPN4llvm8MCSymbolESt4pairImmESt4lessIS2_ESaIS3_IKS2_S4_EEE11lower_boundERS7_.exit, label %bb.b, !llvm.loop !836

_ZNSt3mapIPN4llvm8MCSymbolESt4pairImmESt4lessIS2_ESaIS3_IKS2_S4_EEE11lower_boundERS7_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIPN4llvm8MCSymbolESt4pairImmESt4lessIS2_ESaIS3_IKS2_S4_EEE11lower_boundERS7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !838
  %i.k = icmp ult ptr %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIPN4llvm8MCSymbolESt4pairIKS2_S3_ImmEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIPN4llvm8MCSymbolESt4pairImmESt4lessIS2_ESaIS3_IKS2_S4_EEE11lower_boundERS7_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIPN4llvm8MCSymbolESt4pairImmESt4lessIS2_ESaIS3_IKS2_S4_EEE11lower_boundERS7_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !84
  store ptr %i.n, ptr %i.m, align 8, !tbaa !838
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPN4llvm8MCSymbolESt4pairIKS2_S3_ImmEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !84
  %i.w = icmp ult ptr %i.t, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.x = phi i1 [ %i.w, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #25
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !385
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !385
  br label %_ZNSt8_Rb_treeIPN4llvm8MCSymbolESt4pairIKS2_S3_ImmEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 56) #26
  br label %_ZNSt8_Rb_treeIPN4llvm8MCSymbolESt4pairIKS2_S3_ImmEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeIPN4llvm8MCSymbolESt4pairIKS2_S3_ImmEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm4bolt21IndirectCallPromotion21findCallTargetSymbolsERSt6vectorINS1_8CallsiteESaIS3_EERmRNS0_16BinaryBasicBlockERNS_6MCInstERPSA_(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector.655") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %4, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %6) local_unnamed_addr #3 align 2 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::vector.570", align 8   ; 9 uses
  %9 = alloca %"class.std::vector.155", align 16  ; 16 uses
  %10 = alloca %"class.std::map.663", align 8     ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !258, !nonnull !39, !align !62 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !260
  %i.g = tail call noundef i64 @_ZNK4llvm4bolt13MCPlusBuilder12getJumpTableERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %5) #25 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !261  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1128 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.i.i.i, label %_ZNSt3mapImPN4llvm4bolt9JumpTableESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.i, %bb.a ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !59
  %i.m = icmp ult i64 %i.g, %i.l                  ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.m, ptr %.012.i.i.i.i.i, ptr %.0811.i.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.m, i64 16, i64 24
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !262 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapImPN4llvm4bolt9JumpTableESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZNSt3mapImPN4llvm4bolt9JumpTableESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.j, %bb.a ], [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !263
  %i.p = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.o
  br i1 %i.p, label %_ZN4llvm4bolt14BinaryFunction12getJumpTableERKNS_6MCInstE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapImPN4llvm4bolt9JumpTableESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i.i
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i.i.i) #27 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !266  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !267  ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !268
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !269
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !272
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !273
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.am = load i64, ptr %i.al, align 8, !tbaa !291
  %i.an = mul i64 %.sroa.speculated.i.i.i, %i.am  ; 2 uses
  %i.ao = add i64 %i.an, %i.s
  %i.ap = icmp ugt i64 %i.ao, %i.g
  br i1 %i.ap, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = icmp eq i64 %i.an, 0
  %i.ar = icmp eq i64 %i.s, %i.g
  %or.cond.i.i = and i1 %i.ar, %i.aq
  br i1 %or.cond.i.i, label %select.unfold, label %_ZN4llvm4bolt14BinaryFunction12getJumpTableERKNS_6MCInstE.exit

_ZN4llvm4bolt14BinaryFunction12getJumpTableERKNS_6MCInstE.exit: ; preds = %bb.c, %_ZNSt3mapImPN4llvm4bolt9JumpTableESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = load i64, ptr %3, align 8, !tbaa !59
  %.not303 = icmp eq i64 %i.as, 0
  br i1 %.not303, label %.critedge.loopexit, label %.lr.ph299

.lr.ph299:                                        ; preds = %_ZN4llvm4bolt14BinaryFunction12getJumpTableERKNS_6MCInstE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph299, %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE12emplace_backIJRS3_iEEERS4_DpOT_.exit
  %i.av = phi ptr [ null, %.lr.ph299 ], [ %i.bw, %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE12emplace_backIJRS3_iEEERS4_DpOT_.exit ] ; 5 uses
  %i.aw = phi ptr [ null, %.lr.ph299 ], [ %i.bx, %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE12emplace_backIJRS3_iEEERS4_DpOT_.exit ] ; 4 uses
  %.081298 = phi i64 [ 0, %.lr.ph299 ], [ %i.bz, %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE12emplace_backIJRS3_iEEERS4_DpOT_.exit ] ; 2 uses
  %i.ax = phi ptr [ null, %.lr.ph299 ], [ %i.by, %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE12emplace_backIJRS3_iEEERS4_DpOT_.exit ] ; 7 uses
end_hunk_1
begin_hunk_2_@_ZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEm:bb.a
  %i.rr = getelementptr inbounds nuw i8, ptr %.0.i.i216, i64 24
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !101
  %i.rt = getelementptr inbounds nuw i8, ptr %.0.i.i216, i64 32 ; 3 uses
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !102 ; 2 uses
  %i.rv = ptrtoint ptr %i.rs to i64
  %i.rw = ptrtoint ptr %i.ru to i64
  %i.rx = sub i64 %i.rv, %i.rw
  %i.ry = icmp ult i64 %i.rx, 3
  br i1 %i.ry, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit220
  %i.rz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i216, ptr noundef nonnull @.str.102, i64 noundef 3) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit223

bb.bo:                                            ; preds = %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ru, ptr noundef nonnull align 1 dereferenceable(3) @.str.102, i64 3, i1 false)
  %i.sa = load ptr, ptr %i.rt, align 8, !tbaa !102
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 3
  store ptr %i.sb, ptr %i.rt, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit223

_ZN4llvm11raw_ostreamlsEPKc.exit223:              ; preds = %bb.bn, %bb.bo
  %.0.i.i222 = phi ptr [ %i.rz, %bb.bn ], [ %.0.i.i216, %bb.bo ]
  %i.sc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i222, i64 noundef %i.qu) #25 ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 24
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !101
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 32 ; 3 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !102 ; 2 uses
  %i.sh = ptrtoint ptr %i.se to i64
  %i.si = ptrtoint ptr %i.sg to i64
  %i.sj = sub i64 %i.sh, %i.si
  %i.sk = icmp ult i64 %i.sj, 4
  br i1 %i.sk, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit223
  %i.sl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.sc, ptr noundef nonnull @.str.89, i64 noundef 4) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit226

bb.bq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit223
  store i32 544106784, ptr %i.sg, align 1
  %i.sm = load ptr, ptr %i.sf, align 8, !tbaa !102
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 4
  store ptr %i.sn, ptr %i.sf, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit226

_ZN4llvm11raw_ostreamlsEPKc.exit226:              ; preds = %bb.bp, %bb.bq
  %.0.i.i225 = phi ptr [ %i.sl, %bb.bp ], [ %i.sc, %bb.bq ] ; 6 uses
  %i.so = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !643 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.sr = load i32, ptr %i.sq, align 8
  %i.ss = and i32 %i.sr, 4
  %.not.i.i227 = icmp eq i32 %i.ss, 0
  br i1 %.not.i.i227, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit235, label %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit232

_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit232: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit226
  %i.st = getelementptr inbounds i8, ptr %i.sp, i64 -8
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !379 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 24 ; 2 uses
  %i.sw = load i64, ptr %i.su, align 8, !tbaa !381 ; 5 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.0.i.i225, i64 24
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !101
  %i.sz = getelementptr inbounds nuw i8, ptr %.0.i.i225, i64 32 ; 3 uses
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !102 ; 2 uses
  %i.tb = ptrtoint ptr %i.sy to i64
  %i.tc = ptrtoint ptr %i.ta to i64
  %i.td = sub i64 %i.tb, %i.tc
  %i.te = icmp ugt i64 %i.sw, %i.td
  br i1 %i.te, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit232
  %i.tf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i225, ptr noundef nonnull %i.sv, i64 noundef %i.sw) #25
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit235

bb.bs:                                            ; preds = %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit232
  %.not.i233 = icmp eq i64 %i.sw, 0
  br i1 %.not.i233, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit235, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ta, ptr nonnull align 8 %i.sv, i64 %i.sw, i1 false)
  %i.tg = load ptr, ptr %i.sz, align 8, !tbaa !102
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.sw
  store ptr %i.th, ptr %i.sz, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit235

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit235:   ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit226, %bb.br, %bb.bs, %bb.bt
  %.0.i234 = phi ptr [ %i.tf, %bb.br ], [ %.0.i.i225, %bb.bt ], [ %.0.i.i225, %bb.bs ], [ %.0.i.i225, %_ZN4llvm11raw_ostreamlsEPKc.exit226 ] ; 4 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.0.i234, i64 24
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !101
  %i.tk = getelementptr inbounds nuw i8, ptr %.0.i234, i64 32 ; 3 uses
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !102 ; 2 uses
  %i.tm = ptrtoint ptr %i.tj to i64
  %i.tn = ptrtoint ptr %i.tl to i64
  %i.to = sub i64 %i.tm, %i.tn
  %i.tp = icmp ult i64 %i.to, 10
  br i1 %i.tp, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit235
  %i.tq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i234, ptr noundef nonnull @.str.103, i64 noundef 10) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit238

bb.bv:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.tl, ptr noundef nonnull align 1 dereferenceable(10) @.str.103, i64 10, i1 false)
  %i.tr = load ptr, ptr %i.tk, align 8, !tbaa !102
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 10
  store ptr %i.ts, ptr %i.tk, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit238

_ZN4llvm11raw_ostreamlsEPKc.exit238:              ; preds = %bb.bu, %bb.bv
  %.0.i.i237 = phi ptr [ %i.tq, %bb.bu ], [ %.0.i234, %bb.bv ]
  %i.tt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i237, i64 noundef %4) #25 ; 4 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 24
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !101
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tt, i64 32 ; 3 uses
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !102 ; 2 uses
  %i.ty = ptrtoint ptr %i.tv to i64
  %i.tz = ptrtoint ptr %i.tx to i64
  %i.ua = sub i64 %i.ty, %i.tz
  %i.ub = icmp ult i64 %i.ua, 29
  br i1 %i.ub, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit238
  %i.uc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.tt, ptr noundef nonnull @.str.109, i64 noundef 29) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit241

bb.bx:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.tx, ptr noundef nonnull align 1 dereferenceable(29) @.str.109, i64 29, i1 false)
  %i.ud = load ptr, ptr %i.tw, align 8, !tbaa !102
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 29
  store ptr %i.ue, ptr %i.tw, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit241

_ZN4llvm11raw_ostreamlsEPKc.exit241:              ; preds = %bb.bw, %bb.bx
  %.0.i.i240 = phi ptr [ %i.uc, %bb.bw ], [ %i.tt, %bb.bx ] ; 5 uses
  store ptr @.str.69, ptr %11, align 8, !tbaa !112, !alias.scope !970
  %i.uf = getelementptr inbounds nuw i8, ptr %11, i64 8
  store double %i.ql, ptr %i.uf, align 8, !tbaa !113, !alias.scope !970
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %11, ptr %5, align 8, !tbaa !115
  %i.ug = ptrtoint ptr %5 to i64
  %i.uh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i240, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJdEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.ug) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ui = getelementptr inbounds nuw i8, ptr %.0.i.i240, i64 24
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !101
  %i.uk = getelementptr inbounds nuw i8, ptr %.0.i.i240, i64 32 ; 3 uses
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !102 ; 2 uses
  %i.um = ptrtoint ptr %i.uj to i64
  %i.un = ptrtoint ptr %i.ul to i64
  %i.uo = sub i64 %i.um, %i.un
  %i.up = icmp ult i64 %i.uo, 4
  br i1 %i.up, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit241
  %i.uq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i240, ptr noundef nonnull @.str.107, i64 noundef 4) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit244

bb.bz:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit241
  store i32 540811301, ptr %i.ul, align 1
  %i.ur = load ptr, ptr %i.uk, align 8, !tbaa !102
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 4
  store ptr %i.us, ptr %i.uk, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit244

_ZN4llvm11raw_ostreamlsEPKc.exit244:              ; preds = %bb.by, %bb.bz
  %.0.i.i243 = phi ptr [ %i.uq, %bb.by ], [ %.0.i.i240, %bb.bz ]
  %i.ut = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL22ICPMispredictThresholdE, i64 120), align 8, !tbaa !362
  %i.uu = zext i32 %i.ut to i64
  %i.uv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i243, i64 noundef %i.uu) #25 ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 24
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !101
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uv, i64 32 ; 3 uses
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !102 ; 2 uses
  %i.va = ptrtoint ptr %i.ux to i64
  %i.vb = ptrtoint ptr %i.uz to i64
  %i.vc = sub i64 %i.va, %i.vb
  %i.vd = icmp ult i64 %i.vc, 2
  br i1 %i.vd, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit244
  %i.ve = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.uv, ptr noundef nonnull @.str.108, i64 noundef 2) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit167

bb.cb:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit244
  store i16 2597, ptr %i.uz, align 1
  %i.vf = load ptr, ptr %i.uy, align 8, !tbaa !102
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 2
  store ptr %i.vg, ptr %i.uy, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit167

.critedge151:                                     ; preds = %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit", %bb.bi
  %.2129 = phi i64 [ %.1128.lcssa.ph424, %bb.bi ], [ %.0127.lcssa418, %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit" ] ; 3 uses
  %i.vh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL16ICPPeelForInlineE, i64 120), align 8, !range !38
  %i.vi = trunc nuw i8 %i.vh to i1
  %or.cond325 = select i1 %.not326, i1 %i.vi, i1 false
  %i.vj = icmp ne i64 %.2129, 0
  %or.cond375 = and i1 %or.cond325, %i.vj
  br i1 %or.cond375, label %.lr.ph369, label %.critedge151.thread

.lr.ph369:                                        ; preds = %.critedge151, %bb.cd
  %.0368 = phi i64 [ %i.vr, %bb.cd ], [ 0, %.critedge151 ] ; 4 uses
  %.3130367 = phi i64 [ %spec.select152, %bb.cd ], [ %.2129, %.critedge151 ] ; 2 uses
  %i.vk = load ptr, ptr %3, align 8, !tbaa !105
  %i.vl = getelementptr inbounds nuw [72 x i8], ptr %i.vk, i64 %.0368
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !94
  %i.vo = call noundef ptr @_ZN4llvm4bolt13BinaryContext20getFunctionForSymbolEPKNS_8MCSymbolEPm(ptr noundef nonnull align 8 dereferenceable(2268) %i.d, ptr noundef %i.vn, ptr noundef null) #25 ; 3 uses
  %.not145 = icmp eq ptr %i.vo, null
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  br i1 %.not145, label %.thread310, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph369
  %i.vp = call noundef zeroext i1 @_ZNK4llvm4bolt18BinaryFunctionPass14shouldOptimizeERKNS0_14BinaryFunctionE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(1360) %i.vo) #25
  br i1 %i.vp, label %bb.cd, label %.thread310

.thread310:                                       ; preds = %bb.cc, %.lr.ph369
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.critedge151.thread

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN4llvm4bolt15getInliningInfoERKNS0_14BinaryFunctionE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::bolt::InliningInfo") align 8 %12, ptr noundef nonnull align 8 dereferenceable(1360) %i.vo) #25
  %i.vq = load i8, ptr %12, align 8, !tbaa !973
  %.not330 = icmp ne i8 %i.vq, 0                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %spec.select152 = select i1 %.not330, i64 %.3130367, i64 %.0368 ; 2 uses
  %i.vr = add nuw i64 %.0368, 1                   ; 2 uses
  %i.vs = icmp ult i64 %i.vr, %.3130367
  %or.cond378 = select i1 %.not330, i1 %i.vs, i1 false
  br i1 %or.cond378, label %.lr.ph369, label %.critedge151.thread, !llvm.loop !968

.critedge151.thread:                              ; preds = %bb.cd, %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214", %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread", %.thread310, %.critedge151
  %.6133 = phi i64 [ %.2129, %.critedge151 ], [ %.1128340, %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214" ], [ %.0368, %.thread310 ], [ %.1128.lcssa.ph425, %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread" ], [ %spec.select152, %bb.cd ] ; 2 uses
  %i.vt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL12ICPFuncsListB5cxx11E, i64 120), align 8, !tbaa !974 ; 2 uses
  %i.vu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL12ICPFuncsListB5cxx11E, i64 128), align 8, !tbaa !974 ; 2 uses
  %i.vv = icmp eq ptr %i.vt, %i.vu
  br i1 %i.vv, label %_ZN4llvm11raw_ostreamlsEPKc.exit167, label %.preheader

bb.ce:                                            ; preds = %.preheader
  %i.vw = getelementptr inbounds nuw i8, ptr %.sroa.0248.0373, i64 32 ; 2 uses
  %.not331 = icmp eq ptr %i.vw, %i.vu
  br i1 %.not331, label %_ZN4llvm11raw_ostreamlsEPKc.exit167, label %.preheader

.preheader:                                       ; preds = %.critedge151.thread, %bb.ce
  %.sroa.0248.0373 = phi ptr [ %i.vw, %bb.ce ], [ %i.vt, %.critedge151.thread ] ; 2 uses
  %i.vx = call noundef zeroext i1 @_ZNK4llvm4bolt14BinaryFunction7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1360) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0248.0373)
  br i1 %i.vx, label %_ZN4llvm11raw_ostreamlsEPKc.exit167, label %bb.ce

_ZN4llvm11raw_ostreamlsEPKc.exit167:              ; preds = %.preheader, %bb.ce, %bb.e, %bb.r, %bb.s, %bb.ah, %bb.ay, %bb.az, %bb.bj, %bb.ca, %bb.cb, %.critedge151.thread, %bb.z, %bb.a
  %.11 = phi i64 [ 0, %bb.a ], [ 0, %bb.s ], [ 0, %bb.e ], [ 0, %bb.r ], [ 0, %bb.ay ], [ 0, %bb.z ], [ %.6133, %.critedge151.thread ], [ 0, %bb.bj ], [ 0, %bb.az ], [ 0, %bb.cb ], [ 0, %bb.ah ], [ 0, %bb.ca ], [ 0, %bb.ce ], [ %.6133, %.preheader ]
  ret i64 %.11
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr %2, i64 %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #25
  switch i32 %i.b, label %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i [
    i32 11, label %bb.b
    i32 35, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #30
  unreachable

_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %2, i64 %3) #25
  %i.e = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr %2, i64 %3, i32 noundef %i.d) #25 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !322
  br i1 %i.f, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread, label %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i

_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i: ; preds = %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i
  %i.h = sext i32 %i.e to i64                     ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !323
  %.pre8.i = zext i32 %.pre.i to i64
  %i.i = icmp eq i64 %i.h, %.pre8.i
  br i1 %i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit

_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread: ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i, %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i
  %i.j = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #25 ; 0 uses
  br label %bb.d

_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit: ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i
  %i.k = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !327
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !59
  %i.o = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #25 ; 0 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.n to i32
  %i.p = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %.sroa.0.0.extract.trunc) #25
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread, %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit
  %.0 = phi i1 [ %i.p, %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit ], [ false, %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK4llvm4bolt18BinaryFunctionPass14shouldOptimizeERKNS0_14BinaryFunctionE(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 8 dereferenceable(1360)) unnamed_addr #5

declare void @_ZN4llvm4bolt15getInliningInfoERKNS0_14BinaryFunctionE(ptr dead_on_unwind writable sret(%"struct.llvm::bolt::InliningInfo") align 8, ptr noundef nonnull align 8 dereferenceable(1360)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm4bolt14BinaryFunction7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42, !noalias !977 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !318, !noalias !977 ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i ; 2 uses
  %.not66.i = icmp eq i32 %i.d, 0
  br i1 %.not66.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %1, align 8
  %i.i = load i64, ptr %i.g, align 8
  %.fr3 = freeze i64 %i.i                         ; 3 uses
  %.not.i.i45.i = icmp eq i64 %.fr3, 0
  br i1 %.not.i.i45.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %.critedge.i.us
  %.02167.i.us = phi ptr [ %i.q, %.critedge.i.us ], [ %i.b, %.lr.ph.i ] ; 2 uses
  %i.j = load ptr, ptr %.02167.i.us, align 8, !tbaa !84, !noalias !977 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !noalias !977
  %i.m = and i32 %i.l, 4
  %.not.i.i.us = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.us, label %_ZNK4llvm4bolt14BinaryFunction11forEachNameIZNKS1_7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlNS_9StringRefEE_EESt8optionalISB_ET_.exit, label %_ZNK4llvm8MCSymbol7getNameEv.exit.i.us

_ZNK4llvm8MCSymbol7getNameEv.exit.i.us:           ; preds = %.lr.ph.i.split.us
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !379, !noalias !977
  %i.p = load i64, ptr %i.o, align 8, !tbaa !381, !noalias !977
  %.not.i.i.i.us = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.us, label %_ZNK4llvm4bolt14BinaryFunction11forEachNameIZNKS1_7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlNS_9StringRefEE_EESt8optionalISB_ET_.exit, label %.critedge.i.us

.critedge.i.us:                                   ; preds = %_ZNK4llvm8MCSymbol7getNameEv.exit.i.us
  %i.q = getelementptr inbounds nuw i8, ptr %.02167.i.us, i64 8 ; 2 uses
  %.not.i.us = icmp eq ptr %i.q, %i.f
  br i1 %.not.i.us, label %._crit_edge.i, label %.lr.ph.i.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %.critedge.i
  %.02167.i = phi ptr [ %i.aa, %.critedge.i ], [ %i.b, %.lr.ph.i ] ; 2 uses
  %i.r = load ptr, ptr %.02167.i, align 8, !tbaa !84, !noalias !977 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !noalias !977
  %i.u = and i32 %i.t, 4
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %.critedge.i, label %_ZNK4llvm8MCSymbol7getNameEv.exit.i

_ZNK4llvm8MCSymbol7getNameEv.exit.i:              ; preds = %.lr.ph.i.split
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !379, !noalias !977 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !381, !noalias !977
  %.not.i.i.i = icmp eq i64 %i.x, %.fr3
  br i1 %.not.i.i.i, label %_ZZNK4llvm4bolt14BinaryFunction7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlNS_9StringRefEE_clESA_.exit.i, label %.critedge.i

_ZZNK4llvm4bolt14BinaryFunction7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlNS_9StringRefEE_clESA_.exit.i: ; preds = %_ZNK4llvm8MCSymbol7getNameEv.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.y, ptr %i.h, i64 %.fr3), !noalias !977
  %i.z = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.z, label %_ZNK4llvm4bolt14BinaryFunction11forEachNameIZNKS1_7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlNS_9StringRefEE_EESt8optionalISB_ET_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i.split, %_ZZNK4llvm4bolt14BinaryFunction7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlNS_9StringRefEE_clESA_.exit.i, %_ZNK4llvm8MCSymbol7getNameEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.02167.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, %i.f
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.split

._crit_edge.i:                                    ; preds = %.critedge.i, %.critedge.i.us, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42, !noalias !977 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !318, !noalias !977 ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %.idx73.i = shl nuw nsw i64 %i.af, 5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx73.i ; 2 uses
  %.not2368.i = icmp eq i32 %i.ae, 0
  br i1 %.not2368.i, label %_ZNK4llvm4bolt14BinaryFunction11forEachNameIZNKS1_7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlNS_9StringRefEE_EESt8optionalISB_ET_.exit, label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %._crit_edge.i
  %i.ah = load ptr, ptr %1, align 8, !tbaa !76, !noalias !977
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !391, !noalias !977
  %.fr4 = freeze i64 %i.aj                        ; 3 uses
  %i.ak = icmp eq i64 %.fr4, 0
  br i1 %i.ak, label %.lr.ph71.i.split.us, label %.lr.ph71.i.split

.lr.ph71.i.split.us:                              ; preds = %.lr.ph71.i, %.lr.ph71.i.split.us
  %.069.i.us = phi ptr [ %i.an, %.lr.ph71.i.split.us ], [ %i.ac, %.lr.ph71.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.069.i.us, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !391, !noalias !977
  %.not.i.i32.i.us = icmp eq i64 %i.am, 0         ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.069.i.us, i64 32 ; 2 uses
  %.not23.i.us = icmp eq ptr %i.an, %i.ag
  %or.cond = select i1 %.not.i.i32.i.us, i1 true, i1 %.not23.i.us
  br i1 %or.cond, label %_ZNK4llvm4bolt14BinaryFunction11forEachNameIZNKS1_7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlNS_9StringRefEE_EESt8optionalISB_ET_.exit, label %.lr.ph71.i.split.us

.lr.ph71.i.split:                                 ; preds = %.lr.ph71.i, %.critedge25.i
  %.069.i = phi ptr [ %i.as, %.critedge25.i ], [ %i.ac, %.lr.ph71.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.069.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !391, !noalias !977
  %.not.i.i32.i = icmp eq i64 %i.ap, %.fr4
  br i1 %.not.i.i32.i, label %_ZZNK4llvm4bolt14BinaryFunction7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlNS_9StringRefEE_clESA_.exit35.i, label %.critedge25.i

_ZZNK4llvm4bolt14BinaryFunction7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlNS_9StringRefEE_clESA_.exit35.i: ; preds = %.lr.ph71.i.split
  %i.aq = load ptr, ptr %.069.i, align 8, !tbaa !76, !noalias !977
  %bcmp.i.i34.i = tail call i32 @bcmp(ptr %i.aq, ptr %i.ah, i64 %.fr4), !noalias !977
  %i.ar = icmp eq i32 %bcmp.i.i34.i, 0
  br i1 %i.ar, label %_ZNK4llvm4bolt14BinaryFunction11forEachNameIZNKS1_7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlNS_9StringRefEE_EESt8optionalISB_ET_.exit, label %.critedge25.i

.critedge25.i:                                    ; preds = %_ZZNK4llvm4bolt14BinaryFunction7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlNS_9StringRefEE_clESA_.exit35.i, %.lr.ph71.i.split
  %i.as = getelementptr inbounds nuw i8, ptr %.069.i, i64 32 ; 2 uses
  %.not23.i = icmp eq ptr %i.as, %i.ag
  br i1 %.not23.i, label %_ZNK4llvm4bolt14BinaryFunction11forEachNameIZNKS1_7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlNS_9StringRefEE_EESt8optionalISB_ET_.exit, label %.lr.ph71.i.split

_ZNK4llvm4bolt14BinaryFunction11forEachNameIZNKS1_7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlNS_9StringRefEE_EESt8optionalISB_ET_.exit: ; preds = %_ZZNK4llvm4bolt14BinaryFunction7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlNS_9StringRefEE_clESA_.exit.i, %_ZNK4llvm8MCSymbol7getNameEv.exit.i.us, %.lr.ph.i.split.us, %.critedge25.i, %_ZZNK4llvm4bolt14BinaryFunction7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlNS_9StringRefEE_clESA_.exit35.i, %.lr.ph71.i.split.us, %._crit_edge.i
  %.sink.i = phi i1 [ true, %_ZNK4llvm8MCSymbol7getNameEv.exit.i.us ], [ false, %._crit_edge.i ], [ %.not.i.i32.i.us, %.lr.ph71.i.split.us ], [ true, %_ZZNK4llvm4bolt14BinaryFunction7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlNS_9StringRefEE_clESA_.exit35.i ], [ false, %.critedge25.i ], [ true, %.lr.ph.i.split.us ], [ true, %_ZZNK4llvm4bolt14BinaryFunction7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlNS_9StringRefEE_clESA_.exit.i ]
  ret i1 %.sink.i
end_hunk_2
begin_hunk_3_@_ZN4llvm4bolt21IndirectCallPromotion14runOnFunctionsERNS0_13BinaryContextE:bb.a

bb.ec:                                            ; preds = %bb.ea
  %i.ahg = load i64, ptr %i.lv, align 8, !tbaa !1075
  %i.ahh = add i64 %i.ahg, 1
  store i64 %i.ahh, ptr %i.lv, align 8, !tbaa !1075
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  call void @_ZNK4llvm4bolt21IndirectCallPromotion14getCallTargetsERNS0_16BinaryBasicBlockERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.155") align 8 %22, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(192) %i.adv, ptr noundef nonnull align 8 dereferenceable(128) %i.aed)
  %i.ahi = load ptr, ptr %22, align 8, !tbaa !97  ; 2 uses
  %i.ahj = load ptr, ptr %i.lx, align 8, !tbaa !97 ; 2 uses
  %.not805944 = icmp eq ptr %i.ahi, %i.ahj
  br i1 %.not805944, label %._crit_edge949, label %.lr.ph948

._crit_edge949:                                   ; preds = %.lr.ph948, %bb.ed
  %.0219.lcssa = phi i64 [ 0, %bb.ed ], [ %i.aho, %.lr.ph948 ] ; 8 uses
  %i.ahk = select i1 %i.agl, i64 0, i64 %.0219.lcssa
  %.2227 = add i64 %i.ahk, %.1226954
  %i.ahl = select i1 %i.agl, i64 %.0219.lcssa, i64 0
  %.2223 = add i64 %i.ahl, %.1222955
  br i1 %i.agl, label %bb.ee, label %bb.fj

.lr.ph948:                                        ; preds = %bb.ed, %.lr.ph948
  %.0219946 = phi i64 [ %i.aho, %.lr.ph948 ], [ 0, %bb.ed ]
  %.sroa.0638.0945 = phi ptr [ %i.ahp, %.lr.ph948 ], [ %i.ahi, %bb.ed ] ; 2 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %.sroa.0638.0945, i64 40
  %i.ahn = load i64, ptr %i.ahm, align 8, !tbaa !106
  %i.aho = add i64 %i.ahn, %.0219946              ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %.sroa.0638.0945, i64 72 ; 2 uses
  %.not805 = icmp eq ptr %i.ahp, %i.ahj
  br i1 %.not805, label %._crit_edge949, label %.lr.ph948

bb.ee:                                            ; preds = %._crit_edge949
  %i.ahq = call noundef nonnull align 8 dereferenceable(130) ptr @_ZN4llvm4bolt19DataflowInfoManager19getLivenessAnalysisEv(ptr noundef nonnull align 8 dereferenceable(122) %21) #25 ; 10 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 96
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !1160, !noalias !1161 ; 3 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahq, i64 104
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !1162, !noalias !1161 ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahq, i64 116
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !1163, !noalias !1161 ; 4 uses
  %i.ahx = icmp eq i32 %i.ahw, 0
  br i1 %i.ahx, label %.loopexit.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ahy = add i32 %i.ahw, -1                     ; 2 uses
  %i.ahz = mul i64 %i.aee, -4658895280553007687   ; 2 uses
  %i.aia = lshr i64 %i.ahz, 31
  %i.aib = xor i64 %i.aia, %i.ahz
  %i.aic = trunc i64 %i.aib to i32
  %i.aid = and i32 %i.ahy, %i.aic                 ; 3 uses
  %i.aie = zext i32 %i.aid to i64                 ; 2 uses
  %i.aif = lshr i64 %i.aie, 5
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %i.aif
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !301, !noalias !1164
  %i.aii = and i32 %i.aid, 31
  %i.aij = lshr i32 %i.aih, %i.aii
  %i.aik = trunc i32 %i.aij to i1
  br i1 %i.aik, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !302

.lr.ph.i.i.i.i:                                   ; preds = %bb.ef, %bb.eg
  %i.ail = phi i64 [ %i.air, %bb.eg ], [ %i.aie, %bb.ef ]
  %.017.i.i.i.i = phi i32 [ %i.aiq, %bb.eg ], [ %i.aid, %bb.ef ]
  %i.aim = getelementptr inbounds nuw [24 x i8], ptr %i.ahs, i64 %i.ail ; 2 uses
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !329, !noalias !1164
  %i.aio = icmp eq ptr %i.aed, %i.ain
  br i1 %i.aio, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i, label %bb.eg, !prof !303

bb.eg:                                            ; preds = %.lr.ph.i.i.i.i
  %i.aip = add nuw i32 %.017.i.i.i.i, 1
  %i.aiq = and i32 %i.aip, %i.ahy                 ; 3 uses
  %i.air = zext i32 %i.aiq to i64                 ; 2 uses
  %i.ais = lshr i64 %i.air, 5
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %i.ais
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !301, !noalias !1164
  %i.aiv = and i32 %i.aiq, 31
  %i.aiw = lshr i32 %i.aiu, %i.aiv
  %i.aix = trunc i32 %i.aiw to i1
  br i1 %i.aix, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !304

.loopexit.i.i.i:                                  ; preds = %bb.eg, %bb.ef, %bb.ee
  %i.aiy = zext i32 %i.ahw to i64                 ; 2 uses
  %i.aiz = getelementptr inbounds nuw [24 x i8], ptr %i.ahs, i64 %i.aiy
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = zext i32 %i.ahw to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i ], [ %i.aiy, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.aim, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i ], [ %i.aiz, %.loopexit.i.i.i ] ; 3 uses
  %i.aja = getelementptr inbounds nuw [24 x i8], ptr %i.ahs, i64 %.pre-phi.i
  %i.ajb = icmp eq ptr %.lcssa.sink.i.i.i, %i.aja
  br i1 %i.ajb, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE14getStateBeforeERKNS_6MCInstE.exit.thread, label %bb.eh

bb.eh:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i
  %i.ajc = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %.sroa.0.0.copyload.i = load i8, ptr %i.ajc, align 8, !tbaa !1166, !noalias !1167
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 16
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !66, !noalias !1167 ; 7 uses
  %i.ajd = icmp eq i8 %.sroa.0.0.copyload.i, 0
  br i1 %i.ajd, label %bb.ei, label %bb.eq

bb.ei:                                            ; preds = %bb.eh
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ahq, i64 64
  %i.ajf = load i64, ptr %i.aje, align 8, !tbaa !1168, !noalias !1169
  %.not.not.i.i.i.i.i388 = icmp eq i64 %i.ajf, 0
  br i1 %.not.not.i.i.i.i.i388, label %bb.ej, label %bb.em

bb.ej:                                            ; preds = %bb.ei
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ahq, i64 56
  br label %bb.ek

bb.ek:                                            ; preds = %bb.el, %bb.ej
  %.sroa.06.0.in.i.i.i.i.i393 = phi ptr [ %i.ajg, %bb.ej ], [ %.sroa.06.0.i.i.i.i.i394, %bb.el ]
  %.sroa.06.0.i.i.i.i.i394 = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i393, align 8, !tbaa !687, !noalias !1169 ; 4 uses
  %.not.i.i.i.i.i395 = icmp eq ptr %.sroa.06.0.i.i.i.i.i394, null
  br i1 %.not.i.i.i.i.i395, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE14getStateBeforeERKNS_6MCInstE.exit.thread, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ajh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i394, i64 8
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !306, !noalias !1169
  %i.ajj = icmp eq ptr %.sroa.21.0.copyload.i, %i.aji
  br i1 %i.ajj, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %bb.ek, !llvm.loop !1031

bb.em:                                            ; preds = %bb.ei
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ahq, i64 40
  %i.ajl = ptrtoint ptr %.sroa.21.0.copyload.i to i64
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ahq, i64 48
  %i.ajn = load i64, ptr %i.ajm, align 8, !tbaa !1170, !noalias !1169 ; 2 uses
  %i.ajo = urem i64 %i.ajl, %i.ajn                ; 2 uses
  %i.ajp = load ptr, ptr %i.ajk, align 8, !tbaa !1171, !noalias !1169
  %i.ajq = getelementptr inbounds nuw [8 x i8], ptr %i.ajp, i64 %i.ajo
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !689, !noalias !1169 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ajr, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE14getStateBeforeERKNS_6MCInstE.exit.thread, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !687, !noalias !1169 ; 3 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 8
  %i.aju = load ptr, ptr %i.ajt, align 8, !tbaa !306, !noalias !1169
  %i.ajv = icmp eq ptr %.sroa.21.0.copyload.i, %i.aju
  br i1 %i.ajv, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i389

bb.eo:                                            ; preds = %bb.ep
  %i.ajw = icmp eq ptr %.sroa.21.0.copyload.i, %i.ajz
  br i1 %i.ajw, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i389, !llvm.loop !1032

.lr.ph.i.i.i.i.i.i.i389:                          ; preds = %bb.en, %bb.eo
  %.020.i.i.i.i.i.i.i390 = phi ptr [ %i.ajx, %bb.eo ], [ %i.ajs, %bb.en ]
  %i.ajx = load ptr, ptr %.020.i.i.i.i.i.i.i390, align 8, !tbaa !687, !noalias !1169 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.ajx, null
  br i1 %.not18.i.i.i.i.i.i.i, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE14getStateBeforeERKNS_6MCInstE.exit.thread, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i389
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 8
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !306, !noalias !1169 ; 2 uses
  %i.aka = ptrtoint ptr %i.ajz to i64
  %i.akb = urem i64 %i.aka, %i.ajn
  %.not19.i.i.i.i.i.i.i391 = icmp eq i64 %i.akb, %i.ajo
  br i1 %.not19.i.i.i.i.i.i.i391, label %bb.eo, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !1032

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.ep
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE14getStateBeforeERKNS_6MCInstE.exit.thread, !llvm.loop !1032

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i: ; preds = %bb.eo, %bb.el, %bb.en
  %.sroa.06.1.i.i.i.i.i392 = phi ptr [ %.sroa.06.0.i.i.i.i.i394, %bb.el ], [ %i.ajs, %bb.en ], [ %i.ajx, %bb.eo ]
  %i.akc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i392, i64 16
  br label %bb.et

bb.eq:                                            ; preds = %bb.eh
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ahq, i64 16
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !720, !noalias !1172, !nonnull !39, !align !62
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 1568
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !260, !noalias !1172 ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8 ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ahq, i64 12
  %i.akj = load i8, ptr %i.aki, align 4, !tbaa !1173, !range !38, !noalias !1172, !noundef !39
  %i.akk = trunc nuw i8 %i.akj to i1
  br i1 %i.akk, label %._crit_edge.i.i, label %bb.er

._crit_edge.i.i:                                  ; preds = %bb.eq
  %.0.pre.i.i = load i32, ptr %i.akh, align 8, !tbaa !301, !noalias !1172
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit.i

bb.er:                                            ; preds = %bb.eq
  %i.akl = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.akg, ptr nonnull @.str.165, i64 16), !noalias !1172 ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.akl to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.akh, align 8, !noalias !1172
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit.i

_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit.i: ; preds = %bb.er, %._crit_edge.i.i
  %.0.i.i547 = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.akl, %bb.er ] ; 3 uses
  %i.akm = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.akg, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.21.0.copyload.i, i32 noundef %.0.i.i547) #25, !noalias !1174
  br i1 %i.akm, label %bb.es, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE14getStateBeforeERKNS_6MCInstE.exit.thread

bb.es:                                            ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit.i
  %i.akn = getelementptr inbounds nuw i8, ptr %.sroa.21.0.copyload.i, i64 24
  %i.ako = load i32, ptr %i.akn, align 8, !tbaa !318, !noalias !1174 ; 5 uses
  %.01317.i.i.i.i.i.i = add i32 %i.ako, -1        ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %.sroa.21.0.copyload.i, i64 16
  %i.akq = load ptr, ptr %i.akp, align 8, !tbaa !42, !noalias !1174 ; 4 uses
  %35 = zext i32 %i.ako to i64                    ; 2 uses
  %i.akr = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.aks = getelementptr inbounds nuw [16 x i8], ptr %i.akq, i64 %i.akr ; 2 uses
  %i.akt = load i8, ptr %i.aks, align 8, !tbaa !312, !noalias !1174
  %i.aku = icmp eq i8 %i.akt, 6
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aks, i64 8
  %i.akw = load ptr, ptr %i.akv, align 8, !noalias !1174
  %i.akx = icmp eq ptr %i.akw, null
  %i.aky = select i1 %i.aku, i1 %i.akx, i1 false
  br i1 %i.aky, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.es, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.akr, %bb.es ] ; 2 uses
  %indvars.iv.i.i.i.a = phi i64 [ %indvars.iv.next.i.i.i.i, %.backedge.i.i.i.i.i.i ], [ %35, %bb.es ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.akz = icmp sgt i64 %indvars.iv.i.i.i, 0
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.a, -1 ; 2 uses
  call void @llvm.assume(i1 %i.akz)
  %i.ala = getelementptr inbounds nuw [16 x i8], ptr %i.akq, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.alb = load i8, ptr %i.ala, align 8, !tbaa !312, !noalias !1174
  %i.alc = icmp eq i8 %i.alb, 6
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ala, i64 8
  %i.ale = load ptr, ptr %i.ald, align 8, !noalias !1174
  %i.alf = icmp eq ptr %i.ale, null
  %i.alg = select i1 %i.alc, i1 %i.alf, i1 false
  br i1 %i.alg, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.alh = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.es
  %indvars.iv.i.lcssa.i.i.i = phi i64 [ %35, %bb.es ], [ %indvars.iv.next.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.es ], [ %i.alh, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.ako, %.01318.i.i.i.lcssa.i.i.i
  %i.ali = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1
  %.not1324.i.i.i.i = icmp ult i32 %i.ali, %i.ako
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.alj = getelementptr inbounds nuw [16 x i8], ptr %i.akq, i64 %indvars.iv.i.lcssa.i.i.i
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 8
  %i.all = load i64, ptr %i.alk, align 8, !tbaa !66, !noalias !1174 ; 2 uses
  %i.alm = lshr i64 %i.all, 56
  %i.aln = trunc nuw nsw i64 %i.alm to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i547, %i.aln
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.a, %.critedge.i.i.i.i ], [ %indvars.iv.i.lcssa.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i.a = add nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %lftr.wideiv.i.i.i.i = trunc i64 %indvars.iv.next.i.i.i.i.a to i32
  %exitcond.not.i.i.i.i = icmp ne i32 %i.ako, %lftr.wideiv.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.alo = getelementptr inbounds nuw [16 x i8], ptr %i.akq, i64 %indvars.iv.next.i.i.i.i.a
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 8
  %i.alq = load i64, ptr %i.alp, align 8, !tbaa !66, !noalias !1174 ; 2 uses
  %i.alr = lshr i64 %i.alq, 56
  %i.als = trunc nuw nsw i64 %i.alr to i32
  %.not.i.i.i.i548 = icmp eq i32 %.0.i.i547, %i.als
  br i1 %.not.i.i.i.i548, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.all, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.alq, %.critedge.i.i.i.i ]
  %i.alt = shl i64 %.lcssa.i.i.i, 8
  %i.alu = ashr exact i64 %i.alt, 8
  %i.alv = inttoptr i64 %i.alu to ptr
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 8
  br label %bb.et

bb.et:                                            ; preds = %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i
  %.sroa.0623.0 = phi ptr [ %i.akc, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i ], [ %i.alw, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i ]
  %i.alx = load ptr, ptr %i.lt, align 8, !tbaa !260 ; 2 uses
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !30
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 760
  %i.ama = load ptr, ptr %i.alz, align 8
  %i.amb = call noundef zeroext i16 %i.ama(ptr noundef nonnull align 8 dereferenceable(536) %i.alx) #25
  %i.amc = zext i16 %i.amb to i32                 ; 2 uses
  %i.amd = and i32 %i.amc, 63
  %i.ame = zext nneg i32 %i.amd to i64
  %i.amf = shl nuw i64 1, %i.ame
  %i.amg = lshr i32 %i.amc, 6
  %i.amh = zext nneg i32 %i.amg to i64
  %i.ami = load ptr, ptr %.sroa.0623.0, align 8, !tbaa !42
  %i.amj = getelementptr inbounds nuw [8 x i8], ptr %i.ami, i64 %i.amh
  %i.amk = load i64, ptr %i.amj, align 8, !tbaa !59
  %i.aml = and i64 %i.amf, %i.amk
  %.not806 = icmp eq i64 %i.aml, 0
  br i1 %.not806, label %bb.fj, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE14getStateBeforeERKNS_6MCInstE.exit.thread

_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE14getStateBeforeERKNS_6MCInstE.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i389, %bb.ek, %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit.i, %bb.em, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i, %bb.et
  %i.amm = phi ptr [ @.str.126, %bb.et ], [ @.str.127, %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit.i ], [ @.str.127, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i ], [ @.str.127, %..loopexit_crit_edge21.i.i.i.i.i.i.i ], [ @.str.127, %bb.ek ], [ @.str.127, %bb.em ], [ @.str.127, %.lr.ph.i.i.i.i.i.i.i389 ] ; 3 uses
  %i.amn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts9VerbosityE, i64 120), align 8, !tbaa !362
  %.not240 = icmp eq i32 %i.amn, 0
  br i1 %.not240, label %.critedge251, label %bb.eu

bb.eu:                                            ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE14getStateBeforeERKNS_6MCInstE.exit.thread
  %i.amo = load ptr, ptr %i.mp, align 8, !tbaa !642, !nonnull !39, !align !62 ; 4 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 24
  %i.amq = load ptr, ptr %i.amp, align 8, !tbaa !101
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amo, i64 32 ; 3 uses
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !102 ; 2 uses
  %i.amt = ptrtoint ptr %i.amq to i64
  %i.amu = ptrtoint ptr %i.ams to i64
  %i.amv = sub i64 %i.amt, %i.amu
  %i.amw = icmp ult i64 %i.amv, 25
  br i1 %i.amw, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.amx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.amo, ptr noundef nonnull @.str.88, i64 noundef 25) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit398

bb.ew:                                            ; preds = %bb.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.ams, ptr noundef nonnull align 1 dereferenceable(25) @.str.88, i64 25, i1 false)
  %i.amy = load ptr, ptr %i.amr, align 8, !tbaa !102
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 25
  store ptr %i.amz, ptr %i.amr, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit398

_ZN4llvm11raw_ostreamlsEPKc.exit398:              ; preds = %bb.ev, %bb.ew
  %.0.i.i397 = phi ptr [ %i.amx, %bb.ev ], [ %i.amo, %bb.ew ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZNK4llvm4bolt14BinaryFunction12getPrintNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(1360) %i.aca)
  %i.ana = load ptr, ptr %7, align 8, !tbaa !76
  %i.anb = load i64, ptr %i.nh, align 8, !tbaa !391
  %i.anc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i397, ptr noundef %i.ana, i64 noundef %i.anb) #25 ; 0 uses
  %i.and = load ptr, ptr %7, align 8, !tbaa !76   ; 2 uses
  %i.ane = icmp eq ptr %i.and, %i.ni
  br i1 %i.ane, label %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit398
  %i.anf = load i64, ptr %i.ni, align 8, !tbaa !66
  %i.ang = add i64 %i.anf, 1
  call void @_ZdlPvm(ptr noundef %i.and, i64 noundef %i.ang) #26
  br label %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit

_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit398, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.anh = getelementptr inbounds nuw i8, ptr %.0.i.i397, i64 24
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !101
  %i.anj = getelementptr inbounds nuw i8, ptr %.0.i.i397, i64 32 ; 3 uses
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !102 ; 2 uses
  %i.anl = ptrtoint ptr %i.ani to i64
  %i.anm = ptrtoint ptr %i.ank to i64
  %i.ann = sub i64 %i.anl, %i.anm
  %i.ano = icmp ult i64 %i.ann, 3
  br i1 %i.ano, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit
  %i.anp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i397, ptr noundef nonnull @.str.102, i64 noundef 3) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit401

bb.ey:                                            ; preds = %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ank, ptr noundef nonnull align 1 dereferenceable(3) @.str.102, i64 3, i1 false)
  %i.anq = load ptr, ptr %i.anj, align 8, !tbaa !102
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 3
  store ptr %i.anr, ptr %i.anj, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit401

_ZN4llvm11raw_ostreamlsEPKc.exit401:              ; preds = %bb.ex, %bb.ey
  %.0.i.i400 = phi ptr [ %i.anp, %bb.ex ], [ %.0.i.i397, %bb.ey ]
  %i.ans = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i400, i64 noundef %i.aec) #25 ; 4 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 24
  %i.anu = load ptr, ptr %i.ant, align 8, !tbaa !101
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ans, i64 32 ; 3 uses
  %i.anw = load ptr, ptr %i.anv, align 8, !tbaa !102 ; 2 uses
  %i.anx = ptrtoint ptr %i.anu to i64
  %i.any = ptrtoint ptr %i.anw to i64
  %i.anz = sub i64 %i.anx, %i.any
  %i.aoa = icmp ult i64 %i.anz, 4
  br i1 %i.aoa, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit401
  %i.aob = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ans, ptr noundef nonnull @.str.89, i64 noundef 4) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit404

bb.fa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit401
  store i32 544106784, ptr %i.anw, align 1
  %i.aoc = load ptr, ptr %i.anv, align 8, !tbaa !102
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 4
  store ptr %i.aod, ptr %i.anv, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit404

_ZN4llvm11raw_ostreamlsEPKc.exit404:              ; preds = %bb.ez, %bb.fa
  %.0.i.i403 = phi ptr [ %i.aob, %bb.ez ], [ %i.ans, %bb.fa ] ; 6 uses
  %i.aoe = load ptr, ptr %i.aea, align 8, !tbaa !643 ; 2 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 8
  %i.aog = load i32, ptr %i.aof, align 8
  %i.aoh = and i32 %i.aog, 4
  %.not.i.i405 = icmp eq i32 %i.aoh, 0
  br i1 %.not.i.i405, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit

_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit:  ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit404
  %i.aoi = getelementptr inbounds i8, ptr %i.aoe, i64 -8
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !379 ; 2 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 24 ; 2 uses
  %i.aol = load i64, ptr %i.aoj, align 8, !tbaa !381 ; 5 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %.0.i.i403, i64 24
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !101
  %i.aoo = getelementptr inbounds nuw i8, ptr %.0.i.i403, i64 32 ; 3 uses
  %i.aop = load ptr, ptr %i.aoo, align 8, !tbaa !102 ; 2 uses
  %i.aoq = ptrtoint ptr %i.aon to i64
  %i.aor = ptrtoint ptr %i.aop to i64
  %i.aos = sub i64 %i.aoq, %i.aor
  %i.aot = icmp ugt i64 %i.aol, %i.aos
  br i1 %i.aot, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit
  %i.aou = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i403, ptr noundef nonnull %i.aok, i64 noundef %i.aol) #25
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.fc:                                            ; preds = %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit
  %.not.i406 = icmp eq i64 %i.aol, 0
  br i1 %.not.i406, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aop, ptr nonnull align 8 %i.aok, i64 %i.aol, i1 false)
  %i.aov = load ptr, ptr %i.aoo, align 8, !tbaa !102
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 %i.aol
  store ptr %i.aow, ptr %i.aoo, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit404, %bb.fb, %bb.fc, %bb.fd
  %.0.i407 = phi ptr [ %i.aou, %bb.fb ], [ %.0.i.i403, %bb.fd ], [ %.0.i.i403, %bb.fc ], [ %.0.i.i403, %_ZN4llvm11raw_ostreamlsEPKc.exit404 ] ; 4 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %.0.i407, i64 24
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !101
  %i.aoz = getelementptr inbounds nuw i8, ptr %.0.i407, i64 32 ; 3 uses
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !102 ; 2 uses
  %i.apb = ptrtoint ptr %i.aoy to i64
  %i.apc = ptrtoint ptr %i.apa to i64
  %i.apd = sub i64 %i.apb, %i.apc
  %i.ape = icmp ult i64 %i.apd, 10
  br i1 %i.ape, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.apf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i407, ptr noundef nonnull @.str.103, i64 noundef 10) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit410

bb.ff:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.apa, ptr noundef nonnull align 1 dereferenceable(10) @.str.103, i64 10, i1 false)
  %i.apg = load ptr, ptr %i.aoz, align 8, !tbaa !102
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 10
  store ptr %i.aph, ptr %i.aoz, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit410

_ZN4llvm11raw_ostreamlsEPKc.exit410:              ; preds = %bb.fe, %bb.ff
  %.0.i.i409 = phi ptr [ %i.apf, %bb.fe ], [ %.0.i407, %bb.ff ]
  %i.api = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i409, i64 noundef %.0219.lcssa) #25 ; 3 uses
  %i.apj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.amm) #25 ; 5 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %i.api, i64 24
  %i.apl = load ptr, ptr %i.apk, align 8, !tbaa !101
  %i.apm = getelementptr inbounds nuw i8, ptr %i.api, i64 32 ; 3 uses
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !102 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4llvm4bolt21IndirectCallPromotion14runOnFunctionsERNS0_13BinaryContextE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.atf, ptr noundef nonnull align 1 dereferenceable(39) @.str.128, i64 39, i1 false)
  %i.atl = load ptr, ptr %i.ate, align 8, !tbaa !102
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 39
  store ptr %i.atm, ptr %i.ate, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit441

_ZN4llvm11raw_ostreamlsEPKc.exit441:              ; preds = %bb.gb, %bb.gc
  %.0.i.i440 = phi ptr [ %i.atk, %bb.gb ], [ %i.atb, %bb.gc ] ; 6 uses
  %i.atn = load ptr, ptr %22, align 8, !tbaa !105
  %i.ato = getelementptr inbounds nuw [72 x i8], ptr %i.atn, i64 %i.aqe
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ato, i64 16
  %i.atq = load ptr, ptr %i.atp, align 8, !tbaa !94 ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 8
  %i.ats = load i32, ptr %i.atr, align 8
  %i.att = and i32 %i.ats, 4
  %.not.i442 = icmp eq i32 %i.att, 0
  br i1 %.not.i442, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit445, label %_ZNK4llvm8MCSymbol7getNameEv.exit

_ZNK4llvm8MCSymbol7getNameEv.exit:                ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit441
  %i.atu = getelementptr inbounds i8, ptr %i.atq, i64 -8
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !379 ; 2 uses
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 24 ; 2 uses
  %i.atx = load i64, ptr %i.atv, align 8, !tbaa !381 ; 5 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %.0.i.i440, i64 24
  %i.atz = load ptr, ptr %i.aty, align 8, !tbaa !101
  %i.aua = getelementptr inbounds nuw i8, ptr %.0.i.i440, i64 32 ; 3 uses
  %i.aub = load ptr, ptr %i.aua, align 8, !tbaa !102 ; 2 uses
  %i.auc = ptrtoint ptr %i.atz to i64
  %i.aud = ptrtoint ptr %i.aub to i64
  %i.aue = sub i64 %i.auc, %i.aud
  %i.auf = icmp ugt i64 %i.atx, %i.aue
  br i1 %i.auf, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %_ZNK4llvm8MCSymbol7getNameEv.exit
  %i.aug = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i440, ptr noundef nonnull %i.atw, i64 noundef %i.atx) #25
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit445

bb.ge:                                            ; preds = %_ZNK4llvm8MCSymbol7getNameEv.exit
  %.not.i443 = icmp eq i64 %i.atx, 0
  br i1 %.not.i443, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit445, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aub, ptr nonnull align 8 %i.atw, i64 %i.atx, i1 false)
  %i.auh = load ptr, ptr %i.aua, align 8, !tbaa !102
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auh, i64 %i.atx
  store ptr %i.aui, ptr %i.aua, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit445

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit445:   ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit441, %bb.gd, %bb.ge, %bb.gf
  %.0.i444 = phi ptr [ %i.aug, %bb.gd ], [ %.0.i.i440, %bb.gf ], [ %.0.i.i440, %bb.ge ], [ %.0.i.i440, %_ZN4llvm11raw_ostreamlsEPKc.exit441 ] ; 3 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %.0.i444, i64 24
  %i.auk = load ptr, ptr %i.auj, align 8, !tbaa !101
  %i.aul = getelementptr inbounds nuw i8, ptr %.0.i444, i64 32 ; 3 uses
  %i.aum = load ptr, ptr %i.aul, align 8, !tbaa !102 ; 2 uses
  %i.aun = icmp eq ptr %i.auk, %i.aum
  br i1 %i.aun, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit445
  %i.auo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i444, ptr noundef nonnull @.str.66, i64 noundef 1) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit448

bb.gh:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit445
  store i8 10, ptr %i.aum, align 1
  %i.aup = load ptr, ptr %i.aul, align 8, !tbaa !102
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 1
  store ptr %i.auq, ptr %i.aul, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit448

bb.gi:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %24, i8 0, i64 48, i1 false)
  br i1 %i.agl, label %bb.gn, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  call void @_ZNK4llvm4bolt21IndirectCallPromotion18maybeGetVtableSymsERNS0_16BinaryBasicBlockERNS_6MCInstERKSt6vectorISt4pairIPNS_8MCSymbolEmESaISA_EE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.670") align 8 %25, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(192) %i.adv, ptr noundef nonnull align 8 dereferenceable(128) %i.aed, ptr noundef nonnull align 8 dereferenceable(24) %23)
  %i.aur = load ptr, ptr %24, align 16, !tbaa !647 ; 3 uses
  %i.aus = load ptr, ptr %i.ma, align 16, !tbaa !408
  %i.aut = load <2 x ptr>, ptr %25, align 16, !tbaa !653
  store <2 x ptr> %i.aut, ptr %24, align 16, !tbaa !653
  %i.auu = load ptr, ptr %i.mb, align 16, !tbaa !408
  store ptr %i.auu, ptr %i.ma, align 16, !tbaa !408
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aur, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %25, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EEaSEOS6_.exit.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.auv = ptrtoint ptr %i.aus to i64
  %i.auw = ptrtoint ptr %i.aur to i64
  %i.aux = sub i64 %i.auv, %i.auw
  call void @_ZdlPvm(ptr noundef nonnull %i.aur, i64 noundef %i.aux) #26
  br label %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EEaSEOS6_.exit.i

_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EEaSEOS6_.exit.i: ; preds = %bb.gk, %bb.gj
  %i.auy = load ptr, ptr %i.md, align 8, !tbaa !651 ; 3 uses
  %i.auz = load ptr, ptr %i.mf, align 8, !tbaa !652
  %i.ava = load <2 x ptr>, ptr %i.mc, align 8, !tbaa !646
  store <2 x ptr> %i.ava, ptr %i.md, align 8, !tbaa !646
  %i.avb = load ptr, ptr %i.mg, align 8, !tbaa !652
  store ptr %i.avb, ptr %i.mf, align 8, !tbaa !652
  %.not.i.i.i.i.i3.i = icmp eq ptr %i.auy, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mc, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i3.i, label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EED2Ev.exit.i, label %_ZNSt4pairISt6vectorIS_IPN4llvm8MCSymbolEmESaIS4_EES0_IPNS1_6MCInstESaIS8_EEEaSEOSB_.exit

_ZNSt4pairISt6vectorIS_IPN4llvm8MCSymbolEmESaIS4_EES0_IPNS1_6MCInstESaIS8_EEEaSEOSB_.exit: ; preds = %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EEaSEOS6_.exit.i
  %i.avc = ptrtoint ptr %i.auz to i64
  %i.avd = ptrtoint ptr %i.auy to i64
  %i.ave = sub i64 %i.avc, %i.avd
  call void @_ZdlPvm(ptr noundef nonnull %i.auy, i64 noundef %i.ave) #26
  %.pr = load ptr, ptr %i.mc, align 8, !tbaa !651 ; 3 uses
  %.not.i.i.i.i449 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i449, label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EED2Ev.exit.i, label %bb.gl

bb.gl:                                            ; preds = %_ZNSt4pairISt6vectorIS_IPN4llvm8MCSymbolEmESaIS4_EES0_IPNS1_6MCInstESaIS8_EEEaSEOSB_.exit
  %i.avf = load ptr, ptr %i.mg, align 8, !tbaa !652
  %i.avg = ptrtoint ptr %i.avf to i64
  %i.avh = ptrtoint ptr %.pr to i64
  %i.avi = sub i64 %i.avg, %i.avh
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.avi) #26
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EED2Ev.exit.i

_ZNSt6vectorIPN4llvm6MCInstESaIS2_EED2Ev.exit.i:  ; preds = %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EEaSEOS6_.exit.i, %bb.gl, %_ZNSt4pairISt6vectorIS_IPN4llvm8MCSymbolEmESaIS4_EES0_IPNS1_6MCInstESaIS8_EEEaSEOSB_.exit
  %i.avj = load ptr, ptr %25, align 16, !tbaa !647 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.avj, null
  br i1 %.not.i.i.i1.i, label %_ZNSt4pairISt6vectorIS_IPN4llvm8MCSymbolEmESaIS4_EES0_IPNS1_6MCInstESaIS8_EEED2Ev.exit, label %bb.gm

bb.gm:                                            ; preds = %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EED2Ev.exit.i
  %i.avk = load ptr, ptr %i.mb, align 16, !tbaa !408
  %i.avl = ptrtoint ptr %i.avk to i64
  %i.avm = ptrtoint ptr %i.avj to i64
  %i.avn = sub i64 %i.avl, %i.avm
  call void @_ZdlPvm(ptr noundef nonnull %i.avj, i64 noundef %i.avn) #26
  br label %_ZNSt4pairISt6vectorIS_IPN4llvm8MCSymbolEmESaIS4_EES0_IPNS1_6MCInstESaIS8_EEED2Ev.exit

_ZNSt4pairISt6vectorIS_IPN4llvm8MCSymbolEmESaIS4_EES0_IPNS1_6MCInstESaIS8_EEED2Ev.exit: ; preds = %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EED2Ev.exit.i, %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  %i.avo = load ptr, ptr %24, align 16, !tbaa !653
  %i.avp = load ptr, ptr %i.lz, align 8, !tbaa !653
  %i.avq = icmp ne ptr %i.avo, %i.avp
  %i.avr = zext i1 %i.avq to i64
  %i.avs = load i64, ptr %i.mh, align 8, !tbaa !1082
  %i.avt = add i64 %i.avs, %i.avr
  store i64 %i.avt, ptr %i.mh, align 8, !tbaa !1082
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backERKS2_.exit

bb.gn:                                            ; preds = %bb.gi
  %i.avu = load ptr, ptr %i.c, align 8, !tbaa !329 ; 2 uses
  %.not243 = icmp eq ptr %i.avu, null
  br i1 %.not243, label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backERKS2_.exit, label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.gn
  %i.avv = load i64, ptr %i.mi, align 8, !tbaa !1087
  %i.avw = add i64 %i.avv, 1
  store i64 %i.avw, ptr %i.mi, align 8, !tbaa !1087
  %i.avx = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #28 ; 3 uses
  store ptr %i.avu, ptr %i.avx, align 8, !tbaa !329
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 8 ; 2 uses
  store ptr %i.avx, ptr %i.md, align 8, !tbaa !651
  store ptr %i.avy, ptr %i.me, align 16, !tbaa !654
  store ptr %i.avy, ptr %i.mf, align 8, !tbaa !652
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.gn, %_ZNSt4pairISt6vectorIS_IPN4llvm8MCSymbolEmESaIS4_EES0_IPNS1_6MCInstESaIS8_EEED2Ev.exit
  %i.avz = load ptr, ptr %i.f, align 8, !tbaa !1055
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avz, i64 32
  %i.awb = load i32, ptr %i.awa, align 8, !tbaa !1063
  %i.awc = icmp eq i32 %i.awb, 3
  br i1 %i.awc, label %bb.go, label %bb.gt

bb.go:                                            ; preds = %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backERKS2_.exit
  %i.awd = call noundef nonnull align 8 dereferenceable(130) ptr @_ZN4llvm4bolt19DataflowInfoManager19getLivenessAnalysisEv(ptr noundef nonnull align 8 dereferenceable(122) %21) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awd, i64 16
  %i.awf = load ptr, ptr %i.awe, align 8, !tbaa !720, !noalias !1175, !nonnull !39, !align !62
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awf, i64 1568
  %i.awh = load ptr, ptr %i.awg, align 8, !tbaa !260, !noalias !1175 ; 2 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awd, i64 8 ; 2 uses
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awd, i64 12
  %i.awk = load i8, ptr %i.awj, align 4, !tbaa !1173, !range !38, !noalias !1175, !noundef !39
  %i.awl = trunc nuw i8 %i.awk to i1
  br i1 %i.awl, label %._crit_edge.i.i572, label %bb.gp

._crit_edge.i.i572:                               ; preds = %bb.go
  %.0.pre.i.i573 = load i32, ptr %i.awi, align 8, !tbaa !301, !noalias !1175
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit.i551

bb.gp:                                            ; preds = %bb.go
  %i.awm = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.awh, ptr nonnull @.str.165, i64 16), !noalias !1175 ; 2 uses
  %.sroa.0.0.insert.ext.i.i549 = zext i32 %i.awm to i64
  %.sroa.0.0.insert.insert.i.i550 = or disjoint i64 %.sroa.0.0.insert.ext.i.i549, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i550, ptr %i.awi, align 8, !noalias !1175
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit.i551

_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit.i551: ; preds = %bb.gp, %._crit_edge.i.i572
  %.0.i.i552 = phi i32 [ %.0.pre.i.i573, %._crit_edge.i.i572 ], [ %i.awm, %bb.gp ] ; 3 uses
  %i.awn = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.awh, ptr noundef nonnull align 8 dereferenceable(128) %i.aed, i32 noundef %.0.i.i552) #25, !noalias !1176
  br i1 %i.awn, label %bb.gq, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtERKNS_6MCInstE.exit574

bb.gq:                                            ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit.i551
  %i.awo = getelementptr inbounds nuw i8, ptr %i.aed, i64 24
  %i.awp = load i32, ptr %i.awo, align 8, !tbaa !318, !noalias !1176 ; 5 uses
  %.01317.i.i.i.i.i.i554 = add i32 %i.awp, -1     ; 2 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %i.aed, i64 16
  %i.awr = load ptr, ptr %i.awq, align 8, !tbaa !42, !noalias !1176 ; 4 uses
  %36 = zext i32 %i.awp to i64                    ; 2 uses
  %i.aws = zext nneg i32 %.01317.i.i.i.i.i.i554 to i64 ; 2 uses
  %i.awt = getelementptr inbounds nuw [16 x i8], ptr %i.awr, i64 %i.aws ; 2 uses
  %i.awu = load i8, ptr %i.awt, align 8, !tbaa !312, !noalias !1176
  %i.awv = icmp eq i8 %i.awu, 6
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awt, i64 8
  %i.awx = load ptr, ptr %i.aww, align 8, !noalias !1176
  %i.awy = icmp eq ptr %i.awx, null
  %i.awz = select i1 %i.awv, i1 %i.awy, i1 false
  br i1 %i.awz, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i559, label %.backedge.i.i.i.i.i.i555

.backedge.i.i.i.i.i.i555:                         ; preds = %bb.gq, %.backedge.i.i.i.i.i.i555
  %indvars.iv.i.i.i556 = phi i64 [ %indvars.iv.next.i.i.i557, %.backedge.i.i.i.i.i.i555 ], [ %i.aws, %bb.gq ] ; 2 uses
  %indvars.iv.i.i.i556.a = phi i64 [ %indvars.iv.next.i.i.i.i559, %.backedge.i.i.i.i.i.i555 ], [ %36, %bb.gq ]
  %indvars.iv.next.i.i.i557 = add nsw i64 %indvars.iv.i.i.i556, -1 ; 3 uses
  %i.axa = icmp sgt i64 %indvars.iv.i.i.i556, 0
  %indvars.iv.next.i.i.i.i559 = add nsw i64 %indvars.iv.i.i.i556.a, -1 ; 2 uses
  call void @llvm.assume(i1 %i.axa)
  %i.axb = getelementptr inbounds nuw [16 x i8], ptr %i.awr, i64 %indvars.iv.next.i.i.i557 ; 2 uses
  %i.axc = load i8, ptr %i.axb, align 8, !tbaa !312, !noalias !1176
  %i.axd = icmp eq i8 %i.axc, 6
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axb, i64 8
  %i.axf = load ptr, ptr %i.axe, align 8, !noalias !1176
  %i.axg = icmp eq ptr %i.axf, null
  %i.axh = select i1 %i.axd, i1 %i.axg, i1 false
  br i1 %i.axh, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i558, label %.backedge.i.i.i.i.i.i555

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i558: ; preds = %.backedge.i.i.i.i.i.i555
  %i.axi = trunc nuw nsw i64 %indvars.iv.next.i.i.i557 to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i559

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i559: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i558, %bb.gq
  %indvars.iv.i.lcssa.i.i.i562 = phi i64 [ %36, %bb.gq ], [ %indvars.iv.next.i.i.i.i559, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i558 ] ; 2 uses
  %.01318.i.i.i.lcssa.i.i.i560 = phi i32 [ %.01317.i.i.i.i.i.i554, %bb.gq ], [ %i.axi, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i558 ] ; 2 uses
  %.not.i.not.i.i.i.i561 = icmp ne i32 %i.awp, %.01318.i.i.i.lcssa.i.i.i560
  %i.axj = add nuw i32 %.01318.i.i.i.lcssa.i.i.i560, 1
  %.not1324.i.i.i.i562 = icmp ult i32 %i.axj, %i.awp
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i561)
  call void @llvm.assume(i1 %.not1324.i.i.i.i562)
  %i.axk = getelementptr inbounds nuw [16 x i8], ptr %i.awr, i64 %indvars.iv.i.lcssa.i.i.i562
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 8
  %i.axm = load i64, ptr %i.axl, align 8, !tbaa !66, !noalias !1176 ; 2 uses
  %i.axn = lshr i64 %i.axm, 56
  %i.axo = trunc nuw nsw i64 %i.axn to i32
  %.not.i3.i.i.i564 = icmp eq i32 %.0.i.i552, %i.axo
  br i1 %.not.i3.i.i.i564, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i570, label %.critedge.i.i.i.i565

.critedge.i.i.i.i565:                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i559, %.critedge.i.i.i.i565
  %indvars.iv.i4.i.i.i566 = phi i64 [ %indvars.iv.next.i.i.i.i567, %.critedge.i.i.i.i565 ], [ %indvars.iv.i.lcssa.i.i.i562, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i559 ]
  %indvars.iv.next.i.i.i.i567 = add nsw i64 %indvars.iv.i4.i.i.i566, 1 ; 3 uses
  %lftr.wideiv.i.i.i.i570 = trunc i64 %indvars.iv.next.i.i.i.i567 to i32
  %exitcond.not.i.i.i.i568 = icmp ne i32 %i.awp, %lftr.wideiv.i.i.i.i570
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i568)
  %i.axp = getelementptr inbounds nuw [16 x i8], ptr %i.awr, i64 %indvars.iv.next.i.i.i.i567
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axp, i64 8
  %i.axr = load i64, ptr %i.axq, align 8, !tbaa !66, !noalias !1176 ; 2 uses
  %i.axs = lshr i64 %i.axr, 56
  %i.axt = trunc nuw nsw i64 %i.axs to i32
  %.not.i.i.i.i569 = icmp eq i32 %.0.i.i552, %i.axt
  br i1 %.not.i.i.i.i569, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i570, label %.critedge.i.i.i.i565

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i570: ; preds = %.critedge.i.i.i.i565, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i559
  %.lcssa.i.i.i571 = phi i64 [ %i.axm, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i559 ], [ %i.axr, %.critedge.i.i.i.i565 ]
  %i.axu = shl i64 %.lcssa.i.i.i571, 8
  %i.axv = ashr exact i64 %i.axu, 8
  %i.axw = inttoptr i64 %i.axv to ptr
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtERKNS_6MCInstE.exit574

_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtERKNS_6MCInstE.exit574: ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit.i551, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i570
  %.sroa.0717.0 = phi ptr [ %i.axx, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i570 ], [ inttoptr (i64 34 to ptr), %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit.i551 ] ; 4 uses
  store ptr %i.mj, ptr %5, align 8, !tbaa !42
  store i32 0, ptr %i.mk, align 8, !tbaa !318
  store i32 6, ptr %i.ml, align 4, !tbaa !659
  %i.axy = getelementptr inbounds nuw i8, ptr %.sroa.0717.0, i64 8 ; 2 uses
  %i.axz = load i32, ptr %i.axy, align 8, !tbaa !318 ; 5 uses
  %.not.i.i.i.i453 = icmp eq i32 %i.axz, 0
  %i.aya = icmp eq ptr %5, %.sroa.0717.0
  %or.cond.i.i.i = or i1 %i.aya, %.not.i.i.i.i453
  br i1 %or.cond.i.i.i, label %_ZN4llvm9BitVectorC2ERKS0_.exit.i, label %bb.gr

bb.gr:                                            ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtERKNS_6MCInstE.exit574
  %i.ayb = icmp ugt i32 %i.axz, 6
  br i1 %i.ayb, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i:       ; preds = %bb.gr
  %i.ayc = zext i32 %i.axz to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %5, ptr noundef nonnull %i.mj, i64 noundef %i.ayc, i64 noundef 8) #25
  %.pre.i.i.i = load i32, ptr %i.axy, align 8, !tbaa !318 ; 2 uses
  %.not.i.i.i.i4.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i4.i, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i
  %.pre.i.i454 = load ptr, ptr %5, align 8, !tbaa !42
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i, %bb.gr
  %i.ayd = phi ptr [ %.pre.i.i454, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.mj, %bb.gr ]
  %i.aye = phi i32 [ %.pre.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.axz, %bb.gr ]
  %i.ayf = zext i32 %i.aye to i64
  %i.ayg = load ptr, ptr %.sroa.0717.0, align 8, !tbaa !42
  %gepdiff.i.i.i.i = shl nuw nsw i64 %i.ayf, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ayd, ptr align 8 %i.ayg, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i
  store i32 %i.axz, ptr %i.mk, align 8, !tbaa !318
  br label %_ZN4llvm9BitVectorC2ERKS0_.exit.i

_ZN4llvm9BitVectorC2ERKS0_.exit.i:                ; preds = %.sink.split.i.i.i.i, %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtERKNS_6MCInstE.exit574
  %i.ayh = getelementptr inbounds nuw i8, ptr %.sroa.0717.0, i64 64
  %i.ayi = load i32, ptr %i.ayh, align 8, !tbaa !724
  store i32 %i.ayi, ptr %i.mm, align 8, !tbaa !724
  %i.ayj = call noundef zeroext i16 @_ZNK4llvm4bolt16LivenessAnalysis20scavengeRegFromStateERNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(130) %i.awd, ptr noundef nonnull align 8 dereferenceable(68) %5)
  %i.ayk = load ptr, ptr %5, align 8, !tbaa !42   ; 2 uses
  %i.ayl = icmp eq ptr %i.ayk, %i.mj
  br i1 %i.ayl, label %_ZNK4llvm4bolt16LivenessAnalysis16scavengeRegAfterENS0_12ProgramPointE.exit, label %bb.gs

bb.gs:                                            ; preds = %_ZN4llvm9BitVectorC2ERKS0_.exit.i
  call void @free(ptr noundef %i.ayk) #25
  br label %_ZNK4llvm4bolt16LivenessAnalysis16scavengeRegAfterENS0_12ProgramPointE.exit

_ZNK4llvm4bolt16LivenessAnalysis16scavengeRegAfterENS0_12ProgramPointE.exit: ; preds = %_ZN4llvm9BitVectorC2ERKS0_.exit.i, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.gt

bb.gt:                                            ; preds = %_ZNK4llvm4bolt16LivenessAnalysis16scavengeRegAfterENS0_12ProgramPointE.exit, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backERKS2_.exit
  %.0213 = phi i16 [ %i.ayj, %_ZNK4llvm4bolt16LivenessAnalysis16scavengeRegAfterENS0_12ProgramPointE.exit ], [ 0, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backERKS2_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  %i.aym = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL21ICPJumpTablesByTargetE, i64 120), align 8, !range !38
  %i.ayn = trunc nuw i8 %i.aym to i1
  %or.cond795 = select i1 %.not11, i1 true, i1 %i.ayn
  %i.ayo = load ptr, ptr %i.lt, align 8, !tbaa !260 ; 4 uses
  br i1 %or.cond795, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ayp = load ptr, ptr %i.mn, align 8, !tbaa !671
  %i.ayq = load ptr, ptr %i.ayo, align 8, !tbaa !30
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 1736
  %i.ays = load ptr, ptr %i.ayr, align 8
  call void %i.ays(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.699") align 8 %26, ptr noundef nonnull align 8 dereferenceable(536) %i.ayo, ptr noundef nonnull align 8 dereferenceable(128) %i.aed, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %i.md, ptr noundef %i.ayp) #25
  br label %bb.gw

bb.gv:                                            ; preds = %bb.gt
  %i.ayt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL18ICPOldCodeSequenceE, i64 120), align 8, !tbaa !297, !range !38, !noundef !39
  %i.ayu = trunc nuw i8 %i.ayt to i1
  %i.ayv = load ptr, ptr %i.mn, align 8, !tbaa !671
  %i.ayw = load ptr, ptr %i.ayo, align 8, !tbaa !30
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 1728
  %i.ayy = load ptr, ptr %i.ayx, align 8
  call void %i.ayy(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.699") align 8 %26, ptr noundef nonnull align 8 dereferenceable(536) %i.ayo, ptr noundef nonnull align 8 dereferenceable(128) %i.aed, i16 noundef zeroext %.0213, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %i.md, i1 noundef zeroext %i.ayu, ptr noundef %i.ayv) #25
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %i.ayz = load ptr, ptr %26, align 8, !tbaa !656
  %i.aza = load ptr, ptr %i.mo, align 8, !tbaa !656
  %i.azb = icmp eq ptr %i.ayz, %i.aza
  br i1 %i.azb, label %bb.gx, label %bb.hm

bb.gx:                                            ; preds = %bb.gw
  %i.azc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts9VerbosityE, i64 120), align 8, !tbaa !362
  %.not246 = icmp eq i32 %i.azc, 0
  br i1 %.not246, label %_ZN4llvm11raw_ostreamlsEPKc.exit481, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.azd = load ptr, ptr %i.mp, align 8, !tbaa !642, !nonnull !39, !align !62 ; 4 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 24
  %i.azf = load ptr, ptr %i.aze, align 8, !tbaa !101
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azd, i64 32 ; 3 uses
  %i.azh = load ptr, ptr %i.azg, align 8, !tbaa !102 ; 2 uses
  %i.azi = ptrtoint ptr %i.azf to i64
  %i.azj = ptrtoint ptr %i.azh to i64
  %i.azk = sub i64 %i.azi, %i.azj
  %i.azl = icmp ult i64 %i.azk, 25
  br i1 %i.azl, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.azm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.azd, ptr noundef nonnull @.str.88, i64 noundef 25) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit457

bb.ha:                                            ; preds = %bb.gy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.azh, ptr noundef nonnull align 1 dereferenceable(25) @.str.88, i64 25, i1 false)
  %i.azn = load ptr, ptr %i.azg, align 8, !tbaa !102
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 25
  store ptr %i.azo, ptr %i.azg, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit457

_ZN4llvm11raw_ostreamlsEPKc.exit457:              ; preds = %bb.gz, %bb.ha
  %.0.i.i456 = phi ptr [ %i.azm, %bb.gz ], [ %i.azd, %bb.ha ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNK4llvm4bolt14BinaryFunction12getPrintNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1360) %i.aca)
  %i.azp = load ptr, ptr %4, align 8, !tbaa !76
  %i.azq = load i64, ptr %i.nb, align 8, !tbaa !391
  %i.azr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i456, ptr noundef %i.azp, i64 noundef %i.azq) #25 ; 0 uses
  %i.azs = load ptr, ptr %4, align 8, !tbaa !76   ; 2 uses
  %i.azt = icmp eq ptr %i.azs, %i.nc
  br i1 %i.azt, label %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit460, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i458

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i458: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit457
  %i.azu = load i64, ptr %i.nc, align 8, !tbaa !66
  %i.azv = add i64 %i.azu, 1
  call void @_ZdlPvm(ptr noundef %i.azs, i64 noundef %i.azv) #26
  br label %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit460

_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit460: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit457, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i458
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.azw = getelementptr inbounds nuw i8, ptr %.0.i.i456, i64 24
  %i.azx = load ptr, ptr %i.azw, align 8, !tbaa !101
  %i.azy = getelementptr inbounds nuw i8, ptr %.0.i.i456, i64 32 ; 3 uses
  %i.azz = load ptr, ptr %i.azy, align 8, !tbaa !102 ; 2 uses
  %i.baa = ptrtoint ptr %i.azx to i64
  %i.bab = ptrtoint ptr %i.azz to i64
  %i.bac = sub i64 %i.baa, %i.bab
  %i.bad = icmp ult i64 %i.bac, 3
  br i1 %i.bad, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit460
  %i.bae = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i456, ptr noundef nonnull @.str.102, i64 noundef 3) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit463

bb.hc:                                            ; preds = %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.azz, ptr noundef nonnull align 1 dereferenceable(3) @.str.102, i64 3, i1 false)
  %i.baf = load ptr, ptr %i.azy, align 8, !tbaa !102
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 3
  store ptr %i.bag, ptr %i.azy, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit463

_ZN4llvm11raw_ostreamlsEPKc.exit463:              ; preds = %bb.hb, %bb.hc
  %.0.i.i462 = phi ptr [ %i.bae, %bb.hb ], [ %.0.i.i456, %bb.hc ]
  %i.bah = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i462, i64 noundef %i.aec) #25 ; 4 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bah, i64 24
  %i.baj = load ptr, ptr %i.bai, align 8, !tbaa !101
  %i.bak = getelementptr inbounds nuw i8, ptr %i.bah, i64 32 ; 3 uses
  %i.bal = load ptr, ptr %i.bak, align 8, !tbaa !102 ; 2 uses
  %i.bam = ptrtoint ptr %i.baj to i64
  %i.ban = ptrtoint ptr %i.bal to i64
  %i.bao = sub i64 %i.bam, %i.ban
  %i.bap = icmp ult i64 %i.bao, 4
  br i1 %i.bap, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit463
  %i.baq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bah, ptr noundef nonnull @.str.89, i64 noundef 4) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit466

bb.he:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit463
  store i32 544106784, ptr %i.bal, align 1
  %i.bar = load ptr, ptr %i.bak, align 8, !tbaa !102
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bar, i64 4
  store ptr %i.bas, ptr %i.bak, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit466

_ZN4llvm11raw_ostreamlsEPKc.exit466:              ; preds = %bb.hd, %bb.he
end_hunk_4
begin_hunk_5_@_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_:bb.a
_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.i: ; preds = %bb.g
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !395 ; 2 uses
  %i.bf = icmp ult i64 %i.be, %4
  br i1 %i.bf, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.thread.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.i, %._ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.thread_crit_edge.i
  %i.bg = phi i64 [ %.pre.i, %._ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.thread_crit_edge.i ], [ %i.be, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.i ]
  %i.bh = sub nsw i64 0, %.0919.i
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.av, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -16
  store i64 %i.ba, ptr %i.bj, align 8, !tbaa !394
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -8
  store i64 %i.bg, ptr %i.bk, align 8, !tbaa !395
  %i.bl = icmp sgt i64 %.020.i, %1
  br i1 %i.bl, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_.exit, !llvm.loop !1393

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_.exit: ; preds = %bb.g, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.thread.i, %bb.f
  %.09.lcssa.i = phi i64 [ %.1, %bb.f ], [ %.0919.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.i ], [ %.020.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.thread.i ], [ %.0919.i, %bb.g ]
  %i.bm = sub nsw i64 0, %.09.lcssa.i
  %i.bn = getelementptr inbounds [16 x i8], ptr %i.av, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -16
  store i64 %3, ptr %i.bo, align 8, !tbaa !394
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -8
  store i64 %4, ptr %i.bp, align 8, !tbaa !395
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_(ptr nofree noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !397
  %i.b = load i64, ptr %2, align 8, !tbaa !397
  %i.c = inttoptr i64 %i.a to ptr                 ; 6 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 3 uses
  %i.e = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -16 ; 3 uses
  %i.g = load i64, ptr %i.d, align 8, !tbaa !394  ; 8 uses
  %i.h = load i64, ptr %i.f, align 8, !tbaa !394  ; 8 uses
  %i.i = icmp ult i64 %i.g, %i.h
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.h, %i.g
  br i1 %i.j, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread26, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !395
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !395
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread26

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread: ; preds = %bb.a, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit
  %i.p = load i64, ptr %3, align 8, !tbaa !397
  %i.q = inttoptr i64 %i.p to ptr                 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !394  ; 5 uses
  %i.t = icmp ult i64 %i.h, %i.s
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread
  %i.u = icmp ult i64 %i.s, %i.h
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread27, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1: ; preds = %bb.c
  %i.v = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !395
  %i.x = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !395
  %i.z = icmp ult i64 %i.w, %i.y
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread27

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1
  %i.aa = load i64, ptr %0, align 8, !tbaa !397
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !59
  store i64 %i.h, ptr %i.ac, align 8, !tbaa !59
  store i64 %i.ad, ptr %i.f, align 8, !tbaa !59
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread27: ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1
  %i.ae = icmp ult i64 %i.g, %i.s
  br i1 %i.ae, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread27
  %i.af = icmp ult i64 %i.s, %i.g
  br i1 %i.af, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread28, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2: ; preds = %bb.d
  %i.ag = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !395
  %i.ai = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !395
  %i.ak = icmp ult i64 %i.ah, %i.aj
  br i1 %i.ak, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread28

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread27, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2
  %i.al = load i64, ptr %0, align 8, !tbaa !397
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !59
  store i64 %i.s, ptr %i.an, align 8, !tbaa !59
  store i64 %i.ao, ptr %i.r, align 8, !tbaa !59
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread28: ; preds = %bb.d, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2
  %i.ap = load i64, ptr %0, align 8, !tbaa !397
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !59
  store i64 %i.g, ptr %i.ar, align 8, !tbaa !59
  store i64 %i.as, ptr %i.d, align 8, !tbaa !59
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread26: ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit
  %i.at = load i64, ptr %3, align 8, !tbaa !397
  %i.au = inttoptr i64 %i.at to ptr               ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -16 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !394 ; 5 uses
  %i.ax = icmp ult i64 %i.g, %i.aw
  br i1 %i.ax, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread26
  %i.ay = icmp ult i64 %i.aw, %i.g
  br i1 %i.ay, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread29, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3: ; preds = %bb.e
  %i.az = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !395
  %i.bb = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !395
  %i.bd = icmp ult i64 %i.ba, %i.bc
  br i1 %i.bd, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread29

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread26, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3
  %i.be = load i64, ptr %0, align 8, !tbaa !397
  %i.bf = inttoptr i64 %i.be to ptr               ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !59
  store i64 %i.g, ptr %i.bg, align 8, !tbaa !59
  store i64 %i.bh, ptr %i.d, align 8, !tbaa !59
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread29: ; preds = %bb.e, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3
  %i.bi = icmp ult i64 %i.h, %i.aw
  br i1 %i.bi, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread29
  %i.bj = icmp ult i64 %i.aw, %i.h
  br i1 %i.bj, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread30, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4: ; preds = %bb.f
  %i.bk = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !395
  %i.bm = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !395
  %i.bo = icmp ult i64 %i.bl, %i.bn
  br i1 %i.bo, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread30

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread29, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4
  %i.bp = load i64, ptr %0, align 8, !tbaa !397
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -16 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !59
  store i64 %i.aw, ptr %i.br, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.av, align 8, !tbaa !59
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread30: ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4
  %i.bt = load i64, ptr %0, align 8, !tbaa !397
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !59
  store i64 %i.h, ptr %i.bv, align 8, !tbaa !59
  store i64 %i.bw, ptr %i.f, align 8, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread30, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread28, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread
  %.sink40 = phi ptr [ %i.bf, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread ], [ %i.bu, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread30 ], [ %i.bq, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread ], [ %i.ab, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread ], [ %i.aq, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread28 ], [ %i.am, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread ]
  %.sink = phi ptr [ %i.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread ], [ %i.e, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread30 ], [ %i.au, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread ], [ %i.e, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread ], [ %i.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread28 ], [ %i.q, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread ]
  %i.bx = getelementptr inbounds i8, ptr %.sink40, i64 -8 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.sink, i64 -8 ; 2 uses
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !59
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !59
  store i64 %i.ca, ptr %i.bx, align 8, !tbaa !59
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 2 dereferenceable(2) ptr @_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsItEERT_RNS_6MCInstEjt(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2) #25, !noalias !1400
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !318, !noalias !1400 ; 5 uses
  %.01317.i.i.i.i.i = add i32 %i.c, -1            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42, !noalias !1400 ; 4 uses
  %4 = zext i32 %i.c to i64                       ; 2 uses
  %i.f = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !312, !noalias !1400
  %i.i = icmp eq i8 %i.h, 6
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1400
  %i.l = icmp eq ptr %i.k, null
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.b, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i ], [ %4, %bb.b ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.n = icmp sgt i64 %indvars.iv.i.i, 0
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.a, -1 ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next.i.i ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !312, !noalias !1400
  %i.q = icmp eq i8 %i.p, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1400
  %i.t = icmp eq ptr %i.s, null
  %i.u = select i1 %i.q, i1 %i.t, i1 false
  br i1 %i.u, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.v = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.b
  %indvars.iv.i.lcssa.i.i = phi i64 [ %4, %bb.b ], [ %indvars.iv.next.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.b ], [ %i.v, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.c, %.01318.i.i.i.lcssa.i.i
  %i.w = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1
  %.not1324.i.i.i = icmp ult i32 %i.w, %i.c
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.i.lcssa.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !66, !noalias !1400 ; 2 uses
  %i.aa = lshr i64 %i.z, 56
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %.not.i3.i.i = icmp eq i32 %2, %i.ab
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsItEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i.a, %.critedge.i.i.i ], [ %indvars.iv.i.lcssa.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i.a = add nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %lftr.wideiv.i.i.i = trunc i64 %indvars.iv.next.i.i.i.a to i32
  %exitcond.not.i.i.i = icmp ne i32 %i.c, %lftr.wideiv.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next.i.i.i.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !66, !noalias !1400 ; 2 uses
  %i.af = lshr i64 %i.ae, 56
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %.not.i.i.i = icmp eq i32 %2, %i.ag
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsItEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsItEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.z, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.ae, %.critedge.i.i.i ]
  %i.ah = shl i64 %.lcssa.i.i, 8
  %i.ai = ashr exact i64 %i.ah, 8
  %i.aj = add nuw nsw i64 %i.ai, 8
  %i.ak = inttoptr i64 %i.aj to ptr
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !686
  %.not.not.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.not.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.06.0.i.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !687, !nonnull !39, !noundef !39 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !398
  %i.aq = icmp eq i16 %3, %i.ap
  br i1 %i.aq, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %bb.e, !llvm.loop !9

bb.f:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = zext i16 %3 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1401 ; 2 uses
  %i.av = urem i64 %i.as, %i.au                   ; 2 uses
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !688
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !689, !nonnull !39, !noundef !39
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !687 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !398
  %i.bc = icmp eq i16 %3, %i.bb
  br i1 %i.bc, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %i.az, %bb.f ]
  %i.bd = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !687, !nonnull !39, !noundef !39 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !398 ; 2 uses
  %i.bg = zext i16 %i.bf to i64
  %i.bh = urem i64 %i.bg, %i.au
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.bh, %i.av
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  %i.bi = icmp eq i16 %3, %i.bf
  br i1 %i.bi, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !10

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.e, %bb.f
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.e ], [ %i.az, %bb.f ], [ %i.bd, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !690
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = add i64 %i.bl, 15
  %i.bn = and i64 %i.bm, -16                      ; 2 uses
  %i.bo = add i64 %i.bn, 16                       ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !691
  %i.br = icmp ult i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.g, label %bb.h, !prof !303

bb.g:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.bs = inttoptr i64 %i.bo to ptr
  store ptr %i.bs, ptr %i.bj, align 8, !tbaa !690
  %i.bt = inttoptr i64 %i.bn to ptr
  br label %_ZN4llvm7ErrorOrIRKtEaSEOS3_.exit

bb.h:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.bu = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, i64 noundef 16, i64 noundef 16, i8 4)
  br label %_ZN4llvm7ErrorOrIRKtEaSEOS3_.exit

_ZN4llvm7ErrorOrIRKtEaSEOS3_.exit:                ; preds = %bb.g, %bb.h
  %.0.i.i.i.i = phi ptr [ %i.bt, %bb.g ], [ %i.bu, %bb.h ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationItEE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 2 uses
  store i16 0, ptr %i.bv, align 8, !tbaa !742
  %i.bw = ptrtoint ptr %.0.i.i.i.i to i64
  tail call void @_ZNK4llvm4bolt13MCPlusBuilder20setAnnotationOpValueERNS_6MCInstEjl(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i64 noundef %i.bw)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsItEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, %_ZN4llvm7ErrorOrIRKtEaSEOS3_.exit
  %.sroa.0.sroa.010.0.in = phi ptr [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsItEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread ], [ %i.bv, %_ZN4llvm7ErrorOrIRKtEaSEOS3_.exit ]
  ret ptr %.sroa.0.sroa.010.0.in
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt13MCPlusBuilder20setAnnotationOpValueERNS_6MCInstEjl(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = add i64 %3, 36028797018963968
  %.not.i = icmp ult i64 %i.a, 72057594037927936
  br i1 %.not.i, label %_ZN4llvm4bolt13MCPlusBuilder19encodeAnnotationImmEhl.exit, label %bb.b, !prof !303

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.172, i1 noundef zeroext true) #30
  unreachable

_ZN4llvm4bolt13MCPlusBuilder19encodeAnnotationImmEhl.exit: ; preds = %bb.a
  %i.b = and i64 %3, 72057594037927935
  %i.c = and i32 %2, 255
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw i64 %i.d, 56
  %i.f = or disjoint i64 %i.e, %i.b               ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !318  ; 8 uses
  %.01317.i.i = add i32 %i.h, -1                  ; 2 uses
  %i.i = icmp sgt i32 %.01317.i.i, -1
  br i1 %i.i, label %.lr.ph.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.thread

.lr.ph.i.i:                                       ; preds = %_ZN4llvm4bolt13MCPlusBuilder19encodeAnnotationImmEhl.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42   ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i
  %.01318.i.i = phi i32 [ %.01317.i.i, %.lr.ph.i.i ], [ %.013.i.i, %.backedge.i.i ] ; 5 uses
  %i.l = zext nneg i32 %.01318.i.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !312   ; 2 uses
  %i.o = icmp eq i8 %i.n, 6
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, null
  %i.s = select i1 %i.o, i1 %i.r, i1 false
  br i1 %i.s, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.n, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.thread [
    i8 6, label %.backedge.i.i
    i8 2, label %.backedge.i.i
  ]

.backedge.i.i:                                    ; preds = %bb.d, %bb.d
  %.013.i.i = add nsw i32 %.01318.i.i, -1
  %i.t = icmp sgt i32 %.01318.i.i, 0
  br i1 %i.t, label %bb.c, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.thread

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit: ; preds = %bb.c
  %.not.i29.not = icmp eq i32 %i.h, %.01318.i.i
  %i.u = add nuw i32 %.01318.i.i, 1               ; 2 uses
  br i1 %.not.i29.not, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit
  %.not2644 = icmp ult i32 %i.u, %i.h
  br i1 %.not2644, label %.critedge.lr.ph, label %.critedge28

.critedge.lr.ph:                                  ; preds = %.preheader
  %i.v = zext i32 %i.u to i64
  %wide.trip.count = zext i32 %i.h to i64
  br label %.critedge

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.thread: ; preds = %.backedge.i.i, %bb.d, %_ZN4llvm4bolt13MCPlusBuilder19encodeAnnotationImmEhl.exit, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !659
  %.not.i.i = icmp ult i32 %i.h, %i.y
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !303

bb.e:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.thread
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 6, i64 0)
  %.pre = load i32, ptr %i.g, align 8, !tbaa !318
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.f:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.thread
  %i.z = zext i32 %i.h to i64
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z ; 2 uses
  store i8 6, ptr %i.ab, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.ac = load i32, ptr %i.g, align 8, !tbaa !318
  %i.ad = add i32 %i.ac, 1                        ; 2 uses
  store i32 %i.ad, ptr %i.g, align 8, !tbaa !318
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.e, %bb.f
  %i.ae = phi i32 [ %.pre, %bb.e ], [ %i.ad, %bb.f ] ; 2 uses
  %i.af = load i32, ptr %i.x, align 4, !tbaa !659
  %.not.i.i30 = icmp ult i32 %i.ae, %i.af
  br i1 %.not.i.i30, label %bb.h, label %bb.g, !prof !303

bb.g:                                             ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 2, i64 %i.f)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit32

bb.h:                                             ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit
  %i.ag = zext i32 %i.ae to i64
end_hunk_5
