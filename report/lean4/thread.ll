Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/thread?download=true
inline.NumInlined: 290
inline.NumDeleted: 183
begin_hunk_0_@_ZN4lean21run_thread_finalizersEv:bb.a
  %i.l = and i64 %i.k, 4294967295
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.l, %.lr.ph.preheader.i.i ], [ %i.m, %.lr.ph.i.i ]
  %i.m = add nsw i64 %indvars.iv.i.i, -1          ; 3 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.m ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32
  tail call void %i.p(ptr noundef %i.r), !inline_history !38
  %.not.wide.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.wide.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !34

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !29
  %.pre11.i.i = load ptr, ptr %i.d, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.b
  %i.s = phi ptr [ %.pre11.i.i, %._crit_edge.loopexit.i.i ], [ %i.e, %bb.b ]
  %i.t = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.f, %bb.b ] ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %_ZN4lean26run_thread_finalizers_coreERSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit.i, label %_ZSt8_DestroyIPSt4pairIPFvPvES1_ES4_EvT_S6_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt4pairIPFvPvES1_ES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %._crit_edge.i.i
  store ptr %i.t, ptr %i.d, align 8, !tbaa !26
  br label %_ZN4lean26run_thread_finalizers_coreERSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit.i

_ZN4lean26run_thread_finalizers_coreERSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIPFvPvES1_ES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, %._crit_edge.i.i
  %.not.i.i.i3.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4lean26run_thread_finalizers_coreERSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #23
  br label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EED2Ev.exit.i: ; preds = %bb.c, %_ZN4lean26run_thread_finalizers_coreERSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #23
  br label %_ZN4lean21run_thread_finalizersEPSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit

_ZN4lean21run_thread_finalizersEPSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit: ; preds = %bb.a, %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EED2Ev.exit.i
  store ptr null, ptr %i.a, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean26run_post_thread_finalizersEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL17g_post_finalizersE) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 7 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4lean21run_thread_finalizersEPSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN4leanL12g_finalizingE)
  store i8 1, ptr %i.c, align 1, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = and i64 %i.i, 68719476720
  %.not8.i.i = icmp eq i64 %i.j, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.k = lshr exact i64 %i.i, 4
  %i.l = and i64 %i.k, 4294967295
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.l, %.lr.ph.preheader.i.i ], [ %i.m, %.lr.ph.i.i ]
  %i.m = add nsw i64 %indvars.iv.i.i, -1          ; 3 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.m ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32
  tail call void %i.p(ptr noundef %i.r), !inline_history !38
  %.not.wide.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.wide.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !34

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !29
  %.pre11.i.i = load ptr, ptr %i.d, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.b
  %i.s = phi ptr [ %.pre11.i.i, %._crit_edge.loopexit.i.i ], [ %i.e, %bb.b ]
  %i.t = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.f, %bb.b ] ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %_ZN4lean26run_thread_finalizers_coreERSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit.i, label %_ZSt8_DestroyIPSt4pairIPFvPvES1_ES4_EvT_S6_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt4pairIPFvPvES1_ES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %._crit_edge.i.i
  store ptr %i.t, ptr %i.d, align 8, !tbaa !26
  br label %_ZN4lean26run_thread_finalizers_coreERSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit.i

_ZN4lean26run_thread_finalizers_coreERSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIPFvPvES1_ES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, %._crit_edge.i.i
  %.not.i.i.i3.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4lean26run_thread_finalizers_coreERSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #23
  br label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EED2Ev.exit.i: ; preds = %bb.c, %_ZN4lean26run_thread_finalizers_coreERSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #23
  br label %_ZN4lean21run_thread_finalizersEPSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit

_ZN4lean21run_thread_finalizersEPSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit: ; preds = %bb.a, %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EED2Ev.exit.i
  store ptr null, ptr %i.a, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4lean7lthread21set_thread_stack_sizeEm(i64 noundef %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = add i64 %0, 131072
  store i64 %i.a, ptr @_ZN4lean7lthread19m_thread_stack_sizeE, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN4lean7lthread21get_thread_stack_sizeEv() local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr @_ZN4lean7lthread19m_thread_stack_sizeE, align 8, !tbaa !39
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean7lthreadC2ERKSt8functionIFvvEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #24 ; 3 uses
  invoke void @_ZN4lean7lthread3impC2ERKSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(65) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !41
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean7lthread3impC2ERKSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.10, align 8             ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.a, align 8, !tbaa !43
  %i.b = tail call i32 @pthread_attr_init(ptr noundef nonnull %0) #25 ; 0 uses
  %i.c = load i64, ptr @_ZN4lean7lthread19m_thread_stack_sizeE, align 8, !tbaa !39
  %i.d = tail call i32 @pthread_attr_setstacksize(ptr noundef nonnull %0, i64 noundef %i.c) #25
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull @.str.4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #25
  br label %bb.aa

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24 ; 8 uses
  %i.h = invoke noundef i64 @_ZN4lean17get_max_heartbeatEv()
          to label %bb.f unwind label %bb.x

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !45
  store i64 %i.h, ptr %2, align 8, !tbaa !48, !noalias !45
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false), !noalias !45
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15, !noalias !45 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvvEEC2ERKS1_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.h unwind label %bb.i, !noalias !45 ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.n = load <2 x ptr>, ptr %i.k, align 8, !tbaa !17, !noalias !45
  store <2 x ptr> %i.n, ptr %i.j, align 8, !tbaa !17, !noalias !45
  br label %_ZNSt8functionIFvvEEC2ERKS1_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !15, !noalias !45 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %.body unwind label %bb.k, !noalias !45 ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #21, !noalias !45
  unreachable

_ZNSt8functionIFvvEEC2ERKS1_.exit.i:              ; preds = %bb.h, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false), !alias.scope !45
  %i.u = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %.noexc.i unwind label %4, !noalias !45 ; 6 uses

.noexc.i:                                         ; preds = %_ZNSt8functionIFvvEEC2ERKS1_.exit.i
  %i.v = load i64, ptr %2, align 8, !tbaa !48, !noalias !45
  store i64 %i.v, ptr %i.u, align 8, !tbaa !48, !noalias !45
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false), !noalias !45
  %3 = load ptr, ptr %i.j, align 8, !tbaa !15, !noalias !45 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %.noexc.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.u, ptr %i.g, align 8, !tbaa !17, !alias.scope !45
  store ptr @"_ZNSt17_Function_handlerIFvvEZN4leanL14mk_thread_procERKSt8functionIS0_EmE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.y, align 8, !tbaa !19, !alias.scope !45
  store ptr @"_ZNSt17_Function_handlerIFvvEZN4leanL14mk_thread_procERKSt8functionIS0_EmE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation", ptr %i.t, align 8, !tbaa !15, !alias.scope !45
  br label %bb.u

bb.l:                                             ; preds = %.noexc.i
  %i.z = invoke noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 2)
          to label %bb.p unwind label %bb.m, !noalias !45 ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !15, !noalias !45 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i, label %.body.i..body_crit_edge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef 3)
          to label %.body.i..body_crit_edge.i unwind label %bb.o, !noalias !45 ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #21, !noalias !45
  unreachable

.body.i..body_crit_edge.i:                        ; preds = %bb.n, %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 40) #23, !noalias !45
  br label %.body.i

4:                                                ; preds = %_ZNSt8functionIFvvEEC2ERKS1_.exit.i
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %bb.l
  %i.af = load <2 x ptr>, ptr %i.j, align 8, !tbaa !17, !noalias !45
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !15, !noalias !45 ; 2 uses
  store <2 x ptr> %i.af, ptr %i.x, align 8, !tbaa !17, !noalias !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.u, ptr %i.g, align 8, !tbaa !17, !alias.scope !45
  store ptr @"_ZNSt17_Function_handlerIFvvEZN4leanL14mk_thread_procERKSt8functionIS0_EmE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.ah, align 8, !tbaa !19, !alias.scope !45
  store ptr @"_ZNSt17_Function_handlerIFvvEZN4leanL14mk_thread_procERKSt8functionIS0_EmE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation", ptr %i.t, align 8, !tbaa !15, !alias.scope !45
  %.not.i.i5.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i5.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %bb.u unwind label %bb.r, !noalias !45 ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #21, !noalias !45
  unreachable

.body.i:                                          ; preds = %4, %.body.i..body_crit_edge.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %5, %4 ], [ %i.aa, %.body.i..body_crit_edge.i ]
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !15, !noalias !45 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i7.i, label %"_ZZN4leanL14mk_thread_procERKSt8functionIFvvEEmEN3$_0D2Ev.exit9.i", label %bb.s

