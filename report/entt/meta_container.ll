Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_container?download=true
inline.NumInlined: 11203
inline.NumDeleted: 3081
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm:_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  %i.a = lshr i64 %1, 7                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !203
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #28 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !200
  %i.g = sub nuw nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #28
          to label %_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !104
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_.exit, !llvm.loop !1554

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #27 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !104
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #30
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i, !llvm.loop !11

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #31
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #29
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #27 ; 0 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !200
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !203
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #31
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ac

_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_.exit: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ae, align 8, !tbaa !312
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !104 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !313
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !314
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !312
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !104 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !313
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !314
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !315
  %i.aq = and i64 %1, 127
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !316
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #29
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI46SequenceContainer_NonDefaultConstructible_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI46SequenceContainer_NonDefaultConstructible_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV46SequenceContainer_NonDefaultConstructible_Test, i64 16), ptr %i.a, align 8, !tbaa !65
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #30
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI32SequenceContainer_Constness_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI32SequenceContainer_Constness_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV32SequenceContainer_Constness_Test, i64 16), ptr %i.a, align 8, !tbaa !65
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #30
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI50SequenceContainerDeathTest_DISABLED_Constness_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI50SequenceContainerDeathTest_DISABLED_Constness_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV50SequenceContainerDeathTest_DISABLED_Constness_Test, i64 16), ptr %i.a, align 8, !tbaa !65
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #30
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing13ContainsRegexIPKcEENS_18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.testing::PolymorphicMatcher") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #28 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.b = load ptr, ptr %1, align 8, !tbaa !216    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !138
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.178) #31
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #27 ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.179) #31
          to label %.noexc6 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread

.noexc6:                                          ; preds = %.noexc.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !228

.noexc11.i:                                       ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc7 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread

.noexc7:                                          ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28
          to label %.noexc8 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread ; 2 uses

.noexc8:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.j, ptr %2, align 8, !tbaa !97
  store i64 %i.e, ptr %i.c, align 8, !tbaa !98
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc8, %bb.c
  %i.k = phi ptr [ %i.j, %.noexc8 ], [ %i.c, %bb.c ] ; 3 uses
  switch i64 %i.e, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.b, align 1, !tbaa !98
  store i8 %i.l, ptr %i.k, align 1, !tbaa !98
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %i.b, i64 %i.e, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.e, ptr %i.m, align 8, !tbaa !139
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !98
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !138
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !139
  store i8 0, ptr %i.o, align 8, !tbaa !98
  %i.q = load ptr, ptr %2, align 8, !tbaa !97
  invoke void @_ZN7testing8internal2RE4InitEPKc(ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef %i.q)
          to label %_ZN7testing8internal2REC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.o
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.u = load i64, ptr %i.o, align 8, !tbaa !98
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #30
  br label %.body

_ZN7testing8internal2REC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  %i.w = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.n unwind label %bb.j       ; 10 uses

bb.j:                                             ; preds = %_ZN7testing8internal2REC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  %i.z = call ptr @__cxa_begin_catch(ptr %i.y) #27 ; 0 uses
  call void @_ZN7testing8internal2RED1Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.a) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 168) #30
  invoke void @__cxa_rethrow() #31
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body.thread unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #29
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable

bb.n:                                             ; preds = %_ZN7testing8internal2REC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 7 uses
  store i32 1, ptr %i.ad, align 8, !tbaa !226
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 2 uses
  store i32 1, ptr %i.ae, align 4, !tbaa !227
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPKN7testing8internal2REELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.w, align 8, !tbaa !65
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.a, ptr %i.af, align 8, !tbaa !318
  call void @llvm.experimental.noalias.scope.decl(metadata !1561)
  store ptr %i.a, ptr %0, align 8, !tbaa !319, !alias.scope !1562
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.ag, align 8, !tbaa !217, !alias.scope !1562
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !1562
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.o, label %.thread4.i

