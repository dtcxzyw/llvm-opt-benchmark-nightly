Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/datetime?download=true
inline.NumInlined: 2499
inline.NumDeleted: 992
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN14arrow_vendored4date9time_zone9load_dataIlEEvRSiiiii:bb.a
  %i.io = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !117
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.in to i64
  %i.is = sub i64 %i.iq, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.is) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit75

_ZNSt6vectorIhSaIhEED2Ev.exit75:                  ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit73, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define void @_ZNK14arrow_vendored4date9time_zone4initEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.95, align 8             ; 5 uses
  %2 = alloca %class.anon.26, align 8             ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %0, ptr %2, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store ptr %2, ptr %1, align 8, !tbaa !134
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !134
  %i.d = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK14arrow_vendored4date9time_zone4initEvE3$_0JEEvRS_OT_DpOT0_EUlvE_EERS8_ENUlvE_8__invokeEv", ptr %i.d, align 8, !tbaa !134
  %i.e = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i:                ; preds = %bb.a
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %"_ZSt9call_onceIZNK14arrow_vendored4date9time_zone4initEvE3$_0JEEvRSt9once_flagOT_DpOT0_.exit", label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.e) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.c, align 8, !tbaa !134
  store ptr null, ptr %i.d, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %i.f

"_ZSt9call_onceIZNK14arrow_vendored4date9time_zone4initEvE3$_0JEEvRSt9once_flagOT_DpOT0_.exit": ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i
  store ptr null, ptr %i.c, align 8, !tbaa !134
  store ptr null, ptr %i.d, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK14arrow_vendored4date9time_zone13load_sys_infoEN9__gnu_cxx17__normal_iteratorIPKNS0_6detail10transitionESt6vectorIS5_SaIS5_EEEE(ptr dead_on_unwind noalias writable sret(%"struct.arrow_vendored::date::sys_info") align 8 initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr nofree readonly captures(address) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 16, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.c, align 8, !tbaa !39
  store i8 0, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = icmp eq ptr %2, %i.e
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %2, i64 -16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !75
  store i64 %i.h, ptr %0, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.k = icmp eq ptr %2, %i.j
  br i1 %i.k, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %2, align 8, !tbaa !75
  br label %.invoke

bb.d:                                             ; preds = %.invoke
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.e:                                             ; preds = %bb.a
  store i64 -1096193779200, ptr %0, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.p, align 8, !tbaa !75
  br label %.invoke

.invoke:                                          ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  %.sroa.042.0.sink = phi i64 [ 971890876800, %bb.b ], [ %i.l, %bb.c ], [ %i.t, %bb.f ], [ 971890876800, %bb.e ]
  %.sink = phi i64 [ -8, %bb.b ], [ -8, %bb.c ], [ 8, %bb.f ], [ 8, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.042.0.sink, ptr %i.u, align 8, !tbaa !75
  %i.v = getelementptr inbounds i8, ptr %2, i64 %.sink
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !81   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.w, align 8, !tbaa !75
  store i64 %i.y, ptr %i.x, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !84, !range !87, !noundef !88
  %spec.select = zext nneg i8 %i.aa to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %spec.select, ptr %i.ab, align 8, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %.invoke
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !31
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.ae) #28
  br label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit

_ZN14arrow_vendored4date8sys_infoD2Ev.exit:       ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define void @_ZNK14arrow_vendored4date9time_zone13get_info_implENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind noalias writable sret(%"struct.arrow_vendored::date::sys_info") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.95, align 8             ; 5 uses
  %4 = alloca %class.anon.26, align 8             ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %1, ptr %4, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %4, ptr %3, align 8, !tbaa !134
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %3, ptr %i.c, align 8, !tbaa !134
  %i.d = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK14arrow_vendored4date9time_zone4initEvE3$_0JEEvRS_OT_DpOT0_EUlvE_EERS8_ENUlvE_8__invokeEv", ptr %i.d, align 8, !tbaa !134
  %i.e = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i:              ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNK14arrow_vendored4date9time_zone4initEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.e) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ah, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.c, align 8, !tbaa !134
  store ptr null, ptr %i.d, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %common.resume

_ZNK14arrow_vendored4date9time_zone4initEv.exit:  ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i
  store ptr null, ptr %i.c, align 8, !tbaa !134
  store ptr null, ptr %i.d, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73   ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEEZNKS3_9time_zone13get_info_implESK_E3$_0ET_SN_SN_RKT0_T1_.exit.thread"

