Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/minkowski_sum?download=true
inline.NumInlined: 7634
inline.NumDeleted: 3197
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 211
loop-unroll.NumUnrolled: 224
begin_hunk_0_@_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store atomic i32 %i.ae, ptr %i.ac monotonic, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ag = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  store ptr %i.ag, ptr %i.af, align 16, !tbaa !61
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4
  %i.aj = add nsw i32 %i.ai, 1
  store atomic i32 %i.aj, ptr %i.ah monotonic, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ak = atomicrmw add ptr %i.ac, i32 1 monotonic, align 4 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.am = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  store ptr %i.am, ptr %i.al, align 16, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = atomicrmw add ptr %i.an, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ap = and i32 %i.g, 24576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.aq = load i32, ptr %i.a, align 4
  %i.ar = and i32 %i.aq, -24577
  %i.as = or disjoint i32 %i.ar, %i.ap
  store i32 %i.as, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL14Lazy_exact_SubIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_EE, i64 16), ptr %i.f, align 16, !tbaa !64
  store ptr %i.f, ptr %0, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4CGALgtERKNS_13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEEi(ptr noundef nonnull align 8 dereferenceable(9) %0, i32 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::multiprecision::number", align 16 ; 14 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %class.anon.553, align 8            ; 5 uses
  %4 = alloca %class.anon.552, align 8            ; 4 uses
  %i.b = sitofp i32 %1 to double                  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !61     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load double, ptr %i.d, align 16, !tbaa !62
  %i.f = fneg double %i.e
  %i.g = fcmp olt double %i.b, %i.f               ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load double, ptr %i.h, align 8
  %i.j = fcmp ole double %i.i, %i.b
  %not. = xor i1 %i.g, true
  %narrow.i = select i1 %not., i1 %i.j, i1 false
  %i.k = xor i1 %i.g, %narrow.i
  br i1 %i.k, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.c, ptr %4, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %4, ptr %3, align 8, !tbaa !182
  %i.m = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %3, ptr %i.m, align 8, !tbaa !182
  %i.n = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.n, align 8, !tbaa !182
  %i.o = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.e ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.o) #36
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.ap, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.m, align 8, !tbaa !182
  store ptr null, ptr %i.n, align 8, !tbaa !182
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.m, align 8, !tbaa !182
  store ptr null, ptr %i.n, align 8, !tbaa !182
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.r = load atomic ptr, ptr %i.q monotonic, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.s = sext i32 %1 to i64
  store i64 %i.s, ptr %i.a, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2IxEERKT_PKNSt9enable_ifIXaasr3std16is_constructibleIS7_SA_EE5valuentsr3std17is_floating_pointISA_EE5valueEvE4typeE(ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef null)
  %i.t = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.r, ptr noundef nonnull align 16 dereferenceable(64) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 57
  %i.v = load i8, ptr %i.u, align 1, !tbaa !47, !range !48, !noundef !49
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.y = load i8, ptr %i.x, align 2, !range !48
  %i.z = trunc nuw i8 %i.y to i1
  %or.cond.i1.i.i.i.i.i = select i1 %i.w, i1 true, i1 %i.z
  br i1 %or.cond.i1.i.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load i64, ptr %i.aa, align 16
  %i.ae = shl i64 %i.ad, 3
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ae) #35
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !47, !range !48, !noundef !49
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.aj = load i8, ptr %i.ai, align 2, !range !48
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.ah, i1 true, i1 %i.ak
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5boost14multiprecisionltIiNS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT0_XT1_EEET_EE5valuenesr15number_categoryISD_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISF_EE5valueEbE4typeERKSF_RKSE_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load i64, ptr %2, align 16
  %i.ao = shl i64 %i.an, 3
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ao) #35
  br label %_ZN5boost14multiprecisionltIiNS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT0_XT1_EEET_EE5valuenesr15number_categoryISD_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISF_EE5valueEbE4typeERKSF_RKSE_.exit

bb.i:                                             ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume

_ZN5boost14multiprecisionltIiNS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT0_XT1_EEET_EE5valuenesr15number_categoryISD_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISF_EE5valueEbE4typeERKSF_RKSE_.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i, %bb.h
  %i.aq = icmp sgt i32 %i.t, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN5boost14multiprecisionltIiNS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT0_XT1_EEET_EE5valuenesr15number_categoryISD_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISF_EE5valueEbE4typeERKSF_RKSE_.exit
  %.0 = phi i1 [ %i.aq, %_ZN5boost14multiprecisionltIiNS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT0_XT1_EEET_EE5valuenesr15number_categoryISD_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISF_EE5valueEbE4typeERKSF_RKSE_.exit ], [ %i.g, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEclISt6vectorIiSaIiEENS_8internal5all_tEEENS8_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_20ConstIndexedViewTypeISB_SC_E4typeEEE19ReturnAsIndexedViewESF_E4typeERKSB_RKSC_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::IndexedView") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87, !noalias !609 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !88, !noalias !609 ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !123

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36, !noalias !609
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38, !noalias !609
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !99, !noalias !609 ; 2 uses
  %.pre2.i = load ptr, ptr %i.a, align 8, !tbaa !99, !noalias !609
  %.pre3.i = ptrtoint ptr %.pre2.i to i64
  %.pre4.i = ptrtoint ptr %.pre.i to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %.pre-phi5.i = phi i64 [ %.pre4.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre3.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.k = sub i64 %.pre-phi.i, %.pre-phi5.i        ; 10 uses
  %i.l = icmp sgt i64 %i.k, 4
  br i1 %i.l, label %bb.d, label %bb.e, !prof !124

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.i, i64 %i.k, i1 false), !noalias !609
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.k, 4
  br i1 %i.m, label %.thread23, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %1, ptr %0, align 8, !tbaa !610
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i4 = icmp eq i64 %.pre-phi.i, %.pre-phi5.i
  br i1 %.not.i.i.i.i.i4, label %.thread, label %bb.g

.thread23:                                        ; preds = %bb.e
  %i.o = load i32, ptr %i.i, align 4, !tbaa !84, !noalias !609
  store i32 %i.o, ptr %i.j, align 4, !tbaa !84, !noalias !609
  store ptr %1, ptr %0, align 8, !tbaa !610
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5

.thread:                                          ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds i8, ptr null, i64 %i.k ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr %i.r, ptr %i.s, align 8, !tbaa !98
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = icmp ugt i64 %i.k, 9223372036854775804
  br i1 %i.t, label %.noexc.i.i.i6, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5, !prof !125

.noexc.i.i.i6:                                    ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #36
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i.i6
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5: ; preds = %.thread23, %bb.g
  %i.u = phi ptr [ %i.p, %.thread23 ], [ %i.n, %bb.g ]
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #38
          to label %.noexc7 unwind label %bb.l    ; 4 uses

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5
  store ptr %i.v, ptr %i.u, align 8, !tbaa !88
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.k ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !98
  %4 = icmp samesign ugt i64 %i.k, 4
  br i1 %4, label %bb.h, label %bb.i, !prof !126

bb.h:                                             ; preds = %.noexc7
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.v, ptr align 4 %i.j, i64 %i.k, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %.noexc7
  %i.z = icmp eq i64 %i.k, 4
  br i1 %i.z, label %.thread16, label %bb.j

.thread16:                                        ; preds = %bb.i
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !84
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !84
  store ptr %i.x, ptr %i.w, align 8, !tbaa !87
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %.thread
  %i.ab = phi ptr [ %i.x, %bb.h ], [ %i.x, %bb.i ], [ %i.r, %.thread ]
  %i.ac = phi ptr [ %i.w, %bb.h ], [ %i.w, %bb.i ], [ %i.q, %.thread ]
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !87
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread16, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5, %.noexc.i.i.i6
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIiSaIiEED2Ev.exit9, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit9

_ZNSt6vectorIiSaIiEED2Ev.exit9:                   ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %i.ad
}

