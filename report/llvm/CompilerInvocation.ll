Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CompilerInvocation?download=true
inline.NumInlined: 19714
inline.NumDeleted: 4740
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZL17ParseFrontendArgsRN5clang15FrontendOptionsERN4llvm3opt7ArgListERNS_17DiagnosticsEngineERb:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.auk = select i1 %.not.not.i1354.not, i64 %.pre2941, i64 %i.auj
  %i.aul = and i64 %i.auk, -67108865
  store i64 %i.aul, ptr %0, align 8
  %i.aum = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJNS0_12OptSpecifierEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 433)
  %.not.not.i1356.not = icmp eq ptr %i.aum, null
  %.pre2942 = load i64, ptr %0, align 8
  %i.aun = select i1 %.not.not.i1356.not, i64 134217728, i64 201326592
  %i.auo = or i64 %i.aun, %.pre2942
  store i64 %i.auo, ptr %0, align 8
  %i.aup = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJNS0_12OptSpecifierEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 1334)
  %.not.not.i1358.not = icmp eq ptr %i.aup, null
  br i1 %.not.not.i1358.not, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1351
  %i.auq = load i64, ptr %0, align 8
  %i.aur = and i64 %i.auq, -134217729
  store i64 %i.aur, ptr %0, align 8
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1351
  %i.aus = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 6 uses
  store i32 26, ptr %i.aus, align 8, !tbaa !236
  %i.aut = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef 1) ; 8 uses
  %.not453 = icmp eq ptr %i.aut, null
  br i1 %.not453, label %_ZNK4llvm9StringRef11starts_withES0_.exit1424.thread, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !480
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auu, i64 40
  %i.auw = load i32, ptr %i.auv, align 8, !tbaa !360 ; 3 uses
  switch i32 %i.auw, label %.critedge5.thread [
    i32 146, label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit
    i32 138, label %.fold.split.i
    i32 139, label %.fold.split9.i
    i32 144, label %.fold.split10.i
    i32 145, label %.fold.split11.i
    i32 143, label %.fold.split12.i
    i32 140, label %.fold.split13.i
    i32 148, label %.fold.split14.i
    i32 149, label %.fold.split15.i
    i32 223, label %.fold.split16.i
    i32 318, label %.fold.split17.i
    i32 319, label %.fold.split18.i
    i32 3534, label %.fold.split19.i
    i32 356, label %.fold.split20.i
    i32 348, label %.fold.split21.i
    i32 354, label %.fold.split22.i
    i32 359, label %.fold.split23.i
    i32 357, label %.fold.split24.i
    i32 349, label %.fold.split25.i
    i32 364, label %.fold.split26.i
    i32 402, label %.fold.split27.i
    i32 961, label %.fold.split28.i
    i32 962, label %.fold.split29.i
    i32 363, label %.fold.split30.i
    i32 362, label %.fold.split31.i
    i32 367, label %.fold.split32.i
    i32 352, label %.fold.split33.i
    i32 365, label %.fold.split34.i
    i32 355, label %.fold.split35.i
    i32 2333, label %.fold.split36.i
    i32 2013, label %.fold.split37.i
    i32 2975, label %.fold.split38.i
    i32 3596, label %.fold.split39.i
    i32 3365, label %.fold.split40.i
    i32 404, label %.fold.split41.i
    i32 3546, label %.fold.split42.i
    i32 3426, label %.fold.split43.i
    i32 3427, label %.fold.split44.i
    i32 3428, label %.fold.split45.i
    i32 127, label %.fold.split46.i
    i32 378, label %.fold.split47.i
    i32 3349, label %.fold.split48.i
  ]

.fold.split.i:                                    ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split9.i:                                   ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split10.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split11.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split12.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split13.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split14.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split15.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split16.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split17.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split18.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split19.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split20.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split21.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split22.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split23.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split24.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split25.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split26.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split27.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split28.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split29.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split30.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split31.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split32.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split33.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split34.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split35.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split36.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split37.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split38.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split39.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split40.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split41.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split42.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split43.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split44.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split45.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split46.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split47.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

.fold.split48.i:                                  ; preds = %bb.gl
  br label %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit

_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit: ; preds = %bb.gl, %.fold.split.i, %.fold.split9.i, %.fold.split10.i, %.fold.split11.i, %.fold.split12.i, %.fold.split13.i, %.fold.split14.i, %.fold.split15.i, %.fold.split16.i, %.fold.split17.i, %.fold.split18.i, %.fold.split19.i, %.fold.split20.i, %.fold.split21.i, %.fold.split22.i, %.fold.split23.i, %.fold.split24.i, %.fold.split25.i, %.fold.split26.i, %.fold.split27.i, %.fold.split28.i, %.fold.split29.i, %.fold.split30.i, %.fold.split31.i, %.fold.split32.i, %.fold.split33.i, %.fold.split34.i, %.fold.split35.i, %.fold.split36.i, %.fold.split37.i, %.fold.split38.i, %.fold.split39.i, %.fold.split40.i, %.fold.split41.i, %.fold.split42.i, %.fold.split43.i, %.fold.split44.i, %.fold.split45.i, %.fold.split46.i, %.fold.split47.i, %.fold.split48.i
  %.010.ptr7.lcssa.i = phi ptr [ @_ZZL22getFrontendActionTablevE5Table, %bb.gl ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 320), %.fold.split47.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 8), %.fold.split.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 16), %.fold.split9.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 24), %.fold.split10.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 32), %.fold.split11.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 40), %.fold.split12.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 48), %.fold.split13.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 56), %.fold.split14.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 64), %.fold.split15.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 72), %.fold.split16.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 80), %.fold.split17.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 88), %.fold.split18.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 96), %.fold.split19.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 104), %.fold.split20.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 112), %.fold.split21.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 120), %.fold.split22.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 128), %.fold.split23.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 136), %.fold.split24.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 144), %.fold.split25.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 152), %.fold.split26.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 160), %.fold.split27.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 168), %.fold.split28.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 176), %.fold.split29.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 184), %.fold.split30.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 192), %.fold.split31.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 200), %.fold.split32.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 208), %.fold.split33.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 216), %.fold.split34.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 224), %.fold.split35.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 232), %.fold.split36.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 240), %.fold.split37.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 248), %.fold.split38.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 256), %.fold.split39.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 264), %.fold.split40.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 272), %.fold.split41.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 280), %.fold.split42.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 288), %.fold.split43.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 296), %.fold.split44.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 304), %.fold.split45.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 312), %.fold.split46.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL22getFrontendActionTablevE5Table, i64 328), %.fold.split48.i ]
  %i.aux = load i32, ptr %.010.ptr7.lcssa.i, align 4, !tbaa !2501 ; 3 uses
  switch i32 %i.aux, label %.critedge5 [
    i32 1, label %bb.gm
    i32 16, label %bb.gq
  ]