bb.s:                                             ; preds = %.body.i
  %i.al = invoke noundef zeroext i1 %.pre.i(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %"_ZZN4leanL14mk_thread_procERKSt8functionIFvvEEmEN3$_0D2Ev.exit9.i" unwind label %bb.t, !noalias !45 ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #21, !noalias !45
  unreachable

"_ZZN4leanL14mk_thread_procERKSt8functionIFvvEEmEN3$_0D2Ev.exit9.i": ; preds = %bb.s, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !45
  br label %.body

bb.u:                                             ; preds = %bb.q, %bb.p, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !45
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = call i32 @pthread_create(ptr noundef nonnull %i.ao, ptr noundef nonnull %0, ptr noundef nonnull @_ZN4lean7lthread3imp5_mainEPv, ptr noundef nonnull %i.g) #25
  %.not6 = icmp eq i32 %i.ap, 0
  br i1 %.not6, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull @.str.5)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #22
  unreachable

bb.x:                                             ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.j, %"_ZZN4leanL14mk_thread_procERKSt8functionIFvvEEmEN3$_0D2Ev.exit9.i", %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.x ], [ %eh.lpad-body.i.i, %"_ZZN4leanL14mk_thread_procERKSt8functionIFvvEEmEN3$_0D2Ev.exit9.i" ], [ %i.o, %bb.j ], [ %i.o, %bb.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 32) #23
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aq) #25
  br label %bb.aa

bb.z:                                             ; preds = %bb.u
  ret void

bb.aa:                                            ; preds = %.body, %bb.y, %bb.d
  %.pn8 = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.as, %bb.y ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn8
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4lean7lthreadD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4lean7lthread3impESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_attr_destroy(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #25 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.d = load i8, ptr %i.c, align 8, !tbaa !43, !range !50, !noundef !51
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZNKSt14default_deleteIN4lean7lthread3impEEclEPS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !52
  %i.h = tail call i32 @pthread_detach(i64 noundef %i.g) #25 ; 0 uses
  br label %_ZNKSt14default_deleteIN4lean7lthread3impEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4lean7lthread3impEEclEPS2_.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #23
  br label %_ZNSt10unique_ptrIN4lean7lthread3impESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4lean7lthread3impESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4lean7lthread3impEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean7lthread4joinEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 1, ptr %i.b, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.d = load i64, ptr %i.c, align 8, !tbaa !52
  %i.e = tail call i32 @pthread_join(i64 noundef %i.d, ptr noundef null)
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN4lean7lthread3imp4joinEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull @.str.6)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #25
  resume { ptr, i32 } %i.g

_ZN4lean7lthread3imp4joinEv.exit:                 ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @lean_internal_set_thread_stack_size(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = add i64 %0, 131072
  store i64 %i.a, ptr @_ZN4lean7lthread19m_thread_stack_sizeE, align 8, !tbaa !39
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: mustprogress uwtable
define ptr @lean_run_main(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"class.lean::lthread", align 8     ; 7 uses
  %4 = alloca %"class.std::function", align 8     ; 12 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !17
  store i32 %1, ptr %i.b, align 4, !tbaa !53
  store ptr %2, ptr %i.c, align 8, !tbaa !54
  %i.e = tail call ptr @getenv(ptr noundef nonnull @.str) #25 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @__isoc23_strtoull(ptr noundef nonnull %i.e, ptr noundef null, i32 noundef 10) #25
  %i.g = shl i64 %i.f, 10
  %i.h = and i64 %i.g, -4096                      ; 2 uses
  %.not14 = icmp eq i64 %i.h, 0
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.h, 131072
  store i64 %i.i, ptr @_ZN4lean7lthread19m_thread_stack_sizeE, align 8, !tbaa !39
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.j = tail call ptr @getenv(ptr noundef nonnull @.str.1) #25 ; 3 uses
  %.not15 = icmp eq ptr %i.j, null
  br i1 %.not15, label %.tail.thread, label %sub_0

sub_0:                                            ; preds = %bb.d
  %i.k = load i8, ptr %i.j, align 1
  %.not21 = icmp eq i8 %i.k, 48
  br i1 %.not21, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.e, label %.tail.thread

bb.e:                                             ; preds = %.tail
  %i.o = tail call noundef ptr %0(i32 noundef %1, ptr noundef %2)
  br label %bb.q

.tail.thread:                                     ; preds = %sub_0, %.tail, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store ptr null, ptr %i.d, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24 ; 5 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.d, ptr %i.r, align 16, !tbaa !57
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !57
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !58
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !60
  store ptr %i.r, ptr %4, align 8, !tbaa !17
  store ptr @"_ZNSt17_Function_handlerIFvvEZ13lean_run_mainE3$_0E9_M_invokeERKSt9_Any_data", ptr %5, align 8, !tbaa !19
  store ptr @"_ZNSt17_Function_handlerIFvvEZ13lean_run_mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", ptr %i.p, align 8, !tbaa !15
  invoke void @_ZN4lean7lthreadC1ERKSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %.tail.thread
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !15   ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.w = load ptr, ptr %3, align 8, !tbaa !41     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store i8 1, ptr %i.x, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.z = load i64, ptr %i.y, align 8, !tbaa !52
  %i.aa = invoke i32 @pthread_join(i64 noundef %i.z, ptr noundef null)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i, label %_ZN4lean7lthread4joinEv.exit, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.ab = call ptr @__cxa_allocate_exception(i64 40) #25 ; 4 uses
  invoke void @_ZN4lean9throwableC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull @.str.6)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean9exceptionE, i64 16), ptr %i.ab, align 8, !tbaa !63
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #22
          to label %.noexc17 unwind label %bb.o