.thread4.i:                                       ; preds = %bb.n
  store i32 2, ptr %i.ad, align 8, !tbaa !134, !noalias !1562
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4, !noalias !1562 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread4.i
  store i8 0, ptr %i.ai, align 8, !tbaa !222, !alias.scope !1562
  %i.ak = load atomic i64, ptr %i.ad acquire, align 8, !noalias !1560 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ad, align 8, !tbaa !226, !noalias !1560
  store i32 0, ptr %i.ae, align 4, !tbaa !227, !noalias !1560
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !65, !noalias !1560
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !1560
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #27, !noalias !1560, !inline_history !1559
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !65, !noalias !1560
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !1560
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #27, !noalias !1560, !inline_history !1559
  br label %_ZN7testing13ContainsRegexEPKNS_8internal2REE.exit

bb.r:                                             ; preds = %bb.p
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !1560
  %.not.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = add nsw i32 %i.am, -1
  store i32 %i.au, ptr %i.ad, align 8, !tbaa !134, !noalias !1560
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.av = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4, !noalias !1560
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i = phi i32 [ %i.am, %bb.s ], [ %i.av, %bb.t ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aw, label %bb.u, label %_ZN7testing13ContainsRegexEPKNS_8internal2REE.exit, !prof !228

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #27, !noalias !1560
  br label %_ZN7testing13ContainsRegexEPKNS_8internal2REE.exit

_ZN7testing13ContainsRegexEPKNS_8internal2REE.exit: ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q
  %i.ax = load ptr, ptr %2, align 8, !tbaa !97    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.c
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing13ContainsRegexEPKNS_8internal2REE.exit
  %i.az = load i64, ptr %i.c, align 8, !tbaa !98
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing13ContainsRegexEPKNS_8internal2REE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread: ; preds = %bb.b, %.noexc.i, %.noexc11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bc = load ptr, ptr %2, align 8, !tbaa !97    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.c
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.thread: ; preds = %.body
  %i.be = load i64, ptr %i.c, align 8, !tbaa !98
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

.body.thread:                                     ; preds = %bb.k
  %i.bg = load ptr, ptr %2, align 8, !tbaa !97    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.c
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread33: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %.body.thread
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !98
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread
  %.pn19 = phi { ptr, i32 } [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.thread ], [ %i.r, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 168) #30
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %.pn18 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread33 ], [ %.pn19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ]
  resume { ptr, i32 } %.pn18
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal19MatchesRegexMatcherD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !226
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !227
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !33
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !33
  br label %_ZN7testing8internal19MatchesRegexMatcherD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !134
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN7testing8internal19MatchesRegexMatcherD2Ev.exit, !prof !228

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZN7testing8internal19MatchesRegexMatcherD2Ev.exit

_ZN7testing8internal19MatchesRegexMatcherD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7testing8internal2RED1Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPKN7testing8internal2REELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPKN7testing8internal2REELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !318  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal2RED1Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.b) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 168) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPKN7testing8internal2REELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15_Sp_counted_ptrIPKN7testing8internal2REELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr null
}

