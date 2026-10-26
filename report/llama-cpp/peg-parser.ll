Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/peg-parser?download=true
inline.NumInlined: 11123
inline.NumDeleted: 4735
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZSt15__regex_replaceISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIPKcS6_EENS1_12regex_traitsIcEEcET_SF_T0_SG_RKNS1_11basic_regexIT2_T1_EEPKSI_mNSt15regex_constants15match_flag_typeE:bb.a
  store i64 %i.cw, ptr %i.cs, align 8, !tbaa !66
  %i.df = load ptr, ptr %.us-phi126, align 8, !tbaa !67
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cw
  store i8 0, ptr %i.dg, align 1, !tbaa !81
  %i.dh = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i54, i64 1
  %i.di = add nsw i64 %.07.i.i.i.i.i53, -1
  %i.dj = icmp sgt i64 %.07.i.i.i.i.i53, 1
  br i1 %i.dj, label %bb.l, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, !llvm.loop !40

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit66.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit50.us, %bb.e, %bb.j, %bb.m, %bb.c, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit50.us127, %bb.f, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit50
  %lpad.loopexit.split-lp203 = landingpad { ptr, i32 }
          cleanup
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !510 ; 3 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i67, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit68, label %bb.o

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit: ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i57, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit50, %bb.g, %bb.h, %bb.k, %_ZNKSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEeqERKSD_.exit99
  %.sroa.028.4 = phi ptr [ %0, %bb.g ], [ %.us-phi126, %_ZNKSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEeqERKSD_.exit99 ], [ %0, %bb.h ], [ %0, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i ], [ %.us-phi126, %bb.k ], [ %i.co, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit50 ], [ %.us-phi126, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i57 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !510 ; 3 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i63, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit64, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !511
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #33
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit64

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit64: ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  ret ptr %.sroa.028.4

bb.o:                                             ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit66.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !511
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dl to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dx) #33
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit68

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit68: ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit66.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  resume { ptr, i32 } %lpad.loopexit.split-lp203
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ESA_SA_RKNS_11basic_regexIcSC_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::regex_iterator", align 8 ; 8 uses
  store ptr %1, ptr %0, align 8, !tbaa !122
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !122
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !508
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %4, ptr %i.c, align 8, !tbaa !512
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.e = invoke noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEEcNS5_12regex_traitsIcEEEEbT_SH_RNS5_13match_resultsISH_T0_EERKNS5_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZSt12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS4_9sub_matchISA_EEEcNS4_12regex_traitsIcEEEbT_SG_RNS4_13match_resultsISG_T0_EERKNS4_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit unwind label %bb.e

_ZSt12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS4_9sub_matchISA_EEEcNS4_12regex_traitsIcEEEbT_SG_RNS4_13match_resultsISG_T0_EERKNS4_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit: ; preds = %bb.a
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %_ZSt12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS4_9sub_matchISA_EEEcNS4_12regex_traitsIcEEEbT_SG_RNS4_13match_resultsISG_T0_EERKNS4_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  %i.g = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !122
  store i64 %i.j, ptr %i.h, align 8, !tbaa !122
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !510  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !511
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #33
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !510  ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i11, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !511
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #33
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, %_ZSt12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS4_9sub_matchISA_EEEcNS4_12regex_traitsIcEEEbT_SG_RNS4_13match_resultsISG_T0_EERKNS4_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit
  ret void

bb.i:                                             ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12 ], [ %i.q, %bb.e ]
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !510  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !511
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #33
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::regex_traits", align 8 ; 10 uses
  %6 = alloca %"class.std::locale", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #31
  %i.a = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #31
  %i.b = load ptr, ptr %6, align 8, !tbaa !318
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !322
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !324  ; 3 uses
  %.not.not.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i, label %bb.b, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.a
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.g = and i32 %4, 256
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.preheader, label %.preheader292

.preheader292:                                    ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %.not68311 = icmp eq ptr %2, %3
  br i1 %.not68311, label %_ZSt4copyIPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET0_T_SB_SA_.exit209, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader292
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  br label %bb.c

.preheader:                                       ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %i.l = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 18 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149

