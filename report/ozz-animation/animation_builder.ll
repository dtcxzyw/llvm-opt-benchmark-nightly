Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/animation_builder?download=true
inline.NumInlined: 2405
inline.NumDeleted: 1006
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZNK3ozz9animation7offline16AnimationBuilderclERKNS1_12RawAnimationE:bb.a

.noexc97.i480.thread:                             ; preds = %bb.la, %.noexc97.i480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.018.025.i.i.i476, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.020.026.i.i.i475, i64 24, i1 false), !tbaa.struct !78
  %i.ayp = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i.i.i475, i64 24
  br label %bb.lc

.noexc97.i480.thread1012:                         ; preds = %bb.lb, %.noexc97.i480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.018.025.i.i.i476, ptr noundef nonnull align 4 dereferenceable(24) %.027.i.i.i474, i64 24, i1 false), !tbaa.struct !78
  %i.ayq = getelementptr inbounds nuw i8, ptr %.027.i.i.i474, i64 24
  br label %bb.lc

bb.lc:                                            ; preds = %.noexc97.i480.thread1012, %.noexc97.i480.thread
  %.sroa.020.1.i.i.i481 = phi ptr [ %i.ayp, %.noexc97.i480.thread ], [ %.sroa.020.026.i.i.i475, %.noexc97.i480.thread1012 ]
  %.1.i.i.i482 = phi ptr [ %.027.i.i.i474, %.noexc97.i480.thread ], [ %i.ayq, %.noexc97.i480.thread1012 ] ; 2 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i476, i64 24
  %.not.i.i96.i483 = icmp eq ptr %.1.i.i.i482, %i.aye
  br i1 %.not.i.i96.i483, label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i, label %.lr.ph.i.i.i473, !llvm.loop !7

.critedge.i.i.i484:                               ; preds = %.lr.ph.i.i.i473
  %i.ays = ptrtoint ptr %i.aye to i64
  %i.ayt = ptrtoint ptr %.027.i.i.i474 to i64
  %i.ayu = sub i64 %i.ays, %i.ayt                 ; 3 uses
  %i.ayv = icmp sgt i64 %i.ayu, 24
  br i1 %i.ayv, label %bb.ld, label %bb.le, !prof !89

bb.ld:                                            ; preds = %.critedge.i.i.i484
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.018.025.i.i.i476, ptr align 4 %.027.i.i.i474, i64 %i.ayu, i1 false)
  br label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i

bb.le:                                            ; preds = %.critedge.i.i.i484
  %i.ayw = icmp eq i64 %i.ayu, 24
  br i1 %i.ayw, label %bb.lf, label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i

bb.lf:                                            ; preds = %bb.le
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.018.025.i.i.i476, ptr noundef nonnull readonly align 4 dereferenceable(24) %.027.i.i.i474, i64 24, i1 false), !tbaa.struct !78
  br label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i

bb.lg:                                            ; preds = %bb.kv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.11.0.i.i.i464, ptr noundef nonnull align 4 dereferenceable(48) %i.axf, i64 48, i1 false)
  %i.ayx = getelementptr inbounds i8, ptr %.val57.i460, i64 -72
  %i.ayy = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i.i.i464, i64 24
  br label %.outer

.outer:                                           ; preds = %bb.ln, %bb.lg
  %.sroa.026.0.i.i.i485.ph = phi ptr [ %i.azm, %bb.ln ], [ %.val57.i460, %bb.lg ]
  %.sroa.028.0.i.i.i486.ph = phi ptr [ %i.azx, %bb.ln ], [ %i.ayx, %bb.lg ] ; 5 uses
  %.0.i.i.i487.ph = phi ptr [ %.0.i.i.i487, %bb.ln ], [ %i.ayy, %bb.lg ]
  %i.ayz = getelementptr inbounds nuw i8, ptr %.sroa.028.0.i.i.i486.ph, i64 4
  br label %bb.lh

bb.lh:                                            ; preds = %.outer, %bb.lp
  %.sroa.026.0.i.i.i485 = phi ptr [ %i.azy, %bb.lp ], [ %.sroa.026.0.i.i.i485.ph, %.outer ] ; 5 uses
  %.0.i.i.i487 = phi ptr [ %i.baa, %bb.lp ], [ %.0.i.i.i487.ph, %.outer ] ; 7 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %.0.i.i.i487, i64 4
  %i.azb = load float, ptr %i.aza, align 4, !tbaa !88
  %i.azc = load float, ptr %i.ayz, align 4, !tbaa !88
  %i.azd = fsub float %i.azb, %i.azc              ; 2 uses
  %i.aze = fcmp olt float %i.azd, 0.000000e+00
  br i1 %i.aze, label %.noexc98.i490.thread, label %bb.li

.noexc98.i490.thread:                             ; preds = %bb.lh
  %i.azf = getelementptr inbounds i8, ptr %.sroa.026.0.i.i.i485, i64 -24
  br label %.loopexit1861

bb.li:                                            ; preds = %bb.lh
  %i.azg = fcmp oeq float %i.azd, 0.000000e+00
  br i1 %i.azg, label %.noexc98.i490, label %.noexc98.i490.thread1013

.noexc98.i490.thread1013:                         ; preds = %bb.li
  %i.azh = getelementptr inbounds i8, ptr %.sroa.026.0.i.i.i485, i64 -24
  br label %bb.lo

.noexc98.i490:                                    ; preds = %bb.li
  %i.azi = load i16, ptr %.0.i.i.i487, align 4, !tbaa !87
  %i.azj = load i16, ptr %.sroa.028.0.i.i.i486.ph, align 4, !tbaa !87
  %i.azk = icmp ult i16 %i.azi, %i.azj
  %i.azl = getelementptr inbounds i8, ptr %.sroa.026.0.i.i.i485, i64 -24 ; 2 uses
  br i1 %i.azk, label %.loopexit1861, label %bb.lo

.loopexit1861:                                    ; preds = %.noexc98.i490, %.noexc98.i490.thread
  %i.azm = phi ptr [ %i.azf, %.noexc98.i490.thread ], [ %i.azl, %.noexc98.i490 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.azm, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.028.0.i.i.i486.ph, i64 24, i1 false), !tbaa.struct !78
  %i.azn = icmp eq ptr %i.axe, %.sroa.028.0.i.i.i486.ph
  br i1 %i.azn, label %bb.lj, label %bb.ln

bb.lj:                                            ; preds = %.loopexit1861
  %i.azo = getelementptr inbounds nuw i8, ptr %.0.i.i.i487, i64 24
  %i.azp = ptrtoint ptr %i.azo to i64
  %i.azq = ptrtoint ptr %.sroa.11.0.i.i.i464 to i64
  %i.azr = sub i64 %i.azp, %i.azq                 ; 4 uses
  %i.azs = icmp sgt i64 %i.azr, 24
  br i1 %i.azs, label %bb.lk, label %bb.ll, !prof !89

bb.lk:                                            ; preds = %bb.lj
  %i.azt = getelementptr inbounds i8, ptr %.sroa.026.0.i.i.i485, i64 -24
  %.neg46.i.i.i493 = udiv exact i64 %i.azr, 24
  %.neg46.neg.i.i.i494 = sub nsw i64 0, %.neg46.i.i.i493
  %i.azu = getelementptr inbounds [24 x i8], ptr %i.azt, i64 %.neg46.neg.i.i.i494
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.azu, ptr nonnull align 4 %.sroa.11.0.i.i.i464, i64 %i.azr, i1 false)
  br label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i