declare void @_ZN7testing8internal2RE4InitEPKc(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !65
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal19MatchesRegexMatcherD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !226
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !227
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !33
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !33
  br label %_ZN7testing8internal19MatchesRegexMatcherD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !134
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN7testing8internal19MatchesRegexMatcherD2Ev.exit, !prof !228

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZN7testing8internal19MatchesRegexMatcherD2Ev.exit

_ZN7testing8internal19MatchesRegexMatcherD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !65
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !226
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !227
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1563
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1563
  br label %_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !134
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
end_hunk_0
begin_hunk_1_@_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEbEERKNS0_14meta_type_nodeERKNS0_12meta_contextE:bb.a
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 4294967295
  %i.q = and i64 %i.p, %i.h
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.07.in.i.i = phi ptr [ %i.r, %bb.d ], [ %i.u, %bb.f ]
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !162 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.07.i.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !134
  %i.x = icmp eq i32 %i.w, %i.g
  br i1 %i.x, label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, label %bb.e, !llvm.loop !30

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !309  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit: ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !309
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit: ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, %bb.g
  %i.ae = phi ptr [ %i.z, %bb.g ], [ %.pre, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ]
  %.sroa.0.1.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.u, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ] ; 2 uses
  %i.af = icmp eq ptr %.sroa.0.1.i.i, %i.ae
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !137
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.h ], [ @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEbEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit ]
  ret ptr %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4entt36basic_meta_sequence_container_traitsISt6vectorIbSaIbEEE4sizeEPKv(ptr noundef %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !347
  %i.e = load ptr, ptr %0, align 8, !tbaa !181
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = shl nsw i64 %i.h, 3
  %i.j = zext i32 %i.d to i64
  %i.k = add nsw i64 %i.i, %i.j
  ret i64 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4entt36basic_meta_sequence_container_traitsISt6vectorIbSaIbEEE5clearEPv(ptr noundef %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !181
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4entt36basic_meta_sequence_container_traitsISt6vectorIbSaIbEEE7reserveEPvm(ptr noundef %0, i64 noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 9223372036854775744
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.206) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !184
  %i.d = load ptr, ptr %0, align 8, !tbaa !181
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl nsw i64 %i.g, 3
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.d, label %_ZNSt6vectorIbSaIbEE7reserveEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt6vectorIbSaIbEE13_M_reallocateEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1)
  br label %_ZNSt6vectorIbSaIbEE7reserveEm.exit

_ZNSt6vectorIbSaIbEE7reserveEm.exit:              ; preds = %bb.c, %bb.d
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4entt36basic_meta_sequence_container_traitsISt6vectorIbSaIbEEE6resizeEPvm(ptr noundef %0, i64 noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !347  ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !181    ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = shl nsw i64 %i.h, 3
  %i.j = zext i32 %i.d to i64
  %i.k = add nsw i64 %i.i, %i.j                   ; 2 uses
  %i.l = icmp ult i64 %1, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = sdiv i64 %1, 64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.m
  %i.o = and i64 %1, -9223372036854775745
  %i.p = icmp ugt i64 %i.o, -9223372036854775808
  %storemerge.idx.i.i.i.i = select i1 %i.p, i64 -8, i64 0
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.n, i64 %storemerge.idx.i.i.i.i
  %i.q = trunc i64 %1 to i32
  %i.r = and i32 %i.q, 63
  store ptr %storemerge.i.i.i.i, ptr %i.a, align 8
  store i32 %i.r, ptr %i.c, align 8
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

bb.c:                                             ; preds = %bb.a
  %i.s = sub nuw i64 %1, %i.k
  tail call void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %i.b, i32 %i.d, i64 noundef %i.s, i1 noundef zeroext false)
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %bb.b, %bb.c
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt36basic_meta_sequence_container_traitsISt6vectorIbSaIbEEE4iterERKNS_8meta_ctxEPvPKvb(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_sequence_container::meta_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %2, null                     ; 4 uses
  %. = select i1 %i.a, ptr %3, ptr %2             ; 3 uses
  br i1 %4, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %., i64 16
  %.sroa.2.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %., i64 24
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i28, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.sink.split
  %.sroa.0.0.copyload.i.pn.in.sink = phi ptr [ %., %bb.a ], [ %i.b, %.sink.split ]
  %.sroa.2.0.copyload.i.pn.sink = phi i32 [ 0, %bb.a ], [ %.sroa.2.0.copyload.i, %.sink.split ]
  %.43 = select i1 %i.a, i32 936620833, i32 -1029010223
  %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt19_Bit_const_iteratorEEPKvNS_8internal11any_requestERKS1_S5_._ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt13_Bit_iteratorEEPKvNS_8internal11any_requestERKS1_S5_ = select i1 %i.a, ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt19_Bit_const_iteratorEEPKvNS_8internal11any_requestERKS1_S5_, ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt13_Bit_iteratorEEPKvNS_8internal11any_requestERKS1_S5_
  %_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableISt19_Bit_const_iteratorEEvPKvlPNS_8meta_anyE._ZN4entt23meta_sequence_container13meta_iterator12basic_vtableISt13_Bit_iteratorEEvPKvlPNS_8meta_anyE = select i1 %i.a, ptr @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableISt19_Bit_const_iteratorEEvPKvlPNS_8meta_anyE, ptr @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableISt13_Bit_iteratorEEvPKvlPNS_8meta_anyE
  %.sroa.0.0.copyload.i.pn = load ptr, ptr %.sroa.0.0.copyload.i.pn.in.sink, align 8
  store ptr %1, ptr %0, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableISt19_Bit_const_iteratorEEvPKvlPNS_8meta_anyE._ZN4entt23meta_sequence_container13meta_iterator12basic_vtableISt13_Bit_iteratorEEvPKvlPNS_8meta_anyE, ptr %i.c, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  store ptr %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt19_Bit_const_iteratorEEPKvNS_8internal11any_requestERKS1_S5_._ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt13_Bit_iteratorEEPKvNS_8internal11any_requestERKS1_S5_, ptr %i.e, align 8, !tbaa !108
  store i32 %.43, ptr %i.g, align 8, !tbaa !109
  store ptr null, ptr %i.f, align 8, !tbaa !110
  store i8 2, ptr %i.h, align 4, !tbaa !111
  store ptr %.sroa.0.0.copyload.i.pn, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.2.0.copyload.i.pn.sink, ptr %.sroa.2.0..sroa_idx.i33, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt36basic_meta_sequence_container_traitsISt6vectorIbSaIbEEE6insertERKNS_8meta_ctxEPvPKvSA_RKNS_23meta_sequence_container13meta_iteratorE(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_sequence_container::meta_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(56) %5) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.c = load i8, ptr %i.b, align 4
  %i.d = icmp eq i8 %i.c, 2
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = select i1 %i.d, ptr %i.a, ptr %i.e       ; 2 uses
  %.sroa.0.0 = load ptr, ptr %i.f, align 8        ; 3 uses
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0 = load i32, ptr %.sroa.3.0.in, align 8 ; 6 uses
  %.not11 = icmp eq ptr %3, null
  %i.g = select i1 %.not11, ptr %4, ptr %3        ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !181    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !181  ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.m = icmp eq ptr %.sroa.0.0, %i.j
  %i.n = icmp eq i32 %.sroa.3.0, %.sroa.2.0.copyload.i.i
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  br i1 %i.o, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.g, align 1, !tbaa !177, !range !135, !noundef !132
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = add i32 %.sroa.3.0, 1
  store i32 %i.r, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !347
  %i.s = icmp eq i32 %.sroa.3.0, 63
  br i1 %i.s, label %bb.d, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !347
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.t, ptr %i.i, align 8, !tbaa !181
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.d, %bb.c
  %i.u = zext i32 %.sroa.3.0 to i64               ; 3 uses
  %i.v = shl nuw i64 1, %i.u                      ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.w = load i64, ptr %i.j, align 8, !tbaa !162
  %i.x = or i64 %i.w, %i.v
  store i64 %i.x, ptr %i.j, align 8, !tbaa !162
  br label %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit

bb.f:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.y = xor i64 %i.v, -1
  %i.z = load i64, ptr %i.j, align 8, !tbaa !162
  %i.aa = and i64 %i.z, %i.y
  store i64 %i.aa, ptr %i.j, align 8, !tbaa !162
  br label %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.ab = load i8, ptr %i.g, align 1, !tbaa !177, !range !135, !noundef !132
  %i.ac = trunc nuw i8 %i.ab to i1
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %.sroa.0.0, i32 %.sroa.3.0, i1 noundef zeroext %i.ac)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !181
  %.pre58.i = zext i32 %.sroa.3.0 to i64
  br label %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit

_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit: ; preds = %bb.e, %bb.f, %.critedge.i
  %.pre-phi.i = phi i64 [ %i.u, %bb.f ], [ %i.u, %bb.e ], [ %.pre58.i, %.critedge.i ]
  %6 = phi ptr [ %i.h, %bb.f ], [ %i.h, %bb.e ], [ %.pre.i, %.critedge.i ]
  %i.ad = ptrtoint ptr %.sroa.0.0 to i64
  %i.ae = ptrtoint ptr %i.h to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = shl nsw i64 %i.af, 3
  %i.ah = add nsw i64 %.pre-phi.i, %i.ag          ; 3 uses
  %i.ai = sdiv i64 %i.ah, 64
  %i.aj = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ai
  %i.ak = and i64 %i.ah, -9223372036854775745
  %i.al = icmp ugt i64 %i.ak, -9223372036854775808
  %storemerge.idx.i.i.i.i = select i1 %i.al, i64 -8, i64 0
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.aj, i64 %storemerge.idx.i.i.i.i
  %i.am = trunc i64 %i.ah to i32
  %i.an = and i32 %i.am, 63
  store ptr %1, ptr %0, align 8, !tbaa !118
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableISt13_Bit_iteratorEEvPKvlPNS_8meta_anyE, ptr %i.ao, align 8, !tbaa !119
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt13_Bit_iteratorEEPKvNS_8internal11any_requestERKS1_S5_, ptr %i.aq, align 8, !tbaa !108
  store i32 -1029010223, ptr %i.as, align 8, !tbaa !109
  store ptr null, ptr %i.ar, align 8, !tbaa !110
  store i8 2, ptr %i.at, align 4, !tbaa !111
  store ptr %storemerge.i.i.i.i, ptr %i.ap, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.an, ptr %.sroa.2.0..sroa_idx.i, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt36basic_meta_sequence_container_traitsISt6vectorIbSaIbEEE5eraseERKNS_8meta_ctxEPvRKNS_23meta_sequence_container13meta_iteratorE(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_sequence_container::meta_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.c = load i8, ptr %i.b, align 4
  %i.d = icmp eq i8 %i.c, 2
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = select i1 %i.d, ptr %i.a, ptr %i.e       ; 2 uses
  %.sroa.0.0 = load ptr, ptr %i.f, align 8        ; 3 uses
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0 = load i32, ptr %.sroa.3.0.in, align 8 ; 3 uses
  %i.g = zext i32 %.sroa.3.0 to i64
  %i.h = add nuw nsw i64 %i.g, 1                  ; 3 uses
  %i.i = lshr i64 %i.h, 6
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %i.i ; 3 uses
  %i.k = trunc i64 %i.h to i32
  %i.l = and i32 %i.k, 63                         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i23.i.i = load ptr, ptr %i.m, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %.sroa.2.0.copyload.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8 ; 4 uses
  %i.n = icmp eq ptr %i.j, %.sroa.0.0.copyload.i23.i.i
  %i.o = icmp eq i32 %i.l, %.sroa.2.0.copyload.i.i.i
  %i.p = select i1 %i.n, i1 %i.o, i1 false
  br i1 %i.p, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = ptrtoint ptr %.sroa.0.0.copyload.i23.i.i to i64
  %i.r = ptrtoint ptr %i.j to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = shl nsw i64 %i.s, 3
  %i.u = zext i32 %.sroa.2.0.copyload.i.i.i to i64
  %i.v = and i64 %i.h, 63
  %i.w = sub nsw i64 %i.u, %i.v
  %i.x = add i64 %i.t, %i.w                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.i.i
  %.024.i.i.i.i.i.i.i = phi i64 [ %i.ao, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.i.i ], [ %i.x, %bb.b ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0, %bb.b ] ; 4 uses
  %.sroa.59.022.i.i.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.i.i ], [ %.sroa.3.0, %bb.b ] ; 3 uses
  %.sroa.516.021.i.i.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.i.i ], [ %i.l, %bb.b ] ; 3 uses
  %.sroa.013.020.i.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.z = zext nneg i32 %.sroa.516.021.i.i.i.i.i.i.i to i64
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = zext nneg i32 %.sroa.59.022.i.i.i.i.i.i.i to i64
  %i.ac = shl nuw i64 1, %i.ab                    ; 2 uses
  %i.ad = load i64, ptr %.sroa.013.020.i.i.i.i.i.i.i, align 8, !tbaa !162
  %i.ae = and i64 %i.ad, %i.aa
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.af = load i64, ptr %.sroa.07.023.i.i.i.i.i.i.i, align 8, !tbaa !162
  %i.ag = or i64 %i.af, %i.ac
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ah = xor i64 %i.ac, -1
  %i.ai = load i64, ptr %.sroa.07.023.i.i.i.i.i.i.i, align 8, !tbaa !162
  %i.aj = and i64 %i.ai, %i.ah
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.i.i:  ; preds = %bb.d, %bb.c
  %storemerge.i.i.i.i.i.i.i = phi i64 [ %i.ag, %bb.c ], [ %i.aj, %bb.d ]
  store i64 %storemerge.i.i.i.i.i.i.i, ptr %.sroa.07.023.i.i.i.i.i.i.i, align 8, !tbaa !162
  %i.ak = add i32 %.sroa.516.021.i.i.i.i.i.i.i, 1
  %i.al = icmp eq i32 %.sroa.516.021.i.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i.i = select i1 %i.al, i64 8, i64 0
  %spec.select.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i.i
  %spec.select19.i.i.i.i.i.i.i = select i1 %i.al, i32 0, i32 %i.ak
  %i.am = add i32 %.sroa.59.022.i.i.i.i.i.i.i, 1
  %i.an = icmp eq i32 %.sroa.59.022.i.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.59.1.i.i.i.i.i.i.i = select i1 %i.an, i32 0, i32 %i.am
  %.sroa.07.1.idx.i.i.i.i.i.i.i = select i1 %i.an, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i.i.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i.i.i
  %i.ao = add nsw i64 %.024.i.i.i.i.i.i.i, -1
  %i.ap = icmp sgt i64 %.024.i.i.i.i.i.i.i, 1
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit.i.i, !llvm.loop !44

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit.i.i: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.i.i, %bb.b, %bb.a
  %i.aq = add i32 %.sroa.2.0.copyload.i.i.i, -1
  store i32 %i.aq, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !347
  %i.ar = icmp eq i32 %.sroa.2.0.copyload.i.i.i, 0
  br i1 %i.ar, label %bb.e, label %_ZNSt6vectorIbSaIbEE5eraseESt19_Bit_const_iterator.exit

