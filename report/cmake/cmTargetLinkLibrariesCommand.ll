Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmTargetLinkLibrariesCommand?download=true
inline.NumInlined: 826
inline.NumDeleted: 342
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus:bb.a
  br i1 %i.pf, label %bb.ch, label %bb.cv

bb.ch:                                            ; preds = %bb.cg
  %i.pg = trunc nuw i8 %.0183442 to i1
  br i1 %i.pg, label %bb.ci, label %bb.cv

bb.ci:                                            ; preds = %bb.ch
  invoke fastcc void @_ZL31LinkLibraryTypeSpecifierWarningR10cmMakefileii(ptr noundef nonnull align 8 dereferenceable(2952) %i.aa, i32 noundef %.0186441, i32 noundef 0)
          to label %bb.cv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cj:                                            ; preds = %bb.au
  %i.ph = trunc nuw i8 %.0183442 to i1
  br i1 %i.ph, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %i.pi = load i32, ptr %i.e, align 4, !tbaa !21
  %i.pj = load ptr, ptr %0, align 8, !tbaa !121
  %i.pk = getelementptr inbounds nuw [32 x i8], ptr %i.pj, i64 %i.kh
  %i.pl = invoke fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_13TLL13HandleLibraryENS_15ProcessingStateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE23cmTargetLinkLibraryType(ptr noundef nonnull align 8 dereferenceable(112) %13, i32 noundef %i.pi, ptr noundef nonnull align 8 dereferenceable(32) %i.pk, i32 noundef %.0186441)
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.pl, label %bb.cv, label %"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clEv.exit.thread402"

bb.cm:                                            ; preds = %bb.cj
  %i.pm = load ptr, ptr %0, align 8, !tbaa !121
  %i.pn = getelementptr inbounds nuw [32 x i8], ptr %i.pm, i64 %i.kh ; 4 uses
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !20
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 8 ; 3 uses
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !22 ; 3 uses
  %.not447 = icmp eq i64 %i.pq, 0
  br i1 %.not447, label %._crit_edge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.preheader

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.preheader: ; preds = %bb.cm
  %.promoted = load i64, ptr %i.f, align 8
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

._crit_edge:                                      ; preds = %_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread, %bb.cm
  %i.pr = load i8, ptr %i.ee, align 8, !tbaa !33, !range !38, !noundef !25
  %i.ps = trunc nuw i8 %i.pr to i1
  br i1 %i.ps, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !139
  %i.pt = load ptr, ptr %14, align 8, !tbaa !20, !noalias !139
  %i.pu = load i64, ptr %i.hc, align 8, !tbaa !22, !noalias !139
  store i64 %i.pu, ptr %2, align 8, !tbaa !18, !alias.scope !140, !noalias !139
  store ptr %i.pt, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !28, !alias.scope !140, !noalias !139
  store ptr null, ptr %i.hd, align 8, !tbaa !31, !alias.scope !140, !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !139
  store i64 0, ptr %3, align 8, !noalias !139
  store i8 59, ptr %i.hg, align 8, !tbaa !21, !noalias !139
  store i64 1, ptr %i.hf, align 8, !tbaa !18, !noalias !139
  store ptr %i.hg, ptr %.sroa.4.0..sroa_idx.i3.i.i, align 8, !tbaa !28, !noalias !139
  store i64 1, ptr %i.he, align 8, !tbaa !18, !alias.scope !141, !noalias !139
  store ptr %i.hg, ptr %.sroa.4.0..sroa_idx.i11.i.i, align 8, !tbaa !28, !alias.scope !141, !noalias !139
  store ptr null, ptr %i.hh, align 8, !tbaa !31, !alias.scope !141, !noalias !139
  %i.pv = load ptr, ptr %i.pn, align 8, !tbaa !20, !noalias !139
  %i.pw = load i64, ptr %i.pp, align 8, !tbaa !22, !noalias !139
  store i64 %i.pw, ptr %i.hi, align 8, !tbaa !18, !alias.scope !142, !noalias !139
  store ptr %i.pv, ptr %.sroa.4.0..sroa_idx.i19.i.i, align 8, !tbaa !28, !alias.scope !142, !noalias !139
  store ptr null, ptr %i.hj, align 8, !tbaa !31, !alias.scope !142, !noalias !139
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %2, i64 3)
          to label %.noexc349 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc349:                                        ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !139
  %i.px = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(32) %4) #21 ; 0 uses
  %i.py = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.pz = icmp eq ptr %i.py, %i.hk
  br i1 %i.pz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc349
  %i.qa = load i64, ptr %i.hk, align 8, !tbaa !21
  %i.qb = add i64 %i.qa, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.noexc349, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clERKS5_.exit"

