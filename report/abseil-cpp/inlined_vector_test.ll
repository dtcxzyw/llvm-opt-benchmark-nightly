Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/inlined_vector_test?download=true
inline.NumInlined: 27452
inline.NumDeleted: 7595
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 191
loop-unroll.NumUnrolled: 288
begin_hunk_0_@_ZN12_GLOBAL__N_118IntVec_Insert_Test8TestBodyEv:bb.a
  br i1 %.not.i.i.i612, label %_ZNSt6vectorIiSaIiEED2Ev.exit614, label %bb.ku

bb.ku:                                            ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit611
  %i.ayb = load ptr, ptr %i.az, align 8, !tbaa !321
  %i.ayc = ptrtoint ptr %i.ayb to i64
  %i.ayd = ptrtoint ptr %i.aya to i64
  %i.aye = sub i64 %i.ayc, %i.ayd
  call void @_ZdlPvm(ptr noundef nonnull %i.aya, i64 noundef %i.aye) #39
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit614

_ZNSt6vectorIiSaIiEED2Ev.exit614:                 ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit611, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #36
  br i1 %.not.i, label %_ZN12_GLOBAL__N_14FillISt6vectorIiSaIiEEEEvPT_mi.exit631.thread, label %.lr.ph.i616

_ZN12_GLOBAL__N_14FillISt6vectorIiSaIiEEEEvPT_mi.exit631.thread: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit614
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #36
  store i64 0, ptr %47, align 8, !tbaa !210
  br label %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit642

.lr.ph.i616:                                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit614, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i621
  %.sroa.01169.2 = phi ptr [ %.sroa.01169.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i621 ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit614 ] ; 7 uses
  %.sroa.261179.2 = phi ptr [ %.sroa.261179.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i621 ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit614 ] ; 4 uses
  %i.ayf = phi ptr [ %i.ayy, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i621 ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit614 ] ; 3 uses
  %i.ayg = phi ptr [ %.sroa.141177.0, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i621 ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit614 ] ; 3 uses
  %.06.i619 = phi i64 [ %i.ayz, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i621 ], [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit614 ] ; 2 uses
  %i.ayh = trunc nuw nsw i64 %.06.i619 to i32     ; 2 uses
  %.not.i.i.i620 = icmp eq ptr %i.ayg, %i.ayf
  br i1 %.not.i.i.i620, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %.lr.ph.i616
  store i32 %i.ayh, ptr %i.ayg, align 4, !tbaa !211
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i621

bb.kw:                                            ; preds = %.lr.ph.i616
  %i.ayi = ptrtoint ptr %i.ayf to i64
  %i.ayj = ptrtoint ptr %.sroa.01169.2 to i64     ; 2 uses
  %i.ayk = sub i64 %i.ayi, %i.ayj                 ; 5 uses
  %i.ayl = icmp eq i64 %i.ayk, 9223372036854775804
  br i1 %i.ayl, label %bb.kx, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i623

bb.kx:                                            ; preds = %bb.kw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.314) #38
          to label %.noexc629 unwind label %.loopexit.split-lp1339

.noexc629:                                        ; preds = %bb.kx
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i623: ; preds = %bb.kw
  %i.aym = ashr exact i64 %i.ayk, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i.i624 = call i64 @llvm.umax.i64(i64 %i.aym, i64 1)
  %i.ayn = add nsw i64 %.sroa.speculated.i.i.i.i.i624, %i.aym ; 2 uses
  %i.ayo = icmp ult i64 %i.ayn, %i.aym
  %i.ayp = call i64 @llvm.umin.i64(i64 %i.ayn, i64 2305843009213693951)
  %i.ayq = select i1 %i.ayo, i64 2305843009213693951, i64 %i.ayp ; 3 uses
  %.not.i.i.i.i.i625 = icmp ne i64 %i.ayq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i625)
  %i.ayr = shl nuw nsw i64 %i.ayq, 2
  %i.ays = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ayr) #41
          to label %.noexc630 unwind label %.loopexit1338 ; 4 uses

.noexc630:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i623
  %i.ayt = getelementptr inbounds i8, ptr %i.ays, i64 %i.ayk ; 2 uses
  store i32 %i.ayh, ptr %i.ayt, align 4, !tbaa !211
  %i.ayu = icmp sgt i64 %i.ayk, 0
  br i1 %i.ayu, label %bb.ky, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i626

bb.ky:                                            ; preds = %.noexc630
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ays, ptr align 4 %.sroa.01169.2, i64 %i.ayk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i626

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i626: ; preds = %bb.ky, %.noexc630
  %.not.i17.i.i.i.i627 = icmp eq ptr %.sroa.01169.2, null
  br i1 %.not.i17.i.i.i.i627, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i628, label %bb.kz

bb.kz:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i626
  %i.ayv = ptrtoint ptr %.sroa.261179.2 to i64
  %i.ayw = sub i64 %i.ayv, %i.ayj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01169.2, i64 noundef %i.ayw) #39
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i628

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i628: ; preds = %bb.kz, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i626
  %i.ayx = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %i.ayq ; 2 uses
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i621

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i621:      ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i628, %bb.kv
  %.sroa.01169.3 = phi ptr [ %i.ays, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i628 ], [ %.sroa.01169.2, %bb.kv ] ; 3 uses
  %.pn1321 = phi ptr [ %i.ayt, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i628 ], [ %i.ayg, %bb.kv ]
  %.sroa.261179.3 = phi ptr [ %i.ayx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i628 ], [ %.sroa.261179.2, %bb.kv ] ; 3 uses
  %i.ayy = phi ptr [ %i.ayx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i628 ], [ %i.ayf, %bb.kv ]
  %.sroa.141177.0 = getelementptr inbounds nuw i8, ptr %.pn1321, i64 4 ; 2 uses
  %i.ayz = add nuw nsw i64 %.06.i619, 1           ; 2 uses
  %exitcond.not.i622 = icmp eq i64 %i.ayz, %.05589
  br i1 %exitcond.not.i622, label %.lr.ph.i633, label %.lr.ph.i616, !llvm.loop !1608

.lr.ph.i633:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i621
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #36
  store i64 0, ptr %47, align 8, !tbaa !210
  br label %bb.la

