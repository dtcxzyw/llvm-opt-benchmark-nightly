Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/json-schema-to-grammar?download=true
inline.NumInlined: 8526
inline.NumDeleted: 2778
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZSt15__regex_replaceISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIPKcS6_EENS1_12regex_traitsIcEEcET_SF_T0_SG_RKNS1_11basic_regexIT2_T1_EEPKSI_mNSt15regex_constants15match_flag_typeE:bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cv
  store i8 %i.cu, ptr %i.de, align 1, !tbaa !72
  store i64 %i.cw, ptr %i.cs, align 8, !tbaa !73
  %i.df = load ptr, ptr %.us-phi126, align 8, !tbaa !71
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cw
  store i8 0, ptr %i.dg, align 1, !tbaa !72
  %i.dh = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i54, i64 1
  %i.di = add nsw i64 %.07.i.i.i.i.i53, -1
  %i.dj = icmp sgt i64 %.07.i.i.i.i.i53, 1
  br i1 %i.dj, label %bb.l, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, !llvm.loop !42

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit66.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit50.us, %bb.e, %bb.j, %bb.m, %bb.c, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit50.us127, %bb.f, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit50
  %lpad.loopexit.split-lp203 = landingpad { ptr, i32 }
          cleanup
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !125 ; 3 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i67, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit68, label %bb.o

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit: ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i57, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit50, %bb.g, %bb.h, %bb.k, %_ZNKSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEeqERKSD_.exit99
  %.sroa.028.4 = phi ptr [ %0, %bb.g ], [ %.us-phi126, %_ZNKSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEeqERKSD_.exit99 ], [ %0, %bb.h ], [ %0, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i ], [ %.us-phi126, %bb.k ], [ %i.co, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit50 ], [ %.us-phi126, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i57 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !125 ; 3 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i63, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit64, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !126
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #34
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit64

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit64: ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  ret ptr %.sroa.028.4

bb.o:                                             ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit66.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !126
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dl to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dx) #34
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit68

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit68: ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit66.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  resume { ptr, i32 } %lpad.loopexit.split-lp203
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEC2ESA_SA_RKNS_11basic_regexIcSC_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::regex_iterator", align 8 ; 8 uses
  store ptr %1, ptr %0, align 8, !tbaa !120
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !521
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %4, ptr %i.c, align 8, !tbaa !522
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.e = invoke noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEEcNS5_12regex_traitsIcEEEEbT_SH_RNS5_13match_resultsISH_T0_EERKNS5_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZSt12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS4_9sub_matchISA_EEEcNS4_12regex_traitsIcEEEbT_SG_RNS4_13match_resultsISG_T0_EERKNS4_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit unwind label %bb.e

_ZSt12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS4_9sub_matchISA_EEEcNS4_12regex_traitsIcEEEbT_SG_RNS4_13match_resultsISG_T0_EERKNS4_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit: ; preds = %bb.a
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %_ZSt12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS4_9sub_matchISA_EEEcNS4_12regex_traitsIcEEEbT_SG_RNS4_13match_resultsISG_T0_EERKNS4_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  %i.g = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !120
  store i64 %i.j, ptr %i.h, align 8, !tbaa !120
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !125  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !126
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #34
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !125  ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i11, label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !126
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #34
  br label %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12

_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit, %_ZSt12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS4_9sub_matchISA_EEEcNS4_12regex_traitsIcEEEbT_SG_RNS4_13match_resultsISG_T0_EERKNS4_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit
  ret void

bb.i:                                             ; preds = %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEED2Ev.exit12 ], [ %i.q, %bb.e ]
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !125  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !126
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #34
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::regex_traits", align 8 ; 10 uses
  %6 = alloca %"class.std::locale", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #33
  %i.a = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #33
  %i.b = load ptr, ptr %6, align 8, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !281
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !283  ; 3 uses
  %.not.not.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i, label %bb.b, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt16__throw_bad_castv() #32
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.a
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
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