bb.ll:                                            ; preds = %bb.lj
  %i.azv = icmp eq i64 %i.azr, 24
  br i1 %i.azv, label %bb.lm, label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i

bb.lm:                                            ; preds = %bb.ll
  %i.azw = getelementptr inbounds i8, ptr %.sroa.026.0.i.i.i485, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.azw, ptr noundef nonnull readonly align 4 dereferenceable(24) %.sroa.11.0.i.i.i464, i64 24, i1 false), !tbaa.struct !78
  br label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i

bb.ln:                                            ; preds = %.loopexit1861
  %i.azx = getelementptr inbounds i8, ptr %.sroa.028.0.i.i.i486.ph, i64 -24
  br label %.outer, !llvm.loop !8

bb.lo:                                            ; preds = %.noexc98.i490.thread1013, %.noexc98.i490
  %i.azy = phi ptr [ %i.azh, %.noexc98.i490.thread1013 ], [ %i.azl, %.noexc98.i490 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.azy, ptr noundef nonnull align 4 dereferenceable(24) %.0.i.i.i487, i64 24, i1 false), !tbaa.struct !78
  %i.azz = icmp eq ptr %.sroa.11.0.i.i.i464, %.0.i.i.i487
  br i1 %i.azz, label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.baa = getelementptr inbounds i8, ptr %.0.i.i.i487, i64 -24
  br label %bb.lh, !llvm.loop !8

.loopexit.split-lp.loopexit.split-lp.i465:        ; preds = %bb.ls, %bb.lr
  %lpad.loopexit.split-lp27.i466 = landingpad { ptr, i32 }
          cleanup
  %i.bab = mul nuw nsw i64 %.sroa.5.0.i.i.i463, 24
  call void @_ZdlPvm(ptr noundef %.sroa.11.0.i.i.i464, i64 noundef %i.bab) #20
  br label %.body.i445

bb.lq:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEES9_EC2ESF_l.exit.i.i.i
  %i.bac = icmp eq ptr %.sroa.11.0.i.i.i464, null
  br i1 %i.bac, label %bb.lr, label %bb.ls, !prof !236

bb.lr:                                            ; preds = %bb.lq
  invoke fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElNS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_(ptr %i.axe, ptr nonnull %i.axf, ptr nonnull %.val57.i460, i64 noundef %i.axk, i64 noundef 2, ptr nonnull @_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_)
          to label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i465

bb.ls:                                            ; preds = %bb.lq
  invoke fastcc void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_SO_T2_(ptr %i.axe, ptr nonnull %i.axf, ptr nonnull %.val57.i460, i64 noundef %i.axk, i64 noundef 2, ptr noundef nonnull %.sroa.11.0.i.i.i464, i64 noundef %.sroa.5.0.i.i.i463, i64 ptrtoint (ptr @_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_ to i64))
          to label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i465

_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i: ; preds = %bb.lc, %bb.lo, %bb.ls, %bb.lr, %bb.lm, %bb.ll, %bb.lk, %bb.lf, %bb.le, %bb.ld
  %i.bad = mul nuw nsw i64 %.sroa.5.0.i.i.i463, 24
  call void @_ZdlPvm(ptr noundef %.sroa.11.0.i.i.i464, i64 noundef %i.bad) #20
  %.pre.i470 = load ptr, ptr %20, align 8, !tbaa !237
  %.pre1276.pre = load ptr, ptr %i.asv, align 8, !tbaa !237
  br label %.loopexit30.i471

.loopexit31.i443:                                 ; preds = %bb.jx
  %lpad.loopexit33.i444 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i445

.loopexit.split-lp32.i518:                        ; preds = %.invoke.i517
  %lpad.loopexit.split-lp.i519 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i445

.body.i445:                                       ; preds = %.loopexit.split-lp32.i518, %.loopexit31.i443, %.loopexit.split-lp.loopexit.split-lp.i465
  %.pn.i446 = phi { ptr, i32 } [ %lpad.loopexit.split-lp27.i466, %.loopexit.split-lp.loopexit.split-lp.i465 ], [ %lpad.loopexit33.i444, %.loopexit31.i443 ], [ %lpad.loopexit.split-lp.i519, %.loopexit.split-lp32.i518 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %.body

bb.lt:                                            ; preds = %bb.jw
  %i.bae = getelementptr inbounds nuw i8, ptr %i.att, i64 4
  store i32 %i.atu, ptr %i.bae, align 4, !tbaa !235
  %i.baf = trunc i64 %.04966.i437 to i32
  store i32 %i.baf, ptr %i.att, align 4, !tbaa !234
  %i.bag = add nuw i64 %.04966.i437, 1            ; 2 uses
  %exitcond.not.i440 = icmp eq i64 %i.bag, %i.atp
  br i1 %exitcond.not.i440, label %.loopexit127.i441, label %bb.jw, !llvm.loop !144

.loopexit30.i471:                                 ; preds = %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit91.i
  %.pre1276 = phi ptr [ %.pre12761277, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit91.i ], [ %.pre1276.pre, %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i ]
  %i.bah = phi ptr [ %i.ati, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit91.i ], [ %.pre.i470, %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.jv, !llvm.loop !145

bb.lu:                                            ; preds = %bb.jt, %.loopexit127.i441
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #20
  %.val141 = load ptr, ptr %58, align 8, !tbaa !216 ; 4 uses
  %.val142 = load ptr, ptr %i.th, align 8, !tbaa !216 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, i8 0, i64 24, i1 false), !alias.scope !239
  %.not15.i = icmp eq ptr %.val141, %.val142      ; 2 uses
  br i1 %.not15.i, label %._crit_edge.i568, label %.lr.ph.i565

.lr.ph.i565:                                      ; preds = %bb.lu
  %i.bai = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %61, i64 16
  br label %bb.lv

._crit_edge.i568:                                 ; preds = %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit.i, %bb.lu
  %.val27.i = load ptr, ptr %59, align 8, !tbaa !220, !noalias !239 ; 4 uses
  %.val25.i = load ptr, ptr %i.rm, align 8, !tbaa !220, !noalias !239 ; 3 uses
  %.not1217.i = icmp eq ptr %.val27.i, %.val25.i  ; 2 uses
  br i1 %.not1217.i, label %._crit_edge21.i, label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %._crit_edge.i568
  %i.bak = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %61, i64 16
  br label %bb.lz

bb.lv:                                            ; preds = %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit.i, %.lr.ph.i565
  %.sroa.09.016.i = phi ptr [ %.val141, %.lr.ph.i565 ], [ %i.bar, %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit.i ] ; 2 uses
  %i.bam = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i, i64 8 ; 2 uses
  %i.ban = load ptr, ptr %i.bai, align 8, !tbaa !96, !alias.scope !239 ; 4 uses
  %i.bao = load ptr, ptr %i.baj, align 8, !tbaa !97, !alias.scope !239
  %.not.i.i566 = icmp eq ptr %i.ban, %i.bao
  br i1 %.not.i.i566, label %bb.lx, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.bap = load float, ptr %i.bam, align 4, !tbaa !76, !noalias !239
  store float %i.bap, ptr %i.ban, align 4, !tbaa !76
  %i.baq = getelementptr inbounds nuw i8, ptr %i.ban, i64 4
  store ptr %i.baq, ptr %i.bai, align 8, !tbaa !96, !alias.scope !239
  br label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit.i

bb.lx:                                            ; preds = %bb.lv
  invoke void @_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr %i.ban, ptr noundef nonnull align 4 dereferenceable(4) %i.bam)
          to label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit.i unwind label %bb.ly

