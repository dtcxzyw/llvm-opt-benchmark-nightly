inline.NumInlined: 716
inline.NumDeleted: 281
begin_hunk_0_@_ZN12_GLOBAL__N_112TestReporterD0Ev:bb.a
  unreachable

_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN9benchmark15ConsoleReporterE, i64 16), ptr %0, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef %i.o)
          to label %_ZN12_GLOBAL__N_112TestReporterD2Ev.exit unwind label %bb.d, !inline_history !71

bb.d:                                             ; preds = %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25, !inline_history !71
  unreachable

_ZN12_GLOBAL__N_112TestReporterD2Ev.exit:         ; preds = %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit.i
  tail call void @_ZN9benchmark17BenchmarkReporterD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(120) %0) #28, !inline_history !71
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #24
  ret void
}

declare void @_ZN9benchmark15ConsoleReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE(ptr noundef nonnull align 8 dereferenceable(89), ptr noundef nonnull align 8 dereferenceable(560)) unnamed_addr #0

declare void @_ZN9benchmark15ConsoleReporter11PrintHeaderERKNS_17BenchmarkReporter3RunE(ptr noundef nonnull align 8 dereferenceable(89), ptr noundef nonnull align 8 dereferenceable(560)) unnamed_addr #0

declare void @_ZN9benchmark17BenchmarkReporterC2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

declare void @_ZN9benchmark15ConsoleReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(89), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not96 = icmp eq ptr %2, %3
  br i1 %.not96, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = sdiv exact i64 %i.c, 560                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70   ; 13 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 3 uses
  %i.n = sdiv exact i64 %i.m, 560                 ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @_ZN9benchmark17BenchmarkReporter3RunC2EOS1_(ptr noundef nonnull align 8 dereferenceable(560) %.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(560) %.sroa.08.012.i.i.i.i.i) #28
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 560 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 560
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !81

_ZSt22__uninitialized_move_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.c
  store ptr %i.t, ptr %i.g, align 8, !tbaa !70
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = sub i64 %i.u, %i.l                       ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPN9benchmark17BenchmarkReporter3RunES3_ET0_T_S5_S4_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt22__uninitialized_move_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.x = udiv exact i64 %i.v, 560
  br label %.lr.ph.i.i.i.i.i51

.lr.ph.i.i.i.i.i51:                               ; preds = %.lr.ph.i.i.i.i.i51, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i51 ], [ %i.x, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i51 ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i ]
  %.078.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i51 ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i ]
  %i.y = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -560 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -560 ; 2 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(560) ptr @_ZN9benchmark17BenchmarkReporter3RunaSEOS1_(ptr noundef nonnull align 8 dereferenceable(560) %i.z, ptr noundef nonnull align 8 dereferenceable(560) %i.y) #28 ; 0 uses
  %i.ab = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ac = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN9benchmark17BenchmarkReporter3RunES3_ET0_T_S5_S4_.exit, !llvm.loop !82

_ZSt13move_backwardIPN9benchmark17BenchmarkReporter3RunES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i.i51, %_ZSt22__uninitialized_move_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.ad = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN9benchmark17BenchmarkReporter3RunEPS5_EET0_T_SA_S9_(ptr noundef %2, ptr noundef %3, ptr noundef %1) ; 0 uses
  br label %bb.r

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %.not12.i.i.i.i = icmp eq ptr %i.ae, %3
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt10_ConstructIN9benchmark17BenchmarkReporter3RunEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.ag, %_ZSt10_ConstructIN9benchmark17BenchmarkReporter3RunEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.af, %_ZSt10_ConstructIN9benchmark17BenchmarkReporter3RunEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.ae, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  invoke void @_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(560) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(560) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN9benchmark17BenchmarkReporter3RunEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.e

_ZSt10_ConstructIN9benchmark17BenchmarkReporter3RunEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 560 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 560
  %.not.i.i.i.i = icmp eq ptr %i.af, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !83

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %i.ai) #28 ; 0 uses
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %i.h, ptr noundef nonnull %.014.i.i.i.i)
          to label %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_.exit.i.i.i.i unwind label %bb.f

