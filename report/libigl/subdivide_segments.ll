Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/subdivide_segments?download=true
inline.NumInlined: 3014
inline.NumDeleted: 1067
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKSt6vectorISZ_INS7_7Point_2IT1_EESaIS12_EESaIS14_EERNS3_15PlainObjectBaseIT2_EERNS19_IT3_EERNS19_IT4_EERNS19_IT5_EEENKUlRKNS10_IS8_EES1O_E_clES1O_S1O_:bb.a
  br i1 %.not.i.i11, label %_ZN4CGAL6HandleD2Ev.exit13, label %bb.n

bb.n:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i12 = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 4 ; 2 uses
  %i.x = icmp eq i32 %i.w, 1                      ; 2 uses
  br i1 %.not.i.i.i12, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.x, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.t) #22, !inline_history !61
  br label %_ZN4CGAL6HandleD2Ev.exit13

bb.q:                                             ; preds = %bb.o
  %i.ab = add nsw i32 %i.w, -1
  store atomic i32 %i.ab, ptr %i.v monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit13

bb.r:                                             ; preds = %bb.n
  br i1 %i.x, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ac = atomicrmw sub ptr %i.v, i32 1 release, align 4
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.t, label %_ZN4CGAL6HandleD2Ev.exit13

bb.t:                                             ; preds = %bb.s, %bb.r
  fence acquire
  %i.ae = load ptr, ptr %10, align 8, !tbaa !71   ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4CGAL6HandleD2Ev.exit13, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #22, !inline_history !61
  br label %_ZN4CGAL6HandleD2Ev.exit13

_ZN4CGAL6HandleD2Ev.exit13:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit, %bb.p, %bb.q, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.aj = load ptr, ptr %7, align 8, !tbaa !71    ; 4 uses
  %.not.i.i14 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i14, label %_ZN4CGAL6HandleD2Ev.exit16, label %bb.v

bb.v:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit13
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i15 = icmp eq i8 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.am = load atomic i32, ptr %i.al monotonic, align 4 ; 2 uses
  %i.an = icmp eq i32 %i.am, 1                    ; 2 uses
  br i1 %.not.i.i.i15, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.an, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(12) %i.aj) #22, !inline_history !61
  br label %_ZN4CGAL6HandleD2Ev.exit16

bb.y:                                             ; preds = %bb.w
  %i.ar = add nsw i32 %i.am, -1
  store atomic i32 %i.ar, ptr %i.al monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit16

bb.z:                                             ; preds = %bb.v
  br i1 %i.an, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.as = atomicrmw sub ptr %i.al, i32 1 release, align 4
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.ab, label %_ZN4CGAL6HandleD2Ev.exit16

bb.ab:                                            ; preds = %bb.aa, %bb.z
  fence acquire
  %i.au = load ptr, ptr %7, align 8, !tbaa !71    ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN4CGAL6HandleD2Ev.exit16, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(12) %i.au) #22, !inline_history !61
  br label %_ZN4CGAL6HandleD2Ev.exit16

_ZN4CGAL6HandleD2Ev.exit16:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit13, %bb.x, %bb.y, %bb.aa, %bb.ab, %bb.ac
  %i.az = load ptr, ptr %8, align 8, !tbaa !71    ; 4 uses
  %.not.i.i17 = icmp eq ptr %i.az, null
  br i1 %.not.i.i17, label %_ZN4CGAL6HandleD2Ev.exit19, label %bb.ad

bb.ad:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit16
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i18 = icmp eq i8 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.bc = load atomic i32, ptr %i.bb monotonic, align 4 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 1                    ; 2 uses
  br i1 %.not.i.i.i18, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.bd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(12) %i.az) #22, !inline_history !61
  br label %_ZN4CGAL6HandleD2Ev.exit19

bb.ag:                                            ; preds = %bb.ae
  %i.bh = add nsw i32 %i.bc, -1
  store atomic i32 %i.bh, ptr %i.bb monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit19

bb.ah:                                            ; preds = %bb.ad
  br i1 %i.bd, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bi = atomicrmw sub ptr %i.bb, i32 1 release, align 4
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %bb.aj, label %_ZN4CGAL6HandleD2Ev.exit19

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  fence acquire
  %i.bk = load ptr, ptr %8, align 8, !tbaa !71    ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZN4CGAL6HandleD2Ev.exit19, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(12) %i.bk) #22, !inline_history !61
  br label %_ZN4CGAL6HandleD2Ev.exit19

