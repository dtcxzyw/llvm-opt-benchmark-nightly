inline.NumInlined: 3334
inline.NumDeleted: 1601
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptionsD2Ev:bb.a

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !151  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i1.i.i, label %_ZNSt14_Function_baseD2Ev.exit2.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.v = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i.i:              ; preds = %bb.d, %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ab = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i32 noundef 3)
          to label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #34
  unreachable

_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i.i:     ; preds = %bb.f, %_ZNSt14_Function_baseD2Ev.exit2.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !144 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN6hermes2vm8GCConfig7BuilderD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !74
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #36
  br label %_ZN6hermes2vm8GCConfig7BuilderD2Ev.exit

_ZN6hermes2vm8GCConfig7BuilderD2Ev.exit:          ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing16TraceInterpreter15execAndGetStatsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS8_SaIS8_EERKNS2_14ExecuteOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(316) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function.72", align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFSt10shared_ptrIN8facebook3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEZNS1_6hermes7tracing16TraceInterpreter15execAndGetStatsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISJ_SaISJ_EERKNSD_14ExecuteOptionsEE3$_0E9_M_invokeERKSt9_Any_dataS9_", ptr %i.b, align 8, !tbaa !152
  store ptr @"_ZNSt17_Function_handlerIFSt10shared_ptrIN8facebook3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEZNS1_6hermes7tracing16TraceInterpreter15execAndGetStatsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISJ_SaISJ_EERKNSD_14ExecuteOptionsEE3$_0E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation", ptr %i.a, align 8, !tbaa !151
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter15execWithRuntimeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS8_SaIS8_EERKNS2_14ExecuteOptionsERKSt8functionIFSt10shared_ptrINS_3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(316) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  ret void

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %.not.i4 = icmp eq ptr %i.h, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing16TraceInterpreter15execWithRuntimeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS8_SaIS8_EERKNS2_14ExecuteOptionsERKSt8functionIFSt10shared_ptrINS_3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(316) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.llvh::ErrorOr", align 8     ; 20 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %7 = alloca %"class.std::unique_ptr.81", align 8 ; 7 uses
  %8 = alloca %"class.std::vector.89", align 8    ; 12 uses
  %9 = alloca %"class.llvh::ErrorOr", align 8     ; 8 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %11 = alloca %"class.std::tuple.94", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 4, ptr %i.a, align 8, !tbaa !154
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 1, ptr %i.b, align 1, !tbaa !157
  store ptr %1, ptr %6, align 8, !tbaa !74
  call void @_ZN4llvh12MemoryBuffer7getFileERKNS_5TwineElbb(ptr dead_on_unwind nonnull writable sret(%"class.llvh::ErrorOr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(18) %6, i64 noundef -1, i1 noundef zeroext true, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @__cxa_allocate_exception(i64 32) #35 ; 3 uses
  %i.g = load i8, ptr %i.c, align 8
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i = load i32, ptr %5, align 8, !tbaa !3
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.31.0.copyload.i = load ptr, ptr %.sroa.31.0..sroa_idx.i, align 8, !tbaa !158
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.31.0.i = phi ptr [ %.sroa.31.0.copyload.i, %bb.c ], [ %i.i, %bb.d ]
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload.i, %bb.c ], [ 0, %bb.d ]
  invoke void @_ZNSt12system_errorC2ESt10error_code(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 %.sroa.0.0.i, ptr %.sroa.31.0.i)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #38
          to label %bb.an unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.h:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.f) #35
  br label %bb.al

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.l = load i64, ptr %5, align 8, !tbaa !160
  store i64 %i.l, ptr %7, align 8, !tbaa !160
  store ptr null, ptr %5, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.m = load ptr, ptr %2, align 8, !tbaa !162    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !162  ; 2 uses
  %.not49 = icmp eq ptr %i.m, %i.o
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 17
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.31.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter20execFromMemoryBufferB5cxx11EOSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEOSt6vectorIS8_SaIS8_EERKNS2_14ExecuteOptionsERKSt8functionIFSt10shared_ptrINS_3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.94") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(316) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.z unwind label %bb.aj

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  %i.v = phi ptr [ null, %.lr.ph ], [ %i.ca, %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit ] ; 11 uses
  %i.w = phi ptr [ null, %.lr.ph ], [ %i.cb, %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit ] ; 5 uses
  %i.x = phi ptr [ null, %.lr.ph ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit ] ; 3 uses
  %.sroa.046.050 = phi ptr [ %i.m, %.lr.ph ], [ %i.cd, %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  store i8 4, ptr %i.p, align 8, !tbaa !154
  store i8 1, ptr %i.q, align 1, !tbaa !157
  store ptr %.sroa.046.050, ptr %10, align 8, !tbaa !74
  invoke void @_ZN4llvh12MemoryBuffer7getFileERKNS_5TwineElbb(ptr dead_on_unwind nonnull writable sret(%"class.llvh::ErrorOr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(18) %10, i64 noundef -1, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.y = load i8, ptr %i.c, align 8               ; 3 uses
  %i.z = trunc i8 %i.y to i1
  br i1 %i.z, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr %5, align 8, !tbaa !160   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i: ; preds = %bb.l
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !94
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aa) #35, !inline_history !164
  %.pre.i.i = load i8, ptr %i.c, align 8
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i, %bb.l, %bb.k
  %i.ae = phi i8 [ %i.y, %bb.k ], [ %i.y, %bb.l ], [ %.pre.i.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i ] ; 2 uses
  %i.af = load i8, ptr %i.r, align 8
  %i.ag = trunc i8 %i.af to i1
  br i1 %i.ag, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread, label %bb.m

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread: ; preds = %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i
  %i.ah = or i8 %i.ae, 1
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %9, align 8, !tbaa !3
  %.sroa.31.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.31.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !158
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %5, align 8
  store ptr %.sroa.31.0.copyload.i.i.i.i.i, ptr %i.s, align 8
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit

bb.m:                                             ; preds = %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i
  %i.ai = and i8 %i.ae, -2
  %i.aj = load i64, ptr %9, align 8, !tbaa !160
  store i64 %i.aj, ptr %5, align 8, !tbaa !160
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.m, %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread
  %.sink = phi i8 [ %i.ah, %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread ], [ %i.ai, %bb.m ] ; 2 uses
  store i8 %.sink, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.ak = trunc i8 %.sink to i1
  br i1 %i.ak, label %bb.n, label %bb.u

bb.n:                                             ; preds = %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit
  %i.al = call ptr @__cxa_allocate_exception(i64 32) #35 ; 3 uses
  %i.am = load i8, ptr %i.c, align 8
  %i.an = trunc i8 %i.am to i1
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i23 = load i32, ptr %5, align 8, !tbaa !3
  %.sroa.31.0.copyload.i25 = load ptr, ptr %i.s, align 8, !tbaa !158
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #39
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.31.0.i19 = phi ptr [ %.sroa.31.0.copyload.i25, %bb.o ], [ %i.ao, %bb.p ]
  %.sroa.0.0.i20 = phi i32 [ %.sroa.0.0.copyload.i23, %bb.o ], [ 0, %bb.p ]
  invoke void @_ZNSt12system_errorC2ESt10error_code(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i32 %.sroa.0.0.i20, ptr %.sroa.31.0.i19)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #38
          to label %bb.an unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %bb.ak

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %bb.r, %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.t:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.al) #35
  br label %bb.ak

bb.u:                                             ; preds = %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit
  %.not.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = load i64, ptr %5, align 8, !tbaa !160
  store i64 %i.ar, ptr %i.x, align 8, !tbaa !160
  store ptr null, ptr %5, align 8, !tbaa !160
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.t, align 8, !tbaa !165
  br label %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.at = ptrtoint ptr %i.w to i64                ; 3 uses
  %i.au = ptrtoint ptr %i.v to i64                ; 3 uses
  %i.av = sub i64 %i.at, %i.au                    ; 4 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.x, label %_ZNKSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.noexc44 unwind label %.loopexit.split-lp

.noexc44:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.w
  %i.ax = ashr exact i64 %i.av, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = call i64 @llvm.umin.i64(i64 %i.ay, i64 1152921504606846975)
  %i.bb = select i1 %i.az, i64 1152921504606846975, i64 %i.ba ; 3 uses
  %.not.i.i42 = icmp ne i64 %i.bb, 0
  call void @llvm.assume(i1 %.not.i.i42)
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #37
          to label %.noexc45 unwind label %.loopexit ; 11 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av
  %i.bf = load i64, ptr %5, align 8, !tbaa !160
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !160
  store ptr null, ptr %5, align 8, !tbaa !160
  %.not10.i.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc45
  %i.bg = sub i64 %i.at, %i.au
  %i.bh = add i64 %i.bg, -8                       ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader77, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bd, i64 8
  %i.bk = add i64 %i.at, -8
  %i.bl = sub i64 %i.bk, %i.au
  %i.bm = and i64 %i.bl, -8                       ; 2 uses
  %scevgep71 = getelementptr i8, ptr %scevgep, i64 %i.bm
  %scevgep72 = getelementptr i8, ptr %i.v, i64 8
  %scevgep73 = getelementptr i8, ptr %scevgep72, i64 %i.bm
  %bound0 = icmp ult ptr %i.bd, %scevgep73
  %bound1 = icmp ult ptr %i.v, %scevgep71
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader77, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 4611686018427387900     ; 3 uses
  %i.bn = shl i64 %n.vec, 3                       ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bd, i64 %i.bn  ; 2 uses
  %i.bp = getelementptr i8, ptr %i.v, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bd, i64 %i.bq ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.v, i64 %i.bq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.br = getelementptr i8, ptr %next.gep74, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep74, align 8, !tbaa !160, !alias.scope !173, !noalias !168
  %wide.load75 = load <2 x i64>, ptr %i.br, align 8, !tbaa !160, !alias.scope !173, !noalias !168
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !160, !alias.scope !176, !noalias !173
  store <2 x i64> %wide.load75, ptr %i.bs, align 8, !tbaa !160, !alias.scope !176, !noalias !173
  %i.bt = getelementptr i8, ptr %next.gep74, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep74, align 8, !tbaa !160, !alias.scope !173, !noalias !168
  store <2 x ptr> splat (ptr null), ptr %i.bt, align 8, !tbaa !160, !alias.scope !173, !noalias !168
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader77

.lr.ph.i.i.i.i.preheader77:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader77, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader77 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader77 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.bv = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !160, !alias.scope !171, !noalias !168
  store i64 %i.bv, ptr %.012.i.i.i.i, align 8, !tbaa !160, !alias.scope !168, !noalias !171
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !160, !alias.scope !171, !noalias !168
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i43 = icmp eq ptr %i.bw, %i.w
  br i1 %.not.i.i.i.i43, label %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !181

_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc45
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bd, %.noexc45 ], [ %i.bo, %middle.block ], [ %i.bx, %.lr.ph.i.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i, label %.noexc, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.av) #36
  br label %.noexc