_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit.i: ; preds = %bb.lx, %bb.lw
  %i.bar = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i, i64 24 ; 2 uses
  %.not.i567 = icmp eq ptr %i.bar, %.val142
  br i1 %.not.i567, label %._crit_edge.i568, label %bb.lv

bb.ly:                                            ; preds = %bb.lx
  %i.bas = landingpad { ptr, i32 }
          cleanup
  br label %bb.mm

._crit_edge21.i:                                  ; preds = %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit39.i, %._crit_edge.i568
  br i1 %.not67.i435, label %._crit_edge26.i, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %._crit_edge21.i
  %i.bat = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %61, i64 16
  br label %bb.me

bb.lz:                                            ; preds = %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit39.i, %.lr.ph20.i
  %.sroa.07.018.i = phi ptr [ %.val27.i, %.lr.ph20.i ], [ %i.bba, %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit39.i ] ; 2 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %.sroa.07.018.i, i64 8 ; 2 uses
  %i.baw = load ptr, ptr %i.bak, align 8, !tbaa !96, !alias.scope !239 ; 4 uses
  %i.bax = load ptr, ptr %i.bal, align 8, !tbaa !97, !alias.scope !239
  %.not.i37.i = icmp eq ptr %i.baw, %i.bax
  br i1 %.not.i37.i, label %bb.mb, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.bay = load float, ptr %i.bav, align 4, !tbaa !76
  store float %i.bay, ptr %i.baw, align 4, !tbaa !76
  %i.baz = getelementptr inbounds nuw i8, ptr %i.baw, i64 4
  store ptr %i.baz, ptr %i.bak, align 8, !tbaa !96, !alias.scope !239
  br label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit39.i

bb.mb:                                            ; preds = %bb.lz
  invoke void @_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr %i.baw, ptr noundef nonnull align 4 dereferenceable(4) %i.bav)
          to label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit39.i unwind label %bb.mc

_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit39.i: ; preds = %bb.mb, %bb.ma
  %i.bba = getelementptr inbounds nuw i8, ptr %.sroa.07.018.i, i64 28 ; 2 uses
  %.not12.i = icmp eq ptr %i.bba, %.val25.i
  br i1 %.not12.i, label %._crit_edge21.i, label %bb.lz

bb.mc:                                            ; preds = %bb.mb
  %i.bbb = landingpad { ptr, i32 }
          cleanup
  br label %bb.mm

._crit_edge26.i:                                  ; preds = %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit44.i, %._crit_edge21.i
  %i.bbc = load ptr, ptr %61, align 8, !tbaa !240, !alias.scope !239 ; 5 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 11 uses
  %i.bbe = load ptr, ptr %i.bbd, align 8, !tbaa !240, !alias.scope !239 ; 4 uses
  %.not.i.i.i569 = icmp eq ptr %i.bbc, %i.bbe
  br i1 %.not.i.i.i569, label %_ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit, label %bb.md

bb.md:                                            ; preds = %._crit_edge26.i
  %i.bbf = ptrtoint ptr %i.bbe to i64
  %i.bbg = ptrtoint ptr %i.bbc to i64
  %i.bbh = sub i64 %i.bbf, %i.bbg
  %i.bbi = ashr exact i64 %i.bbh, 2
  %i.bbj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bbi, i1 true)
  %i.bbk = shl nuw nsw i64 %i.bbj, 1
  %i.bbl = xor i64 %i.bbk, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.bbc, ptr %i.bbe, i64 noundef %i.bbl)
          to label %.noexc40.i unwind label %bb.ml

.noexc40.i:                                       ; preds = %bb.md
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.bbc, ptr %i.bbe)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit.i unwind label %bb.ml

bb.me:                                            ; preds = %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit44.i, %.lr.ph25.i
  %.sroa.05.023.i = phi ptr [ %.val.i433, %.lr.ph25.i ], [ %i.bbr, %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit44.i ] ; 2 uses
  %i.bbm = getelementptr inbounds nuw i8, ptr %.sroa.05.023.i, i64 8 ; 2 uses
  %i.bbn = load ptr, ptr %i.bat, align 8, !tbaa !96, !alias.scope !239 ; 4 uses
  %i.bbo = load ptr, ptr %i.bau, align 8, !tbaa !97, !alias.scope !239
  %.not.i42.i = icmp eq ptr %i.bbn, %i.bbo
  br i1 %.not.i42.i, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.bbp = load float, ptr %i.bbm, align 4, !tbaa !76
  store float %i.bbp, ptr %i.bbn, align 4, !tbaa !76
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbn, i64 4
  store ptr %i.bbq, ptr %i.bat, align 8, !tbaa !96, !alias.scope !239
  br label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit44.i

bb.mg:                                            ; preds = %bb.me
  invoke void @_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr %i.bbn, ptr noundef nonnull align 4 dereferenceable(4) %i.bbm)
          to label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit44.i unwind label %bb.mh

_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit44.i: ; preds = %bb.mg, %bb.mf
  %i.bbr = getelementptr inbounds nuw i8, ptr %.sroa.05.023.i, i64 24 ; 2 uses
  %.not13.i = icmp eq ptr %i.bbr, %.val55.i4341198
  br i1 %.not13.i, label %._crit_edge26.i, label %bb.me

bb.mh:                                            ; preds = %bb.mg
  %i.bbs = landingpad { ptr, i32 }
          cleanup
  br label %bb.mm

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit.i: ; preds = %.noexc40.i
  %.pre.i570 = load ptr, ptr %61, align 8, !tbaa !240, !alias.scope !239 ; 5 uses
  %.pre28.i = load ptr, ptr %i.bbd, align 8, !tbaa !240, !alias.scope !239 ; 6 uses
  %i.bbt = icmp eq ptr %.pre.i570, %.pre28.i
  br i1 %i.bbt, label %_ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit.i, %bb.mi
  %.sroa.09.0.i.i.i.i = phi ptr [ %i.bbu, %bb.mi ], [ %.pre.i570, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit.i ] ; 5 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 4 ; 3 uses
  %.not.i.i.i.i571 = icmp eq ptr %i.bbu, %.pre28.i
  br i1 %.not.i.i.i.i571, label %_ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit, label %bb.mi

bb.mi:                                            ; preds = %.preheader.i.i.i.i
  %i.bbv = load float, ptr %.sroa.09.0.i.i.i.i, align 4, !tbaa !76 ; 2 uses
  %i.bbw = load float, ptr %i.bbu, align 4, !tbaa !76
  %i.bbx = fcmp oeq float %i.bbv, %i.bbw
  br i1 %i.bbx, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !148

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i: ; preds = %bb.mi
  %i.bby = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 8 ; 2 uses
  %.not18.i.i.i = icmp eq ptr %i.bby, %.pre28.i
  br i1 %.not18.i.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit.i, label %.lr.ph.i.i.i572