bb.c:                                             ; preds = %.backedge.backedge, %.lr.ph
  %.0313 = phi ptr [ %2, %.lr.ph ], [ %.0313.be, %.backedge.backedge ] ; 3 uses
  %.058312 = phi i1 [ false, %.lr.ph ], [ %.058312.be, %.backedge.backedge ]
  %i.q = load i8, ptr %.0313, align 1, !tbaa !72  ; 5 uses
  br i1 %.058312, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !289
  %i.s = zext i8 %i.q to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !291
  %i.v = and i16 %i.u, 2048
  %.not263 = icmp eq i16 %i.v, 0
  br i1 %.not263, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = invoke noundef i32 @_ZNKSt7__cxx1112regex_traitsIcE5valueEci(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext %i.q, i32 noundef 10)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !122    ; 4 uses
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !122  ; 2 uses
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
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !254, !range !157, !noundef !158
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.h, label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i
  %.sroa.02.0.copyload.i = load ptr, ptr %i.ah, align 8, !tbaa !120 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.01.0.copyload.i = load ptr, ptr %i.al, align 8, !tbaa !120
  %i.am = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  %i.an = ptrtoint ptr %.sroa.02.0.copyload.i to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i, label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi i64 [ %i.be, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i ], [ %i.ao, %bb.h ] ; 2 uses
  %.056.i.i.i.i.i.i = phi ptr [ %i.bd, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i ], [ %.sroa.02.0.copyload.i, %bb.h ] ; 2 uses
  %i.aq = load i8, ptr %.056.i.i.i.i.i.i, align 1, !tbaa !72
  %i.ar = load i64, ptr %i.i, align 8, !tbaa !73  ; 4 uses
  %i.as = add i64 %i.ar, 1                        ; 3 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !71    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.j
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.av = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.av)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aw = load i64, ptr %i.j, align 8, !tbaa !72
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i
  %i.ax = phi i64 [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i ]
  %i.ay = icmp ugt i64 %i.as, %i.ax
  br i1 %i.ay, label %bb.i, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ar, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc73:                                         ; preds = %bb.i
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !71
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i: ; preds = %.noexc73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i
  %i.az = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %.noexc73 ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  store i8 %i.aq, ptr %i.ba, align 1, !tbaa !72
  store i64 %i.as, ptr %i.i, align 8, !tbaa !73
  %i.bb = load ptr, ptr %1, align 8, !tbaa !71
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.as
  store i8 0, ptr %i.bc, align 1, !tbaa !72
  %i.bd = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i.i, i64 1
  %i.be = add nsw i64 %.07.i.i.i.i.i.i, -1
  %i.bf = icmp sgt i64 %.07.i.i.i.i.i.i, 1
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i.i, label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit, !llvm.loop !42