_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_.exit.i.i.i.i: ; preds = %bb.e
  invoke void @__cxa_rethrow() #26
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_.exit.i.i.i.i, %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.g

common.resume:                                    ; preds = %bb.q, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.f ], [ %i.bx, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #25
  unreachable

bb.h:                                             ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit.loopexit: ; preds = %_ZSt10_ConstructIN9benchmark17BenchmarkReporter3RunEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !70
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.an = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ao = sub nuw nsw i64 %i.d, %i.n
  %i.ap = getelementptr inbounds nuw [560 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !70
  %.not11.i.i.i.i.i52 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i52, label %_ZSt22__uninitialized_move_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit58, label %.lr.ph.i.i.i.i.i53

.lr.ph.i.i.i.i.i53:                               ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, %.lr.ph.i.i.i.i.i53
  %.013.i.i.i.i.i54 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i53 ], [ %i.ap, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i55 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i53 ], [ %1, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit ] ; 2 uses
  tail call void @_ZN9benchmark17BenchmarkReporter3RunC2EOS1_(ptr noundef nonnull align 8 dereferenceable(560) %.013.i.i.i.i.i54, ptr noundef nonnull align 8 dereferenceable(560) %.sroa.08.012.i.i.i.i.i55) #28
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i55, i64 560 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i54, i64 560
  %.not.i.i.i.i.i56 = icmp eq ptr %i.aq, %i.h
  br i1 %.not.i.i.i.i.i56, label %_ZSt22__uninitialized_move_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit58.loopexit, label %.lr.ph.i.i.i.i.i53, !llvm.loop !81

_ZSt22__uninitialized_move_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit58.loopexit: ; preds = %.lr.ph.i.i.i.i.i53
  %.pre105 = load ptr, ptr %i.g, align 8, !tbaa !70
  br label %_ZSt22__uninitialized_move_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit58

_ZSt22__uninitialized_move_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit58: ; preds = %_ZSt22__uninitialized_move_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit58.loopexit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit
  %i.as = phi ptr [ %.pre105, %_ZSt22__uninitialized_move_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit58.loopexit ], [ %i.ap, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.m
  store ptr %i.at, ptr %i.g, align 8, !tbaa !70
  %i.au = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN9benchmark17BenchmarkReporter3RunEPS5_EET0_T_SA_S9_(ptr noundef %2, ptr noundef %i.ae, ptr noundef %1) ; 0 uses
  br label %bb.r

bb.i:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !68    ; 6 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ax = sub i64 %i.j, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 560               ; 4 uses
  %i.az = sub nsw i64 16470307208669242, %i.ay
  %i.ba = icmp ult i64 %i.az, %i.d
  br i1 %i.ba, label %bb.j, label %_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #26
  unreachable

_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.i
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 %i.d)
  %i.bb = add nsw i64 %.sroa.speculated.i, %i.ay  ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ay
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 16470307208669242)
  %i.be = select i1 %i.bc, i64 16470307208669242, i64 %i.bd ; 4 uses
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE11_M_allocateEm.exit, label %4

4:                                                ; preds = %_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit
  %5 = mul nuw nsw i64 %i.be, 560
  %6 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %5) #27
  br label %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit, %4
  %7 = phi ptr [ %6, %4 ], [ null, %_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.not11.i.i.i.i.i59 = icmp eq ptr %i.av, %1
  br i1 %.not11.i.i.i.i.i59, label %_ZSt34__uninitialized_move_if_noexcept_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i60

.lr.ph.i.i.i.i.i60:                               ; preds = %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i.i60
  %.013.i.i.i.i.i61 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i60 ], [ %7, %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE11_M_allocateEm.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i62 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i60 ], [ %i.av, %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE11_M_allocateEm.exit ] ; 2 uses
  tail call void @_ZN9benchmark17BenchmarkReporter3RunC2EOS1_(ptr noundef nonnull align 8 dereferenceable(560) %.013.i.i.i.i.i61, ptr noundef nonnull align 8 dereferenceable(560) %.sroa.08.012.i.i.i.i.i62) #28
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i62, i64 560 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i61, i64 560 ; 2 uses
  %.not.i.i.i.i.i63 = icmp eq ptr %i.bf, %1
  br i1 %.not.i.i.i.i.i63, label %_ZSt34__uninitialized_move_if_noexcept_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i60, !llvm.loop !81