.lr.ph.i.i.i572:                                  ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i, %bb.mk
  %i.bbz = phi float [ %i.bce, %bb.mk ], [ %i.bbv, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ] ; 2 uses
  %i.bca = phi ptr [ %i.bcf, %bb.mk ], [ %i.bby, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ] ; 2 uses
  %.sroa.0.019.i.i.i = phi ptr [ %.sroa.0.1.i.i.i, %bb.mk ], [ %.sroa.09.0.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ] ; 2 uses
  %i.bcb = load float, ptr %i.bca, align 4, !tbaa !76 ; 3 uses
  %i.bcc = fcmp oeq float %i.bbz, %i.bcb
  br i1 %i.bcc, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %.lr.ph.i.i.i572
  %i.bcd = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i, i64 4 ; 2 uses
  store float %i.bcb, ptr %i.bcd, align 4, !tbaa !76
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %.lr.ph.i.i.i572
  %i.bce = phi float [ %i.bbz, %.lr.ph.i.i.i572 ], [ %i.bcb, %bb.mj ]
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0.019.i.i.i, %.lr.ph.i.i.i572 ], [ %i.bcd, %bb.mj ] ; 2 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bca, i64 4 ; 2 uses
  %.not.i.i45.i = icmp eq ptr %i.bcf, %.pre28.i
  br i1 %.not.i.i45.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit.i, label %.lr.ph.i.i.i572, !llvm.loop !149

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit.i: ; preds = %bb.mk, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %.sroa.09.0.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ], [ %.sroa.0.1.i.i.i, %bb.mk ]
  %i.bcg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i, i64 4 ; 2 uses
  %.not.i.i46.i = icmp eq ptr %i.bcg, %.pre28.i
  br i1 %.not.i.i46.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit.i._ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit_crit_edge, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEES8_ET0_T_SA_S9_.exit.i.i.i

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit.i._ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit_crit_edge: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit.i
  %.pre1279 = load ptr, ptr %i.bbd, align 8, !tbaa !96
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEES8_ET0_T_SA_S9_.exit.i.i.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit.i
  %i.bch = ptrtoint ptr %i.bcg to i64
  %i.bci = ptrtoint ptr %.pre.i570 to i64
  %i.bcj = sub i64 %i.bch, %i.bci
  %i.bck = getelementptr inbounds i8, ptr %.pre.i570, i64 %i.bcj ; 2 uses
  store ptr %i.bck, ptr %i.bbd, align 8, !tbaa !96, !alias.scope !239
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit

bb.ml:                                            ; preds = %.noexc40.i, %bb.md
  %i.bcl = landingpad { ptr, i32 }
          cleanup
  br label %bb.mm

bb.mm:                                            ; preds = %bb.ml, %bb.mh, %bb.mc, %bb.ly
  %.pn21.i = phi { ptr, i32 } [ %i.bas, %bb.ly ], [ %i.bbb, %bb.mc ], [ %i.bbs, %bb.mh ], [ %i.bcl, %bb.ml ]
  call void @_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %61) #20
  br label %.body

_ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit: ; preds = %.preheader.i.i.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit.i._ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit_crit_edge, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEES8_ET0_T_SA_S9_.exit.i.i.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit.i, %._crit_edge26.i
  %i.bcm = phi ptr [ %.pre1279, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit.i._ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit_crit_edge ], [ %i.bbc, %._crit_edge26.i ], [ %i.bck, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEES8_ET0_T_SA_S9_.exit.i.i.i ], [ %.pre.i570, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit.i ], [ %.pre28.i, %.preheader.i.i.i.i ]
  %i.bcn = load ptr, ptr %61, align 8, !tbaa !98  ; 3 uses
  %i.bco = ptrtoint ptr %i.bcm to i64
  %i.bcp = ptrtoint ptr %i.bcn to i64
  %i.bcq = sub i64 %i.bco, %i.bcp
  %i.bcr = icmp ugt i64 %i.bcq, 262140
  br i1 %i.bcr, label %bb.mn, label %bb.mr

bb.mn:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit
  store ptr null, ptr %0, align 8, !tbaa !177
  br label %bb.uf

bb.mo:                                            ; preds = %bb.de
  %i.bcs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.mp:                                            ; preds = %bb.gb
  %i.bct = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.mq:                                            ; preds = %bb.iy
  %i.bcu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.mr:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit
  %66 = ptrtoint ptr %.val142 to i64
  %67 = ptrtoint ptr %.val141 to i64
  %68 = sub i64 %66, %67                          ; 2 uses
  %69 = sdiv exact i64 %68, 24
  %70 = icmp ugt i64 %68, 103079215080
  %71 = ptrtoint ptr %.val25.i to i64
  %72 = ptrtoint ptr %.val27.i to i64
  %73 = sub i64 %71, %72                          ; 2 uses
  %74 = icmp ugt i64 %73, 120259084260
  %or.cond = and i1 %70, %74
  %i.bcv = ptrtoint ptr %.val55.i4341198 to i64
  %i.bcw = ptrtoint ptr %.val.i433 to i64
  %i.bcx = sub i64 %i.bcv, %i.bcw
  %75 = icmp ugt i64 %i.bcx, 103079215080
  %or.cond1020 = and i1 %75, %or.cond
  br i1 %or.cond1020, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  store ptr null, ptr %0, align 8, !tbaa !177
  br label %bb.uf

bb.mt:                                            ; preds = %bb.mr
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #20
  %i.bcy = load float, ptr %1, align 4, !tbaa !242 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.bcz = getelementptr inbounds nuw i8, ptr %62, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %62, i8 0, i64 48, i1 false), !alias.scope !243
  store float 1.000000e+00, ptr %i.bcz, align 8, !tbaa !251, !alias.scope !243
  %i.bda = fcmp ole float %i.bcy, 0.000000e+00
  %or.cond.i575 = or i1 %.not.i.i.i.i69.i, %i.bda
  br i1 %or.cond.i575, label %bb.og, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.bdb = fdiv float %i.o, %i.bcy                ; 2 uses
  %i.bdc = fcmp olt float %i.bdb, 1.000000e+00
  %i.bdd = select i1 %i.bdc, float 1.000000e+00, float %i.bdb
  %i.bde = fptoui float %i.bdd to i64             ; 3 uses
  %.not3.i = icmp eq i64 %i.bde, 0
  br i1 %.not3.i, label %._crit_edge.thread.i, label %.lr.ph.i576

.lr.ph.i576:                                      ; preds = %bb.mu
  %i.bdf = uitofp i64 %i.bde to float
  %i.bdg = shl nuw nsw i64 %i.tg, 2               ; 3 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bdi = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bdj = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 3 uses
  %i.bdk = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bdl = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.bdm = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bdn = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bdo = shl nuw nsw i64 %i.tg, 1
  %i.bdp = add nsw i64 %i.bdo, -1
  %i.bdq = getelementptr inbounds nuw i8, ptr %62, i64 24 ; 4 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %62, i64 32 ; 5 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 3 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %62, i64 40 ; 2 uses
  br label %bb.mw

._crit_edge.i583:                                 ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i
  %.pre6.i = load ptr, ptr %i.bdr, align 8, !tbaa !101, !alias.scope !243
  %.pre8.i = load ptr, ptr %i.bdq, align 8, !tbaa !102, !alias.scope !243
  %.pre9.i = load ptr, ptr %62, align 8, !tbaa !252, !alias.scope !243
  %.pre11.i = load ptr, ptr %i.bds, align 8, !tbaa !252, !alias.scope !243
  %i.bdu = ptrtoint ptr %.pre6.i to i64
  %i.bdv = ptrtoint ptr %.pre8.i to i64
  %i.bdw = sub i64 %i.bdu, %i.bdv
  %i.bdx = ashr exact i64 %i.bdw, 2
  %i.bdy = lshr i64 %i.bdx, 1
  %i.bdz = icmp eq ptr %.pre9.i, %.pre11.i
  %i.bea = uitofp nneg i64 %i.bdy to float
  %i.beb = fdiv float 1.000000e+00, %i.bea
  %cond.fr.i = freeze i1 %i.bdz
  br i1 %cond.fr.i, label %._crit_edge.thread.i, label %bb.mv