bb.j:                                             ; preds = %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.d
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !73  ; 4 uses
  %i.bi = add i64 %i.bh, 1                        ; 2 uses
  %i.bj = load ptr, ptr %1, align 8, !tbaa !71    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.j
  br i1 %i.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.k
  %i.bl = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.bm = load i64, ptr %i.j, align 8, !tbaa !72
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bn = phi i64 [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.bo = icmp ugt i64 %i.bi, %i.bn
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bh, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc76:                                         ; preds = %bb.l
  %.pre.i.i75 = load ptr, ptr %1, align 8, !tbaa !71
  br label %bb.m

bb.m:                                             ; preds = %.noexc76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.bp = phi ptr [ %.pre.i.i75, %.noexc76 ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bh
  store i8 %i.q, ptr %i.bq, align 1, !tbaa !72
  br label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit.sink.split

bb.n:                                             ; preds = %bb.c
  switch i8 %i.q, label %bb.q [
    i8 92, label %._crit_edge
    i8 38, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i82
  ]

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i82: ; preds = %bb.n
  %i.br = load ptr, ptr %0, align 8, !tbaa !122   ; 4 uses
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !122 ; 2 uses
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
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !254, !range !157, !noundef !158
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.o, label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i82
  %.sroa.02.0.copyload.i83 = load ptr, ptr %i.bw, align 8, !tbaa !120 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.01.0.copyload.i84 = load ptr, ptr %i.ca, align 8, !tbaa !120
  %i.cb = ptrtoint ptr %.sroa.01.0.copyload.i84 to i64
  %i.cc = ptrtoint ptr %.sroa.02.0.copyload.i83 to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 2 uses
  %i.ce = icmp sgt i64 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i.i87, label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit

.lr.ph.i.i.i.i.i.i87:                             ; preds = %bb.o, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i92
  %.07.i.i.i.i.i.i88 = phi i64 [ %i.ct, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i92 ], [ %i.cd, %bb.o ] ; 2 uses
  %.056.i.i.i.i.i.i89 = phi ptr [ %i.cs, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i92 ], [ %.sroa.02.0.copyload.i83, %bb.o ] ; 2 uses
  %i.cf = load i8, ptr %.056.i.i.i.i.i.i89, align 1, !tbaa !72
  %i.cg = load i64, ptr %i.i, align 8, !tbaa !73  ; 4 uses
  %i.ch = add i64 %i.cg, 1                        ; 3 uses
  %i.ci = load ptr, ptr %1, align 8, !tbaa !71    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.j
  br i1 %i.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i96: ; preds = %.lr.ph.i.i.i.i.i.i87
  %i.ck = icmp ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.ck)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i90: ; preds = %.lr.ph.i.i.i.i.i.i87
  %i.cl = load i64, ptr %i.j, align 8, !tbaa !72
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i91: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i96
  %i.cm = phi i64 [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i90 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i96 ]
  %i.cn = icmp ugt i64 %i.ch, %i.cm
  br i1 %i.cn, label %bb.p, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i92

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i91
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.cg, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %bb.p
  %.pre.i.i.i.i.i.i.i.i95 = load ptr, ptr %1, align 8, !tbaa !71
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i92

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i92: ; preds = %.noexc97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i91
  %i.co = phi ptr [ %.pre.i.i.i.i.i.i.i.i95, %.noexc97 ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i91 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg
  store i8 %i.cf, ptr %i.cp, align 1, !tbaa !72
  store i64 %i.ch, ptr %i.i, align 8, !tbaa !73
  %i.cq = load ptr, ptr %1, align 8, !tbaa !71
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ch
  store i8 0, ptr %i.cr, align 1, !tbaa !72
  %i.cs = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i.i89, i64 1
  %i.ct = add nsw i64 %.07.i.i.i.i.i.i88, -1
  %i.cu = icmp sgt i64 %.07.i.i.i.i.i.i88, 1
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i.i87, label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit, !llvm.loop !42

bb.q:                                             ; preds = %bb.n
  %i.cv = load i64, ptr %i.i, align 8, !tbaa !73  ; 4 uses
  %i.cw = add i64 %i.cv, 1                        ; 2 uses
  %i.cx = load ptr, ptr %1, align 8, !tbaa !71    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.j
  br i1 %i.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i103: ; preds = %bb.q
  %i.cz = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100: ; preds = %bb.q
  %i.da = load i64, ptr %i.j, align 8, !tbaa !72
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i101: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i103
  %i.db = phi i64 [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i103 ]
  %i.dc = icmp ugt i64 %i.cw, %i.db
  br i1 %i.dc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i101
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.cv, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc104:                                        ; preds = %bb.r
  %.pre.i.i102 = load ptr, ptr %1, align 8, !tbaa !71
  br label %bb.s

bb.s:                                             ; preds = %.noexc104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i101
  %i.dd = phi ptr [ %.pre.i.i102, %.noexc104 ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i101 ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cv
  store i8 %i.q, ptr %i.de, align 1, !tbaa !72
  br label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit.sink.split

_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit.sink.split: ; preds = %bb.s, %bb.m
  %.sink = phi i64 [ %i.bi, %bb.m ], [ %i.cw, %bb.s ] ; 2 uses
  store i64 %.sink, ptr %i.i, align 8, !tbaa !73
  %i.df = load ptr, ptr %1, align 8, !tbaa !71
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.sink
  store i8 0, ptr %i.dg, align 1, !tbaa !72
  br label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit

_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit: ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i92, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i, %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit.sink.split, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i82, %bb.o, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i, %bb.h
  %i.dh = getelementptr inbounds nuw i8, ptr %.0313, i64 1 ; 2 uses
  %.not68 = icmp eq ptr %i.dh, %3
  br i1 %.not68, label %_ZSt4copyIPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET0_T_SB_SA_.exit209, label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit, %._crit_edge
  %.0313.be = phi ptr [ %i.dh, %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit ], [ %7, %._crit_edge ]
  %.058312.be = phi i1 [ false, %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit ], [ true, %._crit_edge ]
  br label %bb.c, !llvm.loop !1194

._crit_edge:                                      ; preds = %bb.n
  %7 = getelementptr inbounds nuw i8, ptr %.0313, i64 1 ; 2 uses
  %.not68391 = icmp eq ptr %7, %3
  br i1 %.not68391, label %bb.t, label %.backedge.backedge

bb.t:                                             ; preds = %._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !73 ; 4 uses
  %i.dk = add i64 %i.dj, 1                        ; 3 uses
  %i.dl = load ptr, ptr %1, align 8, !tbaa !71    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i110: ; preds = %bb.t
  %i.do = icmp ult i64 %i.dj, 16
  call void @llvm.assume(i1 %i.do)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107: ; preds = %bb.t
  %i.dp = load i64, ptr %i.dm, align 8, !tbaa !72
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i108: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i110
  %i.dq = phi i64 [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i110 ]
  %i.dr = icmp ugt i64 %i.dk, %i.dq
  br i1 %i.dr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i108
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dj, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc111:                                        ; preds = %bb.u
  %.pre.i.i109 = load ptr, ptr %1, align 8, !tbaa !71
  br label %bb.v

bb.v:                                             ; preds = %.noexc111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i108
  %i.ds = phi ptr [ %.pre.i.i109, %.noexc111 ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i108 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dj
  store i8 92, ptr %i.dt, align 1, !tbaa !72
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !73
  %i.du = load ptr, ptr %1, align 8, !tbaa !71
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dk
  store i8 0, ptr %i.dv, align 1, !tbaa !72
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
  %i.eb = load i8, ptr %.02946.i.i.i, align 1, !tbaa !72
  %i.ec = icmp eq i8 %i.eb, 36
  br i1 %i.ec, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ed = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !72
  %i.ef = icmp eq i8 %i.ee, 36
  br i1 %i.ef, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit408, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !72
  %i.ei = icmp eq i8 %i.eh, 36
  br i1 %i.ei, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit406, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ej = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !72
  %i.el = icmp eq i8 %i.ek, 36
  br i1 %i.el, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.en = add nsw i64 %.047.i.i.i, -1
  %i.eo = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.eo, label %bb.w, label %._crit_edge.loopexit.i.i.i, !llvm.loop !1195

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
  %i.eq = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !72
  %i.er = icmp eq i8 %i.eq, 36
  br i1 %i.er, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.es = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.ac
  %.1.i.i.i = phi ptr [ %i.es, %bb.ac ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.et = load i8, ptr %.1.i.i.i, align 1, !tbaa !72
  %i.eu = icmp eq i8 %i.et, 36
  br i1 %i.eu, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.ad
  %.2.i.i.i = phi ptr [ %i.ev, %bb.ad ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ew = load i8, ptr %.2.i.i.i, align 1, !tbaa !72
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
  %i.ff = load i8, ptr %.056.i.i.i.i.i, align 1, !tbaa !72
  %i.fg = load i64, ptr %i.m, align 8, !tbaa !73  ; 4 uses
  %i.fh = add i64 %i.fg, 1                        ; 3 uses
  %i.fi = load ptr, ptr %1, align 8, !tbaa !71    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.n
  br i1 %i.fj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fk = icmp ult i64 %i.fg, 16
  call void @llvm.assume(i1 %i.fk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fl = load i64, ptr %i.n, align 8, !tbaa !72
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.fm = phi i64 [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i ]
  %i.fn = icmp ugt i64 %i.fh, %i.fm
  br i1 %i.fn, label %bb.af, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc112:                                        ; preds = %bb.af
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !71
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i: ; preds = %.noexc112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  %i.fo = phi ptr [ %.pre.i.i.i.i.i.i.i, %.noexc112 ], [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fg
  store i8 %i.ff, ptr %i.fp, align 1, !tbaa !72
  store i64 %i.fh, ptr %i.m, align 8, !tbaa !73
  %i.fq = load ptr, ptr %1, align 8, !tbaa !71
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fh
  store i8 0, ptr %i.fr, align 1, !tbaa !72
  %i.fs = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 1
  %i.ft = add nsw i64 %.07.i.i.i.i.i, -1
  %i.fu = icmp sgt i64 %.07.i.i.i.i.i, 1
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET0_T_SB_SA_.exit, !llvm.loop !42

_ZSt4copyIPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET0_T_SB_SA_.exit: ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i, %bb.ae
  %i.fv = getelementptr inbounds nuw i8, ptr %.028.i.i.i, i64 1 ; 4 uses
  %i.fw = icmp eq ptr %i.fv, %3
  br i1 %i.fw, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %_ZSt4copyIPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET0_T_SB_SA_.exit
  %i.fx = load i64, ptr %i.m, align 8, !tbaa !73  ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeE:bb.a
  %i.kx = and i16 %i.kw, 2048
  %.not265 = icmp eq i16 %i.kx, 0
  br i1 %.not265, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ky = invoke noundef i32 @_ZNKSt7__cxx1112regex_traitsIcE5valueEci(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext %i.ks, i32 noundef 10)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay
  %i.kz = getelementptr inbounds nuw i8, ptr %.028.i.i.i, i64 3
  %i.la = mul nsw i64 %i.kq, 10
  %i.lb = sext i32 %i.ky to i64
  %i.lc = add nsw i64 %i.la, %i.lb
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax, %bb.aw
  %.0242 = phi ptr [ %i.kr, %bb.aw ], [ %i.kz, %bb.az ], [ %i.kr, %bb.ax ] ; 6 uses
  %.049 = phi i64 [ %i.kq, %bb.aw ], [ %i.lc, %bb.az ], [ %i.kq, %bb.ax ] ; 3 uses
  %i.ld = icmp sgt i64 %.049, -1
  br i1 %i.ld, label %bb.bb, label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149.backedge

bb.bb:                                            ; preds = %bb.ba
  %i.le = load ptr, ptr %0, align 8, !tbaa !122   ; 3 uses
  %i.lf = load ptr, ptr %i.p, align 8, !tbaa !122 ; 2 uses
  %i.lg = icmp eq ptr %i.le, %i.lf
  br i1 %i.lg, label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149.backedge, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread: ; preds = %bb.bb
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = ptrtoint ptr %i.le to i64
  %i.lj = sub i64 %i.lh, %i.li
  %i.lk = sdiv exact i64 %i.lj, 24
  %i.ll = add nsw i64 %i.lk, -3
  %i.lm = icmp ult i64 %.049, %i.ll
  br i1 %i.lm, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i174, label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149.backedge

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i174: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread
  %i.ln = getelementptr inbounds nuw [24 x i8], ptr %i.le, i64 %.049 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load i8, ptr %i.lo, align 8, !tbaa !254, !range !157, !noundef !158
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %bb.bc, label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149.backedge

bb.bc:                                            ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i174
  %.sroa.02.0.copyload.i177 = load ptr, ptr %i.ln, align 8, !tbaa !120 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %.sroa.01.0.copyload.i178 = load ptr, ptr %i.lr, align 8, !tbaa !120
  %i.ls = ptrtoint ptr %.sroa.01.0.copyload.i178 to i64
  %i.lt = ptrtoint ptr %.sroa.02.0.copyload.i177 to i64
  %i.lu = sub i64 %i.ls, %i.lt                    ; 2 uses
  %i.lv = icmp sgt i64 %i.lu, 0
  br i1 %i.lv, label %.lr.ph.i.i.i.i.i.i181, label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149.backedge

.lr.ph.i.i.i.i.i.i181:                            ; preds = %bb.bc, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i186
  %.07.i.i.i.i.i.i182 = phi i64 [ %i.mk, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i186 ], [ %i.lu, %bb.bc ] ; 2 uses
  %.056.i.i.i.i.i.i183 = phi ptr [ %i.mj, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i186 ], [ %.sroa.02.0.copyload.i177, %bb.bc ] ; 2 uses
  %i.lw = load i8, ptr %.056.i.i.i.i.i.i183, align 1, !tbaa !72
  %i.lx = load i64, ptr %i.m, align 8, !tbaa !73  ; 4 uses
  %i.ly = add i64 %i.lx, 1                        ; 3 uses
  %i.lz = load ptr, ptr %1, align 8, !tbaa !71    ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.n
  br i1 %i.ma, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i190: ; preds = %.lr.ph.i.i.i.i.i.i181
  %i.mb = icmp ult i64 %i.lx, 16
  call void @llvm.assume(i1 %i.mb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i184: ; preds = %.lr.ph.i.i.i.i.i.i181
  %i.mc = load i64, ptr %i.n, align 8, !tbaa !72
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i185: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i190
  %i.md = phi i64 [ %i.mc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i184 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i190 ]
  %i.me = icmp ugt i64 %i.ly, %i.md
  br i1 %i.me, label %bb.bd, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i186

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i185
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.lx, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc191 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc191:                                        ; preds = %bb.bd
  %.pre.i.i.i.i.i.i.i.i189 = load ptr, ptr %1, align 8, !tbaa !71
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i186

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i186: ; preds = %.noexc191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i185
  %i.mf = phi ptr [ %.pre.i.i.i.i.i.i.i.i189, %.noexc191 ], [ %i.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i185 ]
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.lx
  store i8 %i.lw, ptr %i.mg, align 1, !tbaa !72
  store i64 %i.ly, ptr %i.m, align 8, !tbaa !73
  %i.mh = load ptr, ptr %1, align 8, !tbaa !71
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.ly
  store i8 0, ptr %i.mi, align 1, !tbaa !72
  %i.mj = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i.i183, i64 1
  %i.mk = add nsw i64 %.07.i.i.i.i.i.i182, -1
  %i.ml = icmp sgt i64 %.07.i.i.i.i.i.i182, 1
  br i1 %i.ml, label %.lr.ph.i.i.i.i.i.i181, label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149.backedge, !llvm.loop !42

bb.be:                                            ; preds = %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlcE_clEc.exit160
  %i.mm = load i64, ptr %i.m, align 8, !tbaa !73  ; 4 uses
  %i.mn = add i64 %i.mm, 1                        ; 2 uses
  %i.mo = load ptr, ptr %1, align 8, !tbaa !71    ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.n
  br i1 %i.mp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i197: ; preds = %bb.be
  %i.mq = icmp ult i64 %i.mm, 16
  call void @llvm.assume(i1 %i.mq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i194: ; preds = %bb.be
  %i.mr = load i64, ptr %i.n, align 8, !tbaa !72
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i195: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i197
  %i.ms = phi i64 [ %i.mr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i194 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i197 ]
  %i.mt = icmp ugt i64 %i.mn, %i.ms
  br i1 %i.mt, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i195
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.mm, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc198 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc198:                                        ; preds = %bb.bf
  %.pre.i.i196 = load ptr, ptr %1, align 8, !tbaa !71
  br label %bb.bg

bb.bg:                                            ; preds = %.noexc198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i195
  %i.mu = phi ptr [ %.pre.i.i196, %.noexc198 ], [ %i.mo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i195 ]
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mm
  store i8 36, ptr %i.mv, align 1, !tbaa !72
  br label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149.sink.split

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.af, %bb.au, %bb.bd, %bb.bh, %bb.ao, %bb.ar, %bb.av, %bb.ay, %bb.ah, %bb.al, %bb.bf, %bb.i, %bb.r, %bb.l, %bb.e, %bb.u
  %lpad.loopexit.split-lp504 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149.sink.split: ; preds = %bb.am, %bb.bg, %bb.ai
  %.sink419 = phi i64 [ %i.fy, %bb.ai ], [ %i.mn, %bb.bg ], [ %i.gk, %bb.am ] ; 2 uses
  %.2.ph = phi ptr [ %i.fv, %bb.ai ], [ %i.fv, %bb.bg ], [ %i.gi, %bb.am ]
  store i64 %.sink419, ptr %i.m, align 8, !tbaa !73
  %i.mw = load ptr, ptr %1, align 8, !tbaa !71
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %.sink419
  store i8 0, ptr %i.mx, align 1, !tbaa !72
  br label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149.backedge

_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149.backedge: ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i166, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i156, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i143, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i186, %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149.sink.split, %bb.bb, %bb.ap, %bb.as, %bb.ba, %bb.an, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i133, %bb.aq, %bb.at, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread, %bb.bc, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i174
  %.1.be = phi ptr [ %.0242, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i186 ], [ %.0242, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i.i174 ], [ %i.hy, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i156 ], [ %i.je, %bb.at ], [ %.2.ph, %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149.sink.split ], [ %i.gt, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.i133 ], [ %i.hy, %bb.ap ], [ %i.hy, %bb.aq ], [ %i.je, %bb.as ], [ %.0242, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread ], [ %.0242, %bb.bc ], [ %.0242, %bb.ba ], [ %i.gt, %bb.an ], [ %.0242, %bb.bb ], [ %i.gt, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i.i143 ], [ %i.je, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i166 ]
  br label %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit149

_ZSt4findIPKccET_S2_S2_RKT0_.exit.thread:         ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i, %_ZSt4findIPKccET_S2_S2_RKT0_.exit
  %i.my = icmp sgt i64 %i.dx, 0
  br i1 %i.my, label %.lr.ph.i.i.i.i.i200, label %_ZSt4copyIPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET0_T_SB_SA_.exit209

.lr.ph.i.i.i.i.i200:                              ; preds = %_ZSt4findIPKccET_S2_S2_RKT0_.exit.thread, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i205
  %.07.i.i.i.i.i201 = phi i64 [ %i.nn, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i205 ], [ %i.dx, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.thread ] ; 2 uses
  %.056.i.i.i.i.i202 = phi ptr [ %i.nm, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i205 ], [ %.1, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.thread ] ; 2 uses
  %i.mz = load i8, ptr %.056.i.i.i.i.i202, align 1, !tbaa !72
  %i.na = load i64, ptr %i.m, align 8, !tbaa !73  ; 4 uses
  %i.nb = add i64 %i.na, 1                        ; 3 uses
  %i.nc = load ptr, ptr %1, align 8, !tbaa !71    ; 2 uses
  %i.nd = icmp eq ptr %i.nc, %i.n
  br i1 %i.nd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i207: ; preds = %.lr.ph.i.i.i.i.i200
  %i.ne = icmp ult i64 %i.na, 16
  call void @llvm.assume(i1 %i.ne)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i203: ; preds = %.lr.ph.i.i.i.i.i200
  %i.nf = load i64, ptr %i.n, align 8, !tbaa !72
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i204: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i207
  %i.ng = phi i64 [ %i.nf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i203 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i207 ]
  %i.nh = icmp ugt i64 %i.nb, %i.ng
  br i1 %i.nh, label %bb.bh, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i205

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i204
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.na, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc208 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc208:                                        ; preds = %bb.bh
  %.pre.i.i.i.i.i.i.i206 = load ptr, ptr %1, align 8, !tbaa !71
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i205

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i205: ; preds = %.noexc208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i204
  %i.ni = phi ptr [ %.pre.i.i.i.i.i.i.i206, %.noexc208 ], [ %i.nc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i204 ]
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.na
  store i8 %i.mz, ptr %i.nj, align 1, !tbaa !72
  store i64 %i.nb, ptr %i.m, align 8, !tbaa !73
  %i.nk = load ptr, ptr %1, align 8, !tbaa !71
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nb
  store i8 0, ptr %i.nl, align 1, !tbaa !72
  %i.nm = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i202, i64 1
  %i.nn = add nsw i64 %.07.i.i.i.i.i201, -1
  %i.no = icmp sgt i64 %.07.i.i.i.i.i201, 1
  br i1 %i.no, label %.lr.ph.i.i.i.i.i200, label %_ZSt4copyIPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET0_T_SB_SA_.exit209, !llvm.loop !42

_ZSt4copyIPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET0_T_SB_SA_.exit209: ; preds = %_ZZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeEENKUlmE_clEm.exit, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i205, %.preheader292, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.thread, %bb.v
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret ptr %1

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j
  %.pn69.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.j ], [ %lpad.loopexit.split-lp504, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  resume { ptr, i32 } %.pn69.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEppEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  %.pre.i = ptrtoint ptr %i.d to i64
  %.pre2.i = ptrtoint ptr %i.b to i64
  %.pre4.i = sub i64 %.pre.i, %.pre2.i            ; 2 uses
  br i1 %i.e, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i: ; preds = %bb.a
  %.not = icmp eq i64 %.pre4.i, 72
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !254, !range !157, !noundef !158
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  br i1 %.not, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread55, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit: ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 %.pre4.i ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -56
  %i.k = load i8, ptr %i.j, align 8, !tbaa !254, !range !157, !noundef !158
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit34.thread53, label %bb.j

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread55: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i
  br i1 %i.h, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20._ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i39_crit_edge, label %bb.j

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i
  br i1 %i.h, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20, label %bb.j

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit34.thread53: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit
  %i.m = getelementptr i8, ptr %i.i, i64 -64
  %i.n = getelementptr i8, ptr %i.i, i64 -72
  br label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit40

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread
  %.in.in = getelementptr i8, ptr %i.b, i64 8
  br label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit40

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20._ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i39_crit_edge: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread55
  %.in.in67 = getelementptr i8, ptr %i.b, i64 8
  br label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit40

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit40: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit34.thread53, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20._ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i39_crit_edge, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20
  %.in69.in = phi ptr [ %.in.in, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20 ], [ %.in.in67, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20._ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i39_crit_edge ], [ %i.m, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit34.thread53 ]
  %i.o = phi ptr [ %i.b, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20 ], [ %i.b, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20._ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i39_crit_edge ], [ %i.n, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit34.thread53 ]
  %.in69 = load i64, ptr %.in69.in, align 8
  %i.p = inttoptr i64 %.in69 to ptr               ; 9 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !120
  %i.r = icmp eq ptr %i.q, %i.p
  br i1 %i.r, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !120  ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.v, align 8, !tbaa !521
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !521
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !522
  %i.z = or i32 %i.y, 96
  %i.aa = tail call noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEEcNS5_12regex_traitsIcEEEEbT_SH_RNS5_13match_resultsISH_T0_EERKNS5_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr %i.p, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef %i.z, i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !125 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr i8, ptr %i.ac, i64 %i.af  ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -48
  store ptr %i.p, ptr %i.ah, align 8, !tbaa !120
  %i.ai = getelementptr i8, ptr %i.ag, i64 -40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !120
  %i.ak = icmp ne ptr %i.aj, %i.p
  %i.al = getelementptr i8, ptr %i.ag, i64 -32
  %i.am = zext i1 %i.ak to i8
  store i8 %i.am, ptr %i.al, align 8, !tbaa !254
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load i64, ptr %0, align 8, !tbaa !120
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !120
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit40
  %.sroa.0.0 = phi ptr [ %i.ap, %bb.f ], [ %i.p, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit40 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !228
  %i.as = or i32 %i.ar, 128                       ; 2 uses
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !228
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.at, align 8, !tbaa !120
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !521
  %i.aw = tail call noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEEcNS5_12regex_traitsIcEEEEbT_SH_RNS5_13match_resultsISH_T0_EERKNS5_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr %.sroa.0.0, ptr %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i32 noundef %i.as, i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !125 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr i8, ptr %i.ay, i64 %i.bb  ; 3 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -48
  store ptr %i.p, ptr %i.bd, align 8, !tbaa !120
  %i.be = getelementptr i8, ptr %i.bc, i64 -40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !120
  %i.bg = icmp ne ptr %i.bf, %i.p
  %i.bh = getelementptr i8, ptr %i.bc, i64 -32
  %i.bi = zext i1 %i.bg to i8
  store i8 %i.bi, ptr %i.bh, align 8, !tbaa !254
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = load i64, ptr %0, align 8, !tbaa !120
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !120
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store ptr null, ptr %i.au, align 8, !tbaa !521
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread55, %bb.c, %bb.e, %bb.i, %bb.h, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr %0, ptr %5, align 8, !tbaa !323
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #36 ; 10 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !326
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !73   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !73   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.q = tail call i32 @memcmp(ptr noundef %i.p, ptr noundef %i.o, i64 noundef %.sroa.speculated.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.r = sub i64 %i.j, %i.l
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.r, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
end_hunk_1