bb.la:                                            ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i639, %.lr.ph.i633
  %.05.i634 = phi i64 [ 0, %.lr.ph.i633 ], [ %i.azi, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i639 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  %i.aza = trunc i64 %.05.i634 to i32             ; 2 uses
  store i32 %i.aza, ptr %i.d, align 4, !tbaa !211
  %i.azb = load i64, ptr %47, align 8, !tbaa !197, !noalias !1780 ; 3 uses
  %i.azc = trunc i64 %i.azb to i1                 ; 2 uses
  %i.azd = load i64, ptr %i.bi, align 8, !noalias !1780
  %.sink.i.i.i.i.i635 = select i1 %i.azc, i64 %i.azd, i64 8
  %.sink1.i.i.i.i.i636 = lshr i64 %i.azb, 1       ; 2 uses
  %.not.i.i.i.i637 = icmp eq i64 %.sink1.i.i.i.i.i636, %.sink.i.i.i.i.i635
  br i1 %.not.i.i.i.i637, label %bb.lc, label %bb.lb, !prof !212

bb.lb:                                            ; preds = %bb.la
  %i.aze = load ptr, ptr %i.bj, align 8, !noalias !1780
  %.sink2.i.i.i.i.i638 = select i1 %i.azc, ptr %i.aze, ptr %i.bj
  %i.azf = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i.i.i.i.i638, i64 %.sink1.i.i.i.i.i636
  store i32 %i.aza, ptr %i.azf, align 4, !tbaa !211
  %i.azg = add i64 %i.azb, 2
  store i64 %i.azg, ptr %47, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i639

bb.lc:                                            ; preds = %bb.la
  %i.azh = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm8ESaIiEE15EmplaceBackSlowIJiEEERiDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %47, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i639 unwind label %bb.nh ; 0 uses

_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i639: ; preds = %bb.lc, %bb.lb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  %i.azi = add nuw nsw i64 %.05.i634, 1           ; 2 uses
  %exitcond.not.i640 = icmp eq i64 %i.azi, %.05589
  br i1 %exitcond.not.i640, label %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit642, label %bb.la, !llvm.loop !4

_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit642: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i639, %_ZN12_GLOBAL__N_14FillISt6vectorIiSaIiEEEEvPT_mi.exit631.thread
  %.sroa.261179.41297 = phi ptr [ null, %_ZN12_GLOBAL__N_14FillISt6vectorIiSaIiEEEEvPT_mi.exit631.thread ], [ %.sroa.261179.3, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i639 ] ; 6 uses
  %.sroa.141177.11296 = phi ptr [ null, %_ZN12_GLOBAL__N_14FillISt6vectorIiSaIiEEEEvPT_mi.exit631.thread ], [ %.sroa.141177.0, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i639 ] ; 10 uses
  %.sroa.01169.41295 = phi ptr [ null, %_ZN12_GLOBAL__N_14FillISt6vectorIiSaIiEEEEvPT_mi.exit631.thread ], [ %.sroa.01169.3, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i639 ] ; 11 uses
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01169.41295, i64 %.0605588 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #36
  store i32 9999, ptr %i.r, align 4, !tbaa !211
  store i32 8888, ptr %i.bk, align 4, !tbaa !211
  store i32 7777, ptr %i.bl, align 4, !tbaa !211
  %i.azk = ptrtoint ptr %i.azj to i64             ; 3 uses
  %i.azl = ptrtoint ptr %.sroa.01169.41295 to i64 ; 2 uses
  %i.azm = ptrtoint ptr %.sroa.261179.41297 to i64 ; 2 uses
  %i.azn = ptrtoint ptr %.sroa.141177.11296 to i64 ; 4 uses
  %i.azo = sub i64 %i.azm, %i.azn
  %.not54.i = icmp ult i64 %i.azo, 12
  br i1 %.not54.i, label %bb.ln, label %bb.ld

bb.ld:                                            ; preds = %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit642
  %i.azp = sub i64 %i.azn, %i.azk                 ; 12 uses
  %i.azq = ashr exact i64 %i.azp, 2               ; 3 uses
  %i.azr = icmp ugt i64 %i.azq, 3
  br i1 %i.azr, label %bb.le, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i

bb.le:                                            ; preds = %bb.ld
  %i.azs = getelementptr inbounds i8, ptr %.sroa.141177.11296, i64 -12 ; 2 uses
  %i.azt = ptrtoint ptr %i.azs to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.141177.11296, ptr noundef nonnull align 4 dereferenceable(12) %i.azs, i64 12, i1 false)
  %i.azu = getelementptr inbounds nuw i8, ptr %.sroa.141177.11296, i64 12
  %i.azv = sub i64 %i.azt, %i.azk                 ; 3 uses
  %i.azw = ashr exact i64 %i.azv, 2               ; 2 uses
  %i.azx = icmp sgt i64 %i.azw, 1
  br i1 %i.azx, label %bb.lf, label %bb.lg, !prof !224

bb.lf:                                            ; preds = %bb.le
  %i.azy = sub nsw i64 0, %i.azw
  %i.azz = getelementptr inbounds [4 x i8], ptr %.sroa.141177.11296, i64 %i.azy
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.azz, ptr align 4 %i.azj, i64 %i.azv, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.lg:                                            ; preds = %bb.le
  %i.baa = icmp eq i64 %i.azv, 4
  br i1 %i.baa, label %bb.lh, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.lh:                                            ; preds = %bb.lg
  %i.bab = getelementptr inbounds i8, ptr %.sroa.141177.11296, i64 -4
  %i.bac = load i32, ptr %i.azj, align 4, !tbaa !211
  store i32 %i.bac, ptr %i.bab, align 4, !tbaa !211
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.lh, %bb.lg, %bb.lf
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.azj, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false)
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EESt16initializer_listIiE.exit

_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.ld
  %i.bad = icmp eq i64 %i.azp, 4
  %i.bae = getelementptr inbounds i8, ptr %i.r, i64 %i.azp ; 2 uses
  %i.baf = icmp slt i64 %i.azp, 8
  br i1 %i.baf, label %_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E.exit.i, label %bb.li, !prof !224

