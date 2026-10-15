Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/context?download=true
inline.NumInlined: 6156
inline.NumDeleted: 2235
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN7xgboost7Context16SetDeviceOrdinalERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESaIS9_EE:bb.a

bb.u:                                             ; preds = %bb.s
  %i.jb = landingpad { ptr, i32 }
          cleanup
  %i.jc = load ptr, ptr %2, align 8, !tbaa !104   ; 3 uses
  %.not.i.i.i6.i.i66.i = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i6.i.i66.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit7.i.i67.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !105
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jc to i64
  %i.jh = sub i64 %i.jf, %i.jg
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.jh) #33
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit7.i.i67.i

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit7.i.i67.i: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %common.resume

_ZSt11regex_matchISt11char_traitsIcESaIcEcNSt7__cxx1112regex_traitsIcEEEbRKNS3_12basic_stringIT1_T_T0_EERKNS3_11basic_regexIS7_T2_EENSt15regex_constants15match_flag_typeE.exit70.i: ; preds = %bb.t, %_ZSt11regex_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS4_9sub_matchISA_EEEcNS4_12regex_traitsIcEEEbT_SG_RNS4_13match_resultsISG_T0_EERKNS4_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit.i.i68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.ji = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.ji, ptr %5, align 8, !tbaa !45
  %i.jj = load ptr, ptr %i.hg, align 8, !tbaa !43 ; 2 uses
  %i.jk = load i64, ptr %i.hh, align 8, !tbaa !47 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %i.jk, ptr %i.b, align 8, !tbaa !46
  %i.jl = icmp ugt i64 %i.jk, 15
  br i1 %i.jl, label %.noexc.i.i, label %._crit_edge.i.i.i62

.noexc.i.i:                                       ; preds = %_ZSt11regex_matchISt11char_traitsIcESaIcEcNSt7__cxx1112regex_traitsIcEEEbRKNS3_12basic_stringIT1_T_T0_EERKNS3_11basic_regexIS7_T2_EENSt15regex_constants15match_flag_typeE.exit70.i
  %i.jm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.jm, ptr %5, align 8, !tbaa !43
  %i.jn = load i64, ptr %i.b, align 8, !tbaa !46
  store i64 %i.jn, ptr %i.ji, align 8, !tbaa !44
  br label %._crit_edge.i.i.i62

._crit_edge.i.i.i62:                              ; preds = %.noexc.i.i, %_ZSt11regex_matchISt11char_traitsIcESaIcEcNSt7__cxx1112regex_traitsIcEEEbRKNS3_12basic_stringIT1_T_T0_EERKNS3_11basic_regexIS7_T2_EENSt15regex_constants15match_flag_typeE.exit70.i
  %i.jo = phi ptr [ %i.jm, %.noexc.i.i ], [ %i.ji, %_ZSt11regex_matchISt11char_traitsIcESaIcEcNSt7__cxx1112regex_traitsIcEEEbRKNS3_12basic_stringIT1_T_T0_EERKNS3_11basic_regexIS7_T2_EENSt15regex_constants15match_flag_typeE.exit70.i ] ; 2 uses
  switch i64 %i.jk, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i62
  %i.jp = load i8, ptr %i.jj, align 1, !tbaa !44
  store i8 %i.jp, ptr %i.jo, align 1, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.x:                                             ; preds = %._crit_edge.i.i.i62
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jo, ptr align 1 %i.jj, i64 %i.jk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.x, %bb.w, %._crit_edge.i.i.i62
  %i.jq = load i64, ptr %i.b, align 8, !tbaa !46  ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %i.jq, ptr %i.jr, align 8, !tbaa !47
  %i.js = load ptr, ptr %5, align 8, !tbaa !43
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jq
  store i8 0, ptr %i.jt, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br i1 %i.iu, label %bb.aj, label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %.b45.i = load i1, ptr @_ZGVZN7xgboost12_GLOBAL__N_113MakeDeviceOrdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE11gpu_patternB5cxx11, align 1
  br i1 %.b45.i, label %bb.ab, label %bb.z, !prof !535

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEEC2EPKcNSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN7xgboost12_GLOBAL__N_113MakeDeviceOrdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE11gpu_patternB5cxx11, ptr noundef nonnull @.str.39, i32 noundef 16)
          to label %bb.aa unwind label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.ju = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev, ptr nonnull @_ZZN7xgboost12_GLOBAL__N_113MakeDeviceOrdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE11gpu_patternB5cxx11, ptr nonnull @__dso_handle) #16 ; 0 uses
  store i1 true, ptr @_ZGVZN7xgboost12_GLOBAL__N_113MakeDeviceOrdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE11gpu_patternB5cxx11, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.jv = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN7xgboost12_GLOBAL__N_113MakeDeviceOrdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE11gpu_patternB5cxx11)
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.jw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.jw, ptr %6, align 8, !tbaa !45, !alias.scope !536
  %i.jx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 0, ptr %i.jx, align 8, !tbaa !47, !alias.scope !536
  store i8 0, ptr %i.jw, align 8, !tbaa !44, !alias.scope !536
  %i.jy = load ptr, ptr %5, align 8, !tbaa !43, !noalias !536 ; 2 uses
  %i.jz = load i64, ptr %i.jr, align 8, !tbaa !47, !noalias !536
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jz
  %i.kb = invoke ptr @_ZSt15__regex_replaceISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIPKcS6_EENS1_12regex_traitsIcEEcET_SF_T0_SG_RKNS1_11basic_regexIT2_T1_EEPKSI_mNSt15regex_constants15match_flag_typeE(ptr nonnull align 8 %6, ptr %i.jy, ptr %i.ka, ptr noundef nonnull align 8 dereferenceable(32) %i.jv, ptr noundef nonnull @.str.17, i64 noundef 4, i32 noundef 0)
          to label %_ZSt13regex_replaceINSt7__cxx1112regex_traitsIcEEcSt11char_traitsIcESaIcEENS0_12basic_stringIT0_T1_T2_EERKSA_RKNS0_11basic_regexIS7_T_EEPKS7_NSt15regex_constants15match_flag_typeE.exit.i unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.kc = landingpad { ptr, i32 }
          cleanup
  %i.kd = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !536 ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.jw
  br i1 %i.ke, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ac
  %i.kf = load i64, ptr %i.jw, align 8, !tbaa !44, !alias.scope !536
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kg) #33
  br label %.body.i