.noexc:                                           ; preds = %bb.y, %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.bd, ptr %8, align 8, !tbaa !182
  store ptr %i.by, ptr %i.t, align 8, !tbaa !165
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb ; 2 uses
  store ptr %i.bz, ptr %i.u, align 8, !tbaa !183
  br label %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %.noexc, %bb.v
  %i.ca = phi ptr [ %i.bd, %.noexc ], [ %i.v, %bb.v ]
  %i.cb = phi ptr [ %i.bz, %.noexc ], [ %i.w, %bb.v ]
  %i.cc = phi ptr [ %i.by, %.noexc ], [ %i.as, %bb.v ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.046.050, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.cd, %i.o
  br i1 %.not, label %._crit_edge, label %bb.j

bb.z:                                             ; preds = %._crit_edge
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cf, ptr %0, align 8, !tbaa !91
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !144 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 5 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !92 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(1) %i.ch, i64 %i.cm, i1 false)
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.z
  store ptr %i.cg, ptr %0, align 8, !tbaa !144
  %i.cn = load i64, ptr %i.ch, align 8, !tbaa !74
  store i64 %i.cn, ptr %i.cf, align 8, !tbaa !74
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !92
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.co = phi i64 [ %i.ck, %bb.aa ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !tbaa !92
  store ptr %i.ch, ptr %i.ce, align 8, !tbaa !144
  store i64 0, ptr %i.cp, align 8, !tbaa !92
  store i8 0, ptr %i.ch, align 8, !tbaa !74
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !184 ; 8 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i30, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 4294967297
  %i.cw = trunc i64 %i.cu to i32                  ; 2 uses
  br i1 %i.cv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.ct, align 8, !tbaa !187
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !189
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !94
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #35, !inline_history !190
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !94
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #35, !inline_history !190
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i.i = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.df = add nsw i32 %i.cw, -1
  store i32 %i.df, ptr %i.ct, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dg = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i = phi i32 [ %i.cw, %bb.ae ], [ %i.dg, %bb.af ]
  %i.dh = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dh, label %bb.ag, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit, !prof !125

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #35
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %i.di = load ptr, ptr %8, align 8, !tbaa !182   ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !165 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.di, %i.dk
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dp, %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.di, %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit ] ; 2 uses
  %i.dl = load ptr, ptr %.05.i.i.i, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i31, label %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !94
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dl) #35, !inline_history !191
  br label %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dp, %i.dk
