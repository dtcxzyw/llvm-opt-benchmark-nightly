Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/context?download=true
inline.NumInlined: 6156
inline.NumDeleted: 2235
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN7xgboost7Context16SetDeviceOrdinalERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESaIS9_EE:bb.a
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = ptrtoint ptr %i.iv to i64
  %i.ja = sub i64 %i.iy, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.ja) #33
  br label %_ZSt11regex_matchISt11char_traitsIcESaIcEcNSt7__cxx1112regex_traitsIcEEEbRKNS3_12basic_stringIT1_T_T0_EERKNS3_11basic_regexIS7_T2_EENSt15regex_constants15match_flag_typeE.exit70.i

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
  br i1 %i.iu, label %bb.ai, label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %.b45.i = load i1, ptr @_ZGVZN7xgboost12_GLOBAL__N_113MakeDeviceOrdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE11gpu_patternB5cxx11, align 1
  br i1 %.b45.i, label %bb.ab, label %bb.z, !prof !535

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEEC2EPKcNSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN7xgboost12_GLOBAL__N_113MakeDeviceOrdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE11gpu_patternB5cxx11, ptr noundef nonnull @.str.39, i32 noundef 16)
          to label %bb.aa unwind label %bb.bb

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
  br label %bb.ai

.body.i:                                          ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.cl

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.kz = load ptr, ptr %5, align 8, !tbaa !43    ; 17 uses
  %i.la = load i64, ptr %i.jr, align 8, !tbaa !47 ; 7 uses
  %i.lb = getelementptr i8, ptr %i.kz, i64 %i.la  ; 11 uses
  %i.lc = ptrtoint ptr %i.lb to i64               ; 4 uses
  %i.ld = ptrtoint ptr %i.kz to i64               ; 2 uses
  %i.le = ashr i64 %i.la, 2                       ; 2 uses
  %i.lf = icmp sgt i64 %i.le, 0
  br i1 %i.lf, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ai
  %i.lg = and i64 %i.la, -4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.kz, i64 %i.lg ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.an, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.le, %.lr.ph.i.i.i.i ], [ %i.lt, %bb.an ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.kz, %.lr.ph.i.i.i.i ], [ %i.ls, %bb.an ] ; 9 uses
  %i.lh = load i8, ptr %.sroa.032.051.i.i.i.i, align 1, !tbaa !44
  %i.li = icmp eq i8 %i.lh, 58
  br i1 %i.li, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 1
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !44
  %i.ll = icmp eq i8 %i.lk, 58
  br i1 %i.ll, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit263, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 2
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !44
  %i.lo = icmp eq i8 %i.ln, 58
  br i1 %i.lo, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit261, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 3
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !44
  %i.lr = icmp eq i8 %i.lq, 58
  br i1 %i.lr, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 4
  %i.lt = add nsw i64 %.052.i.i.i.i, -1
  %i.lu = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.lu, label %bb.aj, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !525

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.an
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.ai
  %.pre-phi.i.i.i.i = phi i64 [ %.pre59.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.ld, %bb.ai ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.kz, %bb.ai ] ; 5 uses
  %i.lv = sub i64 %i.lc, %.pre-phi.i.i.i.i
  switch i64 %i.lv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i [
    i64 3, label %bb.ao
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i
  %i.lw = load i8, ptr %.sroa.032.0.lcssa.i.i.i.i, align 1, !tbaa !44
  %i.lx = icmp eq i8 %i.lw, 58
  br i1 %i.lx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.ap, %._crit_edge.i.i.i.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.ly, %bb.ap ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.lz = load i8, ptr %.sroa.032.1.i.i.i.i, align 1, !tbaa !44
  %i.ma = icmp eq i8 %i.lz, 58
  br i1 %i.ma, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %bb.aq, %._crit_edge.i.i.i.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.mb, %bb.aq ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.mc = load i8, ptr %.sroa.032.2.i.i.i.i, align 1, !tbaa !44
  %i.md = icmp eq i8 %i.mc, 58
  %spec.select.i.i.i.i = select i1 %i.md, ptr %.sroa.032.2.i.i.i.i, ptr %i.lb
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.am
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 3
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit261: ; preds = %bb.al
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit263: ; preds = %bb.ak
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 1
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i: ; preds = %bb.aj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit261, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit263, %._crit_edge._crit_edge57.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.ao, %._crit_edge.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %i.lb, %._crit_edge.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.ao ], [ %i.mg, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit263 ], [ %i.mf, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit261 ], [ %i.me, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i, %bb.aj ] ; 5 uses
  %i.mh = icmp eq i64 %i.la, 8                    ; 2 uses
  br i1 %i.mh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.thread215.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73.i: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i
  %i.mi = load i64, ptr %i.kz, align 1
  %i.mj = icmp ne i64 %i.mi, 8462372802406873459
  %i.mk = zext i1 %i.mj to i32
  %i.ml = icmp eq i32 %i.mk, 0
  br i1 %i.ml, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73.i
  %i.mm = load i64, ptr %i.kz, align 1
  %i.mn = icmp ne i64 %i.mm, 8462377200453384563  ; 2 uses
  %i.mo = zext i1 %i.mn to i32                    ; 0 uses
  %20 = icmp ne ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.lb
  %or.cond.i = select i1 %i.mn, i1 %20, i1 false
  br i1 %or.cond.i, label %bb.ar, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.thread215.i: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit.i
  %.not.i.a = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.lb
  br i1 %.not.i.a, label %.thread218.i, label %bb.ar

bb.ar:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.thread215.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.i
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, i64 1 ; 4 uses
  %i.mq = ptrtoint ptr %i.mp to i64               ; 2 uses
  %i.mr = sub i64 %i.lc, %i.mq                    ; 2 uses
  %i.ms = ashr i64 %i.mr, 2                       ; 2 uses
  %i.mt = icmp sgt i64 %i.ms, 0
  br i1 %i.mt, label %.lr.ph.i.i.i87.i, label %._crit_edge.i.i.i76.i

