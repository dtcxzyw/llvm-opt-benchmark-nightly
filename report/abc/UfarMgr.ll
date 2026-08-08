inline.NumInlined: 7367
inline.NumDeleted: 2728
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN4UFAR16SimUifPairFinder9SetParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.er = load i64, ptr %i.h, align 8, !tbaa !48
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.er
  %i.et = call noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEEcNS5_12regex_traitsIcEEEEbT_SH_RNS5_13match_resultsISH_T0_EERKNS5_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr %i.eq, ptr %i.es, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i25 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i25, label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit29, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 4 uses
  %i.ex = load atomic i64, ptr %i.ew acquire, align 8 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 4294967297
  %i.ez = trunc i64 %i.ex to i32                  ; 2 uses
  br i1 %i.ey, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.ew, align 8, !tbaa !52
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i32 0, ptr %i.fa, align 4, !tbaa !54
  %i.fb = load ptr, ptr %i.ev, align 8, !tbaa !55
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #37, !inline_history !57
  %i.fe = load ptr, ptr %i.ev, align 8, !tbaa !55
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #37, !inline_history !57
  br label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit29

bb.ap:                                            ; preds = %bb.an
  %i.fh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i26 = icmp eq i8 %i.fh, 0
  br i1 %.not.i.i.i.i26, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fi = add nsw i32 %i.ez, -1
  store i32 %i.fi, ptr %i.ew, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27

bb.ar:                                            ; preds = %bb.ap
  %i.fj = atomicrmw volatile add ptr %i.ew, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i28 = phi i32 [ %i.ez, %bb.aq ], [ %i.fj, %bb.ar ]
  %i.fk = icmp eq i32 %.0.i.i.i.i.i28, 1
  br i1 %i.fk, label %bb.as, label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit29, !prof !59

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #37
  br label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit29

_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit29: ; preds = %bb.am, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27, %bb.as
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fl) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br i1 %i.et, label %bb.at, label %bb.bf

bb.at:                                            ; preds = %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.fm = load ptr, ptr %2, align 8, !tbaa !60    ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !60 ; 2 uses
  %i.fp = icmp eq ptr %i.fm, %i.fo
  %.pre.i30 = ptrtoint ptr %i.fo to i64
  %.pre2.i31 = ptrtoint ptr %i.fm to i64
  %.pre4.i32 = sub i64 %.pre.i30, %.pre2.i31      ; 2 uses
  br i1 %i.fp, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i34, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i33

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i33: ; preds = %bb.at
  %i.fq = sdiv exact i64 %.pre4.i32, 24
  %i.fr = add nsw i64 %i.fq, -5
  %i.fs = icmp ult i64 %i.fr, -2
  br i1 %i.fs, label %bb.au, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i34

bb.au:                                            ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i33
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  br label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit35

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i34: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i33, %bb.at
  %i.fu = getelementptr i8, ptr %i.fm, i64 %.pre4.i32
  %i.fv = getelementptr i8, ptr %i.fu, i64 -72
  br label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit35

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit35: ; preds = %bb.au, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i34
  %i.fw = phi ptr [ %i.ft, %bb.au ], [ %i.fv, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i34 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load i8, ptr %i.fx, align 8, !tbaa !65, !range !17, !noalias !78, !noundef !18
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.av, label %bb.az

bb.av:                                            ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit35
  %.sroa.02.0.copyload.i36 = load ptr, ptr %i.fw, align 8, !tbaa !69, !noalias !78 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %.sroa.0.0.copyload.i37 = load ptr, ptr %i.ga, align 8, !tbaa !69, !noalias !78
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.gb, ptr %8, align 8, !tbaa !70, !alias.scope !78
  %i.gc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.gc, align 8, !tbaa !48, !alias.scope !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37, !noalias !78
  %i.gd = ptrtoint ptr %.sroa.0.0.copyload.i37 to i64
  %i.ge = ptrtoint ptr %.sroa.02.0.copyload.i36 to i64
  %i.gf = sub i64 %i.gd, %i.ge                    ; 4 uses
  store i64 %i.gf, ptr %i.b, align 8, !tbaa !71, !noalias !78
  %i.gg = icmp ugt i64 %i.gf, 15
  br i1 %i.gg, label %bb.aw, label %._crit_edge.i.i.i38

bb.aw:                                            ; preds = %bb.av
  %i.gh = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #37 ; 2 uses
  store ptr %i.gh, ptr %8, align 8, !tbaa !44, !alias.scope !78
  %i.gi = load i64, ptr %i.b, align 8, !tbaa !71, !noalias !78
  store i64 %i.gi, ptr %i.gb, align 8, !tbaa !58, !alias.scope !78
  br label %._crit_edge.i.i.i38

._crit_edge.i.i.i38:                              ; preds = %bb.aw, %bb.av
  %i.gj = phi ptr [ %i.gh, %bb.aw ], [ %i.gb, %bb.av ] ; 2 uses
  switch i64 %i.gf, label %bb.ay [
    i64 1, label %bb.ax
    i64 0, label %bb.ba
  ]

bb.ax:                                            ; preds = %._crit_edge.i.i.i38
  %i.gk = load i8, ptr %.sroa.02.0.copyload.i36, align 1, !tbaa !58
  store i8 %i.gk, ptr %i.gj, align 1, !tbaa !58
  br label %bb.ba

bb.ay:                                            ; preds = %._crit_edge.i.i.i38
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gj, ptr align 1 %.sroa.02.0.copyload.i36, i64 %i.gf, i1 false)
  br label %bb.ba