end_hunk_0
begin_hunk_1_@_ZN8facebook6hermes7tracing16TraceInterpreter20execFromMemoryBufferB5cxx11EOSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEOSt6vectorIS8_SaIS8_EERKNS2_14ExecuteOptionsERKSt8functionIFSt10shared_ptrINS_3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEE:bb.a
  %i.jf = sub i64 %i.jd, %i.je
  call void @_ZdlPvm(ptr noundef nonnull %.pre112, i64 noundef %i.jf) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  call void @_ZN6hermes2vm13RuntimeConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(269) dereferenceable(269) %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.jh)
          to label %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit85 unwind label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  %i.jj = extractvalue { ptr, i32 } %i.ji, 0
  call void @__clang_call_terminate(ptr %i.jj) #34
  unreachable

_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit85: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @_ZNSt11_Tuple_implILm0EJN8facebook6hermes7tracing10SynthTraceEN6hermes2vm13RuntimeConfig7BuilderENS5_8GCConfig7BuilderEEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  ret void

bb.bq:                                            ; preds = %._crit_edge
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.br:                                            ; preds = %bb.am
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.br, %bb.be, %bb.bd, %bb.an
  %.pn = phi { ptr, i32 } [ %.pn21.pn.pn22.i, %bb.be ], [ %i.jl, %bb.br ], [ %i.el, %bb.an ], [ %.pn21.pn.pn.i, %bb.bd ]
  call void @_ZN6hermes2vm8GCConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %17) #35
  br label %bb.bs

