Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/thread?download=true
inline.NumInlined: 2122
inline.NumDeleted: 1239
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextE:bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.kc) #31
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i34:     ; preds = %._crit_edge61
  store i8 1, ptr %i.kb, align 8, !tbaa !96
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 88
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 169 ; 2 uses
  %.val.val2.i.i35 = load i8, ptr %i.ke, align 1, !tbaa !86, !range !97, !noundef !76
  %i.kf = trunc nuw i8 %.val.val2.i.i35 to i1
  br i1 %i.kf, label %.lr.ph.i.i38, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i36.thread"

.lr.ph.i.i38:                                     ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i34, %.lr.ph.i.i38
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.kd, ptr noundef nonnull align 8 dereferenceable(9) %4) #26
  %.val.val.i.i39 = load i8, ptr %i.ke, align 1, !tbaa !86, !range !97, !noundef !76
  %i.kg = trunc nuw i8 %.val.val.i.i39 to i1
  br i1 %i.kg, label %.lr.ph.i.i38, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i40", !llvm.loop !4

"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i40": ; preds = %.lr.ph.i.i38
  %.pre.i41 = load i8, ptr %i.kb, align 8, !tbaa !96, !range !97
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
  %i.kk = load ptr, ptr %i.gz, align 8, !tbaa !44
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %i.kk)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.kl = load ptr, ptr %i.fc, align 8, !tbaa !44
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef %i.kl)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.km = load ptr, ptr %14, align 8, !tbaa !84   ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ko = icmp eq ptr %i.km, %i.kn
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit42
  %i.kp = load i64, ptr %i.kn, align 8, !tbaa !83
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !147    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 48                  ; 3 uses
  %i.i = icmp eq i64 %i.g, 48
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !37
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false), !tbaa !37
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
  %i.q = phi ptr [ null, %.preheader.lr.ph ], [ %i.bc, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 5 uses
  %i.r = phi ptr [ null, %.preheader.lr.ph ], [ %i.bd, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 3 uses
  %i.s = phi ptr [ null, %.preheader.lr.ph ], [ %i.be, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 3 uses
  %.01429 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bi, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !146  ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !147    ; 11 uses
  %.not31 = icmp eq ptr %i.t, %i.u
  br i1 %.not31, label %._crit_edge, label %.lr.ph.preheader

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

._crit_edge30:                                    ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
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
  %.028.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.es, %._crit_edge.loopexit.unr-lcssa ]
  %.01327.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.preheader ], [ %spec.select25.7, %._crit_edge.loopexit.unr-lcssa ]
  %.02326.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %spec.select.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.028.epil = phi i64 [ %i.am, %.lr.ph.epil ], [ %.028.epil.init, %.lr.ph.epil.preheader ] ; 4 uses
  %.01327.epil = phi float [ %spec.select25.epil, %.lr.ph.epil ], [ %.01327.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.02326.epil = phi i64 [ %spec.select.epil, %.lr.ph.epil ], [ %.02326.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.028.epil
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !37
  %i.ae = add i64 %i.ad, 1
  %i.af = uitofp i64 %i.ae to float
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.028.epil
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !47
  %i.aj = uitofp i64 %i.ai to float
  %i.ak = fdiv float %i.af, %i.aj                 ; 2 uses
  %i.al = fcmp olt float %i.ak, %.01327.epil      ; 2 uses
  %spec.select.epil = select i1 %i.al, i64 %.028.epil, i64 %.02326.epil ; 2 uses
  %spec.select25.epil = select i1 %i.al, float %i.ak, float %.01327.epil
  %i.am = add nuw i64 %.028.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !344

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.023.lcssa = phi i64 [ 0, %.preheader ], [ %spec.select.7, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil ] ; 3 uses
  %.not.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  store i64 %.023.lcssa, ptr %i.s, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.o, align 8, !tbaa !118
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

bb.g:                                             ; preds = %._crit_edge
  %i.ao = ptrtoint ptr %i.r to i64
  %i.ap = ptrtoint ptr %i.q to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 7 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.h, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #31
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.as = ashr exact i64 %i.aq, 3
  %mul2.i.i = ashr exact i64 %i.aq, 2
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.at = icmp ult i64 %3, %i.as
  %i.au = tail call i64 @llvm.umin.i64(i64 %3, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #29 ; 5 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.aq ; 2 uses
  store i64 %.023.lcssa, ptr %i.ay, align 8, !tbaa !37
  %i.az = icmp sgt i64 %i.aq, 0
  br i1 %i.az, label %bb.i, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.q, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.aq) #30
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ax, ptr %0, align 8, !tbaa !117
  store ptr %i.ba, ptr %i.o, align 8, !tbaa !118
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av ; 2 uses
  store ptr %i.bb, ptr %i.p, align 8, !tbaa !135
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.bc = phi ptr [ %i.q, %bb.f ], [ %i.ax, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ]
  %i.bd = phi ptr [ %i.r, %bb.f ], [ %i.bb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ]
  %i.be = phi ptr [ %i.an, %bb.f ], [ %i.ba, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.023.lcssa ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !37
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !37
  %i.bi = add nuw i64 %.01429, 1                  ; 2 uses
  %exitcond32.not = icmp eq i64 %i.bi, %2
  br i1 %exitcond32.not, label %._crit_edge30, label %.preheader, !llvm.loop !345

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.028 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.es, %.lr.ph ] ; 11 uses
  %.01327 = phi float [ f0x7F7FFFFF, %.lr.ph.preheader.new ], [ %spec.select25.7, %.lr.ph ] ; 2 uses
  %.02326 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %spec.select.7, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.028
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !37
  %i.bl = add i64 %i.bk, 1
  %i.bm = uitofp i64 %i.bl to float
  %i.bn = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.028
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !47
  %i.bq = uitofp i64 %i.bp to float
  %i.br = fdiv float %i.bm, %i.bq                 ; 2 uses
  %i.bs = fcmp olt float %i.br, %.01327           ; 2 uses
  %spec.select = select i1 %i.bs, i64 %.028, i64 %.02326
  %spec.select25 = select i1 %i.bs, float %i.br, float %.01327 ; 2 uses
  %i.bt = or disjoint i64 %.028, 1                ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !37
  %i.bw = add i64 %i.bv, 1
  %i.bx = uitofp i64 %i.bw to float
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.bt
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !47
  %i.cb = uitofp i64 %i.ca to float
  %i.cc = fdiv float %i.bx, %i.cb                 ; 2 uses
  %i.cd = fcmp olt float %i.cc, %spec.select25    ; 2 uses
  %spec.select.1 = select i1 %i.cd, i64 %i.bt, i64 %spec.select
  %spec.select25.1 = select i1 %i.cd, float %i.cc, float %spec.select25 ; 2 uses
  %i.ce = or disjoint i64 %.028, 2                ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !37
  %i.ch = add i64 %i.cg, 1
  %i.ci = uitofp i64 %i.ch to float
  %i.cj = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.ce
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !47
  %i.cm = uitofp i64 %i.cl to float
  %i.cn = fdiv float %i.ci, %i.cm                 ; 2 uses
  %i.co = fcmp olt float %i.cn, %spec.select25.1  ; 2 uses
  %spec.select.2 = select i1 %i.co, i64 %i.ce, i64 %spec.select.1
  %spec.select25.2 = select i1 %i.co, float %i.cn, float %spec.select25.1 ; 2 uses
  %i.cp = or disjoint i64 %.028, 3                ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !37
  %i.cs = add i64 %i.cr, 1
  %i.ct = uitofp i64 %i.cs to float
  %i.cu = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.cp
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !47
  %i.cx = uitofp i64 %i.cw to float
  %i.cy = fdiv float %i.ct, %i.cx                 ; 2 uses
  %i.cz = fcmp olt float %i.cy, %spec.select25.2  ; 2 uses
  %spec.select.3 = select i1 %i.cz, i64 %i.cp, i64 %spec.select.2
  %spec.select25.3 = select i1 %i.cz, float %i.cy, float %spec.select25.2 ; 2 uses
  %i.da = or disjoint i64 %.028, 4                ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !37
  %i.dd = add i64 %i.dc, 1
  %i.de = uitofp i64 %i.dd to float
  %i.df = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.da
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !47
  %i.di = uitofp i64 %i.dh to float
  %i.dj = fdiv float %i.de, %i.di                 ; 2 uses
  %i.dk = fcmp olt float %i.dj, %spec.select25.3  ; 2 uses
  %spec.select.4 = select i1 %i.dk, i64 %i.da, i64 %spec.select.3
  %spec.select25.4 = select i1 %i.dk, float %i.dj, float %spec.select25.3 ; 2 uses
  %i.dl = or disjoint i64 %.028, 5                ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !37
  %i.do = add i64 %i.dn, 1
  %i.dp = uitofp i64 %i.do to float
  %i.dq = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.dl
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !47
  %i.dt = uitofp i64 %i.ds to float
  %i.du = fdiv float %i.dp, %i.dt                 ; 2 uses
  %i.dv = fcmp olt float %i.du, %spec.select25.4  ; 2 uses
  %spec.select.5 = select i1 %i.dv, i64 %i.dl, i64 %spec.select.4
  %spec.select25.5 = select i1 %i.dv, float %i.du, float %spec.select25.4 ; 2 uses
  %i.dw = or disjoint i64 %.028, 6                ; 3 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !37
  %i.dz = add i64 %i.dy, 1
  %i.ea = uitofp i64 %i.dz to float
  %i.eb = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.dw
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !47
  %i.ee = uitofp i64 %i.ed to float
  %i.ef = fdiv float %i.ea, %i.ee                 ; 2 uses
  %i.eg = fcmp olt float %i.ef, %spec.select25.5  ; 2 uses
  %spec.select.6 = select i1 %i.eg, i64 %i.dw, i64 %spec.select.5
  %spec.select25.6 = select i1 %i.eg, float %i.ef, float %spec.select25.5 ; 2 uses
  %i.eh = or disjoint i64 %.028, 7                ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !37
  %i.ek = add i64 %i.ej, 1
  %i.el = uitofp i64 %i.ek to float
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.eh
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !47
  %i.ep = uitofp i64 %i.eo to float
  %i.eq = fdiv float %i.el, %i.ep                 ; 2 uses
  %i.er = fcmp olt float %i.eq, %spec.select25.6  ; 2 uses
  %spec.select.7 = select i1 %i.er, i64 %i.eh, i64 %spec.select.6 ; 3 uses
  %spec.select25.7 = select i1 %i.er, float %i.eq, float %spec.select25.6 ; 2 uses
  %i.es = add nuw i64 %.028, 8                    ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !346

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.thread, %._crit_edge30, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !37     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !37
  %i.g = icmp ult i64 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, label %bb.b, !llvm.loop !8

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !37
  %i.k = icmp ult i64 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !37
end_hunk_0
begin_hunk_1_@_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm:bb.a
bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #30
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !37     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !37
  %i.g = icmp ult i64 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, label %bb.b, !llvm.loop !8

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !37
  %i.k = icmp ult i64 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !37
  store i64 %i.n, ptr %i.m, align 8, !tbaa !149
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !150
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
  %i.u = load i64, ptr %i.m, align 8, !tbaa !37
  %i.v = load i64, ptr %i.t, align 8, !tbaa !37
  %i.w = icmp ult i64 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.x = phi i1 [ %i.w, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #26
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !47
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !47
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #30
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ab
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_2clEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #3 align 2 !type !365 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %2 = alloca %"class.Stockfish::OptionalThreadToNumaNodeBinder", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !366, !nonnull !76, !align !77
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNSt10unique_ptrIN9Stockfish6Search13SearchManagerESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN9Stockfish6Search17NullSearchManagerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN9Stockfish6Search17NullSearchManagerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29, !noalias !367 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9Stockfish6Search17NullSearchManagerE, i64 16), ptr %i.e, align 8, !tbaa !51, !noalias !367
  br label %.critedge10

_ZNSt10unique_ptrIN9Stockfish6Search13SearchManagerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !368, !nonnull !76, !align !77
  %i.h = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #29, !noalias !369 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9Stockfish6Search13SearchManagerE, i64 16), ptr %i.h, align 8, !tbaa !51, !noalias !369
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 -1, ptr %i.i, align 8, !tbaa !370, !noalias !369
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i8 0, ptr %i.j, align 8, !tbaa !371, !noalias !369
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store ptr %i.g, ptr %i.k, align 8, !tbaa !141, !noalias !369
  br label %.critedge10

.critedge10:                                      ; preds = %_ZNSt10unique_ptrIN9Stockfish6Search17NullSearchManagerESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN9Stockfish6Search13SearchManagerESt14default_deleteIS2_EED2Ev.exit
  %.sroa.022.024 = phi ptr [ %i.e, %_ZNSt10unique_ptrIN9Stockfish6Search17NullSearchManagerESt14default_deleteIS2_EED2Ev.exit ], [ %i.h, %_ZNSt10unique_ptrIN9Stockfish6Search13SearchManagerESt14default_deleteIS2_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !372, !nonnull !76
  %i.n = load i8, ptr %i.m, align 1, !tbaa !133, !range !97, !noundef !76
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !373, !nonnull !76, !align !77
  br label %bb.c

bb.c:                                             ; preds = %.critedge10, %bb.b
  %.sink26 = phi ptr [ %i.q, %bb.b ], [ null, %.critedge10 ]
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %.in, align 8, !tbaa !374, !nonnull !76, !align !77 ; 2 uses
  %.sink = load i64, ptr %i.r, align 8, !tbaa !37
  store ptr %.sink26, ptr %2, align 8, !tbaa !153
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sink, ptr %i.s, align 8, !tbaa !154
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !375, !nonnull !76, !align !77
  %i.w = load ptr, ptr %0, align 8, !tbaa !366, !nonnull !76, !align !77
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !376, !nonnull !76, !align !77
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.r) ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !37 ; 2 uses
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !377, !nonnull !76, !align !77
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !374, !nonnull !76, !align !77
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ah = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #29, !noalias !378 ; 3 uses
  %i.ai = ptrtoint ptr %.sroa.022.024 to i64
  store i64 %i.ai, ptr %1, align 8, !tbaa !111, !noalias !378
  %i.aj = load i64, ptr %i.w, align 8, !tbaa !37, !noalias !378
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !37, !noalias !378
  call void @_ZN9Stockfish6ThreadC2ERNS_6Search11SharedStateESt10unique_ptrINS1_14ISearchManagerESt14default_deleteIS5_EEmmmNS_30OptionalThreadToNumaNodeBinderE(ptr noundef nonnull align 8 dereferenceable(192) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 %1, i64 noundef %i.aj, i64 noundef %i.ab, i64 noundef %i.ak, ptr noundef nonnull byval(%"class.Stockfish::OptionalThreadToNumaNodeBinder") align 8 %2), !noalias !378
  %i.al = load ptr, ptr %1, align 8, !tbaa !111, !noalias !378 ; 3 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_ZSt11make_uniqueIN9Stockfish6ThreadEJRNS0_6Search11SharedStateESt10unique_ptrINS2_14ISearchManagerESt14default_deleteIS6_EERKmmRmRNS0_30OptionalThreadToNumaNodeBinderEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %_ZNKSt14default_deleteIN9Stockfish6Search14ISearchManagerEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN9Stockfish6Search14ISearchManagerEEclEPS2_.exit.i.i: ; preds = %bb.c
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !51, !noalias !378
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !378
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #26, !noalias !378, !inline_history !355
  br label %_ZSt11make_uniqueIN9Stockfish6ThreadEJRNS0_6Search11SharedStateESt10unique_ptrINS2_14ISearchManagerESt14default_deleteIS6_EERKmmRmRNS0_30OptionalThreadToNumaNodeBinderEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN9Stockfish6ThreadEJRNS0_6Search11SharedStateESt10unique_ptrINS2_14ISearchManagerESt14default_deleteIS6_EERKmmRmRNS0_30OptionalThreadToNumaNodeBinderEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN9Stockfish6Search14ISearchManagerEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !113 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !379
  %.not.i13 = icmp eq ptr %i.aq, %i.as
  br i1 %.not.i13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt11make_uniqueIN9Stockfish6ThreadEJRNS0_6Search11SharedStateESt10unique_ptrINS2_14ISearchManagerESt14default_deleteIS6_EERKmmRmRNS0_30OptionalThreadToNumaNodeBinderEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.at = ptrtoint ptr %i.ah to i64
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !88
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.au, ptr %i.ap, align 8, !tbaa !113
  br label %_ZNSt10unique_ptrIN9Stockfish6Search14ISearchManagerESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %_ZSt11make_uniqueIN9Stockfish6ThreadEJRNS0_6Search11SharedStateESt10unique_ptrINS2_14ISearchManagerESt14default_deleteIS6_EERKmmRmRNS0_30OptionalThreadToNumaNodeBinderEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.av = load ptr, ptr %i.t, align 8, !tbaa !114 ; 12 uses
  %i.aw = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 4 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 4 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #31
  unreachable

_ZNKSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.ba = ashr exact i64 %i.ay, 3
  %mul2.i = ashr exact i64 %i.ay, 2
  %3 = call i64 @llvm.umax.i64(i64 %mul2.i, i64 1) ; 2 uses
  %i.bb = icmp ult i64 %3, %i.ba
  %i.bc = call i64 @llvm.umin.i64(i64 %3, i64 1152921504606846975)
  %i.bd = select i1 %i.bb, i64 1152921504606846975, i64 %i.bc ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #29 ; 12 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ay
  %i.bh = ptrtoint ptr %i.ah to i64
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !88
  %.not10.i.i.i.i = icmp eq ptr %i.av, %i.aq
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bi = add i64 %i.aw, -8
  %i.bj = sub i64 %i.bi, %i.ax                    ; 3 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bj, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bm = add i64 %i.aw, -8
  %i.bn = sub i64 %i.bm, %i.ax
  %i.bo = and i64 %i.bn, -8
  %i.bp = add i64 %i.bo, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bf, i64 %i.bp
  %scevgep30 = getelementptr i8, ptr %i.av, i64 %i.bp
  %bound0 = icmp ult ptr %i.bf, %scevgep30
  %bound1 = icmp ult ptr %i.av, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check31 = icmp ult i64 %i.bj, 248
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bq = and i64 %i.bl, 24
  %n.vec = and i64 %i.bl, 4611686018427387872     ; 4 uses
  %i.br = shl i64 %n.vec, 3                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bf, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.av, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bf, i64 %i.bu ; 4 uses
  %next.gep32 = getelementptr i8, ptr %i.av, i64 %i.bu ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.bv = getelementptr i8, ptr %next.gep32, i64 64
  %i.bw = getelementptr i8, ptr %next.gep32, i64 128
  %i.bx = getelementptr i8, ptr %next.gep32, i64 192
  %wide.load = load <8 x i64>, ptr %next.gep32, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  %wide.load33.a = load <8 x i64>, ptr %i.bv, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  %wide.load34.a = load <8 x i64>, ptr %i.bw, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  %wide.load35 = load <8 x i64>, ptr %i.bx, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  %i.by = getelementptr i8, ptr %next.gep, i64 64
  %i.bz = getelementptr i8, ptr %next.gep, i64 128
  %i.ca = getelementptr i8, ptr %next.gep, i64 192
  store <8 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !88, !alias.scope !383, !noalias !382
  store <8 x i64> %wide.load33.a, ptr %i.by, align 8, !tbaa !88, !alias.scope !383, !noalias !382
  store <8 x i64> %wide.load34.a, ptr %i.bz, align 8, !tbaa !88, !alias.scope !383, !noalias !382
  store <8 x i64> %wide.load35, ptr %i.ca, align 8, !tbaa !88, !alias.scope !383, !noalias !382
  %i.cb = getelementptr i8, ptr %next.gep32, i64 64
  %i.cc = getelementptr i8, ptr %next.gep32, i64 128
  %i.cd = getelementptr i8, ptr %next.gep32, i64 192
  store <8 x ptr> splat (ptr null), ptr %next.gep32, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  store <8 x ptr> splat (ptr null), ptr %i.cb, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  store <8 x ptr> splat (ptr null), ptr %i.cc, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  store <8 x ptr> splat (ptr null), ptr %i.cd, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !362

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !132

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %i.bl, 4611686018427387896   ; 3 uses
  %i.cf = shl i64 %n.vec37, 3                     ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bf, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.av, i64 %i.cf
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %i.ci = shl i64 %index38, 3                     ; 2 uses
  %next.gep39.a = getelementptr i8, ptr %i.bf, i64 %i.ci
  %next.gep40 = getelementptr i8, ptr %i.av, i64 %i.ci ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %wide.load41 = load <8 x i64>, ptr %next.gep40, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  store <8 x i64> %wide.load41, ptr %next.gep39.a, align 8, !tbaa !88, !alias.scope !383, !noalias !382
  store <8 x ptr> splat (ptr null), ptr %next.gep40, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  %index.next42 = add nuw i64 %index38, 8         ; 2 uses
  %i.cj = icmp eq i64 %index.next42, %n.vec37
  br i1 %i.cj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !363

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.bl, %n.vec37
  br i1 %cmp.n43, label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bf, %iter.check ], [ %i.bf, %vector.memcheck ], [ %i.bs, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.av, %iter.check ], [ %i.av, %vector.memcheck ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ch, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.ck = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !88, !alias.scope !381, !noalias !380
  store i64 %i.ck, ptr %.012.i.i.i.i, align 8, !tbaa !88, !alias.scope !380, !noalias !381
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !88, !alias.scope !381, !noalias !380
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cl, %i.aq
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !364

_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bf, %_ZNKSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.cg, %vec.epilog.middle.block ], [ %i.bs, %middle.block ], [ %i.cm, %.lr.ph.i.i.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.av, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.co = load ptr, ptr %i.ar, align 8, !tbaa !379
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.cq) #30
  br label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.g
  store ptr %i.bf, ptr %i.t, align 8, !tbaa !114
  store ptr %i.cn, ptr %i.ap, align 8, !tbaa !113
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.cr, ptr %i.ar, align 8, !tbaa !379
  br label %_ZNSt10unique_ptrIN9Stockfish6Search14ISearchManagerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN9Stockfish6Search14ISearchManagerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish10ThreadPool5clearEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 6 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !113  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !114  ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.b:                                             ; preds = %_ZN9Stockfish6Thread12clear_workerEv.exit
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !109  ; 3 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %.not1416 = icmp eq ptr %i.i, %i.j
  br i1 %.not1416, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.e

bb.c:                                             ; preds = %.preheader, %_ZN9Stockfish6Thread12clear_workerEv.exit
  %.sroa.011.015 = phi ptr [ %i.d, %.preheader ], [ %i.p, %_ZN9Stockfish6Thread12clear_workerEv.exit ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.011.015, align 8, !tbaa !88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.m = ptrtoint ptr %i.l to i64
  store i64 0, ptr %i.h, align 8
  store i64 %i.m, ptr %2, align 8, !tbaa !88
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread12clear_workerEvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.g, align 8, !tbaa !91
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread12clear_workerEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation", ptr %i.f, align 8, !tbaa !92
  call void @_ZN9Stockfish6Thread14run_custom_jobESt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(192) %i.l, ptr noundef nonnull align 8 %2)
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !92   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN9Stockfish6Thread12clear_workerEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #26, !inline_history !384 ; 0 uses
  br label %_ZN9Stockfish6Thread12clear_workerEv.exit

_ZN9Stockfish6Thread12clear_workerEv.exit:        ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.c
  br i1 %.not, label %bb.b, label %bb.c
end_hunk_1
begin_hunk_2_@_ZN9Stockfish6Search6Worker5clearEv
; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

declare void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeImSt4pairIKmN9Stockfish15SharedHistoriesEESt10_Select1stIS4_ESt4lessImESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeImSt4pairIKmN9Stockfish15SharedHistoriesEESt10_Select1stIS4_ESt4lessImESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeImSt4pairIKmN9Stockfish15SharedHistoriesEESt10_Select1stIS4_ESt4lessImESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmN9Stockfish15SharedHistoriesEESt10_Select1stIS4_ESt4lessImESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !282  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEELi8192EED2Ev.exit.i.i.i.i, label %_ZNK9Stockfish21LargePageArrayDeleterINS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEEEclEPS4_.exit.i.i.i.i.i.i

_ZNK9Stockfish21LargePageArrayDeleterINS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEEEclEPS4_.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  tail call void @_ZN9Stockfish24aligned_large_pages_freeEPv(ptr noundef nonnull %i.g) #26, !inline_history !10
  br label %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEELi8192EED2Ev.exit.i.i.i.i

_ZN9Stockfish8DynStatsINS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEELi8192EED2Ev.exit.i.i.i.i: ; preds = %_ZNK9Stockfish21LargePageArrayDeleterINS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEEEclEPS4_.exit.i.i.i.i.i.i, %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !283  ; 2 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN9Stockfish15SharedHistoriesEESt10_Select1stIS4_ESt4lessImESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit, label %_ZNK9Stockfish21LargePageArrayDeleterINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEEEclEPS4_.exit.i.i.i.i.i.i

_ZNK9Stockfish21LargePageArrayDeleterINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEEEclEPS4_.exit.i.i.i.i.i.i: ; preds = %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEELi8192EED2Ev.exit.i.i.i.i
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -8
  tail call void @_ZN9Stockfish24aligned_large_pages_freeEPv(ptr noundef nonnull %i.j) #26, !inline_history !11
  br label %_ZNSt8_Rb_treeImSt4pairIKmN9Stockfish15SharedHistoriesEESt10_Select1stIS4_ESt4lessImESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit

_ZNSt8_Rb_treeImSt4pairIKmN9Stockfish15SharedHistoriesEESt10_Select1stIS4_ESt4lessImESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit: ; preds = %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEELi8192EED2Ev.exit.i.i.i.i, %_ZNK9Stockfish21LargePageArrayDeleterINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEEEclEPS4_.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 88) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !471

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN9Stockfish15SharedHistoriesEESt10_Select1stIS4_ESt4lessImESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit, %bb.a
  ret void
}

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread24_M_thread_deps_never_runEv() #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS3_10ThreadPool3setERKS4_NS3_6Search11SharedStateERKNS9_13SearchManager13UpdateContextEE3$_1EEvmOT_EUlvE_EEEEED0Ev"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS3_10ThreadPool3setERKS4_NS3_6Search11SharedStateERKNS9_13SearchManager13UpdateContextEE3$_1EEvmOT_EUlvE_EEEEE6_M_runEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::tuple.227", align 8    ; 4 uses
  %2 = alloca %"class.std::tuple.230", align 8    ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !477
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !478
  %i.f = tail call i64 @_ZNK9Stockfish10NumaConfig32bind_current_thread_to_numa_nodeEm(ptr noundef nonnull align 8 dereferenceable(81) %i.c, i64 noundef %i.e) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !479, !nonnull !76, !align !77 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !481, !nonnull !76, !align !77
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !136, !nonnull !76, !align !77 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !482, !nonnull !76, !align !77 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !483, !nonnull !76, !align !77
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37   ; 2 uses
  %i.q = icmp ugt i64 %i.p, 1
  %i.r = add i64 %i.p, -1
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = xor i64 %i.s, 63
  %i.u = shl i64 2, %i.t
  %i.v = select i1 %i.q, i64 %i.u, i64 1
  store i64 %i.v, ptr %i.a, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !44   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.a
  %i.z = load i64, ptr %i.m, align 8, !tbaa !37   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.19.i.i.i.i.i.i.i.i.i.i, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !37
  %i.ac = icmp ult i64 %i.ab, %i.z                ; 2 uses
  %.19.i.i.i.i.i.i.i.i.i.i = select i1 %i.ac, ptr %.0811.i.i.i.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.ac, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3mapImN9Stockfish15SharedHistoriesESt4lessImESaISt4pairIKmS1_EEE11lower_boundERS5_.exit.i.i.i.i.i.i.i, label %bb.b, !llvm.loop !7