.lr.ph.i.i.i87.i:                                 ; preds = %bb.ar
  %i.mu = and i64 %i.mr, -4
  %scevgep.i.i.i88.i = getelementptr i8, ptr %i.mp, i64 %i.mu ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.aw, %.lr.ph.i.i.i87.i
  %.052.i.i.i89.i = phi i64 [ %i.ms, %.lr.ph.i.i.i87.i ], [ %i.nh, %bb.aw ] ; 2 uses
  %.sroa.032.051.i.i.i90.i = phi ptr [ %i.mp, %.lr.ph.i.i.i87.i ], [ %i.ng, %bb.aw ] ; 9 uses
  %i.mv = load i8, ptr %.sroa.032.051.i.i.i90.i, align 1, !tbaa !44
  %i.mw = icmp eq i8 %i.mv, 58
  br i1 %i.mw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i90.i, i64 1
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !44
  %i.mz = icmp eq i8 %i.my, 58
  br i1 %i.mz, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit271, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i90.i, i64 2
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !44
  %i.nc = icmp eq i8 %i.nb, 58
  br i1 %i.nc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit269, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i90.i, i64 3
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !44
  %i.nf = icmp eq i8 %i.ne, 58
  br i1 %i.nf, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i90.i, i64 4
  %i.nh = add nsw i64 %.052.i.i.i89.i, -1
  %i.ni = icmp sgt i64 %.052.i.i.i89.i, 1
  br i1 %i.ni, label %bb.as, label %._crit_edge.loopexit.i.i.i91.i, !llvm.loop !525

._crit_edge.loopexit.i.i.i91.i:                   ; preds = %bb.aw
  %.pre59.i.i.i92.i = ptrtoint ptr %scevgep.i.i.i88.i to i64
  br label %._crit_edge.i.i.i76.i

._crit_edge.i.i.i76.i:                            ; preds = %._crit_edge.loopexit.i.i.i91.i, %bb.ar
  %.pre-phi.i.i.i77.i = phi i64 [ %.pre59.i.i.i92.i, %._crit_edge.loopexit.i.i.i91.i ], [ %i.mq, %bb.ar ]
  %.sroa.032.0.lcssa.i.i.i78.i = phi ptr [ %scevgep.i.i.i88.i, %._crit_edge.loopexit.i.i.i91.i ], [ %i.mp, %bb.ar ] ; 5 uses
  %i.nj = sub i64 %i.lc, %.pre-phi.i.i.i77.i
  switch i64 %i.nj, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.thread.i [
    i64 3, label %bb.ax
    i64 2, label %._crit_edge._crit_edge.i.i.i84.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i79.i
  ]

bb.ax:                                            ; preds = %._crit_edge.i.i.i76.i
  %i.nk = load i8, ptr %.sroa.032.0.lcssa.i.i.i78.i, align 1, !tbaa !44
  %i.nl = icmp eq i8 %i.nk, 58
  br i1 %i.nl, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i78.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i84.i

._crit_edge._crit_edge.i.i.i84.i:                 ; preds = %bb.ay, %._crit_edge.i.i.i76.i
  %.sroa.032.1.i.i.i86.i = phi ptr [ %i.nm, %bb.ay ], [ %.sroa.032.0.lcssa.i.i.i78.i, %._crit_edge.i.i.i76.i ] ; 3 uses
  %i.nn = load i8, ptr %.sroa.032.1.i.i.i86.i, align 1, !tbaa !44
  %i.no = icmp eq i8 %i.nn, 58
  br i1 %i.no, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i, label %bb.az

bb.az:                                            ; preds = %._crit_edge._crit_edge.i.i.i84.i
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i86.i, i64 1
  br label %._crit_edge._crit_edge57.i.i.i79.i

._crit_edge._crit_edge57.i.i.i79.i:               ; preds = %bb.az, %._crit_edge.i.i.i76.i
  %.sroa.032.2.i.i.i81.i = phi ptr [ %i.np, %bb.az ], [ %.sroa.032.0.lcssa.i.i.i78.i, %._crit_edge.i.i.i76.i ] ; 2 uses
  %i.nq = load i8, ptr %.sroa.032.2.i.i.i81.i, align 1, !tbaa !44
  %i.nr = icmp eq i8 %i.nq, 58
  %spec.select.i.i.i82.i = select i1 %i.nr, ptr %.sroa.032.2.i.i.i81.i, ptr %i.lb
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit: ; preds = %bb.av
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i90.i, i64 3
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit269: ; preds = %bb.au
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i90.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit271: ; preds = %bb.at
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i90.i, i64 1
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i: ; preds = %bb.as, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit269, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit271, %._crit_edge._crit_edge57.i.i.i79.i, %._crit_edge._crit_edge.i.i.i84.i, %bb.ax
  %.sroa.08.0.in.sroa.speculated.i.i.i83.i = phi ptr [ %.sroa.032.1.i.i.i86.i, %._crit_edge._crit_edge.i.i.i84.i ], [ %spec.select.i.i.i82.i, %._crit_edge._crit_edge57.i.i.i79.i ], [ %.sroa.032.0.lcssa.i.i.i78.i, %bb.ax ], [ %i.nu, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit271 ], [ %i.ns, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit ], [ %i.nt, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i.loopexit.split.loop.exit269 ], [ %.sroa.032.051.i.i.i90.i, %bb.as ] ; 2 uses
  %.not256.i = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i83.i, %i.lb
  %spec.select.i = select i1 %.not256.i, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, ptr %.sroa.08.0.in.sroa.speculated.i.i.i83.i
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.thread.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.thread.i: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i, %._crit_edge.i.i.i76.i
  %.sroa.0187.2.i = phi ptr [ %spec.select.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %._crit_edge.i.i.i76.i ] ; 2 uses
  %i.nv = icmp eq ptr %.sroa.0187.2.i, %i.lb
  br i1 %i.nv, label %.thread218.i, label %21

