Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpp-httplib/original/httplib?download=true
inline.NumInlined: 21623
inline.NumDeleted: 6597
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN7httplib6Server15listen_internalEv:bb.a
  %i.dd = invoke noundef zeroext i1 %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr nofree noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ak unwind label %bb.av

bb.ak:                                            ; preds = %bb.aj
  %i.de = load ptr, ptr %i.al, align 8, !tbaa !159 ; 2 uses
  %.not.i44 = icmp eq ptr %i.de, null
  br i1 %.not.i44, label %_ZNSt14_Function_baseD2Ev.exit45, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.df = invoke noundef zeroext i1 %i.de(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit45 unwind label %bb.am ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit45:                 ; preds = %bb.ak, %bb.al
  br i1 %i.dd, label %_ZNKSt8functionIFPN7httplib9TaskQueueEvEEclEv.exit.backedge, label %bb.an

bb.an:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i32 18, ptr %i.e, align 4, !tbaa !169
  %i.di = load ptr, ptr %i.an, align 8, !tbaa !159
  %.not.i.i.not.i46 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.not.i46, label %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit54, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dj = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ao) #23 ; 2 uses
  %.not.i.i4.i47 = icmp eq i32 %i.dj, 0
  br i1 %.not.i.i4.i47, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i48, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.dj) #47
          to label %.noexc51 unwind label %bb.ay

.noexc51:                                         ; preds = %bb.ap
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i48:      ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !1601
  %i.dk = load ptr, ptr %i.an, align 8, !tbaa !159
  %.not.i.i5.i49 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i5.i49, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i48
  invoke void @_ZSt25__throw_bad_function_callv() #47
          to label %.noexc.i50 unwind label %.loopexit.split-lp83

.noexc.i50:                                       ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i48
  %i.dl = load ptr, ptr %i.ap, align 8, !tbaa !1603
  invoke void %i.dl(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.as unwind label %.loopexit82, !inline_history !1604

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dm = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ao) #23 ; 0 uses
  br label %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit54

.loopexit82:                                      ; preds = %bb.ar
  %lpad.loopexit84 = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp83:                             ; preds = %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %.loopexit.split-lp83, %.loopexit82
  %lpad.phi85 = phi { ptr, i32 } [ %lpad.loopexit84, %.loopexit82 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp83 ]
  %i.dn = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ao) #23 ; 0 uses
  br label %.body52

_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit54: ; preds = %bb.as, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.do = call noundef i32 @shutdown(i32 noundef %i.bw, i32 noundef 2) #23 ; 0 uses
  %i.dp = invoke i32 @close(i32 noundef %i.bw)
          to label %_ZNKSt8functionIFPN7httplib9TaskQueueEvEEclEv.exit.backedge unwind label %bb.au ; 0 uses

bb.au:                                            ; preds = %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit54
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #48
  unreachable

