Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/read3?download=true
inline.NumInlined: 77476
inline.NumDeleted: 23382
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_typeD2Ev:bb.a
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN5boost4asio6detail14io_object_implINS1_22deadline_timer_serviceINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEEEENS0_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.u) #35
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1702 ; 4 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZN5boost5beast9websocket6detail9impl_baseILb1EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 5968
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1549 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost5beast4zlib6detail14inflate_streamD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #38
  br label %_ZN5boost5beast4zlib6detail14inflate_streamD2Ev.exit.i.i.i.i

_ZN5boost5beast4zlib6detail14inflate_streamD2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1549 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5boost5beast9websocket6detail9impl_baseILb1EE8pmd_typeEEclEPS6_.exit.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i: ; preds = %_ZN5boost5beast4zlib6detail14inflate_streamD2Ev.exit.i.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #38
  br label %_ZNKSt14default_deleteIN5boost5beast9websocket6detail9impl_baseILb1EE8pmd_typeEEclEPS6_.exit.i.i

_ZNKSt14default_deleteIN5boost5beast9websocket6detail9impl_baseILb1EE8pmd_typeEEclEPS6_.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i, %_ZN5boost5beast4zlib6detail14inflate_streamD2Ev.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 13048) #38
  br label %_ZN5boost5beast9websocket6detail9impl_baseILb1EED2Ev.exit

_ZN5boost5beast9websocket6detail9impl_baseILb1EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt14default_deleteIN5boost5beast9websocket6detail9impl_baseILb1EE8pmd_typeEEclEPS6_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1463 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZN5boost5beast9websocket6detail7service9impl_typeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost5beast9websocket6detail9impl_baseILb1EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ae = atomicrmw add ptr %i.ad, i32 -1 acq_rel, align 4
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.f, label %_ZN5boost5beast9websocket6detail7service9impl_typeD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !1313
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #35, !inline_history !24
  br label %_ZN5boost5beast9websocket6detail7service9impl_typeD2Ev.exit

_ZN5boost5beast9websocket6detail7service9impl_typeD2Ev.exit: ; preds = %_ZN5boost5beast9websocket6detail9impl_baseILb1EED2Ev.exit, %bb.e, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE5closeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %_ZN5boost5beast9websocket6detail7service9impl_typeD2Ev.exit
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1441
  tail call void @_ZN5boost5beast4test6detail12stream_state6removeEv(ptr noundef nonnull align 8 dereferenceable(280) %i.ak) #35
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1463 ; 4 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i2, label %_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = atomicrmw add ptr %i.an, i32 -1 acq_rel, align 4
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.i, label %_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !1313
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #35, !inline_history !11581
  br label %_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit.i.i

_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1481 ; 7 uses
  %.not.i.i1.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i1.i.i, label %_ZN5boost6empty_11empty_valueINS_5beast4test12basic_streamINS_4asio15any_io_executorEEELj0ELb0EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = atomicrmw add ptr %i.av, i32 -1 acq_rel, align 4
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %bb.k, label %_ZN5boost6empty_11empty_valueINS_5beast4test12basic_streamINS_4asio15any_io_executorEEELj0ELb0EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !1313
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #35, !inline_history !11582
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.bc = atomicrmw add ptr %i.bb, i32 -1 acq_rel, align 4
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %bb.l, label %_ZN5boost6empty_11empty_valueINS_5beast4test12basic_streamINS_4asio15any_io_executorEEELj0ELb0EED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !1313
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #35, !inline_history !11583
  br label %_ZN5boost6empty_11empty_valueINS_5beast4test12basic_streamINS_4asio15any_io_executorEEELj0ELb0EED2Ev.exit

bb.m:                                             ; preds = %_ZN5boost5beast9websocket6detail7service9impl_typeD2Ev.exit
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #36
  unreachable

