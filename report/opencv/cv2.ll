Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cv2?download=true
inline.NumInlined: 99483
inline.NumDeleted: 14985
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZL57pyopencv_cv_detail_detail_BundleAdjusterBase_termCriteriaP7_objectS0_S0_:bb.a
bb.i:                                             ; preds = %bb.h
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.r = invoke ptr @PyEval_SaveThread()
          to label %_ZN14PyAllowThreadsC2Ev.exit unwind label %bb.m

_ZN14PyAllowThreadsC2Ev.exit:                     ; preds = %bb.j
  %i.s = load ptr, ptr %3, align 16, !tbaa !3517  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 264
  %.sroa.2.0.copyload.i = load double, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1427
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !1427
  invoke void @PyEval_RestoreThread(ptr noundef %i.r)
          to label %_ZN14PyAllowThreadsD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZN14PyAllowThreadsC2Ev.exit
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #36
  unreachable

_ZN14PyAllowThreadsD2Ev.exit:                     ; preds = %_ZN14PyAllowThreadsC2Ev.exit
  %i.w = invoke noundef ptr @_Z13pyopencv_fromIN2cv12TermCriteriaEEP7_objectRKT_(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.z unwind label %bb.l

bb.l:                                             ; preds = %_ZN14PyAllowThreadsD2Ev.exit, %bb.t, %bb.h, %_ZN2cv3PtrINS_6detail18BundleAdjusterBaseEEC2ERKS3_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.m:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.z = extractvalue { ptr, i32 } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { ptr, i32 } %i.y, 1       ; 2 uses
  %i.ab = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN2cv9ExceptionE) #37
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.z) #37
  invoke void @_Z18pyRaiseCVExceptionRKN2cv9ExceptionE(ptr noundef nonnull align 8 dereferenceable(148) %i.ad)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.y

bb.p:                                             ; preds = %bb.m
  %i.ae = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #37
  %i.af = icmp eq i32 %i.aa, %i.ae
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %i.z) #37 ; 2 uses
  %i.ah = load ptr, ptr @opencv_error, align 8, !tbaa !1377 ; 2 uses
  br i1 %i.af, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !742
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #37
  invoke void @PyErr_SetString(ptr noundef %i.ah, ptr noundef %i.al)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.w

bb.s:                                             ; preds = %bb.p
  invoke void @PyErr_SetString(ptr noundef %i.ah, ptr noundef nonnull @.str.2227)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.l

bb.u:                                             ; preds = %bb.s
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.ai

bb.v:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.ai

bb.w:                                             ; preds = %bb.r
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.x:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.ai

