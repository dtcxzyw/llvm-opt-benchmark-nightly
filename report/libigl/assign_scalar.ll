Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/assign_scalar?download=true
inline.NumInlined: 4685
inline.NumDeleted: 1060
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN3igl8copyleft4cgal13assign_scalarIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEfEEvRKT_RKbRT0_:bb.a
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.f ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.i) #36
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.g, align 8, !tbaa !62
  store ptr null, ptr %i.h, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.j

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.g, align 8, !tbaa !62
  store ptr null, ptr %i.h, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.l = load atomic ptr, ptr %i.k monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !12
  call void @_ZN5boost14multiprecision6detail33generic_convert_rational_to_floatIdNS0_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.l)
  %i.m = load double, ptr %i.a, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN3igl8copyleft4cgal13assign_scalarIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEdEEvRKT_RKbRT0_.exit

_ZN3igl8copyleft4cgal13assign_scalarIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEdEEvRKT_RKbRT0_.exit: ; preds = %bb.b, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i
  %i.n = phi double [ %.pre, %bb.b ], [ %i.m, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i ]
  %i.o = fptrunc double %i.n to float
  store float %i.o, ptr %2, align 4, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3igl8copyleft4cgal13assign_scalarERKN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEERSH_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i = icmp eq i8 %i.a, 0
  %i.b = load ptr, ptr %0, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i:             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !95     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, label %bb.d

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i:      ; preds = %bb.a
  %i.f = load atomic i32, ptr %i.c monotonic, align 4
  %i.g = add nsw i32 %i.f, 1
  store atomic i32 %i.g, ptr %i.c monotonic, align 4
  %i.h = load ptr, ptr %1, align 8, !tbaa !95     ; 4 uses
  %.not4.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not4.i.i.i, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load atomic i32, ptr %i.i monotonic, align 4 ; 2 uses
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.thread.i.i.i
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(12) %i.h) #24, !inline_history !132
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

bb.c:                                             ; preds = %.thread.i.i.i
  %i.o = add nsw i32 %i.j, -1
  store atomic i32 %i.o, ptr %i.i monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

bb.d:                                             ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = atomicrmw sub ptr %i.p, i32 1 release, align 4
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.f, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  fence acquire
  %i.u = load ptr, ptr %1, align 8, !tbaa !95     ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(12) %i.u) #24, !inline_history !132
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit: ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i, %bb.b, %bb.c, %bb.e, %bb.f, %bb.g
  %i.z = load ptr, ptr %0, align 8, !tbaa !95
  store ptr %i.z, ptr %1, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #37 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(64) %1)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.c = extractvalue { double, double } %i.b, 0
  %i.d = extractvalue { double, double } %i.b, 1
  %i.e = fneg double %i.c
  %i.f = insertelement <2 x double> poison, double %i.e, i64 0
  %i.g = insertelement <2 x double> %i.f, double %i.d, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.h, align 4, !tbaa !111
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.a, align 16, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x double> %i.g, ptr %i.i, align 16, !tbaa !70
  %i.j = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37
          to label %.noexc3 unwind label %bb.d    ; 3 uses

.noexc3:                                          ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef nonnull align 16 dereferenceable(64) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc3
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 64) #38
  br label %.body

bb.c:                                             ; preds = %.noexc3
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.j, ptr %i.l, align 16, !tbaa !113
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.m, align 8, !tbaa !115
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL17Lazy_exact_Ex_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEE, i64 16), ptr %i.a, align 16, !tbaa !23
  store ptr %i.a, ptr %0, align 8, !tbaa !95
  ret void