bb.li:                                            ; preds = %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.bag = icmp eq i64 %i.azp, 8
  br i1 %i.bag, label %bb.lj, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55.i

bb.lj:                                            ; preds = %bb.li
  %i.bah = load i32, ptr %i.bae, align 4, !tbaa !211
  store i32 %i.bah, ptr %.sroa.141177.11296, align 4, !tbaa !211
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55.i

_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E.exit.i: ; preds = %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i
  %gepdiff = sub nuw nsw i64 12, %i.azp
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.141177.11296, ptr nonnull align 4 %i.bae, i64 %gepdiff, i1 false)
  %i.bai = sub nuw nsw i64 3, %i.azq
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.141177.11296, i64 %i.bai ; 4 uses
  %i.bak = icmp sgt i64 %i.azp, 4
  br i1 %i.bak, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55.i.thread9434, label %bb.lk, !prof !1781

bb.lk:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E.exit.i
  br i1 %i.bad, label %bb.lm, label %bb.ll

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55.i: ; preds = %bb.lj, %bb.li
  %i.bal = sub nuw nsw i64 3, %i.azq
  %i.bam = getelementptr inbounds nuw [4 x i8], ptr %.sroa.141177.11296, i64 %i.bal
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55.i.thread9434

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55.i.thread9434: ; preds = %_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E.exit.i, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55.i
  %.sink11592 = phi ptr [ %i.bam, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55.i ], [ %i.baj, %_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E.exit.i ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sink11592, ptr align 4 %i.azj, i64 %i.azp, i1 false)
  %i.ban = getelementptr inbounds nuw i8, ptr %.sink11592, i64 %i.azp
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.azj, ptr nonnull align 4 %i.r, i64 %i.azp, i1 false)
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EESt16initializer_listIiE.exit

bb.ll:                                            ; preds = %bb.lk
  %i.bao = getelementptr inbounds nuw i8, ptr %i.baj, i64 %i.azp
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EESt16initializer_listIiE.exit

bb.lm:                                            ; preds = %bb.lk
  %i.bap = load i32, ptr %i.azj, align 4, !tbaa !211
  store i32 %i.bap, ptr %i.baj, align 4, !tbaa !211
  %i.baq = getelementptr inbounds nuw i8, ptr %i.baj, i64 %i.azp
  %i.bar = load i32, ptr %i.r, align 4, !tbaa !211
  store i32 %i.bar, ptr %i.azj, align 4, !tbaa !211
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EESt16initializer_listIiE.exit

bb.ln:                                            ; preds = %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit642
  %i.bas = sub i64 %i.azn, %i.azl
  %i.bat = ashr exact i64 %i.bas, 2               ; 4 uses
  %i.bau = add nsw i64 %i.bat, -2305843009213693949
  %i.bav = icmp ult i64 %i.bau, 3
  br i1 %i.bav, label %bb.lo, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i986

bb.lo:                                            ; preds = %bb.ln
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.331) #38
          to label %.noexc990 unwind label %.loopexit.split-lp1450

.noexc990:                                        ; preds = %bb.lo
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i986: ; preds = %bb.ln
  %.sroa.speculated.i.i987 = call i64 @llvm.umax.i64(i64 %i.bat, i64 3)
  %i.baw = add nsw i64 %.sroa.speculated.i.i987, %i.bat ; 2 uses
  %i.bax = icmp ult i64 %i.baw, %i.bat
  %i.bay = call i64 @llvm.umin.i64(i64 %i.baw, i64 2305843009213693951)
  %i.baz = select i1 %i.bax, i64 2305843009213693951, i64 %i.bay ; 3 uses
  %.not.i.i988 = icmp eq i64 %i.baz, 0
  br i1 %.not.i.i988, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %bb.lp

bb.lp:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i986
  %i.bba = shl nuw nsw i64 %i.baz, 2
  %i.bbb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bba) #41
          to label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i unwind label %.loopexit1449

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.lp, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i986
  %i.bbc = phi ptr [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i986 ], [ %i.bbb, %bb.lp ] ; 5 uses
  %i.bbd = icmp samesign ugt i64 %.0605588, 1
  br i1 %i.bbd, label %bb.lq, label %bb.lr, !prof !224

bb.lq:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bbc, ptr align 4 %.sroa.01169.41295, i64 %.idx1312.pre-phi, i1 false)
  br label %bb.lt

bb.lr:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.bbe = icmp eq i64 %.0605588, 1
  br i1 %i.bbe, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  %i.bbf = load i32, ptr %.sroa.01169.41295, align 4, !tbaa !211
  store i32 %i.bbf, ptr %i.bbc, align 4, !tbaa !211
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %bb.lr, %bb.lq
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbc, i64 %.idx1312.pre-phi ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bbg, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false)
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 12 ; 3 uses
  %i.bbi = sub i64 %i.azn, %i.azk                 ; 4 uses
  %i.bbj = icmp sgt i64 %i.bbi, 4
  br i1 %i.bbj, label %bb.lu, label %bb.lv, !prof !224

bb.lu:                                            ; preds = %bb.lt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bbh, ptr align 4 %i.azj, i64 %i.bbi, i1 false)
  br label %bb.lw

bb.lv:                                            ; preds = %bb.lt
  %i.bbk = icmp eq i64 %i.bbi, 4
  br i1 %i.bbk, label %.thread1298, label %bb.lw

.thread1298:                                      ; preds = %bb.lv
  %i.bbl = load i32, ptr %i.azj, align 4, !tbaa !211
  store i32 %i.bbl, ptr %i.bbh, align 4, !tbaa !211
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbg, i64 16
  br label %bb.lx

bb.lw:                                            ; preds = %bb.lv, %bb.lu
  %i.bbn = getelementptr inbounds i8, ptr %i.bbh, i64 %i.bbi ; 2 uses
  %.not.i59.i = icmp eq ptr %.sroa.01169.41295, null
  br i1 %.not.i59.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i989, label %bb.lx