.noexc17:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ab) #25
  br label %.body

_ZN4lean7lthread4joinEv.exit:                     ; preds = %.noexc
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !17
  call void @_ZN4lean7lthreadD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.q

bb.l:                                             ; preds = %.tail.thread
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !15  ; 2 uses
  %.not.i18 = icmp eq ptr %i.af, null
  br i1 %.not.i18, label %_ZNSt14_Function_baseD2Ev.exit19, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit19 unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit19:                 ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.p

bb.o:                                             ; preds = %bb.j, %_ZNSt14_Function_baseD2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.o ], [ %i.ac, %bb.k ]
  call void @_ZN4lean7lthreadD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.p

bb.p:                                             ; preds = %.body, %_ZNSt14_Function_baseD2Ev.exit19
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ae, %_ZNSt14_Function_baseD2Ev.exit19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %_ZN4lean7lthread4joinEv.exit, %bb.e
  %.010 = phi ptr [ %i.o, %bb.e ], [ %i.ad, %_ZN4lean7lthread4joinEv.exit ]
  ret ptr %.010
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN4lean22in_thread_finalizationEv() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN4leanL12g_finalizingE)
  %i.b = load i8, ptr %i.a, align 1, !tbaa !24, !range !50, !noundef !51
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean26run_thread_finalizers_coreERSt6vectorISt4pairIPFvPvES2_ESaIS5_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN4leanL12g_finalizingE)
  store i8 1, ptr %i.a, align 1, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = and i64 %i.g, 68719476720
  %.not8 = icmp eq i64 %i.h, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = lshr exact i64 %i.g, 4
  %i.j = and i64 %i.i, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.j, %.lr.ph.preheader ], [ %i.k, %.lr.ph ]
  %i.k = add nsw i64 %indvars.iv, -1              ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32
  tail call void %i.n(ptr noundef %i.p)
  %.not.wide = icmp eq i64 %i.k, 0
  br i1 %.not.wide, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !34

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !29
  %.pre11 = load ptr, ptr %i.b, align 8, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.q = phi ptr [ %.pre11, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %i.r = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.a ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE5clearEv.exit, label %_ZSt8_DestroyIPSt4pairIPFvPvES1_ES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIPFvPvES1_ES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %i.r, ptr %i.b, align 8, !tbaa !26
  br label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE5clearEv.exit

_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE5clearEv.exit: ; preds = %._crit_edge, %_ZSt8_DestroyIPSt4pairIPFvPvES1_ES4_EvT_S6_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN4lean31delete_thread_finalizer_managerEv() local_unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean25register_thread_finalizerEPFvPvES0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL12g_finalizersE) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %i.a, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.f, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %1, ptr %i.i, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.j, ptr %i.e, align 8, !tbaa !26
  br label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12emplace_backIJRS3_RS1_EEERS4_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !29   ; 5 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775792
  br i1 %i.o, label %bb.f, label %_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.p = ashr exact i64 %i.n, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 576460752303423487)
  %i.t = select i1 %i.r, i64 576460752303423487, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 4
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #24 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n ; 2 uses
  store ptr %0, ptr %i.w, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %1, ptr %i.x, align 8, !tbaa !32
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.k, %_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !65
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !69

_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.z, %.lr.ph.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i24.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE17_M_realloc_insertIJRS3_RS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i
  %2 = load ptr, ptr %i.g, align 8, !tbaa !36
  %3 = ptrtoint ptr %2 to i64
  %4 = sub i64 %3, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %4) #23
  br label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE17_M_realloc_insertIJRS3_RS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE17_M_realloc_insertIJRS3_RS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i
  store ptr %i.v, ptr %i.d, align 8, !tbaa !29
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !36
  br label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12emplace_backIJRS3_RS1_EEERS4_DpOT_.exit