_ZNSt3mapImN9Stockfish15SharedHistoriesESt4lessImESaISt4pairIKmS1_EEE11lower_boundERS5_.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.ad = icmp eq ptr %.19.i.i.i.i.i.i.i.i.i.i, %i.y
  br i1 %i.ad, label %.critedge.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImN9Stockfish15SharedHistoriesESt4lessImESaISt4pairIKmS1_EEE11lower_boundERS5_.exit.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !37
  %i.ag = icmp ult i64 %i.z, %i.af
  br i1 %i.ag, label %.critedge.i.i.i.i.i.i.i, label %"_ZNSt6thread8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS2_10ThreadPool3setERKS3_NS2_6Search11SharedStateERKNS8_13SearchManager13UpdateContextEE3$_1EEvmOT_EUlvE_EEEclEv.exit"

.critedge.i.i.i.i.i.i.i:                          ; preds = %bb.c, %_ZNSt3mapImN9Stockfish15SharedHistoriesESt4lessImESaISt4pairIKmS1_EEE11lower_boundERS5_.exit.i.i.i.i.i.i.i, %bb.a
  %.08.lcssa.i.i.i14.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i.i.i.i, %bb.c ], [ %.19.i.i.i.i.i.i.i.i.i.i, %_ZNSt3mapImN9Stockfish15SharedHistoriesESt4lessImESaISt4pairIKmS1_EEE11lower_boundERS5_.exit.i.i.i.i.i.i.i ], [ %i.y, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.m, ptr %1, align 8, !tbaa !134, !alias.scope !484
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.a, ptr %2, align 8, !tbaa !134, !alias.scope !485
  %i.ah = call ptr @_ZNSt8_Rb_treeImSt4pairIKmN9Stockfish15SharedHistoriesEESt10_Select1stIS4_ESt4lessImESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESF_IJOmEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr %.08.lcssa.i.i.i14.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %"_ZNSt6thread8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS2_10ThreadPool3setERKS3_NS2_6Search11SharedStateERKNS8_13SearchManager13UpdateContextEE3$_1EEvmOT_EUlvE_EEEclEv.exit"

"_ZNSt6thread8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS2_10ThreadPool3setERKS3_NS2_6Search11SharedStateERKNS8_13SearchManager13UpdateContextEE3$_1EEvmOT_EUlvE_EEEclEv.exit": ; preds = %bb.c, %.critedge.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @_ZSt9terminatev() local_unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS3_10ThreadPool3setERKS4_NS3_6Search11SharedStateERKNS9_13SearchManager13UpdateContextEE3$_2EEvmOT_EUlvE_EEEEED0Ev"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS3_10ThreadPool3setERKS4_NS3_6Search11SharedStateERKNS9_13SearchManager13UpdateContextEE3$_2EEvmOT_EUlvE_EEEEE6_M_runEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !487
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !488
  %i.e = tail call i64 @_ZNK9Stockfish10NumaConfig32bind_current_thread_to_numa_nodeEm(ptr noundef nonnull align 8 dereferenceable(81) %i.b, i64 noundef %i.d) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !489, !nonnull !76, !align !77
  tail call fastcc void @"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_2clEv"(ptr noundef nonnull align 8 dereferenceable(72) %i.g)
  ret void
}

