Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/assign_scalar?download=true
inline.NumInlined: 4685
inline.NumDeleted: 1060
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZNK4CORE8BinOpRep9debugListEii:bb.a
  %i.ae = or i32 %i.ad, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ab, i32 noundef %i.ae)
          to label %_ZN4CORElsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit20 unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.af = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #24
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.x, i64 noundef %i.af)
          to label %_ZN4CORElsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit20 unwind label %bb.j ; 0 uses

_ZN4CORElsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit20: ; preds = %bb.h, %bb.i
  %i.ah = load ptr, ptr %4, align 8, !tbaa !71    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZN4CORElsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit20
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !70
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZN4CORElsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %4, align 8, !tbaa !71    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.j
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !70
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.m

bb.k:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !92 ; 2 uses
  %i.au = add nsw i32 %2, -1                      ; 2 uses
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(48) %i.at, i32 noundef %1, i32 noundef %i.au)
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.21, i64 noundef 2) ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !94 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !23
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i32 noundef %1, i32 noundef %i.au)
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.20, i64 noundef 1) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret void

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %.pn = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl8copyleft4cgal13assign_scalarIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEdEEvRKT_RKbRT0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %3 = alloca %class.anon.101, align 8            ; 5 uses
  %4 = alloca %class.anon, align 8                ; 4 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !45, !range !37, !noundef !38
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3igl8copyleft4cgal13assign_scalarERKN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEERd(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !95     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %i.d, ptr %4, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %4, ptr %3, align 8, !tbaa !62
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %3, ptr %i.f, align 8, !tbaa !62
  %i.g = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.g, align 8, !tbaa !62
  %i.h = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.f ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.h) #36
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.f, align 8, !tbaa !62
  store ptr null, ptr %i.g, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.i

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.f, align 8, !tbaa !62
  store ptr null, ptr %i.g, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.k = load atomic ptr, ptr %i.j monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !12
  call void @_ZN5boost14multiprecision6detail33generic_convert_rational_to_floatIdNS0_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.k)
  %i.l = load double, ptr %i.a, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store double %i.l, ptr %2, align 8, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl8copyleft4cgal13assign_scalarERKN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEERd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.m, align 8, !tbaa !62
  store ptr null, ptr %i.n, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.r = load atomic ptr, ptr %i.q monotonic, align 8
  call void @_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 16 dereferenceable(64) %i.r)
  %i.s = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %9 = load double, ptr %i.t, align 16, !tbaa !70
  %10 = fneg double %9                            ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %12 = load double, ptr %11, align 8, !tbaa !70  ; 2 uses
  store double %10, ptr %1, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.bc, %bb.e
  %i.u = phi double [ %i.v, %bb.bc ], [ %10, %bb.e ]
  %i.v = call double @nextafter(double noundef %i.u, double noundef %12) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.w = load ptr, ptr %4, align 8, !tbaa !95, !noalias !101 ; 2 uses
  store ptr %i.w, ptr %6, align 8, !tbaa !95, !alias.scope !101
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70, !noalias !101
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load atomic i32, ptr %i.y monotonic, align 4, !noalias !101
  %i.aa = add nsw i32 %i.z, 1
  store atomic i32 %i.aa, ptr %i.y monotonic, align 4, !noalias !101
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ab = atomicrmw add ptr %i.y, i32 1 monotonic, align 4, !noalias !101 ; 0 uses
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i: ; preds = %bb.h, %bb.g
  %i.ac = load double, ptr %1, align 8, !tbaa !12, !noalias !101
  %i.ad = invoke noundef nonnull align 8 dereferenceable(9) ptr @_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEmIEd(ptr noundef nonnull align 8 dereferenceable(9) %6, double noundef %i.ac)
          to label %_ZN5boost14operators_implmiERKN4CGAL13Lazy_exact_ntINS_14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEERKd.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost14operators_implmiERKN4CGAL13Lazy_exact_ntINS_14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEERKd.exit: ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.af = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37
          to label %.noexc unwind label %bb.az    ; 7 uses

