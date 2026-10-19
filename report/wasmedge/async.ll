Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/async?download=true
inline.NumInlined: 730
inline.NumDeleted: 418
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6spdlog7details15periodic_workerD2Ev:bb.a
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.c) #24
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.b
  store i8 0, ptr %0, align 8, !tbaa !170
  %i.d = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #23 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e) #23
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.f) #23
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !100
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNSt6threadD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #25
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %bb.d
  ret void

bb.f:                                             ; preds = %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #25
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #8

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6spdlog7details11thread_poolC2EmmSt8functionIFvvEES4_(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2, ptr nofreeobj noundef align 8 dereferenceable(32) %3, ptr nofreeobj noundef align 8 dereferenceable(32) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %class.anon.39, align 8             ; 13 uses
  tail call void @_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEEC2Em(ptr noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = add i64 %2, -1001
  %or.cond = icmp ult i64 %i.b, -1000
  br i1 %or.cond, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6spdlog15throw_spdlog_exENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %7) #24
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %7, align 8, !tbaa !23     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.s = load i64, ptr %i.q, align 8, !tbaa !25
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn15 = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.o, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ap

._crit_edge:                                      ; preds = %"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev.exit"
  ret void

bb.g:                                             ; preds = %.lr.ph, %"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev.exit"
  %.069 = phi i64 [ 0, %.lr.ph ], [ %i.do, %"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev.exit" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %0, ptr %9, align 8, !tbaa !107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !108  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvvEEC2ERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.w = load <2 x ptr>, ptr %i.f, align 8, !tbaa !29
  store <2 x ptr> %i.w, ptr %i.d, align 8, !tbaa !29
  br label %_ZNSt8functionIFvvEEC2ERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !108  ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %.body unwind label %bb.l      ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #25
  unreachable

_ZNSt8functionIFvvEEC2ERKS1_.exit:                ; preds = %bb.i, %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !108 ; 2 uses
  %.not.i.i.not.i18 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.not.i18, label %_ZNSt8functionIFvvEEC2ERKS1_.exit23, label %bb.m

bb.m:                                             ; preds = %_ZNSt8functionIFvvEEC2ERKS1_.exit
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2)
          to label %bb.n unwind label %bb.o       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !109 ; 2 uses
  store ptr %i.ae, ptr %i.i, align 8, !tbaa !109
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !108 ; 2 uses
  store ptr %i.af, ptr %i.h, align 8, !tbaa !108
  br label %_ZNSt8functionIFvvEEC2ERKS1_.exit23

bb.o:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !108 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i19, label %.body21, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %.body21 unwind label %bb.q    ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #25
  unreachable

_ZNSt8functionIFvvEEC2ERKS1_.exit23:              ; preds = %bb.n, %_ZNSt8functionIFvvEEC2ERKS1_.exit
  %i.al = phi ptr [ %i.af, %bb.n ], [ null, %_ZNSt8functionIFvvEEC2ERKS1_.exit ] ; 4 uses
  %i.am = phi ptr [ %i.ae, %bb.n ], [ null, %_ZNSt8functionIFvvEEC2ERKS1_.exit ] ; 2 uses
  %i.an = load ptr, ptr %i.l, align 8, !tbaa !112 ; 6 uses
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i, label %bb.w, label %bb.r

bb.r:                                             ; preds = %_ZNSt8functionIFvvEEC2ERKS1_.exit23
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.an, align 8, !tbaa !178
  %i.ap = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26
          to label %.noexc unwind label %.loopexit.split-lp ; 9 uses

.noexc:                                           ; preds = %bb.r
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEE", i64 16), ptr %i.ap, align 8, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %9, align 8, !tbaa !107
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !107
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i8 0, i64 24, i1 false)
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !109
  store ptr %i.au, ptr %i.at, align 8, !tbaa !109
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !108 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 16, i1 false), !tbaa.struct !179
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s, %.noexc
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i8 0, i64 24, i1 false)
  store ptr %i.am, ptr %i.ay, align 8, !tbaa !109
  %.not.i.i.not.i4.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.not.i4.i.i.i.i.i.i.i.i, label %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i", label %bb.t

bb.t:                                             ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 16, i1 false), !tbaa.struct !179
  store ptr %i.al, ptr %i.az, align 8, !tbaa !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i"

"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i": ; preds = %bb.t, %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i
  store ptr %i.ap, ptr %6, align 8, !tbaa !181
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i"
  %i.ba = load ptr, ptr %6, align 8, !tbaa !181   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %"_ZNSt6threadC2IZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES6_E3$_0JEvEEOT_DpOT0_.exit.i", label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i: ; preds = %bb.u
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) #23, !inline_history !171
  br label %"_ZNSt6threadC2IZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES6_E3$_0JEvEEOT_DpOT0_.exit.i"