declare void @_ZN3igl4findILin1ELin1EEESt6vectorIiSaIiEERKN5Eigen5ArrayIbXT_ELi1ELi0EXT0_ELi1EEE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen9DenseBaseINS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEEEclISt6vectorIiSaIiEENS_8internal5all_tEEENS8_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_20ConstIndexedViewTypeISB_SC_E4typeEEE19ReturnAsIndexedViewESF_E4typeERKSB_RKSC_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::IndexedView.63") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87, !noalias !613 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !88, !noalias !613 ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !123

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36, !noalias !613
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38, !noalias !613
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !99, !noalias !613 ; 2 uses
  %.pre2.i = load ptr, ptr %i.a, align 8, !tbaa !99, !noalias !613
  %.pre3.i = ptrtoint ptr %.pre2.i to i64
  %.pre4.i = ptrtoint ptr %.pre.i to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %.pre-phi5.i = phi i64 [ %.pre4.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre3.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.k = sub i64 %.pre-phi.i, %.pre-phi5.i        ; 10 uses
  %i.l = icmp sgt i64 %i.k, 4
  br i1 %i.l, label %bb.d, label %bb.e, !prof !124

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.i, i64 %i.k, i1 false), !noalias !613
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.k, 4
  br i1 %i.m, label %.thread23, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %1, ptr %0, align 8, !tbaa !614
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i4 = icmp eq i64 %.pre-phi.i, %.pre-phi5.i
  br i1 %.not.i.i.i.i.i4, label %.thread, label %bb.g

.thread23:                                        ; preds = %bb.e
  %i.o = load i32, ptr %i.i, align 4, !tbaa !84, !noalias !613
  store i32 %i.o, ptr %i.j, align 4, !tbaa !84, !noalias !613
  store ptr %1, ptr %0, align 8, !tbaa !614
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5

.thread:                                          ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds i8, ptr null, i64 %i.k ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr %i.r, ptr %i.s, align 8, !tbaa !98
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = icmp ugt i64 %i.k, 9223372036854775804
  br i1 %i.t, label %.noexc.i.i.i6, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5, !prof !125

.noexc.i.i.i6:                                    ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #36
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i.i6
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5: ; preds = %.thread23, %bb.g
  %i.u = phi ptr [ %i.p, %.thread23 ], [ %i.n, %bb.g ]
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #38
          to label %.noexc7 unwind label %bb.l    ; 4 uses

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5
  store ptr %i.v, ptr %i.u, align 8, !tbaa !88
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.k ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !98
  %4 = icmp samesign ugt i64 %i.k, 4
  br i1 %4, label %bb.h, label %bb.i, !prof !126

bb.h:                                             ; preds = %.noexc7
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.v, ptr align 4 %i.j, i64 %i.k, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %.noexc7
  %i.z = icmp eq i64 %i.k, 4
  br i1 %i.z, label %.thread16, label %bb.j

.thread16:                                        ; preds = %bb.i
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !84
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !84
  store ptr %i.x, ptr %i.w, align 8, !tbaa !87
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %.thread
  %i.ab = phi ptr [ %i.x, %bb.h ], [ %i.x, %bb.i ], [ %i.r, %.thread ]
  %i.ac = phi ptr [ %i.w, %bb.h ], [ %i.w, %bb.i ], [ %i.q, %.thread ]
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !87
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread16, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5, %.noexc.i.i.i6
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIiSaIiEED2Ev.exit9, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit9

_ZNSt6vectorIiSaIiEED2Ev.exit9:                   ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %i.ad
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl9LinSpacedIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEET_NS4_5IndexERKNS4_6ScalarES8_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.92") align 8 %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 0, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %bb.d

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !103
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %thread-pre-split.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 0, i64 noundef 1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %thread-pre-split.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !103 ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.e = icmp sgt i64 %.pr.i.i.i.i.i.i, 0
  br i1 %i.e, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader: ; preds = %bb.c
  %min.iters.check162 = icmp ult i64 %.pr.i.i.i.i.i.i, 8
  br i1 %min.iters.check162, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader174, label %vector.ph163

vector.ph163:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader
  %n.vec164 = and i64 %.pr.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next169, %vector.body165 ] ; 2 uses
  %vec.ind167 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph163 ], [ %vec.ind.next170, %vector.body165 ] ; 3 uses
  %step.add168 = add <4 x i32> %vec.ind167, splat (i32 4)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index166 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x i32> %vec.ind167, ptr %i.f, align 4, !tbaa !84
  store <4 x i32> %step.add168, ptr %i.g, align 4, !tbaa !84
  %index.next169 = add nuw i64 %index166, 8       ; 2 uses
  %vec.ind.next170 = add <4 x i32> %vec.ind167, splat (i32 8)
  %i.h = icmp eq i64 %index.next169, %n.vec164
  br i1 %i.h, label %middle.block171, label %vector.body165, !llvm.loop !615

middle.block171:                                  ; preds = %vector.body165
  %cmp.n172 = icmp eq i64 %.pr.i.i.i.i.i.i, %n.vec164
  br i1 %cmp.n172, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader174

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader174: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader, %middle.block171
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader ], [ %n.vec164, %middle.block171 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader174, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.k, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader174 ] ; 3 uses
  %i.i = trunc i64 %.05.i.i.i.i.i.i.i to i32
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.05.i.i.i.i.i.i.i
  store i32 %i.i, ptr %i.j, align 4, !tbaa !84
  %i.k = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.k, %.pr.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i, !llvm.loop !616