bb.co:                                            ; preds = %._crit_edge
  store ptr %i.hb, ptr %14, align 8, !tbaa !16
  %i.qc = load ptr, ptr %i.pn, align 8, !tbaa !20 ; 2 uses
  %i.qd = load i64, ptr %i.pp, align 8, !tbaa !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.qd, ptr %i.a, align 8, !tbaa !18
  %i.qe = icmp ugt i64 %i.qd, 15
  br i1 %i.qe, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.co
  %i.qf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc350 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc350:                                        ; preds = %.noexc.i.i.i.i.i.i
  store ptr %i.qf, ptr %14, align 8, !tbaa !20
  %i.qg = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.qg, ptr %i.hb, align 8, !tbaa !21
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc350, %bb.co
  %i.qh = phi ptr [ %i.qf, %.noexc350 ], [ %i.hb, %bb.co ] ; 2 uses
  switch i64 %i.qd, label %bb.cq [
    i64 1, label %bb.cp
    i64 0, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRKS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS5_ESC_IS5_NSt5decayISF_E4typeEEEEESt16is_constructibleIS5_JSF_EESt13is_assignableIRS5_SF_EEERS6_E4typeEOSF_.exit.i
  ]

bb.cp:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.qi = load i8, ptr %i.qc, align 1, !tbaa !21
  store i8 %i.qi, ptr %i.qh, align 1, !tbaa !21
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRKS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS5_ESC_IS5_NSt5decayISF_E4typeEEEEESt16is_constructibleIS5_JSF_EESt13is_assignableIRS5_SF_EEERS6_E4typeEOSF_.exit.i

bb.cq:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qh, ptr align 1 %i.qc, i64 %i.qd, i1 false)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRKS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS5_ESC_IS5_NSt5decayISF_E4typeEEEEESt16is_constructibleIS5_JSF_EESt13is_assignableIRS5_SF_EEERS6_E4typeEOSF_.exit.i

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRKS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS5_ESC_IS5_NSt5decayISF_E4typeEEEEESt16is_constructibleIS5_JSF_EESt13is_assignableIRS5_SF_EEERS6_E4typeEOSF_.exit.i: ; preds = %bb.cq, %bb.cp, %._crit_edge.i.i.i.i.i.i.i
  %i.qj = load i64, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  store i64 %i.qj, ptr %i.hc, align 8, !tbaa !22
  %i.qk = load ptr, ptr %14, align 8, !tbaa !20
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.qj
  store i8 0, ptr %i.ql, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.ee, align 8, !tbaa !33
  br label %"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clERKS5_.exit"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.preheader, %_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread
  %.0157439 = phi i64 [ %i.qx, %_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.preheader ] ; 6 uses
  %i.qm = phi i64 [ %i.qw, %_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread ], [ %.promoted, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.preheader ] ; 4 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.po, i64 %.0157439 ; 2 uses
  %i.qo = sub nuw i64 %i.pq, %.0157439            ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.qo, i64 2)
  %bcmp.i.i = call i32 @bcmp(ptr %i.qn, ptr nonnull @.str.20, i64 %.sroa.speculated.i.i.i.i)
  %i.qp = icmp eq i32 %bcmp.i.i, 0
  %i.qq = icmp ugt i64 %i.qo, 1
  %or.cond = and i1 %i.qq, %i.qp
  br i1 %or.cond, label %bb.cr, label %_Z18cmHasLiteralPrefixILm3EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread

bb.cr:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.qr = add i64 %i.qm, 1                        ; 2 uses
  store i64 %i.qr, ptr %i.f, align 8, !tbaa !18
  %i.qs = add nuw i64 %.0157439, 1
  br label %_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread

_Z18cmHasLiteralPrefixILm3EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.not203 = icmp eq i64 %i.qm, 0
  br i1 %.not203, label %_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread, label %_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit

_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit: ; preds = %_Z18cmHasLiteralPrefixILm3EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread
  %i.qt = load i8, ptr %i.qn, align 1, !tbaa !21
  %i.qu = icmp eq i8 %i.qt, 62
  br i1 %i.qu, label %bb.cs, label %_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread

bb.cs:                                            ; preds = %_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit
  %i.qv = add i64 %i.qm, -1                       ; 2 uses
  store i64 %i.qv, ptr %i.f, align 8, !tbaa !18
  br label %_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread

_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread: ; preds = %_Z18cmHasLiteralPrefixILm3EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread, %_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit, %bb.cs, %bb.cr
  %i.qw = phi i64 [ %i.qr, %bb.cr ], [ %i.qv, %bb.cs ], [ %i.qm, %_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit ], [ 0, %_Z18cmHasLiteralPrefixILm3EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread ]
  %.1158 = phi i64 [ %i.qs, %bb.cr ], [ %.0157439, %bb.cs ], [ %.0157439, %_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit ], [ %.0157439, %_Z18cmHasLiteralPrefixILm3EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread ]
  %i.qx = add i64 %.1158, 1                       ; 2 uses
  %i.qy = icmp ult i64 %i.qx, %i.pq
  br i1 %i.qy, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, label %._crit_edge, !llvm.loop !108

"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clERKS5_.exit": ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRKS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS5_ESC_IS5_NSt5decayISF_E4typeEEEEESt16is_constructibleIS5_JSF_EESt13is_assignableIRS5_SF_EEERS6_E4typeEOSF_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.qz = load i64, ptr %i.f, align 8, !tbaa !18
  %i.ra = icmp eq i64 %i.qz, 0
  br i1 %i.ra, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clERKS5_.exit"
  %i.rb = invoke fastcc noundef zeroext i1 @"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.cu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.rb, label %bb.cv, label %"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clEv.exit.thread402"

.sink.split:                                      ; preds = %bb.bv, %switch.early.test234, %switch.early.test234, %switch.early.test234, %bb.bp, %switch.early.test233, %switch.early.test233, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit324.thread, %switch.early.test232, %switch.early.test232, %switch.early.test232, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit314.thread, %switch.early.test231, %switch.early.test231, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit304.thread, %switch.early.test, %switch.early.test, %switch.early.test
  %.sink = phi i32 [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit304.thread ], [ 3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit314.thread ], [ 5, %bb.bp ], [ 4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit324.thread ], [ 2, %switch.early.test ], [ 2, %switch.early.test ], [ 2, %switch.early.test ], [ 3, %switch.early.test231 ], [ 3, %switch.early.test231 ], [ 4, %switch.early.test232 ], [ 4, %switch.early.test232 ], [ 4, %switch.early.test232 ], [ 5, %switch.early.test233 ], [ 5, %switch.early.test233 ], [ 6, %switch.early.test234 ], [ 6, %switch.early.test234 ], [ 6, %switch.early.test234 ], [ 6, %bb.bv ]
  store i32 %.sink, ptr %i.e, align 4, !tbaa !21
  br label %bb.cv