_ZSt13regex_replaceINSt7__cxx1112regex_traitsIcEEcSt11char_traitsIcESaIcEENS0_12basic_stringIT0_T1_T2_EERKSA_RKNS0_11basic_regexIS7_T_EEPKS7_NSt15regex_constants15match_flag_typeE.exit.i: ; preds = %bb.ab
  %i.kh = load ptr, ptr %5, align 8, !tbaa !43    ; 6 uses
  %i.ki = icmp eq ptr %i.kh, %i.ji
  %i.kj = load ptr, ptr %6, align 8, !tbaa !43    ; 5 uses
  %i.kk = icmp eq ptr %i.kj, %i.jw                ; 2 uses
  br i1 %i.ki, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt13regex_replaceINSt7__cxx1112regex_traitsIcEEcSt11char_traitsIcESaIcEENS0_12basic_stringIT0_T1_T2_EERKSA_RKNS0_11basic_regexIS7_T_EEPKS7_NSt15regex_constants15match_flag_typeE.exit.i
  br i1 %i.kk, label %bb.ad, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSt13regex_replaceINSt7__cxx1112regex_traitsIcEEcSt11char_traitsIcESaIcEENS0_12basic_stringIT0_T1_T2_EERKSA_RKNS0_11basic_regexIS7_T_EEPKS7_NSt15regex_constants15match_flag_typeE.exit.i
  br i1 %i.kk, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.kl = load i64, ptr %i.jx, align 8, !tbaa !47 ; 3 uses
  %i.km = icmp ult i64 %i.kl, 16
  call void @llvm.assume(i1 %i.km)
  switch i64 %i.kl, label %bb.af [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.kn = load i8, ptr %i.kj, align 1, !tbaa !44
  store i8 %i.kn, ptr %i.kh, align 1, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kh, ptr align 1 %i.kj, i64 %i.kl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.af, %bb.ae, %bb.ad
  %i.ko = load i64, ptr %i.jx, align 8, !tbaa !47 ; 2 uses
  store i64 %i.ko, ptr %i.jr, align 8, !tbaa !47
  %i.kp = load ptr, ptr %5, align 8, !tbaa !43
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.ko
  store i8 0, ptr %i.kq, align 1, !tbaa !44
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.kj, ptr %5, align 8, !tbaa !43
  %i.kr = load <2 x i64>, ptr %i.jx, align 8, !tbaa !44
  store <2 x i64> %i.kr, ptr %i.jr, align 8, !tbaa !44
  br label %bb.ah

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ks = load i64, ptr %i.ji, align 8, !tbaa !44
  store ptr %i.kj, ptr %5, align 8, !tbaa !43
  %i.kt = load <2 x i64>, ptr %i.jx, align 8, !tbaa !44
  store <2 x i64> %i.kt, ptr %i.jr, align 8, !tbaa !44
  %.not.i71.i = icmp eq ptr %i.kh, null
  br i1 %.not.i71.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.kh, ptr %6, align 8, !tbaa !43
  store i64 %i.ks, ptr %i.jw, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.jw, ptr %6, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.ah, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.ku = phi ptr [ %i.kh, %bb.ag ], [ %i.jw, %bb.ah ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.jx, align 8, !tbaa !47
  store i8 0, ptr %i.ku, align 1, !tbaa !44
  %i.kv = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.jw
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.kx = load i64, ptr %i.jw, align 8, !tbaa !44
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.ky) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.aj

bb.ai:                                            ; preds = %bb.z
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

.body.i:                                          ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.cv

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.la = load ptr, ptr %5, align 8, !tbaa !43    ; 17 uses
  %i.lb = load i64, ptr %i.jr, align 8, !tbaa !47 ; 7 uses
  %i.lc = getelementptr i8, ptr %i.la, i64 %i.lb  ; 9 uses
  %i.ld = ptrtoint ptr %i.lc to i64               ; 4 uses
  %i.le = ptrtoint ptr %i.la to i64               ; 2 uses
  %i.lf = ashr i64 %i.lb, 2                       ; 2 uses
  %i.lg = icmp sgt i64 %i.lf, 0
  br i1 %i.lg, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aj
  %i.lh = and i64 %i.lb, -4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.la, i64 %i.lh ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ao, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.lf, %.lr.ph.i.i.i.i ], [ %i.lu, %bb.ao ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.la, %.lr.ph.i.i.i.i ], [ %i.lt, %bb.ao ] ; 9 uses
  %i.li = load i8, ptr %.sroa.032.051.i.i.i.i, align 1, !tbaa !44
  %i.lj = icmp eq i8 %i.li, 58
  br i1 %i.lj, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 1
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !44
  %i.lm = icmp eq i8 %i.ll, 58
  br i1 %i.lm, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit263, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 2
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !44
  %i.lp = icmp eq i8 %i.lo, 58
  br i1 %i.lp, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit261, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 3
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !44
  %i.ls = icmp eq i8 %i.lr, 58
  br i1 %i.ls, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 4
  %i.lu = add nsw i64 %.052.i.i.i.i, -1
  %i.lv = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.lv, label %bb.ak, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !525

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.ao
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.aj
  %.pre-phi.i.i.i.i = phi i64 [ %.pre59.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.le, %bb.aj ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.la, %bb.aj ] ; 5 uses
  %i.lw = sub i64 %i.ld, %.pre-phi.i.i.i.i
  switch i64 %i.lw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i [
    i64 3, label %bb.ap
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i
  %i.lx = load i8, ptr %.sroa.032.0.lcssa.i.i.i.i, align 1, !tbaa !44
  %i.ly = icmp eq i8 %i.lx, 58
  br i1 %i.ly, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.aq, %._crit_edge.i.i.i.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.lz, %bb.aq ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ma = load i8, ptr %.sroa.032.1.i.i.i.i, align 1, !tbaa !44
  %i.mb = icmp eq i8 %i.ma, 58
  br i1 %i.mb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %bb.ar, %._crit_edge.i.i.i.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.mc, %bb.ar ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.md = load i8, ptr %.sroa.032.2.i.i.i.i, align 1, !tbaa !44
  %i.me = icmp eq i8 %i.md, 58
  %spec.select.i.i.i.i = select i1 %i.me, ptr %.sroa.032.2.i.i.i.i, ptr %i.lc
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.an
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 3
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit261: ; preds = %bb.am
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit263: ; preds = %bb.al
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 1
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i: ; preds = %bb.ak, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit261, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit263, %._crit_edge._crit_edge57.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.ap, %._crit_edge.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %i.lc, %._crit_edge.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.ap ], [ %i.mh, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit263 ], [ %i.mg, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit261 ], [ %i.mf, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i, %bb.ak ] ; 4 uses
  %i.mi = icmp eq i64 %i.lb, 8                    ; 2 uses
  br i1 %i.mi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.thread215.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73.i: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i
  %i.mj = load i64, ptr %i.la, align 1
  %i.mk = icmp ne i64 %i.mj, 8462372802406873459
  %i.ml = zext i1 %i.mk to i32
  %i.mm = icmp eq i32 %i.ml, 0
  br i1 %i.mm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73.i
  %i.mn = load i64, ptr %i.la, align 1
  %i.mo = icmp ne i64 %i.mn, 8462377200453384563
  %i.mp = zext i1 %i.mo to i32
  %20 = icmp eq i32 %i.mp, 0
  br i1 %20, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.thread215.i

bb.as:                                            ; preds = %.thread238.thread251.i, %.thread243.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.thread215.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i
  %.not.i.a = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.lc
  br i1 %.not.i.a, label %.thread218.i, label %bb.at

bb.at:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.thread215.i
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, i64 1 ; 4 uses
  %i.ms = ptrtoint ptr %i.mr to i64               ; 2 uses
  %i.mt = sub i64 %i.ld, %i.ms                    ; 2 uses
  %i.mu = ashr i64 %i.mt, 2                       ; 2 uses
  %i.mv = icmp sgt i64 %i.mu, 0
  br i1 %i.mv, label %.lr.ph.i.i.i87.i, label %._crit_edge.i.i.i76.i