bb.az:                                            ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit35
  %i.gl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.gl, ptr %8, align 8, !tbaa !70, !alias.scope !78
  %i.gm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.gm, align 8, !tbaa !48, !alias.scope !78
  store i8 0, ptr %i.gl, align 8, !tbaa !58, !alias.scope !78
  br label %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv.exit39

bb.ba:                                            ; preds = %bb.ay, %bb.ax, %._crit_edge.i.i.i38
  %i.gn = load i64, ptr %i.b, align 8, !tbaa !71, !noalias !78 ; 2 uses
  store i64 %i.gn, ptr %i.gc, align 8, !tbaa !48, !alias.scope !78
  %i.go = load ptr, ptr %8, align 8, !tbaa !44, !alias.scope !78
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gn
  store i8 0, ptr %i.gp, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37, !noalias !78
  %.pre48 = load ptr, ptr %8, align 8, !tbaa !44
  br label %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv.exit39

_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv.exit39: ; preds = %bb.az, %bb.ba
  %i.gq = phi ptr [ %i.gl, %bb.az ], [ %.pre48, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.gr = tail call ptr @__errno_location() #38   ; 4 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !8
  store i32 0, ptr %i.gr, align 4, !tbaa !8
  %i.gt = call noundef i64 @__isoc23_strtol(ptr noundef %i.gq, ptr noundef nonnull %i.a, i32 noundef 10) #37, !inline_history !72 ; 2 uses
  %i.gu = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.gv = icmp eq ptr %i.gu, %i.gq
  br i1 %i.gv, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv.exit39
  call void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.84) #39
  unreachable

bb.bc:                                            ; preds = %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv.exit39
  %i.gw = load i32, ptr %i.gr, align 4, !tbaa !8  ; 2 uses
  %i.gx = icmp eq i32 %i.gw, 34
  %i.gy = add i64 %i.gt, -2147483648
  %i.gz = icmp ult i64 %i.gy, -4294967296
  %or.cond.i.i40 = or i1 %i.gz, %i.gx
  br i1 %or.cond.i.i40, label %.critedge.i.i41, label %bb.bd

.critedge.i.i41:                                  ; preds = %bb.bc
  call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.84) #39
  unreachable

bb.bd:                                            ; preds = %bb.bc
  %i.ha = icmp eq i32 %i.gw, 0
  br i1 %i.ha, label %bb.be, label %_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi.exit42

bb.be:                                            ; preds = %bb.bd
  store i32 %i.gs, ptr %i.gr, align 4, !tbaa !8
  br label %_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi.exit42