._crit_edge.thread.i:                             ; preds = %._crit_edge.i583, %bb.mu
  br label %bb.mv

bb.mv:                                            ; preds = %._crit_edge.thread.i, %._crit_edge.i583
  %i.bec = phi float [ 1.000000e+00, %._crit_edge.thread.i ], [ %i.beb, %._crit_edge.i583 ]
  store float %i.bec, ptr %i.bcz, align 8, !tbaa !251, !alias.scope !243
  %.pre1280 = load float, ptr %1, align 4, !tbaa !242
  br label %bb.og

bb.mw:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i, %.lr.ph.i576
  %.0262.i = phi i64 [ 0, %.lr.ph.i576 ], [ %i.bed, %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i ]
  %i.bed = add nuw i64 %.0262.i, 1                ; 3 uses
  %i.bee = uitofp i64 %i.bed to float
  %i.bef = fmul float %i.o, %i.bee
  %i.beg = fdiv float %i.bef, %i.bdf
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20, !noalias !243
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 24, i1 false), !alias.scope !253, !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20, !noalias !254
  %i.beh = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.mx unwind label %bb.my, !noalias !253 ; 2 uses

bb.mx:                                            ; preds = %bb.mw
  %i.bei = load ptr, ptr %i.beh, align 8, !tbaa !48, !noalias !253
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 16
  %i.bek = load ptr, ptr %i.bej, align 8, !noalias !253
  %i.bel = invoke noundef ptr %i.bek(ptr noundef nonnull align 8 dereferenceable(8) %i.beh, i64 noundef %i.bdg, i64 noundef 4)
          to label %bb.mz unwind label %bb.my, !noalias !253 ; 8 uses

bb.my:                                            ; preds = %bb.mx, %bb.mw
  %i.bem = landingpad { ptr, i32 }
          catch ptr null
  %i.ben = extractvalue { ptr, i32 } %i.bem, 0
  call void @__clang_call_terminate(ptr %i.ben) #22, !noalias !253
  unreachable

bb.mz:                                            ; preds = %bb.mx
  store ptr %i.bel, ptr %13, align 8, !tbaa !102, !noalias !254
  %i.beo = getelementptr inbounds nuw [4 x i8], ptr %i.bel, i64 %i.tg
  store ptr %i.beo, ptr %i.bdh, align 8, !tbaa !103, !noalias !254
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bel, i8 0, i64 %i.bdg, i1 false), !tbaa !93, !noalias !253
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.bel, i64 %i.bdg
  store ptr %scevgep.i.i.i.i.i, ptr %i.bdi, align 8, !tbaa !101, !noalias !254
  br i1 %.not15.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.mz, %bb.na
  %.044.i.i = phi i64 [ %i.bex, %bb.na ], [ 0, %bb.mz ] ; 4 uses
  %i.bep = getelementptr inbounds nuw [24 x i8], ptr %.val141, i64 %.044.i.i ; 2 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bep, i64 4
  %i.ber = load float, ptr %i.beq, align 4, !tbaa !75, !noalias !254
  %i.bes = fcmp ugt float %i.ber, %i.beg
  br i1 %i.bes, label %._crit_edge.i.i, label %bb.na

bb.na:                                            ; preds = %.lr.ph.i.i
  %i.bet = trunc i64 %.044.i.i to i32
  %i.beu = load i16, ptr %i.bep, align 4, !tbaa !74, !noalias !254
  %i.bev = zext i16 %i.beu to i64
  %i.bew = getelementptr inbounds nuw [4 x i8], ptr %i.bel, i64 %i.bev
  store i32 %i.bet, ptr %i.bew, align 4, !tbaa !93, !noalias !253
  store i64 %.044.i.i, ptr %i.bdj, align 8, !tbaa !256, !alias.scope !253, !noalias !243
  %i.bex = add nuw i64 %.044.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bex, %69
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !154

._crit_edge.i.i:                                  ; preds = %bb.na, %.lr.ph.i.i, %bb.mz
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20, !noalias !254
  store ptr %i.bel, ptr %14, align 8, !noalias !254
  store i64 %i.tg, ptr %i.bdk, align 8, !noalias !254
  %i.bey = invoke noundef i64 @_ZN3ozz25ComputeGV4WorstBufferSizeERKNS_4spanIKjEE(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.nb unwind label %bb.nl, !noalias !253 ; 2 uses

bb.nb:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20, !noalias !254
  %.not55.i.i = icmp eq i64 %i.bey, 0
  br i1 %.not55.i.i, label %bb.nd, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  invoke void @_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %i.bey)
          to label %._crit_edge47.i.i unwind label %bb.nm

._crit_edge47.i.i:                                ; preds = %bb.nc
  %.pre.i.i = load ptr, ptr %17, align 8, !tbaa !104, !alias.scope !253, !noalias !243
  %.pre48.i.i = load ptr, ptr %i.bdl, align 8, !tbaa !105, !alias.scope !253, !noalias !243
  %i.bez = ptrtoint ptr %.pre48.i.i to i64
  br label %bb.nd

bb.nd:                                            ; preds = %._crit_edge47.i.i, %bb.nb
  %i.bfa = phi i64 [ %i.bez, %._crit_edge47.i.i ], [ 0, %bb.nb ]
  %i.bfb = phi ptr [ %.pre.i.i, %._crit_edge47.i.i ], [ null, %bb.nb ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20, !noalias !254
  store ptr %i.bel, ptr %15, align 8, !noalias !254
  store i64 %i.tg, ptr %i.bdm, align 8, !noalias !254
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20, !noalias !254
  %i.bfc = ptrtoint ptr %i.bfb to i64
  %i.bfd = sub i64 %i.bfa, %i.bfc
  store ptr %i.bfb, ptr %16, align 8, !noalias !254
  store i64 %i.bfd, ptr %i.bdn, align 8, !noalias !254
  %i.bfe = invoke { ptr, i64 } @_ZN3ozz15EncodeGV4StreamERKNS_4spanIKjEERKNS0_IhEE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.ne unwind label %bb.nn

bb.ne:                                            ; preds = %bb.nd
  %i.bff = extractvalue { ptr, i64 } %i.bfe, 1    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20, !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20, !noalias !254
  %i.bfg = load ptr, ptr %i.bdl, align 8, !tbaa !105, !alias.scope !253, !noalias !243 ; 2 uses
  %i.bfh = load ptr, ptr %17, align 8, !tbaa !104, !alias.scope !253, !noalias !243 ; 2 uses
  %i.bfi = ptrtoint ptr %i.bfg to i64
  %i.bfj = ptrtoint ptr %i.bfh to i64
  %i.bfk = sub i64 %i.bfi, %i.bfj                 ; 3 uses
  %i.bfl = sub i64 %i.bfk, %i.bff                 ; 2 uses
  %i.bfm = icmp ugt i64 %i.bff, %i.bfk
  br i1 %i.bfm, label %bb.nf, label %bb.ng

bb.nf:                                            ; preds = %bb.ne
  %i.bfn = sub i64 0, %i.bff
  invoke void @_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %i.bfn)
          to label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i unwind label %bb.no

bb.ng:                                            ; preds = %bb.ne
  %i.bfo = icmp ult i64 %i.bfl, %i.bfk
  br i1 %i.bfo, label %bb.nh, label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i