bb.v:                                             ; preds = %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i"
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %6, align 8, !tbaa !181   ; 3 uses
  %.not.i5.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i5.i.i, label %.body24, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i: ; preds = %bb.v
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf) #23, !inline_history !171
  br label %.body24

"_ZNSt6threadC2IZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES6_E3$_0JEvEEOT_DpOT0_.exit.i": ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bj = load ptr, ptr %i.l, align 8, !tbaa !112
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %i.l, align 8, !tbaa !112
  br label %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEERS0_DpOT_.exit"

bb.w:                                             ; preds = %_ZNSt8functionIFvvEEC2ERKS1_.exit23
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !114 ; 5 uses
  %i.bm = ptrtoint ptr %i.an to i64
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.x, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #24
          to label %.noexc26 unwind label %.loopexit.split-lp

.noexc26:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i3.i = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i3.i)
  %i.bv = shl nuw nsw i64 %i.bu, 3                ; 2 uses
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #26
          to label %.noexc27 unwind label %.loopexit.split-lp ; 6 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 0, ptr %i.bx, align 8, !tbaa !178
  %i.by = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26
          to label %.noexc.i.i unwind label %bb.ae ; 9 uses

.noexc.i.i:                                       ; preds = %.noexc27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEE", i64 16), ptr %i.by, align 8, !tbaa !32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %9, align 8, !tbaa !107
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !107
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i8 0, i64 24, i1 false)
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !109
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !109
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !108 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.noexc.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 16, i1 false), !tbaa.struct !179
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %.noexc.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 48 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i8 0, i64 24, i1 false)
  store ptr %i.am, ptr %i.ch, align 8, !tbaa !109
  %.not.i.i.not.i4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.not.i4.i.i.i.i.i.i.i.i.i, label %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i.i", label %bb.z

bb.z:                                             ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 16, i1 false), !tbaa.struct !179
  store ptr %i.al, ptr %i.ci, align 8, !tbaa !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i.i"

"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i.i": ; preds = %bb.z, %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.by, ptr %5, align 8, !tbaa !181
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i.i"
  %i.cj = load ptr, ptr %5, align 8, !tbaa !181   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i, label %bb.ac, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i: ; preds = %bb.aa
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.cj) #23, !inline_history !172
  br label %bb.ac

bb.ab:                                            ; preds = %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i.i"
  %i.cn = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.co = load ptr, ptr %5, align 8, !tbaa !181   ; 3 uses
  %.not.i5.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i5.i.i.i, label %bb.ag, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i: ; preds = %bb.ab
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.co) #23, !inline_history !172
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not10.i.i.i.i.i = icmp eq ptr %i.bl, %i.an
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ac, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i ], [ %i.bw, %bb.ac ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i ], [ %i.bl, %bb.ac ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.cs = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !183
  store i64 %i.cs, ptr %.012.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !182
  store i64 0, ptr %.0911.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !183
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ct, %i.an
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !176

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.ac
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bw, %bb.ac ], [ %i.cu, %.lr.ph.i.i.i.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i33.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i33.i.i, label %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i", label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i
  %i.cw = load ptr, ptr %i.m, align 8, !tbaa !113
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = sub i64 %i.cx, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.cy) #22
  br label %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i"

bb.ae:                                            ; preds = %.noexc27
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body24 unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i, %bb.ab
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cz, %bb.ae ], [ %i.cn, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i ], [ %i.cn, %bb.ab ]
  %i.db = extractvalue { ptr, i32 } %eh.lpad-body.i.i, 0
  %i.dc = call ptr @__cxa_begin_catch(ptr %i.db) #23 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.bv) #22
  invoke void @__cxa_rethrow() #24
          to label %bb.ai unwind label %bb.af

bb.ah:                                            ; preds = %bb.af
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #25
  unreachable

bb.ai:                                            ; preds = %bb.ag
  unreachable

"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i": ; preds = %bb.ad, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i
  store ptr %i.bw, ptr %i.a, align 8, !tbaa !114
  store ptr %i.cv, ptr %i.l, align 8, !tbaa !112
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.df, ptr %i.m, align 8, !tbaa !113
  br label %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEERS0_DpOT_.exit"

"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEERS0_DpOT_.exit": ; preds = %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i", %"_ZNSt6threadC2IZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES6_E3$_0JEvEEOT_DpOT0_.exit.i"
  %i.dg = load ptr, ptr %i.h, align 8, !tbaa !108 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i28, label %_ZNSt14_Function_baseD2Ev.exit.i29, label %bb.aj