bb.y:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.z:                                             ; preds = %bb.f, %bb.i, %_ZN14PyAllowThreadsD2Ev.exit, %bb.o, %bb.r, %bb.t
  %.0 = phi ptr [ null, %bb.o ], [ null, %bb.r ], [ %i.w, %_ZN14PyAllowThreadsD2Ev.exit ], [ null, %bb.t ], [ null, %bb.i ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !737 ; 8 uses
  %.not.i.i24 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i24, label %_ZNSt12__shared_ptrIN2cv6detail18BundleAdjusterBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.as, align 8, !tbaa !739
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !740
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !742
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #37, !inline_history !391
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !742
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #37, !inline_history !391
  br label %_ZNSt12__shared_ptrIN2cv6detail18BundleAdjusterBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !743
  %.not.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !744
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i = phi i32 [ %i.av, %bb.ad ], [ %i.bf, %bb.ae ]
  %i.bg = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bg, label %bb.af, label %_ZNSt12__shared_ptrIN2cv6detail18BundleAdjusterBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !745

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #37
  br label %_ZNSt12__shared_ptrIN2cv6detail18BundleAdjusterBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv6detail18BundleAdjusterBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.z, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.ah

bb.ag:                                            ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.l
  %.pn22 = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.an, %bb.v ], [ %i.am, %bb.u ], [ %i.ao, %bb.w ], [ %i.aq, %bb.y ], [ %i.ap, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @_ZNSt12__shared_ptrIN2cv6detail18BundleAdjusterBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn22

bb.ah:                                            ; preds = %_ZNSt12__shared_ptrIN2cv6detail18BundleAdjusterBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZL39pyopencv_detail_BundleAdjusterBase_getpP7_objectRPN2cv3PtrINS1_6detail18BundleAdjusterBaseEEE.exit
  %.1 = phi ptr [ %.0, %_ZNSt12__shared_ptrIN2cv6detail18BundleAdjusterBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.c, %_ZL39pyopencv_detail_BundleAdjusterBase_getpP7_objectRPN2cv3PtrINS1_6detail18BundleAdjusterBaseEEE.exit ]
  ret ptr %.1

bb.ai:                                            ; preds = %bb.x, %bb.v, %bb.u
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail18BundleAdjusterBase17setRefinementMaskERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !1756
  %i.b = and i32 %i.a, 4095
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1389 ; 4 uses
  %i.f = icmp slt i32 %i.e, 3
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.17784, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.39, i32 noundef 109) #38
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %2, align 8, !tbaa !779    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.k = load i64, ptr %i.i, align 8, !tbaa !743
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.aa, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %7 = icmp sgt i32 %i.e, 0
  br i1 %7, label %_ZNK2cv8MatShapeclEv.exit, label %.critedge

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 84
  %8 = icmp eq i32 %i.e, 2
  %9 = zext i1 %8 to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %9
  %i.n = load i32, ptr %10, align 4, !tbaa !744
  %11 = icmp eq i32 %i.n, 3
  %12 = icmp eq i32 %i.e, 2
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.o = load i32, ptr %13, align 4
  %i.p = icmp eq i32 %i.o, 3
  %14 = and i1 %12, %11
  %i.q = select i1 %14, i1 %i.p, i1 false
  br i1 %i.q, label %bb.k, label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.a, %_ZNK2cv8MatShapeclEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.17782, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %.critedge
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.17774, ptr noundef nonnull @.str.17783, i32 noundef 139) #38
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %.critedge
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %4, align 8, !tbaa !779    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.w = load i64, ptr %i.u, align 8, !tbaa !743
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.s, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %common.resume

bb.k:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.y, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.l unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret void

bb.m:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv6detail16NoBundleAdjusterELN9__gnu_cxx12_Lock_policyE2EE5resetIS2_EENSt9enable_ifIXsr21__sp_is_constructibleIS2_T_EE5valueEvE4typeEPS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #39
          to label %_ZNSt12__shared_ptrIN2cv6detail16NoBundleAdjusterELN9__gnu_cxx12_Lock_policyE2EEC2IS2_vEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #37 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !742
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(504) %1) #37, !inline_history !12658
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #38
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #36
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNSt12__shared_ptrIN2cv6detail16NoBundleAdjusterELN9__gnu_cxx12_Lock_policyE2EEC2IS2_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.l, align 8, !tbaa !739
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.m, align 4, !tbaa !740
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv6detail16NoBundleAdjusterELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !742
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.n, align 8, !tbaa !3527
  store ptr %1, ptr %0, align 8, !tbaa !12659
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !737  ; 8 uses
  store ptr %i.a, ptr %i.o, align 8, !tbaa !737
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv6detail16NoBundleAdjusterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN2cv6detail16NoBundleAdjusterELN9__gnu_cxx12_Lock_policyE2EEC2IS2_vEEPT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.q, align 8, !tbaa !739
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !740
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !742
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #37, !inline_history !392
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !742
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #37, !inline_history !392
  br label %_ZNSt12__shared_ptrIN2cv6detail16NoBundleAdjusterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !743
  %.not.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !744
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.t, %bb.l ], [ %i.ad, %bb.m ]
  %i.ae = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ae, label %bb.n, label %_ZNSt12__shared_ptrIN2cv6detail16NoBundleAdjusterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !745

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #37
  br label %_ZNSt12__shared_ptrIN2cv6detail16NoBundleAdjusterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv6detail16NoBundleAdjusterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN2cv6detail16NoBundleAdjusterELN9__gnu_cxx12_Lock_policyE2EEC2IS2_vEEPT_.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv6detail16NoBundleAdjusterELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv6detail16NoBundleAdjusterELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3527 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !742
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(504) %i.b) #37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv6detail16NoBundleAdjusterELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

end_hunk_0