common.resume:                                    ; preds = %bb.m, %bb.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.bu, %bb.i ], [ %i.du, %bb.m ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !102
  tail call void @free(ptr noundef %i.l) #23
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %thread-pre-split.i.i.i.i.i.i, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.n = load i32, ptr %3, align 4, !tbaa !84     ; 6 uses
  %i.o = load i32, ptr %2, align 4, !tbaa !84     ; 8 uses
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.q = sub nsw i32 %i.o, %i.n                   ; 4 uses
  %i.r = icmp sgt i64 %1, 1
  br i1 %i.r, label %bb.g, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = tail call noundef i32 @llvm.abs.i32(i32 %i.q, i1 true)
  %i.t = add nuw nsw i32 %i.s, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = icmp samesign ugt i64 %1, %i.u
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit: ; preds = %bb.f, %bb.g
  %i.w = phi i1 [ false, %bb.f ], [ %i.v, %bb.g ]
  %i.x = icmp eq i64 %1, 1
  %i.y = select i1 %i.x, i32 %i.q, i32 0          ; 6 uses
  %i.z = sub nsw i32 %i.q, %i.y                   ; 3 uses
  %.not.i.i.i13 = icmp slt i32 %i.q, %i.y
  %i.aa = sub nsw i64 0, %1
  %i.ab = select i1 %.not.i.i.i13, i64 %i.aa, i64 %1
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = add i32 %i.z, %i.ac
  %i.ae = tail call noundef i32 @llvm.abs.i32(i32 %i.z, i1 true)
  %i.af = tail call i64 @llvm.smax.i64(i64 %1, i64 2)
  %i.ag = trunc i64 %i.af to i32
  %i.ah = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.ai = insertelement <2 x i32> %i.ah, i32 %i.ag, i64 1
  %i.aj = add <2 x i32> %i.ai, <i32 1, i32 -1>
  %i.ak = insertelement <2 x i32> poison, i32 %i.ad, i64 0
  %i.al = insertelement <2 x i32> %i.ak, i32 %i.z, i64 1
  %i.am = sdiv <2 x i32> %i.al, %i.aj             ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS6_12linspaced_opIiEES2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %bb.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS6_12linspaced_opIiEES2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !103
  %.not.i.i.i.i.i.i.i17 = icmp eq i64 %i.ao, %1
  br i1 %.not.i.i.i.i.i.i.i17, label %bb.h, label %thread-pre-split.i.i.i.i.i.i18

thread-pre-split.i.i.i.i.i.i18:                   ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS6_12linspaced_opIiEES2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef 1)
          to label %.noexc.i.i19 unwind label %bb.i

.noexc.i.i19:                                     ; preds = %thread-pre-split.i.i.i.i.i.i18
  %.pr.i.i.i.i.i.i20 = load i64, ptr %i.an, align 8, !tbaa !103
  br label %bb.h

bb.h:                                             ; preds = %.noexc.i.i19, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS6_12linspaced_opIiEES2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.ap = phi i64 [ %.pr.i.i.i.i.i.i20, %.noexc.i.i19 ], [ %1, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS6_12linspaced_opIiEES2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i ] ; 9 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !102   ; 4 uses
  %i.ar = icmp sgt i64 %i.ap, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i.i21, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i21:                           ; preds = %bb.h
  br i1 %i.w, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i21
  %min.iters.check125 = icmp ult i64 %i.ap, 8
  br i1 %min.iters.check125, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader177, label %vector.ph126

vector.ph126:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader
  %n.vec127 = and i64 %i.ap, 9223372036854775800  ; 3 uses
  %broadcast.splat129 = shufflevector <2 x i32> %i.am, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert130 = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %broadcast.splat131 = shufflevector <4 x i32> %broadcast.splatinsert130, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert132 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat133 = shufflevector <4 x i32> %broadcast.splatinsert132, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph126
  %index135 = phi i64 [ 0, %vector.ph126 ], [ %index.next138, %vector.body134 ] ; 2 uses
  %vec.ind136 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph126 ], [ %vec.ind.next139, %vector.body134 ] ; 3 uses
  %step.add137 = add <4 x i32> %vec.ind136, splat (i32 4)
end_hunk_0
begin_hunk_1_@_ZN3igl9LinSpacedIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEET_NS4_5IndexERKNS4_6ScalarES8_:bb.a
  %i.bt = add nuw nsw i64 %.06.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i22 = icmp eq i64 %i.bt, %i.ap
  br i1 %exitcond.not.i.i.i.i.i.i.i22, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i, !llvm.loop !620

bb.i:                                             ; preds = %thread-pre-split.i.i.i.i.i.i18, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.j:                                             ; preds = %bb.e
  %i.bv = icmp sgt i64 %1, 1
  br i1 %i.bv, label %bb.k, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit29

bb.k:                                             ; preds = %bb.j
  %i.bw = sub nsw i32 %i.n, %i.o
  %i.bx = tail call noundef i32 @llvm.abs.i32(i32 %i.bw, i1 true)
  %i.by = add nuw nsw i32 %i.bx, 1
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = icmp samesign ugt i64 %1, %i.bz
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit29

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit29: ; preds = %bb.j, %bb.k
  %i.cb = phi i1 [ false, %bb.j ], [ %i.ca, %bb.k ]
  %i.cc = icmp eq i64 %1, 1
  %i.cd = select i1 %i.cc, i32 %i.n, i32 %i.o     ; 6 uses
  %i.ce = sub nsw i32 %i.n, %i.cd                 ; 3 uses
  %.not.i.i.i25 = icmp slt i32 %i.n, %i.cd
  %i.cf = sub nsw i64 0, %1
  %i.cg = select i1 %.not.i.i.i25, i64 %i.cf, i64 %1
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = add i32 %i.ce, %i.ch
  %i.cj = tail call noundef i32 @llvm.abs.i32(i32 %i.ce, i1 true)
  %i.ck = tail call i64 @llvm.smax.i64(i64 %1, i64 2)
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = insertelement <2 x i32> poison, i32 %i.cj, i64 0
  %i.cn = insertelement <2 x i32> %i.cm, i32 %i.cl, i64 1
  %i.co = add <2 x i32> %i.cn, <i32 1, i32 -1>
  %i.cp = insertelement <2 x i32> poison, i32 %i.ci, i64 0
  %i.cq = insertelement <2 x i32> %i.cp, i32 %i.ce, i64 1
  %i.cr = sdiv <2 x i32> %i.cq, %i.co             ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i30 unwind label %bb.m

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i30: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit29
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !103
  %.not.i.i.i.i.i.i.i38 = icmp eq i64 %i.ct, %1
  br i1 %.not.i.i.i.i.i.i.i38, label %bb.l, label %thread-pre-split.i.i.i.i.i.i39

thread-pre-split.i.i.i.i.i.i39:                   ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i30
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef 1)
          to label %.noexc.i.i40 unwind label %bb.m

.noexc.i.i40:                                     ; preds = %thread-pre-split.i.i.i.i.i.i39
  %.pr.i.i.i.i.i.i41 = load i64, ptr %i.cs, align 8, !tbaa !103
  br label %bb.l

bb.l:                                             ; preds = %.noexc.i.i40, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i30
  %i.cu = phi i64 [ %.pr.i.i.i.i.i.i41, %.noexc.i.i40 ], [ %1, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i30 ] ; 9 uses
  %i.cv = load ptr, ptr %0, align 8, !tbaa !102   ; 4 uses
  %i.cw = icmp sgt i64 %i.cu, 0
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i.i.i42, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i42:                           ; preds = %bb.l
  br i1 %i.cb, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i42
  %min.iters.check = icmp ult i64 %i.cu, 8
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader181, label %vector.ph