bb.bs:                                            ; preds = %.body, %bb.bq
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.jk, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  br label %bb.bt

bb.bt:                                            ; preds = %bb.af, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bs
  %.pn38.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bs ], [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.phi, %bb.ag ], [ %i.do, %bb.af ]
  call void @_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #35
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.i
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn, %bb.bt ], [ %i.bo, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  call void @_ZN6hermes2vm13RuntimeConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(269) dereferenceable(269) %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.h
  %.pn38.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn, %bb.bu ], [ %i.bn, %bb.h ]
  call void @_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #35
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.g
  %.pn38.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn.pn, %bb.bv ], [ %i.bm, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @_ZNSt11_Tuple_implILm0EJN8facebook6hermes7tracing10SynthTraceEN6hermes2vm13RuntimeConfig7BuilderENS5_8GCConfig7BuilderEEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %7) #35
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit51

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit51: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i50, %bb.f, %bb.bw
  %.pn38.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn.pn.pn, %bb.bw ], [ %i.bh, %bb.f ], [ %i.bh, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  resume { ptr, i32 } %.pn38.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !182    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #35, !inline_history !242
  br label %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !192

_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !182
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #36
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing16TraceInterpreter24getSourceHashToBundleMapEOSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS6_EESaIS9_EERKNS1_10SynthTraceERKNS2_14ExecuteOptionsEPbSJ_(ptr dead_on_unwind noalias writable sret(%"class.std::map") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(316) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::allocator", align 1    ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector.100", align 8  ; 14 uses
  %.sroa.0 = alloca [20 x i8], align 1            ; 7 uses
  %11 = alloca %"struct.std::array", align 1      ; 5 uses
  %12 = alloca %"struct.std::array", align 1      ; 5 uses
  %13 = alloca %"struct.std::pair.117", align 8   ; 8 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.loopexit116, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %4, align 1, !tbaa !199
  %i.a = load ptr, ptr %1, align 8, !tbaa !243    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !243  ; 2 uses
  %.not112134 = icmp eq ptr %i.a, %i.c
  br i1 %.not112134, label %.loopexit116, label %.critedge

bb.c:                                             ; preds = %.critedge
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135, i64 8 ; 2 uses
  %.not112 = icmp eq ptr %i.d, %i.c
  br i1 %.not112, label %.loopexit116, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %.sroa.0105.0135 = phi ptr [ %i.d, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.0105.0135, align 8, !tbaa !160 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %.not51 = icmp eq i32 %i.i, 1
  br i1 %.not51, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  store i8 0, ptr %4, align 1, !tbaa !199
  br label %.loopexit116

.loopexit116:                                     ; preds = %bb.c, %bb.b, %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.j = load ptr, ptr %1, align 8, !tbaa !243    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !243  ; 2 uses
  %.not113141 = icmp eq ptr %i.j, %i.l
  br i1 %.not113141, label %bb.e, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit116
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  store ptr %i.bg, ptr %i.m, align 8
  store ptr %i.be, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.loopexit116
  %i.o = phi ptr [ %i.bg, %._crit_edge ], [ null, %.loopexit116 ] ; 4 uses
  %i.p = phi ptr [ %i.bf, %._crit_edge ], [ null, %.loopexit116 ] ; 5 uses
  store ptr %i.p, ptr %10, align 8
  %i.q = invoke noundef ptr @_ZN8facebook6hermes17makeHermesRootAPIEv()
          to label %bb.m unwind label %bb.q       ; 3 uses

bb.f:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.be, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ] ; 8 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.bg, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ] ; 6 uses
  %.sroa.0101.0142 = phi ptr [ %i.j, %.lr.ph ], [ %i.bh, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.bf, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ] ; 14 uses
  %i.u = load i64, ptr %.sroa.0101.0142, align 8, !tbaa !160 ; 3 uses
  store ptr null, ptr %.sroa.0101.0142, align 8, !tbaa !160
  %i.v = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #37
          to label %bb.g unwind label %bb.l       ; 6 uses

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEE17OwnedMemoryBuffer, i64 16), ptr %i.v, align 8, !tbaa !94, !noalias !244
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !160, !noalias !244
  %.not.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = ptrtoint ptr %i.v to i64
  store i64 %i.x, ptr %i.s, align 8, !tbaa !249
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.y = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.z = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  store ptr %i.s, ptr %i.m, align 8
  store ptr %i.r, ptr %i.n, align 8
  store ptr %i.t, ptr %10, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.noexc85 unwind label %.thread.loopexit.split-lp