.noexc:                                           ; preds = %_ZN5boost14operators_implmiERKN4CGAL13Lazy_exact_ntINS_14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEERKd.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !110
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.j), !noalias !110
  %i.ag = load i32, ptr %i.j, align 4, !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !110
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.h), !noalias !110
  %i.ah = load i32, ptr %i.h, align 4, !noalias !110
  %i.ai = and i32 %i.ah, -24577
  %i.aj = or disjoint i32 %i.ai, 16384
  store i32 %i.aj, ptr %i.i, align 4, !noalias !110
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.i), !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !110
  %i.ak = load ptr, ptr %6, align 8, !tbaa !95, !noalias !110 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load <2 x double>, ptr %i.al, align 16, !tbaa !70, !noalias !110 ; 3 uses
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ao = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.am, <2 x double> %i.an)
  %i.ap = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.am, <2 x double> %i.an)
  %i.aq = shufflevector <2 x double> %i.ao, <2 x double> %i.ap, <2 x i32> <i32 0, i32 3>
  %i.ar = call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.aq, <2 x double> <double -0.000000e+00, double poison>)
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 1, ptr %i.as, align 4, !tbaa !111, !noalias !110
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <2 x double> %i.ar, ptr %i.at, align 16, !tbaa !70, !noalias !110
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr null, ptr %i.au, align 16, !tbaa !113, !noalias !110
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i32 0, ptr %i.av, align 8, !tbaa !115, !noalias !110
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store ptr %i.ak, ptr %i.aw, align 16, !tbaa !95, !noalias !110
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70, !noalias !110
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.az = load atomic i32, ptr %i.ay monotonic, align 8, !noalias !110
  %i.ba = add nsw i32 %i.az, 1
  store atomic i32 %i.ba, ptr %i.ay monotonic, align 8, !noalias !110
  br label %bb.l

bb.k:                                             ; preds = %.noexc
  %i.bb = atomicrmw add ptr %i.ay, i32 1 monotonic, align 4, !noalias !110 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bc = and i32 %i.ag, 24576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !110
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.f), !noalias !110
  %i.bd = load i32, ptr %i.f, align 4, !noalias !110
  %i.be = and i32 %i.bd, -24577
  %i.bf = or disjoint i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.g, align 4, !noalias !110
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.g), !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !110
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL14Lazy_exact_AbsIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEE, i64 16), ptr %i.af, align 16, !tbaa !23, !noalias !110
  store ptr %i.af, ptr %5, align 8, !tbaa !95, !alias.scope !110
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.bg = load ptr, ptr %4, align 8, !tbaa !95, !noalias !117 ; 2 uses
  store ptr %i.bg, ptr %8, align 8, !tbaa !95, !alias.scope !117
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70, !noalias !117
  %.not.i.i.i.i.i20 = icmp eq i8 %i.bh, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i20, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = load atomic i32, ptr %i.bi monotonic, align 4, !noalias !117
  %i.bk = add nsw i32 %i.bj, 1
  store atomic i32 %i.bk, ptr %i.bi monotonic, align 4, !noalias !117
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i21

bb.n:                                             ; preds = %bb.l
  %i.bl = atomicrmw add ptr %i.bi, i32 1 monotonic, align 4, !noalias !117 ; 0 uses
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i21

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i21: ; preds = %bb.n, %bb.m
  %i.bm = invoke noundef nonnull align 8 dereferenceable(9) ptr @_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEmIEd(ptr noundef nonnull align 8 dereferenceable(9) %8, double noundef %i.v)
          to label %_ZN5boost14operators_implmiERKN4CGAL13Lazy_exact_ntINS_14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEERKd.exit24 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i21
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body22

_ZN5boost14operators_implmiERKN4CGAL13Lazy_exact_ntINS_14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEERKd.exit24: ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i21
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.bo = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37
          to label %.noexc26 unwind label %bb.ba  ; 7 uses

.noexc26:                                         ; preds = %_ZN5boost14operators_implmiERKN4CGAL13Lazy_exact_ntINS_14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEERKd.exit24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !126
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e), !noalias !126
  %i.bp = load i32, ptr %i.e, align 4, !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !126
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c), !noalias !126
  %i.bq = load i32, ptr %i.c, align 4, !noalias !126
  %i.br = and i32 %i.bq, -24577
  %i.bs = or disjoint i32 %i.br, 16384
  store i32 %i.bs, ptr %i.d, align 4, !noalias !126
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d), !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !126
  %i.bt = load ptr, ptr %8, align 8, !tbaa !95, !noalias !126 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load <2 x double>, ptr %i.bu, align 16, !tbaa !70, !noalias !126 ; 3 uses
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bx = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bv, <2 x double> %i.bw)
  %i.by = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bv, <2 x double> %i.bw)
  %i.bz = shufflevector <2 x double> %i.bx, <2 x double> %i.by, <2 x i32> <i32 0, i32 3>
  %i.ca = call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.bz, <2 x double> <double -0.000000e+00, double poison>)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 1, ptr %i.cb, align 4, !tbaa !111, !noalias !126
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <2 x double> %i.ca, ptr %i.cc, align 16, !tbaa !70, !noalias !126
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr null, ptr %i.cd, align 16, !tbaa !113, !noalias !126
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store i32 0, ptr %i.ce, align 8, !tbaa !115, !noalias !126
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store ptr %i.bt, ptr %i.cf, align 16, !tbaa !95, !noalias !126
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70, !noalias !126
  %.not.i.i.i.i.i.i.i.i25 = icmp eq i8 %i.cg, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i25, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.noexc26
  %i.ci = load atomic i32, ptr %i.ch monotonic, align 8, !noalias !126
  %i.cj = add nsw i32 %i.ci, 1
  store atomic i32 %i.cj, ptr %i.ch monotonic, align 8, !noalias !126
  br label %bb.r