bb.gm:                                            ; preds = %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit
  switch i32 %i.auw, label %.critedge5.thread [
    i32 138, label %.critedge3
    i32 144, label %.critedge3
  ]

.critedge3:                                       ; preds = %bb.gm, %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #26
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aut, i64 48 ; 2 uses
  %i.auz = load ptr, ptr %i.auy, align 8, !tbaa !134
  %i.ava = load ptr, ptr %i.auz, align 8, !tbaa !282 ; 4 uses
  %.not.i1361 = icmp eq ptr %i.ava, null
  br i1 %.not.i1361, label %_ZN4llvm9StringRefC2EPKc.exit.thread, label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit.thread:             ; preds = %.critedge3
  store ptr %i.ava, ptr %52, align 8, !tbaa !282
  %.sroa.2.0..sroa_idx.i3502 = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i3502, align 8, !tbaa !273
  %i.avb = getelementptr inbounds nuw i8, ptr %52, i64 20 ; 2 uses
  store i8 0, ptr %i.avb, align 4, !tbaa !2502
  %i.avc = getelementptr inbounds nuw i8, ptr %52, i64 16
  br label %_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %.critedge3
  %i.avd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ava) #26 ; 2 uses
  store ptr %i.ava, ptr %52, align 8, !tbaa !282
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 3 uses
  store i64 %i.avd, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !273
  %i.ave = getelementptr inbounds nuw i8, ptr %52, i64 20 ; 4 uses
  store i8 0, ptr %i.ave, align 4, !tbaa !2502
  %i.avf = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 4 uses
  %.not2839 = icmp eq i64 %i.avd, 7
  br i1 %.not2839, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i, label %_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i: ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.avg = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(24) %52, ptr nonnull @.str.229, i64 7) #26
  %i.avh = icmp eq i32 %i.avg, 0
  br i1 %i.avh, label %_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit.thread, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i._ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit_crit_edge

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i._ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit_crit_edge: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i
  %.pre2943 = load i8, ptr %i.ave, align 4, !tbaa !2502, !range !451
  br label %_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit

_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit.thread: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i
  store i64 4294967296, ptr %i.avf, align 8
  br label %_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit1364

_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit: ; preds = %_ZN4llvm9StringRefC2EPKc.exit.thread, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i._ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit_crit_edge, %_ZN4llvm9StringRefC2EPKc.exit
  %i.avi = phi ptr [ %i.avf, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i._ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit_crit_edge ], [ %i.avf, %_ZN4llvm9StringRefC2EPKc.exit ], [ %i.avc, %_ZN4llvm9StringRefC2EPKc.exit.thread ] ; 4 uses
  %i.avj = phi ptr [ %i.ave, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i._ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit_crit_edge ], [ %i.ave, %_ZN4llvm9StringRefC2EPKc.exit ], [ %i.avb, %_ZN4llvm9StringRefC2EPKc.exit.thread ]
  %.sroa.2.0..sroa_idx.i3504 = phi ptr [ %.sroa.2.0..sroa_idx.i, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i._ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit_crit_edge ], [ %.sroa.2.0..sroa_idx.i, %_ZN4llvm9StringRefC2EPKc.exit ], [ %.sroa.2.0..sroa_idx.i3502, %_ZN4llvm9StringRefC2EPKc.exit.thread ]
  %i.avk = phi i8 [ %.pre2943, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i._ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit_crit_edge ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit.thread ] ; 2 uses
  %i.avl = trunc nuw i8 %i.avk to i1
  %i.avm = load i64, ptr %.sroa.2.0..sroa_idx.i3504, align 8
  %i.avn = icmp ne i64 %i.avm, 4
  %or.cond.not.i1362 = select i1 %i.avl, i1 true, i1 %i.avn
  br i1 %or.cond.not.i1362, label %_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit1364, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i1363

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i1363: ; preds = %_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit
  %i.avo = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(24) %52, ptr nonnull @.str.284, i64 4) #26
  %i.avp = icmp eq i32 %i.avo, 0
  br i1 %i.avp, label %bb.gn, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i1363._ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit1364_crit_edge

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i1363._ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit1364_crit_edge: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i1363
  %.pre2944 = load i8, ptr %i.avj, align 4, !tbaa !2502, !range !451
  br label %_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit1364

bb.gn:                                            ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i1363
  store i64 4294967297, ptr %i.avi, align 8
  br label %_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit1364

_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit1364: ; preds = %_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit.thread, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i1363._ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit1364_crit_edge, %_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit, %bb.gn
  %i.avq = phi ptr [ %i.avi, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i1363._ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit1364_crit_edge ], [ %i.avi, %_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit ], [ %i.avi, %bb.gn ], [ %i.avf, %_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit.thread ]
  %i.avr = phi i8 [ %.pre2944, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i1363._ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit1364_crit_edge ], [ %i.avk, %_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit ], [ 1, %bb.gn ], [ 1, %_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit.thread ]
  %i.avs = trunc nuw i8 %i.avr to i1
  %i.avt = load i32, ptr %i.avq, align 4          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #26
  %.not4542840 = icmp ne i32 %i.avt, -1
  %.not454.not = select i1 %i.avs, i1 %.not4542840, i1 false
  br i1 %.not454.not, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit1364
  %i.avu = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.avt, ptr %i.avu, align 4, !tbaa !234
  br label %.critedge5.thread