bb.e:                                             ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit.i.i
  store i32 63, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !347
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i23.i.i, i64 -8
  store ptr %i.as, ptr %i.m, align 8, !tbaa !181
  br label %_ZNSt6vectorIbSaIbEE5eraseESt19_Bit_const_iterator.exit

_ZNSt6vectorIbSaIbEE5eraseESt19_Bit_const_iterator.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit.i.i, %bb.e
  store ptr %1, ptr %0, align 8, !tbaa !118
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableISt13_Bit_iteratorEEvPKvlPNS_8meta_anyE, ptr %i.at, align 8, !tbaa !119
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 52
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt13_Bit_iteratorEEPKvNS_8internal11any_requestERKS1_S5_, ptr %i.av, align 8, !tbaa !108
  store i32 -1029010223, ptr %i.ax, align 8, !tbaa !109
  store ptr null, ptr %i.aw, align 8, !tbaa !110
  store i8 2, ptr %i.ay, align 4, !tbaa !111
  store ptr %.sroa.0.0, ptr %i.au, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.3.0, ptr %.sroa.2.0..sroa_idx.i, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8internal14setup_node_forIbEEDav(ptr dead_on_unwind noalias writable sret(%"struct.entt::internal::meta_type_node") align 8 %0) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idIbEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt7type_idIbEERKNS_9type_infoEv.exit, !prof !295

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIbEERKNS_9type_infoEvE8instance) #27
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt7type_idIbEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IbEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIbEERKNS_9type_infoEvE8instance) #27
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIbEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIbEERKNS_9type_infoEvE8instance) #27
  br label %_ZN4entt7type_idIbEERKNS_9type_infoEv.exit