vector.ph:                                        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader
  %n.vec = and i64 %i.cu, 9223372036854775800     ; 3 uses
  %broadcast.splat = shufflevector <2 x i32> %i.cr, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert106 = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat107 = shufflevector <4 x i32> %broadcast.splatinsert106, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.cx = mul nsw <4 x i32> %broadcast.splat, %vec.ind
  %i.cy = mul nsw <4 x i32> %broadcast.splat, %step.add
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index ; 2 uses
  %i.da = add nsw <4 x i32> %i.cx, %broadcast.splat107
  %i.db = add nsw <4 x i32> %i.cy, %broadcast.splat107
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <4 x i32> %i.da, ptr %i.cz, align 4, !tbaa !84
  store <4 x i32> %i.db, ptr %i.dc, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !621

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader181

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader181: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader, %middle.block
  %.05.i.i.i.i.i.i.i44.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader ], [ %n.vec, %middle.block ]
  %i.de = extractelement <2 x i32> %i.cr, i64 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i42
  %min.iters.check109 = icmp ult i64 %i.cu, 4
  br i1 %min.iters.check109, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader179, label %vector.ph110

vector.ph110:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader
  %n.vec111 = and i64 %i.cu, 9223372036854775804  ; 3 uses
  %broadcast.splat113 = shufflevector <2 x i32> %i.cr, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert114 = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat115 = shufflevector <4 x i32> %broadcast.splatinsert114, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph110
  %index117 = phi i64 [ 0, %vector.ph110 ], [ %index.next119, %vector.body116 ] ; 2 uses
  %vec.ind118 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph110 ], [ %vec.ind.next120, %vector.body116 ] ; 2 uses
  %i.df = sdiv <4 x i32> %vec.ind118, %broadcast.splat113
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index117
  %i.dh = add nsw <4 x i32> %i.df, %broadcast.splat115
  store <4 x i32> %i.dh, ptr %i.dg, align 4, !tbaa !84
  %index.next119 = add nuw i64 %index117, 4       ; 2 uses
  %vec.ind.next120 = add <4 x i32> %vec.ind118, splat (i32 4)
  %i.di = icmp eq i64 %index.next119, %n.vec111
  br i1 %i.di, label %middle.block121, label %vector.body116, !llvm.loop !622

middle.block121:                                  ; preds = %vector.body116
  %cmp.n122 = icmp eq i64 %i.cu, %n.vec111
  br i1 %cmp.n122, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader179

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader179: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader, %middle.block121
  %.05.us.i.i.i.i.i.i.i47.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader ], [ %n.vec111, %middle.block121 ]
  %i.dj = extractelement <2 x i32> %i.cr, i64 0
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader179, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46
  %.05.us.i.i.i.i.i.i.i47 = phi i64 [ %i.do, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46 ], [ %.05.us.i.i.i.i.i.i.i47.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader179 ] ; 3 uses
  %i.dk = trunc i64 %.05.us.i.i.i.i.i.i.i47 to i32
  %i.dl = sdiv i32 %i.dk, %i.dj
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.05.us.i.i.i.i.i.i.i47
  %i.dn = add nsw i32 %i.dl, %i.cd
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !84
  %i.do = add nuw nsw i64 %.05.us.i.i.i.i.i.i.i47, 1 ; 2 uses
  %exitcond7.not.i.i.i.i.i.i.i48 = icmp eq i64 %i.do, %i.cu
  br i1 %exitcond7.not.i.i.i.i.i.i.i48, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46, !llvm.loop !623

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader181, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43
  %.05.i.i.i.i.i.i.i44 = phi i64 [ %i.dt, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43 ], [ %.05.i.i.i.i.i.i.i44.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader181 ] ; 3 uses
  %i.dp = trunc i64 %.05.i.i.i.i.i.i.i44 to i32
  %i.dq = mul nsw i32 %i.de, %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.05.i.i.i.i.i.i.i44
  %i.ds = add nsw i32 %i.dq, %i.cd
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !84
  %i.dt = add nuw nsw i64 %.05.i.i.i.i.i.i.i44, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i45 = icmp eq i64 %i.dt, %i.cu
  br i1 %exitcond.not.i.i.i.i.i.i.i45, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43, !llvm.loop !624

bb.m:                                             ; preds = %thread-pre-split.i.i.i.i.i.i39, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit29
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i, %middle.block, %middle.block121, %middle.block140, %middle.block158, %middle.block171, %bb.h, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i, %bb.l, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEclISt6vectorIiSaIiEENS_8internal5all_tEEENS8_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeISB_SC_E4typeEEE19ReturnAsIndexedViewESF_E4typeERKSB_RKSC_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::IndexedView.102") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87, !noalias !627 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !88, !noalias !627 ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !123

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36, !noalias !627
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38, !noalias !627
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !99, !noalias !627 ; 2 uses
  %.pre2.i = load ptr, ptr %i.a, align 8, !tbaa !99, !noalias !627
  %.pre3.i = ptrtoint ptr %.pre2.i to i64
  %.pre4.i = ptrtoint ptr %.pre.i to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %.pre-phi5.i = phi i64 [ %.pre4.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre3.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.k = sub i64 %.pre-phi.i, %.pre-phi5.i        ; 10 uses
  %i.l = icmp sgt i64 %i.k, 4
  br i1 %i.l, label %bb.d, label %bb.e, !prof !124

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.i, i64 %i.k, i1 false), !noalias !627
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.k, 4
  br i1 %i.m, label %.thread23, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %1, ptr %0, align 8, !tbaa !156
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i4 = icmp eq i64 %.pre-phi.i, %.pre-phi5.i
  br i1 %.not.i.i.i.i.i4, label %.thread, label %bb.g

.thread23:                                        ; preds = %bb.e
  %i.o = load i32, ptr %i.i, align 4, !tbaa !84, !noalias !627
  store i32 %i.o, ptr %i.j, align 4, !tbaa !84, !noalias !627
  store ptr %1, ptr %0, align 8, !tbaa !156
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5

.thread:                                          ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds i8, ptr null, i64 %i.k ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr %i.r, ptr %i.s, align 8, !tbaa !98
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = icmp ugt i64 %i.k, 9223372036854775804
  br i1 %i.t, label %.noexc.i.i.i6, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5, !prof !125

.noexc.i.i.i6:                                    ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #36
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i.i6
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5: ; preds = %.thread23, %bb.g
  %i.u = phi ptr [ %i.p, %.thread23 ], [ %i.n, %bb.g ]
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #38
          to label %.noexc7 unwind label %bb.l    ; 4 uses

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5
  store ptr %i.v, ptr %i.u, align 8, !tbaa !88
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.k ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !98
  %4 = icmp samesign ugt i64 %i.k, 4
  br i1 %4, label %bb.h, label %bb.i, !prof !126