declare noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !209    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #31
  unreachable

_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 128102389400760775)
  %i.k = select i1 %i.i, i64 128102389400760775, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 72
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #29 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 10 uses
  %.sroa.0.0.copyload.i = load i16, ptr %2, align 2, !tbaa !191
  store i64 0, ptr %i.p, align 8, !tbaa !182
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store <4 x i32> <i32 -32001, i32 -32001, i32 -32001, i32 -1024064001>, ptr %i.q, align 8, !tbaa !183
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 -32001, ptr %i.r, align 8, !tbaa !184
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store i8 0, ptr %i.s, align 4, !tbaa !185
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 29
  store i8 0, ptr %i.t, align 1, !tbaa !186
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i32 0, ptr %i.u, align 8, !tbaa !187
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  store i32 0, ptr %i.v, align 4, !tbaa !188
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.x = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #29 ; 3 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !189
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr %i.y, ptr %i.z, align 8, !tbaa !190
  store i16 %.sroa.0.0.copyload.i, ptr %i.x, align 2, !tbaa !191
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !192
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %i.o, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i, i64 44, i1 false), !alias.scope !498
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !290, !alias.scope !497, !noalias !496
  store <2 x ptr> %i.ad, ptr %i.ab, align 8, !tbaa !290, !alias.scope !496, !noalias !497
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !190, !alias.scope !497, !noalias !496
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !190, !alias.scope !496, !noalias !497
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false), !alias.scope !497, !noalias !496
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !13

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ai, %.lr.ph.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ar, %.lr.ph.i.i.i17 ], [ %i.aj, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i19 = phi ptr [ %i.aq, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i19, i64 44, i1 false), !alias.scope !501
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !290, !alias.scope !500, !noalias !499
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !290, !alias.scope !499, !noalias !500
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !190, !alias.scope !500, !noalias !499
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !190, !alias.scope !499, !noalias !500
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false), !alias.scope !500, !noalias !499
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aq, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !13

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aj, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ar, %.lr.ph.i.i.i17 ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !176
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.av) #30
  br label %_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !209
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !175
  %i.aw = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %i.k
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !176
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !209    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #31
  unreachable