.lr.ph.i.i.i87.i:                                 ; preds = %bb.at
  %i.mw = and i64 %i.mt, -4
  %scevgep.i.i.i88.i = getelementptr i8, ptr %i.mr, i64 %i.mw ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.ay, %.lr.ph.i.i.i87.i
  %.052.i.i.i89.i = phi i64 [ %i.mu, %.lr.ph.i.i.i87.i ], [ %i.nj, %bb.ay ] ; 2 uses
  %.sroa.032.051.i.i.i90.i = phi ptr [ %i.mr, %.lr.ph.i.i.i87.i ], [ %i.ni, %bb.ay ] ; 9 uses
  %i.mx = load i8, ptr %.sroa.032.051.i.i.i90.i, align 1, !tbaa !44
  %i.my = icmp eq i8 %i.mx, 58
  br i1 %i.my, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i90.i, i64 1
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !44
  %i.nb = icmp eq i8 %i.na, 58
  br i1 %i.nb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit271, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i90.i, i64 2
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !44
  %i.ne = icmp eq i8 %i.nd, 58
  br i1 %i.ne, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit269, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i90.i, i64 3
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !44
  %i.nh = icmp eq i8 %i.ng, 58
  br i1 %i.nh, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i90.i, i64 4
  %i.nj = add nsw i64 %.052.i.i.i89.i, -1
  %i.nk = icmp sgt i64 %.052.i.i.i89.i, 1
  br i1 %i.nk, label %bb.au, label %._crit_edge.loopexit.i.i.i91.i, !llvm.loop !525

._crit_edge.loopexit.i.i.i91.i:                   ; preds = %bb.ay
  %.pre59.i.i.i92.i = ptrtoint ptr %scevgep.i.i.i88.i to i64
  br label %._crit_edge.i.i.i76.i

._crit_edge.i.i.i76.i:                            ; preds = %._crit_edge.loopexit.i.i.i91.i, %bb.at
  %.pre-phi.i.i.i77.i = phi i64 [ %.pre59.i.i.i92.i, %._crit_edge.loopexit.i.i.i91.i ], [ %i.ms, %bb.at ]
  %.sroa.032.0.lcssa.i.i.i78.i = phi ptr [ %scevgep.i.i.i88.i, %._crit_edge.loopexit.i.i.i91.i ], [ %i.mr, %bb.at ] ; 5 uses
  %i.nl = sub i64 %i.ld, %.pre-phi.i.i.i77.i
  switch i64 %i.nl, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.thread.i [
    i64 3, label %bb.az
    i64 2, label %._crit_edge._crit_edge.i.i.i84.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i79.i
  ]

bb.az:                                            ; preds = %._crit_edge.i.i.i76.i
  %i.nm = load i8, ptr %.sroa.032.0.lcssa.i.i.i78.i, align 1, !tbaa !44
  %i.nn = icmp eq i8 %i.nm, 58
  br i1 %i.nn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i78.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i84.i

._crit_edge._crit_edge.i.i.i84.i:                 ; preds = %bb.ba, %._crit_edge.i.i.i76.i
  %.sroa.032.1.i.i.i86.i = phi ptr [ %i.no, %bb.ba ], [ %.sroa.032.0.lcssa.i.i.i78.i, %._crit_edge.i.i.i76.i ] ; 3 uses
  %i.np = load i8, ptr %.sroa.032.1.i.i.i86.i, align 1, !tbaa !44
  %i.nq = icmp eq i8 %i.np, 58
  br i1 %i.nq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge._crit_edge.i.i.i84.i
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i86.i, i64 1
  br label %._crit_edge._crit_edge57.i.i.i79.i

._crit_edge._crit_edge57.i.i.i79.i:               ; preds = %bb.bb, %._crit_edge.i.i.i76.i
  %.sroa.032.2.i.i.i81.i = phi ptr [ %i.nr, %bb.bb ], [ %.sroa.032.0.lcssa.i.i.i78.i, %._crit_edge.i.i.i76.i ] ; 2 uses
  %i.ns = load i8, ptr %.sroa.032.2.i.i.i81.i, align 1, !tbaa !44
  %i.nt = icmp eq i8 %i.ns, 58
  %spec.select.i.i.i82.i = select i1 %i.nt, ptr %.sroa.032.2.i.i.i81.i, ptr %i.lc
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit: ; preds = %bb.ax
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i90.i, i64 3
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit269: ; preds = %bb.aw
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i90.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit271: ; preds = %bb.av
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i90.i, i64 1
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i: ; preds = %bb.au, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit269, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit271, %._crit_edge._crit_edge57.i.i.i79.i, %._crit_edge._crit_edge.i.i.i84.i, %bb.az
  %.sroa.08.0.in.sroa.speculated.i.i.i83.i = phi ptr [ %.sroa.032.1.i.i.i86.i, %._crit_edge._crit_edge.i.i.i84.i ], [ %spec.select.i.i.i82.i, %._crit_edge._crit_edge57.i.i.i79.i ], [ %.sroa.032.0.lcssa.i.i.i78.i, %bb.az ], [ %i.nw, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit271 ], [ %i.nu, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit ], [ %i.nv, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit269 ], [ %.sroa.032.051.i.i.i90.i, %bb.au ] ; 2 uses
  %.not256.i = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i83.i, %i.lc
  %spec.select.i = select i1 %.not256.i, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, ptr %.sroa.08.0.in.sroa.speculated.i.i.i83.i
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.thread.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.thread.i: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i, %._crit_edge.i.i.i76.i
  %.sroa.0187.2.i = phi ptr [ %spec.select.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %._crit_edge.i.i.i76.i ]
  %21 = ptrtoint ptr %.sroa.0187.2.i to i64
  %22 = sub i64 %21, %i.le                        ; 2 uses
  %23 = add nsw i64 %22, 1                        ; 3 uses
  %24 = getelementptr inbounds nuw i8, ptr %i.la, i64 %23 ; 2 uses
  %25 = sub i64 %i.lb, %23                        ; 2 uses
  %i.nx = icmp eq i64 %i.lb, %23
  br i1 %i.nx, label %bb.bc, label %bb.be

