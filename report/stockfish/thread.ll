Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/thread?download=true
inline.NumInlined: 2122
inline.NumDeleted: 1239
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextE:bb.a
  store ptr %1, ptr %i.hu, align 8, !tbaa !395
  store ptr %i.g, ptr %i.hv, align 8, !tbaa !176
  store ptr %0, ptr %i.hw, align 8, !tbaa !187
  store ptr %2, ptr %i.hx, align 8, !tbaa !143
  store ptr %16, ptr %i.hy, align 8, !tbaa !401
  store ptr %19, ptr %i.hz, align 8, !tbaa !401
  br i1 %i.jg, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 0, ptr %6, align 8, !tbaa !394
  %i.jl = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS3_10ThreadPool3setERKS4_NS3_6Search11SharedStateERKNS9_13SearchManager13UpdateContextEE3$_2EEvmOT_EUlvE_EEEEEE", i64 16), ptr %i.jl, align 8, !tbaa !93
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store ptr %1, ptr %i.jm, align 8, !tbaa !395
  %.sroa.4.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store ptr %20, ptr %.sroa.4.0..sroa_idx.i27, align 8, !tbaa !146
  %.sroa.5.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  store i64 %i.jk, ptr %.sroa.5.0..sroa_idx.i28, align 8, !tbaa !79
  store ptr %i.jl, ptr %5, align 8, !tbaa !397
  call void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 %5, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv) #26
  %i.jn = load ptr, ptr %5, align 8, !tbaa !397   ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i29, label %"_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS1_10ThreadPool3setERKS2_NS1_6Search11SharedStateERKNS7_13SearchManager13UpdateContextEE3$_2EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i", label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i30

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i30: ; preds = %bb.w
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !93
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dereferenceable(8) %i.jn) #26, !inline_history !386
  br label %"_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS1_10ThreadPool3setERKS2_NS1_6Search11SharedStateERKNS7_13SearchManager13UpdateContextEE3$_2EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i"

"_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS1_10ThreadPool3setERKS2_NS1_6Search11SharedStateERKNS7_13SearchManager13UpdateContextEE3$_2EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i": ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i30, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  %.sroa.0.0.copyload.i.i.i31 = load i64, ptr %6, align 8, !tbaa !79
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
  %i.jr = load ptr, ptr %i.i, align 8, !tbaa !155
  %i.js = load ptr, ptr %i.h, align 8, !tbaa !156
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = sub i64 %i.jt, %i.ju                    ; 2 uses
  %i.jw = ashr exact i64 %i.jv, 3                 ; 2 uses
  %i.jx = icmp ult i64 %i.jw, %i.an
  br i1 %i.jx, label %bb.t, label %._crit_edge61, !llvm.loop !387

._crit_edge61:                                    ; preds = %bb.z, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2ERKS6_.exit
  call void @_ZN9Stockfish10ThreadPool5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.jy = load ptr, ptr %i.h, align 8, !tbaa !151
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !130 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 48 ; 3 uses
  store ptr %i.ka, ptr %4, align 8, !tbaa !137
  %i.kb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.kc = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ka) #26 ; 2 uses
  %.not.i.i.i.i33 = icmp eq i32 %i.kc, 0
  br i1 %.not.i.i.i.i33, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i34, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge61
  call void @_ZSt20__throw_system_errori(i32 noundef %i.kc) #31
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i34:     ; preds = %._crit_edge61
  store i8 1, ptr %i.kb, align 8, !tbaa !138
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 88
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 169 ; 2 uses
  %.val.val2.i.i35 = load i8, ptr %i.ke, align 1, !tbaa !128, !range !139, !noundef !118
  %i.kf = trunc nuw i8 %.val.val2.i.i35 to i1
  br i1 %i.kf, label %.lr.ph.i.i38, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i36.thread"

.lr.ph.i.i38:                                     ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i34, %.lr.ph.i.i38
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.kd, ptr noundef nonnull align 8 dereferenceable(9) %4) #26
  %.val.val.i.i39 = load i8, ptr %i.ke, align 1, !tbaa !128, !range !139, !noundef !118
  %i.kg = trunc nuw i8 %.val.val.i.i39 to i1
  br i1 %i.kg, label %.lr.ph.i.i38, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i40", !llvm.loop !4