_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 128102389400760775)
  %i.k = select i1 %i.i, i64 128102389400760775, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 72
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #29 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 10 uses
  %.sroa.0.0.copyload.i = load i16, ptr %2, align 2, !tbaa !191
  store i64 0, ptr %i.p, align 8, !tbaa !182
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store <4 x i32> <i32 -32001, i32 -32001, i32 -32001, i32 -1024064001>, ptr %i.q, align 8, !tbaa !183
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 -32001, ptr %i.r, align 8, !tbaa !184
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store i8 0, ptr %i.s, align 4, !tbaa !185
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 29
  store i8 0, ptr %i.t, align 1, !tbaa !186
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i32 0, ptr %i.u, align 8, !tbaa !187
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  store i32 0, ptr %i.v, align 4, !tbaa !188
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.x = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #29 ; 3 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !189
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr %i.y, ptr %i.z, align 8, !tbaa !190
  store i16 %.sroa.0.0.copyload.i, ptr %i.x, align 2, !tbaa !191
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !192
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %i.o, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i, i64 44, i1 false), !alias.scope !510
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !290, !alias.scope !509, !noalias !508
  store <2 x ptr> %i.ad, ptr %i.ab, align 8, !tbaa !290, !alias.scope !508, !noalias !509
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !190, !alias.scope !509, !noalias !508
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !190, !alias.scope !508, !noalias !509
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false), !alias.scope !509, !noalias !508
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !13

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ai, %.lr.ph.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ar, %.lr.ph.i.i.i17 ], [ %i.aj, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i19 = phi ptr [ %i.aq, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i19, i64 44, i1 false), !alias.scope !513
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !290, !alias.scope !512, !noalias !511
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !290, !alias.scope !511, !noalias !512
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !190, !alias.scope !512, !noalias !511
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !190, !alias.scope !511, !noalias !512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false), !alias.scope !512, !noalias !511
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aq, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !13

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aj, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ar, %.lr.ph.i.i.i17 ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !176
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.av) #30
  br label %_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !209
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !175
  %i.aw = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %i.k
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !176
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEN9Stockfish10Tablebases3$_0EE9_M_invokeERKSt9_Any_data"(ptr nofree nonnull readnone align 8 captures(none) %0) #19 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEN9Stockfish10Tablebases3$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #20 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIN9Stockfish10Tablebases3$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIN9Stockfish10Tablebases3$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIN9Stockfish10Tablebases3$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIN9Stockfish10Tablebases3$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIN9Stockfish10Tablebases3$_0E", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !104
  br label %"_ZNSt14_Function_base13_Base_managerIN9Stockfish10Tablebases3$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIN9Stockfish10Tablebases3$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIN9Stockfish10Tablebases3$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN9Stockfish10ThreadPool14start_thinkingERKNS1_10OptionsMapERNS1_8PositionERSt10unique_ptrISt5dequeINS1_9StateInfoESaISA_EESt14default_deleteISC_EENS1_6Search10LimitsTypeEE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #4 align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !104   ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !517
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !518, !nonnull !76, !align !77 ; 2 uses
  %i.e = load ptr, ptr %.val, align 8, !tbaa !519, !nonnull !76, !align !77
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 11419664
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(113) %i.i, ptr noundef nonnull align 8 dereferenceable(113) %i.d) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 11419688
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %i.k, ptr noundef nonnull align 8 dereferenceable(89) %i.l, i64 89, i1 false)
  %i.m = load ptr, ptr %.val, align 8, !tbaa !519, !nonnull !76, !align !77
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !88
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !107
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 11419816
  store atomic i64 0, ptr %i.q seq_cst, align 8
  %i.r = load ptr, ptr %.val, align 8, !tbaa !519, !nonnull !76, !align !77
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !88
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 11419808
  store atomic i64 0, ptr %i.v seq_cst, align 8
  %i.w = load ptr, ptr %.val, align 8, !tbaa !519, !nonnull !76, !align !77
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !88
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !107
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 11419800
  store atomic i64 0, ptr %i.aa seq_cst, align 8
  %i.ab = load ptr, ptr %.val, align 8, !tbaa !519, !nonnull !76, !align !77
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !88
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !107 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 11419828
  store i32 0, ptr %i.af, align 4, !tbaa !520
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 11421108
  store i32 0, ptr %i.ag, align 4, !tbaa !263
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 11421104
  store i32 0, ptr %i.ah, align 16, !tbaa !521
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !522, !nonnull !76, !align !77
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 11421080
  %i.al = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.aj) ; 0 uses
  %i.am = load ptr, ptr %.val, align 8, !tbaa !519, !nonnull !76, !align !77
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !88
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !107
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 11419840
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !523, !nonnull !76, !align !77
  call void @_ZNK9Stockfish8Position3fenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(1048) %i.as) #26
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !523, !nonnull !76, !align !77
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 621
  %i.av = load i8, ptr %i.au, align 1, !tbaa !524, !range !97, !noundef !76
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = load ptr, ptr %.val, align 8, !tbaa !519, !nonnull !76, !align !77
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !88
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !107
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 11420888
  %i.bc = call noundef nonnull align 8 dereferenceable(1048) ptr @_ZN9Stockfish8Position3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPNS_9StateInfoE(ptr noundef nonnull align 8 dereferenceable(1048) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %i.aw, ptr noundef nonnull %i.bb) #26 ; 0 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !84    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !83
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #30
end_hunk_2