.thread218.i:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.thread215.i
  switch i64 %i.lb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.thread222.i [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98.i
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.i
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98.i: ; preds = %.thread218.i
  %i.ny = load i16, ptr %i.la, align 1
  %i.nz = xor i16 %i.ny, 28771
  %i.oa = getelementptr i8, ptr %i.la, i64 2
  %i.ob = load i8, ptr %i.oa, align 1
  %i.oc = zext i8 %i.ob to i16
  %i.od = xor i16 %i.oc, 117
  %i.oe = or i16 %i.nz, %i.od
  %i.of = icmp ne i16 %i.oe, 0
  %i.og = zext i1 %i.of to i32
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %.thread238.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.i: ; preds = %.thread218.i
  %i.oi = load i32, ptr %i.la, align 1
  %i.oj = icmp ne i32 %i.oi, 1633973603
  %i.ok = zext i1 %i.oj to i32
  %i.ol = icmp eq i32 %i.ok, 0
  br i1 %i.ol, label %.thread238.thread251.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.i
  %i.om = load i32, ptr %i.la, align 1
  %i.on = icmp ne i32 %i.om, 1818458483
  %i.oo = zext i1 %i.on to i32
  %i.op = icmp eq i32 %i.oo, 0
  br i1 %i.op, label %.thread238.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.thread222.i: ; preds = %.thread218.i
  br i1 %i.mi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.thread222.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73.i
  %i.oq = load i64, ptr %i.la, align 1
  %i.or = icmp ne i64 %i.oq, 8462372802406873459
  %i.os = zext i1 %i.or to i32
  %i.ot = icmp eq i32 %i.os, 0
  br i1 %i.ot, label %.thread238.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.i
  %i.ou = load i64, ptr %i.la, align 1
  %i.ov = icmp ne i64 %i.ou, 8462377200453384563
  %i.ow = zext i1 %i.ov to i32
  %i.ox = icmp eq i32 %i.ow, 0
  br i1 %i.ox, label %.thread238.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.thread222.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  invoke fastcc void @"_ZZN7xgboost12_GLOBAL__N_113MakeDeviceOrdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEv"(ptr nonnull %4, ptr nonnull readonly align 8 dereferenceable(32) %i.hg)
          to label %.thread243.i unwind label %bb.as

bb.bc:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.thread.i
  invoke fastcc void @"_ZZN7xgboost12_GLOBAL__N_113MakeDeviceOrdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEv"(ptr nonnull %4, ptr nonnull readonly align 8 dereferenceable(32) %i.hg)
          to label %.thread224.i unwind label %bb.bd

.thread224.i:                                     ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  br label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i

bb.bd:                                            ; preds = %bb.bc
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.be:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.oz = load i8, ptr %24, align 1, !tbaa !44
  %i.pa = icmp eq i8 %i.oz, 45                    ; 3 uses
  %spec.select.i.i = zext i1 %i.pa to i64         ; 3 uses
  %.not.i105.i = icmp ugt i64 %25, %spec.select.i.i
  br i1 %.not.i105.i, label %bb.bf, label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i

bb.bf:                                            ; preds = %bb.be
  %i.pb = getelementptr inbounds nuw i8, ptr %24, i64 %spec.select.i.i ; 5 uses
  %gepdiff.i.i = sub nuw nsw i64 %25, %spec.select.i.i ; 2 uses
  %i.pc = ashr i64 %gepdiff.i.i, 2                ; 2 uses
  %i.pd = icmp sgt i64 %i.pc, 0
  br i1 %i.pd, label %.lr.ph.preheader.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.bf
  %i.pe = and i64 %gepdiff.i.i, -4
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.pb, i64 %i.pe
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bj, %.lr.ph.preheader.i.i.i.i.i.i
  %.050.i.i.i.i.i.i = phi i64 [ %i.pr, %bb.bj ], [ %i.pc, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.02949.i.i.i.i.i.i = phi ptr [ %i.pq, %bb.bj ], [ %i.pb, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i = load i8, ptr %.02949.i.i.i.i.i.i, align 1, !tbaa !44
  %i.pf = sext i8 %.029.val32.i.i.i.i.i.i to i32
  %i.pg = add nsw i32 %i.pf, -58
  %isdigit.i.i.i.i.i.i.i.i = icmp ult i32 %i.pg, -10
  br i1 %isdigit.i.i.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i", label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ph = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 1
  %.val31.i.i.i.i.i.i = load i8, ptr %i.ph, align 1, !tbaa !44
  %i.pi = sext i8 %.val31.i.i.i.i.i.i to i32
  %i.pj = add nsw i32 %i.pi, -58
  %isdigit.i.i33.i.i.i.i.i.i = icmp ult i32 %i.pj, -10
  br i1 %isdigit.i.i33.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit", label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.pk = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 2
  %.val30.i.i.i.i.i.i = load i8, ptr %i.pk, align 1, !tbaa !44
  %i.pl = sext i8 %.val30.i.i.i.i.i.i to i32
  %i.pm = add nsw i32 %i.pl, -58
  %isdigit.i.i34.i.i.i.i.i.i = icmp ult i32 %i.pm, -10
  br i1 %isdigit.i.i34.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit277", label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.pn = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 3
  %.val.i.i.i.i.i.i = load i8, ptr %i.pn, align 1, !tbaa !44
  %i.po = sext i8 %.val.i.i.i.i.i.i to i32
  %i.pp = add nsw i32 %i.po, -58
  %isdigit.i.i35.i.i.i.i.i.i = icmp ult i32 %i.pp, -10
  br i1 %isdigit.i.i35.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit279", label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.pq = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 4
  %i.pr = add nsw i64 %.050.i.i.i.i.i.i, -1
  %i.ps = icmp sgt i64 %.050.i.i.i.i.i.i, 1
  br i1 %i.ps, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !526

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.bj, %bb.bf
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %i.pb, %bb.bf ], [ %scevgep.i.i.i.i.i.i, %bb.bj ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i to i64
  %i.pt = sub i64 %i.ld, %.pre-phi.i.i.i.i.i.i
  switch i64 %i.pt, label %.lr.ph.i41.i.i.i.preheader [
    i64 3, label %bb.bk
    i64 2, label %bb.bm
    i64 1, label %bb.bo
  ]

bb.bk:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i, align 1, !tbaa !44
  %i.pu = sext i8 %.029.val.i.i.i.i.i.i to i32
  %i.pv = add nsw i32 %i.pu, -58
  %isdigit.i.i36.i.i.i.i.i.i = icmp ult i32 %i.pv, -10
  br i1 %isdigit.i.i36.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i", label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pw = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.pw, %bb.bl ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i = load i8, ptr %.1.i.i.i.i.i.i, align 1, !tbaa !44
  %i.px = sext i8 %.1.val.i.i.i.i.i.i to i32
  %i.py = add nsw i32 %i.px, -58
  %isdigit.i.i37.i.i.i.i.i.i = icmp ult i32 %i.py, -10
  br i1 %isdigit.i.i37.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i", label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pz = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.pz, %bb.bn ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i = load i8, ptr %.2.i.i.i.i.i.i, align 1, !tbaa !44
  %i.qa = sext i8 %.2.val.i.i.i.i.i.i to i32
  %i.qb = add nsw i32 %i.qa, -58
  %isdigit.i.i38.i.i.i.i.i.i = icmp ult i32 %i.qb, -10
  br i1 %isdigit.i.i38.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i", label %.lr.ph.i41.i.i.i.preheader

"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit": ; preds = %bb.bg
  %i.qc = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 1
  br label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i"

"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit277": ; preds = %bb.bh
  %i.qd = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 2
  br label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i"

"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit279": ; preds = %bb.bi
  %i.qe = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 3
  br label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i"

"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit", %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit277", %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit279", %bb.bo, %bb.bm, %bb.bk
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.bm ], [ %.029.lcssa.i.i.i.i.i.i, %bb.bk ], [ %.2.i.i.i.i.i.i, %bb.bo ], [ %i.qe, %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit279" ], [ %i.qd, %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit277" ], [ %i.qc, %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit" ], [ %.02949.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.qf = icmp eq ptr %i.lc, %.028.i.i.i.i.i.i
  br i1 %i.qf, label %.lr.ph.i41.i.i.i.preheader, label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i

.lr.ph.i41.i.i.i.preheader:                       ; preds = %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i", %bb.bo, %._crit_edge.i.i.i.i.i.i
  br label %.lr.ph.i41.i.i.i

.lr.ph.i41.i.i.i:                                 ; preds = %.lr.ph.i41.i.i.i.preheader, %.critedge.i42.i.i.i
  %.471.i.i.i = phi ptr [ %i.qt, %.critedge.i42.i.i.i ], [ %i.pb, %.lr.ph.i41.i.i.i.preheader ] ; 3 uses
  %.9.i.i.i = phi i32 [ %.10.i.i.i, %.critedge.i42.i.i.i ], [ 0, %.lr.ph.i41.i.i.i.preheader ] ; 3 uses
  %.02238.i.i.i.i = phi i32 [ %i.qj, %.critedge.i42.i.i.i ], [ 32, %.lr.ph.i41.i.i.i.preheader ]
  %i.qg = load i8, ptr %.471.i.i.i, align 1, !tbaa !44
  %i.qh = add i8 %i.qg, -48                       ; 2 uses
  %i.qi = zext i8 %i.qh to i32                    ; 2 uses
  %.not31.i.i.i.i = icmp ult i8 %i.qh, 10
  br i1 %.not31.i.i.i.i, label %bb.bp, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i

bb.bp:                                            ; preds = %.lr.ph.i41.i.i.i
  %i.qj = add i32 %.02238.i.i.i.i, -4             ; 2 uses
  %i.qk = icmp sgt i32 %i.qj, -1
  br i1 %i.qk, label %bb.bq, label %bb.br, !prof !106

bb.bq:                                            ; preds = %bb.bp
  %i.ql = mul i32 %.9.i.i.i, 10
  %i.qm = add i32 %i.ql, %i.qi
  br label %.critedge.i42.i.i.i

bb.br:                                            ; preds = %bb.bp
  %i.qn = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.9.i.i.i, i32 10) ; 2 uses
  %i.qo = extractvalue { i32, i1 } %i.qn, 1
  br i1 %i.qo, label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i, label %.split.i.i.i.i, !prof !537

.split.i.i.i.i:                                   ; preds = %bb.br
  %i.qp = extractvalue { i32, i1 } %i.qn, 0
  %i.qq = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.qp, i32 %i.qi) ; 2 uses
  %i.qr = extractvalue { i32, i1 } %i.qq, 1
  %i.qs = extractvalue { i32, i1 } %i.qq, 0
  br i1 %i.qr, label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i, label %.critedge.i42.i.i.i, !prof !66

.critedge.i42.i.i.i:                              ; preds = %.split.i.i.i.i, %bb.bq
  %.10.i.i.i = phi i32 [ %i.qm, %bb.bq ], [ %i.qs, %.split.i.i.i.i ] ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.471.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.qt, %i.lc
  br i1 %.not.i.i.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i, label %.lr.ph.i41.i.i.i, !llvm.loop !527

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i: ; preds = %.critedge.i42.i.i.i, %.lr.ph.i41.i.i.i
  %.168.i.i.i = phi ptr [ %.471.i.i.i, %.lr.ph.i41.i.i.i ], [ %i.lc, %.critedge.i42.i.i.i ]
  %.0.i.i.i = phi i32 [ %.9.i.i.i, %.lr.ph.i41.i.i.i ], [ %.10.i.i.i, %.critedge.i42.i.i.i ] ; 3 uses
  %.not23.i.i = icmp eq ptr %.168.i.i.i, %i.pb
  %i.qu = select i1 %i.pa, i32 -2147483648, i32 2147483647
  %i.qv = icmp ugt i32 %.0.i.i.i, %i.qu
  %or.cond.i.i = select i1 %.not23.i.i, i1 true, i1 %i.qv, !prof !538
  br i1 %or.cond.i.i, label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i, label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.i, !prof !538

_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i: ; preds = %.split.i.i.i.i, %bb.br, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i, %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i", %bb.be, %.thread224.i
  %.sroa.2.1.i.ph.i = phi i64 [ 0, %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i" ], [ 0, %.thread224.i ], [ 4294967295, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i ], [ 0, %bb.be ], [ 4294967295, %bb.br ], [ 4294967295, %.split.i.i.i.i ]
  store i64 %.sroa.2.1.i.ph.i, ptr %7, align 8
  invoke fastcc void @"_ZZN7xgboost12_GLOBAL__N_113MakeDeviceOrdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEv"(ptr nonnull %4, ptr nonnull readonly align 8 dereferenceable(32) %i.hg)
          to label %bb.bt unwind label %bb.bs

_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.i: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i
  %i.qw = sub i32 0, %.0.i.i.i
  %i.qx = select i1 %i.pa, i32 %i.qw, i32 %.0.i.i.i ; 2 uses
  %i.qy = zext i32 %i.qx to i64
  %i.qz = or disjoint i64 %i.qy, 4294967296
  store i64 %i.qz, ptr %7, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %7, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  br label %_ZNRSt8optionalIiE5valueEv.exit.i

bb.bs:                                            ; preds = %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.bt:                                            ; preds = %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i
  %i.rc = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %.pre295.i = load i8, ptr %i.rc, align 4, !tbaa !540, !range !100
  %i.rd = trunc nuw i8 %.pre295.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  br i1 %i.rd, label %._ZNRSt8optionalIiE5valueEv.exit.i_crit_edge, label %bb.bu

._ZNRSt8optionalIiE5valueEv.exit.i_crit_edge:     ; preds = %bb.bt
  %.pre196 = load i32, ptr %7, align 8, !tbaa !65, !noalias !541
  br label %_ZNRSt8optionalIiE5valueEv.exit.i

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZSt27__throw_bad_optional_accessv() #34
          to label %.noexc106.i unwind label %bb.bx

.noexc106.i:                                      ; preds = %bb.bu
  unreachable

_ZNRSt8optionalIiE5valueEv.exit.i:                ; preds = %._ZNRSt8optionalIiE5valueEv.exit.i_crit_edge, %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.i
  %i.re = phi i32 [ %i.qx, %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.i ], [ %.pre196, %._ZNRSt8optionalIiE5valueEv.exit.i_crit_edge ]
  %i.rf = phi ptr [ %i.ra, %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.i ], [ %i.rc, %._ZNRSt8optionalIiE5valueEv.exit.i_crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i16 32767, ptr %i.c, align 2, !tbaa !107
  %.not.i.i = icmp sgt i32 %i.re, 32767
  br i1 %.not.i.i, label %bb.bv, label %_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i

_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i: ; preds = %_ZNRSt8optionalIiE5valueEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

bb.bv:                                            ; preds = %_ZNRSt8optionalIiE5valueEv.exit.i
  invoke void @_ZN4dmlc14LogCheckFormatIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 2 dereferenceable(2) %i.c)
          to label %_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i unwind label %bb.by

_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i: ; preds = %bb.bv
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %.not257.i = icmp eq ptr %.pr.i, null
  br i1 %.not257.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.bw

bb.bw:                                            ; preds = %_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.rg = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc107.i unwind label %bb.bz

.noexc107.i:                                      ; preds = %bb.bw
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.rg, ptr noundef nonnull @.str.4, i32 noundef 198)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i unwind label %bb.bz

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i:          ; preds = %.noexc107.i
  %i.rh = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.ca ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.ri = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rh, ptr noundef nonnull @.str.6, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  %i.rj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rh, ptr noundef nonnull @.str.40, i64 noundef 61)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.i unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.rk = load ptr, ptr %8, align 8, !tbaa !109   ; 2 uses
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !43
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !47
  %i.ro = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rh, ptr noundef %i.rl, i64 noundef %i.rn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.ca ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.i
  %i.rp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ro, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115.i unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.rq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ro, ptr noundef nonnull @.str.41, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.i unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.cc unwind label %bb.bz