bb.q:                                             ; preds = %.noexc26
  %i.ck = atomicrmw add ptr %i.ch, i32 1 monotonic, align 4, !noalias !126 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cl = and i32 %i.bp, 24576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !126
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a), !noalias !126
  %i.cm = load i32, ptr %i.a, align 4, !noalias !126
  %i.cn = and i32 %i.cm, -24577
  %i.co = or disjoint i32 %i.cn, %i.cl
  store i32 %i.co, ptr %i.b, align 4, !noalias !126
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b), !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !126
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL14Lazy_exact_AbsIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEE, i64 16), ptr %i.bo, align 16, !tbaa !23, !noalias !126
  store ptr %i.bo, ptr %7, align 8, !tbaa !95, !alias.scope !126
  %i.cp = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(9) %7)
          to label %bb.s unwind label %bb.bb

bb.s:                                             ; preds = %bb.r
end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal13assign_scalarIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEfEEvRKT_RKbRT0_:bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !45, !range !37, !noundef !38
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN3igl8copyleft4cgal13assign_scalarERKN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEERd(ptr noundef nonnull readonly align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pre = load double, ptr %i.b, align 8, !tbaa !12
  br label %_ZN3igl8copyleft4cgal13assign_scalarIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEdEEvRKT_RKbRT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !95     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %i.e, ptr %4, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %4, ptr %3, align 8, !tbaa !62
  %i.g = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %3, ptr %i.g, align 8, !tbaa !62
  %i.h = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.h, align 8, !tbaa !62
  %i.i = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull @__once_proxy)
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
  %i.b = load ptr, ptr %1, align 8, !tbaa !95     ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !70
  %6 = load double, ptr %i.d, align 16, !tbaa !70
  %i.g = fneg double %6
  %i.h = fcmp olt double %i.f, %i.g
  br i1 %i.h, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %7 = load double, ptr %i.i, align 16, !tbaa !70
  %8 = fneg double %7
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %10 = load double, ptr %9, align 8, !tbaa !70
  %i.j = fcmp ugt double %10, %8
  br i1 %i.j, label %bb.d, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit

bb.d:                                             ; preds = %bb.c
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit:     ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.4.0.i = phi i16 [ 257, %bb.b ], [ 256, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.4.0.i to i8
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.4.0.i, 8
  %.sroa.2.0.extract.trunc.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i to i8
  %i.k = icmp eq i8 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit
  %i.l = trunc i16 %.sroa.4.0.i to i1
  br label %bb.m

bb.f:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %i.a, ptr %5, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %5, ptr %4, align 8, !tbaa !62
  %i.n = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %4, ptr %i.n, align 8, !tbaa !62
  %i.o = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.o, align 8, !tbaa !62
  %i.p = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.i ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.p) #36
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.w, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.n, align 8, !tbaa !62
  store ptr null, ptr %i.o, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.n, align 8, !tbaa !62
  store ptr null, ptr %i.o, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = load atomic ptr, ptr %i.r monotonic, align 8
  %i.t = load ptr, ptr %1, align 8, !tbaa !95     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.t, ptr %3, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %3, ptr %2, align 8, !tbaa !62
  store ptr %2, ptr %i.n, align 8, !tbaa !62
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.o, align 8, !tbaa !62
  %i.v = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10 unwind label %bb.l ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10:          ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %.not.i.i.i11 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i11, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, label %bb.j