bb.av:                                            ; preds = %bb.aj
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %i.al, align 8, !tbaa !159 ; 2 uses
  %.not.i56 = icmp eq ptr %i.dt, null
  br i1 %.not.i56, label %_ZNKSt14default_deleteIN7httplib9TaskQueueEEclEPS1_.exit.i62, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.du = invoke noundef zeroext i1 %i.dt(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNKSt14default_deleteIN7httplib9TaskQueueEEclEPS1_.exit.i62 unwind label %bb.ax ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #48
  unreachable

bb.ay:                                            ; preds = %bb.ap
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body52

.body52:                                          ; preds = %bb.at, %bb.ay
  %eh.lpad-body53 = phi { ptr, i32 } [ %i.dx, %bb.ay ], [ %lpad.phi85, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %_ZNKSt14default_deleteIN7httplib9TaskQueueEEclEPS1_.exit.i62

_ZNKSt8functionIFPN7httplib9TaskQueueEvEEclEv.exit.backedge: ; preds = %bb.u, %bb.q, %bb.q, %_ZNSt14_Function_baseD2Ev.exit45, %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit54, %bb.n
  %i.dy = load atomic i32, ptr %i.i seq_cst, align 8
  %.not = icmp eq i32 %i.dy, -1
  br i1 %.not, label %_ZN7httplib6detail12close_socketEi.exit55.thread, label %bb.h, !llvm.loop !1612

_ZN7httplib6detail12close_socketEi.exit55.thread: ; preds = %_ZNKSt8functionIFPN7httplib9TaskQueueEvEEclEv.exit.backedge, %_ZNKSt8functionIFPN7httplib9TaskQueueEvEEclEv.exit.preheader, %bb.x, %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit
  %.324 = phi i1 [ true, %bb.x ], [ false, %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit ], [ true, %_ZNKSt8functionIFPN7httplib9TaskQueueEvEEclEv.exit.preheader ], [ true, %_ZNKSt8functionIFPN7httplib9TaskQueueEvEEclEv.exit.backedge ] ; 2 uses
  %i.dz = load ptr, ptr %i.ab, align 8, !tbaa !81
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  invoke void %i.eb(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZNSt10unique_ptrIN7httplib9TaskQueueESt14default_deleteIS1_EED2Ev.exit unwind label %bb.bf

_ZNSt10unique_ptrIN7httplib9TaskQueueESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN7httplib6detail12close_socketEi.exit55.thread
  %i.ec = load ptr, ptr %i.ab, align 8, !tbaa !81
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #23, !inline_history !1615
  %i.ef = xor i1 %.324, true
  %i.eg = zext i1 %i.ef to i8
  store atomic i8 %i.eg, ptr %i.f seq_cst, align 1
  %i.eh = load i8, ptr %i.p, align 8, !tbaa !410, !range !79, !noundef !80
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.az, label %_ZNKSt8functionIFvvEEclEv.exit.i

bb.az:                                            ; preds = %_ZNSt10unique_ptrIN7httplib9TaskQueueESt14default_deleteIS1_EED2Ev.exit
  %i.ej = load ptr, ptr %i.o, align 8, !tbaa !159
  %.not.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt25__throw_bad_function_callv() #47
          to label %.noexc.i60 unwind label %bb.be

.noexc.i60:                                       ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.ek = load ptr, ptr %i.n, align 8, !tbaa !179
  invoke void %i.ek(ptr noundef nonnull align 8 dereferenceable(33) %6)
          to label %_ZNKSt8functionIFvvEEclEv.exit.i unwind label %bb.be, !inline_history !180

_ZNKSt8functionIFvvEEclEv.exit.i:                 ; preds = %bb.bb, %_ZNSt10unique_ptrIN7httplib9TaskQueueESt14default_deleteIS1_EED2Ev.exit
  %i.el = load ptr, ptr %i.o, align 8, !tbaa !159 ; 2 uses
  %.not.i.i59 = icmp eq ptr %i.el, null
  br i1 %.not.i.i59, label %_ZN7httplib6detail10scope_exitD2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZNKSt8functionIFvvEEclEv.exit.i
  %i.em = invoke noundef zeroext i1 %i.el(ptr noundef nonnull align 8 dereferenceable(33) %6, ptr noundef nonnull align 8 dereferenceable(33) %6, i32 noundef 3)
          to label %_ZN7httplib6detail10scope_exitD2Ev.exit unwind label %bb.bd ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #48
  unreachable

bb.be:                                            ; preds = %bb.bb, %bb.ba
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #48
  unreachable

_ZN7httplib6detail10scope_exitD2Ev.exit:          ; preds = %_ZNKSt8functionIFvvEEclEv.exit.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bg

bb.bf:                                            ; preds = %_ZN7httplib6detail12close_socketEi.exit55.thread
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN7httplib9TaskQueueEEclEPS1_.exit.i62

_ZNSt14_Function_baseD2Ev.exit57:                 ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.v, %bb.w, %.body
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.v ], [ %eh.lpad-body, %.body ], [ %i.cf, %bb.w ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit78, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp79, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i61 = icmp eq ptr %i.ab, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrIN7httplib9TaskQueueESt14default_deleteIS1_EED2Ev.exit63, label %_ZNKSt14default_deleteIN7httplib9TaskQueueEEclEPS1_.exit.i62

_ZNKSt14default_deleteIN7httplib9TaskQueueEEclEPS1_.exit.i62: ; preds = %bb.aw, %bb.av, %bb.bf, %.body52, %_ZNSt14_Function_baseD2Ev.exit57
  %.pn3076 = phi { ptr, i32 } [ %.pn30, %_ZNSt14_Function_baseD2Ev.exit57 ], [ %i.er, %bb.bf ], [ %eh.lpad-body53, %.body52 ], [ %i.ds, %bb.av ], [ %i.ds, %bb.aw ]
  %i.es = load ptr, ptr %i.ab, align 8, !tbaa !81
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #23, !inline_history !1615
  br label %_ZNSt10unique_ptrIN7httplib9TaskQueueESt14default_deleteIS1_EED2Ev.exit63

_ZNSt10unique_ptrIN7httplib9TaskQueueESt14default_deleteIS1_EED2Ev.exit63: ; preds = %bb.o, %_ZNSt14_Function_baseD2Ev.exit57, %_ZNKSt14default_deleteIN7httplib9TaskQueueEEclEPS1_.exit.i62, %bb.e
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.bu, %bb.o ], [ %.pn30, %_ZNSt14_Function_baseD2Ev.exit57 ], [ %.pn3076, %_ZNKSt14default_deleteIN7httplib9TaskQueueEEclEPS1_.exit.i62 ]
  call void @_ZN7httplib6detail10scope_exitD2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %.pn30.pn.pn

bb.bg:                                            ; preds = %_ZN7httplib6detail10scope_exitD2Ev.exit, %bb.c
  %.025 = phi i1 [ false, %bb.c ], [ %.324, %_ZN7httplib6detail10scope_exitD2Ev.exit ]
  ret i1 %.025
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib6Server6listenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr noundef nonnull align 8 dereferenceable(1016) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN7httplib6Server13bind_internalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr noundef nonnull align 8 dereferenceable(1016) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %_ZN7httplib6Server12bind_to_portERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii.exit.thread, label %_ZN7httplib6Server12bind_to_portERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii.exit

_ZN7httplib6Server12bind_to_portERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii.exit.thread: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 157
  store atomic i8 1, ptr %i.c seq_cst, align 1
  br label %bb.c

_ZN7httplib6Server12bind_to_portERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii.exit: ; preds = %bb.a
  %i.d = icmp sgt i32 %i.a, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN7httplib6Server12bind_to_portERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii.exit
  %i.e = tail call noundef zeroext i1 @_ZN7httplib6Server15listen_internalEv(ptr noundef nonnull align 8 dereferenceable(1016) %0)
  br label %bb.c

bb.c:                                             ; preds = %_ZN7httplib6Server12bind_to_portERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii.exit.thread, %bb.b, %_ZN7httplib6Server12bind_to_portERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii.exit
  %i.f = phi i1 [ false, %_ZN7httplib6Server12bind_to_portERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii.exit ], [ %i.e, %bb.b ], [ false, %_ZN7httplib6Server12bind_to_portERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii.exit.thread ]
  ret i1 %i.f
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef zeroext i1 @_ZNK7httplib6Server10is_runningEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1016) %0) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.b = load atomic i8, ptr %i.a seq_cst, align 4, !range !79, !noundef !80
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7httplib6Server16wait_until_readyEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1016) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.b = load atomic i8, ptr %i.a seq_cst, align 4, !range !79, !noundef !80
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 157
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit
  %i.f = load atomic i8, ptr %i.d seq_cst, align 1, !range !79, !noundef !80
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store i64 0, ptr %1, align 8, !tbaa !172
  store i64 1000000, ptr %i.e, align 8, !tbaa !174
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.h = call i32 @nanosleep(ptr noundef nonnull %1, ptr noundef nonnull %1)
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.e, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @__errno_location() #49
  %i.k = load i32, ptr %i.j, align 4, !tbaa !175
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %bb.d, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, !llvm.loop !176

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.m = load atomic i8, ptr %i.a seq_cst, align 4, !range !79, !noundef !80
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.critedge, label %bb.b, !llvm.loop !1616