bb.nh:                                            ; preds = %bb.ng
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfh, i64 %i.bfl ; 2 uses
  %.not.i.i37.i.i = icmp eq ptr %i.bfg, %i.bfp
  br i1 %.not.i.i37.i.i, label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  store ptr %i.bfp, ptr %i.bdl, align 8, !tbaa !105, !alias.scope !253, !noalias !243
  br label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i

_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i: ; preds = %bb.ni, %bb.nh, %bb.ng, %bb.nf
  %i.bfq = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.nj unwind label %bb.nk     ; 2 uses

bb.nj:                                            ; preds = %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i
  %i.bfr = load ptr, ptr %i.bfq, align 8, !tbaa !48
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfr, i64 24
  %i.bft = load ptr, ptr %i.bfs, align 8
  invoke void %i.bft(ptr noundef nonnull align 8 dereferenceable(8) %i.bfq, ptr noundef nonnull %i.bel)
          to label %bb.nq unwind label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i
  %i.bfu = landingpad { ptr, i32 }
          catch ptr null
  %i.bfv = extractvalue { ptr, i32 } %i.bfu, 0
  call void @__clang_call_terminate(ptr %i.bfv) #22
  unreachable

bb.nl:                                            ; preds = %._crit_edge.i.i
  %i.bfw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20, !noalias !254
  br label %bb.np

bb.nm:                                            ; preds = %bb.nc
  %i.bfx = landingpad { ptr, i32 }
          cleanup
  br label %bb.np

bb.nn:                                            ; preds = %bb.nd
  %i.bfy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20, !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20, !noalias !254
  br label %bb.np

bb.no:                                            ; preds = %bb.nf
  %i.bfz = landingpad { ptr, i32 }
          cleanup
  br label %bb.np

bb.np:                                            ; preds = %bb.no, %bb.nn, %bb.nm, %bb.nl
  %.pn22.pn.i.i = phi { ptr, i32 } [ %i.bfw, %bb.nl ], [ %i.bfx, %bb.nm ], [ %i.bfz, %bb.no ], [ %i.bfy, %bb.nn ]
  call void @_ZNSt6vectorIjN3ozz12StdAllocatorIjEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20, !noalias !254
  %.val28.i.i = load ptr, ptr %17, align 8, !tbaa !104, !alias.scope !253, !noalias !243
  call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev(ptr %.val28.i.i) #20
  br label %.body.i578

bb.nq:                                            ; preds = %bb.nj
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20, !noalias !254
  %i.bga = load i64, ptr %i.bdj, align 8, !tbaa !256, !noalias !243 ; 3 uses
  %.not.i579 = icmp ugt i64 %i.bga, %i.bdp
  br i1 %.not.i579, label %bb.nr, label %bb.ny

bb.nr:                                            ; preds = %bb.nq
  %i.bgb = load ptr, ptr %i.bdq, align 8, !tbaa !257, !alias.scope !243
  %i.bgc = load ptr, ptr %i.bdr, align 8, !tbaa !257, !alias.scope !243 ; 6 uses
  %i.bgd = icmp eq ptr %i.bgb, %i.bgc
  br i1 %i.bgd, label %bb.nt, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.bge = getelementptr inbounds i8, ptr %i.bgc, i64 -4
  %i.bgf = load i32, ptr %i.bge, align 4, !tbaa !93
  %i.bgg = zext i32 %i.bgf to i64
  %.not31.i = icmp ugt i64 %i.bga, %i.bgg
  br i1 %.not31.i, label %bb.nt, label %bb.ny

bb.nt:                                            ; preds = %bb.ns, %bb.nr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20, !noalias !243
  %i.bgh = load ptr, ptr %i.bds, align 8, !tbaa !105, !alias.scope !243
  %i.bgi = load ptr, ptr %62, align 8, !tbaa !104, !alias.scope !243
  %i.bgj = ptrtoint ptr %i.bgh to i64
  %i.bgk = ptrtoint ptr %i.bgi to i64
  %i.bgl = sub i64 %i.bgj, %i.bgk
  %i.bgm = trunc i64 %i.bgl to i32                ; 2 uses
  store i32 %i.bgm, ptr %i.f, align 4, !tbaa !93, !noalias !243
  %i.bgn = load ptr, ptr %i.bdt, align 8, !tbaa !103, !alias.scope !243 ; 2 uses
  %.not.i.i.i584 = icmp eq ptr %i.bgc, %i.bgn
  br i1 %.not.i.i.i584, label %bb.nv, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  store i32 %i.bgm, ptr %i.bgc, align 4, !tbaa !93
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgc, i64 4 ; 2 uses
  store ptr %i.bgo, ptr %i.bdr, align 8, !tbaa !101, !alias.scope !243
  br label %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i

bb.nv:                                            ; preds = %bb.nt
  invoke void @_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bdq, ptr %i.bgc, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i unwind label %bb.oc

._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i: ; preds = %bb.nv
  %.pre.i587 = load i64, ptr %i.bdj, align 8, !tbaa !256, !noalias !243
  %.pre4.i = load ptr, ptr %i.bdr, align 8, !tbaa !101, !alias.scope !243
  %.pre5.i = load ptr, ptr %i.bdt, align 8, !tbaa !103, !alias.scope !243
  br label %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i

_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i: ; preds = %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i, %bb.nu
  %i.bgp = phi ptr [ %.pre5.i, %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i ], [ %i.bgn, %bb.nu ]
  %i.bgq = phi ptr [ %.pre4.i, %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i ], [ %i.bgo, %bb.nu ] ; 4 uses
  %i.bgr = phi i64 [ %.pre.i587, %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i ], [ %i.bga, %bb.nu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20, !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20, !noalias !243
  %i.bgs = trunc i64 %i.bgr to i32                ; 2 uses
  store i32 %i.bgs, ptr %i.g, align 4, !tbaa !93, !noalias !243
  %.not.i.i35.i = icmp eq ptr %i.bgq, %i.bgp
  br i1 %.not.i.i35.i, label %bb.nx, label %bb.nw

bb.nw:                                            ; preds = %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i
  store i32 %i.bgs, ptr %i.bgq, align 4, !tbaa !93
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgq, i64 4
  store ptr %i.bgt, ptr %i.bdr, align 8, !tbaa !101, !alias.scope !243
  br label %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i

bb.nx:                                            ; preds = %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i
  invoke void @_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bdq, ptr %i.bgq, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i unwind label %bb.od

_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i: ; preds = %bb.nx, %bb.nw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20, !noalias !243
  %i.bgu = load ptr, ptr %i.bds, align 8, !tbaa !252, !alias.scope !243
  %i.bgv = load ptr, ptr %17, align 8, !tbaa !252, !noalias !243
  %i.bgw = load ptr, ptr %i.bdl, align 8, !tbaa !252, !noalias !243
  %i.bgx = load ptr, ptr %62, align 8, !tbaa !252, !alias.scope !243 ; 2 uses
  %i.bgy = ptrtoint ptr %i.bgu to i64
  %i.bgz = ptrtoint ptr %i.bgx to i64
  %i.bha = sub i64 %i.bgy, %i.bgz
  %i.bhb = getelementptr inbounds i8, ptr %i.bgx, i64 %i.bha
  invoke void @_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKhS3_EEEEvNS6_IPhS3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %62, ptr %i.bhb, ptr %i.bgv, ptr %i.bgw)
          to label %bb.ny unwind label %bb.oe