bb.c:                                             ; preds = %.lr.ph, %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit
  %.0313 = phi ptr [ %2, %.lr.ph ], [ %i.dh, %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit ] ; 2 uses
  %.058312 = phi i8 [ 0, %.lr.ph ], [ %.159, %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit ]
  %7 = trunc nuw i8 %.058312 to i1
  %i.q = load i8, ptr %.0313, align 1, !tbaa !81  ; 5 uses
  br i1 %7, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !379
  %i.s = zext i8 %i.q to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !381
  %i.v = and i16 %i.u, 2048
  %.not263 = icmp eq i16 %i.v, 0
  br i1 %.not263, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = invoke noundef i32 @_ZNKSt7__cxx1112regex_traitsIcE5valueEci(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext %i.q, i32 noundef 10)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !513    ; 4 uses
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !513  ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  %.pre.i.i = ptrtoint ptr %i.z to i64
  %.pre2.i.i = ptrtoint ptr %i.y to i64
  %.pre4.i.i = sub i64 %.pre.i.i, %.pre2.i.i      ; 2 uses
  br i1 %i.aa, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i: ; preds = %bb.f
  %i.ab = sdiv exact i64 %.pre4.i.i, 24
  %i.ac = add nsw i64 %i.ab, -3
  %i.ad = icmp ugt i64 %i.ac, %i.x
  br i1 %i.ad, label %bb.g, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.x
  br label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i, %bb.f
  %i.af = getelementptr i8, ptr %i.y, i64 %.pre4.i.i
  %i.ag = getelementptr i8, ptr %i.af, i64 -72
  br label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i, %bb.g
  %i.ah = phi ptr [ %i.ae, %bb.g ], [ %i.ag, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !516, !range !224, !noundef !143
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.h, label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i
  %.sroa.02.0.copyload.i = load ptr, ptr %i.ah, align 8, !tbaa !122 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.01.0.copyload.i = load ptr, ptr %i.al, align 8, !tbaa !122
  %i.am = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  %i.an = ptrtoint ptr %.sroa.02.0.copyload.i to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i, label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi i64 [ %i.be, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i ], [ %i.ao, %bb.h ] ; 2 uses
  %.056.i.i.i.i.i.i = phi ptr [ %i.bd, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i ], [ %.sroa.02.0.copyload.i, %bb.h ] ; 2 uses
  %i.aq = load i8, ptr %.056.i.i.i.i.i.i, align 1, !tbaa !81
  %i.ar = load i64, ptr %i.i, align 8, !tbaa !66  ; 4 uses
  %i.as = add i64 %i.ar, 1                        ; 3 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !67    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.j
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.av = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.av)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aw = load i64, ptr %i.j, align 8, !tbaa !81
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i
  %i.ax = phi i64 [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i ]
  %i.ay = icmp ugt i64 %i.as, %i.ax
  br i1 %i.ay, label %bb.i, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ar, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc73:                                         ; preds = %bb.i
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !67
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i: ; preds = %.noexc73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i
  %i.az = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %.noexc73 ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  store i8 %i.aq, ptr %i.ba, align 1, !tbaa !81
  store i64 %i.as, ptr %i.i, align 8, !tbaa !66
  %i.bb = load ptr, ptr %1, align 8, !tbaa !67
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.as
  store i8 0, ptr %i.bc, align 1, !tbaa !81
  %i.bd = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i.i, i64 1
  %i.be = add nsw i64 %.07.i.i.i.i.i.i, -1
  %i.bf = icmp sgt i64 %.07.i.i.i.i.i.i, 1
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i.i, label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit, !llvm.loop !40