bb.gp:                                            ; preds = %_ZN4llvm12StringSwitchIjjE9CaseLowerENS_13StringLiteralEj.exit1364
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #26
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %53, ptr noundef nonnull align 8 dereferenceable(15256) %2, i32 0, i32 noundef 410) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #26
  call void @_ZNK4llvm3opt3Arg11getAsStringB5cxx11ERKNS0_7ArgListE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %54, ptr noundef nonnull align 8 dereferenceable(88) %i.aut, ptr noundef nonnull align 8 dereferenceable(176) %1) #26
  %i.avv = load ptr, ptr %54, align 8, !tbaa !272
  %i.avw = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.avx = load i64, ptr %i.avw, align 8, !tbaa !72
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %53, ptr %i.avv, i64 %i.avx)
  %i.avy = load ptr, ptr %i.auy, align 8, !tbaa !134
  %i.avz = load ptr, ptr %i.avy, align 8, !tbaa !282
  %i.awa = load ptr, ptr %53, align 8, !tbaa !335 ; 2 uses
  %.not.i.i.i1365 = icmp eq ptr %i.awa, null
  br i1 %.not.i.i.i1365, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.gp
  %i.awb = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.awc = load ptr, ptr %i.awb, align 8, !tbaa !336
  %i.awd = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.awc) ; 2 uses
  store ptr %i.awd, ptr %53, align 8, !tbaa !335
  br label %_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit: ; preds = %bb.gp, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.awe = phi ptr [ %i.awd, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.awa, %bb.gp ] ; 2 uses
  %i.awf = ptrtoint ptr %i.avz to i64
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awe, i64 1
  %i.awh = load i8, ptr %i.awe, align 8, !tbaa !348
  %i.awi = zext i8 %i.awh to i64
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awg, i64 %i.awi
  store i8 1, ptr %i.awj, align 1, !tbaa !92
  %i.awk = load ptr, ptr %53, align 8, !tbaa !335 ; 3 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 16
  %i.awm = load i8, ptr %i.awk, align 8, !tbaa !348 ; 2 uses
  %i.awn = add i8 %i.awm, 1
  store i8 %i.awn, ptr %i.awk, align 8, !tbaa !348
  %i.awo = zext i8 %i.awm to i64
  %i.awp = getelementptr inbounds nuw [8 x i8], ptr %i.awl, i64 %i.awo
  store i64 %i.awf, ptr %i.awp, align 8, !tbaa !273
  %i.awq = load ptr, ptr %54, align 8, !tbaa !272 ; 2 uses
  %i.awr = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  %i.aws = icmp eq ptr %i.awq, %i.awr
  br i1 %i.aws, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1368, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1366: ; preds = %_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit
  %i.awt = load i64, ptr %i.awr, align 8, !tbaa !92
  %i.awu = add i64 %i.awt, 1
  call void @_ZdlPvm(ptr noundef %i.awq, i64 noundef %i.awu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1368

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1368: ; preds = %_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1366
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %53) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #26
  %i.awv = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.awv, align 4, !tbaa !234
  br label %.critedge5.thread

bb.gq:                                            ; preds = %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit
  %i.aww = icmp eq i32 %i.auw, 961
  br i1 %i.aww, label %bb.gr, label %.critedge5.thread

bb.gr:                                            ; preds = %bb.gq
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aut, i64 48
  %i.awy = load ptr, ptr %i.awx, align 8, !tbaa !134
  %i.awz = load ptr, ptr %i.awy, align 8, !tbaa !282 ; 2 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.axb = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.axc = load i64, ptr %i.axb, align 8, !tbaa !72
  %i.axd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.awz) #26
  %i.axe = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.axa, i64 noundef 0, i64 noundef %i.axc, ptr noundef nonnull %i.awz, i64 noundef %i.axd) #26 ; 0 uses
  br label %.critedge5.thread

.critedge5:                                       ; preds = %_ZL17getFrontendActionRN4llvm3opt12OptSpecifierE.exit
  %87 = icmp eq i32 %i.aux, 22
  br i1 %87, label %bb.gs, label %.critedge5.thread

bb.gs:                                            ; preds = %.critedge5
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #26
  %i.axf = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef 2338)
  %.not2838 = icmp eq ptr %i.axf, null
  br i1 %.not2838, label %.thread3507, label %bb.gt

.thread3507:                                      ; preds = %bb.gs
  store ptr @.str.711, ptr %55, align 8
  %i.axg = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i64 6, ptr %i.axg, align 8
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit

bb.gt:                                            ; preds = %bb.gs
  %i.axh = call { ptr, i64 } @_ZNK4llvm3opt7ArgList15getLastArgValueENS0_12OptSpecifierENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 2338, ptr nonnull @.str.27, i64 0) #26 ; 2 uses
  %i.axi = extractvalue { ptr, i64 } %i.axh, 0    ; 12 uses
  %i.axj = extractvalue { ptr, i64 } %i.axh, 1    ; 8 uses
  store ptr %i.axi, ptr %55, align 8
  %i.axk = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i64 %i.axj, ptr %i.axk, align 8
  switch i64 %i.axj, label %_ZN4llvmeqENS_9StringRefES0_.exit1387.thread2686 [
    i64 24, label %_ZN4llvmeqENS_9StringRefES0_.exit
    i64 19, label %_ZN4llvmeqENS_9StringRefES0_.exit1377
  ]

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.gt
  %i.axl = load i128, ptr %i.axi, align 1
  %i.axm = xor i128 %i.axl, 145391962106205260116669278190834841701
  %i.axn = getelementptr i8, ptr %i.axi, i64 16
  %i.axo = load i64, ptr %i.axn, align 1
  %i.axp = zext i64 %i.axo to i128
  %i.axq = xor i128 %i.axp, 3564086073038810476
  %i.axr = or i128 %i.axm, %i.axq
  %i.axs = icmp ne i128 %i.axr, 0
  %i.axt = zext i1 %i.axs to i32
  %i.axu = icmp eq i32 %i.axt, 0
  br i1 %i.axu, label %._crit_edge.i.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit1387

_ZN4llvmeqENS_9StringRefES0_.exit1377:            ; preds = %bb.gt
  %bcmp.i1376 = call i32 @bcmp(ptr %i.axi, ptr nonnull @.str.713, i64 %i.axj)
  %i.axv = icmp eq i32 %bcmp.i1376, 0
  br i1 %i.axv, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1382