_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12emplace_backIJRS3_RS1_EEERS4_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE17_M_realloc_insertIJRS3_RS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define void @_ZN4lean30register_post_thread_finalizerEPFvPvES0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL17g_post_finalizersE) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %i.a, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.f, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %1, ptr %i.i, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.j, ptr %i.e, align 8, !tbaa !26
  br label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12emplace_backIJRS3_RS1_EEERS4_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !29   ; 5 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775792
  br i1 %i.o, label %bb.f, label %_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.p = ashr exact i64 %i.n, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 576460752303423487)
  %i.t = select i1 %i.r, i64 576460752303423487, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 4
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #24 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n ; 2 uses
  store ptr %0, ptr %i.w, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %1, ptr %i.x, align 8, !tbaa !32
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.k, %_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !70
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !69

_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.z, %.lr.ph.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i24.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE17_M_realloc_insertIJRS3_RS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i
  %2 = load ptr, ptr %i.g, align 8, !tbaa !36
  %3 = ptrtoint ptr %2 to i64
  %4 = sub i64 %3, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %4) #23
  br label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE17_M_realloc_insertIJRS3_RS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE17_M_realloc_insertIJRS3_RS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i
  store ptr %i.v, ptr %i.d, align 8, !tbaa !29
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !36
  br label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12emplace_backIJRS3_RS1_EEERS4_DpOT_.exit

_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE12emplace_backIJRS3_RS1_EEERS4_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EE17_M_realloc_insertIJRS3_RS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean21run_thread_finalizersEPSt6vectorISt4pairIPFvPvES2_ESaIS5_EE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN4leanL12g_finalizingE)
  store i8 1, ptr %i.a, align 1, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = and i64 %i.g, 68719476720
  %.not8.i = icmp eq i64 %i.h, 0
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = lshr exact i64 %i.g, 4
  %i.j = and i64 %i.i, 4294967295
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.j, %.lr.ph.preheader.i ], [ %i.k, %.lr.ph.i ]
  %i.k = add nsw i64 %indvars.iv.i, -1            ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32
  tail call void %i.n(ptr noundef %i.p), !inline_history !74
  %.not.wide.i = icmp eq i64 %i.k, 0
  br i1 %.not.wide.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !34

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !29
  %.pre11.i = load ptr, ptr %i.b, align 8, !tbaa !26
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.b
  %i.q = phi ptr [ %.pre11.i, %._crit_edge.loopexit.i ], [ %i.c, %bb.b ]
  %i.r = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.d, %bb.b ] ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i, label %_ZN4lean26run_thread_finalizers_coreERSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit, label %_ZSt8_DestroyIPSt4pairIPFvPvES1_ES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIPFvPvES1_ES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge.i
  store ptr %i.r, ptr %i.b, align 8, !tbaa !26
  br label %_ZN4lean26run_thread_finalizers_coreERSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit

_ZN4lean26run_thread_finalizers_coreERSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit: ; preds = %._crit_edge.i, %_ZSt8_DestroyIPSt4pairIPFvPvES1_ES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %.not.i.i.i3 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4lean26run_thread_finalizers_coreERSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #23
  br label %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EED2Ev.exit

_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EED2Ev.exit: ; preds = %_ZN4lean26run_thread_finalizers_coreERSt6vectorISt4pairIPFvPvES2_ESaIS5_EE.exit, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIPFvPvES1_ESaIS4_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean17initialize_threadEv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr @_ZN4leanL24g_thread_local_reset_fnsE, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4lean15finalize_threadEv() local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN4leanL24g_thread_local_reset_fnsE, align 8, !tbaa !8 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN4leanL31finalize_thread_local_reset_fnsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !75   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.b ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i.i, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #21
  unreachable

_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !76

_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !75
  br label %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt8functionIFvvEESaIS2_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #23
  br label %_ZNSt6vectorISt8functionIFvvEESaIS2_EED2Ev.exit.i

_ZNSt6vectorISt8functionIFvvEESaIS2_EED2Ev.exit.i: ; preds = %bb.e, %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #23
  br label %_ZN4leanL31finalize_thread_local_reset_fnsEv.exit

_ZN4leanL31finalize_thread_local_reset_fnsEv.exit: ; preds = %bb.a, %_ZNSt6vectorISt8functionIFvvEESaIS2_EED2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt8functionIFvvEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !75     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt8functionIFvvEESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

_ZNKSt6vectorISt8functionIFvvEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt16allocator_traitsISaISt8functionIFvvEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt8functionIFvvEESaIS2_EE12_M_check_lenEmPKc.exit
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.v = load <2 x ptr>, ptr %i.s, align 8, !tbaa !17
end_hunk_0