.thread218.i:                                     ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.thread215.i
  switch i64 %i.la, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.thread222.i [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98.i
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.i
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98.i: ; preds = %.thread218.i
  %i.nw = load i16, ptr %i.kz, align 1
  %i.nx = xor i16 %i.nw, 28771
  %i.ny = getelementptr i8, ptr %i.kz, i64 2
  %i.nz = load i8, ptr %i.ny, align 1
  %i.oa = zext i8 %i.nz to i16
  %i.ob = xor i16 %i.oa, 117
  %i.oc = or i16 %i.nx, %i.ob
  %i.od = icmp ne i16 %i.oc, 0
  %i.oe = zext i1 %i.od to i32
  %i.of = icmp eq i32 %i.oe, 0
  br i1 %i.of, label %.thread238.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.i: ; preds = %.thread218.i
  %i.og = load i32, ptr %i.kz, align 1
  %i.oh = icmp ne i32 %i.og, 1633973603
  %i.oi = zext i1 %i.oh to i32
  %i.oj = icmp eq i32 %i.oi, 0
  br i1 %i.oj, label %.thread238.thread251.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.i
  %i.ok = load i32, ptr %i.kz, align 1
  %i.ol = icmp ne i32 %i.ok, 1818458483
  %i.om = zext i1 %i.ol to i32
  %i.on = icmp eq i32 %i.om, 0
  br i1 %i.on, label %.thread238.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.thread222.i: ; preds = %.thread218.i
  br i1 %i.mh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.thread222.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73.i
  %i.oo = load i64, ptr %i.kz, align 1
  %i.op = icmp ne i64 %i.oo, 8462372802406873459
  %i.oq = zext i1 %i.op to i32
  %i.or = icmp eq i32 %i.oq, 0
  br i1 %i.or, label %.thread238.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.i
  %i.os = load i64, ptr %i.kz, align 1
  %i.ot = icmp ne i64 %i.os, 8462377200453384563
  %i.ou = zext i1 %i.ot to i32
  %i.ov = icmp eq i32 %i.ou, 0
  br i1 %i.ov, label %.thread238.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.thread222.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  invoke fastcc void @"_ZZN7xgboost12_GLOBAL__N_113MakeDeviceOrdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEv"(ptr nonnull %4, ptr nonnull readonly align 8 dereferenceable(32) %i.hg)
          to label %.thread243.i unwind label %bb.bb

21:                                               ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.thread.i
  %22 = ptrtoint ptr %.sroa.0187.2.i to i64
  %23 = sub i64 %22, %i.ld                        ; 2 uses
  %24 = add nsw i64 %23, 1                        ; 3 uses
  %25 = getelementptr inbounds nuw i8, ptr %i.kz, i64 %24 ; 2 uses
  %26 = sub i64 %i.la, %24                        ; 2 uses
  %27 = icmp eq i64 %i.la, %24
  br i1 %27, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %21
  invoke fastcc void @"_ZZN7xgboost12_GLOBAL__N_113MakeDeviceOrdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEv"(ptr nonnull %4, ptr nonnull readonly align 8 dereferenceable(32) %i.hg)
          to label %.thread224.i unwind label %bb.bb

.thread224.i:                                     ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  br label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i

bb.bb:                                            ; preds = %.thread238.thread251.i, %.thread243.i, %bb.ba, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118, %bb.z
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.bc:                                            ; preds = %21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.ox = load i8, ptr %25, align 1, !tbaa !44
  %i.oy = icmp eq i8 %i.ox, 45                    ; 3 uses
  %spec.select.i.i = zext i1 %i.oy to i64         ; 3 uses
  %.not.i105.i = icmp ugt i64 %26, %spec.select.i.i
  br i1 %.not.i105.i, label %bb.bd, label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i

bb.bd:                                            ; preds = %bb.bc
  %i.oz = getelementptr inbounds nuw i8, ptr %25, i64 %spec.select.i.i ; 5 uses
  %gepdiff.i.i = sub nuw nsw i64 %26, %spec.select.i.i ; 2 uses
  %i.pa = ashr i64 %gepdiff.i.i, 2                ; 2 uses
  %i.pb = icmp sgt i64 %i.pa, 0
  br i1 %i.pb, label %.lr.ph.preheader.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.bd
  %i.pc = and i64 %gepdiff.i.i, -4
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.oz, i64 %i.pc
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bh, %.lr.ph.preheader.i.i.i.i.i.i
  %.050.i.i.i.i.i.i = phi i64 [ %i.pp, %bb.bh ], [ %i.pa, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.02949.i.i.i.i.i.i = phi ptr [ %i.po, %bb.bh ], [ %i.oz, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i = load i8, ptr %.02949.i.i.i.i.i.i, align 1, !tbaa !44
  %i.pd = sext i8 %.029.val32.i.i.i.i.i.i to i32
  %i.pe = add nsw i32 %i.pd, -58
  %isdigit.i.i.i.i.i.i.i.i = icmp ult i32 %i.pe, -10
  br i1 %isdigit.i.i.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i", label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.pf = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 1
  %.val31.i.i.i.i.i.i = load i8, ptr %i.pf, align 1, !tbaa !44
  %i.pg = sext i8 %.val31.i.i.i.i.i.i to i32
  %i.ph = add nsw i32 %i.pg, -58
  %isdigit.i.i33.i.i.i.i.i.i = icmp ult i32 %i.ph, -10
  br i1 %isdigit.i.i33.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit", label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.pi = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 2
  %.val30.i.i.i.i.i.i = load i8, ptr %i.pi, align 1, !tbaa !44
  %i.pj = sext i8 %.val30.i.i.i.i.i.i to i32
  %i.pk = add nsw i32 %i.pj, -58
  %isdigit.i.i34.i.i.i.i.i.i = icmp ult i32 %i.pk, -10
  br i1 %isdigit.i.i34.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit277", label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.pl = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 3
  %.val.i.i.i.i.i.i = load i8, ptr %i.pl, align 1, !tbaa !44
  %i.pm = sext i8 %.val.i.i.i.i.i.i to i32
  %i.pn = add nsw i32 %i.pm, -58
  %isdigit.i.i35.i.i.i.i.i.i = icmp ult i32 %i.pn, -10
  br i1 %isdigit.i.i35.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit279", label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.po = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 4
  %i.pp = add nsw i64 %.050.i.i.i.i.i.i, -1
  %i.pq = icmp sgt i64 %.050.i.i.i.i.i.i, 1
  br i1 %i.pq, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !526

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.bh, %bb.bd
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %i.oz, %bb.bd ], [ %scevgep.i.i.i.i.i.i, %bb.bh ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i to i64
  %i.pr = sub i64 %i.lc, %.pre-phi.i.i.i.i.i.i
  switch i64 %i.pr, label %.lr.ph.i41.i.i.i.preheader [
    i64 3, label %bb.bi
    i64 2, label %bb.bk
    i64 1, label %bb.bm
  ]

bb.bi:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i, align 1, !tbaa !44
  %i.ps = sext i8 %.029.val.i.i.i.i.i.i to i32
  %i.pt = add nsw i32 %i.ps, -58
  %isdigit.i.i36.i.i.i.i.i.i = icmp ult i32 %i.pt, -10
  br i1 %isdigit.i.i36.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i", label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.pu = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.pu, %bb.bj ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i = load i8, ptr %.1.i.i.i.i.i.i, align 1, !tbaa !44
  %i.pv = sext i8 %.1.val.i.i.i.i.i.i to i32
  %i.pw = add nsw i32 %i.pv, -58
  %isdigit.i.i37.i.i.i.i.i.i = icmp ult i32 %i.pw, -10
  br i1 %isdigit.i.i37.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i", label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.px = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.px, %bb.bl ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i = load i8, ptr %.2.i.i.i.i.i.i, align 1, !tbaa !44
  %i.py = sext i8 %.2.val.i.i.i.i.i.i to i32
  %i.pz = add nsw i32 %i.py, -58
  %isdigit.i.i38.i.i.i.i.i.i = icmp ult i32 %i.pz, -10
  br i1 %isdigit.i.i38.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i", label %.lr.ph.i41.i.i.i.preheader

"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit": ; preds = %bb.be
  %i.qa = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 1
  br label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i"

"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit277": ; preds = %bb.bf
  %i.qb = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 2
  br label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i"

"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit279": ; preds = %bb.bg
  %i.qc = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 3
  br label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i"

"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit", %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit277", %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit279", %bb.bm, %bb.bk, %bb.bi
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.bk ], [ %.029.lcssa.i.i.i.i.i.i, %bb.bi ], [ %.2.i.i.i.i.i.i, %bb.bm ], [ %i.qc, %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit279" ], [ %i.qb, %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit277" ], [ %i.qa, %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit" ], [ %.02949.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.qd = icmp eq ptr %i.lb, %.028.i.i.i.i.i.i
  br i1 %i.qd, label %.lr.ph.i41.i.i.i.preheader, label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i

.lr.ph.i41.i.i.i.preheader:                       ; preds = %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i", %bb.bm, %._crit_edge.i.i.i.i.i.i
  br label %.lr.ph.i41.i.i.i

.lr.ph.i41.i.i.i:                                 ; preds = %.lr.ph.i41.i.i.i.preheader, %.critedge.i42.i.i.i
  %.471.i.i.i = phi ptr [ %i.qr, %.critedge.i42.i.i.i ], [ %i.oz, %.lr.ph.i41.i.i.i.preheader ] ; 3 uses
  %.9.i.i.i = phi i32 [ %.10.i.i.i, %.critedge.i42.i.i.i ], [ 0, %.lr.ph.i41.i.i.i.preheader ] ; 3 uses
  %.02238.i.i.i.i = phi i32 [ %i.qh, %.critedge.i42.i.i.i ], [ 32, %.lr.ph.i41.i.i.i.preheader ]
  %i.qe = load i8, ptr %.471.i.i.i, align 1, !tbaa !44
  %i.qf = add i8 %i.qe, -48                       ; 2 uses
  %i.qg = zext i8 %i.qf to i32                    ; 2 uses
  %.not31.i.i.i.i = icmp ult i8 %i.qf, 10
  br i1 %.not31.i.i.i.i, label %bb.bn, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i

bb.bn:                                            ; preds = %.lr.ph.i41.i.i.i
  %i.qh = add i32 %.02238.i.i.i.i, -4             ; 2 uses
  %i.qi = icmp sgt i32 %i.qh, -1
  br i1 %i.qi, label %bb.bo, label %bb.bp, !prof !106

bb.bo:                                            ; preds = %bb.bn
  %i.qj = mul i32 %.9.i.i.i, 10
  %i.qk = add i32 %i.qj, %i.qg
  br label %.critedge.i42.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.ql = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.9.i.i.i, i32 10) ; 2 uses
  %i.qm = extractvalue { i32, i1 } %i.ql, 1
  br i1 %i.qm, label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i, label %.split.i.i.i.i, !prof !537

.split.i.i.i.i:                                   ; preds = %bb.bp
  %i.qn = extractvalue { i32, i1 } %i.ql, 0
  %i.qo = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.qn, i32 %i.qg) ; 2 uses
  %i.qp = extractvalue { i32, i1 } %i.qo, 1
  %i.qq = extractvalue { i32, i1 } %i.qo, 0
  br i1 %i.qp, label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i, label %.critedge.i42.i.i.i, !prof !66

.critedge.i42.i.i.i:                              ; preds = %.split.i.i.i.i, %bb.bo
  %.10.i.i.i = phi i32 [ %i.qk, %bb.bo ], [ %i.qq, %.split.i.i.i.i ] ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.471.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.qr, %i.lb
  br i1 %.not.i.i.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i, label %.lr.ph.i41.i.i.i, !llvm.loop !527

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i: ; preds = %.critedge.i42.i.i.i, %.lr.ph.i41.i.i.i
  %.168.i.i.i = phi ptr [ %.471.i.i.i, %.lr.ph.i41.i.i.i ], [ %i.lb, %.critedge.i42.i.i.i ]
  %.0.i.i.i = phi i32 [ %.9.i.i.i, %.lr.ph.i41.i.i.i ], [ %.10.i.i.i, %.critedge.i42.i.i.i ] ; 3 uses
  %.not23.i.i = icmp eq ptr %.168.i.i.i, %i.oz
  %i.qs = select i1 %i.oy, i32 -2147483648, i32 2147483647
  %i.qt = icmp ugt i32 %.0.i.i.i, %i.qs
  %or.cond.i.i = select i1 %.not23.i.i, i1 true, i1 %i.qt, !prof !538
  br i1 %or.cond.i.i, label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i, label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.i, !prof !538

_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i: ; preds = %.split.i.i.i.i, %bb.bp, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i, %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i", %bb.bc, %.thread224.i
  %.sroa.2.1.i.ph.i = phi i64 [ 0, %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i" ], [ 0, %.thread224.i ], [ 4294967295, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i ], [ 0, %bb.bc ], [ 4294967295, %bb.bp ], [ 4294967295, %.split.i.i.i.i ]
  store i64 %.sroa.2.1.i.ph.i, ptr %7, align 8
  invoke fastcc void @"_ZZN7xgboost12_GLOBAL__N_113MakeDeviceOrdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEv"(ptr nonnull %4, ptr nonnull readonly align 8 dereferenceable(32) %i.hg)
          to label %bb.bq unwind label %bb.cc

_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.i: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i
  %i.qu = sub i32 0, %.0.i.i.i
  %i.qv = select i1 %i.oy, i32 %i.qu, i32 %.0.i.i.i ; 2 uses
  %i.qw = zext i32 %i.qv to i64
  %i.qx = or disjoint i64 %i.qw, 4294967296
  store i64 %i.qx, ptr %7, align 8
  %i.qy = getelementptr inbounds nuw i8, ptr %7, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  br label %_ZNRSt8optionalIiE5valueEv.exit.i

bb.bq:                                            ; preds = %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i
  %i.qz = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %.pre295.i = load i8, ptr %i.qz, align 4, !tbaa !540, !range !100
  %i.ra = trunc nuw i8 %.pre295.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  br i1 %i.ra, label %._ZNRSt8optionalIiE5valueEv.exit.i_crit_edge, label %bb.br

._ZNRSt8optionalIiE5valueEv.exit.i_crit_edge:     ; preds = %bb.bq
  %.pre196 = load i32, ptr %7, align 8, !tbaa !65, !noalias !541
  br label %_ZNRSt8optionalIiE5valueEv.exit.i

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt27__throw_bad_optional_accessv() #34
          to label %.noexc106.i unwind label %bb.bu

.noexc106.i:                                      ; preds = %bb.br
  unreachable

_ZNRSt8optionalIiE5valueEv.exit.i:                ; preds = %._ZNRSt8optionalIiE5valueEv.exit.i_crit_edge, %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.i
  %i.rb = phi i32 [ %i.qv, %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.i ], [ %.pre196, %._ZNRSt8optionalIiE5valueEv.exit.i_crit_edge ]
  %i.rc = phi ptr [ %i.qy, %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.i ], [ %i.qz, %._ZNRSt8optionalIiE5valueEv.exit.i_crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i16 32767, ptr %i.c, align 2, !tbaa !107
  %.not.i.i = icmp sgt i32 %i.rb, 32767
  br i1 %.not.i.i, label %bb.bs, label %_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i

_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i: ; preds = %_ZNRSt8optionalIiE5valueEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

bb.bs:                                            ; preds = %_ZNRSt8optionalIiE5valueEv.exit.i
  invoke void @_ZN4dmlc14LogCheckFormatIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 2 dereferenceable(2) %i.c)
          to label %_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i unwind label %bb.bv

_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i: ; preds = %bb.bs
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %.not257.i = icmp eq ptr %.pr.i, null
  br i1 %.not257.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.rd = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc107.i unwind label %bb.bw

.noexc107.i:                                      ; preds = %bb.bt
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.rd, ptr noundef nonnull @.str.4, i32 noundef 198)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i unwind label %bb.bw

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i:          ; preds = %.noexc107.i
  %i.re = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.bx ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.rf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.re, ptr noundef nonnull @.str.6, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.bx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  %i.rg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.re, ptr noundef nonnull @.str.40, i64 noundef 61)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.i unwind label %bb.bx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.rh = load ptr, ptr %8, align 8, !tbaa !109   ; 2 uses
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !43
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !47
  %i.rl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.re, ptr noundef %i.ri, i64 noundef %i.rk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.bx ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.i
  %i.rm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rl, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115.i unwind label %bb.bx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.rn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rl, ptr noundef nonnull @.str.41, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.i unwind label %bb.bx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bz unwind label %bb.bw