_ZN5boost6empty_11empty_valueINS_5beast4test12basic_streamINS_4asio15any_io_executorEEELj0ELb0EED2Ev.exit: ; preds = %_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit.i.i, %bb.j, %bb.k, %bb.l
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_typeD0Ev(ptr noundef nonnull align 8 dereferenceable(2488) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_typeD2Ev(ptr noundef nonnull align 8 dead_on_return(2488) dereferenceable(2488) %0) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2488) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type8shutdownEv(ptr noundef nonnull align 8 dereferenceable(2488) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2352
  %i.b = tail call noundef zeroext i1 @_ZN5boost5beast13saved_handler5resetEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #35 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.d = tail call noundef zeroext i1 @_ZN5boost5beast13saved_handler5resetEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #35 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2368
  %i.f = tail call noundef zeroext i1 @_ZN5boost5beast13saved_handler5resetEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #35 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2376
  %i.h = tail call noundef zeroext i1 @_ZN5boost5beast13saved_handler5resetEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #35 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2384
  %i.j = tail call noundef zeroext i1 @_ZN5boost5beast13saved_handler5resetEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #35 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2392
  %i.l = tail call noundef zeroext i1 @_ZN5boost5beast13saved_handler5resetEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #35 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.n = tail call noundef zeroext i1 @_ZN5boost5beast13saved_handler5resetEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #35 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt4lockISt5mutexS0_JEEvRT_RT0_DpRT1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [2 x %"class.std::unique_lock"], align 16 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  store ptr %0, ptr %2, align 16, !tbaa !1872
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !1873
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.b, align 16, !tbaa !1872
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 0, ptr %i.c, align 8, !tbaa !1873
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.030 = phi i32 [ 0, %bb.a ], [ %.272, %bb.j ]  ; 4 uses
  %i.d = zext nneg i32 %.030 to i64
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !1872 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %split63.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #35 ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit, label %split63.invoke

_ZNSt11unique_lockISt5mutexE4lockEv.exit:         ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 1, ptr %i.h, align 8, !tbaa !1873
  %i.i = xor i32 %.030, 1                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !1872 ; 2 uses
  %.not.i38 = icmp eq ptr %i.l, null
  br i1 %.not.i38, label %split63.invoke, label %bb.d

bb.d:                                             ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !1873, !range !1351, !noundef !1352
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %split63.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #35
  %.not.i.i39 = icmp eq i32 %i.p, 0               ; 2 uses
  %i.q = zext i1 %.not.i.i39 to i8
  store i8 %i.q, ptr %i.m, align 8, !tbaa !1873
  br i1 %.not.i.i39, label %bb.j, label %.preheader47

.preheader47:                                     ; preds = %bb.e
  %i.r = zext nneg i32 %.030 to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %.promoted = load i8, ptr %i.t, align 8, !tbaa !1873
  %i.u = trunc nuw i8 %.promoted to i1
  br i1 %i.u, label %bb.f, label %split63

split63:                                          ; preds = %.preheader47
  store i8 0, ptr %i.t, align 8
  br label %split63.invoke

split63.invoke:                                   ; preds = %bb.d, %_ZNSt11unique_lockISt5mutexE4lockEv.exit, %bb.c, %bb.b, %split63
  %i.v = phi i32 [ 1, %split63 ], [ 1, %_ZNSt11unique_lockISt5mutexE4lockEv.exit ], [ %i.g, %bb.c ], [ 1, %bb.b ], [ 35, %bb.d ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.v) #37
          to label %split63.cont unwind label %bb.h

split63.cont:                                     ; preds = %split63.invoke
  unreachable

bb.f:                                             ; preds = %.preheader47
  %i.w = load ptr, ptr %i.s, align 16, !tbaa !1872 ; 2 uses
  %.not.i42 = icmp eq ptr %i.w, null
  br i1 %.not.i42, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #35 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %split63.invoke
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !1873, !range !1351, !noundef !1352
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.k, label %_ZNSt11unique_lockISt5mutexED2Ev.exit46

bb.i:                                             ; preds = %bb.f, %bb.g
  %.lcssa54 = phi i8 [ 1, %bb.f ], [ 0, %bb.g ]
  store i8 %.lcssa54, ptr %i.t, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i
  %.272 = phi i32 [ %i.i, %bb.i ], [ %.030, %bb.e ] ; 2 uses
  %i.ac = zext nneg i32 %.272 to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !1873, !range !1351, !noundef !1352
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.1, label %bb.b, !llvm.loop !11584

_ZNSt11unique_lockISt5mutexED2Ev.exit.1:          ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret void

bb.k:                                             ; preds = %bb.h
  %i.ah = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #35 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit46

_ZNSt11unique_lockISt5mutexED2Ev.exit46:          ; preds = %bb.h, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !1873, !range !1351, !noundef !1352
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.l, label %_ZNSt11unique_lockISt5mutexED2Ev.exit46.1

bb.l:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit46
  %i.al = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #35 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit46.1

_ZNSt11unique_lockISt5mutexED2Ev.exit46.1:        ; preds = %bb.l, %_ZNSt11unique_lockISt5mutexED2Ev.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %i.y
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE12do_handshakeIPFvRNS0_4http7messageILb1ENSA_10empty_bodyENSA_12basic_fieldsISaIcEEEEEEEEvPNSB_ILb0ENSA_17basic_string_bodyIcSt11char_traitsIcESE_EESF_EENS_4core17basic_string_viewIcEESS_RKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %9 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %10 = alloca %"struct.boost::intrusive::detail::key_nodeptr_comp", align 8 ; 4 uses
  %11 = alloca %"class.boost::core::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.boost::beast::http::ext_list", align 8 ; 5 uses
  %13 = alloca %"class.boost::static_strings::basic_static_string.925", align 1 ; 6 uses
  %14 = alloca %"class.boost::beast::http::message", align 8 ; 14 uses
  %15 = alloca %"class.boost::core::basic_string_view", align 8 ; 3 uses
  %16 = alloca %"class.boost::beast::http::parser.926", align 8 ; 34 uses
  %17 = alloca %"class.boost::beast::basic_flat_buffer", align 8 ; 14 uses
  %18 = alloca %"class.boost::beast::detail::buffers_pair", align 8 ; 6 uses
  %19 = alloca %"class.boost::beast::detail::buffers_pair", align 8 ; 7 uses
  %.sroa.0 = alloca %"struct.boost::system::error_code::data", align 8 ; 4 uses
  %20 = alloca %"class.boost::beast::http::message.176", align 16 ; 22 uses
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 500, ptr %i.a, align 4, !tbaa !1853
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !1433   ; 24 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2252
  store i32 0, ptr %i.c, align 4, !tbaa !1569
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 4 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !1711, !range !1351, !noundef !1352
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !1709 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1735, !nonnull !1352, !align !1356
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.m = tail call noundef i64 @_ZN5boost4asio6detail13epoll_reactor12cancel_timerINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEENS0_17execution_context9allocatorIvEEEEmRNS1_11timer_queueIT_T0_EERNSH_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(152) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 noundef -1) ; 0 uses
  store i8 0, ptr %i.e, align 8, !tbaa !1711
  br label %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.i

