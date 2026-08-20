inline.NumInlined: 2122
inline.NumDeleted: 1239
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextE:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS3_10ThreadPool3setERKS4_NS3_6Search11SharedStateERKNS9_13SearchManager13UpdateContextEE3$_2EEvmOT_EUlvE_EEEEEE", i64 16), ptr %i.jl, align 8, !tbaa !42
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store ptr %1, ptr %i.jm, align 8, !tbaa !168
  %.sroa.4.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store ptr %20, ptr %.sroa.4.0..sroa_idx.i27, align 8, !tbaa !107
  %.sroa.5.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  store i64 %i.jk, ptr %.sroa.5.0..sroa_idx.i28, align 8, !tbaa !26
  store ptr %i.jl, ptr %5, align 8, !tbaa !170
  call void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 %5, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv) #26
  %i.jn = load ptr, ptr %5, align 8, !tbaa !170   ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i29, label %"_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS1_10ThreadPool3setERKS2_NS1_6Search11SharedStateERKNS7_13SearchManager13UpdateContextEE3$_2EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i", label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i30

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i30: ; preds = %bb.w
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !42
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dereferenceable(8) %i.jn) #26, !inline_history !188
  br label %"_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS1_10ThreadPool3setERKS2_NS1_6Search11SharedStateERKNS7_13SearchManager13UpdateContextEE3$_2EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i"

"_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS1_10ThreadPool3setERKS2_NS1_6Search11SharedStateERKNS7_13SearchManager13UpdateContextEE3$_2EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i": ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i30, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  %.sroa.0.0.copyload.i.i.i31 = load i64, ptr %6, align 8, !tbaa !26
  %.not.i.i32 = icmp eq i64 %.sroa.0.0.copyload.i.i.i31, 0
  br i1 %.not.i.i32, label %"_ZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS_10ThreadPool3setERKS0_NS_6Search11SharedStateERKNS5_13SearchManager13UpdateContextEE3$_2EEvmOT_.exit", label %bb.x

bb.x:                                             ; preds = %"_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS1_10ThreadPool3setERKS2_NS1_6Search11SharedStateERKNS7_13SearchManager13UpdateContextEE3$_2EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i"
  call void @_ZSt9terminatev() #31
  unreachable

"_ZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS_10ThreadPool3setERKS0_NS_6Search11SharedStateERKNS5_13SearchManager13UpdateContextEE3$_2EEvmOT_.exit": ; preds = %"_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS1_10ThreadPool3setERKS2_NS1_6Search11SharedStateERKNS7_13SearchManager13UpdateContextEE3$_2EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  call fastcc void @"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_2clEv"(ptr noundef nonnull align 8 dereferenceable(72) %20)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %"_ZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS_10ThreadPool3setERKS0_NS_6Search11SharedStateERKNS5_13SearchManager13UpdateContextEE3$_2EEvmOT_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.jr = load ptr, ptr %i.i, align 8, !tbaa !124
  %i.js = load ptr, ptr %i.h, align 8, !tbaa !126
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = sub i64 %i.jt, %i.ju                    ; 2 uses
  %i.jw = ashr exact i64 %i.jv, 3                 ; 2 uses
  %i.jx = icmp ult i64 %i.jw, %i.an
  br i1 %i.jx, label %bb.t, label %._crit_edge61, !llvm.loop !189

._crit_edge61:                                    ; preds = %bb.z, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2ERKS6_.exit
  call void @_ZN9Stockfish10ThreadPool5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.jy = load ptr, ptr %i.h, align 8, !tbaa !120
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !89 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 48 ; 3 uses
  store ptr %i.ka, ptr %4, align 8, !tbaa !95
  %i.kb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.kc = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ka) #26 ; 2 uses
  %.not.i.i.i.i33 = icmp eq i32 %i.kc, 0
  br i1 %.not.i.i.i.i33, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i34, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge61
  call void @_ZSt20__throw_system_errori(i32 noundef %i.kc) #31
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i34:     ; preds = %._crit_edge61
  store i8 1, ptr %i.kb, align 8, !tbaa !98
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 88
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 169 ; 2 uses
  %.val.val2.i.i35 = load i8, ptr %i.ke, align 1, !tbaa !82, !range !99, !noundef !71
  %i.kf = trunc nuw i8 %.val.val2.i.i35 to i1
  br i1 %i.kf, label %.lr.ph.i.i38, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i36.thread"

.lr.ph.i.i38:                                     ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i34, %.lr.ph.i.i38
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.kd, ptr noundef nonnull align 8 dereferenceable(9) %4) #26
  %.val.val.i.i39 = load i8, ptr %i.ke, align 1, !tbaa !82, !range !99, !noundef !71
  %i.kg = trunc nuw i8 %.val.val.i.i39 to i1
  br i1 %i.kg, label %.lr.ph.i.i38, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i40", !llvm.loop !100