.critedge:                                        ; preds = %bb.b, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7httplib6Server4stopEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1016) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = atomicrmw xchg ptr %i.a, i32 -1 seq_cst, align 4 ; 3 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %_ZN7httplib6detail12close_socketEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @shutdown(i32 noundef %i.b, i32 noundef 2) #23 ; 0 uses
  %i.d = invoke i32 @close(i32 noundef %i.b)
          to label %_ZN7httplib6detail12close_socketEi.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #48
  unreachable

_ZN7httplib6detail12close_socketEi.exit:          ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 157
  store atomic i8 0, ptr %i.g seq_cst, align 1
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN7httplib6Server12decommissionEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1016) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 157
  store atomic i8 1, ptr %i.a seq_cst, align 1
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7httplib6Server18parse_request_lineEPKcRNS_7RequestE(ptr noundef nonnull align 8 dereferenceable(1016) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(776) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.148", align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::function.141", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::function.141", align 8 ; 8 uses
  %6 = alloca [10 x %"class.std::__cxx11::basic_string"], align 8 ; 56 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.std::allocator", align 1    ; 4 uses
  %9 = alloca %"class.std::allocator", align 1    ; 4 uses
  %10 = alloca %"class.std::allocator", align 1   ; 4 uses
  %11 = alloca %"class.std::allocator", align 1   ; 4 uses
  %12 = alloca %"class.std::allocator", align 1   ; 4 uses
  %13 = alloca %"class.std::allocator", align 1   ; 4 uses
  %14 = alloca %"class.std::allocator", align 1   ; 4 uses
  %15 = alloca %"class.std::allocator", align 1   ; 4 uses
  %16 = alloca %"class.std::allocator", align 1   ; 4 uses
  %17 = alloca %"struct.std::less", align 1       ; 4 uses
  %18 = alloca %"class.std::allocator.106", align 1 ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %19 = alloca %"class.std::function.148", align 8 ; 8 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #51 ; 2 uses
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %_ZNSt14_Function_baseD2Ev.exit97, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 %i.e       ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -2       ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !65
  %.not67 = icmp eq i8 %i.i, 13
  br i1 %.not67, label %bb.c, label %_ZNSt14_Function_baseD2Ev.exit97

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.g, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !65
  %.not68 = icmp eq i8 %i.k, 10
  br i1 %.not68, label %_ZNSt8functionIFvPKcS1_EEC2EOS3_.exit.i, label %_ZNSt14_Function_baseD2Ev.exit97

_ZNSt8functionIFvPKcS1_EEC2EOS3_.exit.i:          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !467
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1601
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @"_ZNSt17_Function_handlerIFvPKcS1_EZNK7httplib6Server18parse_request_lineES1_RNS3_7RequestEE3$_0E9_M_invokeERKSt9_Any_dataOS1_SC_", ptr %i.m, align 8, !tbaa !341
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !160
  store ptr @"_ZNSt17_Function_handlerIFvPKcS1_EZNK7httplib6Server18parse_request_lineES1_RNS3_7RequestEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.n, align 8, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  invoke void @_ZN7httplib6detail5splitEPKcS2_cmSt8functionIFvS2_S2_EE(ptr noundef nonnull %1, ptr noundef nonnull readnone %i.h, i8 noundef signext 32, i64 noundef -1, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt8functionIFvPKcS1_EEC2EOS3_.exit.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !159  ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %bb.j unwind label %bb.f       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
end_hunk_0