bb.h:                                             ; preds = %.noexc7
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.v, ptr align 4 %i.j, i64 %i.k, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %.noexc7
  %i.z = icmp eq i64 %i.k, 4
  br i1 %i.z, label %.thread16, label %bb.j

.thread16:                                        ; preds = %bb.i
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !84
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !84
  store ptr %i.x, ptr %i.w, align 8, !tbaa !87
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %.thread
  %i.ab = phi ptr [ %i.x, %bb.h ], [ %i.x, %bb.i ], [ %i.r, %.thread ]
  %i.ac = phi ptr [ %i.w, %bb.h ], [ %i.w, %bb.i ], [ %i.q, %.thread ]
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !87
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread16, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5, %.noexc.i.i.i6
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIiSaIiEED2Ev.exit9, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit9

_ZNSt6vectorIiSaIiEED2Ev.exit9:                   ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %i.ad
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3igl8copyleft4cgal13minkowski_sumIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELi3ELi1ELin1ELi3EEESK_Li3ELi1ESK_Li3ELi1ESL_NS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNS4_IT1_Li1EXT2_EXT3_ELi1EXT2_EEERKNS4_IT4_Li1EXT5_EXT6_ELi1EXT5_EEEbRNS3_15PlainObjectBaseIT7_EERNS16_IT8_EERNS16_IT9_EEENKUlRKSN_RSO_RSN_S1I_S1I_E_clES1H_S1I_S1J_S1I_S1I_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Eigen::internal::evaluator.508", align 8 ; 5 uses
  %7 = alloca %"struct.Eigen::internal::evaluator.516", align 8 ; 5 uses
  %8 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.522", align 8 ; 7 uses
  %9 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %10 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %11 = alloca %"class.Eigen::Matrix.55", align 8 ; 19 uses
  %12 = alloca %"class.Eigen::Matrix.92", align 8 ; 10 uses
  %13 = alloca %"class.Eigen::Matrix.55", align 8 ; 9 uses
  %14 = alloca %"class.Eigen::Reverse.460", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::Block.336", align 8 ; 11 uses
  %16 = alloca %"class.Eigen::Matrix.92", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66   ; 9 uses
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !67
  %.fr = freeze i64 %i.g                          ; 8 uses
  %i.h = trunc i64 %.fr to i32                    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !652)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false), !alias.scope !652
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 7 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !66, !noalias !652 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIiiEELi1EEEE4evalEv.exit, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.a
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %i.j, i64 noundef 1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !103, !alias.scope !652 ; 8 uses
  %.pre.i.i = load ptr, ptr %12, align 8, !tbaa !102, !alias.scope !652 ; 9 uses
  %.pre.i.i229 = ptrtoaddr ptr %.pre.i.i to i64
  %i.l = sdiv i64 %.pr.i.i.i.i.i.i.i, 4
  %i.m = shl nsw i64 %i.l, 2                      ; 7 uses
  %i.n = icmp sgt i64 %.pr.i.i.i.i.i.i.i, 3
  br i1 %i.n, label %.lr.ph.i.preheader.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i:                 ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE12assignPacketILi16ELi0ENS0_20eigen_packet_wrapperIDv2_xLi0EEEEEvl.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.p = icmp slt i64 %i.m, %.pr.i.i.i.i.i.i.i
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIiiEELi1EEEE4evalEv.exit

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.q = load ptr, ptr %11, align 8, !tbaa !68, !noalias !653 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !67, !noalias !653 ; 6 uses
  %i.t = load i64, ptr %i.i, align 8, !tbaa !66   ; 6 uses
  %i.u = icmp sgt i64 %i.s, 1
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.v = add nsw i64 %i.s, -1                     ; 2 uses
  %min.iters.check232 = icmp ugt i64 %i.s, 8
  %ident.check.not = icmp eq i64 %i.t, 1
  %or.cond246 = select i1 %min.iters.check232, i1 %ident.check.not, i1 false
  %n.vec234 = and i64 %i.v, -8                    ; 3 uses
  %i.w = or disjoint i64 %n.vec234, 1
  %cmp.n242 = icmp eq i64 %i.v, %n.vec234
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.x = ptrtoaddr ptr %i.q to i64
  %i.y = sub i64 %.pr.i.i.i.i.i.i.i, %i.m         ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 8
  %i.z = sub i64 %i.x, %.pre.i.i229
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader251, label %vector.ph

vector.ph:                                        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.y, -8                       ; 3 uses
  %i.aa = add i64 %i.m, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = add i64 %i.m, %index                    ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <4 x i32>, ptr %i.ac, align 4, !tbaa !84
  %wide.load230 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !84
  %i.ae = getelementptr inbounds [4 x i8], ptr %.pre.i.i, i64 %i.ab ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %wide.load, ptr %i.ae, align 4, !tbaa !84
  store <4 x i32> %wide.load230, ptr %i.af, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !632

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIiiEELi1EEEE4evalEv.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader251

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader251: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.m, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ] ; 4 uses
  %i.ah = sub i64 %.pr.i.i.i.i.i.i.i, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter256 = and i64 %i.ah, 3                 ; 2 uses
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod257.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader251, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.al, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader251 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader251 ]
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !84
  %i.ak = getelementptr inbounds [4 x i8], ptr %.pre.i.i, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !84
  %i.al = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter256
  br i1 %prol.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !633

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader251
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader251 ], [ %i.al, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol ]
  %i.am = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %.pr.i.i.i.i.i.i.i
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIiiEELi1EEEE4evalEv.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i
  %.05.us.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ca, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.05.us.i.i.i.i.i.i.i.i.i ; 7 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !84 ; 2 uses
  br i1 %or.cond246, label %vector.ph233, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.preheader

vector.ph233:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph233
  %index236 = phi i64 [ 0, %vector.ph233 ], [ %index.next240, %vector.body235 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph233 ], [ %i.at, %vector.body235 ]
  %vec.phi237 = phi <4 x i32> [ %broadcast.splat, %vector.ph233 ], [ %i.au, %vector.body235 ]
  %i.aq = getelementptr [4 x i8], ptr %i.ao, i64 %index236 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  %i.as = getelementptr i8, ptr %i.aq, i64 20
  %wide.load238 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !84
  %wide.load239 = load <4 x i32>, ptr %i.as, align 4, !tbaa !84
  %i.at = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load238, <4 x i32> %vec.phi) ; 2 uses
  %i.au = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load239, <4 x i32> %vec.phi237) ; 2 uses
  %index.next240 = add nuw i64 %index236, 8       ; 2 uses
  %i.av = icmp eq i64 %index.next240, %n.vec234
  br i1 %i.av, label %middle.block241, label %vector.body235, !llvm.loop !634

end_hunk_1
begin_hunk_2_@_ZN3igl8copyleft4cgal13minkowski_sumIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEdLi3ELi1EdLi3ELi1ES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS4_IT1_Li1EXT2_EXT3_ELi1EXT2_EEERKNS4_IT4_Li1EXT5_EXT6_ELi1EXT5_EEEbRNS3_15PlainObjectBaseIT7_EERNSP_IT8_EERNSP_IT9_EE:bb.a
  br label %.body828