bb.lx:                                            ; preds = %.thread1298, %bb.lw
  %i.bbo = phi ptr [ %i.bbm, %.thread1298 ], [ %i.bbn, %bb.lw ]
  %i.bbp = sub i64 %i.azm, %i.azl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01169.41295, i64 noundef %i.bbp) #39
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i989

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i989: ; preds = %bb.lx, %bb.lw
  %i.bbq = phi ptr [ %i.bbo, %bb.lx ], [ %i.bbn, %bb.lw ]
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr %i.bbc, i64 %i.baz
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EESt16initializer_listIiE.exit

_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EESt16initializer_listIiE.exit: ; preds = %bb.ll, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55.i.thread9434, %bb.lm, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i989
  %.sroa.01169.5 = phi ptr [ %i.bbc, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i989 ], [ %.sroa.01169.41295, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.01169.41295, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55.i.thread9434 ], [ %.sroa.01169.41295, %bb.lm ], [ %.sroa.01169.41295, %bb.ll ] ; 7 uses
  %.sroa.141177.2 = phi ptr [ %i.bbq, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i989 ], [ %i.azu, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ %i.ban, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55.i.thread9434 ], [ %i.baq, %bb.lm ], [ %i.bao, %bb.ll ] ; 2 uses
  %.sroa.261179.5 = phi ptr [ %i.bbr, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i989 ], [ %.sroa.261179.41297, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.261179.41297, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55.i.thread9434 ], [ %.sroa.261179.41297, %bb.lm ], [ %.sroa.261179.41297, %bb.ll ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #36
  store ptr %i.bm, ptr %49, align 8, !tbaa !196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.bm, ptr noundef nonnull align 1 dereferenceable(14) @.str.313, i64 14, i1 false)
  store i64 14, ptr %i.bn, align 8, !tbaa !199
  store i8 0, ptr %i.cz, align 2, !tbaa !198
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bo) #36
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.bo, align 8, !tbaa !169
  store ptr null, ptr %i.bp, align 8, !tbaa !1787
  store i8 0, ptr %i.bq, align 8, !tbaa !1788
  store i8 0, ptr %i.br, align 1, !tbaa !1789
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i8 0, i64 32, i1 false)
  store ptr %i.bt, ptr %48, align 8, !tbaa !169
  %i.bbs = load i64, ptr %i.bv, align 8
  %i.bbt = getelementptr inbounds i8, ptr %48, i64 %i.bbs
  store ptr %i.bu, ptr %i.bbt, align 8, !tbaa !169
  store i64 0, ptr %i.bw, align 8, !tbaa !232
  %i.bbu = load ptr, ptr %48, align 8, !tbaa !169
  %i.bbv = getelementptr i8, ptr %i.bbu, i64 -24
  %i.bbw = load i64, ptr %i.bbv, align 8
  %i.bbx = getelementptr inbounds i8, ptr %48, i64 %i.bbw
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bbx, ptr noundef null)
          to label %_ZNSiC2Ev.exit.i unwind label %bb.me

_ZNSiC2Ev.exit.i:                                 ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EESt16initializer_listIiE.exit
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %48, align 8, !tbaa !169
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.bo, align 8, !tbaa !169
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bx, align 8, !tbaa !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.by, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bz) #36
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bx, align 8, !tbaa !169
  store i32 0, ptr %i.ca, align 8, !tbaa !1792
  %i.bby = load ptr, ptr %49, align 8, !tbaa !195 ; 3 uses
  %i.bbz = load i64, ptr %i.bn, align 8, !tbaa !199 ; 5 uses
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !196
  %i.bca = icmp eq ptr %i.bby, null
  %i.bcb = icmp ne i64 %i.bbz, 0
  %or.cond.i.i992 = and i1 %i.bca, %i.bcb
  br i1 %or.cond.i.i992, label %bb.ly, label %bb.lz

bb.ly:                                            ; preds = %_ZNSiC2Ev.exit.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.332) #38
          to label %.noexc.i997 unwind label %.loopexit.split-lp1455

.noexc.i997:                                      ; preds = %bb.ly
  unreachable

bb.lz:                                            ; preds = %_ZNSiC2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 %i.bbz, ptr %i.a, align 8, !tbaa !197
  %i.bcc = icmp ugt i64 %i.bbz, 15
  br i1 %i.bcc, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.lz
  %i.bcd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8.i unwind label %.loopexit1454 ; 2 uses

.noexc8.i:                                        ; preds = %.noexc.i.i
  store ptr %i.bcd, ptr %i.cb, align 8, !tbaa !195
  %i.bce = load i64, ptr %i.a, align 8, !tbaa !197
  store i64 %i.bce, ptr %i.cc, align 8, !tbaa !198
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc8.i, %bb.lz
  %i.bcf = phi ptr [ %i.bcd, %.noexc8.i ], [ %i.cc, %bb.lz ] ; 2 uses
  switch i64 %i.bbz, label %bb.mb [
    i64 1, label %bb.ma
    i64 0, label %bb.mc
  ]

bb.ma:                                            ; preds = %._crit_edge.i.i.i
  %i.bcg = load i8, ptr %i.bby, align 1, !tbaa !198
  store i8 %i.bcg, ptr %i.bcf, align 1, !tbaa !198
  br label %bb.mc

bb.mb:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bcf, ptr align 1 %i.bby, i64 %i.bbz, i1 false)
  br label %bb.mc
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_118IntVec_Insert_Test8TestBodyEv:bb.a
  br i1 %.not.i.i.i740, label %_ZNSt6vectorIiSaIiEED2Ev.exit742, label %bb.oq

bb.oq:                                            ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit739
  %i.boe = ptrtoint ptr %.sroa.261179.5 to i64
  %i.bof = sub i64 %i.boe, %i.bjd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01169.5, i64 noundef %i.bof) #39
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit742

_ZNSt6vectorIiSaIiEED2Ev.exit742:                 ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit739, %bb.oq
  br i1 %.not.i, label %_ZN12_GLOBAL__N_14FillISt6vectorIiSaIiEEEEvPT_mi.exit759.thread, label %.lr.ph.i744

_ZN12_GLOBAL__N_14FillISt6vectorIiSaIiEEEEvPT_mi.exit759.thread: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit742
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #36
  store i64 0, ptr %58, align 8, !tbaa !210
  br label %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit770