"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i40": ; preds = %.lr.ph.i.i38
  %.pre.i41 = load i8, ptr %i.kb, align 8, !tbaa !98, !range !99
  %i.kh = trunc nuw i8 %.pre.i41 to i1
  %.pre70 = load ptr, ptr %4, align 8             ; 2 uses
  %.not.i.i.i37 = icmp ne ptr %.pre70, null
  %or.cond107.not = select i1 %i.kh, i1 %.not.i.i.i37, i1 false
  br i1 %or.cond107.not, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i36.thread", label %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit42

"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i36.thread": ; preds = %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i40", %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i34
  %i.ki = phi ptr [ %.pre70, %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i40" ], [ %i.ka, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i34 ]
  %i.kj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ki) #26 ; 0 uses
  br label %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit42

_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit42: ; preds = %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i40", %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i36.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.kk = load ptr, ptr %i.gz, align 8, !tbaa !34
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %i.kk)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.kl = load ptr, ptr %i.fc, align 8, !tbaa !34
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef %i.kl)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.km = load ptr, ptr %14, align 8, !tbaa !79   ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ko = icmp eq ptr %i.km, %i.kn
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit42
  %i.kp = load i64, ptr %i.kn, align 8, !tbaa !78
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

declare void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK9Stockfish10NumaConfig35distribute_threads_among_numa_nodesEm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.119") align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !190  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !191    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 48                  ; 3 uses
  %i.i = icmp eq i64 %i.g, 48
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !26
  %.not42 = icmp eq i64 %2, 0
  br i1 %.not42, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