_ZN4CGAL6HandleD2Ev.exit19:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit16, %bb.af, %bb.ag, %bb.ai, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret i1 %i.c

bb.al:                                            ; preds = %bb.a
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.am:                                            ; preds = %bb.b
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.an:                                            ; preds = %bb.c
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.d
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %9) #22
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.ao ], [ %i.br, %bb.an ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #22
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ap ], [ %i.bq, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #22
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.al
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aq ], [ %i.bp, %bb.al ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.199, align 8            ; 5 uses
  %3 = alloca %class.anon.198, align 8            ; 4 uses
  %4 = alloca %class.anon.199, align 8            ; 5 uses
  %5 = alloca %class.anon.198, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !71     ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !45
  %6 = load <2 x double>, ptr %i.d, align 16      ; 2 uses
  %7 = extractelement <2 x double> %6, i64 0
  %i.g = fneg double %7
  %i.h = fcmp olt double %i.f, %i.g
  br i1 %i.h, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %8 = extractelement <2 x double> %6, i64 1
  %9 = load <2 x double>, ptr %i.i, align 16, !tbaa !45
  %10 = extractelement <2 x double> %9, i64 0
  %11 = fneg double %10
  %i.j = fcmp ugt double %8, %11
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.a, ptr %5, align 8, !tbaa !398
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %5, ptr %4, align 8, !tbaa !339
  %i.n = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %4, ptr %i.n, align 8, !tbaa !339
  %i.o = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.o, align 8, !tbaa !339
  %i.p = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.i ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.p) #35
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.w, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.n, align 8, !tbaa !339
  store ptr null, ptr %i.o, align 8, !tbaa !339
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.n, align 8, !tbaa !339
  store ptr null, ptr %i.o, align 8, !tbaa !339
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = load atomic ptr, ptr %i.r monotonic, align 8
  %i.t = load ptr, ptr %1, align 8, !tbaa !71     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.t, ptr %3, align 8, !tbaa !398
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %3, ptr %2, align 8, !tbaa !339
  store ptr %2, ptr %i.n, align 8, !tbaa !339
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.o, align 8, !tbaa !339
  %i.v = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10 unwind label %bb.l ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10:          ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %.not.i.i.i11 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i11, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, label %bb.j