bb.cv:                                            ; preds = %.sink.split, %bb.cl, %bb.ch, %bb.ci, %bb.ce, %bb.cf, %bb.cb, %bb.cc, %bb.cg, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clERKS5_.exit", %bb.cu
  %.1187 = phi i32 [ %.0186441, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.0186441, %bb.cu ], [ 1, %bb.cc ], [ 2, %bb.cf ], [ 0, %bb.ci ], [ 0, %bb.cl ], [ %.0186441, %"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clERKS5_.exit" ], [ 1, %bb.cb ], [ 2, %bb.ce ], [ %.0186441, %bb.cg ], [ 0, %bb.ch ], [ %.0186441, %.sink.split ] ; 2 uses
  %.1184 = phi i8 [ %.0183442, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %bb.cu ], [ 1, %bb.cc ], [ 1, %bb.cf ], [ 1, %bb.ci ], [ 0, %bb.cl ], [ 0, %"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clERKS5_.exit" ], [ 1, %bb.cb ], [ 1, %bb.ce ], [ %.0183442, %bb.cg ], [ 1, %bb.ch ], [ %.0183442, %.sink.split ] ; 2 uses
  %i.rc = add i32 %.0159443, 1                    ; 2 uses
  %i.rd = zext i32 %i.rc to i64                   ; 2 uses
  %i.re = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.rf = load ptr, ptr %0, align 8, !tbaa !121   ; 2 uses
  %i.rg = ptrtoint ptr %i.re to i64
  %i.rh = ptrtoint ptr %i.rf to i64
  %i.ri = sub i64 %i.rg, %i.rh
  %i.rj = ashr exact i64 %i.ri, 5
  %.not218 = icmp ugt i64 %i.rj, %i.rd
  br i1 %.not218, label %bb.at, label %"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clEv.exit.thread405.loopexit", !llvm.loop !109

"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clEv.exit.thread405.loopexit": ; preds = %bb.cv
  %42 = trunc nuw i8 %.1184 to i1
  %43 = zext nneg i32 %.1187 to i64
  br label %"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clEv.exit.thread405"

"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clEv.exit.thread405": ; preds = %"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clEv.exit.thread405.loopexit", %bb.ac
  %.0186.lcssa = phi i64 [ 0, %bb.ac ], [ %43, %"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clEv.exit.thread405.loopexit" ]
  %.0183.lcssa.not = phi i1 [ false, %bb.ac ], [ %42, %"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clEv.exit.thread405.loopexit" ]
  %i.rk = invoke fastcc noundef zeroext i1 @"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cw:                                            ; preds = %"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clEv.exit.thread405"
  %brmerge.not = select i1 %i.rk, i1 %.0183.lcssa.not, i1 false
  br i1 %brmerge.not, label %bb.cx, label %"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clEv.exit.thread402"

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr @_ZN12_GLOBAL__N_120LinkLibraryTypeNamesE, i64 %.0186.lcssa
  invoke void @_Z8cmStrCatIRA6_KcRPS0_JRA42_S0_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %41, ptr noundef nonnull align 1 dereferenceable(6) @.str.21, ptr noundef nonnull align 8 dereferenceable(8) %i.rl, ptr noundef nonnull align 1 dereferenceable(42) @.str.22)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.rm = getelementptr inbounds nuw i8, ptr %i.aa, i64 664
  invoke void @_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK19cmListFileBacktrace(ptr noundef nonnull align 8 dereferenceable(2952) %i.aa, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(16) %i.rm)
          to label %_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit355 unwind label %bb.da