_ZN4llvmeqENS_9StringRefES0_.exit1382:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1377
  %i.axw = load i128, ptr %i.axi, align 1
  %i.axx = xor i128 %i.axw, 153392967046653771065507989878142433381
  %i.axy = getelementptr i8, ptr %i.axi, i64 3
  %i.axz = load i128, ptr %i.axy, align 1
  %i.aya = xor i128 %i.axz, 67075012669918379489524033733549191781
  %i.ayb = or i128 %i.axx, %i.aya
  %i.ayc = icmp ne i128 %i.ayb, 0
  %i.ayd = zext i1 %i.ayc to i32
  %i.aye = icmp eq i32 %i.ayd, 0
  br i1 %i.aye, label %._crit_edge.i.i.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit1387:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %bcmp.i1386 = call i32 @bcmp(ptr nonnull %i.axi, ptr nonnull @.str.715, i64 %i.axj)
  %i.ayf = icmp eq i32 %bcmp.i1386, 0
  br i1 %i.ayf, label %._crit_edge.i.i.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1377
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !2503)
  %.not.i1388 = icmp eq ptr %i.axi, null
  %i.ayg = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 3 uses
  store ptr %i.ayg, ptr %58, align 8, !tbaa !69, !alias.scope !2503
  br i1 %.not.i1388, label %bb.gu, label %._crit_edge.i.i.i.thread

._crit_edge.i.i.i.thread:                         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26, !noalias !2503
  store i64 %i.axj, ptr %i.j, align 8, !tbaa !273, !noalias !2503
  %i.ayh = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0) #26 ; 2 uses
  store ptr %i.ayh, ptr %58, align 8, !tbaa !272, !alias.scope !2503
  %i.ayi = load i64, ptr %i.j, align 8, !tbaa !273, !noalias !2503
  store i64 %i.ayi, ptr %i.ayg, align 8, !tbaa !92, !alias.scope !2503
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.gu:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  %i.ayj = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i64 0, ptr %i.ayj, align 8, !tbaa !72, !alias.scope !2503
  store i8 0, ptr %i.ayg, align 8, !tbaa !92, !alias.scope !2503
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

._crit_edge.i.i.i:                                ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1387, %_ZN4llvmeqENS_9StringRefES0_.exit1382, %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #26
  %i.ayk = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  store ptr %i.ayk, ptr %58, align 8, !tbaa !69, !alias.scope !2503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26, !noalias !2503
  store i64 %i.axj, ptr %i.j, align 8, !tbaa !273, !noalias !2503
  %i.ayl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0) #26 ; 2 uses
  store ptr %i.ayl, ptr %58, align 8, !tbaa !272, !alias.scope !2503
  %i.aym = load i64, ptr %i.j, align 8, !tbaa !273, !noalias !2503
  store i64 %i.aym, ptr %i.ayk, align 8, !tbaa !92, !alias.scope !2503
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i
  %i.ayn = phi ptr [ %i.ayh, %._crit_edge.i.i.i.thread ], [ %i.ayl, %._crit_edge.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ayn, ptr nonnull align 1 %i.axi, i64 %i.axj, i1 false)
  %i.ayo = load i64, ptr %i.j, align 8, !tbaa !273, !noalias !2503 ; 2 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i64 %i.ayo, ptr %i.ayp, align 8, !tbaa !72, !alias.scope !2503
  %i.ayq = load ptr, ptr %58, align 8, !tbaa !272, !alias.scope !2503
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 %i.ayo
  store i8 0, ptr %i.ayr, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26, !noalias !2503
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.gu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  %i.ays = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %58, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.716, i64 noundef 31) #26, !noalias !2504 ; 6 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 5 uses
  store ptr %i.ayt, ptr %57, align 8, !tbaa !69, !alias.scope !2504
  %i.ayu = load ptr, ptr %i.ays, align 8, !tbaa !272 ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ays, i64 16 ; 5 uses
  %i.ayw = icmp eq ptr %i.ayu, %i.ayv
  br i1 %i.ayw, label %bb.gv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1389

bb.gv:                                            ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ays, i64 8
  %i.ayy = load i64, ptr %i.ayx, align 8, !tbaa !72 ; 3 uses
  %i.ayz = icmp ult i64 %i.ayy, 16
  call void @llvm.assume(i1 %i.ayz)
  %i.aza = add nuw nsw i64 %i.ayy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ayt, ptr noundef nonnull align 8 dereferenceable(1) %i.ayv, i64 %i.aza, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1389: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  store ptr %i.ayu, ptr %57, align 8, !tbaa !272, !alias.scope !2504
  %i.azb = load i64, ptr %i.ayv, align 8, !tbaa !92
  store i64 %i.azb, ptr %i.ayt, align 8, !tbaa !92, !alias.scope !2504
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ays, i64 8
  %.pre.i1390 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !72
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1389
  %i.azc = phi i64 [ %i.ayy, %bb.gv ], [ %.pre.i1390, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1389 ]
  %i.azd = getelementptr inbounds nuw i8, ptr %i.ays, i64 8
  %i.aze = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 2 uses
  store i64 %i.azc, ptr %i.aze, align 8, !tbaa !72, !alias.scope !2504
  store ptr %i.ayv, ptr %i.ays, align 8, !tbaa !272
  store i64 0, ptr %i.azd, align 8, !tbaa !72
  store i8 0, ptr %i.ayv, align 8, !tbaa !92
  call void @llvm.experimental.noalias.scope.decl(metadata !2505)
  %i.azf = load i64, ptr %i.aze, align 8, !tbaa !72, !noalias !2505
  %i.azg = add i64 %i.azf, -4611686018427387889
  %i.azh = icmp ult i64 %i.azg, 15
  br i1 %i.azh, label %bb.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.gw:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.148) #28, !noalias !2505
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.azi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull @.str.717, i64 noundef 15) #26, !noalias !2505 ; 6 uses
  %i.azj = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 5 uses
  store ptr %i.azj, ptr %56, align 8, !tbaa !69, !alias.scope !2505
  %i.azk = load ptr, ptr %i.azi, align 8, !tbaa !272 ; 2 uses
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azi, i64 16 ; 5 uses
  %i.azm = icmp eq ptr %i.azk, %i.azl
  br i1 %i.azm, label %bb.gx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1391