bb.j:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.v) #36
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.n, align 8, !tbaa !62
  store ptr null, ptr %i.o, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  store ptr null, ptr %i.n, align 8, !tbaa !62
  store ptr null, ptr %i.o, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.y = load atomic ptr, ptr %i.x monotonic, align 8
  %i.z = call noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.s, ptr noundef nonnull align 16 dereferenceable(64) %i.y)
  %i.aa = icmp slt i32 %i.z, 0
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.l, %bb.e ], [ %i.aa, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12 ]
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.m, align 8, !tbaa !62
  store ptr null, ptr %i.n, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.r = load atomic ptr, ptr %i.q monotonic, align 8
  call void @_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 16 dereferenceable(64) %i.r)
  %i.s = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %9 = load double, ptr %i.t, align 16, !tbaa !70
  %10 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %11 = load double, ptr %10, align 8, !tbaa !70
  %i.u = fptrunc double %9 to float
  %i.v = fneg float %i.u                          ; 2 uses
  store float %i.v, ptr %1, align 4, !tbaa !130
  %i.w = fptrunc double %11 to float              ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.bc, %bb.e
  %i.x = phi float [ %i.y, %bb.bc ], [ %i.v, %bb.e ] ; 2 uses
  %i.y = call noundef float @nextafterf(float noundef %i.x, float noundef %i.w) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.z = fpext float %i.x to double
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.aa = load ptr, ptr %4, align 8, !tbaa !95, !noalias !134 ; 2 uses
  store ptr %i.aa, ptr %6, align 8, !tbaa !95, !alias.scope !134
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70, !noalias !134
  %.not.i.i.i.i.i = icmp eq i8 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4, !noalias !134
  %i.ae = add nsw i32 %i.ad, 1
  store atomic i32 %i.ae, ptr %i.ac monotonic, align 4, !noalias !134
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.af = atomicrmw add ptr %i.ac, i32 1 monotonic, align 4, !noalias !134 ; 0 uses
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i: ; preds = %bb.h, %bb.g
  %i.ag = invoke noundef nonnull align 8 dereferenceable(9) ptr @_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEmIEd(ptr noundef nonnull align 8 dereferenceable(9) %6, double noundef %i.z)
          to label %_ZN5boost14operators_implmiERKN4CGAL13Lazy_exact_ntINS_14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEERKd.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost14operators_implmiERKN4CGAL13Lazy_exact_ntINS_14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEERKd.exit: ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.ai = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37
          to label %.noexc unwind label %bb.az    ; 7 uses

.noexc:                                           ; preds = %_ZN5boost14operators_implmiERKN4CGAL13Lazy_exact_ntINS_14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEERKd.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !143
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.j), !noalias !143
  %i.aj = load i32, ptr %i.j, align 4, !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !143
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.h), !noalias !143
  %i.ak = load i32, ptr %i.h, align 4, !noalias !143
  %i.al = and i32 %i.ak, -24577
  %i.am = or disjoint i32 %i.al, 16384
  store i32 %i.am, ptr %i.i, align 4, !noalias !143
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.i), !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !143
  %i.an = load ptr, ptr %6, align 8, !tbaa !95, !noalias !143 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load <2 x double>, ptr %i.ao, align 16, !tbaa !70, !noalias !143 ; 3 uses
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ar = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ap, <2 x double> %i.aq)
  %i.as = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ap, <2 x double> %i.aq)
  %i.at = shufflevector <2 x double> %i.ar, <2 x double> %i.as, <2 x i32> <i32 0, i32 3>
  %i.au = call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.at, <2 x double> <double -0.000000e+00, double poison>)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 1, ptr %i.av, align 4, !tbaa !111, !noalias !143
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x double> %i.au, ptr %i.aw, align 16, !tbaa !70, !noalias !143
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr null, ptr %i.ax, align 16, !tbaa !113, !noalias !143
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i32 0, ptr %i.ay, align 8, !tbaa !115, !noalias !143
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store ptr %i.an, ptr %i.az, align 16, !tbaa !95, !noalias !143
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70, !noalias !143
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.bc = load atomic i32, ptr %i.bb monotonic, align 8, !noalias !143
  %i.bd = add nsw i32 %i.bc, 1
  store atomic i32 %i.bd, ptr %i.bb monotonic, align 8, !noalias !143
  br label %bb.l

bb.k:                                             ; preds = %.noexc
  %i.be = atomicrmw add ptr %i.bb, i32 1 monotonic, align 4, !noalias !143 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bf = and i32 %i.aj, 24576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !143
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.f), !noalias !143
  %i.bg = load i32, ptr %i.f, align 4, !noalias !143
  %i.bh = and i32 %i.bg, -24577
  %i.bi = or disjoint i32 %i.bh, %i.bf
  store i32 %i.bi, ptr %i.g, align 4, !noalias !143
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.g), !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !143
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL14Lazy_exact_AbsIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEE, i64 16), ptr %i.ai, align 16, !tbaa !23, !noalias !143
  store ptr %i.ai, ptr %5, align 8, !tbaa !95, !alias.scope !143
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.bj = fpext float %i.y to double
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.bk = load ptr, ptr %4, align 8, !tbaa !95, !noalias !144 ; 2 uses
  store ptr %i.bk, ptr %8, align 8, !tbaa !95, !alias.scope !144
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70, !noalias !144
  %.not.i.i.i.i.i22 = icmp eq i8 %i.bl, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i22, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = load atomic i32, ptr %i.bm monotonic, align 4, !noalias !144
  %i.bo = add nsw i32 %i.bn, 1
  store atomic i32 %i.bo, ptr %i.bm monotonic, align 4, !noalias !144
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i23