.lr.ph.i744:                                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit742, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i749
  %.sroa.01145.2 = phi ptr [ %.sroa.01145.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i749 ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit742 ] ; 7 uses
  %.sroa.26.2 = phi ptr [ %.sroa.26.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i749 ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit742 ] ; 4 uses
  %i.bog = phi ptr [ %i.boz, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i749 ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit742 ] ; 3 uses
  %i.boh = phi ptr [ %.sroa.14.0, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i749 ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit742 ] ; 3 uses
  %.06.i747 = phi i64 [ %i.bpa, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i749 ], [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit742 ] ; 2 uses
  %i.boi = trunc nuw nsw i64 %.06.i747 to i32     ; 2 uses
  %.not.i.i.i748 = icmp eq ptr %i.boh, %i.bog
  br i1 %.not.i.i.i748, label %bb.os, label %bb.or

bb.or:                                            ; preds = %.lr.ph.i744
  store i32 %i.boi, ptr %i.boh, align 4, !tbaa !211
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i749

bb.os:                                            ; preds = %.lr.ph.i744
  %i.boj = ptrtoint ptr %i.bog to i64
  %i.bok = ptrtoint ptr %.sroa.01145.2 to i64     ; 2 uses
  %i.bol = sub i64 %i.boj, %i.bok                 ; 5 uses
  %i.bom = icmp eq i64 %i.bol, 9223372036854775804
  br i1 %i.bom, label %bb.ot, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i751

bb.ot:                                            ; preds = %bb.os
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.314) #38
          to label %.noexc757 unwind label %.loopexit.split-lp

.noexc757:                                        ; preds = %bb.ot
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i751: ; preds = %bb.os
  %i.bon = ashr exact i64 %i.bol, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i.i752 = call i64 @llvm.umax.i64(i64 %i.bon, i64 1)
  %i.boo = add nsw i64 %.sroa.speculated.i.i.i.i.i752, %i.bon ; 2 uses
  %i.bop = icmp ult i64 %i.boo, %i.bon
  %i.boq = call i64 @llvm.umin.i64(i64 %i.boo, i64 2305843009213693951)
  %i.bor = select i1 %i.bop, i64 2305843009213693951, i64 %i.boq ; 3 uses
  %.not.i.i.i.i.i753 = icmp ne i64 %i.bor, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i753)
  %i.bos = shl nuw nsw i64 %i.bor, 2
  %i.bot = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bos) #41
          to label %.noexc758 unwind label %.loopexit ; 4 uses

.noexc758:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i751
  %i.bou = getelementptr inbounds i8, ptr %i.bot, i64 %i.bol ; 2 uses
  store i32 %i.boi, ptr %i.bou, align 4, !tbaa !211
  %i.bov = icmp sgt i64 %i.bol, 0
  br i1 %i.bov, label %bb.ou, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i754

bb.ou:                                            ; preds = %.noexc758
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bot, ptr align 4 %.sroa.01145.2, i64 %i.bol, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i754

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i754: ; preds = %bb.ou, %.noexc758
  %.not.i17.i.i.i.i755 = icmp eq ptr %.sroa.01145.2, null
  br i1 %.not.i17.i.i.i.i755, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i756, label %bb.ov

bb.ov:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i754
  %i.bow = ptrtoint ptr %.sroa.26.2 to i64
  %i.box = sub i64 %i.bow, %i.bok
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01145.2, i64 noundef %i.box) #39
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i756

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i756: ; preds = %bb.ov, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i754
  %i.boy = getelementptr inbounds nuw [4 x i8], ptr %i.bot, i64 %i.bor ; 2 uses
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i749

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i749:      ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i756, %bb.or
  %.sroa.01145.3 = phi ptr [ %i.bot, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i756 ], [ %.sroa.01145.2, %bb.or ] ; 3 uses
  %.pn1327 = phi ptr [ %i.bou, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i756 ], [ %i.boh, %bb.or ]
  %.sroa.26.3 = phi ptr [ %i.boy, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i756 ], [ %.sroa.26.2, %bb.or ] ; 3 uses
  %i.boz = phi ptr [ %i.boy, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i756 ], [ %i.bog, %bb.or ]
  %.sroa.14.0 = getelementptr inbounds nuw i8, ptr %.pn1327, i64 4 ; 2 uses
  %i.bpa = add nuw nsw i64 %.06.i747, 1           ; 2 uses
  %exitcond.not.i750 = icmp eq i64 %i.bpa, %.05589
  br i1 %exitcond.not.i750, label %.lr.ph.i761, label %.lr.ph.i744, !llvm.loop !1608

.lr.ph.i761:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i749
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #36
  store i64 0, ptr %58, align 8, !tbaa !210
  br label %bb.ow