bb.gx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azi, i64 8
  %i.azo = load i64, ptr %i.azn, align 8, !tbaa !72 ; 3 uses
  %i.azp = icmp ult i64 %i.azo, 16
  call void @llvm.assume(i1 %i.azp)
  %i.azq = add nuw nsw i64 %i.azo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.azj, ptr noundef nonnull align 8 dereferenceable(1) %i.azl, i64 %i.azq, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1391: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.azk, ptr %56, align 8, !tbaa !272, !alias.scope !2505
  %i.azr = load i64, ptr %i.azl, align 8, !tbaa !92
  store i64 %i.azr, ptr %i.azj, align 8, !tbaa !92, !alias.scope !2505
  %.phi.trans.insert.i1392 = getelementptr inbounds nuw i8, ptr %i.azi, i64 8
  %.pre.i1393 = load i64, ptr %.phi.trans.insert.i1392, align 8, !tbaa !72
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1391
  %i.azs = phi i64 [ %i.azo, %bb.gx ], [ %.pre.i1393, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1391 ]
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azi, i64 8
  %i.azu = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 2 uses
  store i64 %i.azs, ptr %i.azu, align 8, !tbaa !72, !alias.scope !2505
  store ptr %i.azl, ptr %i.azi, align 8, !tbaa !272
  store i64 0, ptr %i.azt, align 8, !tbaa !72
  store i8 0, ptr %i.azl, align 8, !tbaa !92
  %i.azv = load ptr, ptr %57, align 8, !tbaa !272 ; 2 uses
  %i.azw = icmp eq ptr %i.azv, %i.ayt
  br i1 %i.azw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1396, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1394: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.azx = load i64, ptr %i.ayt, align 8, !tbaa !92
  %i.azy = add i64 %i.azx, 1
  call void @_ZdlPvm(ptr noundef %i.azv, i64 noundef %i.azy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1396

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1396: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1394
  %i.azz = load ptr, ptr %58, align 8, !tbaa !272 ; 2 uses
  %i.baa = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.bab = icmp eq ptr %i.azz, %i.baa
  br i1 %i.bab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1397

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1397: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1396
  %i.bac = load i64, ptr %i.baa, align 8, !tbaa !92
  %i.bad = add i64 %i.bac, 1
  call void @_ZdlPvm(ptr noundef %i.azz, i64 noundef %i.bad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1399

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1399: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1396, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1397
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #26
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %59, ptr noundef nonnull align 8 dereferenceable(15256) %2, i32 0, i32 noundef 410) #26
  %i.bae = load ptr, ptr %59, align 8, !tbaa !335 ; 2 uses
  %.not.i.i.i1400 = icmp eq ptr %i.bae, null
  br i1 %.not.i.i.i1400, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i1401, label %_ZNK5clang17DiagnosticBuilderlsIA84_cEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i1401: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1399
  %i.baf = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.bag = load ptr, ptr %i.baf, align 8, !tbaa !336
  %i.bah = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.bag) ; 2 uses
  store ptr %i.bah, ptr %59, align 8, !tbaa !335
  br label %_ZNK5clang17DiagnosticBuilderlsIA84_cEERKS0_RKT_.exit

_ZNK5clang17DiagnosticBuilderlsIA84_cEERKS0_RKT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1399, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i1401
  %i.bai = phi ptr [ %i.bah, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i1401 ], [ %i.bae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1399 ] ; 2 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bai, i64 1
  %i.bak = load i8, ptr %i.bai, align 8, !tbaa !348
  %i.bal = zext i8 %i.bak to i64
  %i.bam = getelementptr inbounds nuw i8, ptr %i.baj, i64 %i.bal
  store i8 1, ptr %i.bam, align 1, !tbaa !92
  %i.ban = load ptr, ptr %59, align 8, !tbaa !335 ; 3 uses
  %i.bao = getelementptr inbounds nuw i8, ptr %i.ban, i64 16
  %i.bap = load i8, ptr %i.ban, align 8, !tbaa !348 ; 2 uses
  %i.baq = add i8 %i.bap, 1
  store i8 %i.baq, ptr %i.ban, align 8, !tbaa !348
  %i.bar = zext i8 %i.bap to i64
  %i.bas = getelementptr inbounds nuw [8 x i8], ptr %i.bao, i64 %i.bar
  store i64 ptrtoint (ptr @.str.718 to i64), ptr %i.bas, align 8, !tbaa !273
  %i.bat = load ptr, ptr %56, align 8, !tbaa !272
  %i.bau = load i64, ptr %i.azu, align 8, !tbaa !72
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %59, ptr %i.bat, i64 %i.bau)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %59) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #26
  %i.bav = load ptr, ptr %56, align 8, !tbaa !272 ; 2 uses
  %i.baw = icmp eq ptr %i.bav, %i.azj
  br i1 %i.baw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1404, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1402

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1402: ; preds = %_ZNK5clang17DiagnosticBuilderlsIA84_cEERKS0_RKT_.exit
  %i.bax = load i64, ptr %i.azj, align 8, !tbaa !92
  %i.bay = add i64 %i.bax, 1
  call void @_ZdlPvm(ptr noundef %i.bav, i64 noundef %i.bay) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1404

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1404: ; preds = %_ZNK5clang17DiagnosticBuilderlsIA84_cEERKS0_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1402
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit1387.thread2686: ; preds = %bb.gt
  %.not.i1406 = icmp ult i64 %i.axj, 4
  br i1 %.not.i1406, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread2688, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1387, %_ZN4llvmeqENS_9StringRefES0_.exit1382, %.thread3507, %_ZN4llvmeqENS_9StringRefES0_.exit1387.thread2686
  %i.baz = phi ptr [ %i.axi, %_ZN4llvmeqENS_9StringRefES0_.exit1387.thread2686 ], [ %i.axi, %_ZN4llvmeqENS_9StringRefES0_.exit1387 ], [ %i.axi, %_ZN4llvmeqENS_9StringRefES0_.exit1382 ], [ @.str.711, %.thread3507 ]
  %i.bba = load i32, ptr %i.baz, align 1
  %i.bbb = icmp ne i32 %i.bba, 762537577
  %i.bbc = zext i1 %i.bbb to i32
  %i.bbd = icmp eq i32 %i.bbc, 0
  br i1 %i.bbd, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread2688