bb.ny:                                            ; preds = %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i, %bb.ns, %bb.nq
  %.val34.i580 = load ptr, ptr %17, align 8, !tbaa !104, !noalias !243 ; 2 uses
  %.not.i.i.i.i.i581 = icmp eq ptr %.val34.i580, null
  br i1 %.not.i.i.i.i.i581, label %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.bhc = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.oa unwind label %bb.ob     ; 2 uses

bb.oa:                                            ; preds = %bb.nz
  %i.bhd = load ptr, ptr %i.bhc, align 8, !tbaa !48
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhd, i64 24
  %i.bhf = load ptr, ptr %i.bhe, align 8
  invoke void %i.bhf(ptr noundef nonnull align 8 dereferenceable(8) %i.bhc, ptr noundef nonnull %.val34.i580)
          to label %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i unwind label %bb.ob

bb.ob:                                            ; preds = %bb.oa, %bb.nz
  %i.bhg = landingpad { ptr, i32 }
          catch ptr null
  %i.bhh = extractvalue { ptr, i32 } %i.bhg, 0
  call void @__clang_call_terminate(ptr %i.bhh) #22
  unreachable

_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i: ; preds = %bb.oa, %bb.ny
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20, !noalias !243
  %exitcond.not.i582 = icmp eq i64 %i.bed, %i.bde
  br i1 %exitcond.not.i582, label %._crit_edge.i583, label %bb.mw, !llvm.loop !155

bb.oc:                                            ; preds = %bb.nv
  %i.bhi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20, !noalias !243
  br label %bb.of

bb.od:                                            ; preds = %bb.nx
  %i.bhj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20, !noalias !243
  br label %bb.of

bb.oe:                                            ; preds = %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i
  %i.bhk = landingpad { ptr, i32 }
          cleanup
  br label %bb.of

bb.of:                                            ; preds = %bb.oe, %bb.od, %bb.oc
  %.pn.i585 = phi { ptr, i32 } [ %i.bhk, %bb.oe ], [ %i.bhj, %bb.od ], [ %i.bhi, %bb.oc ]
  %.val.i586 = load ptr, ptr %17, align 8, !tbaa !104, !noalias !243
  call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev(ptr %.val.i586) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20, !noalias !243
  br label %.body.i578

.body.i578:                                       ; preds = %bb.of, %bb.np
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i585, %bb.of ], [ %.pn22.pn.i.i, %bb.np ]
  call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_114BuilderIFramesD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %62) #20
  br label %.body588

bb.og:                                            ; preds = %bb.mt, %bb.mv
  %i.bhl = phi float [ %i.bcy, %bb.mt ], [ %.pre1280, %bb.mv ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #20
  %i.bhm = sdiv exact i64 %73, 28
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.bhn = getelementptr inbounds nuw i8, ptr %63, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %63, i8 0, i64 48, i1 false), !alias.scope !258
  store float 1.000000e+00, ptr %i.bhn, align 8, !tbaa !251, !alias.scope !258
  %i.bho = fcmp ole float %i.bhl, 0.000000e+00
  %or.cond.i592 = or i1 %.not.i.i.i.i69.i, %i.bho
  br i1 %or.cond.i592, label %bb.ps, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.bhp = fdiv float %i.o, %i.bhl                ; 2 uses
  %i.bhq = fcmp olt float %i.bhp, 1.000000e+00
  %i.bhr = select i1 %i.bhq, float 1.000000e+00, float %i.bhp
  %i.bhs = fptoui float %i.bhr to i64             ; 3 uses
  %.not3.i593 = icmp eq i64 %i.bhs, 0
  br i1 %.not3.i593, label %._crit_edge.thread.i621, label %.lr.ph.i594

.lr.ph.i594:                                      ; preds = %bb.oh
  %i.bht = uitofp i64 %i.bhs to float
  %i.bhu = shl nuw nsw i64 %i.tg, 2               ; 3 uses
  %i.bhv = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bhw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bhx = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.bhy = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bhz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.bia = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bib = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bic = shl nuw nsw i64 %i.tg, 1
  %i.bid = add nsw i64 %i.bic, -1
  %i.bie = getelementptr inbounds nuw i8, ptr %63, i64 24 ; 4 uses
  %i.bif = getelementptr inbounds nuw i8, ptr %63, i64 32 ; 5 uses
  %i.big = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 3 uses
  %i.bih = getelementptr inbounds nuw i8, ptr %63, i64 40 ; 2 uses
  br label %bb.oi

._crit_edge.i615:                                 ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i613
  %.pre6.i616 = load ptr, ptr %i.bif, align 8, !tbaa !101, !alias.scope !258 ; 2 uses
  %.pre8.i617 = load ptr, ptr %i.bie, align 8, !tbaa !102, !alias.scope !258 ; 2 uses
  %.pre9.i618 = load ptr, ptr %63, align 8, !tbaa !252, !alias.scope !258 ; 2 uses
  %.pre11.i619 = load ptr, ptr %i.big, align 8, !tbaa !252, !alias.scope !258 ; 2 uses
  %i.bii = ptrtoint ptr %.pre6.i616 to i64
  %i.bij = ptrtoint ptr %.pre8.i617 to i64
  %i.bik = sub i64 %i.bii, %i.bij
  %i.bil = ashr exact i64 %i.bik, 2
  %i.bim = lshr i64 %i.bil, 1
  %i.bin = icmp eq ptr %.pre9.i618, %.pre11.i619
  %i.bio = uitofp nneg i64 %i.bim to float
  %i.bip = fdiv float 1.000000e+00, %i.bio
  %cond.fr.i620 = freeze i1 %i.bin
  %spec.select = select i1 %cond.fr.i620, float 1.000000e+00, float %i.bip
  br label %._crit_edge.thread.i621

._crit_edge.thread.i621:                          ; preds = %._crit_edge.i615, %bb.oh
  %i.biq = phi ptr [ %.pre8.i617, %._crit_edge.i615 ], [ null, %bb.oh ]
  %i.bir = phi ptr [ %.pre6.i616, %._crit_edge.i615 ], [ null, %bb.oh ]
  %i.bis = phi ptr [ %.pre9.i618, %._crit_edge.i615 ], [ null, %bb.oh ]
  %i.bit = phi ptr [ %.pre11.i619, %._crit_edge.i615 ], [ null, %bb.oh ]
  %i.biu = phi float [ %spec.select, %._crit_edge.i615 ], [ 1.000000e+00, %bb.oh ]
  store float %i.biu, ptr %i.bhn, align 8, !tbaa !251, !alias.scope !258
  %.pre1281 = load float, ptr %1, align 4, !tbaa !242
  br label %bb.ps

bb.oi:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i613, %.lr.ph.i594
  %.0252.i = phi i64 [ 0, %.lr.ph.i594 ], [ %i.biv, %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i613 ]
  %i.biv = add nuw i64 %.0252.i, 1                ; 3 uses
  %i.biw = uitofp i64 %i.biv to float
  %i.bix = fmul float %i.o, %i.biw
  %i.biy = fdiv float %i.bix, %i.bht
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20, !noalias !258
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 24, i1 false), !alias.scope !259, !noalias !258
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !260
  %i.biz = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.oj unwind label %bb.ok, !noalias !259 ; 2 uses

bb.oj:                                            ; preds = %bb.oi
  %i.bja = load ptr, ptr %i.biz, align 8, !tbaa !48, !noalias !259
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 16
  %i.bjc = load ptr, ptr %i.bjb, align 8, !noalias !259
  %i.bjd = invoke noundef ptr %i.bjc(ptr noundef nonnull align 8 dereferenceable(8) %i.biz, i64 noundef %i.bhu, i64 noundef 4)
          to label %bb.ol unwind label %bb.ok, !noalias !259 ; 8 uses