bb.ow:                                            ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i767, %.lr.ph.i761
  %.05.i762 = phi i64 [ 0, %.lr.ph.i761 ], [ %i.bpj, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i767 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.bpb = trunc i64 %.05.i762 to i32             ; 2 uses
  store i32 %i.bpb, ptr %i.b, align 4, !tbaa !211
  %i.bpc = load i64, ptr %58, align 8, !tbaa !197, !noalias !1802 ; 3 uses
  %i.bpd = trunc i64 %i.bpc to i1                 ; 2 uses
  %i.bpe = load i64, ptr %i.cp, align 8, !noalias !1802
  %.sink.i.i.i.i.i763 = select i1 %i.bpd, i64 %i.bpe, i64 8
  %.sink1.i.i.i.i.i764 = lshr i64 %i.bpc, 1       ; 2 uses
  %.not.i.i.i.i765 = icmp eq i64 %.sink1.i.i.i.i.i764, %.sink.i.i.i.i.i763
  br i1 %.not.i.i.i.i765, label %bb.oy, label %bb.ox, !prof !212

bb.ox:                                            ; preds = %bb.ow
  %i.bpf = load ptr, ptr %i.cq, align 8, !noalias !1802
  %.sink2.i.i.i.i.i766 = select i1 %i.bpd, ptr %i.bpf, ptr %i.cq
  %i.bpg = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i.i.i.i.i766, i64 %.sink1.i.i.i.i.i764
  store i32 %i.bpb, ptr %i.bpg, align 4, !tbaa !211
  %i.bph = add i64 %i.bpc, 2
  store i64 %i.bph, ptr %58, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i767

bb.oy:                                            ; preds = %bb.ow
  %i.bpi = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm8ESaIiEE15EmplaceBackSlowIJiEEERiDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %58, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i767 unwind label %bb.qv ; 0 uses

_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i767: ; preds = %bb.oy, %bb.ox
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.bpj = add nuw nsw i64 %.05.i762, 1           ; 2 uses
  %exitcond.not.i768 = icmp eq i64 %i.bpj, %.05589
  br i1 %exitcond.not.i768, label %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit770, label %bb.ow, !llvm.loop !4

_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit770: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i767, %_ZN12_GLOBAL__N_14FillISt6vectorIiSaIiEEEEvPT_mi.exit759.thread
  %.sroa.26.41305 = phi ptr [ null, %_ZN12_GLOBAL__N_14FillISt6vectorIiSaIiEEEEvPT_mi.exit759.thread ], [ %.sroa.26.3, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i767 ] ; 6 uses
  %.sroa.14.11304 = phi ptr [ null, %_ZN12_GLOBAL__N_14FillISt6vectorIiSaIiEEEEvPT_mi.exit759.thread ], [ %.sroa.14.0, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i767 ] ; 11 uses
  %.sroa.01145.41303 = phi ptr [ null, %_ZN12_GLOBAL__N_14FillISt6vectorIiSaIiEEEEvPT_mi.exit759.thread ], [ %.sroa.01145.3, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i767 ] ; 11 uses
  %i.bpk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01145.41303, i64 %.0605588 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #36
  store i32 9999, ptr %i.u, align 8, !tbaa !211
  store i32 8888, ptr %i.cr, align 4, !tbaa !211
  %i.bpl = ptrtoint ptr %i.bpk to i64             ; 3 uses
  %i.bpm = ptrtoint ptr %.sroa.01145.41303 to i64 ; 2 uses
  %i.bpn = ptrtoint ptr %.sroa.26.41305 to i64    ; 2 uses
  %i.bpo = ptrtoint ptr %.sroa.14.11304 to i64    ; 4 uses
  %i.bpp = sub i64 %i.bpn, %i.bpo
  %.not54.i1062 = icmp ult i64 %i.bpp, 8
  br i1 %.not54.i1062, label %bb.pi, label %bb.oz

bb.oz:                                            ; preds = %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit770
  %i.bpq = sub i64 %i.bpo, %i.bpl                 ; 10 uses
  %i.bpr = ashr exact i64 %i.bpq, 2               ; 4 uses
  %i.bps = icmp ugt i64 %i.bpr, 2
  br i1 %i.bps, label %bb.pa, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i1064

bb.pa:                                            ; preds = %bb.oz
  %i.bpt = getelementptr inbounds i8, ptr %.sroa.14.11304, i64 -8 ; 2 uses
  %i.bpu = ptrtoint ptr %i.bpt to i64
  %i.bpv = load i64, ptr %i.bpt, align 4
  store i64 %i.bpv, ptr %.sroa.14.11304, align 4
  %i.bpw = getelementptr inbounds nuw i8, ptr %.sroa.14.11304, i64 8
  %i.bpx = sub i64 %i.bpu, %i.bpl                 ; 3 uses
  %i.bpy = ashr exact i64 %i.bpx, 2               ; 2 uses
  %i.bpz = icmp sgt i64 %i.bpy, 1
  br i1 %i.bpz, label %bb.pb, label %bb.pc, !prof !224

bb.pb:                                            ; preds = %bb.pa
  %i.bqa = sub nsw i64 0, %i.bpy
  %i.bqb = getelementptr inbounds [4 x i8], ptr %.sroa.14.11304, i64 %i.bqa
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bqb, ptr align 4 %i.bpk, i64 %i.bpx, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i1070

bb.pc:                                            ; preds = %bb.pa
  %i.bqc = icmp eq i64 %i.bpx, 4
  br i1 %i.bqc, label %bb.pd, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i1070

bb.pd:                                            ; preds = %bb.pc
  %i.bqd = getelementptr inbounds i8, ptr %.sroa.14.11304, i64 -4
  %i.bqe = load i32, ptr %i.bpk, align 4, !tbaa !211
  store i32 %i.bqe, ptr %i.bqd, align 4, !tbaa !211
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i1070

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i1070: ; preds = %bb.pd, %bb.pc, %bb.pb
  %i.bqf = load i64, ptr %i.u, align 8
  store i64 %i.bqf, ptr %i.bpk, align 4
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EESt16initializer_listIiE.exit772

_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i1064: ; preds = %bb.oz
  %i.bqg = getelementptr inbounds i8, ptr %i.u, i64 %i.bpq ; 2 uses
  %i.bqh = icmp slt i64 %i.bpq, 4
  br i1 %i.bqh, label %bb.pg, label %bb.pe, !prof !224

bb.pe:                                            ; preds = %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i1064
  %i.bqi = icmp eq i64 %i.bpq, 4
  br i1 %i.bqi, label %bb.ph, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.bqj = sub nuw nsw i64 2, %i.bpr
  %i.bqk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.11304, i64 %i.bqj ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bqk, ptr align 4 %i.bpk, i64 %i.bpq, i1 false)
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqk, i64 %i.bpq
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bpk, ptr nonnull align 8 %i.u, i64 %i.bpq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EESt16initializer_listIiE.exit772

bb.pg:                                            ; preds = %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i1064
  %gepdiff1329 = sub nuw nsw i64 8, %i.bpq
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.14.11304, ptr nonnull align 4 %i.bqg, i64 %gepdiff1329, i1 false)
  %i.bqm = sub nuw nsw i64 2, %i.bpr
  %i.bqn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.11304, i64 %i.bqm
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bqn, i64 %i.bpq
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EESt16initializer_listIiE.exit772

bb.ph:                                            ; preds = %bb.pe
  %i.bqp = load i32, ptr %i.bqg, align 4, !tbaa !211
  store i32 %i.bqp, ptr %.sroa.14.11304, align 4, !tbaa !211
  %i.bqq = sub nuw nsw i64 2, %i.bpr
  %i.bqr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.11304, i64 %i.bqq ; 2 uses
  %i.bqs = load i32, ptr %i.bpk, align 4, !tbaa !211
  store i32 %i.bqs, ptr %i.bqr, align 4, !tbaa !211
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqr, i64 %i.bpq
  %i.bqu = load i32, ptr %i.u, align 8, !tbaa !211
  store i32 %i.bqu, ptr %i.bpk, align 4, !tbaa !211
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EESt16initializer_listIiE.exit772