bb.bu:                                            ; preds = %bb.br
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bv:                                            ; preds = %bb.bs
  %i.rp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.cb

bb.bw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.i, %.noexc107.i, %bb.bt
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.rr = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.by unwind label %bb.cm

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn.i = phi { ptr, i32 } [ %i.rq, %bb.bw ], [ %i.rr, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #16
  br label %bb.cb

bb.bz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %.pr225.i = load ptr, ptr %8, align 8, !tbaa !109 ; 4 uses
  %.not.i118.i = icmp eq ptr %.pr225.i, null
  br i1 %.not.i118.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.rs = load ptr, ptr %.pr225.i, align 8, !tbaa !43 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.pr225.i, i64 16 ; 2 uses
  %i.ru = icmp eq ptr %i.rs, %i.rt
  br i1 %i.ru, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ca
  %i.rv = load i64, ptr %i.rt, align 8, !tbaa !44
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rs, i64 noundef %i.rw) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr225.i, i64 noundef 32) #33
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.bz, %_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i, %_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  switch i64 %23, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i._ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i_crit_edge [
    i64 4, label %_ZN7xgboosteqENS_10StringViewES0_.exit.i
    i64 8, label %_ZN7xgboosteqENS_10StringViewES0_.exit127.i
  ]

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i._ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i_crit_edge: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  %.pre197 = load i8, ptr %i.rc, align 4, !tbaa !540, !range !100
  br label %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i