.noexc85:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i80 = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i80)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #37
          to label %.noexc86 unwind label %.thread.loopexit ; 10 uses

.noexc86:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  %i.ak = ptrtoint ptr %i.v to i64
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !249
  %.not10.i.i.i.i81 = icmp eq ptr %i.t, %i.r
  br i1 %.not10.i.i.i.i81, label %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i82.preheader

.lr.ph.i.i.i.i82.preheader:                       ; preds = %.noexc86
  %i.al = sub i64 %i.y, %i.z
  %i.am = add i64 %i.al, -8                       ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i82.preheader322, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i82.preheader
  %scevgep = getelementptr i8, ptr %i.ai, i64 8
  %i.ap = add i64 %i.y, -8
  %i.aq = sub i64 %i.ap, %i.z
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %scevgep306 = getelementptr i8, ptr %scevgep, i64 %i.ar
  %scevgep307 = getelementptr i8, ptr %i.t, i64 8
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.ar
  %bound0 = icmp ult ptr %i.ai, %scevgep308
  %bound1 = icmp ult ptr %i.t, %scevgep306
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i82.preheader322, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ai, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.t, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.av ; 2 uses
  %next.gep309 = getelementptr i8, ptr %i.t, i64 %i.av ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.aw = getelementptr i8, ptr %next.gep309, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep309, align 8, !tbaa !249, !alias.scope !256, !noalias !251
  %wide.load310 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !249, !alias.scope !256, !noalias !251
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !249, !alias.scope !259, !noalias !256
  store <2 x i64> %wide.load310, ptr %i.ax, align 8, !tbaa !249, !alias.scope !259, !noalias !256
  %i.ay = getelementptr i8, ptr %next.gep309, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep309, align 8, !tbaa !249, !alias.scope !256, !noalias !251
  store <2 x ptr> splat (ptr null), ptr %i.ay, align 8, !tbaa !249, !alias.scope !256, !noalias !251
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i82.preheader322

.lr.ph.i.i.i.i82.preheader322:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i82.preheader, %middle.block
  %.012.i.i.i.i83.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i.i.i.i82.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i82.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i82

.lr.ph.i.i.i.i82:                                 ; preds = %.lr.ph.i.i.i.i82.preheader322, %.lr.ph.i.i.i.i82
  %.012.i.i.i.i83 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i82 ], [ %.012.i.i.i.i83.ph, %.lr.ph.i.i.i.i82.preheader322 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i82 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i82.preheader322 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.ba = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !249, !alias.scope !254, !noalias !251
  store i64 %i.ba, ptr %.012.i.i.i.i83, align 8, !tbaa !249, !alias.scope !251, !noalias !254
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !249, !alias.scope !254, !noalias !251
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i83, i64 8 ; 2 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.bb, %i.r
  br i1 %.not.i.i.i.i84, label %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i82, !llvm.loop !262

_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i82, %middle.block, %.noexc86
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ai, %.noexc86 ], [ %i.at, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i82 ]
  %.not.i23.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i, label %.noexc, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.aa) #36
  br label %.noexc

.noexc:                                           ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc, %bb.h
  %i.be = phi ptr [ %i.bd, %.noexc ], [ %i.r, %bb.h ] ; 2 uses
  %.0.lcssa.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i, %.noexc ], [ %i.s, %bb.h ]
  %i.bf = phi ptr [ %i.ai, %.noexc ], [ %i.t, %bb.h ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.pn, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0101.0142, i64 8 ; 2 uses
  %.not113 = icmp eq ptr %i.bh, %i.l
  br i1 %.not113, label %._crit_edge, label %bb.f

.thread.loopexit:                                 ; preds = %_ZNKSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.s, ptr %i.m, align 8
  store ptr %i.r, ptr %i.n, align 8
  store ptr %i.t, ptr %10, align 8
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !94
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit.split-lp, %.thread.loopexit
  %i.bi = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEE17OwnedMemoryBuffer, i64 16), %.thread.loopexit ], [ %.pre, %.thread.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #35, !inline_history !263
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70

bb.l:                                             ; preds = %bb.f
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.s, ptr %i.m, align 8
  store ptr %i.r, ptr %i.n, align 8
  store ptr %i.t, ptr %10, align 8
  %.not.i68 = icmp eq i64 %i.u, 0
  br i1 %.not.i68, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i69

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i69: ; preds = %bb.l
  %i.bm = inttoptr i64 %i.u to ptr                ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !94
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bm) #35, !inline_history !193
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70