bb.n:                                             ; preds = %bb.l
  %i.bp = atomicrmw add ptr %i.bm, i32 1 monotonic, align 4, !noalias !144 ; 0 uses
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i23

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i23: ; preds = %bb.n, %bb.m
  %i.bq = invoke noundef nonnull align 8 dereferenceable(9) ptr @_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEmIEd(ptr noundef nonnull align 8 dereferenceable(9) %8, double noundef %i.bj)
          to label %_ZN5boost14operators_implmiERKN4CGAL13Lazy_exact_ntINS_14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEERKd.exit26 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i23
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body24

_ZN5boost14operators_implmiERKN4CGAL13Lazy_exact_ntINS_14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEERKd.exit26: ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit.i23
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.bs = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37
          to label %.noexc28 unwind label %bb.ba  ; 7 uses

.noexc28:                                         ; preds = %_ZN5boost14operators_implmiERKN4CGAL13Lazy_exact_ntINS_14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEERKd.exit26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !153
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e), !noalias !153
  %i.bt = load i32, ptr %i.e, align 4, !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !153
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c), !noalias !153
  %i.bu = load i32, ptr %i.c, align 4, !noalias !153
  %i.bv = and i32 %i.bu, -24577
  %i.bw = or disjoint i32 %i.bv, 16384
  store i32 %i.bw, ptr %i.d, align 4, !noalias !153
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d), !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !153
  %i.bx = load ptr, ptr %8, align 8, !tbaa !95, !noalias !153 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load <2 x double>, ptr %i.by, align 16, !tbaa !70, !noalias !153 ; 3 uses
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cb = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bz, <2 x double> %i.ca)
  %i.cc = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bz, <2 x double> %i.ca)
  %i.cd = shufflevector <2 x double> %i.cb, <2 x double> %i.cc, <2 x i32> <i32 0, i32 3>
  %i.ce = call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.cd, <2 x double> <double -0.000000e+00, double poison>)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 1, ptr %i.cf, align 4, !tbaa !111, !noalias !153
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <2 x double> %i.ce, ptr %i.cg, align 16, !tbaa !70, !noalias !153
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  store ptr null, ptr %i.ch, align 16, !tbaa !113, !noalias !153
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store i32 0, ptr %i.ci, align 8, !tbaa !115, !noalias !153
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  store ptr %i.bx, ptr %i.cj, align 16, !tbaa !95, !noalias !153
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70, !noalias !153
  %.not.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.ck, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i27, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.noexc28
  %i.cm = load atomic i32, ptr %i.cl monotonic, align 8, !noalias !153
  %i.cn = add nsw i32 %i.cm, 1
  store atomic i32 %i.cn, ptr %i.cl monotonic, align 8, !noalias !153
  br label %bb.r

bb.q:                                             ; preds = %.noexc28
  %i.co = atomicrmw add ptr %i.cl, i32 1 monotonic, align 4, !noalias !153 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cp = and i32 %i.bt, 24576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !153
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a), !noalias !153
  %i.cq = load i32, ptr %i.a, align 4, !noalias !153
  %i.cr = and i32 %i.cq, -24577
  %i.cs = or disjoint i32 %i.cr, %i.cp
  store i32 %i.cs, ptr %i.b, align 4, !noalias !153
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b), !noalias !153
end_hunk_1
begin_hunk_2_@_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED2Ev:bb.a

bb.k:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #24, !inline_history !127
  br label %_ZN4CGAL6HandleD2Ev.exit3

bb.m:                                             ; preds = %bb.k
  %i.aa = add nsw i32 %i.v, -1
  store atomic i32 %i.aa, ptr %i.u monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit3

bb.n:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = atomicrmw sub ptr %i.u, i32 1 release, align 4
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.p, label %_ZN4CGAL6HandleD2Ev.exit3

bb.p:                                             ; preds = %bb.o, %bb.n
  fence acquire
  %i.ad = load ptr, ptr %i.r, align 16, !tbaa !95 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4CGAL6HandleD2Ev.exit3, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #24, !inline_history !127
  br label %_ZN4CGAL6HandleD2Ev.exit3

_ZN4CGAL6HandleD2Ev.exit3:                        ; preds = %_ZN4CGAL6HandleD2Ev.exit, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load atomic ptr, ptr %i.ai monotonic, align 16 ; 10 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit3
  fence acquire
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !53, !range !37, !noundef !38
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.ao = load i8, ptr %i.an, align 2, !range !37
  %i.ap = trunc nuw i8 %i.ao to i1
  %or.cond.i1.i.i.i = select i1 %i.am, i1 true, i1 %i.ap
  br i1 %or.cond.i1.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.aq, align 16
  %i.au = shl i64 %i.at, 3
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.au) #38, !inline_history !1169
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i: ; preds = %bb.s, %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 25
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !53, !range !37, !noundef !38
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 26
  %i.az = load i8, ptr %i.ay, align 2, !range !37
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond.i.i.i.i = select i1 %i.ax, i1 true, i1 %i.ba
  br i1 %or.cond.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load i64, ptr %i.aj, align 16
  %i.be = shl i64 %i.bd, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.be) #38, !inline_history !1169
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i: ; preds = %bb.t, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 64) #38, !inline_history !1169
  br label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit

_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit3, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_SubIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED2Ev(ptr noundef nonnull align 16 dead_on_return(80) dereferenceable(80) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL14Lazy_exact_SubIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E12update_exactEv(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.101, align 8            ; 5 uses
  %3 = alloca %class.anon, align 8                ; 4 uses
  %4 = alloca %class.anon.101, align 8            ; 5 uses
  %5 = alloca %class.anon, align 8                ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !95  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %i.c, ptr %5, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %5, ptr %4, align 8, !tbaa !62
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 5 uses
  store ptr %4, ptr %i.e, align 8, !tbaa !62
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 5 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !62
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #36
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !62
  store ptr null, ptr %i.f, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !95  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.l, ptr %3, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %3, ptr %2, align 8, !tbaa !62
  store ptr %2, ptr %i.e, align 8, !tbaa !62
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !62
  %i.n = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5 unwind label %bb.h ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i5:           ; preds = %bb.e
  %.not.i.i.i6 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i6, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.n) #36
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !62
  store ptr null, ptr %i.f, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.body

bb.i:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5
  store ptr null, ptr %i.e, align 8, !tbaa !62
  store ptr null, ptr %i.f, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.q = load atomic ptr, ptr %i.p monotonic, align 8
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN5boost14multiprecision8backends21eval_add_subtract_impINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_SD_b(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef nonnull align 16 dereferenceable(64) %i.q, i1 noundef zeroext false)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19subtract_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.a) #24
  br label %.body

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19subtract_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit: ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !70
  %6 = load double, ptr %i.s, align 16, !tbaa !70
  %i.v = fneg double %6
  %i.w = fcmp oeq double %i.u, %i.v
  br i1 %i.w, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19subtract_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.x = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.y = extractvalue { double, double } %i.x, 0
  %i.z = extractvalue { double, double } %i.x, 1
  %i.aa = fneg double %i.y
  %i.ab = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.z, i64 1
  store <2 x double> %i.ac, ptr %i.s, align 16, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.j, %bb.l, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.ad, %bb.l ], [ %i.r, %bb.j ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #38
  resume { ptr, i32 } %eh.lpad-body

bb.m:                                             ; preds = %bb.k, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19subtract_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.ae release, align 16
  %i.af = load ptr, ptr %i.b, align 16, !tbaa !95 ; 4 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN4CGAL6Handle5resetEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i12 = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1                    ; 2 uses
  br i1 %.not.i.i.i12, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #24, !inline_history !1191
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.an = add nsw i32 %i.ai, -1
  store atomic i32 %i.an, ptr %i.ah monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.r:                                             ; preds = %bb.n
  br i1 %i.aj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = atomicrmw sub ptr %i.ah, i32 1 release, align 4
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.t, label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.t:                                             ; preds = %bb.s, %bb.r
  fence acquire
  %i.aq = load ptr, ptr %i.b, align 16, !tbaa !95 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(12) %i.aq) #24, !inline_history !1191
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i:                ; preds = %bb.u, %bb.t, %bb.s, %bb.q, %bb.p
  store ptr null, ptr %i.b, align 16, !tbaa !95
  br label %_ZN4CGAL6Handle5resetEv.exit.i

_ZN4CGAL6Handle5resetEv.exit.i:                   ; preds = %_ZN4CGAL6Handle6decrefEv.exit.i.i, %bb.m
  %i.av = load ptr, ptr %i.k, align 16, !tbaa !95 ; 4 uses
  %.not.i1.i = icmp eq ptr %i.av, null
  br i1 %.not.i1.i, label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4CGAL6Handle5resetEv.exit.i
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i2.i = icmp eq i8 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ay = load atomic i32, ptr %i.ax monotonic, align 4 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 1                    ; 2 uses
  br i1 %.not.i.i2.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.az, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(12) %i.av) #24, !inline_history !1191
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.y:                                             ; preds = %bb.w
  %i.bd = add nsw i32 %i.ay, -1
  store atomic i32 %i.bd, ptr %i.ax monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.z:                                             ; preds = %bb.v
  br i1 %i.az, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = atomicrmw sub ptr %i.ax, i32 1 release, align 4
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.ab, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  fence acquire
  %i.bg = load ptr, ptr %i.k, align 16, !tbaa !95 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !23
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.bg) #24, !inline_history !1191
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