_ZNK4llvm9StringRef11starts_withES0_.exit.thread2688: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1387.thread2686, %_ZNK4llvm9StringRef11starts_withES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #26
  call void @_ZNK4llvm9StringRef3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %62, ptr noundef nonnull align 8 dereferenceable(16) %55)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %61, ptr noundef nonnull @.str.716, ptr noundef nonnull align 8 dereferenceable(32) %62)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %60, ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull @.str.59)
  %i.bbe = load ptr, ptr %61, align 8, !tbaa !272 ; 2 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %i.bbg = icmp eq ptr %i.bbe, %i.bbf
  br i1 %i.bbg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1410, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1408

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1408: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread2688
  %i.bbh = load i64, ptr %i.bbf, align 8, !tbaa !92
  %i.bbi = add i64 %i.bbh, 1
  call void @_ZdlPvm(ptr noundef %i.bbe, i64 noundef %i.bbi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1410

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1410: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread2688, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1408
  %i.bbj = load ptr, ptr %62, align 8, !tbaa !272 ; 2 uses
  %i.bbk = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  %i.bbl = icmp eq ptr %i.bbj, %i.bbk
  br i1 %i.bbl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1413, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1411

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1411: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1410
  %i.bbm = load i64, ptr %i.bbk, align 8, !tbaa !92
  %i.bbn = add i64 %i.bbm, 1
  call void @_ZdlPvm(ptr noundef %i.bbj, i64 noundef %i.bbn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1413

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1413: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1410, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1411
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #26
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %63, ptr noundef nonnull align 8 dereferenceable(15256) %2, i32 0, i32 noundef 410) #26
  %i.bbo = load ptr, ptr %63, align 8, !tbaa !335 ; 2 uses
  %.not.i.i.i1414 = icmp eq ptr %i.bbo, null
  br i1 %.not.i.i.i1414, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i1415, label %_ZNK5clang17DiagnosticBuilderlsIA84_cEERKS0_RKT_.exit1416

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i1415: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1413
  %i.bbp = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.bbq = load ptr, ptr %i.bbp, align 8, !tbaa !336
  %i.bbr = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.bbq) ; 2 uses
  store ptr %i.bbr, ptr %63, align 8, !tbaa !335
  br label %_ZNK5clang17DiagnosticBuilderlsIA84_cEERKS0_RKT_.exit1416

_ZNK5clang17DiagnosticBuilderlsIA84_cEERKS0_RKT_.exit1416: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1413, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i1415
  %i.bbs = phi ptr [ %i.bbr, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i1415 ], [ %i.bbo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1413 ] ; 2 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbs, i64 1
  %i.bbu = load i8, ptr %i.bbs, align 8, !tbaa !348
  %i.bbv = zext i8 %i.bbu to i64
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbt, i64 %i.bbv
  store i8 1, ptr %i.bbw, align 1, !tbaa !92
  %i.bbx = load ptr, ptr %63, align 8, !tbaa !335 ; 3 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 16
  %i.bbz = load i8, ptr %i.bbx, align 8, !tbaa !348 ; 2 uses
  %i.bca = add i8 %i.bbz, 1
  store i8 %i.bca, ptr %i.bbx, align 8, !tbaa !348
  %i.bcb = zext i8 %i.bbz to i64
  %i.bcc = getelementptr inbounds nuw [8 x i8], ptr %i.bby, i64 %i.bcb
  store i64 ptrtoint (ptr @.str.718 to i64), ptr %i.bcc, align 8, !tbaa !273
  %i.bcd = load ptr, ptr %60, align 8, !tbaa !272
  %i.bce = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.bcf = load i64, ptr %i.bce, align 8, !tbaa !72
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %63, ptr %i.bcd, i64 %i.bcf)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %63) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #26
  %i.bcg = load ptr, ptr %60, align 8, !tbaa !272 ; 2 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.bci = icmp eq ptr %i.bcg, %i.bch
  br i1 %i.bci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1419, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1417

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1417: ; preds = %_ZNK5clang17DiagnosticBuilderlsIA84_cEERKS0_RKT_.exit1416
  %i.bcj = load i64, ptr %i.bch, align 8, !tbaa !92
  %i.bck = add i64 %i.bcj, 1
  call void @_ZdlPvm(ptr noundef %i.bcg, i64 noundef %i.bck) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1419

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1419: ; preds = %_ZNK5clang17DiagnosticBuilderlsIA84_cEERKS0_RKT_.exit1416, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1417
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1419, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1404
  %.sroa.02211.0 = phi i32 [ 26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1404 ], [ 22, %_ZNK4llvm9StringRef11starts_withES0_.exit ], [ 26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1419 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  br label %.critedge5.thread

.critedge5.thread:                                ; preds = %bb.gm, %bb.gl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1368, %bb.go, %bb.gr, %bb.gq, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, %.critedge5
  %.sroa.02211.1 = phi i32 [ %.sroa.02211.0, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread ], [ %i.aux, %.critedge5 ], [ 16, %bb.gq ], [ 16, %bb.gr ], [ 1, %bb.go ], [ 1, %bb.gm ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1368 ], [ 0, %bb.gl ]
  store i32 %.sroa.02211.1, ptr %i.aus, align 8, !tbaa !236
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.aut, i64 24 ; 2 uses
  %.sroa.2.0..sroa_idx.i1420 = getelementptr inbounds nuw i8, ptr %i.aut, i64 32 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i1420, align 8, !tbaa !273
  %.not.i1422 = icmp ult i64 %.sroa.2.0.copyload.i, 9
  br i1 %.not.i1422, label %_ZNK4llvm9StringRef11starts_withES0_.exit1424.thread2689, label %_ZNK4llvm9StringRef11starts_withES0_.exit1424

_ZNK4llvm9StringRef11starts_withES0_.exit1424:    ; preds = %.critedge5.thread
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bcl, align 8, !tbaa !282 ; 2 uses
  %i.bcm = load i64, ptr %.sroa.0.0.copyload.i, align 1
  %i.bcn = xor i64 %i.bcm, 7887320468799316269
  %i.bco = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 8
  %i.bcp = load i8, ptr %i.bco, align 1
  %i.bcq = zext i8 %i.bcp to i64
  %i.bcr = xor i64 %i.bcq, 112
  %i.bcs = or i64 %i.bcn, %i.bcr
  %i.bct = icmp ne i64 %i.bcs, 0
  %i.bcu = zext i1 %i.bct to i32
  %i.bcv = icmp eq i32 %i.bcu, 0
  br i1 %i.bcv, label %_ZNK4llvm9StringRef11starts_withES0_.exit1424.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit1424.thread2689

_ZNK4llvm9StringRef11starts_withES0_.exit1424.thread2689: ; preds = %.critedge5.thread, %_ZNK4llvm9StringRef11starts_withES0_.exit1424
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !2506
  store i32 1, ptr %11, align 4, !noalias !2506
  %i.bcw = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 2408, ptr %i.bcw, align 4, !noalias !2506
  %i.bcx = call i64 @_ZNK4llvm3opt7ArgList8getRangeESt16initializer_listINS0_12OptSpecifierEE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr nonnull %11, i64 2) #26, !noalias !2506 ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %i.bcx, 32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !2506
  %i.bcy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bcz = load ptr, ptr %i.bcy, align 8, !tbaa !134, !noalias !2506 ; 2 uses
  %i.bda = and i64 %i.bcx, 4294967295             ; 2 uses
  %i.bdb = getelementptr inbounds nuw [8 x i8], ptr %i.bcz, i64 %i.bda ; 2 uses
  %i.bdc = getelementptr [8 x i8], ptr %i.bcz, i64 %.sroa.4.0.extract.shift.i ; 5 uses
  %.not26.i.i.i = icmp samesign eq i64 %i.bda, %.sroa.4.0.extract.shift.i
  br i1 %.not26.i.i.i, label %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDES5_EEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, label %.lr.ph.i.i.i1425