_ZNSt6vectorImSaImEE6resizeEmRKm.exit:            ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.j, label %bb.e, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #31
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.d
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.thread, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.k = shl nuw nsw i64 %i.h, 3                  ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #29 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false), !tbaa !26
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.h
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge29, label %.preheader.lr.ph

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.thread:     ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.not46 = icmp eq i64 %2, 0
  br i1 %.not46, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.thread, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %.sroa.020.050 = phi ptr [ null, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.thread ], [ %i.l, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ] ; 11 uses
  %.sroa.9.048 = phi i64 [ 0, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.thread ], [ %i.n, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit
  %i.q = phi ptr [ null, %.preheader.lr.ph ], [ %i.bd, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 5 uses
  %i.r = phi ptr [ null, %.preheader.lr.ph ], [ %i.be, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 3 uses
  %i.s = phi ptr [ null, %.preheader.lr.ph ], [ %i.bf, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 3 uses
  %.01428 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bj, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !190  ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !191    ; 11 uses
  %.not30 = icmp eq ptr %i.t, %i.u
  br i1 %.not30, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 48                  ; 3 uses
  %xtraiter = and i64 %i.y, 7                     ; 3 uses
  %i.z = icmp ult i64 %i.y, 8
  br i1 %i.z, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.y, -8
  br label %.lr.ph

._crit_edge29:                                    ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %.sroa.020.052 = phi ptr [ %i.l, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ], [ %.sroa.020.050, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 2 uses
  %.sroa.9.047 = phi i64 [ %i.n, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ], [ %.sroa.9.048, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %i.aa = ptrtoint ptr %.sroa.020.052 to i64
  %i.ab = sub i64 %.sroa.9.047, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.020.052, i64 noundef %i.ab) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.027.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.et, %._crit_edge.loopexit.unr-lcssa ]
  %.01326.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.preheader ], [ %.1.7, %._crit_edge.loopexit.unr-lcssa ]
  %.02325.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %.124.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.027.epil = phi i64 [ %i.am, %.lr.ph.epil ], [ %.027.epil.init, %.lr.ph.epil.preheader ] ; 4 uses
  %.01326.epil = phi float [ %.1.epil, %.lr.ph.epil ], [ %.01326.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.02325.epil = phi i64 [ %.124.epil, %.lr.ph.epil ], [ %.02325.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.027.epil
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !26
  %i.ae = add i64 %i.ad, 1
  %i.af = uitofp i64 %i.ae to float
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.027.epil
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !37
  %i.aj = uitofp i64 %i.ai to float
  %i.ak = fdiv float %i.af, %i.aj                 ; 2 uses
  %i.al = fcmp olt float %i.ak, %.01326.epil      ; 2 uses
  %.124.epil = select i1 %i.al, i64 %.027.epil, i64 %.02325.epil ; 2 uses
  %.1.epil = select i1 %i.al, float %i.ak, float %.01326.epil
  %i.am = add nuw i64 %.027.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !192

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.023.lcssa = phi i64 [ 0, %.preheader ], [ %.124.7, %._crit_edge.loopexit.unr-lcssa ], [ %.124.epil, %.lr.ph.epil ] ; 3 uses
  %.not.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  store i64 %.023.lcssa, ptr %i.s, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.o, align 8, !tbaa !132
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

bb.g:                                             ; preds = %._crit_edge
  %i.ao = ptrtoint ptr %i.r to i64
  %i.ap = ptrtoint ptr %i.q to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 6 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.h, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #31
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i16 = icmp ne i64 %i.aw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i16)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #29 ; 5 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store i64 %.023.lcssa, ptr %i.az, align 8, !tbaa !26
  %i.ba = icmp sgt i64 %i.aq, 0
  br i1 %i.ba, label %bb.i, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %i.q, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.aq) #30
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ay, ptr %0, align 8, !tbaa !129
  store ptr %i.bb, ptr %i.o, align 8, !tbaa !132
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw ; 2 uses
  store ptr %i.bc, ptr %i.p, align 8, !tbaa !157
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.bd = phi ptr [ %i.q, %bb.f ], [ %i.ay, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ]
  %i.be = phi ptr [ %i.r, %bb.f ], [ %i.bc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ]
  %i.bf = phi ptr [ %i.an, %bb.f ], [ %i.bb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.023.lcssa ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !26
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !26
  %i.bj = add nuw i64 %.01428, 1                  ; 2 uses
  %exitcond31.not = icmp eq i64 %i.bj, %2
  br i1 %exitcond31.not, label %._crit_edge29, label %.preheader, !llvm.loop !194

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.027 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.et, %.lr.ph ] ; 11 uses
  %.01326 = phi float [ f0x7F7FFFFF, %.lr.ph.preheader.new ], [ %.1.7, %.lr.ph ] ; 2 uses
  %.02325 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %.124.7, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.027
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !26
  %i.bm = add i64 %i.bl, 1
  %i.bn = uitofp i64 %i.bm to float
  %i.bo = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.027
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !37
  %i.br = uitofp i64 %i.bq to float
  %i.bs = fdiv float %i.bn, %i.br                 ; 2 uses
  %i.bt = fcmp olt float %i.bs, %.01326           ; 2 uses
  %.124 = select i1 %i.bt, i64 %.027, i64 %.02325
  %.1 = select i1 %i.bt, float %i.bs, float %.01326 ; 2 uses
  %i.bu = or disjoint i64 %.027, 1                ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !26
  %i.bx = add i64 %i.bw, 1
  %i.by = uitofp i64 %i.bx to float
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.bu
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !37
  %i.cc = uitofp i64 %i.cb to float
  %i.cd = fdiv float %i.by, %i.cc                 ; 2 uses
  %i.ce = fcmp olt float %i.cd, %.1               ; 2 uses
  %.124.1 = select i1 %i.ce, i64 %i.bu, i64 %.124
  %.1.1 = select i1 %i.ce, float %i.cd, float %.1 ; 2 uses
  %i.cf = or disjoint i64 %.027, 2                ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !26
  %i.ci = add i64 %i.ch, 1
  %i.cj = uitofp i64 %i.ci to float
  %i.ck = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.cf
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !37
  %i.cn = uitofp i64 %i.cm to float
  %i.co = fdiv float %i.cj, %i.cn                 ; 2 uses
  %i.cp = fcmp olt float %i.co, %.1.1             ; 2 uses
  %.124.2 = select i1 %i.cp, i64 %i.cf, i64 %.124.1
  %.1.2 = select i1 %i.cp, float %i.co, float %.1.1 ; 2 uses
  %i.cq = or disjoint i64 %.027, 3                ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !26
  %i.ct = add i64 %i.cs, 1
  %i.cu = uitofp i64 %i.ct to float
  %i.cv = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.cq
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !37
  %i.cy = uitofp i64 %i.cx to float
  %i.cz = fdiv float %i.cu, %i.cy                 ; 2 uses
  %i.da = fcmp olt float %i.cz, %.1.2             ; 2 uses
  %.124.3 = select i1 %i.da, i64 %i.cq, i64 %.124.2
  %.1.3 = select i1 %i.da, float %i.cz, float %.1.2 ; 2 uses
  %i.db = or disjoint i64 %.027, 4                ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !26
  %i.de = add i64 %i.dd, 1
  %i.df = uitofp i64 %i.de to float
  %i.dg = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.db
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !37
  %i.dj = uitofp i64 %i.di to float
  %i.dk = fdiv float %i.df, %i.dj                 ; 2 uses
  %i.dl = fcmp olt float %i.dk, %.1.3             ; 2 uses
  %.124.4 = select i1 %i.dl, i64 %i.db, i64 %.124.3
  %.1.4 = select i1 %i.dl, float %i.dk, float %.1.3 ; 2 uses
  %i.dm = or disjoint i64 %.027, 5                ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !26
  %i.dp = add i64 %i.do, 1
  %i.dq = uitofp i64 %i.dp to float
  %i.dr = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.dm
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !37
  %i.du = uitofp i64 %i.dt to float
  %i.dv = fdiv float %i.dq, %i.du                 ; 2 uses
  %i.dw = fcmp olt float %i.dv, %.1.4             ; 2 uses
  %.124.5 = select i1 %i.dw, i64 %i.dm, i64 %.124.4
  %.1.5 = select i1 %i.dw, float %i.dv, float %.1.4 ; 2 uses
  %i.dx = or disjoint i64 %.027, 6                ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !26
  %i.ea = add i64 %i.dz, 1
end_hunk_0