_ZN4CGAL6Handle6decrefEv.exit.i3.i:               ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  store ptr null, ptr %i.k, align 16, !tbaa !95
  br label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit

_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit: ; preds = %_ZN4CGAL6Handle5resetEv.exit.i, %_ZN4CGAL6Handle6decrefEv.exit.i3.i
  ret void
}

; Function Attrs: nounwind
declare void @llvm.x86.sse.ldmxcsr(ptr) #24

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #39
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEE, i64 16), ptr %0, align 16, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !95  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #24, !inline_history !127
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZN4CGAL6HandleD2Ev.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !95  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #24, !inline_history !127
  br label %_ZN4CGAL6HandleD2Ev.exit

end_hunk_2
begin_hunk_3_@_ZN4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEED2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ad) #38, !inline_history !1169
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i: ; preds = %bb.k, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 25
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !53, !range !37, !noundef !38
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 26
  %i.ai = load i8, ptr %i.ah, align 2, !range !37
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond.i.i.i.i = select i1 %i.ag, i1 true, i1 %i.aj
  br i1 %or.cond.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load i64, ptr %i.s, align 16
  %i.an = shl i64 %i.am, 3
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #38, !inline_history !1169
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i: ; preds = %bb.l, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #38, !inline_history !1169
  br label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit

_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_AbsIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEE, i64 16), ptr %0, align 16, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !95  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4CGAL6HandleD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #24, !inline_history !1192
  br label %_ZN4CGAL6HandleD2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZN4CGAL6HandleD2Ev.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !95  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN4CGAL6HandleD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #24, !inline_history !1192
  br label %_ZN4CGAL6HandleD2Ev.exit.i

_ZN4CGAL6HandleD2Ev.exit.i:                       ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load atomic ptr, ptr %i.r monotonic, align 16 ; 10 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit.i
  fence acquire
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 57
  %i.u = load i8, ptr %i.t, align 1, !tbaa !53, !range !37, !noundef !38
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 58
  %i.x = load i8, ptr %i.w, align 2, !range !37
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond.i1.i.i.i.i = select i1 %i.v, i1 true, i1 %i.y
  br i1 %or.cond.i1.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load i64, ptr %i.z, align 16
  %i.ad = shl i64 %i.ac, 3
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ad) #38, !inline_history !1193
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 25
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !53, !range !37, !noundef !38
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 26
  %i.ai = load i8, ptr %i.ah, align 2, !range !37
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond.i.i.i.i.i = select i1 %i.ag, i1 true, i1 %i.aj
  br i1 %or.cond.i.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load i64, ptr %i.s, align 16
  %i.an = shl i64 %i.am, 3
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #38, !inline_history !1193
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i: ; preds = %bb.l, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #38, !inline_history !1193
  br label %_ZN4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEED2Ev.exit

_ZN4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL14Lazy_exact_AbsIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.101, align 8            ; 5 uses
  %3 = alloca %class.anon, align 8                ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !95  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.c, ptr %3, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %3, ptr %2, align 8, !tbaa !62
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !62
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !62
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #36
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !62
  store ptr null, ptr %i.f, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.e, align 8, !tbaa !62
  store ptr null, ptr %i.f, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN5boost14multiprecision8backends8eval_absINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.j)
          to label %_ZN4CGAL3absIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEENS_22Real_embeddable_traitsIT_E3Abs11result_typeERKSF_.exit unwind label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.a) #24
  br label %.body

_ZN4CGAL3absIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEENS_22Real_embeddable_traitsIT_E3Abs11result_typeERKSF_.exit: ; preds = %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !70
  %4 = load double, ptr %i.l, align 16, !tbaa !70
  %i.o = fneg double %4
  %i.p = fcmp oeq double %i.n, %i.o
  br i1 %i.p, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL3absIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEENS_22Real_embeddable_traitsIT_E3Abs11result_typeERKSF_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.q = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.r = extractvalue { double, double } %i.q, 0
  %i.s = extractvalue { double, double } %i.q, 1
  %i.t = fneg double %i.r
  %i.u = insertelement <2 x double> poison, double %i.t, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.s, i64 1
  store <2 x double> %i.v, ptr %i.l, align 16, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.f, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.w, %bb.h ], [ %i.k, %bb.f ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #38
  resume { ptr, i32 } %eh.lpad-body

bb.i:                                             ; preds = %bb.g, %_ZN4CGAL3absIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEENS_22Real_embeddable_traitsIT_E3Abs11result_typeERKSF_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.x release, align 16
  %i.y = load ptr, ptr %i.b, align 16, !tbaa !95  ; 4 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNK4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE9prune_dagEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i6 = icmp eq i8 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 1                    ; 2 uses
  br i1 %.not.i.i.i6, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(12) %i.y) #24, !inline_history !1194
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.ab, -1
  store atomic i32 %i.ag, ptr %i.aa monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.n:                                             ; preds = %bb.j
  br i1 %i.ac, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = atomicrmw sub ptr %i.aa, i32 1 release, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.p, label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.p:                                             ; preds = %bb.o, %bb.n
  fence acquire
  %i.aj = load ptr, ptr %i.b, align 16, !tbaa !95 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(12) %i.aj) #24, !inline_history !1194
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i:                ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.l
  store ptr null, ptr %i.b, align 16, !tbaa !95
  br label %_ZNK4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE9prune_dagEv.exit