bb.j:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.v) #35
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.n, align 8, !tbaa !339
  store ptr null, ptr %i.o, align 8, !tbaa !339
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  store ptr null, ptr %i.n, align 8, !tbaa !339
  store ptr null, ptr %i.o, align 8, !tbaa !339
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.y = load atomic ptr, ptr %i.x monotonic, align 8
  %i.z = call noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.s, ptr noundef nonnull align 16 dereferenceable(64) %i.y)
  %i.aa = icmp slt i32 %i.z, 0
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.l, %bb.e ], [ %i.aa, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 32 uses
  %3 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 15 uses
  %4 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !tbaa !209 ; 6 uses
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9, !range !13, !noundef !14
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %i.f, ptr %0, ptr %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !210
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !218, !range !13, !noundef !14
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.n, i32 -1, i32 1
  br label %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit

_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i
  %i.p = phi i32 [ %i.o, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i ], [ 0, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.r = load i64, ptr %i.q, align 16, !tbaa !209
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52: ; preds = %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9, !range !13, !noundef !14
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %i.v, ptr %1, ptr %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !210
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52, %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !218, !range !13, !noundef !14
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = select i1 %i.ad, i32 -1, i32 1
  br label %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53

_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51
  %i.af = phi i32 [ %i.ae, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51 ], [ 0, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52 ] ; 2 uses
  %.not = icmp eq i32 %i.p, %i.af
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53
  %i.ag = icmp slt i32 %i.p, %i.af
  %i.ah = select i1 %i.ag, i32 -1, i32 1
  br label %bb.at

bb.c:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53
  %i.ai = icmp eq i32 %i.p, 0
  br i1 %i.ai, label %bb.at, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = icmp slt i32 %i.p, 0                    ; 3 uses
  br i1 %i.aj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %0)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = tail call noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %i.al)
  %i.an = add i64 %i.am, %i.ak
  %i.ao = tail call noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %1)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = tail call noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %i.ap)
  %i.ar = add i64 %i.aq, %i.ao
  br label %bb.ab

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store i64 0, ptr %2, align 16, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.au = load i8, ptr %i.at, align 2, !tbaa !219, !range !13, !noundef !14
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %i.b, ptr %i.as, align 16, !tbaa !209
end_hunk_0
begin_hunk_1_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEES4_NSI_INS2_13Lazy_exact_ntIN5boost14multiprecision6numberINSN_8backends16rational_adaptorINSP_15cpp_int_backendILm0ELm0ELNSN_16cpp_integer_typeE1ELNSN_18cpp_int_check_typeE0ESaIyEEEEELNSN_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESK_NSI_IiLin1ELi1ELi0ELin1ELi1EEES11_EEvRKNSH_10MatrixBaseIT_EERKNS12_IT0_EERKS7_IS7_INS3_IT1_EESaIS1C_EESaIS1E_EERNSH_15PlainObjectBaseIT2_EERNS1J_IT3_EERNS1J_IT4_EERNS1J_IT5_EEEUlRKS5_S1X_E_EEEvS13_S13_S17_:bb.a
  %i.n = icmp ult i64 %i.g, 4
  br i1 %i.n, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.078.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !59
  store ptr %i.q, ptr %i.p, align 8, !tbaa !59
  store ptr %load_initial, ptr %i.o, align 8, !tbaa !59
  %i.r = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !59
  store ptr %i.t, ptr %i.s, align 8, !tbaa !59
  store ptr %load_initial, ptr %i.r, align 8, !tbaa !59
  %i.u = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !59
  store ptr %i.w, ptr %i.v, align 8, !tbaa !59
  store ptr %load_initial, ptr %i.u, align 8, !tbaa !59
  %i.x = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !59
  store ptr %i.z, ptr %i.y, align 8, !tbaa !59
  store ptr %load_initial, ptr %i.x, align 8, !tbaa !59
  %i.aa = add nsw i64 %.010.i.i.i.i.i, -4
  %i.ab = icmp sgt i64 %.010.i.i.i.i.i, 4
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !444

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.c
  %i.ac = load ptr, ptr %0, align 8, !tbaa !59    ; 6 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !59
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i = icmp eq i8 %i.ad, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load atomic i32, ptr %i.ae monotonic, align 4 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(12) %i.ac) #22, !inline_history !61
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = add nsw i32 %i.af, -1
  store atomic i32 %i.ak, ptr %i.ae monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.h:                                             ; preds = %bb.d
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = atomicrmw sub ptr %i.ae, i32 1 release, align 4
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.j, label %_ZN4CGAL6HandleD2Ev.exit

bb.j:                                             ; preds = %bb.h, %bb.i
  fence acquire
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(12) %i.ac) #22, !inline_history !61
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.k:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !tbaa !70
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEES4_NSI_INS2_13Lazy_exact_ntIN5boost14multiprecision6numberINSN_8backends16rational_adaptorINSP_15cpp_int_backendILm0ELm0ELNSN_16cpp_integer_typeE1ELNSN_18cpp_int_check_typeE0ESaIyEEEEELNSN_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESK_NSI_IiLin1ELi1ELi0ELin1ELi1EEES11_EEvRKNSH_10MatrixBaseIT_EERKNS12_IT0_EERKS7_IS7_INS3_IT1_EESaIS1C_EESaIS1E_EERNSH_15PlainObjectBaseIT2_EERNS1J_IT3_EERNS1J_IT4_EERNS1J_IT5_EEEUlRKS5_S1X_E_EEEvS13_S17_(ptr nonnull %.sroa.0.021, ptr %.sroa.0.0.copyload)
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %.loopexit, %bb.k
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.021, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit17, label %bb.b, !llvm.loop !445