_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit355: ; preds = %bb.cy
  %i.rn = load ptr, ptr %41, align 8, !tbaa !20   ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.rp = icmp eq ptr %i.rn, %i.ro
  br i1 %i.rp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356: ; preds = %_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit355
  %i.rq = load i64, ptr %i.ro, align 8, !tbaa !21
  %i.rr = add i64 %i.rq, 1
  call void @_ZdlPvm(ptr noundef %i.rn, i64 noundef %i.rr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358: ; preds = %_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit355, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  store i8 1, ptr @_ZN13cmSystemTools20s_FatalErrorOccurredE, align 1, !tbaa !129
  br label %"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clEv.exit.thread402"

bb.cz:                                            ; preds = %bb.cx
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361

bb.da:                                            ; preds = %bb.cy
  %i.rt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ru = load ptr, ptr %41, align 8, !tbaa !20   ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.rw = icmp eq ptr %i.ru, %i.rv
  br i1 %i.rw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359: ; preds = %bb.da
  %i.rx = load i64, ptr %i.rv, align 8, !tbaa !21
  %i.ry = add i64 %i.rx, 1
  call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.ry) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359, %bb.cz
  %.pn219 = phi { ptr, i32 } [ %i.rs, %bb.cz ], [ %i.rt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359 ], [ %i.rt, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  br label %.loopexit.split-lp

"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clEv.exit.thread402": ; preds = %bb.cu, %bb.cl, %.noexc293, %bb.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358
  %.1 = phi i1 [ %i.rk, %bb.cw ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337 ], [ false, %.noexc293 ], [ false, %bb.cl ], [ false, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.rz = load i8, ptr %i.ee, align 8, !tbaa !33, !range !38, !noundef !25
  %i.sa = trunc nuw i8 %i.rz to i1
  store i8 0, ptr %i.ee, align 8, !tbaa !33
  br i1 %i.sa, label %bb.db, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.db:                                            ; preds = %"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clEv.exit.thread402"
  %i.sb = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.sd = icmp eq ptr %i.sb, %i.sc
  br i1 %i.sd, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.db
  %i.se = load i64, ptr %i.sc, align 8, !tbaa !21
  %i.sf = add i64 %i.se, 1
  call void @_ZdlPvm(ptr noundef %i.sb, i64 noundef %i.sf) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.db, %"_ZZ28cmTargetLinkLibrariesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clEv.exit.thread402", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call fastcc void @_ZN12_GLOBAL__N_13TLLD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.dd

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361, %.loopexit414
  %.pn219.pn = phi { ptr, i32 } [ %.pn219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361 ], [ %.pn204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn390, %.loopexit414 ], [ %.pn215, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ], [ %.pn212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312 ], [ %.pn210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322 ], [ %.pn208, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332 ], [ %.pn206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340 ], [ %lpad.loopexit.split-lp563, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.sg = load i8, ptr %i.ee, align 8, !tbaa !33, !range !38, !noundef !25
  %i.sh = trunc nuw i8 %i.sg to i1
  store i8 0, ptr %i.ee, align 8, !tbaa !33
  br i1 %i.sh, label %bb.dc, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit364

bb.dc:                                            ; preds = %.loopexit.split-lp
  %i.si = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.sk = icmp eq ptr %i.si, %i.sj
  br i1 %i.sk, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit364, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i362

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i362: ; preds = %bb.dc
  %i.sl = load i64, ptr %i.sj, align 8, !tbaa !21
  %i.sm = add i64 %i.sl, 1
  call void @_ZdlPvm(ptr noundef %i.si, i64 noundef %i.sm) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit364

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit364: ; preds = %bb.dc, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i362
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call fastcc void @_ZN12_GLOBAL__N_13TLLD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.de

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %bb.p, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.4 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %.1, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ], [ true, %bb.p ]
  ret i1 %.4

bb.de:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit364, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %.pn228.pn = phi { ptr, i32 } [ %.pn228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238 ], [ %.pn225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ], [ %.pn222, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269 ], [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280 ], [ %.pn219.pn, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit364 ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ]
  resume { ptr, i32 } %.pn228.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !16
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.53) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.d, ptr %i.a, align 8, !tbaa !18
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !20
  %i.g = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.g, ptr %i.b, align 8, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !21
  store i8 %i.i, ptr %i.h, align 1, !tbaa !21
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !22
  %i.l = load ptr, ptr %0, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZNK10cmMakefile7IsAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare noundef ptr @_ZNK10cmMakefile18GetGlobalGeneratorEv(ptr noundef nonnull align 8 dereferenceable(2952)) local_unnamed_addr #0

declare noundef ptr @_ZNK17cmGlobalGenerator10FindTargetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cm8enum_setIN12cmStateEnums12TargetDomainELm32ELi0EEE(ptr noundef nonnull align 8 dereferenceable(2202), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef align 8 dead_on_return) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8cmTarget7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK8cmTarget9IsForeignEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK8cmTarget10IsSymbolicEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef i32 @_ZNK8cmTarget7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_13TLLC2ER10cmMakefileP8cmTarget(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 19)) %0, ptr noundef nonnull align 8 dereferenceable(2952) %1, ptr noundef nonnull %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [2 x %"struct.std::pair"], align 8  ; 9 uses
  %4 = alloca %class.cmDirectoryId, align 8       ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  store ptr %1, ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
end_hunk_0