bb.bx:                                            ; preds = %bb.bu
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.by:                                            ; preds = %bb.bv
  %i.rs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.cf

bb.bz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.i, %.noexc107.i, %bb.bw
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.ru = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.cb unwind label %bb.cw

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pn.i = phi { ptr, i32 } [ %i.rt, %bb.bz ], [ %i.ru, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #16
  br label %bb.cf

bb.cc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %.pr225.i = load ptr, ptr %8, align 8, !tbaa !109 ; 4 uses
  %.not.i118.i = icmp eq ptr %.pr225.i, null
  br i1 %.not.i118.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.rv = load ptr, ptr %.pr225.i, align 8, !tbaa !43 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.pr225.i, i64 16 ; 2 uses
  %i.rx = icmp eq ptr %i.rv, %i.rw
  br i1 %i.rx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.cd
  %i.ry = load i64, ptr %i.rw, align 8, !tbaa !44
  %i.rz = add i64 %i.ry, 1
  call void @_ZdlPvm(ptr noundef %i.rv, i64 noundef %i.rz) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr225.i, i64 noundef 32) #33
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.cc, %_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i, %_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  switch i64 %22, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i._ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i_crit_edge [
    i64 4, label %_ZN7xgboosteqENS_10StringViewES0_.exit.i
    i64 8, label %_ZN7xgboosteqENS_10StringViewES0_.exit127.i
  ]

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i._ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i_crit_edge: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  %.pre197 = load i8, ptr %i.rf, align 4, !tbaa !540, !range !100
  br label %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i