.body828:                                         ; preds = %bb.ht, %bb.ia
  %.pn242 = phi { ptr, i32 } [ %i.dwd, %bb.ia ], [ %i.dtn, %bb.ht ]
  %i.dwe = load ptr, ptr %82, align 8, !tbaa !102
  call void @free(ptr noundef %i.dwe) #23
  %i.dwf = getelementptr inbounds nuw i8, ptr %83, i64 8
  %i.dwg = load ptr, ptr %i.dwf, align 8, !tbaa !102
  call void @free(ptr noundef %i.dwg) #23
  br label %bb.ib

bb.ib:                                            ; preds = %.body828, %bb.hz
  %.pn242.pn = phi { ptr, i32 } [ %.pn242, %.body828 ], [ %i.dwc, %bb.hz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #23
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %.body803
  %.pn242.pn.pn = phi { ptr, i32 } [ %.pn242.pn, %bb.ib ], [ %.pn237.pn.pn.pn, %.body803 ]
  %i.dwh = load ptr, ptr %77, align 8, !tbaa !102
  call void @free(ptr noundef %i.dwh) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #23
  br label %bb.in

bb.id:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSERKS3_.exit, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.dwi = load ptr, ptr %73, align 8, !tbaa !102
  call void @free(ptr noundef %i.dwi) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #23
  %i.dwj = load ptr, ptr %72, align 8, !tbaa !102
  call void @free(ptr noundef %i.dwj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #23
  %i.dwk = load ptr, ptr %71, align 8, !tbaa !102
  call void @free(ptr noundef %i.dwk) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #23
  %i.dwl = load ptr, ptr %70, align 8, !tbaa !68
  call void @free(ptr noundef %i.dwl) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #23
  %i.dwm = load ptr, ptr %69, align 8, !tbaa !68
  call void @free(ptr noundef %i.dwm) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #23
  call void @free(ptr noundef %.sroa.01383.0) #23
  %i.dwn = load ptr, ptr %59, align 8, !tbaa !102
  call void @free(ptr noundef %i.dwn) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23
  call void @free(ptr noundef %.sroa.0.0) #23
  %i.dwo = load ptr, ptr %46, align 8, !tbaa !82
  call void @free(ptr noundef %i.dwo) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  %i.dwp = load ptr, ptr %45, align 8, !tbaa !82
  call void @free(ptr noundef %i.dwp) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  %i.dwq = load ptr, ptr %44, align 8, !tbaa !61  ; 4 uses
  %.not.i.i835 = icmp eq ptr %i.dwq, null
  br i1 %.not.i.i835, label %_ZN4CGAL6HandleD2Ev.exit837, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.dwr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i836 = icmp eq i8 %i.dwr, 0
  %i.dws = getelementptr inbounds nuw i8, ptr %i.dwq, i64 8 ; 3 uses
  %i.dwt = load atomic i32, ptr %i.dws monotonic, align 4 ; 2 uses
  %i.dwu = icmp eq i32 %i.dwt, 1                  ; 2 uses
  br i1 %.not.i.i.i836, label %bb.ii, label %bb.if

bb.if:                                            ; preds = %bb.ie
  br i1 %i.dwu, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.dwv = load ptr, ptr %i.dwq, align 8, !tbaa !64
  %i.dww = getelementptr inbounds nuw i8, ptr %i.dwv, i64 8
  %i.dwx = load ptr, ptr %i.dww, align 8
  call void %i.dwx(ptr noundef nonnull align 8 dereferenceable(12) %i.dwq) #23, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit837

bb.ih:                                            ; preds = %bb.if
  %i.dwy = add nsw i32 %i.dwt, -1
  store atomic i32 %i.dwy, ptr %i.dws monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit837

bb.ii:                                            ; preds = %bb.ie
  br i1 %i.dwu, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.dwz = atomicrmw sub ptr %i.dws, i32 1 release, align 4
  %i.dxa = icmp eq i32 %i.dwz, 1
  br i1 %i.dxa, label %bb.ik, label %_ZN4CGAL6HandleD2Ev.exit837

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  fence acquire
  %i.dxb = load ptr, ptr %44, align 8, !tbaa !61  ; 3 uses
  %i.dxc = icmp eq ptr %i.dxb, null
  br i1 %i.dxc, label %_ZN4CGAL6HandleD2Ev.exit837, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.dxd = load ptr, ptr %i.dxb, align 8, !tbaa !64
  %i.dxe = getelementptr inbounds nuw i8, ptr %i.dxd, i64 8
  %i.dxf = load ptr, ptr %i.dxe, align 8
  call void %i.dxf(ptr noundef nonnull align 8 dereferenceable(12) %i.dxb) #23, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit837

_ZN4CGAL6HandleD2Ev.exit837:                      ; preds = %bb.id, %bb.ig, %bb.ih, %bb.ij, %bb.ik, %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  br label %bb.im

bb.im:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit837, %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit
  ret void

bb.in:                                            ; preds = %bb.hx, %bb.hw, %bb.go, %bb.ic, %.body662, %bb.gn
  %.pn249.pn.pn.pn = phi { ptr, i32 } [ %.pn223, %bb.gn ], [ %i.dvw, %bb.hx ], [ %.pn242.pn.pn, %bb.ic ], [ %i.dvv, %bb.hw ], [ %i.cho, %bb.go ], [ %i.cim, %.body662 ]
  %i.dxg = load ptr, ptr %73, align 8, !tbaa !102
  call void @free(ptr noundef %i.dxg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #23
  %i.dxh = load ptr, ptr %72, align 8, !tbaa !102
  call void @free(ptr noundef %i.dxh) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #23
  %i.dxi = load ptr, ptr %71, align 8, !tbaa !102
  call void @free(ptr noundef %i.dxi) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #23
  %i.dxj = load ptr, ptr %70, align 8, !tbaa !68
  call void @free(ptr noundef %i.dxj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #23
  br label %.body423

.body423:                                         ; preds = %bb.in, %bb.gk, %bb.er
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ael, %bb.er ], [ %.pn249.pn.pn.pn, %bb.in ], [ %i.chk, %bb.gk ]
  %i.dxk = load ptr, ptr %69, align 8, !tbaa !68
  call void @free(ptr noundef %i.dxk) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #23
  br label %bb.io

bb.io:                                            ; preds = %.body423, %_ZNSt6vectorIiSaIiEED2Ev.exit661
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body423 ], [ %.pn203.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit661 ]
  call void @free(ptr noundef %.sroa.01383.0) #23
  br label %.body327

.body327:                                         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit649, %bb.fy, %bb.dq, %bb.io, %bb.df
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.tb, %bb.df ], [ %.pn197.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit649 ], [ %i.cgl, %bb.fy ], [ %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.io ], [ %i.yf, %bb.dq ]
  %i.dxl = load ptr, ptr %59, align 8, !tbaa !102
  call void @free(ptr noundef %i.dxl) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23
  br label %bb.ip

bb.ip:                                            ; preds = %.body327, %bb.fq, %_ZNSt6vectorIiSaIiEED2Ev.exit641
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body327 ], [ %i.cfo, %bb.fq ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit641 ]
  call void @free(ptr noundef %.sroa.0.0) #23
  br label %.body287