bb.m:                                             ; preds = %bb.e
  %.not.i71 = icmp eq ptr %i.q, null
  br i1 %.not.i71, label %_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %i.q, align 8, !tbaa !94
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke noundef ptr %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(16) @_ZN8facebook6hermes14IHermesRootAPI4uuidE)
          to label %_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit unwind label %bb.q, !inline_history !264

_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit: ; preds = %bb.m, %bb.n
  %.0.i = phi ptr [ null, %bb.m ], [ %i.bs, %bb.n ] ; 4 uses
  %.not52 = icmp eq ptr %5, null
  br i1 %.not52, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit
  store i8 1, ptr %5, align 1, !tbaa !199
  %.not114153 = icmp eq ptr %i.p, %i.o
  br i1 %.not114153, label %.loopexit, label %.lr.ph156

bb.p:                                             ; preds = %.critedge61
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.092.0154, i64 8 ; 2 uses
  %.not114 = icmp eq ptr %i.bt, %i.o
  br i1 %.not114, label %.loopexit, label %.lr.ph156

bb.q:                                             ; preds = %bb.n, %bb.e
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70

.lr.ph156:                                        ; preds = %bb.o, %bb.p
  %.sroa.092.0154 = phi ptr [ %i.bt, %bb.p ], [ %i.p, %bb.o ] ; 3 uses
  %i.bv = load ptr, ptr %.sroa.092.0154, align 8, !tbaa !249 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !94
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %.lr.ph156
  %i.ca = load ptr, ptr %.sroa.092.0154, align 8, !tbaa !249 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !94
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = invoke noundef i64 %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.ca)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %.0.i, align 8, !tbaa !94
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef %i.bz, i64 noundef %i.ce)
          to label %.critedge61 unwind label %bb.u

.critedge61:                                      ; preds = %bb.s
  br i1 %i.ci, label %bb.p, label %bb.t

bb.t:                                             ; preds = %.critedge61
  store i8 0, ptr %5, align 1, !tbaa !199
  br label %.loopexit

bb.u:                                             ; preds = %bb.s, %bb.r, %.lr.ph156
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70

.loopexit:                                        ; preds = %bb.p, %bb.o, %bb.t, %_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i32 0, ptr %i.ck, align 8, !tbaa !77
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.cl, align 8, !tbaa !76
end_hunk_1
begin_hunk_2_@_ZZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmEN14FakeHostObject3setERNS_3jsi7RuntimeERKNS4_10PropNameIDERKNS4_5ValueE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.d
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !110  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1127
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !96
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !94
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.t)
          to label %bb.c unwind label %bb.j, !inline_history !1015