bb.aj:                                            ; preds = %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEERS0_DpOT_.exit"
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i29 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i29:               ; preds = %bb.aj, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEERS0_DpOT_.exit"
  %i.dk = load ptr, ptr %i.d, align 8, !tbaa !108 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.dk, null
  br i1 %.not.i1.i, label %"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev.exit", label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i29
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev.exit" unwind label %bb.am ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #25
  unreachable

"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev.exit": ; preds = %_ZNSt14_Function_baseD2Ev.exit.i29, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.do = add nuw i64 %.069, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.do, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !177

.body21:                                          ; preds = %bb.o, %bb.p
  %i.dp = load ptr, ptr %i.d, align 8, !tbaa !108 ; 2 uses
  %.not.i30 = icmp eq ptr %i.dp, null
  br i1 %.not.i30, label %.body, label %bb.an

bb.an:                                            ; preds = %.body21
  %i.dq = invoke noundef zeroext i1 %i.dp(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %.body unwind label %bb.ao     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #25
  unreachable

.loopexit.split-lp:                               ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %bb.r, %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body24

.body24:                                          ; preds = %.loopexit.split-lp, %bb.v, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i, %bb.af
  %eh.lpad-body25 = phi { ptr, i32 } [ %i.da, %bb.af ], [ %i.be, %bb.v ], [ %i.be, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #23
  br label %.body

.body:                                            ; preds = %bb.an, %.body21, %bb.k, %bb.j, %.body24
  %.pn = phi { ptr, i32 } [ %eh.lpad-body25, %.body24 ], [ %i.x, %bb.j ], [ %i.ag, %bb.an ], [ %i.x, %bb.k ], [ %i.ag, %.body21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ap

bb.ap:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %.body ]
  call void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #23
  call void @_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEED2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) #23
  resume { ptr, i32 } %.pn15.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEEC2Em(ptr noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = add i64 %1, 1                            ; 6 uses
  store i64 %i.d, ptr %i.c, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.g = icmp ugt i64 %i.d, 22606304011898960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br i1 %i.g, label %.noexc.i, label %_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #24
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %_ZNSt12_Vector_baseIN6spdlog7details9async_msgESaIS2_EEC2EmRKS3_.exit.i.i

_ZNSt12_Vector_baseIN6spdlog7details9async_msgESaIS2_EEC2EmRKS3_.exit.i.i: ; preds = %_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.h = mul nuw nsw i64 %i.d, 408
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #26
          to label %.noexc3 unwind label %bb.b    ; 13 uses

.noexc3:                                          ; preds = %_ZNSt12_Vector_baseIN6spdlog7details9async_msgESaIS2_EEC2EmRKS3_.exit.i.i
  store ptr %i.i, ptr %i.f, align 8, !tbaa !122
  %i.j = getelementptr inbounds nuw [408 x i8], ptr %i.i, i64 %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.j, ptr %i.k, align 8, !tbaa !123
  %i.l = and i64 %1, 1
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc3
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.i, i8 0, i64 392, i1 false)
  store i32 6, ptr %i.m, align 8, !tbaa !101
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.n, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm, ptr %i.r, align 8, !tbaa !102
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  store ptr %i.s, ptr %i.p, align 8, !tbaa !98
  store i64 250, ptr %i.q, align 8, !tbaa !99
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 408 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc3
  %.lcssa.unr = phi ptr [ poison, %.noexc3 ], [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.i, %.noexc3 ], [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.d, %.noexc3 ], [ %1, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.v = icmp eq i64 %1, 0
  br i1 %i.v, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 19 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %.013.i.i.i.i.i.i, i8 0, i64 392, i1 false)
  store i32 6, ptr %i.w, align 8, !tbaa !101
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.x, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm, ptr %i.ab, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !98
  store i64 250, ptr %i.aa, align 8, !tbaa !99
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 408
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.ae, i8 0, i64 392, i1 false)
  store i32 6, ptr %i.af, align 8, !tbaa !101
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 432
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 480
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.ag, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 504
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 520
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 528
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm, ptr %i.ak, align 8, !tbaa !102
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 536
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !98
  store i64 250, ptr %i.aj, align 8, !tbaa !99
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 800
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.an = add nsw i64 %.01012.i.i.i.i.i.i, -2     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 816 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.1, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !184

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.ao, %.lr.ph.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ap, align 8, !tbaa !124
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.aq, align 8, !tbaa !186
  ret void

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIN6spdlog7details9async_msgESaIS2_EEC2EmRKS3_.exit.i.i, %.noexc.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.b) #23
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #23
  resume { ptr, i32 } %i.ar
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108  ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !114    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i

bb.b:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i, !llvm.loop !6

_ZSt8_DestroyISt6threadEvPT_.exit.i.i:            ; preds = %bb.a, %bb.b
  %.05.i.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
end_hunk_0