.body287:                                         ; preds = %bb.ci, %bb.p, %bb.ip, %bb.m
  %.pn270.pn.pn.pn.pn = phi { ptr, i32 } [ %i.es, %bb.m ], [ %.pn270.pn.pn, %bb.ci ], [ %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ip ], [ %i.fe, %bb.p ]
  %i.dxm = load ptr, ptr %46, align 8, !tbaa !82
  call void @free(ptr noundef %i.dxm) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  br label %.body

.body:                                            ; preds = %bb.j, %.body287
  %.pn270.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn270.pn.pn.pn.pn, %.body287 ], [ %i.dl, %bb.j ]
  %i.dxn = load ptr, ptr %45, align 8, !tbaa !82
  call void @free(ptr noundef %i.dxn) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  br label %bb.iq

bb.iq:                                            ; preds = %.body, %bb.k
  %.pn277 = phi { ptr, i32 } [ %i.dm, %bb.k ], [ %.pn270.pn.pn.pn.pn.pn, %.body ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  resume { ptr, i32 } %.pn277
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEclISt6vectorIiSaIiEENS_8internal5all_tEEENS8_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_20ConstIndexedViewTypeISB_SC_E4typeEEE19ReturnAsIndexedViewESF_E4typeERKSB_RKSC_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::IndexedView.357") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87, !noalias !1366 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !88, !noalias !1366 ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !123

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36, !noalias !1366
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38, !noalias !1366
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !99, !noalias !1366 ; 2 uses
  %.pre2.i = load ptr, ptr %i.a, align 8, !tbaa !99, !noalias !1366
  %.pre3.i = ptrtoint ptr %.pre2.i to i64
  %.pre4.i = ptrtoint ptr %.pre.i to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %.pre-phi5.i = phi i64 [ %.pre4.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre3.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.k = sub i64 %.pre-phi.i, %.pre-phi5.i        ; 10 uses
  %i.l = icmp sgt i64 %i.k, 4
  br i1 %i.l, label %bb.d, label %bb.e, !prof !124

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.i, i64 %i.k, i1 false), !noalias !1366
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.k, 4
  br i1 %i.m, label %.thread23, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !67   ; 2 uses
  store ptr %1, ptr %0, align 8, !tbaa !130
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i4 = icmp eq i64 %.pre-phi.i, %.pre-phi5.i
  br i1 %.not.i.i.i.i.i4, label %.thread, label %bb.g

.thread23:                                        ; preds = %bb.e
  %i.q = load i32, ptr %i.i, align 4, !tbaa !84, !noalias !1366
  store i32 %i.q, ptr %i.j, align 4, !tbaa !84, !noalias !1366
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !67
  store ptr %1, ptr %0, align 8, !tbaa !130
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5

.thread:                                          ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds i8, ptr null, i64 %i.k ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %i.w, align 8, !tbaa !98
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.x = icmp ugt i64 %i.k, 9223372036854775804
  br i1 %i.x, label %.noexc.i.i.i6, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5, !prof !125

.noexc.i.i.i6:                                    ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #36
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i.i6
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5: ; preds = %.thread23, %bb.g
  %i.y = phi i64 [ %i.s, %.thread23 ], [ %i.o, %bb.g ] ; 3 uses
  %i.z = phi ptr [ %i.t, %.thread23 ], [ %i.p, %bb.g ]
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #38
          to label %.noexc7 unwind label %bb.l    ; 4 uses

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !88
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.k ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !98
  %4 = icmp samesign ugt i64 %i.k, 4
  br i1 %4, label %bb.h, label %bb.i, !prof !126

bb.h:                                             ; preds = %.noexc7
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.j, i64 %i.k, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %.noexc7
  %i.ae = icmp eq i64 %i.k, 4
  br i1 %i.ae, label %.thread16, label %bb.j

.thread16:                                        ; preds = %bb.i
  %i.af = load i32, ptr %i.j, align 4, !tbaa !84
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !84
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.y, ptr %i.ag, align 8, !tbaa !100
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %.thread
  %i.ah = phi i64 [ %i.y, %bb.h ], [ %i.y, %bb.i ], [ %i.o, %.thread ]
  %i.ai = phi ptr [ %i.ac, %bb.h ], [ %i.ac, %bb.i ], [ %i.v, %.thread ]
  %i.aj = phi ptr [ %i.ab, %bb.h ], [ %i.ab, %bb.i ], [ %i.u, %.thread ]
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !100
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread16, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5, %.noexc.i.i.i6
  %i.al = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIiSaIiEED2Ev.exit9, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit9

_ZNSt6vectorIiSaIiEED2Ev.exit9:                   ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen9DenseBaseINS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEclISt6vectorIiSaIiEENS_8internal5all_tEEENS8_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_20ConstIndexedViewTypeISB_SC_E4typeEEE19ReturnAsIndexedViewESF_E4typeERKSB_RKSC_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::IndexedView.363") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87, !noalias !1369 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !88, !noalias !1369 ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !123

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36, !noalias !1369
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38, !noalias !1369
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !99, !noalias !1369 ; 2 uses
  %.pre2.i = load ptr, ptr %i.a, align 8, !tbaa !99, !noalias !1369
  %.pre3.i = ptrtoint ptr %.pre2.i to i64
  %.pre4.i = ptrtoint ptr %.pre.i to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %.pre-phi5.i = phi i64 [ %.pre4.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre3.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.k = sub i64 %.pre-phi.i, %.pre-phi5.i        ; 10 uses
  %i.l = icmp sgt i64 %i.k, 4
  br i1 %i.l, label %bb.d, label %bb.e, !prof !124

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.i, i64 %i.k, i1 false), !noalias !1369
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.k, 4
  br i1 %i.m, label %.thread23, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !67   ; 2 uses
  store ptr %1, ptr %0, align 8, !tbaa !1370
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i4 = icmp eq i64 %.pre-phi.i, %.pre-phi5.i
  br i1 %.not.i.i.i.i.i4, label %.thread, label %bb.g

.thread23:                                        ; preds = %bb.e
  %i.q = load i32, ptr %i.i, align 4, !tbaa !84, !noalias !1369
  store i32 %i.q, ptr %i.j, align 4, !tbaa !84, !noalias !1369
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !67
  store ptr %1, ptr %0, align 8, !tbaa !1370
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5

.thread:                                          ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds i8, ptr null, i64 %i.k ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %i.w, align 8, !tbaa !98
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.x = icmp ugt i64 %i.k, 9223372036854775804
  br i1 %i.x, label %.noexc.i.i.i6, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5, !prof !125

.noexc.i.i.i6:                                    ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #36
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i.i6
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5: ; preds = %.thread23, %bb.g
  %i.y = phi i64 [ %i.s, %.thread23 ], [ %i.o, %bb.g ] ; 3 uses
  %i.z = phi ptr [ %i.t, %.thread23 ], [ %i.p, %bb.g ]
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #38
          to label %.noexc7 unwind label %bb.l    ; 4 uses

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !88
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.k ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !98
  %4 = icmp samesign ugt i64 %i.k, 4
  br i1 %4, label %bb.h, label %bb.i, !prof !126

bb.h:                                             ; preds = %.noexc7
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.j, i64 %i.k, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %.noexc7
  %i.ae = icmp eq i64 %i.k, 4
  br i1 %i.ae, label %.thread16, label %bb.j

.thread16:                                        ; preds = %bb.i
  %i.af = load i32, ptr %i.j, align 4, !tbaa !84
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !84
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.y, ptr %i.ag, align 8, !tbaa !100
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %.thread
  %i.ah = phi i64 [ %i.y, %bb.h ], [ %i.y, %bb.i ], [ %i.o, %.thread ]
  %i.ai = phi ptr [ %i.ac, %bb.h ], [ %i.ac, %bb.i ], [ %i.v, %.thread ]
  %i.aj = phi ptr [ %i.ab, %bb.h ], [ %i.ab, %bb.i ], [ %i.u, %.thread ]
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !100
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread16, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5, %.noexc.i.i.i6
  %i.al = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIiSaIiEED2Ev.exit9, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit9

_ZNSt6vectorIiSaIiEED2Ev.exit9:                   ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %i.al
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3igl8copyleft4cgal13minkowski_sumIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEdLi3ELi1EdLi3ELi1ES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS4_IT1_Li1EXT2_EXT3_ELi1EXT2_EEERKNS4_IT4_Li1EXT5_EXT6_ELi1EXT5_EEEbRNS3_15PlainObjectBaseIT7_EERNSP_IT8_EERNSP_IT9_EEENKUlRKS6_RS7_RS6_S11_S11_E_clES10_S11_S12_S11_S11_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Eigen::internal::evaluator.508", align 8 ; 5 uses
  %7 = alloca %"struct.Eigen::internal::evaluator.516", align 8 ; 5 uses
  %8 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.522", align 8 ; 7 uses
  %9 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %10 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %11 = alloca %"class.Eigen::Matrix.55", align 8 ; 19 uses
  %12 = alloca %"class.Eigen::Matrix.92", align 8 ; 10 uses
  %13 = alloca %"class.Eigen::Matrix.55", align 8 ; 9 uses
  %14 = alloca %"class.Eigen::Reverse.460", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::Block.336", align 8 ; 11 uses
  %16 = alloca %"class.Eigen::Matrix.92", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66   ; 9 uses
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !67
  %.fr = freeze i64 %i.g                          ; 8 uses
  %i.h = trunc i64 %.fr to i32                    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false), !alias.scope !1395
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 7 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !66, !noalias !1395 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIiiEELi1EEEE4evalEv.exit, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.a
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %i.j, i64 noundef 1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !103, !alias.scope !1395 ; 8 uses
  %.pre.i.i = load ptr, ptr %12, align 8, !tbaa !102, !alias.scope !1395 ; 9 uses
  %.pre.i.i229 = ptrtoaddr ptr %.pre.i.i to i64
  %i.l = sdiv i64 %.pr.i.i.i.i.i.i.i, 4
  %i.m = shl nsw i64 %i.l, 2                      ; 7 uses
  %i.n = icmp sgt i64 %.pr.i.i.i.i.i.i.i, 3
  br i1 %i.n, label %.lr.ph.i.preheader.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i:                 ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE12assignPacketILi16ELi0ENS0_20eigen_packet_wrapperIDv2_xLi0EEEEEvl.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.p = icmp slt i64 %i.m, %.pr.i.i.i.i.i.i.i
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIiiEELi1EEEE4evalEv.exit

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.q = load ptr, ptr %11, align 8, !tbaa !68, !noalias !1396 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !67, !noalias !1396 ; 6 uses
  %i.t = load i64, ptr %i.i, align 8, !tbaa !66   ; 6 uses
  %i.u = icmp sgt i64 %i.s, 1
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.v = add nsw i64 %i.s, -1                     ; 2 uses
  %min.iters.check232 = icmp ugt i64 %i.s, 8
  %ident.check.not = icmp eq i64 %i.t, 1
  %or.cond246 = select i1 %min.iters.check232, i1 %ident.check.not, i1 false
  %n.vec234 = and i64 %i.v, -8                    ; 3 uses
  %i.w = or disjoint i64 %n.vec234, 1
  %cmp.n242 = icmp eq i64 %i.v, %n.vec234
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.x = ptrtoaddr ptr %i.q to i64
  %i.y = sub i64 %.pr.i.i.i.i.i.i.i, %i.m         ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 8
  %i.z = sub i64 %i.x, %.pre.i.i229
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader251, label %vector.ph