_ZN7xgboosteqENS_10StringViewES0_.exit.i:         ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  %i.sa = load i32, ptr %i.la, align 1
  %i.sb = icmp ne i32 %i.sa, 1818458483
  %i.sc = zext i1 %i.sb to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.sc, 0
  %.pre199 = load i8, ptr %i.rf, align 4, !tbaa !540, !range !100 ; 2 uses
  br i1 %.not9.i.i.i.i.i.i, label %_ZN7xgboosteqENS_10StringViewES0_.exit.thread.i, label %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i

_ZN7xgboosteqENS_10StringViewES0_.exit.thread.i:  ; preds = %_ZN7xgboosteqENS_10StringViewES0_.exit.i
  %i.sd = trunc nuw i8 %.pre199 to i1
  br i1 %i.sd, label %bb.co, label %bb.ce

bb.ce:                                            ; preds = %_ZN7xgboosteqENS_10StringViewES0_.exit.thread.i
  invoke void @_ZSt27__throw_bad_optional_accessv() #34
          to label %.noexc120.i unwind label %bb.cg

.noexc120.i:                                      ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.cb, %bb.by, %bb.bx
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.cb ], [ %i.rs, %bb.by ], [ %i.rr, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.cn

bb.cg:                                            ; preds = %bb.ce
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

_ZN7xgboosteqENS_10StringViewES0_.exit127.i:      ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  %i.sf = load i64, ptr %i.la, align 1
  %i.sg = icmp ne i64 %i.sf, 8462372802406873459
  %i.sh = zext i1 %i.sg to i32
  %.not9.i.i.i.i.i126.i = icmp eq i32 %i.sh, 0
  br i1 %.not9.i.i.i.i.i126.i, label %_ZN7xgboosteqENS_10StringViewES0_.exit127.thread.i, label %_ZN7xgboosteqENS_10StringViewES0_.exit138.i

_ZN7xgboosteqENS_10StringViewES0_.exit127.thread.i: ; preds = %_ZN7xgboosteqENS_10StringViewES0_.exit127.i
  %i.si = load i8, ptr %i.rf, align 4, !tbaa !540, !range !100, !noundef !101
  %i.sj = trunc nuw i8 %i.si to i1
  br i1 %i.sj, label %bb.co, label %bb.ch

bb.ch:                                            ; preds = %_ZN7xgboosteqENS_10StringViewES0_.exit127.thread.i
  invoke void @_ZSt27__throw_bad_optional_accessv() #34
          to label %.noexc128.i unwind label %bb.ci

.noexc128.i:                                      ; preds = %bb.ch
  unreachable

bb.ci:                                            ; preds = %bb.ch
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

_ZN7xgboosteqENS_10StringViewES0_.exit138.i:      ; preds = %_ZN7xgboosteqENS_10StringViewES0_.exit127.i
  %i.sl = load i64, ptr %i.la, align 1
  %i.sm = icmp ne i64 %i.sl, 8462377200453384563
  %i.sn = zext i1 %i.sm to i32
  %.not9.i.i.i.i.i137.i = icmp eq i32 %i.sn, 0
  %.pre198 = load i8, ptr %i.rf, align 4, !tbaa !540, !range !100 ; 2 uses
  br i1 %.not9.i.i.i.i.i137.i, label %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread.i, label %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i

_ZN7xgboosteqENS_10StringViewES0_.exit138.thread.i: ; preds = %_ZN7xgboosteqENS_10StringViewES0_.exit138.i
  %i.so = trunc nuw i8 %.pre198 to i1
  br i1 %i.so, label %bb.co, label %bb.cj

bb.cj:                                            ; preds = %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread.i
  invoke void @_ZSt27__throw_bad_optional_accessv() #34
          to label %.noexc139.i unwind label %bb.ck

.noexc139.i:                                      ; preds = %bb.cj
  unreachable

bb.ck:                                            ; preds = %bb.cj
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

_ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i._ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i_crit_edge, %_ZN7xgboosteqENS_10StringViewES0_.exit138.i, %_ZN7xgboosteqENS_10StringViewES0_.exit.i
  %i.sq = phi i8 [ %.pre197, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i._ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i_crit_edge ], [ %.pre198, %_ZN7xgboosteqENS_10StringViewES0_.exit138.i ], [ %.pre199, %_ZN7xgboosteqENS_10StringViewES0_.exit.i ]
  %i.sr = trunc nuw i8 %i.sq to i1
  br i1 %i.sr, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i
  invoke void @_ZSt27__throw_bad_optional_accessv() #34
          to label %.noexc144.i unwind label %bb.cm

.noexc144.i:                                      ; preds = %bb.cl
  unreachable

bb.cm:                                            ; preds = %bb.cl
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.ck, %bb.ci, %bb.cg, %bb.cf, %bb.bs
  %.pn48.i = phi { ptr, i32 } [ %i.se, %bb.cg ], [ %i.sk, %bb.ci ], [ %i.sp, %bb.ck ], [ %i.ss, %bb.cm ], [ %i.rb, %bb.bs ], [ %.pn.pn.i, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.cv

bb.co:                                            ; preds = %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i, %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread.i, %_ZN7xgboosteqENS_10StringViewES0_.exit127.thread.i, %_ZN7xgboosteqENS_10StringViewES0_.exit.thread.i
  %.sroa.0191.0.i = phi i16 [ 4, %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread.i ], [ 2, %_ZN7xgboosteqENS_10StringViewES0_.exit.thread.i ], [ 3, %_ZN7xgboosteqENS_10StringViewES0_.exit127.thread.i ], [ 1, %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i ] ; 2 uses
  %.sroa.16.0.in.i = load i32, ptr %7, align 8, !tbaa !65 ; 3 uses
  %.sroa.16.0.i = trunc i32 %.sroa.16.0.in.i to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.st = icmp slt i16 %.sroa.16.0.i, -1
  br i1 %i.st, label %.thread243.i, label %.thread238.i

.thread243.i:                                     ; preds = %bb.co, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118
  %.sroa.16.1247.i = phi i32 [ %.sroa.16.0.in.i, %bb.co ], [ 65534, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118 ]
  %.sroa.0191.1246.i = phi i16 [ %.sroa.0191.0.i, %bb.co ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118 ]
  invoke fastcc void @"_ZZN7xgboost12_GLOBAL__N_113MakeDeviceOrdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEv"(ptr nonnull %4, ptr nonnull readonly align 8 dereferenceable(32) %i.hg)
          to label %.thread238.i unwind label %bb.as

.thread238.i:                                     ; preds = %.thread243.i, %bb.co
  %.sroa.16.1242.i = phi i32 [ %.sroa.16.0.in.i, %bb.co ], [ %.sroa.16.1247.i, %.thread243.i ]
  %.sroa.0191.1241.i = phi i16 [ %.sroa.0191.0.i, %bb.co ], [ %.sroa.0191.1246.i, %.thread243.i ] ; 2 uses
  %i.su = icmp eq i16 %.sroa.0191.1241.i, 1
  br i1 %i.su, label %.thread238.thread251.i, label %.thread238.thread.i

.thread238.thread251.i:                           ; preds = %.thread238.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.i
  %i.sv = invoke noundef zeroext i1 @_ZN7xgboost13ConsoleLogger9ShouldLogENS0_12LogVerbosityE(i32 noundef 1)
          to label %bb.cp unwind label %bb.as

bb.cp:                                            ; preds = %.thread238.thread251.i
  br i1 %i.sv, label %.noexc.i150.i, label %.thread238.thread.i

.noexc.i150.i:                                    ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.sw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.sw, ptr %11, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 46, ptr %i.a, align 8, !tbaa !46
  %i.sx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc151.i unwind label %bb.cr ; 3 uses

.noexc151.i:                                      ; preds = %.noexc.i150.i
  store ptr %i.sx, ptr %11, align 8, !tbaa !43
  %i.sy = load i64, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  store i64 %i.sy, ptr %i.sw, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.sx, ptr noundef nonnull align 1 dereferenceable(46) @.str.4, i64 46, i1 false)
  %i.sz = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.sy, ptr %i.sz, align 8, !tbaa !47
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 %i.sy
  store i8 0, ptr %i.ta, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  invoke void @_ZN7xgboost13ConsoleLoggerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_12LogVerbosityE(ptr noundef nonnull align 8 dereferenceable(380) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 218, i32 noundef 1)
          to label %bb.cq unwind label %bb.cs

bb.cq:                                            ; preds = %.noexc151.i
  %i.tb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.42, i64 noundef 86)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153.i unwind label %bb.ct ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153.i: ; preds = %bb.cq
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %10) #16
  %i.tc = load ptr, ptr %11, align 8, !tbaa !43   ; 2 uses
  %i.td = icmp eq ptr %i.tc, %i.sw
  br i1 %i.td, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153.i
  %i.te = load i64, ptr %i.sw, align 8, !tbaa !44
  %i.tf = add i64 %i.te, 1
  call void @_ZdlPvm(ptr noundef %i.tc, i64 noundef %i.tf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %.thread238.thread.i

bb.cr:                                            ; preds = %.noexc.i150.i
  %i.tg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i

bb.cs:                                            ; preds = %.noexc151.i
  %i.th = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cq
  %i.ti = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %10) #16
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn52.i = phi { ptr, i32 } [ %i.ti, %bb.ct ], [ %i.th, %bb.cs ] ; 2 uses
  %i.tj = load ptr, ptr %11, align 8, !tbaa !43   ; 2 uses
  %i.tk = icmp eq ptr %i.tj, %i.sw
  br i1 %i.tk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.i