_ZSt34__uninitialized_move_if_noexcept_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i60, %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i64 = phi ptr [ %7, %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE11_M_allocateEm.exit ], [ %i.bg, %.lr.ph.i.i.i.i.i60 ] ; 3 uses
  br label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZSt10_ConstructIN9benchmark17BenchmarkReporter3RunEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i70
  %.014.i.i.i.i67 = phi ptr [ %i.bi, %_ZSt10_ConstructIN9benchmark17BenchmarkReporter3RunEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i70 ], [ %.0.lcssa.i.i.i.i.i64, %_ZSt34__uninitialized_move_if_noexcept_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %.sroa.08.013.i.i.i.i68 = phi ptr [ %i.bh, %_ZSt10_ConstructIN9benchmark17BenchmarkReporter3RunEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i70 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  invoke void @_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(560) %.014.i.i.i.i67, ptr noundef nonnull align 8 dereferenceable(560) %.sroa.08.013.i.i.i.i68)
          to label %_ZSt10_ConstructIN9benchmark17BenchmarkReporter3RunEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i70 unwind label %bb.k

_ZSt10_ConstructIN9benchmark17BenchmarkReporter3RunEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i70: ; preds = %.lr.ph.i.i.i.i66
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i68, i64 560 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i67, i64 560 ; 3 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.bh, %3
  br i1 %.not.i.i.i.i71, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73, label %.lr.ph.i.i.i.i66, !llvm.loop !83

bb.k:                                             ; preds = %.lr.ph.i.i.i.i66
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  %i.bl = tail call ptr @__cxa_begin_catch(ptr %i.bk) #28 ; 0 uses
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %.0.lcssa.i.i.i.i.i64, ptr noundef nonnull %.014.i.i.i.i67)
          to label %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_.exit.i.i.i.i69 unwind label %bb.l

_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_.exit.i.i.i.i69: ; preds = %bb.k
  invoke void @__cxa_rethrow() #26
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_.exit.i.i.i.i69, %bb.k
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #25
  unreachable

bb.n:                                             ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_.exit.i.i.i.i69
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73: ; preds = %_ZSt10_ConstructIN9benchmark17BenchmarkReporter3RunEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i70
  %.not11.i.i.i.i.i74 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i74, label %_ZSt34__uninitialized_move_if_noexcept_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit80, label %.lr.ph.i.i.i.i.i75

.lr.ph.i.i.i.i.i75:                               ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73, %.lr.ph.i.i.i.i.i75
  %.013.i.i.i.i.i76 = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i75 ], [ %i.bi, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i77 = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i75 ], [ %1, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73 ] ; 2 uses
  tail call void @_ZN9benchmark17BenchmarkReporter3RunC2EOS1_(ptr noundef nonnull align 8 dereferenceable(560) %.013.i.i.i.i.i76, ptr noundef nonnull align 8 dereferenceable(560) %.sroa.08.012.i.i.i.i.i77) #28
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i77, i64 560 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i76, i64 560 ; 2 uses
  %.not.i.i.i.i.i78 = icmp eq ptr %i.bp, %i.h
  br i1 %.not.i.i.i.i.i78, label %_ZSt34__uninitialized_move_if_noexcept_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit80, label %.lr.ph.i.i.i.i.i75, !llvm.loop !81

_ZSt34__uninitialized_move_if_noexcept_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit80: ; preds = %.lr.ph.i.i.i.i.i75, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73
  %.0.lcssa.i.i.i.i.i79 = phi ptr [ %i.bi, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73 ], [ %i.bq, %.lr.ph.i.i.i.i.i75 ]
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %i.av, ptr noundef %i.h)
  %.not.i81 = icmp eq ptr %i.av, null
  br i1 %.not.i81, label %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit80
  %i.br = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bt) #24
  br label %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit80, %bb.o
  store ptr %7, ptr %0, align 8, !tbaa !68
  store ptr %.0.lcssa.i.i.i.i.i79, ptr %i.g, align 8, !tbaa !70
  %i.bu = getelementptr inbounds nuw [560 x i8], ptr %7, i64 %i.be
  store ptr %i.bu, ptr %i.e, align 8, !tbaa !72
  br label %bb.r