vector.ph:                                        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.y, -8                       ; 3 uses
  %i.aa = add i64 %i.m, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = add i64 %i.m, %index                    ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <4 x i32>, ptr %i.ac, align 4, !tbaa !84
  %wide.load230 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !84
  %i.ae = getelementptr inbounds [4 x i8], ptr %.pre.i.i, i64 %i.ab ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %wide.load, ptr %i.ae, align 4, !tbaa !84
  store <4 x i32> %wide.load230, ptr %i.af, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1375

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIiiEELi1EEEE4evalEv.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader251

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader251: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.m, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ] ; 4 uses
  %i.ah = sub i64 %.pr.i.i.i.i.i.i.i, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter256 = and i64 %i.ah, 3                 ; 2 uses
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod257.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader251, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.al, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader251 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader251 ]
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !84
  %i.ak = getelementptr inbounds [4 x i8], ptr %.pre.i.i, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !84
  %i.al = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter256
  br i1 %prol.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1376

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader251
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader251 ], [ %i.al, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.prol ]
  %i.am = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %.pr.i.i.i.i.i.i.i
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIiiEELi1EEEE4evalEv.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i
  %.05.us.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ca, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprINS3_IiLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIiiEELi1EEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.05.us.i.i.i.i.i.i.i.i.i ; 7 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !84 ; 2 uses
  br i1 %or.cond246, label %vector.ph233, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.preheader

vector.ph233:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph233
  %index236 = phi i64 [ 0, %vector.ph233 ], [ %index.next240, %vector.body235 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph233 ], [ %i.at, %vector.body235 ]
  %vec.phi237 = phi <4 x i32> [ %broadcast.splat, %vector.ph233 ], [ %i.au, %vector.body235 ]
  %i.aq = getelementptr [4 x i8], ptr %i.ao, i64 %index236 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  %i.as = getelementptr i8, ptr %i.aq, i64 20
  %wide.load238 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !84
  %wide.load239 = load <4 x i32>, ptr %i.as, align 4, !tbaa !84
  %i.at = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load238, <4 x i32> %vec.phi) ; 2 uses
end_hunk_2