"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEEZNKS3_9time_zone13get_info_implESK_E3$_0ET_SN_SN_RKT0_T1_.exit.thread": ; preds = %_ZNK14arrow_vendored4date9time_zone4initEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !38, !alias.scope !135
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.r, align 8, !tbaa !39, !alias.scope !135
  store i8 0, ptr %i.q, align 8, !tbaa !31, !alias.scope !135
  br label %bb.h

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZNK14arrow_vendored4date9time_zone4initEv.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.07.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.n, %_ZNK14arrow_vendored4date9time_zone4initEv.exit ] ; 2 uses
  %.sroa.02.06.i.i = phi ptr [ %.sroa.02.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.h, %_ZNK14arrow_vendored4date9time_zone4initEv.exit ] ; 2 uses
  %i.s = lshr i64 %.07.i.i, 1                     ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sroa.02.06.i.i, i64 %i.s ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.t, align 8, !tbaa !75
  %i.u = icmp slt i64 %2, %.val2.i.i.i            ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = xor i64 %i.s, -1
  %i.x = add nsw i64 %.07.i.i, %i.w
  %.sroa.02.1.i.i = select i1 %i.u, ptr %.sroa.02.06.i.i, ptr %i.v ; 7 uses
  %.1.i.i = select i1 %i.u, i64 %i.s, i64 %i.x    ; 2 uses
  %i.y = icmp sgt i64 %.1.i.i, 0
  br i1 %i.y, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEEZNKS3_9time_zone13get_info_implESK_E3$_0ET_SN_SN_RKT0_T1_.exit", !llvm.loop !138

"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEEZNKS3_9time_zone13get_info_implESK_E3$_0ET_SN_SN_RKT0_T1_.exit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store i64 0, ptr %0, align 8
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !38, !alias.scope !139
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.ab, align 8, !tbaa !39, !alias.scope !139
  store i8 0, ptr %i.aa, align 8, !tbaa !31, !alias.scope !139
  %i.ac = icmp eq ptr %.sroa.02.1.i.i, %i.h
  br i1 %i.ac, label %bb.h, label %bb.e

bb.e:                                             ; preds = %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEEZNKS3_9time_zone13get_info_implESK_E3$_0ET_SN_SN_RKT0_T1_.exit"
  %i.ad = getelementptr inbounds i8, ptr %.sroa.02.1.i.i, i64 -16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !75, !noalias !139
  store i64 %i.ae, ptr %0, align 8, !tbaa !75, !alias.scope !139
  %i.af = icmp eq ptr %.sroa.02.1.i.i, %i.j
  br i1 %i.af, label %.invoke.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i64, ptr %.sroa.02.1.i.i, align 8, !tbaa !75, !noalias !139
  br label %.invoke.i

bb.g:                                             ; preds = %.invoke.i
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %i.aq, align 8, !tbaa !30, !alias.scope !139 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ap
  br i1 %i.aj, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.h:                                             ; preds = %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEEZNKS3_9time_zone13get_info_implESK_E3$_0ET_SN_SN_RKT0_T1_.exit.thread", %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEEZNKS3_9time_zone13get_info_implESK_E3$_0ET_SN_SN_RKT0_T1_.exit"
  %i.ak = phi ptr [ %i.q, %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEEZNKS3_9time_zone13get_info_implESK_E3$_0ET_SN_SN_RKT0_T1_.exit.thread" ], [ %i.aa, %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEEZNKS3_9time_zone13get_info_implESK_E3$_0ET_SN_SN_RKT0_T1_.exit" ] ; 2 uses
  %i.al = phi ptr [ %i.p, %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEEZNKS3_9time_zone13get_info_implESK_E3$_0ET_SN_SN_RKT0_T1_.exit.thread" ], [ %i.z, %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEEZNKS3_9time_zone13get_info_implESK_E3$_0ET_SN_SN_RKT0_T1_.exit" ] ; 2 uses
  store i64 -1096193779200, ptr %0, align 8, !tbaa !75, !alias.scope !139
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.j
  br i1 %i.an, label %.invoke.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !75, !noalias !139
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %i.ap = phi ptr [ %i.aa, %bb.e ], [ %i.aa, %bb.f ], [ %i.ak, %bb.i ], [ %i.ak, %bb.h ] ; 2 uses
  %i.aq = phi ptr [ %i.z, %bb.e ], [ %i.z, %bb.f ], [ %i.al, %bb.i ], [ %i.al, %bb.h ] ; 2 uses
  %.sroa.02.0.lcssa.i.i4 = phi ptr [ %.sroa.02.1.i.i, %bb.e ], [ %.sroa.02.1.i.i, %bb.f ], [ %i.h, %bb.i ], [ %i.h, %bb.h ]
  %.sroa.042.0.sink.i = phi i64 [ 971890876800, %bb.e ], [ %i.ag, %bb.f ], [ %i.ao, %bb.i ], [ 971890876800, %bb.h ]
  %.sink.i = phi i64 [ -8, %bb.e ], [ -8, %bb.f ], [ 8, %bb.i ], [ 8, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.042.0.sink.i, ptr %i.ar, align 8, !tbaa !75, !alias.scope !139
  %i.as = getelementptr inbounds i8, ptr %.sroa.02.0.lcssa.i.i4, i64 %.sink.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !81, !noalias !139 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load i64, ptr %i.at, align 8, !tbaa !75
  store i64 %i.av, ptr %i.au, align 8, !tbaa !75, !alias.scope !139
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !84, !range !87, !noundef !88
  %spec.select.i = zext nneg i8 %i.ax to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %spec.select.i, ptr %i.ay, align 8, !tbaa !75, !alias.scope !139
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %_ZNK14arrow_vendored4date9time_zone13load_sys_infoEN9__gnu_cxx17__normal_iteratorIPKNS0_6detail10transitionESt6vectorIS5_SaIS5_EEEE.exit unwind label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.ba = load i64, ptr %i.ap, align 8, !tbaa !31, !alias.scope !139
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.bb) #28
  br label %common.resume