_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.i: ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i64 9223372036854775807, ptr %i.n, align 8, !tbaa !1319
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store i16 0, ptr %i.o, align 8, !tbaa !2851
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  store i64 0, ptr %i.p, align 8, !tbaa !2852
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 2241
  store i8 0, ptr %i.q, align 1, !tbaa !2841
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 2242
  store i8 1, ptr %i.r, align 2, !tbaa !1547
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 664 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 680 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1766
  tail call void @_ZN5boost5beast18static_buffer_base7consumeEm(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i64 noundef %i.u) #35
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 445 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1
  %i.x = and i8 %i.w, -2
  store i8 %i.x, ptr %i.v, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2243
  store i8 0, ptr %i.y, align 1, !tbaa !2853
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 2260
  store i8 0, ptr %i.z, align 4, !tbaa !2854
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2261
  store i8 0, ptr %i.aa, align 1, !tbaa !2855
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 2256
  store i32 0, ptr %i.ab, align 8, !tbaa !1795
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 2244
  store i32 0, ptr %i.ac, align 4, !tbaa !1795
  %i.ad = load i8, ptr %i.e, align 8, !tbaa !1711, !range !1351, !noundef !1352
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type5resetEv.exit

bb.e:                                             ; preds = %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.i
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !1709 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1735, !nonnull !1352, !align !1356
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ak = tail call noundef i64 @_ZN5boost4asio6detail13epoll_reactor12cancel_timerINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEENS0_17execution_context9allocatorIvEEEEmRNS1_11timer_queueIT_T0_EERNSH_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(152) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 noundef -1) ; 0 uses
  store i8 0, ptr %i.e, align 8, !tbaa !1711
  br label %_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type5resetEv.exit