bb.pi:                                            ; preds = %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit770
  %i.bqv = sub i64 %i.bpo, %i.bpm                 ; 2 uses
  %i.bqw = and i64 %i.bqv, -8
  %i.bqx = icmp eq i64 %i.bqw, 9223372036854775800
  br i1 %i.bqx, label %bb.pj, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i1072

bb.pj:                                            ; preds = %bb.pi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.331) #38
          to label %.noexc1078 unwind label %.loopexit.split-lp1478

.noexc1078:                                       ; preds = %bb.pj
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i1072: ; preds = %bb.pi
  %i.bqy = ashr exact i64 %i.bqv, 2               ; 3 uses
  %.sroa.speculated.i.i1073 = call i64 @llvm.umax.i64(i64 %i.bqy, i64 2)
  %i.bqz = add nsw i64 %.sroa.speculated.i.i1073, %i.bqy ; 2 uses
  %i.bra = icmp ult i64 %i.bqz, %i.bqy
  %i.brb = call i64 @llvm.umin.i64(i64 %i.bqz, i64 2305843009213693951)
  %i.brc = select i1 %i.bra, i64 2305843009213693951, i64 %i.brb ; 3 uses
  %.not.i.i1074 = icmp eq i64 %i.brc, 0
  br i1 %.not.i.i1074, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i1075, label %bb.pk

bb.pk:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i1072
  %i.brd = shl nuw nsw i64 %i.brc, 2
  %i.bre = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.brd) #41
          to label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i1075 unwind label %.loopexit1477

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i1075: ; preds = %bb.pk, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i1072
  %i.brf = phi ptr [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i1072 ], [ %i.bre, %bb.pk ] ; 5 uses
  %i.brg = icmp samesign ugt i64 %.0605588, 1
  br i1 %i.brg, label %bb.pl, label %bb.pm, !prof !224

bb.pl:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i1075
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.brf, ptr align 4 %.sroa.01145.41303, i64 %.idx1312.pre-phi, i1 false)
  br label %bb.po

bb.pm:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i1075
  %i.brh = icmp eq i64 %.0605588, 1
  br i1 %i.brh, label %bb.pn, label %bb.po

bb.pn:                                            ; preds = %bb.pm
  %i.bri = load i32, ptr %.sroa.01145.41303, align 4, !tbaa !211
  store i32 %i.bri, ptr %i.brf, align 4, !tbaa !211
  br label %bb.po

bb.po:                                            ; preds = %bb.pn, %bb.pm, %bb.pl
  %i.brj = getelementptr inbounds nuw i8, ptr %i.brf, i64 %.idx1312.pre-phi ; 3 uses
  %i.brk = load i64, ptr %i.u, align 8
  store i64 %i.brk, ptr %i.brj, align 4
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brj, i64 8 ; 3 uses
  %i.brm = sub i64 %i.bpo, %i.bpl                 ; 4 uses
  %i.brn = icmp sgt i64 %i.brm, 4
  br i1 %i.brn, label %bb.pp, label %bb.pq, !prof !224

bb.pp:                                            ; preds = %bb.po
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.brl, ptr align 4 %i.bpk, i64 %i.brm, i1 false)
  br label %bb.pr

bb.pq:                                            ; preds = %bb.po
  %i.bro = icmp eq i64 %i.brm, 4
  br i1 %i.bro, label %.thread1306, label %bb.pr

.thread1306:                                      ; preds = %bb.pq
  %i.brp = load i32, ptr %i.bpk, align 4, !tbaa !211
  store i32 %i.brp, ptr %i.brl, align 4, !tbaa !211
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brj, i64 12
  br label %bb.ps

bb.pr:                                            ; preds = %bb.pq, %bb.pp
  %i.brr = getelementptr inbounds i8, ptr %i.brl, i64 %i.brm ; 2 uses
  %.not.i59.i1076 = icmp eq ptr %.sroa.01145.41303, null
  br i1 %.not.i59.i1076, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i1077, label %bb.ps

bb.ps:                                            ; preds = %.thread1306, %bb.pr
  %i.brs = phi ptr [ %i.brq, %.thread1306 ], [ %i.brr, %bb.pr ]
  %i.brt = sub i64 %i.bpn, %i.bpm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01145.41303, i64 noundef %i.brt) #39
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i1077

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i1077: ; preds = %bb.ps, %bb.pr
  %i.bru = phi ptr [ %i.brs, %bb.ps ], [ %i.brr, %bb.pr ]
  %i.brv = getelementptr inbounds nuw [4 x i8], ptr %i.brf, i64 %i.brc
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EESt16initializer_listIiE.exit772