bb.c:                                             ; preds = %bb.b
  store ptr %i.x, ptr %5, align 8, !tbaa !96
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 640
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !73
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter18addToPropNameIDMapEmONS_3jsi10PropNameIDEm(ptr noundef nonnull align 8 dereferenceable(648) %i.b, i64 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.aa)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %5, align 8, !tbaa !96    ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !94
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %.sroa.0.0.copyload = load i32, ptr %i.af, align 8, !tbaa !498 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 640
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 %.sroa.0.0.copyload, ptr %4, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.21.0.copyload, ptr %i.aj, align 8
  invoke void @_ZNK8facebook6hermes7tracing16TraceInterpreter11assertMatchERKNS1_10SynthTrace10TraceValueERKNS_3jsi5ValueE(ptr noundef nonnull align 8 dereferenceable(648) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.f
  %.off.i.i = add i32 %.sroa.0.0.copyload, -4
  %switch.i.i = icmp ult i32 %.off.i.i, 5
  br i1 %switch.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14addToObjectMapEmONS_3jsi5ValueEm(ptr noundef nonnull align 8 dereferenceable(648) %i.ae, i64 noundef %.sroa.21.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.ai)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %.noexc, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv(ptr noundef nonnull align 8 dereferenceable(648) %i.ak)
          to label %bb.t unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.p

bb.j:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit23

bb.k:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.ao = load ptr, ptr %5, align 8, !tbaa !96    ; 3 uses
  %.not.i22 = icmp eq ptr %i.ao, null
  br i1 %.not.i22, label %_ZN8facebook3jsi7PointerD2Ev.exit23, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !94
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit23

_ZN8facebook3jsi7PointerD2Ev.exit23:              ; preds = %bb.l, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.an, %bb.k ], [ %i.an, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.p

bb.m:                                             ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.o

bb.n:                                             ; preds = %bb.g, %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #35
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn17 = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.ar, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN8facebook3jsi7PointerD2Ev.exit23, %bb.i
  %.pn19 = phi { ptr, i32 } [ %i.al, %bb.i ], [ %.pn17, %bb.o ], [ %.pn, %_ZN8facebook3jsi7PointerD2Ev.exit23 ] ; 3 uses
  %.214 = extractvalue { ptr, i32 } %.pn19, 1
  %i.at = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.au = icmp eq i32 %.214, %i.at
  br i1 %i.au, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %.2 = extractvalue { ptr, i32 } %.pn19, 0
  %i.av = call ptr @__cxa_begin_catch(ptr %.2) #35
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter16crashOnExceptionERKSt9exceptionN6hermes8OptValueImEE(ptr noundef nonnull align 8 dereferenceable(648) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.av, i64 0, i8 0) #38
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.u unwind label %bb.v

bb.t:                                             ; preds = %bb.h, %bb.a
  ret void

bb.u:                                             ; preds = %bb.s, %bb.p
  %.merged = phi { ptr, i32 } [ %.pn19, %bb.p ], [ %i.ax, %bb.s ]
  resume { ptr, i32 } %.merged

bb.v:                                             ; preds = %bb.s
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #34
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmEN14FakeHostObject16getPropertyNamesERNS_3jsi7RuntimeE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.301") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv(ptr noundef nonnull align 8 dereferenceable(648) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !482, !nonnull !68, !align !453
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  %i.h = load i64, ptr %i.g, align 8, !tbaa !73
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %i.h
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !110  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !879  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !879  ; 2 uses
  %.not33 = icmp eq ptr %i.n, %i.p
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  br label %bb.o

bb.d:                                             ; preds = %.lr.ph, %_ZN8facebook3jsi7PointerD2Ev.exit
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.ci, %_ZN8facebook3jsi7PointerD2Ev.exit ] ; 11 uses
  %i.u = phi ptr [ null, %.lr.ph ], [ %i.cj, %_ZN8facebook3jsi7PointerD2Ev.exit ] ; 5 uses
  %i.v = phi ptr [ null, %.lr.ph ], [ %i.ck, %_ZN8facebook3jsi7PointerD2Ev.exit ] ; 3 uses
  %.sroa.026.034 = phi ptr [ %i.n, %.lr.ph ], [ %i.cl, %_ZN8facebook3jsi7PointerD2Ev.exit ] ; 2 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.026.034, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !74   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 560
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !628, !noalias !1141
  %.not.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.not.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 552
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.ab, %bb.e ], [ %.sroa.06.0.i.i.i, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !119, !noalias !1141, !nonnull !68, !noundef !68 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !107, !noalias !1141
  %i.ae = icmp eq i64 %i.y, %i.ad
  br i1 %i.ae, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i, label %bb.f, !llvm.loop !629

bb.g:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 536
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 544
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !90, !noalias !1141 ; 2 uses
  %i.ai = urem i64 %i.y, %i.ah                    ; 2 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !89, !noalias !1141
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !121, !noalias !1141, !nonnull !68, !noundef !68
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !119, !noalias !1141 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !107, !noalias !1141
  %i.ap = icmp eq i64 %i.y, %i.ao
  br i1 %i.ap, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.g ]
  %i.aq = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !119, !noalias !1141, !nonnull !68, !noundef !68 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !107, !noalias !1141 ; 2 uses
  %i.at = urem i64 %i.as, %i.ah
  %.not19.i.i.i.i.i = icmp eq i64 %i.at, %i.ai
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.au = icmp eq i64 %i.y, %i.as
  br i1 %i.au, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !630

_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.f, %bb.g
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.f ], [ %i.am, %bb.g ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !452, !noalias !1141, !nonnull !68, !align !453 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !96, !noalias !1141
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !94, !noalias !1141
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !1141
  %i.bb = invoke noundef ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %i.ax)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter19getPropNameIDForUseEm.exit unwind label %bb.l, !inline_history !631 ; 5 uses

_ZN8facebook6hermes7tracing16TraceInterpreter19getPropNameIDForUseEm.exit: ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i
  %.not.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter19getPropNameIDForUseEm.exit
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.bc, ptr %i.q, align 8, !tbaa !1144
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

bb.i:                                             ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter19getPropNameIDForUseEm.exit
  %i.bd = ptrtoint ptr %i.u to i64                ; 3 uses
  %i.be = ptrtoint ptr %i.t to i64                ; 3 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 4 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.j, label %_ZNKSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.noexc19 unwind label %.loopexit.split-lp