_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type5resetEv.exit: ; preds = %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %13, i8 0, i64 26, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  store ptr %4, ptr %15, align 8, !tbaa !1549
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %5, ptr %.sroa.233.0..sroa_idx, align 8, !tbaa !1319
  call void @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type13build_requestIPFvRNS0_4http7messageILb1ENSB_10empty_bodyENSB_12basic_fieldsISaIcEEEEEEEESH_RNS_14static_strings19basic_static_stringILm24EcSt11char_traitsIcEEENS_4core17basic_string_viewIcEEST_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::http::message") align 8 %14, ptr noundef nonnull align 8 dereferenceable(2488) %i.b, ptr noundef nonnull align 1 dereferenceable(26) %13, ptr %2, i64 %3, ptr noundef nonnull byval(%"class.boost::core::basic_string_view") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr @.str.99, ptr %11, align 8, !noalias !11603
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 24, ptr %i.al, align 8, !noalias !11603
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !11603
  store ptr %14, ptr %10, align 8, !tbaa !1846, !alias.scope !11604, !noalias !11605
  %i.am = invoke noundef ptr @_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb0EEEE4findINS_4core17basic_string_viewIcEENS0_6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINSG_7elementES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISJ_EEEEEEPNS0_11rbtree_nodeIS3_EEPKSS_RKT_T0_(ptr noundef nonnull align 8 dereferenceable(80) %14, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dead_on_return %10)
          to label %.noexc unwind label %bb.k     ; 5 uses

.noexc:                                           ; preds = %_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type5resetEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !11603
  %i.an = icmp eq ptr %i.am, %14
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -16
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.aq = icmp eq ptr %i.ao, %i.ap
  %i.ar = select i1 %i.an, i1 true, i1 %i.aq
  br i1 %i.ar, label %_ZN5boost5beast9websocket6detail8pmd_readISaIcEEEvRNS2_9pmd_offerERKNS0_4http12basic_fieldsIT_EE.exit.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.au = load i16, ptr %i.as, align 2, !tbaa !1849
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 34
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !1850
  %i.az = zext i16 %i.ay to i64
  br label %_ZN5boost5beast9websocket6detail8pmd_readISaIcEEEvRNS2_9pmd_offerERKNS0_4http12basic_fieldsIT_EE.exit.i

_ZN5boost5beast9websocket6detail8pmd_readISaIcEEEvRNS2_9pmd_offerERKNS0_4http12basic_fieldsIT_EE.exit.i: ; preds = %bb.f, %.noexc
  %.sroa.3.0.i.i.i = phi i64 [ %i.az, %bb.f ], [ 0, %.noexc ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.aw, %bb.f ], [ null, %.noexc ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %.sroa.05.0.i.i.i, ptr %12, align 8, !tbaa !1549
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %.sroa.3.0.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !1319
  invoke void @_ZN5boost5beast9websocket6detail13pmd_read_implERNS2_9pmd_offerERKNS0_4http8ext_listE(ptr noundef nonnull align 4 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.g unwind label %bb.k

end_hunk_0