.body:                                            ; preds = %bb.l
  %i.bv = extractvalue { ptr, i32 } %i.bm, 0
  %i.bw = tail call ptr @__cxa_begin_catch(ptr %i.bv) #28 ; 0 uses
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %7, ptr noundef %.0.lcssa.i.i.i.i.i64)
          to label %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit unwind label %bb.q

_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit: ; preds = %.body
  %.not.i82 = icmp eq ptr %7, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit83, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit
  %8 = mul nuw nsw i64 %i.be, 560
  tail call void @_ZdlPvm(ptr noundef nonnull %7, i64 noundef %8) #24
  br label %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit83

_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit83: ; preds = %bb.p, %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit
  invoke void @__cxa_rethrow() #26
          to label %bb.t unwind label %bb.q

bb.q:                                             ; preds = %.body, %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit83
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.s

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit, %_ZSt22__uninitialized_move_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit58, %_ZSt13move_backwardIPN9benchmark17BenchmarkReporter3RunES3_ET0_T_S5_S4_.exit, %bb.a
  ret void

bb.s:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  tail call void @__clang_call_terminate(ptr %i.bz) #25
  unreachable

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit83
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark17BenchmarkReporter3RunC2EOS1_(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull align 8 dereferenceable(560) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN9benchmark13BenchmarkNameC2EOS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %i.b, i64 20, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !45
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46   ; 2 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.f, ptr %i.c, align 8, !tbaa !13
  %i.m = load i64, ptr %i.g, align 8, !tbaa !18
  store i64 %i.m, ptr %i.e, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.o, ptr %i.p, align 8, !tbaa !46
  store ptr %i.g, ptr %i.d, align 8, !tbaa !13
  store i64 0, ptr %i.n, align 8, !tbaa !46
  store i8 0, ptr %i.g, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.s = load i32, ptr %i.r, align 8, !tbaa !84
  store i32 %i.s, ptr %i.q, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !45
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !13   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !46  ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.w, ptr %i.t, align 8, !tbaa !13
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !18
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !46
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !46
  store ptr %i.x, ptr %i.u, align 8, !tbaa !13
  store i64 0, ptr %i.ae, align 8, !tbaa !46
  store i8 0, ptr %i.x, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !94
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !94
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !45
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !13 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 16
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !13
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !18
  store i64 %i.au, ptr %i.am, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !46
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !46
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !13
  store i64 0, ptr %i.av, align 8, !tbaa !46
  store i8 0, ptr %i.ao, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(98) %i.ay, ptr noundef nonnull align 8 dereferenceable(98) %i.az, i64 98, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !59
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.bj = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !95
  store <2 x ptr> %i.bj, ptr %i.bh, align 8, !tbaa !95
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.ba, ptr %i.bk, align 8, !tbaa !96
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !63
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !63
  store ptr null, ptr %i.bb, align 8, !tbaa !60
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !61
  store ptr %i.bd, ptr %i.bi, align 8, !tbaa !62
  store i64 0, ptr %i.bl, align 8, !tbaa !63
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr null, ptr %i.bo, align 8, !tbaa !60
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.ba, ptr %i.bp, align 8, !tbaa !61
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 528
  store ptr %i.ba, ptr %i.bq, align 8, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 0, ptr %i.br, align 8, !tbaa !63
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit: ; preds = %bb.e, %bb.f
  %.sink.i.i.i.i = phi i32 [ 0, %bb.f ], [ %i.be, %bb.e ]
  store i32 %.sink.i.i.i.i, ptr %i.ba, align 8, !tbaa !59
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 544
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark13BenchmarkNameC2EOS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !45
  %i.b = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !13
  %i.i = load i64, ptr %i.c, align 8, !tbaa !18
  store i64 %i.i, ptr %i.a, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !46
  store ptr %i.c, ptr %1, align 8, !tbaa !13
  store i64 0, ptr %i.j, align 8, !tbaa !46
  store i8 0, ptr %i.c, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
end_hunk_0