_ZNK14arrow_vendored4date9time_zone13load_sys_infoEN9__gnu_cxx17__normal_iteratorIPKNS0_6detail10transitionESt6vectorIS5_SaIS5_EEEE.exit: ; preds = %.invoke.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK14arrow_vendored4date9time_zone13get_info_implENSt6chrono10time_pointINS0_7local_tENS2_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind noalias writable sret(%"struct.arrow_vendored::date::local_info") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.95, align 8             ; 5 uses
  %4 = alloca %class.anon.26, align 8             ; 4 uses
  %5 = alloca %"struct.arrow_vendored::date::sys_info", align 8 ; 18 uses
  %6 = alloca %"struct.arrow_vendored::date::sys_info", align 8 ; 14 uses
  %7 = alloca %"struct.arrow_vendored::date::sys_info", align 8 ; 7 uses
  %8 = alloca %"struct.arrow_vendored::date::sys_info", align 8 ; 14 uses
  %9 = alloca %"struct.arrow_vendored::date::sys_info", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %1, ptr %4, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %4, ptr %3, align 8, !tbaa !134
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %3, ptr %i.c, align 8, !tbaa !134
  %i.d = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK14arrow_vendored4date9time_zone4initEvE3$_0JEEvRS_OT_DpOT0_EUlvE_EERS8_ENUlvE_8__invokeEv", ptr %i.d, align 8, !tbaa !134
  %i.e = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i:              ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNK14arrow_vendored4date9time_zone4initEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.e) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.as, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %.pn.pn, %bb.as ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.c, align 8, !tbaa !134
  store ptr null, ptr %i.d, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %common.resume

_ZNK14arrow_vendored4date9time_zone4initEv.exit:  ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i
  store ptr null, ptr %i.c, align 8, !tbaa !134
  store ptr null, ptr %i.d, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store ptr %i.k, ptr %i.j, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i64 0, ptr %i.l, align 8, !tbaa !39
  store i8 0, ptr %i.k, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  store ptr %i.q, ptr %i.p, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  store i64 0, ptr %i.r, align 8, !tbaa !39
  store i8 0, ptr %i.q, align 8, !tbaa !31
  store i32 0, ptr %0, align 8, !tbaa !141
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !73   ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73   ; 3 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 4                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINS3_7local_tENSC_8durationIlSt5ratioILl1ELl1EEEEEEZNKS3_9time_zone13get_info_implESJ_E3$_0ET_SM_SM_RKT0_T1_.exit.thread"

"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEENSt6chrono10time_pointINS3_7local_tENSC_8durationIlSt5ratioILl1ELl1EEEEEEZNKS3_9time_zone13get_info_implESJ_E3$_0ET_SM_SM_RKT0_T1_.exit.thread": ; preds = %_ZNK14arrow_vendored4date9time_zone4initEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !38, !alias.scope !146
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !39, !alias.scope !146
  store i8 0, ptr %i.ac, align 8, !tbaa !31, !alias.scope !146
  br label %bb.h

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZNK14arrow_vendored4date9time_zone4initEv.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.07.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.z, %_ZNK14arrow_vendored4date9time_zone4initEv.exit ] ; 2 uses
  %.sroa.02.06.i.i = phi ptr [ %.sroa.02.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN14arrow_vendored4date6detail10transitionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.t, %_ZNK14arrow_vendored4date9time_zone4initEv.exit ] ; 2 uses
  %i.ae = lshr i64 %.07.i.i, 1                    ; 3 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.sroa.02.06.i.i, i64 %i.ae ; 3 uses
  %.val2.i.i.i = load i64, ptr %i.af, align 8, !tbaa !75
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %.val3.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !81
  %.val3.val.i.i.i = load i64, ptr %.val3.i.i.i, align 8, !tbaa !75
  %i.ah = sub nsw i64 %2, %.val3.val.i.i.i
  %i.ai = icmp slt i64 %i.ah, %.val2.i.i.i        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
end_hunk_0