.lr.ph.i.i.i1425:                                 ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit1424.thread2689, %.thread21.i.i.i
  %.sroa.033.0.i = phi ptr [ %i.bdg, %.thread21.i.i.i ], [ %i.bdb, %_ZNK4llvm9StringRef11starts_withES0_.exit1424.thread2689 ] ; 4 uses
  %i.bdd = load ptr, ptr %.sroa.033.0.i, align 8, !tbaa !477, !noalias !2506 ; 3 uses
  %.not14.i.i.i = icmp eq ptr %i.bdd, null
  br i1 %.not14.i.i.i, label %.thread21.i.i.i, label %bb.gy

.preheader.1.i.i.i:                               ; preds = %bb.gy
  %i.bde = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.bdd, i32 2408) #26, !noalias !2506
  br i1 %i.bde, label %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDES5_EEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, label %.thread21.i.i.i

bb.gy:                                            ; preds = %.lr.ph.i.i.i1425
  %i.bdf = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.bdd, i32 1) #26, !noalias !2506
  br i1 %i.bdf, label %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDES5_EEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, label %.preheader.1.i.i.i

.thread21.i.i.i:                                  ; preds = %.preheader.1.i.i.i, %.lr.ph.i.i.i1425
  %i.bdg = getelementptr inbounds nuw i8, ptr %.sroa.033.0.i, i64 8 ; 2 uses
  %.not.i.i.i1426 = icmp eq ptr %i.bdg, %i.bdc
  br i1 %.not.i.i.i1426, label %_ZNK4llvm9StringRef11starts_withES0_.exit1424.thread, label %.lr.ph.i.i.i1425, !llvm.loop !20

_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDES5_EEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit: ; preds = %.preheader.1.i.i.i, %bb.gy, %_ZNK4llvm9StringRef11starts_withES0_.exit1424.thread2689
  %.sroa.033.1.i = phi ptr [ %i.bdb, %_ZNK4llvm9StringRef11starts_withES0_.exit1424.thread2689 ], [ %.sroa.033.0.i, %bb.gy ], [ %.sroa.033.0.i, %.preheader.1.i.i.i ] ; 2 uses
  %.not28412867 = icmp eq ptr %.sroa.033.1.i, %i.bdc
  br i1 %.not28412867, label %_ZNK4llvm9StringRef11starts_withES0_.exit1424.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDES5_EEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj2EEppEv.exit
  %.02869 = phi ptr [ %.2.ph, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj2EEppEv.exit ], [ null, %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDES5_EEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit ] ; 3 uses
  %.sroa.02145.02868 = phi ptr [ %.sroa.02145.2, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj2EEppEv.exit ], [ %.sroa.033.1.i, %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDES5_EEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit ] ; 2 uses
  %i.bdh = load ptr, ptr %.sroa.02145.02868, align 8, !tbaa !477 ; 2 uses
  %i.bdi = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.bdh, i32 2408) #26
  br i1 %i.bdi, label %bb.hc, label %bb.gz

bb.gz:                                            ; preds = %.lr.ph
  %.not455 = icmp eq ptr %.02869, null
  br i1 %.not455, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.bdj = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.aut, i32 144) #26
  br i1 %i.bdj, label %_ZNK4llvm9StringRef11starts_withES0_.exit1424.thread, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #26
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %64, ptr noundef nonnull align 8 dereferenceable(15256) %2, i32 0, i32 noundef 733) #26
  %i.bdk = getelementptr inbounds nuw i8, ptr %.02869, i64 24
  %.sroa.0.0.copyload.i1428 = load ptr, ptr %i.bdk, align 8, !tbaa !282
  %.sroa.2.0..sroa_idx.i1429 = getelementptr inbounds nuw i8, ptr %.02869, i64 32
  %.sroa.2.0.copyload.i1430 = load i64, ptr %.sroa.2.0..sroa_idx.i1429, align 8, !tbaa !273
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %64, ptr %.sroa.0.0.copyload.i1428, i64 %.sroa.2.0.copyload.i1430)
  %.sroa.0.0.copyload.i1436 = load ptr, ptr %i.bcl, align 8, !tbaa !282
  %.sroa.2.0.copyload.i1438 = load i64, ptr %.sroa.2.0..sroa_idx.i1420, align 8, !tbaa !273
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %64, ptr %.sroa.0.0.copyload.i1436, i64 %.sroa.2.0.copyload.i1438)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %64) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #26
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit1424.thread

bb.hc:                                            ; preds = %bb.gz, %.lr.ph
  %.2.ph = phi ptr [ %i.bdh, %bb.gz ], [ null, %.lr.ph ]
  %i.bdl = getelementptr inbounds nuw i8, ptr %.sroa.02145.02868, i64 8 ; 3 uses
  %.not26.i.i = icmp eq ptr %i.bdl, %i.bdc
  br i1 %.not26.i.i, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj2EEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.hc, %.thread21.i.i
  %.sroa.02145.1 = phi ptr [ %i.bdp, %.thread21.i.i ], [ %i.bdl, %bb.hc ] ; 4 uses
  %i.bdm = load ptr, ptr %.sroa.02145.1, align 8, !tbaa !477 ; 3 uses
  %.not14.i.i = icmp eq ptr %i.bdm, null
  br i1 %.not14.i.i, label %.thread21.i.i, label %.preheader.preheader.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.bdn = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.bdm, i32 2408) #26
  br i1 %i.bdn, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj2EEppEv.exit, label %.thread21.i.i