_ZNK4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE9prune_dagEv.exit: ; preds = %bb.i, %_ZN4CGAL6Handle6decrefEv.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x double> @llvm.x86.sse2.min.pd(<2 x double>, <2 x double>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x double> @llvm.x86.sse2.max.pd(<2 x double>, <2 x double>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x double> @llvm.x86.sse2.min.sd(<2 x double>, <2 x double>) #23

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #39
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends8eval_absINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #2 comdat {
bb.a:
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit16, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i64 0, ptr %i.a, align 16, !tbaa !248
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 16, !tbaa !248
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 288230376151711744) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !53, !range !37, !noundef !38
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = load i64, ptr %0, align 16
  %spec.select.i8.i.i = select i1 %i.f, i64 2, i64 %i.g ; 2 uses
  %i.h = icmp ugt i64 %spec.select.i.i, %spec.select.i8.i.i
  br i1 %i.h, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i, label %bb.g

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i: ; preds = %bb.b
  %i.i = shl nuw nsw i64 %spec.select.i8.i.i, 2
  %.sroa.speculated16.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %spec.select.i.i)
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i.i, i64 288230376151711744) ; 2 uses
  %i.j = shl nuw nsw i64 %.sroa.speculated.i.i, 3
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #37 ; 3 uses
  %i.l = load i8, ptr %i.d, align 1, !tbaa !53, !range !37, !noundef !38
  %i.m = trunc nuw i8 %i.l to i1                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = select i1 %i.m, ptr %0, ptr %i.o
  %i.q = load i64, ptr %i.a, align 16, !tbaa !248
  %i.r = shl i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %i.p, i64 %i.r, i1 false)
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.t = load i8, ptr %i.s, align 2, !tbaa !249, !range !37, !noundef !38
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %0, align 16
  %i.w = shl i64 %i.v, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.w) #38
  %.pre.pre.i = load i8, ptr %i.d, align 1, !tbaa !53, !range !37
  %i.x = trunc nuw i8 %.pre.pre.i to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i
  store i8 0, ptr %i.d, align 1, !tbaa !53
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre.i = phi i1 [ false, %bb.e ], [ %i.x, %bb.d ]
  store i64 %spec.select.i.i, ptr %i.a, align 16, !tbaa !248
  store i64 %.sroa.speculated.i.i, ptr %0, align 16, !tbaa !70
  store ptr %i.k, ptr %i.n, align 8, !tbaa !70
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  store i64 %spec.select.i.i, ptr %i.a, align 16, !tbaa !248
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre8.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i1 [ %.pre.i, %bb.f ], [ %i.f, %bb.g ]
  %i.y = phi ptr [ %i.k, %bb.f ], [ %.pre8.i, %bb.g ]
  %i.z = select i1 %.pre-phi.i, ptr %0, ptr %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !53, !range !37, !noundef !38
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = select i1 %i.ac, ptr %1, ptr %i.ae
  %i.ag = load i64, ptr %i.b, align 16, !tbaa !248
  %i.ah = shl i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr align 8 %i.af, i64 %i.ah, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ai, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i64 0, ptr %i.al, align 16, !tbaa !248
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.an = load i64, ptr %i.am, align 16, !tbaa !248
  %spec.select.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.an, i64 288230376151711744) ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 4 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !53, !range !37, !noundef !38
  %i.aq = trunc nuw i8 %i.ap to i1                ; 2 uses
  %i.ar = load i64, ptr %i.ak, align 16
  %spec.select.i8.i.i6 = select i1 %i.aq, i64 2, i64 %i.ar ; 2 uses
  %i.as = icmp ugt i64 %spec.select.i.i5, %spec.select.i8.i.i6
  br i1 %i.as, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i11, label %bb.m

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i11: ; preds = %bb.h
  %i.at = shl nuw nsw i64 %spec.select.i8.i.i6, 2
  %.sroa.speculated16.i.i12 = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %spec.select.i.i5)
end_hunk_3