.loopexit17:                                      ; preds = %_ZN4CGAL6HandleD2Ev.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEES4_NSI_INS2_13Lazy_exact_ntIN5boost14multiprecision6numberINSN_8backends16rational_adaptorINSP_15cpp_int_backendILm0ELm0ELNSN_16cpp_integer_typeE1ELNSN_18cpp_int_check_typeE0ESaIyEEEEELNSN_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESK_NSI_IiLin1ELi1ELi0ELin1ELi1EEES11_EEvRKNSH_10MatrixBaseIT_EERKNS12_IT0_EERKS7_IS7_INS3_IT1_EESaIS1C_EESaIS1E_EERNSH_15PlainObjectBaseIT2_EERNS1J_IT3_EERNS1J_IT4_EERNS1J_IT5_EEEUlRKS5_S1X_E_EEEvS13_S17_(ptr %0, ptr %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8 ; 2 uses
  %3 = alloca %"class.CGAL::Point_2", align 8     ; 9 uses
  store ptr %1, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = load ptr, ptr %0, align 8, !tbaa !71
  store ptr %i.a, ptr %3, align 8, !tbaa !71
  store ptr null, ptr %0, align 8, !tbaa !71
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.03.0 = phi ptr [ %0, %bb.a ], [ %.sroa.0.0, %bb.c ] ; 4 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.03.0, i64 -8 ; 4 uses
  %i.b = invoke noundef zeroext i1 @_ZZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKSt6vectorISZ_INS7_7Point_2IT1_EESaIS12_EESaIS14_EERNS3_15PlainObjectBaseIT2_EERNS19_IT3_EERNS19_IT4_EERNS19_IT5_EEENKUlRKNS10_IS8_EES1O_E_clES1O_S1O_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0)
          to label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS7_INSA_13Lazy_exact_ntIN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES9_NS7_IiLin1ELi1ELi0ELin1ELi1EEESS_EEvRKNS6_10MatrixBaseIT_EERKNST_IT0_EERKSt6vectorIS12_INSA_7Point_2IT1_EESaIS15_EESaIS17_EERNS6_15PlainObjectBaseIT2_EERNS1C_IT3_EERNS1C_IT4_EERNS1C_IT5_EEEUlRKNS13_ISB_EES1R_E_EclIS1P_NS_17__normal_iteratorIPS1P_S12_IS1P_SaIS1P_EEEEEEbRSU_SY_.exit unwind label %bb.d

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS7_INSA_13Lazy_exact_ntIN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES9_NS7_IiLin1ELi1ELi0ELin1ELi1EEESS_EEvRKNS6_10MatrixBaseIT_EERKNST_IT0_EERKSt6vectorIS12_INSA_7Point_2IT1_EESaIS15_EESaIS17_EERNS6_15PlainObjectBaseIT2_EERNS1C_IT3_EERNS1C_IT4_EERNS1C_IT5_EEEUlRKNS13_ISB_EES1R_E_EclIS1P_NS_17__normal_iteratorIPS1P_S12_IS1P_SaIS1P_EEEEEEbRSU_SY_.exit: ; preds = %bb.b
  %i.c = load ptr, ptr %.sroa.03.0, align 8, !tbaa !59 ; 6 uses
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS7_INSA_13Lazy_exact_ntIN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES9_NS7_IiLin1ELi1ELi0ELin1ELi1EEESS_EEvRKNS6_10MatrixBaseIT_EERKNST_IT0_EERKSt6vectorIS12_INSA_7Point_2IT1_EESaIS15_EESaIS17_EERNS6_15PlainObjectBaseIT2_EERNS1C_IT3_EERNS1C_IT4_EERNS1C_IT5_EEEUlRKNS13_ISB_EES1R_E_EclIS1P_NS_17__normal_iteratorIPS1P_S12_IS1P_SaIS1P_EEEEEEbRSU_SY_.exit
  %i.d = load ptr, ptr %.sroa.0.0, align 8, !tbaa !59
  store ptr %i.d, ptr %.sroa.03.0, align 8, !tbaa !59
  store ptr %i.c, ptr %.sroa.0.0, align 8, !tbaa !59
  br label %bb.b, !llvm.loop !73

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS7_INSA_13Lazy_exact_ntIN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES9_NS7_IiLin1ELi1ELi0ELin1ELi1EEESS_EEvRKNS6_10MatrixBaseIT_EERKNST_IT0_EERKSt6vectorIS12_INSA_7Point_2IT1_EESaIS15_EESaIS17_EERNS6_15PlainObjectBaseIT2_EERNS1C_IT3_EERNS1C_IT4_EERNS1C_IT5_EEEUlRKNS13_ISB_EES1R_E_EclIS1P_NS_17__normal_iteratorIPS1P_S12_IS1P_SaIS1P_EEEEEEbRSU_SY_.exit
  %i.f = load ptr, ptr %3, align 8, !tbaa !59
  store ptr %i.f, ptr %.sroa.03.0, align 8, !tbaa !59
  store ptr %i.c, ptr %3, align 8, !tbaa !59
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i = icmp eq i8 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.i = load atomic i32, ptr %i.h monotonic, align 4 ; 2 uses
  %i.j = icmp eq i32 %i.i, 1                      ; 2 uses
  br i1 %.not.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #22, !inline_history !61
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.n = add nsw i32 %i.i, -1
  store atomic i32 %i.n, ptr %i.h monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.j:                                             ; preds = %bb.f
  br i1 %i.j, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = atomicrmw sub ptr %i.h, i32 1 release, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.l, label %_ZN4CGAL6HandleD2Ev.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  fence acquire
  %i.q = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(12) %i.q) #22, !inline_history !61
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.e, %bb.h, %bb.i, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SD_SD_T0_(ptr %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"class.CGAL::Static_filtered_predicate", align 1 ; 6 uses
  %3 = alloca %"class.CGAL::Static_filtered_predicate", align 1 ; 6 uses
  %i.a = icmp eq ptr %0, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not9.i = icmp eq ptr %i.b, %1
  %or.cond.i = select i1 %i.a, i1 true, i1 %.not9.i
  br i1 %or.cond.i, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SD_SD_T0_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %i.c = phi ptr [ %i.ae, %bb.e ], [ %i.b, %bb.a ] ; 5 uses
  %.sroa.08.010.i = phi ptr [ %i.c, %bb.e ], [ %0, %bb.a ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.d = load ptr, ptr %.sroa.08.010.i, align 8, !tbaa !71 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load double, ptr %i.f, align 8, !tbaa !45, !noalias !446
  %4 = load <2 x double>, ptr %i.e, align 16, !tbaa !45, !noalias !446
  %5 = extractelement <2 x double> %4, i64 0      ; 2 uses
  %i.h = fneg double %5
  %i.i = fcmp oeq double %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.l = load double, ptr %i.k, align 8, !tbaa !45, !noalias !446
  %6 = load <2 x double>, ptr %i.j, align 16, !tbaa !45, !noalias !446
  %7 = extractelement <2 x double> %6, i64 0      ; 2 uses
  %i.m = fneg double %7
  %i.n = fcmp oeq double %i.l, %i.m
  br i1 %i.n, label %bb.c, label %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit.i.i.i.i

_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i
  %i.o = call noundef zeroext i1 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors7Equal_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Point_2ISO_EESV_EEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.08.010.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.o, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SD_SD_T0_.exit, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !71   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.s = load double, ptr %i.r, align 8, !tbaa !45, !noalias !449
  %8 = load <2 x double>, ptr %i.q, align 16, !tbaa !45, !noalias !449
  %9 = extractelement <2 x double> %8, i64 0      ; 2 uses
  %i.t = fneg double %9
  %i.u = fcmp oeq double %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit10.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.x = load double, ptr %i.w, align 8, !tbaa !45, !noalias !449
  %10 = load <2 x double>, ptr %i.v, align 16, !tbaa !45, !noalias !449
  %11 = extractelement <2 x double> %10, i64 0    ; 2 uses
  %i.y = fneg double %11
  %i.z = fcmp oeq double %i.x, %i.y
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4CGAL7Point_2INS4_5EpeckEEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, label %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit10.i.i.i.i

_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit10.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.aa = call noundef zeroext i1 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors7Equal_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Point_2ISO_EESV_EEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.08.010.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.aa, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SD_SD_T0_.exit, label %bb.e

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4CGAL7Point_2INS4_5EpeckEEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i: ; preds = %bb.d
  %i.ab = fcmp oeq double %5, %9
  %i.ac = fcmp oeq double %7, %11
  %i.ad = and i1 %i.ab, %i.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.ad, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SD_SD_T0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4CGAL7Point_2INS4_5EpeckEEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit10.i.i.i.i, %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SD_SD_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !452

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SD_SD_T0_.exit: ; preds = %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit.i.i.i.i, %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit10.i.i.i.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4CGAL7Point_2INS4_5EpeckEEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i
  %i.af = icmp eq ptr %.sroa.08.010.i, %1
  br i1 %i.af, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SD_SD_T0_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SD_SD_T0_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.010.i, i64 16 ; 2 uses
  %.not18 = icmp eq ptr %i.ag, %1
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.k
  %i.ah = phi ptr [ %i.bm, %bb.k ], [ %i.ag, %bb.f ] ; 6 uses
  %.sroa.0.019 = phi ptr [ %.sroa.0.1, %bb.k ], [ %.sroa.08.010.i, %bb.f ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ai = load ptr, ptr %.sroa.0.019, align 8, !tbaa !71 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = load double, ptr %i.ak, align 8, !tbaa !45, !noalias !453
  %12 = load <2 x double>, ptr %i.aj, align 16, !tbaa !45, !noalias !453
  %13 = extractelement <2 x double> %12, i64 0    ; 2 uses
  %i.am = fneg double %13
  %i.an = fcmp oeq double %i.al, %i.am
  br i1 %i.an, label %bb.g, label %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !45, !noalias !453
  %14 = load <2 x double>, ptr %i.ao, align 16, !tbaa !45, !noalias !453
  %15 = extractelement <2 x double> %14, i64 0    ; 2 uses
  %i.ar = fneg double %15
  %i.as = fcmp oeq double %i.aq, %i.ar
  br i1 %i.as, label %bb.h, label %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit.i.i.i

_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit.i.i.i: ; preds = %bb.g, %.lr.ph
  %i.at = call noundef zeroext i1 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors7Equal_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Point_2ISO_EESV_EEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %2, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.019, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %i.at, label %bb.k, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !71 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !45, !noalias !456
  %16 = load <2 x double>, ptr %i.av, align 16, !tbaa !45, !noalias !456
  %17 = extractelement <2 x double> %16, i64 0    ; 2 uses
  %i.ay = fneg double %17
  %i.az = fcmp oeq double %i.ax, %i.ay
  br i1 %i.az, label %bb.i, label %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit10.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !45, !noalias !456
  %18 = load <2 x double>, ptr %i.ba, align 16, !tbaa !45, !noalias !456
  %19 = extractelement <2 x double> %18, i64 0    ; 2 uses
  %i.bd = fneg double %19
  %i.be = fcmp oeq double %i.bc, %i.bd
  br i1 %i.be, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4CGAL7Point_2INS4_5EpeckEEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, label %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit10.i.i.i

_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit10.i.i.i: ; preds = %bb.i, %bb.h
  %i.bf = call noundef zeroext i1 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors7Equal_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Point_2ISO_EESV_EEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %2, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.019, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %i.bf, label %bb.k, label %bb.j

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4CGAL7Point_2INS4_5EpeckEEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit: ; preds = %bb.i
  %i.bg = fcmp oeq double %13, %17
  %i.bh = fcmp oeq double %15, %19
  %i.bi = and i1 %i.bg, %i.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %i.bi, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit10.i.i.i, %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit.i.i.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4CGAL7Point_2INS4_5EpeckEEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 8 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !59
  %i.bl = load ptr, ptr %i.ah, align 8, !tbaa !59
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !59
  store ptr %i.bk, ptr %i.ah, align 8, !tbaa !59
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit10.i.i.i, %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit.i.i.i, %bb.j, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4CGAL7Point_2INS4_5EpeckEEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  %.sroa.0.1 = phi ptr [ %.sroa.0.019, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4CGAL7Point_2INS4_5EpeckEEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit ], [ %i.bj, %bb.j ], [ %.sroa.0.019, %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit.i.i.i ], [ %.sroa.0.019, %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit10.i.i.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bm, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !459

._crit_edge:                                      ; preds = %bb.k, %bb.f
  %.sroa.0.0.lcssa = phi ptr [ %.sroa.08.010.i, %bb.f ], [ %.sroa.0.1, %bb.k ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 8
  br label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SD_SD_T0_.exit.thread

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SD_SD_T0_.exit.thread: ; preds = %bb.e, %bb.a, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SD_SD_T0_.exit, %._crit_edge
  %.sroa.05.0 = phi ptr [ %i.bn, %._crit_edge ], [ %1, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SD_SD_T0_.exit ], [ %1, %bb.a ], [ %1, %bb.e ]
  ret ptr %.sroa.05.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors7Equal_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Point_2ISO_EESV_EEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %class.anon.158, align 8            ; 5 uses
  %4 = alloca %class.anon.157, align 8            ; 4 uses
  %5 = alloca %class.anon.158, align 8            ; 5 uses
  %6 = alloca %class.anon.157, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.CGAL::Uncertain", align 2   ; 4 uses
  %8 = alloca %"class.CGAL::Uncertain", align 2   ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = load ptr, ptr %1, align 8, !tbaa !71     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %2, align 8, !tbaa !71     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %9 = load <2 x double>, ptr %i.n, align 16      ; 2 uses
  %10 = extractelement <2 x double> %9, i64 0
  %i.p = fneg double %10                          ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !45 ; 2 uses
  %i.s = fcmp olt double %i.r, %i.p
  %11 = extractelement <2 x double> %9, i64 1     ; 2 uses
  br i1 %i.s, label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %12 = load <2 x double>, ptr %i.t, align 16, !tbaa !45
  %13 = extractelement <2 x double> %12, i64 0
  %i.u = fneg double %13                          ; 2 uses
  %i.v = fcmp olt double %11, %i.u
  br i1 %i.v, label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = fcmp oeq double %i.r, %i.p
  %i.x = fcmp oeq double %11, %i.u
  %or.cond.i.i.i.i.i.i = and i1 %i.w, %i.x
  %i.y = zext i1 %or.cond.i.i.i.i.i.i to i16
  %i.z = or disjoint i16 %i.y, 256
  br label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i.i.i

_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.4.0.i.i.i.i.i.i = phi i16 [ %i.z, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  store i16 %.sroa.4.0.i.i.i.i.i.i, ptr %7, align 2
  %i.aa = invoke noundef zeroext i1 @_ZNK4CGAL9UncertainIbE12make_certainEv(ptr noundef nonnull align 1 dereferenceable(2) %7)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  br i1 %i.aa, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %14 = load <2 x double>, ptr %i.ab, align 16    ; 2 uses
  %15 = extractelement <2 x double> %14, i64 0
  %i.ac = fneg double %15                         ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !45 ; 2 uses
  %i.af = fcmp olt double %i.ae, %i.ac
  %16 = extractelement <2 x double> %14, i64 1    ; 2 uses
  br i1 %i.af, label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit6.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %17 = load <2 x double>, ptr %i.ag, align 16, !tbaa !45
  %18 = extractelement <2 x double> %17, i64 0
  %i.ah = fneg double %18                         ; 2 uses
  %i.ai = fcmp olt double %16, %i.ah
  br i1 %i.ai, label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit6.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = fcmp oeq double %i.ae, %i.ac
  %i.ak = fcmp oeq double %16, %i.ah
  %or.cond.i4.i.i.i.i.i = and i1 %i.aj, %i.ak
  %i.al = zext i1 %or.cond.i4.i.i.i.i.i to i16
  %i.am = or disjoint i16 %i.al, 256
  br label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit6.i.i.i.i.i

_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit6.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.4.0.i5.i.i.i.i.i = phi i16 [ %i.am, %bb.f ], [ 0, %bb.d ], [ 0, %bb.e ]
  store i16 %.sroa.4.0.i5.i.i.i.i.i, ptr %8, align 2
  %i.an = invoke noundef zeroext i1 @_ZNK4CGAL9UncertainIbE12make_certainEv(ptr noundef nonnull align 1 dereferenceable(2) %8)
          to label %.noexc19 unwind label %bb.h

.noexc19:                                         ; preds = %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit6.i.i.i.i.i
  %i.ao = select i1 %i.an, i16 257, i16 0
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %.noexc19
  %.sroa.2.0.insert.ext.i.i.i.i = phi i16 [ 0, %.noexc ], [ %i.ao, %.noexc19 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.2.0.insert.ext.i.i.i.i to i8
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.2.0.insert.ext.i.i.i.i, 8
  %.sroa.2.0.extract.trunc.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i to i8
  %i.ap = icmp ne i8 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  %i.aq = trunc i16 %.sroa.2.0.insert.ext.i.i.i.i to i1
  br label %bb.j

bb.h:                                             ; preds = %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit6.i.i.i.i.i, %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %i.as = extractvalue { ptr, i32 } %i.ar, 1
  %i.at = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #22
  %i.au = icmp eq i32 %i.as, %i.at
  br i1 %i.au, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.av = extractvalue { ptr, i32 } %i.ar, 0
  %i.aw = call ptr @__cxa_begin_catch(ptr %i.av) #22 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.g, %bb.i
  %.014 = phi i1 [ true, %bb.i ], [ %i.ap, %bb.g ]
  %.1 = phi i1 [ undef, %bb.i ], [ %i.aq, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ax = load i32, ptr %i.c, align 4
  %i.ay = and i32 %i.ax, -24577
  %i.az = or disjoint i32 %i.ay, %i.i
  store i32 %i.az, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.014, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %1, align 8, !tbaa !71    ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.ba, ptr %6, align 8, !tbaa !336
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %6, ptr %5, align 8, !tbaa !339
  %i.bc = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %5, ptr %i.bc, align 8, !tbaa !339
  %i.bd = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.bd, align 8, !tbaa !339
  %i.be = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i unwind label %bb.n ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i:        ; preds = %bb.k
  %.not.i.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4CGAL15Exact_converterINS_5EpeckENS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclINS_7Point_2IS1_EEEEDcRKT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.be) #35
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.q, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %i.bl, %bb.q ], [ %.merged, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bf = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bc, align 8, !tbaa !339
  store ptr null, ptr %i.bd, align 8, !tbaa !339
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

_ZNK4CGAL15Exact_converterINS_5EpeckENS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclINS_7Point_2IS1_EEEEDcRKT_.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i
  store ptr null, ptr %i.bc, align 8, !tbaa !339
  store ptr null, ptr %i.bd, align 8, !tbaa !339
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bh = load atomic ptr, ptr %i.bg monotonic, align 8
  %i.bi = load ptr, ptr %2, align 8, !tbaa !71    ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.bi, ptr %4, align 8, !tbaa !336
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %4, ptr %3, align 8, !tbaa !339
  store ptr %3, ptr %i.bc, align 8, !tbaa !339
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.bd, align 8, !tbaa !339
  %i.bk = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bj, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i20 unwind label %bb.q ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i20:      ; preds = %_ZNK4CGAL15Exact_converterINS_5EpeckENS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclINS_7Point_2IS1_EEEEDcRKT_.exit
  %.not.i.i.i.i.i21 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i.i21, label %_ZNK4CGAL15Exact_converterINS_5EpeckENS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclINS_7Point_2IS1_EEEEDcRKT_.exit22, label %bb.o

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i20
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bk) #35
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o, %_ZNK4CGAL15Exact_converterINS_5EpeckENS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclINS_7Point_2IS1_EEEEDcRKT_.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bc, align 8, !tbaa !339
  store ptr null, ptr %i.bd, align 8, !tbaa !339
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.resume

_ZNK4CGAL15Exact_converterINS_5EpeckENS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclINS_7Point_2IS1_EEEEDcRKT_.exit22: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i20
  store ptr null, ptr %i.bc, align 8, !tbaa !339
  store ptr null, ptr %i.bd, align 8, !tbaa !339
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bn = load atomic ptr, ptr %i.bm monotonic, align 8
  %i.bo = call noundef zeroext i1 @_ZN4CGALeqINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEEbRKNS_8VectorC2IT_EESK_(ptr noundef nonnull align 16 dereferenceable(128) %i.bh, ptr noundef nonnull align 16 dereferenceable(128) %i.bn)
  br label %bb.t

bb.r:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.h
  %.merged = phi { ptr, i32 } [ %i.bp, %bb.r ], [ %i.ar, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.bq = load i32, ptr %i.a, align 4
  %i.br = and i32 %i.bq, -24577
  %i.bs = or disjoint i32 %i.br, %i.i
  store i32 %i.bs, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %common.resume

bb.t:                                             ; preds = %bb.j, %_ZNK4CGAL15Exact_converterINS_5EpeckENS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclINS_7Point_2IS1_EEEEDcRKT_.exit22
  %.3 = phi i1 [ %i.bo, %_ZNK4CGAL15Exact_converterINS_5EpeckENS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclINS_7Point_2IS1_EEEEDcRKT_.exit22 ], [ %.1, %bb.j ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4CGAL9UncertainIbE12make_certainEv(ptr noundef nonnull align 1 dereferenceable(2) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.3", align 1  ; 5 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !460, !range !13, !noundef !14 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !462, !range !13, !noundef !14
  %i.d = icmp eq i8 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nuw i8 %i.a to i1
  ret i1 %i.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.124, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt11range_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL30Uncertain_conversion_exceptionE, i64 16), ptr %i.f, align 8, !tbaa !27
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE, ptr nonnull @_ZNSt11range_errorD2Ev) #35
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
end_hunk_1