_ZN7xgboosteqENS_10StringViewES0_.exit.i:         ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  %i.rx = load i32, ptr %i.kz, align 1
  %i.ry = icmp ne i32 %i.rx, 1818458483
  %i.rz = zext i1 %i.ry to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.rz, 0
  %.pre199 = load i8, ptr %i.rc, align 4, !tbaa !540, !range !100 ; 2 uses
  br i1 %.not9.i.i.i.i.i.i, label %_ZN7xgboosteqENS_10StringViewES0_.exit.thread.i, label %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i

_ZN7xgboosteqENS_10StringViewES0_.exit.thread.i:  ; preds = %_ZN7xgboosteqENS_10StringViewES0_.exit.i
  %i.sa = trunc nuw i8 %.pre199 to i1
  br i1 %i.sa, label %bb.ce, label %.invoke.i

bb.cb:                                            ; preds = %bb.by, %bb.bv, %bb.bu
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.by ], [ %i.rp, %bb.bv ], [ %i.ro, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.cd

_ZN7xgboosteqENS_10StringViewES0_.exit127.i:      ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  %i.sb = load i64, ptr %i.kz, align 1
  %i.sc = icmp ne i64 %i.sb, 8462372802406873459
  %i.sd = zext i1 %i.sc to i32
  %.not9.i.i.i.i.i126.i = icmp eq i32 %i.sd, 0
  br i1 %.not9.i.i.i.i.i126.i, label %_ZN7xgboosteqENS_10StringViewES0_.exit127.thread.i, label %_ZN7xgboosteqENS_10StringViewES0_.exit138.i

_ZN7xgboosteqENS_10StringViewES0_.exit127.thread.i: ; preds = %_ZN7xgboosteqENS_10StringViewES0_.exit127.i
  %i.se = load i8, ptr %i.rc, align 4, !tbaa !540, !range !100, !noundef !101
  %i.sf = trunc nuw i8 %i.se to i1
  br i1 %i.sf, label %bb.ce, label %.invoke.i

_ZN7xgboosteqENS_10StringViewES0_.exit138.i:      ; preds = %_ZN7xgboosteqENS_10StringViewES0_.exit127.i
  %i.sg = load i64, ptr %i.kz, align 1
  %i.sh = icmp ne i64 %i.sg, 8462377200453384563
  %i.si = zext i1 %i.sh to i32
  %.not9.i.i.i.i.i137.i = icmp eq i32 %i.si, 0
  %.pre198 = load i8, ptr %i.rc, align 4, !tbaa !540, !range !100 ; 2 uses
  br i1 %.not9.i.i.i.i.i137.i, label %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread.i, label %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i

_ZN7xgboosteqENS_10StringViewES0_.exit138.thread.i: ; preds = %_ZN7xgboosteqENS_10StringViewES0_.exit138.i
  %i.sj = trunc nuw i8 %.pre198 to i1
  br i1 %i.sj, label %bb.ce, label %.invoke.i

_ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i._ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i_crit_edge, %_ZN7xgboosteqENS_10StringViewES0_.exit138.i, %_ZN7xgboosteqENS_10StringViewES0_.exit.i
  %i.sk = phi i8 [ %.pre197, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i._ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i_crit_edge ], [ %.pre198, %_ZN7xgboosteqENS_10StringViewES0_.exit138.i ], [ %.pre199, %_ZN7xgboosteqENS_10StringViewES0_.exit.i ]
  %i.sl = trunc nuw i8 %i.sk to i1
  br i1 %i.sl, label %bb.ce, label %.invoke.i

.invoke.i:                                        ; preds = %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i, %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread.i, %_ZN7xgboosteqENS_10StringViewES0_.exit127.thread.i, %_ZN7xgboosteqENS_10StringViewES0_.exit.thread.i
  invoke void @_ZSt27__throw_bad_optional_accessv() #34
          to label %.cont.i unwind label %bb.cc

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.cc:                                            ; preds = %.invoke.i, %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn48.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.cb ], [ %i.sm, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.cl

bb.ce:                                            ; preds = %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i, %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread.i, %_ZN7xgboosteqENS_10StringViewES0_.exit127.thread.i, %_ZN7xgboosteqENS_10StringViewES0_.exit.thread.i
  %.sroa.0191.0.i = phi i16 [ 4, %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread.i ], [ 2, %_ZN7xgboosteqENS_10StringViewES0_.exit.thread.i ], [ 3, %_ZN7xgboosteqENS_10StringViewES0_.exit127.thread.i ], [ 1, %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i ] ; 2 uses
  %.sroa.16.0.in.i = load i32, ptr %7, align 8, !tbaa !65 ; 3 uses
  %.sroa.16.0.i = trunc i32 %.sroa.16.0.in.i to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.sn = icmp slt i16 %.sroa.16.0.i, -1
  br i1 %i.sn, label %.thread243.i, label %.thread238.i

.thread243.i:                                     ; preds = %bb.ce, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118
  %.sroa.16.1247.i = phi i32 [ %.sroa.16.0.in.i, %bb.ce ], [ 65534, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118 ]
  %.sroa.0191.1246.i = phi i16 [ %.sroa.0191.0.i, %bb.ce ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118 ]
  invoke fastcc void @"_ZZN7xgboost12_GLOBAL__N_113MakeDeviceOrdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEv"(ptr nonnull %4, ptr nonnull readonly align 8 dereferenceable(32) %i.hg)
          to label %.thread238.i unwind label %bb.bb

.thread238.i:                                     ; preds = %.thread243.i, %bb.ce
  %.sroa.16.1242.i = phi i32 [ %.sroa.16.0.in.i, %bb.ce ], [ %.sroa.16.1247.i, %.thread243.i ]
  %.sroa.0191.1241.i = phi i16 [ %.sroa.0191.0.i, %bb.ce ], [ %.sroa.0191.1246.i, %.thread243.i ] ; 2 uses
  %i.so = icmp eq i16 %.sroa.0191.1241.i, 1
  br i1 %i.so, label %.thread238.thread251.i, label %.thread238.thread.i

.thread238.thread251.i:                           ; preds = %.thread238.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.i
  %i.sp = invoke noundef zeroext i1 @_ZN7xgboost13ConsoleLogger9ShouldLogENS0_12LogVerbosityE(i32 noundef 1)
          to label %bb.cf unwind label %bb.bb

bb.cf:                                            ; preds = %.thread238.thread251.i
  br i1 %i.sp, label %.noexc.i150.i, label %.thread238.thread.i

.noexc.i150.i:                                    ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.sq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.sq, ptr %11, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 46, ptr %i.a, align 8, !tbaa !46
  %i.sr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc151.i unwind label %bb.ch ; 3 uses

.noexc151.i:                                      ; preds = %.noexc.i150.i
  store ptr %i.sr, ptr %11, align 8, !tbaa !43
  %i.ss = load i64, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  store i64 %i.ss, ptr %i.sq, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.sr, ptr noundef nonnull align 1 dereferenceable(46) @.str.4, i64 46, i1 false)
  %i.st = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ss, ptr %i.st, align 8, !tbaa !47
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.ss
  store i8 0, ptr %i.su, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  invoke void @_ZN7xgboost13ConsoleLoggerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_12LogVerbosityE(ptr noundef nonnull align 8 dereferenceable(380) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 218, i32 noundef 1)
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %.noexc151.i
  %i.sv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.42, i64 noundef 86)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153.i unwind label %bb.cj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153.i: ; preds = %bb.cg
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %10) #16
  %i.sw = load ptr, ptr %11, align 8, !tbaa !43   ; 2 uses
  %i.sx = icmp eq ptr %i.sw, %i.sq
  br i1 %i.sx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153.i
  %i.sy = load i64, ptr %i.sq, align 8, !tbaa !44
  %i.sz = add i64 %i.sy, 1
  call void @_ZdlPvm(ptr noundef %i.sw, i64 noundef %i.sz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %.thread238.thread.i

bb.ch:                                            ; preds = %.noexc.i150.i
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i

bb.ci:                                            ; preds = %.noexc151.i
  %i.tb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cg
  %i.tc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %10) #16
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn52.i = phi { ptr, i32 } [ %i.tc, %bb.cj ], [ %i.tb, %bb.ci ] ; 2 uses
  %i.td = load ptr, ptr %11, align 8, !tbaa !43   ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.sq
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.i: ; preds = %bb.ck
  %i.tf = load i64, ptr %i.sq, align 8, !tbaa !44
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.tg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.i, %bb.ch
  %.pn52.pn.i = phi { ptr, i32 } [ %i.ta, %bb.ch ], [ %.pn52.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.i ], [ %.pn52.i, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.cl

.thread238.thread.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.i, %bb.cf, %.thread238.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98.i
  %.sroa.0191.2.i = phi i16 [ %.sroa.0191.1241.i, %.thread238.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.i ], [ 0, %bb.cf ], [ 4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.i ], [ 3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.i ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98.i ]
  %.sroa.16.2.i = phi i32 [ %.sroa.16.1242.i, %.thread238.i ], [ 65535, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.i ], [ 65535, %bb.cf ], [ 65535, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 65535, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.i ], [ 65535, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.i ], [ 65535, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98.i ]
  %i.th = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %i.ti = icmp eq ptr %i.th, %i.ji
  br i1 %i.ti, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160.i: ; preds = %.thread238.thread.i
  %i.tj = load i64, ptr %i.ji, align 8, !tbaa !44
  %i.tk = add i64 %i.tj, 1
  call void @_ZdlPvm(ptr noundef %i.th, i64 noundef %i.tk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.i: ; preds = %.thread238.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.tl = shl i32 %.sroa.16.2.i, 16
  %i.tm = zext nneg i16 %.sroa.0191.2.i to i32
  %i.tn = or disjoint i32 %i.tl, %i.tm
  br label %_ZN7xgboost12_GLOBAL__N_113MakeDeviceOrdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i, %bb.cd, %bb.bb, %.body.i
  %.pn52.pn.pn.pn.i = phi { ptr, i32 } [ %.pn48.i, %bb.cd ], [ %i.kc, %.body.i ], [ %.pn52.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i ], [ %i.ow, %bb.bb ]
  %i.to = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_:bb.a
  %i.aa = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !47, !alias.scope !1109
  store ptr %i.t, ptr %.0911.i.i.i, align 8, !tbaa !43, !alias.scope !1110
  store i64 0, ptr %i.ab, align 8, !tbaa !47, !alias.scope !1110
  store i8 0, ptr %i.t, align 8, !tbaa !44, !alias.scope !1110
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !45, !alias.scope !1109
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !43, !alias.scope !1110 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !47, !alias.scope !1110 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !1111
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !43, !alias.scope !1109
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !44, !alias.scope !1110
  store i64 %i.an, ptr %i.af, align 8, !tbaa !44, !alias.scope !1109
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !47, !alias.scope !1110
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i, %bb.d
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !47, !alias.scope !1109
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !43, !alias.scope !1110
  store i64 0, ptr %i.ap, align 8, !tbaa !47, !alias.scope !1110
  store i8 0, ptr %i.ah, align 8, !tbaa !44, !alias.scope !1110
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
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !45, !alias.scope !1112
  %i.av = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !43, !alias.scope !1113 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.e:                                             ; preds = %.lr.ph.i.i.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !47, !alias.scope !1113 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !1114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.av, ptr %.012.i.i.i28, align 8, !tbaa !43, !alias.scope !1112
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !44, !alias.scope !1113
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !44, !alias.scope !1112
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !47, !alias.scope !1113
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.e
  %i.bd = phi i64 [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ], [ %i.az, %bb.e ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !47, !alias.scope !1112
  store ptr %i.aw, ptr %.0911.i.i.i29, align 8, !tbaa !43, !alias.scope !1113
  store i64 0, ptr %i.be, align 8, !tbaa !47, !alias.scope !1113
  store i8 0, ptr %i.aw, align 8, !tbaa !44, !alias.scope !1113
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48 ; 3 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !45, !alias.scope !1112
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !43, !alias.scope !1113 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48 ; 5 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i34

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !47, !alias.scope !1113 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = add nuw nsw i64 %i.bn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bi, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.bp, i1 false), !alias.scope !1114
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !43, !alias.scope !1112
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !44, !alias.scope !1113
  store i64 %i.bq, ptr %i.bi, align 8, !tbaa !44, !alias.scope !1112
  %.phi.trans.insert5.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %.pre6.i.i.i.i36 = load i64, ptr %.phi.trans.insert5.i.i.i.i35, align 8, !tbaa !47, !alias.scope !1113
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i37

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i34, %bb.f
  %i.br = phi i64 [ %i.bn, %bb.f ], [ %.pre6.i.i.i.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i34 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !47, !alias.scope !1112
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !43, !alias.scope !1113
  store i64 0, ptr %i.bs, align 8, !tbaa !47, !alias.scope !1113
  store i8 0, ptr %i.bk, align 8, !tbaa !44, !alias.scope !1113
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
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.not48 = icmp eq ptr %i.g, %i.h
  br i1 %.not48, label %._crit_edge54, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %.pre59 = load ptr, ptr %i.f, align 8, !tbaa !54 ; 2 uses
  %.not4050 = icmp eq ptr %.pre59, %i.h
  br i1 %.not4050, label %._crit_edge54, label %.lr.ph53

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.035.049 = phi ptr [ %i.t, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.035.049, i64 64
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.j, null
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !127 ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.j, %.lr.ph ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !127
  %i.m = icmp ult ptr %i.l, %.pre                 ; 3 uses
  %.19.i.i.i = select i1 %i.m, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.m, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !348 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1115

_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.n = icmp eq ptr %.19.i.i.i, %i.a
  br i1 %i.n, label %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread, label %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit

_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit: ; preds = %_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.m, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.o = load ptr, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !127
  %i.p = icmp ult ptr %.pre, %i.o
  br i1 %i.p, label %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread, label %bb.c

_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i, %.lr.ph, %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit
  %i.q = load ptr, ptr %.pre, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(128) %.pre, ptr noundef %1)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread, %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit
  %i.t = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.035.049) #37 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge54:                                    ; preds = %bb.e, %bb.b, %._crit_edge
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !53
  invoke void @_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.u)
          to label %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %._crit_edge54
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #35
  unreachable

_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EED2Ev.exit: ; preds = %._crit_edge54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret void

.lr.ph53:                                         ; preds = %._crit_edge, %bb.e
  %.sroa.028.051 = phi ptr [ %i.ah, %bb.e ], [ %.pre59, %._crit_edge ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.028.051, i64 64
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %.not10.i.i.i18 = icmp eq ptr %i.y, null
  %.pre60 = load ptr, ptr %i.x, align 8, !tbaa !127 ; 4 uses
  br i1 %.not10.i.i.i18, label %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread, label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %.lr.ph53, %.lr.ph.i.i.i19
  %.012.i.i.i20 = phi ptr [ %.1.i.i.i25, %.lr.ph.i.i.i19 ], [ %i.y, %.lr.ph53 ] ; 4 uses
  %.0811.i.i.i21 = phi ptr [ %.19.i.i.i22, %.lr.ph.i.i.i19 ], [ %i.a, %.lr.ph53 ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !127
  %i.ab = icmp ult ptr %i.aa, %.pre60             ; 3 uses
  %.19.i.i.i22 = select i1 %i.ab, ptr %.0811.i.i.i21, ptr %.012.i.i.i20 ; 2 uses
  %.1.in.v.i.i.i23 = select i1 %i.ab, i64 24, i64 16
  %.1.in.i.i.i24 = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 %.1.in.v.i.i.i23
  %.1.i.i.i25 = load ptr, ptr %.1.in.i.i.i24, align 8, !tbaa !348 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %.1.i.i.i25, null
  br i1 %.not.i.i.i26, label %_ZNKSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i, label %.lr.ph.i.i.i19, !llvm.loop !1116

_ZNKSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i19
  %i.ac = icmp eq ptr %.19.i.i.i22, %i.a
  br i1 %i.ac, label %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread, label %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit

_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit: ; preds = %_ZNKSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i
  %.19.i.i.i22.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ab, ptr %.0811.i.i.i21, ptr %.012.i.i.i20
  %.19.i.i.i22.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i22.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ad = load ptr, ptr %.19.i.i.i22.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !127
  %.not41 = icmp ult ptr %.pre60, %i.ad
  br i1 %.not41, label %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread, label %bb.e

_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i, %.lr.ph53, %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit
  %i.ae = load ptr, ptr %.pre60, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(128) %.pre60, ptr noundef %1)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread, %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread, %bb.a
  %lpad.loopexit.split-lp76 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  resume { ptr, i32 } %lpad.loopexit.split-lp76

bb.e:                                             ; preds = %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit, %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread
  %i.ah = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.028.051) #37 ; 2 uses
  %.not40 = icmp eq ptr %i.ah, %i.h
  br i1 %.not40, label %._crit_edge54, label %.lr.ph53, !llvm.loop !1117
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
end_hunk_1