bb.j:                                             ; preds = %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.d
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !66  ; 4 uses
  %i.bi = add i64 %i.bh, 1                        ; 2 uses
  %i.bj = load ptr, ptr %1, align 8, !tbaa !67    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.j
  br i1 %i.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.k
  %i.bl = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.bm = load i64, ptr %i.j, align 8, !tbaa !81
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bn = phi i64 [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.bo = icmp ugt i64 %i.bi, %i.bn
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bh, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc76:                                         ; preds = %bb.l
  %.pre.i.i75 = load ptr, ptr %1, align 8, !tbaa !67
  br label %bb.m

bb.m:                                             ; preds = %.noexc76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.bp = phi ptr [ %.pre.i.i75, %.noexc76 ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bh
  store i8 %i.q, ptr %i.bq, align 1, !tbaa !81
  br label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit.sink.split

bb.n:                                             ; preds = %bb.c
  switch i8 %i.q, label %bb.q [
    i8 92, label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit
    i8 38, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i82
  ]

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i82: ; preds = %bb.n
  %i.br = load ptr, ptr %0, align 8, !tbaa !513   ; 4 uses
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !513 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  %.pre.i.i77 = ptrtoint ptr %i.bs to i64
  %.pre2.i.i78 = ptrtoint ptr %i.br to i64
  %.pre4.i.i79 = sub i64 %.pre.i.i77, %.pre2.i.i78 ; 2 uses
  %.not262 = icmp eq i64 %.pre4.i.i79, 72
  %or.cond = or i1 %i.bt, %.not262
  %i.bu = getelementptr i8, ptr %i.br, i64 %.pre4.i.i79
  %i.bv = getelementptr i8, ptr %i.bu, i64 -72
  %i.bw = select i1 %or.cond, ptr %i.bv, ptr %i.br ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !516, !range !224, !noundef !143
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.o, label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i82
  %.sroa.02.0.copyload.i83 = load ptr, ptr %i.bw, align 8, !tbaa !122 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.01.0.copyload.i84 = load ptr, ptr %i.ca, align 8, !tbaa !122
  %i.cb = ptrtoint ptr %.sroa.01.0.copyload.i84 to i64
  %i.cc = ptrtoint ptr %.sroa.02.0.copyload.i83 to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 2 uses
  %i.ce = icmp sgt i64 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i.i87, label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit

.lr.ph.i.i.i.i.i.i87:                             ; preds = %bb.o, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i92
  %.07.i.i.i.i.i.i88 = phi i64 [ %i.ct, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i92 ], [ %i.cd, %bb.o ] ; 2 uses
  %.056.i.i.i.i.i.i89 = phi ptr [ %i.cs, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i92 ], [ %.sroa.02.0.copyload.i83, %bb.o ] ; 2 uses
  %i.cf = load i8, ptr %.056.i.i.i.i.i.i89, align 1, !tbaa !81
  %i.cg = load i64, ptr %i.i, align 8, !tbaa !66  ; 4 uses
  %i.ch = add i64 %i.cg, 1                        ; 3 uses
  %i.ci = load ptr, ptr %1, align 8, !tbaa !67    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.j
  br i1 %i.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i96: ; preds = %.lr.ph.i.i.i.i.i.i87
  %i.ck = icmp ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.ck)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i90: ; preds = %.lr.ph.i.i.i.i.i.i87
  %i.cl = load i64, ptr %i.j, align 8, !tbaa !81
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i91: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i96
  %i.cm = phi i64 [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i90 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i96 ]
  %i.cn = icmp ugt i64 %i.ch, %i.cm
  br i1 %i.cn, label %bb.p, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i92

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i91
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.cg, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %bb.p
  %.pre.i.i.i.i.i.i.i.i95 = load ptr, ptr %1, align 8, !tbaa !67
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i92

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i92: ; preds = %.noexc97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i91
  %i.co = phi ptr [ %.pre.i.i.i.i.i.i.i.i95, %.noexc97 ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i91 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg
  store i8 %i.cf, ptr %i.cp, align 1, !tbaa !81
  store i64 %i.ch, ptr %i.i, align 8, !tbaa !66
  %i.cq = load ptr, ptr %1, align 8, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ch
  store i8 0, ptr %i.cr, align 1, !tbaa !81
  %i.cs = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i.i89, i64 1
  %i.ct = add nsw i64 %.07.i.i.i.i.i.i88, -1
  %i.cu = icmp sgt i64 %.07.i.i.i.i.i.i88, 1
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i.i87, label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit, !llvm.loop !40

bb.q:                                             ; preds = %bb.n
  %i.cv = load i64, ptr %i.i, align 8, !tbaa !66  ; 4 uses
  %i.cw = add i64 %i.cv, 1                        ; 2 uses
  %i.cx = load ptr, ptr %1, align 8, !tbaa !67    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.j
  br i1 %i.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i103: ; preds = %bb.q
  %i.cz = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100: ; preds = %bb.q
  %i.da = load i64, ptr %i.j, align 8, !tbaa !81
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i101: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i103
  %i.db = phi i64 [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i103 ]
  %i.dc = icmp ugt i64 %i.cw, %i.db
  br i1 %i.dc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i101
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.cv, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc104:                                        ; preds = %bb.r
  %.pre.i.i102 = load ptr, ptr %1, align 8, !tbaa !67
  br label %bb.s

bb.s:                                             ; preds = %.noexc104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i101
  %i.dd = phi ptr [ %.pre.i.i102, %.noexc104 ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i101 ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cv
  store i8 %i.q, ptr %i.de, align 1, !tbaa !81
  br label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit.sink.split

_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit.sink.split: ; preds = %bb.s, %bb.m
  %.sink = phi i64 [ %i.bi, %bb.m ], [ %i.cw, %bb.s ] ; 2 uses
  store i64 %.sink, ptr %i.i, align 8, !tbaa !66
  %i.df = load ptr, ptr %1, align 8, !tbaa !67
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.sink
  store i8 0, ptr %i.dg, align 1, !tbaa !81
  br label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit

_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit: ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i92, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i, %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit.sink.split, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i82, %bb.o, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i, %bb.h, %bb.n
  %.159 = phi i8 [ 1, %bb.n ], [ 0, %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit.sink.split ], [ 0, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i ], [ 0, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i ], [ 0, %bb.h ], [ 0, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i82 ], [ 0, %bb.o ], [ 0, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i92 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0313, i64 1 ; 2 uses
  %.not68 = icmp eq ptr %i.dh, %3
  br i1 %.not68, label %._crit_edge, label %bb.c, !llvm.loop !1915

._crit_edge:                                      ; preds = %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit
  %8 = trunc nuw i8 %.159 to i1
  br i1 %8, label %bb.t, label %_ZSt4copyIPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET0_T_SB_SA_.exit209

bb.t:                                             ; preds = %._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !66 ; 4 uses
  %i.dk = add i64 %i.dj, 1                        ; 3 uses
  %i.dl = load ptr, ptr %1, align 8, !tbaa !67    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i110: ; preds = %bb.t
  %i.do = icmp ult i64 %i.dj, 16
  call void @llvm.assume(i1 %i.do)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107: ; preds = %bb.t
  %i.dp = load i64, ptr %i.dm, align 8, !tbaa !81
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i108: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i110
  %i.dq = phi i64 [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i110 ]
  %i.dr = icmp ugt i64 %i.dk, %i.dq
  br i1 %i.dr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i108
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dj, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc111:                                        ; preds = %bb.u
  %.pre.i.i109 = load ptr, ptr %1, align 8, !tbaa !67
  br label %bb.v

bb.v:                                             ; preds = %.noexc111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i108
  %i.ds = phi ptr [ %.pre.i.i109, %.noexc111 ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i108 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dj
  store i8 92, ptr %i.dt, align 1, !tbaa !81
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !66
  %i.du = load ptr, ptr %1, align 8, !tbaa !67
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dk
  store i8 0, ptr %i.dv, align 1, !tbaa !81
  br label %_ZSt4copyIPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET0_T_SB_SA_.exit209

_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149: ; preds = %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149.backedge, %.preheader
  %.1 = phi ptr [ %2, %.preheader ], [ %.1.be, %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149.backedge ] ; 6 uses
  %i.dw = ptrtoint ptr %.1 to i64                 ; 3 uses
  %i.dx = sub i64 %i.l, %i.dw                     ; 4 uses
  %i.dy = ashr i64 %i.dx, 2                       ; 2 uses
  %i.dz = icmp sgt i64 %i.dy, 0
  br i1 %i.dz, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149
  %i.ea = and i64 %i.dx, -4
  %scevgep.i.i.i = getelementptr i8, ptr %.1, i64 %i.ea ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.aa, %.lr.ph.i.i.i
  %.047.i.i.i = phi i64 [ %i.dy, %.lr.ph.i.i.i ], [ %i.en, %bb.aa ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %.1, %.lr.ph.i.i.i ], [ %i.em, %bb.aa ] ; 9 uses
  %i.eb = load i8, ptr %.02946.i.i.i, align 1, !tbaa !81
  %i.ec = icmp eq i8 %i.eb, 36
  br i1 %i.ec, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ed = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !81
  %i.ef = icmp eq i8 %i.ee, 36
  br i1 %i.ef, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit408, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !81
  %i.ei = icmp eq i8 %i.eh, 36
  br i1 %i.ei, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit406, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ej = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !81
  %i.el = icmp eq i8 %i.ek, 36
  br i1 %i.el, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.en = add nsw i64 %.047.i.i.i, -1
  %i.eo = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.eo, label %bb.w, label %._crit_edge.loopexit.i.i.i, !llvm.loop !1916

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.aa
  %.pre54.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149
  %.pre-phi.i.i.i = phi i64 [ %.pre54.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.dw, %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149 ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.1, %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149 ] ; 5 uses
  %i.ep = sub i64 %i.l, %.pre-phi.i.i.i
  switch i64 %i.ep, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.thread [
    i64 3, label %bb.ab
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  %i.eq = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !81
  %i.er = icmp eq i8 %i.eq, 36
  br i1 %i.er, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.es = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.ac
  %.1.i.i.i = phi ptr [ %i.es, %bb.ac ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.et = load i8, ptr %.1.i.i.i, align 1, !tbaa !81
  %i.eu = icmp eq i8 %i.et, 36
  br i1 %i.eu, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.ad
  %.2.i.i.i = phi ptr [ %i.ev, %bb.ad ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ew = load i8, ptr %.2.i.i.i, align 1, !tbaa !81
  %i.ex = icmp eq i8 %i.ew, 36
  br i1 %i.ex, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.thread

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.z
  %i.ey = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit406: ; preds = %bb.y
  %i.ez = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit408: ; preds = %bb.x
  %i.fa = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit:                ; preds = %bb.w, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit406, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit408, %._crit_edge._crit_edge52.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.ab
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %.029.lcssa.i.i.i, %bb.ab ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %i.fa, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit408 ], [ %i.ez, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit406 ], [ %i.ey, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %bb.w ] ; 9 uses
  %i.fb = icmp eq ptr %.028.i.i.i, %3
  br i1 %i.fb, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZSt4findIPKccET_S2_S2_RKT0_.exit
  %i.fc = ptrtoint ptr %.028.i.i.i to i64
  %i.fd = sub i64 %i.fc, %i.dw                    ; 2 uses
  %i.fe = icmp sgt i64 %i.fd, 0
  br i1 %i.fe, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET0_T_SB_SA_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ae, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi i64 [ %i.ft, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i ], [ %i.fd, %bb.ae ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %i.fs, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i ], [ %.1, %bb.ae ] ; 2 uses
  %i.ff = load i8, ptr %.056.i.i.i.i.i, align 1, !tbaa !81
  %i.fg = load i64, ptr %i.m, align 8, !tbaa !66  ; 4 uses
  %i.fh = add i64 %i.fg, 1                        ; 3 uses
  %i.fi = load ptr, ptr %1, align 8, !tbaa !67    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.n
  br i1 %i.fj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fk = icmp ult i64 %i.fg, 16
  call void @llvm.assume(i1 %i.fk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fl = load i64, ptr %i.n, align 8, !tbaa !81
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.fm = phi i64 [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i ]
  %i.fn = icmp ugt i64 %i.fh, %i.fm
  br i1 %i.fn, label %bb.af, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc112:                                        ; preds = %bb.af
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !67
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i: ; preds = %.noexc112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  %i.fo = phi ptr [ %.pre.i.i.i.i.i.i.i, %.noexc112 ], [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fg
  store i8 %i.ff, ptr %i.fp, align 1, !tbaa !81
  store i64 %i.fh, ptr %i.m, align 8, !tbaa !66
  %i.fq = load ptr, ptr %1, align 8, !tbaa !67
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fh
  store i8 0, ptr %i.fr, align 1, !tbaa !81
  %i.fs = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 1
  %i.ft = add nsw i64 %.07.i.i.i.i.i, -1
  %i.fu = icmp sgt i64 %.07.i.i.i.i.i, 1
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET0_T_SB_SA_.exit, !llvm.loop !40

_ZSt4copyIPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET0_T_SB_SA_.exit: ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i, %bb.ae
  %i.fv = getelementptr inbounds nuw i8, ptr %.028.i.i.i, i64 1 ; 4 uses
  %i.fw = icmp eq ptr %i.fv, %3
  br i1 %i.fw, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %_ZSt4copyIPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET0_T_SB_SA_.exit
  %i.fx = load i64, ptr %i.m, align 8, !tbaa !66  ; 4 uses
end_hunk_0