_ZN4entt7type_idIbEERKNS_9type_infoEv.exit:       ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic i8, ptr @_ZGVZN4entt7type_idIbEERKNS_9type_infoEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, !prof !295

bb.d:                                             ; preds = %_ZN4entt7type_idIbEERKNS_9type_infoEv.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIbEERKNS_9type_infoEvE8instance) #27
  %.not.i1 = icmp eq i32 %i.g, 0
  br i1 %.not.i1, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IbEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIbEERKNS_9type_infoEvE8instance) #27
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIbEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIbEERKNS_9type_infoEvE8instance) #27
  br label %_ZN4entt8internal14meta_type_nodeD2Ev.exit

_ZN4entt8internal14meta_type_nodeD2Ev.exit:       ; preds = %_ZN4entt7type_idIbEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIbEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !176
  store ptr @_ZZN4entt7type_idIbEERKNS_9type_infoEvE8instance, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 12, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEbEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4entt8internal14setup_node_forIbEEDavENUlRKNS_8meta_ctxEE_8__invokeES4_, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZZN4entt8internal14setup_node_forIbEEDavENUlPvPKvE_8__invokeES2_S4_, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZZN4entt8internal14setup_node_forIbEEDavENUlRKNS_8meta_ctxEPvPKvE_8__invokeES4_S5_S7_, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.15.0..sroa_idx, i8 0, i64 28, i1 false)
end_hunk_1