bb.d:                                             ; preds = %.noexc, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.k, %bb.b ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #38
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @nextafter(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.101, align 8            ; 5 uses
  %3 = alloca %class.anon, align 8                ; 4 uses
  %4 = alloca %class.anon.101, align 8            ; 5 uses
  %5 = alloca %class.anon, align 8                ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !95     ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !95     ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !70
  %i.g = load <2 x double>, ptr %i.d, align 16    ; 2 uses
  %i.h = extractelement <2 x double> %i.g, i64 0
  %i.i = fneg double %i.h
  %i.j = fcmp olt double %i.f, %i.i
  br i1 %i.j, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = extractelement <2 x double> %i.g, i64 1
  %i.m = load <2 x double>, ptr %i.k, align 16, !tbaa !70
  %i.n = extractelement <2 x double> %i.m, i64 0
  %i.o = fneg double %i.n
  %i.p = fcmp ugt double %i.l, %i.o
  %6 = select i1 %i.p, i16 256, i16 0
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit:     ; preds = %bb.b, %bb.c
  %.sroa.0.0.insert.insert.i = phi i16 [ 257, %bb.b ], [ %6, %bb.c ] ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.0.0.insert.insert.i to i8
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.0.0.insert.insert.i, 8
  %.sroa.2.0.extract.trunc.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i to i8
  %i.q = icmp eq i8 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit
  %i.r = trunc i16 %.sroa.0.0.insert.insert.i to i1
  br label %bb.l

bb.e:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %i.a, ptr %5, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %5, ptr %4, align 8, !tbaa !62
  %i.t = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %4, ptr %i.t, align 8, !tbaa !62
  %i.u = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.u, align 8, !tbaa !62
  %i.v = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.s, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.h ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.v) #36
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.ac, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.t, align 8, !tbaa !62
  store ptr null, ptr %i.u, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.t, align 8, !tbaa !62
  store ptr null, ptr %i.u, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.y = load atomic ptr, ptr %i.x monotonic, align 8
  %i.z = load ptr, ptr %1, align 8, !tbaa !95     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.z, ptr %3, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %3, ptr %2, align 8, !tbaa !62
  store ptr %2, ptr %i.t, align 8, !tbaa !62
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.u, align 8, !tbaa !62
  %i.ab = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10 unwind label %bb.k ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10:          ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %.not.i.i.i11 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i11, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, label %bb.i

bb.i:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ab) #36
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.t, align 8, !tbaa !62
  store ptr null, ptr %i.u, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  store ptr null, ptr %i.t, align 8, !tbaa !62
  store ptr null, ptr %i.u, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ae = load atomic ptr, ptr %i.ad monotonic, align 8
  %i.af = call noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.y, ptr noundef nonnull align 16 dereferenceable(64) %i.ae)
  %i.ag = icmp slt i32 %i.af, 0
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.r, %bb.d ], [ %i.ag, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12 ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !95     ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN4CGAL6Handle5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 4 ; 2 uses
  %i.e = icmp eq i32 %i.d, 1                      ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #24, !inline_history !133
  br label %_ZN4CGAL6Handle5resetEv.exit

bb.e:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.d, -1
  store atomic i32 %i.i, ptr %i.c monotonic, align 4
  br label %_ZN4CGAL6Handle5resetEv.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = atomicrmw sub ptr %i.c, i32 1 release, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %_ZN4CGAL6Handle5resetEv.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.l = load ptr, ptr %0, align 8, !tbaa !95     ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN4CGAL6Handle5resetEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #24, !inline_history !133
  br label %_ZN4CGAL6Handle5resetEv.exit

_ZN4CGAL6Handle5resetEv.exit:                     ; preds = %bb.d, %bb.e, %bb.g, %bb.h, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl8copyleft4cgal13assign_scalarERKN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEERf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %2 = alloca %class.anon.101, align 8            ; 5 uses
  %3 = alloca %class.anon, align 8                ; 4 uses
  %4 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 10 uses
  %5 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 8 uses
  %6 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 9 uses
  %7 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 8 uses
  %8 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.k = load ptr, ptr %0, align 8, !tbaa !95     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.k, ptr %3, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %3, ptr %2, align 8, !tbaa !62
  %i.m = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.m, align 8, !tbaa !62
  %i.n = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.n, align 8, !tbaa !62
  %i.o = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.o) #36
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %.body, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.d ], [ %.pn.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.m, align 8, !tbaa !62
  store ptr null, ptr %i.n, align 8, !tbaa !62
end_hunk_0