end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_:bb.a
  %i.aa = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !47, !alias.scope !1109, !noalias !1110
  store ptr %i.t, ptr %.0911.i.i.i, align 8, !tbaa !43, !alias.scope !1110, !noalias !1109
  store i64 0, ptr %i.ab, align 8, !tbaa !47, !alias.scope !1110, !noalias !1109
  store i8 0, ptr %i.t, align 8, !tbaa !44, !alias.scope !1110, !noalias !1109
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !45, !alias.scope !1109, !noalias !1110
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !43, !alias.scope !1110, !noalias !1109 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !47, !alias.scope !1110, !noalias !1109 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !1111
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !43, !alias.scope !1109, !noalias !1110
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !44, !alias.scope !1110, !noalias !1109
  store i64 %i.an, ptr %i.af, align 8, !tbaa !44, !alias.scope !1109, !noalias !1110
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !47, !alias.scope !1110, !noalias !1109
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i, %bb.d
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !47, !alias.scope !1109, !noalias !1110
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !43, !alias.scope !1110, !noalias !1109
  store i64 0, ptr %i.ap, align 8, !tbaa !47, !alias.scope !1110, !noalias !1109
  store i8 0, ptr %i.ah, align 8, !tbaa !44, !alias.scope !1110, !noalias !1109
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !21

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRKS7_EEEvRS8_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRKS7_EEEvRS8_PT_DpOT0_.exit ], [ %i.as, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit40, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i37
  %.012.i.i.i28 = phi ptr [ %i.bv, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i37 ], [ %i.at, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 8 uses
  %.0911.i.i.i29 = phi ptr [ %i.bu, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i37 ], [ %1, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !45, !alias.scope !1112, !noalias !1113
  %i.av = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !43, !alias.scope !1113, !noalias !1112 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.e:                                             ; preds = %.lr.ph.i.i.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !47, !alias.scope !1113, !noalias !1112 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !1114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.av, ptr %.012.i.i.i28, align 8, !tbaa !43, !alias.scope !1112, !noalias !1113
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !44, !alias.scope !1113, !noalias !1112
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !44, !alias.scope !1112, !noalias !1113
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !47, !alias.scope !1113, !noalias !1112
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.e
  %i.bd = phi i64 [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ], [ %i.az, %bb.e ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !47, !alias.scope !1112, !noalias !1113
  store ptr %i.aw, ptr %.0911.i.i.i29, align 8, !tbaa !43, !alias.scope !1113, !noalias !1112
  store i64 0, ptr %i.be, align 8, !tbaa !47, !alias.scope !1113, !noalias !1112
  store i8 0, ptr %i.aw, align 8, !tbaa !44, !alias.scope !1113, !noalias !1112
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48 ; 3 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !45, !alias.scope !1112, !noalias !1113
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !43, !alias.scope !1113, !noalias !1112 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48 ; 5 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i34

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !47, !alias.scope !1113, !noalias !1112 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = add nuw nsw i64 %i.bn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bi, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.bp, i1 false), !alias.scope !1114
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !43, !alias.scope !1112, !noalias !1113
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !44, !alias.scope !1113, !noalias !1112
  store i64 %i.bq, ptr %i.bi, align 8, !tbaa !44, !alias.scope !1112, !noalias !1113
  %.phi.trans.insert5.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %.pre6.i.i.i.i36 = load i64, ptr %.phi.trans.insert5.i.i.i.i35, align 8, !tbaa !47, !alias.scope !1113, !noalias !1112
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i37

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i34, %bb.f
  %i.br = phi i64 [ %i.bn, %bb.f ], [ %.pre6.i.i.i.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i34 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !47, !alias.scope !1112, !noalias !1113
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !43, !alias.scope !1113, !noalias !1112
  store i64 0, ptr %i.bs, align 8, !tbaa !47, !alias.scope !1113, !noalias !1112
  store i8 0, ptr %i.bk, align 8, !tbaa !44, !alias.scope !1113, !noalias !1112
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 64 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 64 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.bu, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit40, label %.lr.ph.i.i.i27, !llvm.loop !21

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit40: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i37, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i39 = phi ptr [ %i.at, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.bv, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i37 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i41 = icmp eq ptr %i.c, null
  br i1 %.not.i41, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !99
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bz) #33
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit40, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !93
  store ptr %.0.lcssa.i.i.i39, ptr %i.a, align 8, !tbaa !92
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !99
  ret void

bb.h:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  %i.ce = tail call ptr @__cxa_begin_catch(ptr %i.cd) #16 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #33
  invoke void @__cxa_rethrow() #34
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.cb

bb.k:                                             ; preds = %bb.h
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  tail call void @__clang_call_terminate(ptr %i.cg) #35
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK4dmlc9parameter12ParamManager7RunInitIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESt6vectorISC_SaISC_EEEEEEvPvT_SK_PSH_NS0_15ParamInitOptionE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, ptr %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::set", align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i32 0, ptr %i.a, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !56
  invoke void @_ZNK4dmlc9parameter12ParamManager9RunUpdateIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESt6vectorISC_SaISC_EEEEEEvPvT_SK_NS0_15ParamInitOptionEPSH_PSt3setIPNS0_16FieldAccessEntryESt4lessISP_ESaISP_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, ptr %3, i32 noundef %5, ptr noundef %4, ptr noundef nonnull %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.not45 = icmp eq ptr %i.g, %i.h
  br i1 %.not45, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre53 = load ptr, ptr %i.f, align 8, !tbaa !54
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %7 = phi ptr [ %.pre53, %._crit_edge.loopexit ], [ %i.g, %bb.b ] ; 2 uses
  %.not4047 = icmp eq ptr %7, %i.h
  br i1 %.not4047, label %._crit_edge51, label %.lr.ph50

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.sroa.035.046 = phi ptr [ %i.v, %bb.e ], [ %i.g, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.035.046, i64 64
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.k, null
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !127 ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.k, %.lr.ph ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !127
  %i.n = icmp ult ptr %i.m, %.pre                 ; 3 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !348 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1115

_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.a
  br i1 %i.o, label %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread, label %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit

_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit: ; preds = %_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.p = load ptr, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !127
  %i.q = icmp ult ptr %.pre, %i.p
  br i1 %i.q, label %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread, label %bb.e

_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i, %.lr.ph, %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit
  %i.r = load ptr, ptr %.pre, align 8, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(128) %.pre, ptr noundef %1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.e:                                             ; preds = %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread, %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit
  %i.v = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.035.046) #37 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.h
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge51:                                    ; preds = %bb.h, %._crit_edge
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !53
  invoke void @_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.w)
          to label %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge51
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #35
  unreachable

_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EED2Ev.exit: ; preds = %._crit_edge51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret void

.lr.ph50:                                         ; preds = %._crit_edge, %bb.h
  %.sroa.028.048 = phi ptr [ %i.ak, %bb.h ], [ %7, %._crit_edge ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.028.048, i64 64
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !53  ; 2 uses
  %.not10.i.i.i18 = icmp eq ptr %i.aa, null
  %.pre54 = load ptr, ptr %i.z, align 8, !tbaa !127 ; 4 uses
  br i1 %.not10.i.i.i18, label %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread, label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %.lr.ph50, %.lr.ph.i.i.i19
  %.012.i.i.i20 = phi ptr [ %.1.i.i.i25, %.lr.ph.i.i.i19 ], [ %i.aa, %.lr.ph50 ] ; 4 uses
  %.0811.i.i.i21 = phi ptr [ %.19.i.i.i22, %.lr.ph.i.i.i19 ], [ %i.a, %.lr.ph50 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !127
  %i.ad = icmp ult ptr %i.ac, %.pre54             ; 3 uses
  %.19.i.i.i22 = select i1 %i.ad, ptr %.0811.i.i.i21, ptr %.012.i.i.i20 ; 2 uses
  %.1.in.v.i.i.i23 = select i1 %i.ad, i64 24, i64 16
  %.1.in.i.i.i24 = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 %.1.in.v.i.i.i23
  %.1.i.i.i25 = load ptr, ptr %.1.in.i.i.i24, align 8, !tbaa !348 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %.1.i.i.i25, null
  br i1 %.not.i.i.i26, label %_ZNKSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i, label %.lr.ph.i.i.i19, !llvm.loop !1116

_ZNKSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i19
  %i.ae = icmp eq ptr %.19.i.i.i22, %i.a
  br i1 %i.ae, label %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread, label %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit

_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit: ; preds = %_ZNKSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i
  %.19.i.i.i22.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ad, ptr %.0811.i.i.i21, ptr %.012.i.i.i20
  %.19.i.i.i22.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i22.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.af = load ptr, ptr %.19.i.i.i22.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !127
  %.not41 = icmp ult ptr %.pre54, %i.af
  br i1 %.not41, label %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread, label %bb.h

_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i, %.lr.ph50, %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit
  %i.ag = load ptr, ptr %.pre54, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(128) %.pre54, ptr noundef %1)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit, %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread
  %i.ak = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.028.048) #37 ; 2 uses
  %.not40 = icmp eq ptr %i.ak, %i.h
  br i1 %.not40, label %._crit_edge51, label %.lr.ph50, !llvm.loop !1117

bb.i:                                             ; preds = %bb.d, %bb.g, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.aj, %bb.g ], [ %i.u, %bb.d ]
  call void @_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  invoke void @_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #35
  unreachable

_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128
  tail call void @_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #33
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1118

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatIssEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.212, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load i16, ptr %1, align 2, !tbaa !107
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %3, i16 noundef signext %i.b)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.213, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %bb.b
  %i.e = load i16, ptr %2, align 2, !tbaa !107
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i16 noundef signext %i.e)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.29, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36
          to label %bb.d unwind label %bb.h       ; 8 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !45, !alias.scope !1125
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !47, !alias.scope !1125
  store i8 0, ptr %i.i, align 8, !tbaa !44, !alias.scope !1125
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !95, !noalias !1125 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !1125 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !96, !noalias !1125 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !43, !alias.scope !1125 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.y = load i64, ptr %i.i, align 8, !tbaa !44, !alias.scope !1125
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #33
  br label %.body

bb.g:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  store ptr %i.h, ptr %0, align 8, !tbaa !109
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !64
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !64
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !43 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !44
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #16
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #16
end_hunk_1