.noexc19:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.bh = ashr exact i64 %i.bf, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 1152921504606846975)
  %i.bl = select i1 %i.bj, i64 1152921504606846975, i64 %i.bk ; 3 uses
  %.not.i.i = icmp ne i64 %i.bl, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #37
          to label %.noexc20 unwind label %.loopexit ; 11 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  store ptr %i.bb, ptr %i.bo, align 8, !tbaa !96
  %.not10.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc20
  %i.bp = sub i64 %i.bd, %i.be
  %i.bq = add i64 %i.bp, -8                       ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bq, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader65, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bn, i64 8
  %i.bt = add i64 %i.bd, -8
  %i.bu = sub i64 %i.bt, %i.be
  %i.bv = and i64 %i.bu, -8                       ; 2 uses
  %scevgep59 = getelementptr i8, ptr %scevgep, i64 %i.bv
  %scevgep60 = getelementptr i8, ptr %i.t, i64 8
  %scevgep61 = getelementptr i8, ptr %scevgep60, i64 %i.bv
  %bound0 = icmp ult ptr %i.bn, %scevgep61
  %bound1 = icmp ult ptr %i.t, %scevgep59
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader65, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bs, 4611686018427387900     ; 3 uses
  %i.bw = shl i64 %n.vec, 3                       ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bn, i64 %i.bw  ; 2 uses
  %i.by = getelementptr i8, ptr %i.t, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.bz ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.t, i64 %i.bz ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  %i.ca = getelementptr i8, ptr %next.gep62, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep62, align 8, !tbaa !96, !alias.scope !1152, !noalias !1147
  %wide.load63 = load <2 x ptr>, ptr %i.ca, align 8, !tbaa !96, !alias.scope !1152, !noalias !1147
  %i.cb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !96, !alias.scope !1155, !noalias !1152
  store <2 x ptr> %wide.load63, ptr %i.cb, align 8, !tbaa !96, !alias.scope !1155, !noalias !1152
  store <2 x ptr> splat (ptr null), ptr %next.gep62, align 8, !tbaa !96, !alias.scope !1152, !noalias !1147
  store <2 x ptr> splat (ptr null), ptr %i.ca, align 8, !tbaa !96, !alias.scope !1152, !noalias !1147
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !1157

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i.preheader65

.lr.ph.i.i.i.i.preheader65:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i.i.i.i.preheader ], [ %i.bx, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.preheader ], [ %i.by, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader65, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader65 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader65 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  %i.cd = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !96, !alias.scope !1150, !noalias !1147
  store ptr %i.cd, ptr %.012.i.i.i.i, align 8, !tbaa !96, !alias.scope !1147, !noalias !1150
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !96, !alias.scope !1150, !noalias !1147
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ce, %i.u
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1158

_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc20
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bn, %.noexc20 ], [ %i.bx, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i, label %.noexc, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.bf) #36
  br label %.noexc

.noexc:                                           ; preds = %bb.k, %_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i
  store ptr %i.bn, ptr %0, align 8, !tbaa !1159
  store ptr %i.cg, ptr %i.q, align 8, !tbaa !1144
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bl ; 2 uses
  store ptr %i.ch, ptr %i.r, align 8, !tbaa !1160
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %bb.h, %.noexc
  %i.ci = phi ptr [ %i.t, %bb.h ], [ %i.bn, %.noexc ]
  %i.cj = phi ptr [ %i.u, %bb.h ], [ %i.ch, %.noexc ]
  %i.ck = phi ptr [ %i.bc, %bb.h ], [ %i.cg, %.noexc ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.026.034, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.cl, %i.p
  br i1 %.not, label %._crit_edge, label %bb.d

bb.l:                                             ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit18

.loopexit:                                        ; preds = %_ZNKSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i17 = icmp eq ptr %i.bb, null
  br i1 %.not.i17, label %_ZN8facebook3jsi7PointerD2Ev.exit18, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = load ptr, ptr %i.bb, align 8, !tbaa !94
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.bb) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit18

_ZN8facebook3jsi7PointerD2Ev.exit18:              ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.l ], [ %lpad.phi, %bb.m ], [ %lpad.phi, %bb.n ]
  tail call void @_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #35
  br label %bb.o

bb.o:                                             ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit18, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN8facebook3jsi7PointerD2Ev.exit18 ], [ %i.s, %bb.c ] ; 3 uses
  %.112 = extractvalue { ptr, i32 } %.pn.pn, 1
  %i.cp = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.cq = icmp eq i32 %.112, %i.cp
  br i1 %i.cq, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.cr = tail call ptr @__cxa_begin_catch(ptr %.1) #35
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter16crashOnExceptionERKSt9exceptionN6hermes8OptValueImEE(ptr noundef nonnull align 8 dereferenceable(648) %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %i.cr, i64 0, i8 0) #38
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.o
  %.merged = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.ct, %bb.r ]
  resume { ptr, i32 } %.merged

bb.t:                                             ; preds = %bb.r
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  tail call void @__clang_call_terminate(ptr %i.cv) #34
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1159   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1144 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !96 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #35, !inline_history !1161
  br label %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i

_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1162

_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1159
  br label %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN8facebook3jsi10PropNameIDESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1160
  %i.k = ptrtoint ptr %i.j to i64
end_hunk_2