_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EESt16initializer_listIiE.exit772: ; preds = %bb.pg, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i1070, %bb.pf, %bb.ph, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i1077
  %.sroa.01145.5 = phi ptr [ %i.brf, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i1077 ], [ %.sroa.01145.41303, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i1070 ], [ %.sroa.01145.41303, %bb.pf ], [ %.sroa.01145.41303, %bb.ph ], [ %.sroa.01145.41303, %bb.pg ] ; 7 uses
  %.sroa.14.2 = phi ptr [ %i.bru, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i1077 ], [ %i.bpw, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i1070 ], [ %i.bql, %bb.pf ], [ %i.bqt, %bb.ph ], [ %i.bqo, %bb.pg ] ; 2 uses
  %.sroa.26.5 = phi ptr [ %i.brv, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i1077 ], [ %.sroa.26.41305, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i1070 ], [ %.sroa.26.41305, %bb.pf ], [ %.sroa.26.41305, %bb.ph ], [ %.sroa.26.41305, %bb.pg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #36
  %i.brw = load i64, ptr %58, align 8, !tbaa !197 ; 2 uses
  %i.brx = trunc i64 %i.brw to i1                 ; 2 uses
  %i.bry = load ptr, ptr %i.cq, align 8
  %i.brz = select i1 %i.brx, ptr %i.bry, ptr %i.cq ; 7 uses
  %i.bsa = ptrtoaddr ptr %i.brz to i64
  %i.bsb = getelementptr i8, ptr %i.brz, i64 %.idx1312.pre-phi ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #36
  store i32 9999, ptr %i.w, align 8, !tbaa !211
  store i32 8888, ptr %i.cs, align 4, !tbaa !211
  %i.bsc = load i64, ptr %i.cp, align 8, !noalias !1803
  %.sink.i.i1082 = select i1 %i.brx, i64 %i.bsc, i64 8 ; 2 uses
  %.sink1.i.i1083 = lshr i64 %i.brw, 1            ; 9 uses
  %i.bsd = add nuw nsw i64 %.0605588, 2           ; 3 uses
  %i.bse = add nuw i64 %.sink1.i.i1083, 2         ; 4 uses
  %i.bsf = icmp ugt i64 %i.bse, %.sink.i.i1082
  br i1 %i.bsf, label %bb.pt, label %bb.pw

bb.pt:                                            ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EESt16initializer_listIiE.exit772
  %i.bsg = shl i64 %.sink.i.i1082, 1
  %.sroa.speculated.i.i1102 = call noundef i64 @llvm.umax.i64(i64 %i.bsg, i64 %i.bse) ; 4 uses
  %i.bsh = icmp ugt i64 %.sroa.speculated.i.i1102, 2305843009213693951
  br i1 %i.bsh, label %bb.pu, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i1103, !prof !212

bb.pu:                                            ; preds = %bb.pt
  %i.bsi = icmp ugt i64 %.sroa.speculated.i.i1102, 4611686018427387903
  br i1 %i.bsi, label %.noexc.i1118, label %.noexc44.i1117

.noexc.i1118:                                     ; preds = %bb.pu
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc1119 unwind label %.loopexit.split-lp1483

.noexc1119:                                       ; preds = %.noexc.i1118
  unreachable

.noexc44.i1117:                                   ; preds = %bb.pu
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc1120 unwind label %.loopexit.split-lp1483

.noexc1120:                                       ; preds = %.noexc44.i1117
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i1103: ; preds = %bb.pt
  %i.bsj = shl nuw nsw i64 %.sroa.speculated.i.i1102, 2
  %i.bsk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bsj) #41
          to label %.noexc1121 unwind label %.loopexit1482 ; 10 uses

.noexc1121:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i1103
  %i.bsl = ptrtoaddr ptr %i.bsk to i64            ; 2 uses
  %i.bsm = getelementptr i8, ptr %i.bsk, i64 %.idx1312.pre-phi ; 2 uses
  %i.bsn = load i64, ptr %i.w, align 8, !tbaa !211
  store i64 %i.bsn, ptr %i.bsm, align 4, !tbaa !211
  %.not.i.i46.i1105 = icmp eq i64 %.0605588, 0
  br i1 %.not.i.i46.i1105, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i1109, label %.lr.ph.i.i47.i1106.preheader

.lr.ph.i.i47.i1106.preheader:                     ; preds = %.noexc1121
  %min.iters.check13742 = icmp samesign ult i64 %.0605588, 8
  %i.bso = sub i64 %i.bsa, %i.bsl
  %diff.check13740 = icmp ugt i64 %i.bso, -32
  %or.cond13982 = select i1 %min.iters.check13742, i1 true, i1 %diff.check13740
  br i1 %or.cond13982, label %.lr.ph.i.i47.i1106.preheader13989, label %vector.ph13743

vector.ph13743:                                   ; preds = %.lr.ph.i.i47.i1106.preheader
  %n.vec13744 = and i64 %.0605588, 9223372036854775800 ; 4 uses
  %i.bsp = shl i64 %n.vec13744, 2
  %i.bsq = getelementptr i8, ptr %i.brz, i64 %i.bsp ; 2 uses
  br label %vector.body13745

vector.body13745:                                 ; preds = %vector.body13745, %vector.ph13743
  %index13746 = phi i64 [ 0, %vector.ph13743 ], [ %index.next13750, %vector.body13745 ] ; 3 uses
  %i.bsr = shl i64 %index13746, 2
  %next.gep13747 = getelementptr i8, ptr %i.brz, i64 %i.bsr ; 2 uses
  %i.bss = getelementptr inbounds nuw [4 x i8], ptr %i.bsk, i64 %index13746 ; 2 uses
  %i.bst = getelementptr i8, ptr %next.gep13747, i64 16
  %wide.load13748 = load <4 x i32>, ptr %next.gep13747, align 4, !tbaa !211
  %wide.load13749 = load <4 x i32>, ptr %i.bst, align 4, !tbaa !211
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bss, i64 16
  store <4 x i32> %wide.load13748, ptr %i.bss, align 4, !tbaa !211
  store <4 x i32> %wide.load13749, ptr %i.bsu, align 4, !tbaa !211
  %index.next13750 = add nuw i64 %index13746, 8   ; 2 uses
  %i.bsv = icmp eq i64 %index.next13750, %n.vec13744
  br i1 %i.bsv, label %middle.block13751, label %vector.body13745, !llvm.loop !1733

middle.block13751:                                ; preds = %vector.body13745
  %cmp.n13752 = icmp eq i64 %.0605588, %n.vec13744
  br i1 %cmp.n13752, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i1109, label %.lr.ph.i.i47.i1106.preheader13989

.lr.ph.i.i47.i1106.preheader13989:                ; preds = %.lr.ph.i.i47.i1106.preheader, %middle.block13751
  %.ph13990 = phi ptr [ %i.brz, %.lr.ph.i.i47.i1106.preheader ], [ %i.bsq, %middle.block13751 ] ; 2 uses
  %.012.i.i.i1107.ph = phi i64 [ 0, %.lr.ph.i.i47.i1106.preheader ], [ %n.vec13744, %middle.block13751 ] ; 3 uses
  %xtraiter16205 = and i64 %.0605588, 3           ; 2 uses
  %lcmp.mod16206.not = icmp eq i64 %xtraiter16205, 0
end_hunk_1