"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i40": ; preds = %.lr.ph.i.i38
  %.pre.i41 = load i8, ptr %i.kb, align 8, !tbaa !138, !range !139
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
  %i.kk = load ptr, ptr %i.gz, align 8, !tbaa !86
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %i.kk)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.kl = load ptr, ptr %i.fc, align 8, !tbaa !86
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef %i.kl)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.km = load ptr, ptr %14, align 8, !tbaa !126  ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ko = icmp eq ptr %i.km, %i.kn
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit42
  %i.kp = load i64, ptr %i.kn, align 8, !tbaa !125
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
define linkonce_odr dso_local void @_ZNK9Stockfish10NumaConfig35distribute_threads_among_numa_nodesEm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.119") align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !guid !405 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !188  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !189    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 48                  ; 3 uses
  %i.i = icmp eq i64 %i.g, 48
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !79
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false), !tbaa !79
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.h
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge30, label %.preheader.lr.ph

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
  %i.q = phi ptr [ null, %.preheader.lr.ph ], [ %i.bc, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 3 uses
  %i.r = phi ptr [ null, %.preheader.lr.ph ], [ %i.bd, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 3 uses
  %.01430 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bi, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %3 = phi ptr [ null, %.preheader.lr.ph ], [ %i.be, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 6 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !188  ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !189    ; 11 uses
  %.not31 = icmp eq ptr %i.s, %i.t
  br i1 %.not31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 48                  ; 3 uses
  %xtraiter = and i64 %i.x, 7                     ; 3 uses
  %i.y = icmp ult i64 %i.x, 8
  br i1 %i.y, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.x, -8
  br label %.lr.ph

._crit_edge30:                                    ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %.sink = phi ptr [ null, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ], [ %i.be, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %.sroa.020.052 = phi ptr [ %i.l, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ], [ %.sroa.020.050, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 2 uses
  %.sroa.9.047 = phi i64 [ %i.n, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ], [ %.sroa.9.048, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  store ptr %.sink, ptr %0, align 8
  %i.z = ptrtoint ptr %.sroa.020.052 to i64
  %i.aa = sub i64 %.sroa.9.047, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.020.052, i64 noundef %i.aa) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.028.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.es, %._crit_edge.loopexit.unr-lcssa ]
  %.01327.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.preheader ], [ %spec.select25.7, %._crit_edge.loopexit.unr-lcssa ]
  %.02326.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %spec.select.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.028.epil = phi i64 [ %i.al, %.lr.ph.epil ], [ %.028.epil.init, %.lr.ph.epil.preheader ] ; 4 uses
  %.01327.epil = phi float [ %spec.select25.epil, %.lr.ph.epil ], [ %.01327.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.02326.epil = phi i64 [ %spec.select.epil, %.lr.ph.epil ], [ %.02326.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.028.epil
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !79
  %i.ad = add i64 %i.ac, 1
  %i.ae = uitofp i64 %i.ad to float
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %.028.epil
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !89
  %i.ai = uitofp i64 %i.ah to float
  %i.aj = fdiv float %i.ae, %i.ai                 ; 2 uses
  %i.ak = fcmp olt float %i.aj, %.01327.epil      ; 2 uses
  %spec.select.epil = select i1 %i.ak, i64 %.028.epil, i64 %.02326.epil ; 2 uses
  %spec.select25.epil = select i1 %i.ak, float %i.aj, float %.01327.epil
  %i.al = add nuw i64 %.028.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !402

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.023.lcssa = phi i64 [ 0, %.preheader ], [ %spec.select.7, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil ] ; 3 uses
  %.not.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  store i64 %.023.lcssa, ptr %i.r, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.o, align 8, !tbaa !160
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

bb.g:                                             ; preds = %._crit_edge
  %i.an = ptrtoint ptr %i.q to i64
  %i.ao = ptrtoint ptr %3 to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 6 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.h, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  store ptr %3, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #31
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i16 = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %.not.i.i.i16)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #29 ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store i64 %.023.lcssa, ptr %i.ay, align 8, !tbaa !79
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.i, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %3, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %3, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.ap) #30
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ba, ptr %i.o, align 8, !tbaa !160
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av ; 2 uses
  store ptr %i.bb, ptr %i.p, align 8, !tbaa !177
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.bc = phi ptr [ %i.q, %bb.f ], [ %i.bb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ]
  %i.bd = phi ptr [ %i.am, %bb.f ], [ %i.ba, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ]
  %i.be = phi ptr [ %3, %bb.f ], [ %i.ax, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.023.lcssa ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !79
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !79
  %i.bi = add nuw i64 %.01430, 1                  ; 2 uses
  %exitcond32.not = icmp eq i64 %i.bi, %2
  br i1 %exitcond32.not, label %._crit_edge30, label %.preheader, !llvm.loop !403

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.028 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.es, %.lr.ph ] ; 11 uses
  %.01327 = phi float [ f0x7F7FFFFF, %.lr.ph.preheader.new ], [ %spec.select25.7, %.lr.ph ] ; 2 uses
  %.02326 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %spec.select.7, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.028
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !79
  %i.bl = add i64 %i.bk, 1
  %i.bm = uitofp i64 %i.bl to float
  %i.bn = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %.028
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !89
  %i.bq = uitofp i64 %i.bp to float
  %i.br = fdiv float %i.bm, %i.bq                 ; 2 uses
  %i.bs = fcmp olt float %i.br, %.01327           ; 2 uses
  %spec.select = select i1 %i.bs, i64 %.028, i64 %.02326
  %spec.select25 = select i1 %i.bs, float %i.br, float %.01327 ; 2 uses
  %i.bt = or disjoint i64 %.028, 1                ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !79
  %i.bw = add i64 %i.bv, 1
  %i.bx = uitofp i64 %i.bw to float
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.bt
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !89
  %i.cb = uitofp i64 %i.ca to float
  %i.cc = fdiv float %i.bx, %i.cb                 ; 2 uses
  %i.cd = fcmp olt float %i.cc, %spec.select25    ; 2 uses
  %spec.select.1 = select i1 %i.cd, i64 %i.bt, i64 %spec.select
  %spec.select25.1 = select i1 %i.cd, float %i.cc, float %spec.select25 ; 2 uses
  %i.ce = or disjoint i64 %.028, 2                ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !79
  %i.ch = add i64 %i.cg, 1
  %i.ci = uitofp i64 %i.ch to float
  %i.cj = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.ce
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !89
  %i.cm = uitofp i64 %i.cl to float
  %i.cn = fdiv float %i.ci, %i.cm                 ; 2 uses
  %i.co = fcmp olt float %i.cn, %spec.select25.1  ; 2 uses
  %spec.select.2 = select i1 %i.co, i64 %i.ce, i64 %spec.select.1
  %spec.select25.2 = select i1 %i.co, float %i.cn, float %spec.select25.1 ; 2 uses
  %i.cp = or disjoint i64 %.028, 3                ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !79
  %i.cs = add i64 %i.cr, 1
  %i.ct = uitofp i64 %i.cs to float
  %i.cu = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.cp
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !89
  %i.cx = uitofp i64 %i.cw to float
  %i.cy = fdiv float %i.ct, %i.cx                 ; 2 uses
  %i.cz = fcmp olt float %i.cy, %spec.select25.2  ; 2 uses
  %spec.select.3 = select i1 %i.cz, i64 %i.cp, i64 %spec.select.2
  %spec.select25.3 = select i1 %i.cz, float %i.cy, float %spec.select25.2 ; 2 uses
  %i.da = or disjoint i64 %.028, 4                ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !79
  %i.dd = add i64 %i.dc, 1
  %i.de = uitofp i64 %i.dd to float
  %i.df = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.da
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !89
  %i.di = uitofp i64 %i.dh to float
  %i.dj = fdiv float %i.de, %i.di                 ; 2 uses
  %i.dk = fcmp olt float %i.dj, %spec.select25.3  ; 2 uses
  %spec.select.4 = select i1 %i.dk, i64 %i.da, i64 %spec.select.3
  %spec.select25.4 = select i1 %i.dk, float %i.dj, float %spec.select25.3 ; 2 uses
  %i.dl = or disjoint i64 %.028, 5                ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !79
  %i.do = add i64 %i.dn, 1
  %i.dp = uitofp i64 %i.do to float
  %i.dq = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.dl
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !89
  %i.dt = uitofp i64 %i.ds to float
  %i.du = fdiv float %i.dp, %i.dt                 ; 2 uses
  %i.dv = fcmp olt float %i.du, %spec.select25.4  ; 2 uses
  %spec.select.5 = select i1 %i.dv, i64 %i.dl, i64 %spec.select.4
  %spec.select25.5 = select i1 %i.dv, float %i.du, float %spec.select25.4 ; 2 uses
  %i.dw = or disjoint i64 %.028, 6                ; 3 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !79
  %i.dz = add i64 %i.dy, 1
  %i.ea = uitofp i64 %i.dz to float
  %i.eb = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.dw
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !89
  %i.ee = uitofp i64 %i.ed to float
  %i.ef = fdiv float %i.ea, %i.ee                 ; 2 uses
  %i.eg = fcmp olt float %i.ef, %spec.select25.5  ; 2 uses
  %spec.select.6 = select i1 %i.eg, i64 %i.dw, i64 %spec.select.5
  %spec.select25.6 = select i1 %i.eg, float %i.ef, float %spec.select25.5 ; 2 uses
  %i.eh = or disjoint i64 %.028, 7                ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !79
  %i.ek = add i64 %i.ej, 1
  %i.el = uitofp i64 %i.ek to float
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.eh
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !89
  %i.ep = uitofp i64 %i.eo to float
  %i.eq = fdiv float %i.el, %i.ep                 ; 2 uses
  %i.er = fcmp olt float %i.eq, %spec.select25.6  ; 2 uses
  %spec.select.7 = select i1 %i.er, i64 %i.eh, i64 %spec.select.6 ; 3 uses
  %spec.select25.7 = select i1 %i.er, float %i.eq, float %spec.select25.6 ; 2 uses
  %i.es = add nuw i64 %.028, 8                    ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !404

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.thread, %._crit_edge30, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !guid !407 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !79     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !79
  %i.g = icmp ult i64 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !90 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, label %bb.b, !llvm.loop !8

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !79
  %i.k = icmp ult i64 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !79
  store i64 %i.n, ptr %i.m, align 8, !tbaa !191
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !192
  %i.p = tail call { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i64, ptr %i.m, align 8, !tbaa !79
  %i.v = load i64, ptr %i.t, align 8, !tbaa !79
  %i.w = icmp ult i64 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.x = phi i1 [ %i.w, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #26
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !89
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !89
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #30
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.c
end_hunk_0