.preheader.preheader.i.i:                         ; preds = %.lr.ph.i.i
  %i.bdo = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.bdm, i32 1) #26
  br i1 %i.bdo, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj2EEppEv.exit, label %.preheader.1.i.i

.thread21.i.i:                                    ; preds = %.preheader.1.i.i, %.lr.ph.i.i
  %i.bdp = getelementptr inbounds nuw i8, ptr %.sroa.02145.1, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bdp, %i.bdc
  br i1 %.not.i.i, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj2EEppEv.exit, label %.lr.ph.i.i, !llvm.loop !20

_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj2EEppEv.exit: ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i, %.thread21.i.i, %bb.hc
  %.sroa.02145.2 = phi ptr [ %i.bdl, %bb.hc ], [ %.sroa.02145.1, %.preheader.1.i.i ], [ %.sroa.02145.1, %.preheader.preheader.i.i ], [ %i.bdp, %.thread21.i.i ] ; 2 uses
  %.not2841 = icmp eq ptr %.sroa.02145.2, %i.bdc
  br i1 %.not2841, label %_ZNK4llvm9StringRef11starts_withES0_.exit1424.thread, label %.lr.ph

_ZNK4llvm9StringRef11starts_withES0_.exit1424.thread: ; preds = %.thread21.i.i.i, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj2EEppEv.exit, %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDES5_EEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, %_ZNK4llvm9StringRef11starts_withES0_.exit1424, %bb.hb, %bb.ha, %bb.gk
  %i.bdq = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef 3337) ; 2 uses
  %.not456 = icmp eq ptr %i.bdq, null
  br i1 %.not456, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit1424.thread
  %i.bdr = getelementptr inbounds nuw i8, ptr %0, i64 440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #26
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdq, i64 48 ; 2 uses
  %i.bdt = load ptr, ptr %i.bds, align 8, !tbaa !134
  %i.bdu = load ptr, ptr %i.bdt, align 8, !tbaa !282
  store ptr %i.bdu, ptr %i.ac, align 8, !tbaa !282
  %i.bdv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bdr, ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #26
  store i32 27, ptr %i.aus, align 8, !tbaa !236
  %i.bdw = load ptr, ptr %i.bds, align 8, !tbaa !134
  %i.bdx = load ptr, ptr %i.bdw, align 8, !tbaa !282 ; 2 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bdz = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bea = load i64, ptr %i.bdz, align 8, !tbaa !72
  %i.beb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bdx) #26
  %i.bec = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bdy, i64 noundef 0, i64 noundef %i.bea, ptr noundef nonnull %i.bdx, i64 noundef %i.beb) #26 ; 0 uses
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %_ZNK4llvm9StringRef11starts_withES0_.exit1424.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !2507
  store i32 3336, ptr %10, align 4, !noalias !2507
  %i.bed = call i64 @_ZNK4llvm3opt7ArgList8getRangeESt16initializer_listINS0_12OptSpecifierEE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr nonnull %10, i64 1) #26, !noalias !2507 ; 2 uses
  %.sroa.4.0.extract.shift.i1444 = lshr i64 %i.bed, 32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !2507
  %i.bee = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bef = load ptr, ptr %i.bee, align 8, !tbaa !134, !noalias !2507 ; 2 uses
  %i.beg = and i64 %i.bed, 4294967295             ; 2 uses
  %i.beh = getelementptr inbounds nuw [8 x i8], ptr %i.bef, i64 %i.beg ; 2 uses
  %i.bei = getelementptr [8 x i8], ptr %i.bef, i64 %.sroa.4.0.extract.shift.i1444 ; 5 uses
  %.not26.i.i.i1445 = icmp samesign eq i64 %i.beg, %.sroa.4.0.extract.shift.i1444
  br i1 %.not26.i.i.i1445, label %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, label %.lr.ph.i.i.i1447

.lr.ph.i.i.i1447:                                 ; preds = %bb.he, %.thread21.i.i.i1449
  %.sroa.024.0.i = phi ptr [ %i.bel, %.thread21.i.i.i1449 ], [ %i.beh, %bb.he ] ; 3 uses
  %i.bej = load ptr, ptr %.sroa.024.0.i, align 8, !tbaa !477, !noalias !2507 ; 2 uses
  %.not14.i.i.i1448 = icmp eq ptr %i.bej, null
  br i1 %.not14.i.i.i1448, label %.thread21.i.i.i1449, label %bb.hf

bb.hf:                                            ; preds = %.lr.ph.i.i.i1447
  %i.bek = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.bej, i32 3336) #26, !noalias !2507
  br i1 %i.bek, label %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, label %.thread21.i.i.i1449

.thread21.i.i.i1449:                              ; preds = %bb.hf, %.lr.ph.i.i.i1447
  %i.bel = getelementptr inbounds nuw i8, ptr %.sroa.024.0.i, i64 8 ; 2 uses
  %.not.i.i.i1450 = icmp eq ptr %i.bel, %i.bei
  br i1 %.not.i.i.i1450, label %._crit_edge, label %.lr.ph.i.i.i1447, !llvm.loop !24

_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit: ; preds = %bb.hf, %bb.he
  %.sroa.024.1.i = phi ptr [ %i.beh, %bb.he ], [ %.sroa.024.0.i, %bb.hf ] ; 2 uses
  %.not28422870 = icmp eq ptr %.sroa.024.1.i, %i.bei
  br i1 %.not28422870, label %._crit_edge, label %.lr.ph2872

.lr.ph2872:                                       ; preds = %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit
  %i.bem = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ben = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 5 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %65, i64 8
  br label %bb.hg

._crit_edge:                                      ; preds = %.thread21.i.i.i1449, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #26
  call void @_ZNK4llvm3opt7ArgList15getAllArgValuesB5cxx11ENS0_12OptSpecifierE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %66, ptr noundef nonnull align 8 dereferenceable(176) %1, i32 2024) #26
  %i.bep = load ptr, ptr %66, align 8, !tbaa !328 ; 3 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.ber = load ptr, ptr %i.beq, align 8, !tbaa !328 ; 2 uses
  %.not28432873 = icmp eq ptr %i.bep, %i.ber
  br i1 %.not28432873, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i1474, label %.lr.ph2876

.lr.ph2876:                                       ; preds = %._crit_edge
  %i.bes = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 6 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 5 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 6 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 5 uses
  %i.bew = getelementptr inbounds nuw i8, ptr %6, i64 8
end_hunk_0