_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi.exit42: ; preds = %bb.bd, %bb.be
  %i.hb = trunc nsw i64 %i.gt to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.hc = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi.exit42
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !58
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.hh = shl i32 %i.hb, 4
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit29
  %.0 = phi i32 [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ 0, %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit29 ]
  %i.hi = load i32, ptr %0, align 8, !tbaa !73
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !77
  %i.hl = mul i32 %.0, %i.hi
  %i.hm = mul i32 %i.hl, %i.hk
  %i.hn = sdiv i32 %i.hm, 25
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.hn, ptr %i.ho, align 8, !tbaa !19
  %i.hp = load ptr, ptr %2, align 8, !tbaa !81    ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !83
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %i.hp to i64
  %i.hu = sub i64 %i.hs, %i.ht
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.hu) #40
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEEC2EPKcNSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::__detail::_Compiler", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEEC2EPKcS6_RKSt6localeNSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(400) %3, ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load <2 x ptr>, ptr %i.e, align 8, !tbaa !84, !noalias !85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !49   ; 8 uses
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !84
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEE10_M_compileEPKcS5_NSt15regex_constants18syntax_option_typeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !54
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #37, !inline_history !88
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #37, !inline_history !88
  br label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEE10_M_compileEPKcS5_NSt15regex_constants18syntax_option_typeE.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEE10_M_compileEPKcS5_NSt15regex_constants18syntax_option_typeE.exit, !prof !59

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #37
  br label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEE10_M_compileEPKcS5_NSt15regex_constants18syntax_option_typeE.exit

_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEE10_M_compileEPKcS5_NSt15regex_constants18syntax_option_typeE.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  store i32 %2, ptr %0, align 8, !tbaa !89
  call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(400) dereferenceable(400) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @_ZN4UFAR16SimUifPairFinder18_collect_sim_nodesEP10Wlc_Ntk_t_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %sh.diff = lshr i64 %i.h, 1
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.i = and i32 %tr.sh.diff, -2                  ; 2 uses
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #41 ; 5 uses
  %i.k = add i32 %i.i, -1
  %or.cond.i = icmp ult i32 %i.k, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.i ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store i32 0, ptr %i.l, align 4, !tbaa !99
  store i32 %spec.store.select.i, ptr %i.j, align 8, !tbaa !101
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %_ZL12Vec_IntAlloci.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sext i32 %spec.store.select.i to i64
  %i.n = shl nsw i64 %i.m, 2
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #41
  br label %_ZL12Vec_IntAlloci.exit

_ZL12Vec_IntAlloci.exit:                          ; preds = %bb.a, %bb.b
  %i.p = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !102
  %i.r = getelementptr i8, ptr %1, i64 40
  %i.s = getelementptr i8, ptr %1, i64 36         ; 2 uses
  %.val1618 = load i32, ptr %i.s, align 4, !tbaa !99 ; 2 uses
  %i.t = icmp sgt i32 %.val1618, 0
  br i1 %i.t, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZL12Vec_IntAlloci.exit, %bb.l
  %.val1621 = phi i32 [ %.val16, %bb.l ], [ %.val1618, %_ZL12Vec_IntAlloci.exit ]
  %i.u = phi ptr [ %i.as, %bb.l ], [ %i.p, %_ZL12Vec_IntAlloci.exit ] ; 3 uses
  %i.v = phi ptr [ %i.at, %bb.l ], [ %i.p, %_ZL12Vec_IntAlloci.exit ] ; 5 uses
  %i.w = phi i32 [ %i.au, %bb.l ], [ %spec.store.select.i, %_ZL12Vec_IntAlloci.exit ] ; 8 uses
  %i.x = phi i32 [ %i.av, %bb.l ], [ 0, %_ZL12Vec_IntAlloci.exit ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %_ZL12Vec_IntAlloci.exit ] ; 3 uses
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  %i.z = urem i32 %i.y, 3
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.l, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val = load ptr, ptr %i.r, align 8, !tbaa !102
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.ad = icmp eq i32 %i.x, %i.w
  br i1 %i.ad, label %bb.d, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp slt i32 %i.w, 16
  br i1 %i.ae, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %i.v, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.v, i64 noundef 64) #42
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.ag = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #41
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.ah = icmp samesign ult i32 %i.w, 1073741823
  %i.ai = shl nuw nsw i32 %i.w, 1
  %spec.select.i = select i1 %i.ah, i32 %i.ai, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.w, %spec.select.i
  br i1 %.not.i9.i, label %bb.i, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %i.v, null
  %i.aj = zext nneg i32 %spec.select.i to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = tail call ptr @realloc(ptr noundef nonnull %i.v, i64 noundef %i.ak) #42
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.ak) #41
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i: ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %storemerge = phi ptr [ %i.ag, %bb.g ], [ %i.af, %bb.f ], [ %i.al, %bb.j ], [ %i.am, %bb.k ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  store ptr %storemerge, ptr %i.q, align 8, !tbaa !102
  store i32 %spec.select.sink.i, ptr %i.j, align 8, !tbaa !101
  br label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit
end_hunk_0