bb.ok:                                            ; preds = %bb.oj, %bb.oi
  %i.bje = landingpad { ptr, i32 }
          catch ptr null
  %i.bjf = extractvalue { ptr, i32 } %i.bje, 0
  call void @__clang_call_terminate(ptr %i.bjf) #22, !noalias !259
  unreachable

bb.ol:                                            ; preds = %bb.oj
  store ptr %i.bjd, ptr %8, align 8, !tbaa !102, !noalias !260
  %i.bjg = getelementptr inbounds nuw [4 x i8], ptr %i.bjd, i64 %i.tg
  store ptr %i.bjg, ptr %i.bhv, align 8, !tbaa !103, !noalias !260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bjd, i8 0, i64 %i.bhu, i1 false), !tbaa !93, !noalias !259
  %scevgep.i.i.i.i.i596 = getelementptr i8, ptr %i.bjd, i64 %i.bhu
  store ptr %scevgep.i.i.i.i.i596, ptr %i.bhw, align 8, !tbaa !101, !noalias !260
  br i1 %.not1217.i, label %._crit_edge.i.i600, label %.lr.ph.i.i597

.lr.ph.i.i597:                                    ; preds = %bb.ol, %bb.om
  %.044.i.i598 = phi i64 [ %i.bjp, %bb.om ], [ 0, %bb.ol ] ; 4 uses
  %i.bjh = getelementptr inbounds nuw [28 x i8], ptr %.val27.i, i64 %.044.i.i598 ; 2 uses
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjh, i64 4
  %i.bjj = load float, ptr %i.bji, align 4, !tbaa !83, !noalias !260
  %i.bjk = fcmp ugt float %i.bjj, %i.biy
  br i1 %i.bjk, label %._crit_edge.i.i600, label %bb.om

bb.om:                                            ; preds = %.lr.ph.i.i597
  %i.bjl = trunc i64 %.044.i.i598 to i32
  %i.bjm = load i16, ptr %i.bjh, align 4, !tbaa !82, !noalias !260
  %i.bjn = zext i16 %i.bjm to i64
  %i.bjo = getelementptr inbounds nuw [4 x i8], ptr %i.bjd, i64 %i.bjn
  store i32 %i.bjl, ptr %i.bjo, align 4, !tbaa !93, !noalias !259
  store i64 %.044.i.i598, ptr %i.bhx, align 8, !tbaa !256, !alias.scope !259, !noalias !258
  %i.bjp = add nuw i64 %.044.i.i598, 1            ; 2 uses
  %exitcond.not.i.i599 = icmp eq i64 %i.bjp, %i.bhm
  br i1 %exitcond.not.i.i599, label %._crit_edge.i.i600, label %.lr.ph.i.i597, !llvm.loop !160

._crit_edge.i.i600:                               ; preds = %bb.om, %.lr.ph.i.i597, %bb.ol
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !260
  store ptr %i.bjd, ptr %9, align 8, !noalias !260
  store i64 %i.tg, ptr %i.bhy, align 8, !noalias !260
  %i.bjq = invoke noundef i64 @_ZN3ozz25ComputeGV4WorstBufferSizeERKNS_4spanIKjEE(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.on unwind label %bb.ox, !noalias !259 ; 2 uses

bb.on:                                            ; preds = %._crit_edge.i.i600
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !260
  %.not55.i.i605 = icmp eq i64 %i.bjq, 0
  br i1 %.not55.i.i605, label %bb.op, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  invoke void @_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.bjq)
          to label %._crit_edge47.i.i606 unwind label %bb.oy

._crit_edge47.i.i606:                             ; preds = %bb.oo
  %.pre.i.i607 = load ptr, ptr %12, align 8, !tbaa !104, !alias.scope !259, !noalias !258
  %.pre48.i.i608 = load ptr, ptr %i.bhz, align 8, !tbaa !105, !alias.scope !259, !noalias !258
  %i.bjr = ptrtoint ptr %.pre48.i.i608 to i64
  br label %bb.op

bb.op:                                            ; preds = %._crit_edge47.i.i606, %bb.on
  %i.bjs = phi i64 [ %i.bjr, %._crit_edge47.i.i606 ], [ 0, %bb.on ]
  %i.bjt = phi ptr [ %.pre.i.i607, %._crit_edge47.i.i606 ], [ null, %bb.on ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !260
  store ptr %i.bjd, ptr %10, align 8, !noalias !260
  store i64 %i.tg, ptr %i.bia, align 8, !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !260
  %i.bju = ptrtoint ptr %i.bjt to i64
  %i.bjv = sub i64 %i.bjs, %i.bju
  store ptr %i.bjt, ptr %11, align 8, !noalias !260
  store i64 %i.bjv, ptr %i.bib, align 8, !noalias !260
  %i.bjw = invoke { ptr, i64 } @_ZN3ozz15EncodeGV4StreamERKNS_4spanIKjEERKNS0_IhEE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.oq unwind label %bb.oz

bb.oq:                                            ; preds = %bb.op
  %i.bjx = extractvalue { ptr, i64 } %i.bjw, 1    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !260
  %i.bjy = load ptr, ptr %i.bhz, align 8, !tbaa !105, !alias.scope !259, !noalias !258 ; 2 uses
  %i.bjz = load ptr, ptr %12, align 8, !tbaa !104, !alias.scope !259, !noalias !258 ; 2 uses
  %i.bka = ptrtoint ptr %i.bjy to i64
  %i.bkb = ptrtoint ptr %i.bjz to i64
  %i.bkc = sub i64 %i.bka, %i.bkb                 ; 3 uses
  %i.bkd = sub i64 %i.bkc, %i.bjx                 ; 2 uses
  %i.bke = icmp ugt i64 %i.bjx, %i.bkc
  br i1 %i.bke, label %bb.or, label %bb.os

bb.or:                                            ; preds = %bb.oq
  %i.bkf = sub i64 0, %i.bjx
  invoke void @_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.bkf)
          to label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i609 unwind label %bb.pa

bb.os:                                            ; preds = %bb.oq
  %i.bkg = icmp ult i64 %i.bkd, %i.bkc
  br i1 %i.bkg, label %bb.ot, label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i609

bb.ot:                                            ; preds = %bb.os
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bjz, i64 %i.bkd ; 2 uses
  %.not.i.i37.i.i633 = icmp eq ptr %i.bjy, %i.bkh
  br i1 %.not.i.i37.i.i633, label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i609, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  store ptr %i.bkh, ptr %i.bhz, align 8, !tbaa !105, !alias.scope !259, !noalias !258
  br label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i609

_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i609: ; preds = %bb.ou, %bb.ot, %bb.os, %bb.or
  %i.bki = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ov unwind label %bb.ow     ; 2 uses

bb.ov:                                            ; preds = %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i609
  %i.bkj = load ptr, ptr %i.bki, align 8, !tbaa !48
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkj, i64 24
  %i.bkl = load ptr, ptr %i.bkk, align 8
  invoke void %i.bkl(ptr noundef nonnull align 8 dereferenceable(8) %i.bki, ptr noundef nonnull %i.bjd)
          to label %bb.pc unwind label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i609
  %i.bkm = landingpad { ptr, i32 }
          catch ptr null
  %i.bkn = extractvalue { ptr, i32 } %i.bkm, 0
  call void @__clang_call_terminate(ptr %i.bkn) #22
  unreachable
end_hunk_0
