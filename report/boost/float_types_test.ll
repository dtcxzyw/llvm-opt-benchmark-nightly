Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/float_types_test?download=true
inline.NumInlined: 6932
inline.NumDeleted: 997
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5boost6detail14test_with_implINS0_10lw_test_eqEifEEbT_PKcS5_S5_iS5_RKT0_RKT1_:bb.a

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.o, %bb.p
  %.0.i.i.i = phi i8 [ %i.bs, %bb.o ], [ %i.bw, %bb.p ]
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i8 noundef signext %.0.i.i.i)
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bx) ; 0 uses
  %i.bz = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.q, label %_ZN5boost6detail12test_resultsEv.exit17, !prof !49

bb.q:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.cb = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i16 = icmp eq i32 %i.cb, 0
  br i1 %.not.i16, label %_ZN5boost6detail12test_resultsEv.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !52
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !53
  %i.cc = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail12test_resultsEv.exit17

_ZN5boost6detail12test_resultsEv.exit17:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.q, %bb.r
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !76
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !76
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.d, %bb.c, %bb.b, %_ZN5boost6detail12test_resultsEv.exit17
  ret i1 %i.d
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfEET_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %3 = alloca %"class.boost::detail::lcast::optimized_src_stream", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !45
  store i8 0, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %3, ptr %i.c, align 8, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 21
  store ptr %i.e, ptr %i.d, align 8, !tbaa !83
  %i.f = load float, ptr %1, align 4, !tbaa !15   ; 5 uses
  %i.g = fcmp uno float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = bitcast float %i.f to i32
  %i.i = icmp slt i32 %i.h, 0
  %..i.i.i.i.i = select i1 %i.i, ptr @.str.42, ptr @.str.41
  br label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i

bb.c:                                             ; preds = %bb.a
  %i.j = call float @llvm.fabs.f32(float %i.f)
  %i.k = fcmp oeq float %i.j, +inf
  br i1 %i.k, label %bb.d, label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = bitcast float %i.f to i32
  %i.m = icmp slt i32 %i.l, 0
  %.9.i.i.i.i.i = select i1 %i.m, ptr @.str.44, ptr @.str.43
  br label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i

_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i: ; preds = %bb.d, %bb.b
  %.0.i.i.ph.i.i.i = phi ptr [ %.9.i.i.i.i.i, %bb.d ], [ %..i.i.i.i.i, %bb.b ] ; 4 uses
  store ptr %.0.i.i.ph.i.i.i, ptr %i.c, align 8, !tbaa !82
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i.ph.i.i.i) #27
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.ph.i.i.i, i64 %i.n ; 2 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !83
  br label %bb.e

_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i: ; preds = %bb.c
  %i.p = fpext float %i.f to double
  %i.q = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull align 8 dereferenceable(40) %3, i64 noundef 21, ptr noundef nonnull @.str.45, i32 noundef 9, double noundef %i.p) #27
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %3, i64 %i.r ; 3 uses
  store ptr %i.s, ptr %i.d, align 8, !tbaa !83
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !82   ; 2 uses
  %i.u = icmp ugt ptr %i.s, %i.t
  br i1 %i.u, label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge, label %bb.f

_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge: ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i
  %.pre = load i64, ptr %i.b, align 8, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i
  %i.v = phi i64 [ 0, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %.pre, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ]
  %i.w = phi ptr [ %i.o, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %i.s, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ]
  %i.x = phi ptr [ %.0.i.i.ph.i.i.i, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %i.t, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ] ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.v, ptr noundef %i.x, i64 noundef %i.aa)
          to label %.thread unwind label %bb.i    ; 0 uses

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.f:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %2, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZTIf, ptr %i.ac, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %i.ad, align 8, !tbaa !29
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %2) #28
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.body

bb.i:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.ae, %bb.h ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.a
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !21
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #23

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEfEET_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.11") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %3 = alloca %"class.boost::detail::lcast::optimized_src_stream.6", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !105
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !102
  store i32 0, ptr %i.a, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  store ptr %3, ptr %i.c, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 84
  store ptr %i.e, ptr %i.d, align 8, !tbaa !93
  %i.f = load float, ptr %1, align 4, !tbaa !15   ; 5 uses
  %i.g = fcmp uno float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = bitcast float %i.f to i32
  %i.i = icmp slt i32 %i.h, 0
  %..i.i.i.i.i = select i1 %i.i, ptr @.str.73, ptr @.str.72
  br label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i

bb.c:                                             ; preds = %bb.a
  %i.j = call float @llvm.fabs.f32(float %i.f)
  %i.k = fcmp oeq float %i.j, +inf
  br i1 %i.k, label %bb.d, label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = bitcast float %i.f to i32
  %i.m = icmp slt i32 %i.l, 0
  %.9.i.i.i.i.i = select i1 %i.m, ptr @.str.75, ptr @.str.74
  br label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i

_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i: ; preds = %bb.d, %bb.b
  %.0.i.i.ph.i.i.i = phi ptr [ %.9.i.i.i.i.i, %bb.d ], [ %..i.i.i.i.i, %bb.b ] ; 4 uses
  store ptr %.0.i.i.ph.i.i.i, ptr %i.c, align 8, !tbaa !92
  %i.n = call noundef i64 @wcslen(ptr noundef nonnull %.0.i.i.ph.i.i.i) #32
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.ph.i.i.i, i64 %i.n ; 2 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !93
  br label %bb.e

_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i: ; preds = %bb.c
  %i.p = fpext float %i.f to double
  %i.q = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef 21, ptr noundef nonnull @.str.76, i32 noundef 9, double noundef %i.p) #27
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %3, i64 %i.r ; 3 uses
  store ptr %i.s, ptr %i.d, align 8, !tbaa !93
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !92   ; 2 uses
  %i.u = icmp ugt ptr %i.s, %i.t
  br i1 %i.u, label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge, label %bb.f

_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge: ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i
  %.pre = load i64, ptr %i.b, align 8, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i
  %i.v = phi i64 [ 0, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %.pre, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ]
  %i.w = phi ptr [ %i.o, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %i.s, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ]
  %i.x = phi ptr [ %.0.i.i.ph.i.i.i, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %i.t, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ] ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.v, ptr noundef %i.x, i64 noundef %i.ab)
          to label %.thread unwind label %bb.i    ; 0 uses

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.f:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm21EE9stream_inIfEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %2, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZTIf, ptr %i.ad, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZTINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE, ptr %i.ae, align 8, !tbaa !29
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %2) #28
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.body

bb.i:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.af, %bb.h ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !101   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !21
  %i.ak = shl i64 %i.aj, 2
  %i.al = add i64 %i.ak, 4
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #29
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z6to_strIciENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEET0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1)
          to label %bb.b unwind label %bb.g       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !42, !alias.scope !278
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !45, !alias.scope !278
  store i8 0, ptr %i.b, align 8, !tbaa !21, !alias.scope !278
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !146, !noalias !278 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !278 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147, !noalias !278 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !44, !alias.scope !278 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !tbaa !21, !alias.scope !278
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  invoke void @_Z21to_str_gcc_workaroundIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEES6_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 %3)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.u = load ptr, ptr %3, align 8, !tbaa !44     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.w = load i64, ptr %i.b, align 8, !tbaa !21
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.y, ptr %2, align 8, !tbaa !23
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aa = getelementptr i8, ptr %i.y, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ad, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !44 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !21
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ad, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #27
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.al) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.g:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.b
  br i1 %i.ap, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.h
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !21
  %i.ar = add i64 %i.aq, 1
end_hunk_0
begin_hunk_1_@_Z21to_str_gcc_workaroundIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEES6_:bb.a
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !45
  %i.bs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #27
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.br, i64 2)
  %i.bt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %spec.select.i.i.i, ptr noundef nonnull %i.a, i64 noundef %i.bs)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit unwind label %bb.k ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit: ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bu, ptr %0, align 8, !tbaa !42
  %i.bv = load ptr, ptr %1, align 8, !tbaa !44    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit
  %i.by = load i64, ptr %i.bq, align 8, !tbaa !45 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.by, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.bw, i64 %i.ca, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit
  store ptr %i.bv, ptr %0, align 8, !tbaa !44
  %i.cb = load i64, ptr %i.bw, align 8, !tbaa !21
  store i64 %i.cb, ptr %i.bu, align 8, !tbaa !21
  %.pre19 = load i64, ptr %i.bq, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit18: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  %i.cc = phi i64 [ %i.by, %bb.m ], [ %.pre19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !45
  store ptr %i.bw, ptr %1, align 8, !tbaa !44
  store i64 0, ptr %i.bq, align 8, !tbaa !45
  store i8 0, ptr %i.bw, align 8, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.p:                                             ; preds = %bb.d, %bb.e, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.d ], [ %i.bp, %bb.k ], [ %i.am, %bb.e ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIwSt11char_traitsIwESaIwEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13basic_ostreamIwSt11char_traitsIwEElsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z21to_str_gcc_workaroundIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEES6_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.11") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::locale", align 8       ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = alloca [3 x i32], align 4                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  %i.b = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIwE2idE) #27
  %i.c = load ptr, ptr %2, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 5 uses
  %.not.not.i = icmp eq ptr %i.g, null
  br i1 %.not.not.i, label %.invoke, label %_ZSt9use_facetINSt7__cxx118numpunctIwEEERKT_RKSt6locale.exit

_ZSt9use_facetINSt7__cxx118numpunctIwEEERKT_RKSt6locale.exit: ; preds = %bb.a
  %i.h = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIwE2idE) #27
  %i.i = load ptr, ptr %2, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 3 uses
  %.not.not.i8 = icmp eq ptr %i.m, null
  br i1 %.not.not.i8, label %.invoke, label %_ZSt9use_facetISt5ctypeIwEERKT_RKSt6locale.exit

.invoke:                                          ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIwEEERKT_RKSt6locale.exit, %bb.a
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt9use_facetISt5ctypeIwEERKT_RKSt6locale.exit:  ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIwEEERKT_RKSt6locale.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !23, !noalias !309
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !309
  invoke void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_ZNKSt7__cxx118numpunctIwE8groupingEv.exit unwind label %bb.e, !inline_history !306

_ZNKSt7__cxx118numpunctIwE8groupingEv.exit:       ; preds = %_ZSt9use_facetISt5ctypeIwEERKT_RKSt6locale.exit
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !45   ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = load ptr, ptr %3, align 8, !tbaa !44     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt7__cxx118numpunctIwE8groupingEv.exit
  %i.w = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.w)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx118numpunctIwE8groupingEv.exit
  %i.x = load i64, ptr %i.u, align 8, !tbaa !21
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %i.s, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !105
  %i.aa = load ptr, ptr %1, align 8, !tbaa !101   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !102 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 4
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  %i.ah = call ptr @wmemcpy(ptr noundef nonnull %i.z, ptr noundef nonnull %i.ab, i64 noundef %i.ag) #27 ; 0 uses
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i: ; preds = %bb.b
  store ptr %i.aa, ptr %0, align 8, !tbaa !101
  %i.ai = load i64, ptr %i.ab, align 8, !tbaa !21
  store i64 %i.ai, ptr %i.z, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !102
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !102
  store ptr %i.ab, ptr %1, align 8, !tbaa !101
  store i64 0, ptr %i.aj, align 8, !tbaa !102
  store i32 0, ptr %i.ab, align 8, !tbaa !95
  br label %bb.m

bb.d:                                             ; preds = %.invoke
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.e:                                             ; preds = %_ZSt9use_facetISt5ctypeIwEERKT_RKSt6locale.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.n

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef signext i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(12) %i.m, i8 noundef signext 45)
          to label %_ZNKSt21__ctype_abstract_baseIwE5widenEc.exit unwind label %bb.i, !inline_history !307

_ZNKSt21__ctype_abstract_baseIwE5widenEc.exit:    ; preds = %bb.f
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !95
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef signext i32 %i.av(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_ZNKSt7__cxx118numpunctIwE13thousands_sepEv.exit unwind label %bb.i, !inline_history !308

_ZNKSt7__cxx118numpunctIwE13thousands_sepEv.exit: ; preds = %_ZNKSt21__ctype_abstract_baseIwE5widenEc.exit
  store i32 %i.aw, ptr %i.as, align 4, !tbaa !95
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.ax, align 4, !tbaa !95
  %i.ay = call noundef i64 @wcslen(ptr noundef nonnull %i.a) #32
  %i.az = call noundef i64 @_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4findEPKwmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef %i.ay) #27
  %.not = icmp eq i64 %i.az, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx118numpunctIwE13thousands_sepEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !105
  %i.bb = load ptr, ptr %1, align 8, !tbaa !101   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i13

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !102 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 4
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  %i.bi = call ptr @wmemcpy(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bc, i64 noundef %i.bh) #27 ; 0 uses
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i13: ; preds = %bb.g
  store ptr %i.bb, ptr %0, align 8, !tbaa !101
  %i.bj = load i64, ptr %i.bc, align 8, !tbaa !21
  store i64 %i.bj, ptr %i.ba, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit14: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i13
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !102
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !102
  store ptr %i.bc, ptr %1, align 8, !tbaa !101
  store i64 0, ptr %i.bk, align 8, !tbaa !102
  store i32 0, ptr %i.bc, align 8, !tbaa !95
  br label %bb.l

bb.i:                                             ; preds = %bb.j, %_ZNKSt21__ctype_abstract_baseIwE5widenEc.exit, %bb.f
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.n

bb.j:                                             ; preds = %_ZNKSt7__cxx118numpunctIwE13thousands_sepEv.exit
  store i32 0, ptr %i.as, align 4, !tbaa !95
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !102
  %i.bq = call noundef i64 @wcslen(ptr noundef nonnull %i.a) #32
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 2)
  %i.br = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %spec.select.i.i.i, ptr noundef nonnull %i.a, i64 noundef %i.bq)
          to label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7replaceEmmPKw.exit unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7replaceEmmPKw.exit: ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bs, ptr %0, align 8, !tbaa !105
  %i.bt = load ptr, ptr %1, align 8, !tbaa !101   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i16

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7replaceEmmPKw.exit
  %i.bw = load i64, ptr %i.bo, align 8, !tbaa !102 ; 2 uses
  %i.bx = icmp ult i64 %i.bw, 4
  call void @llvm.assume(i1 %i.bx)
  %i.by = add nuw nsw i64 %i.bw, 1
  %i.bz = call ptr @wmemcpy(ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bu, i64 noundef %i.by) #27 ; 0 uses
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7replaceEmmPKw.exit
  store ptr %i.bt, ptr %0, align 8, !tbaa !101
  %i.ca = load i64, ptr %i.bu, align 8, !tbaa !21
  store i64 %i.ca, ptr %i.bs, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit17: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i16
  %i.cb = load i64, ptr %i.bo, align 8, !tbaa !102
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !102
  store ptr %i.bu, ptr %1, align 8, !tbaa !101
  store i64 0, ptr %i.bo, align 8, !tbaa !102
  store i32 0, ptr %i.bu, align 8, !tbaa !95
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit17, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.n:                                             ; preds = %bb.d, %bb.e, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.am, %bb.d ], [ %i.bn, %bb.i ], [ %i.an, %bb.e ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIwSt11char_traitsIwESaIwEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1115basic_stringbufIwSt11char_traitsIwESaIwEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIwSt11char_traitsIwESaIwEEE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !21
  %i.f = shl i64 %i.e, 2
  %i.g = add i64 %i.f, 4
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.g) #29
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIwSt11char_traitsIwEE, i64 16), ptr %0, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #27
  ret void
}

; Function Attrs: nounwind
declare ptr @wmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4findEPKwmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13basic_ostreamIwSt11char_traitsIwEE9_M_insertImEERS2_T_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z34test_conversion_from_float_to_charIdcEvT0_(i8 noundef signext %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i:
  %1 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %2 = alloca %"class.boost::detail::lcast::optimized_src_stream.39", align 8 ; 8 uses
  %3 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %4 = alloca %"class.boost::detail::lcast::optimized_src_stream.39", align 8 ; 8 uses
  %5 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %6 = alloca %"class.boost::detail::lcast::optimized_src_stream.39", align 8 ; 9 uses
  %7 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %8 = alloca %"class.boost::detail::lcast::optimized_src_stream.39", align 8 ; 9 uses
  %9 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %10 = alloca %"class.boost::detail::lcast::optimized_src_stream.39", align 8 ; 9 uses
  %11 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %12 = alloca %"class.boost::detail::lcast::optimized_src_stream.39", align 8 ; 9 uses
  %13 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %14 = alloca %"class.boost::detail::lcast::optimized_src_stream.39", align 8 ; 9 uses
  %15 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %16 = alloca %"class.boost::detail::lcast::optimized_src_stream.39", align 8 ; 9 uses
  %17 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %18 = alloca %"class.boost::detail::lcast::optimized_src_stream.39", align 8 ; 9 uses
  %19 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %20 = alloca %"class.boost::detail::lcast::optimized_src_stream.39", align 8 ; 9 uses
  %21 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %22 = alloca %"class.boost::detail::lcast::optimized_src_stream.39", align 8 ; 9 uses
  %23 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %24 = alloca %"class.boost::detail::lcast::optimized_src_stream.39", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.a = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  store ptr %24, ptr %i.a, align 8, !tbaa !151
  %i.b = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %24, i64 29
  store ptr %i.c, ptr %i.b, align 8, !tbaa !152
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull align 8 dereferenceable(48) %24, i64 noundef 29, ptr noundef nonnull @.str.45, i32 noundef 17, double noundef 0.000000e+00) #27
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %24, i64 %i.e ; 3 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !152
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !151  ; 3 uses
  %i.h = icmp ugt ptr %i.f, %i.g
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp eq i64 %i.k, 1
  %or.cond = and i1 %i.h, %i.l
  br i1 %or.cond, label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i24, label %bb.a

bb.a:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %23, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @_ZTId, ptr %i.m, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr @_ZTIc, ptr %i.n, align 8, !tbaa !29
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %23) #28
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

common.resume:                                    ; preds = %bb.ap, %bb.aq, %bb.aw, %bb.av, %bb.ad, %bb.aa, %bb.x, %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.ah, %bb.f ], [ %i.bb, %bb.i ], [ %i.bv, %bb.l ], [ %i.cp, %bb.o ], [ %i.dj, %bb.r ], [ %i.ed, %bb.u ], [ %i.ex, %bb.x ], [ %i.fr, %bb.aa ], [ %i.gl, %bb.ad ], [ %i.ib, %bb.aq ], [ %i.ia, %bb.ap ], [ %i.ij, %bb.av ], [ %i.ik, %bb.aw ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %common.resume

_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i24: ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i
  %i.p = load i8, ptr %i.g, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  %i.q = sext i8 %0 to i32                        ; 9 uses
  %i.r = icmp eq i8 %i.p, %0
  %i.s = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 416, ptr noundef nonnull @__PRETTY_FUNCTION__._Z34test_conversion_from_float_to_charIdcEvT0_, i1 noundef zeroext %i.r) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  %i.t = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  store ptr %22, ptr %i.t, align 8, !tbaa !151
  %i.u = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %22, i64 29
  store ptr %i.v, ptr %i.u, align 8, !tbaa !152
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull align 8 dereferenceable(48) %22, i64 noundef 29, ptr noundef nonnull @.str.45, i32 noundef 17, double noundef 1.000000e+00) #27
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %22, i64 %i.x ; 3 uses
  store ptr %i.y, ptr %i.u, align 8, !tbaa !152
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !151  ; 3 uses
  %i.aa = icmp ugt ptr %i.y, %i.z
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp eq i64 %i.ad, 1
  %or.cond109 = and i1 %i.aa, %i.ae
  br i1 %or.cond109, label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i30, label %bb.d

bb.d:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %21, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr @_ZTId, ptr %i.af, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr @_ZTIc, ptr %i.ag, align 8, !tbaa !29
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %21) #28
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable
end_hunk_1
begin_hunk_2_@_ZN5boost6detail14test_with_implINS0_10lw_test_eqEidEEbT_PKcS5_S5_iS5_RKT0_RKT1_:bb.a
bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 67
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !21
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bn)
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef signext i8 %i.bu(ptr noundef nonnull align 8 dereferenceable(570) %i.bn, i8 noundef signext 10), !inline_history !1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.o, %bb.p
  %.0.i.i.i = phi i8 [ %i.br, %bb.o ], [ %i.bv, %bb.p ]
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext %.0.i.i.i)
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw) ; 0 uses
  %i.by = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.q, label %_ZN5boost6detail12test_resultsEv.exit17, !prof !49

bb.q:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ca = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i16 = icmp eq i32 %i.ca, 0
  br i1 %.not.i16, label %_ZN5boost6detail12test_resultsEv.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !52
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !53
  %i.cb = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail12test_resultsEv.exit17

_ZN5boost6detail12test_resultsEv.exit17:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.q, %bb.r
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !76
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !76
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.d, %bb.c, %bb.b, %_ZN5boost6detail12test_resultsEv.exit17
  ret i1 %i.d
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEET_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %3 = alloca %"class.boost::detail::lcast::optimized_src_stream.39", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !45
  store i8 0, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %3, ptr %i.c, align 8, !tbaa !151
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 29
  store ptr %i.e, ptr %i.d, align 8, !tbaa !152
  %i.f = load double, ptr %1, align 8, !tbaa !48  ; 5 uses
  %i.g = fcmp uno double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = bitcast double %i.f to i64
  %i.i = icmp slt i64 %i.h, 0
  %..i.i.i.i.i = select i1 %i.i, ptr @.str.42, ptr @.str.41
  br label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i

bb.c:                                             ; preds = %bb.a
  %i.j = call double @llvm.fabs.f64(double %i.f)
  %i.k = fcmp oeq double %i.j, +inf
  br i1 %i.k, label %bb.d, label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = bitcast double %i.f to i64
  %i.m = icmp slt i64 %i.l, 0
  %.9.i.i.i.i.i = select i1 %i.m, ptr @.str.44, ptr @.str.43
  br label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i

_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i: ; preds = %bb.d, %bb.b
  %.0.i.i.ph.i.i.i = phi ptr [ %.9.i.i.i.i.i, %bb.d ], [ %..i.i.i.i.i, %bb.b ] ; 4 uses
  store ptr %.0.i.i.ph.i.i.i, ptr %i.c, align 8, !tbaa !151
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i.ph.i.i.i) #27
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.ph.i.i.i, i64 %i.n ; 2 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !152
  br label %bb.e

_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i: ; preds = %bb.c
  %i.p = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 noundef 29, ptr noundef nonnull @.str.45, i32 noundef 17, double noundef %i.f) #27
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %3, i64 %i.q ; 3 uses
  store ptr %i.r, ptr %i.d, align 8, !tbaa !152
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %i.t = icmp ugt ptr %i.r, %i.s
  br i1 %i.t, label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge, label %bb.f

_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge: ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i
  %.pre = load i64, ptr %i.b, align 8, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i
  %i.u = phi i64 [ 0, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %.pre, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ]
  %i.v = phi ptr [ %i.o, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %i.r, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ]
  %i.w = phi ptr [ %.0.i.i.ph.i.i.i, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %i.s, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ] ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.u, ptr noundef %i.w, i64 noundef %i.z)
          to label %.thread unwind label %bb.i    ; 0 uses

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.f:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %2, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZTId, ptr %i.ab, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %i.ac, align 8, !tbaa !29
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %2) #28
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.body

bb.i:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.ad, %bb.h ]
  %i.af = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !21
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #23

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEdEET_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %3 = alloca %"class.boost::detail::lcast::optimized_src_stream.41", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !105
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !102
  store i32 0, ptr %i.a, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  store ptr %3, ptr %i.c, align 8, !tbaa !154
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 116
  store ptr %i.e, ptr %i.d, align 8, !tbaa !155
  %i.f = load double, ptr %1, align 8, !tbaa !48  ; 5 uses
  %i.g = fcmp uno double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = bitcast double %i.f to i64
  %i.i = icmp slt i64 %i.h, 0
  %..i.i.i.i.i = select i1 %i.i, ptr @.str.73, ptr @.str.72
  br label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i

bb.c:                                             ; preds = %bb.a
  %i.j = call double @llvm.fabs.f64(double %i.f)
  %i.k = fcmp oeq double %i.j, +inf
  br i1 %i.k, label %bb.d, label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = bitcast double %i.f to i64
  %i.m = icmp slt i64 %i.l, 0
  %.9.i.i.i.i.i = select i1 %i.m, ptr @.str.75, ptr @.str.74
  br label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i

_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i: ; preds = %bb.d, %bb.b
  %.0.i.i.ph.i.i.i = phi ptr [ %.9.i.i.i.i.i, %bb.d ], [ %..i.i.i.i.i, %bb.b ] ; 4 uses
  store ptr %.0.i.i.ph.i.i.i, ptr %i.c, align 8, !tbaa !154
  %i.n = call noundef i64 @wcslen(ptr noundef nonnull %.0.i.i.ph.i.i.i) #32
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.ph.i.i.i, i64 %i.n ; 2 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !155
  br label %bb.e

_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i: ; preds = %bb.c
  %i.p = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull align 8 dereferenceable(136) %3, i64 noundef 29, ptr noundef nonnull @.str.76, i32 noundef 17, double noundef %i.f) #27
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %3, i64 %i.q ; 3 uses
  store ptr %i.r, ptr %i.d, align 8, !tbaa !155
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %i.t = icmp ugt ptr %i.r, %i.s
  br i1 %i.t, label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge, label %bb.f

_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge: ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i
  %.pre = load i64, ptr %i.b, align 8, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i
  %i.u = phi i64 [ 0, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %.pre, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ]
  %i.v = phi ptr [ %i.o, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %i.r, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ]
  %i.w = phi ptr [ %.0.i.i.ph.i.i.i, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %i.s, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ] ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.u, ptr noundef %i.w, i64 noundef %i.aa)
          to label %.thread unwind label %bb.i    ; 0 uses

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.f:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %2, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZTId, ptr %i.ac, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZTINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE, ptr %i.ad, align 8, !tbaa !29
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %2) #28
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.body

bb.i:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.ae, %bb.h ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !101   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.a
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !21
  %i.aj = shl i64 %i.ai, 2
  %i.ak = add i64 %i.aj, 4
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #29
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z34test_conversion_from_float_to_charIecEvT0_(i8 noundef signext %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i:
  %1 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %2 = alloca %"class.boost::detail::lcast::optimized_src_stream.42", align 8 ; 8 uses
  %3 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %4 = alloca %"class.boost::detail::lcast::optimized_src_stream.42", align 8 ; 8 uses
  %5 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %6 = alloca %"class.boost::detail::lcast::optimized_src_stream.42", align 8 ; 9 uses
  %7 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %8 = alloca %"class.boost::detail::lcast::optimized_src_stream.42", align 8 ; 9 uses
  %9 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %10 = alloca %"class.boost::detail::lcast::optimized_src_stream.42", align 8 ; 9 uses
  %11 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %12 = alloca %"class.boost::detail::lcast::optimized_src_stream.42", align 8 ; 9 uses
  %13 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %14 = alloca %"class.boost::detail::lcast::optimized_src_stream.42", align 8 ; 9 uses
  %15 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %16 = alloca %"class.boost::detail::lcast::optimized_src_stream.42", align 8 ; 9 uses
  %17 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %18 = alloca %"class.boost::detail::lcast::optimized_src_stream.42", align 8 ; 9 uses
  %19 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %20 = alloca %"class.boost::detail::lcast::optimized_src_stream.42", align 8 ; 9 uses
  %21 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %22 = alloca %"class.boost::detail::lcast::optimized_src_stream.42", align 8 ; 9 uses
  %23 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %24 = alloca %"class.boost::detail::lcast::optimized_src_stream.42", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.a = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 2 uses
  store ptr %24, ptr %i.a, align 8, !tbaa !157
  %i.b = getelementptr inbounds nuw i8, ptr %24, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %24, i64 33
  store ptr %i.c, ptr %i.b, align 8, !tbaa !158
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull align 8 dereferenceable(56) %24, i64 noundef 33, ptr noundef nonnull @.str.537, i32 noundef 21, x86_fp80 noundef 0.000000e+00) #27
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %24, i64 %i.e ; 3 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !158
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !157  ; 3 uses
  %i.h = icmp ugt ptr %i.f, %i.g
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp eq i64 %i.k, 1
  %or.cond = and i1 %i.h, %i.l
  br i1 %or.cond, label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i24, label %bb.a

bb.a:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %23, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @_ZTIe, ptr %i.m, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr @_ZTIc, ptr %i.n, align 8, !tbaa !29
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %23) #28
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

common.resume:                                    ; preds = %bb.ap, %bb.aq, %bb.aw, %bb.av, %bb.ad, %bb.aa, %bb.x, %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.ah, %bb.f ], [ %i.bb, %bb.i ], [ %i.bv, %bb.l ], [ %i.cp, %bb.o ], [ %i.dj, %bb.r ], [ %i.ed, %bb.u ], [ %i.ex, %bb.x ], [ %i.fr, %bb.aa ], [ %i.gl, %bb.ad ], [ %i.ib, %bb.aq ], [ %i.ia, %bb.ap ], [ %i.ij, %bb.av ], [ %i.ik, %bb.aw ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %common.resume

_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i24: ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i
  %i.p = load i8, ptr %i.g, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  %i.q = sext i8 %0 to i32                        ; 9 uses
  %i.r = icmp eq i8 %i.p, %0
  %i.s = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 416, ptr noundef nonnull @__PRETTY_FUNCTION__._Z34test_conversion_from_float_to_charIecEvT0_, i1 noundef zeroext %i.r) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  %i.t = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 2 uses
  store ptr %22, ptr %i.t, align 8, !tbaa !157
  %i.u = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %22, i64 33
  store ptr %i.v, ptr %i.u, align 8, !tbaa !158
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull align 8 dereferenceable(56) %22, i64 noundef 33, ptr noundef nonnull @.str.537, i32 noundef 21, x86_fp80 noundef 1.000000e+00) #27
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %22, i64 %i.x ; 3 uses
  store ptr %i.y, ptr %i.u, align 8, !tbaa !158
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !157  ; 3 uses
  %i.aa = icmp ugt ptr %i.y, %i.z
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp eq i64 %i.ad, 1
  %or.cond119 = and i1 %i.aa, %i.ae
  br i1 %or.cond119, label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i30, label %bb.d

bb.d:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %21, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr @_ZTIe, ptr %i.af, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr @_ZTIc, ptr %i.ag, align 8, !tbaa !29
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %21) #28
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %common.resume

_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i30: ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i24
  %i.ai = load i8, ptr %i.z, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  %i.aj = sext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.q, 1
  %i.al = icmp eq i32 %i.ak, %i.aj
  %i.am = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 417, ptr noundef nonnull @__PRETTY_FUNCTION__._Z34test_conversion_from_float_to_charIecEvT0_, i1 noundef zeroext %i.al) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
end_hunk_2
begin_hunk_3_@_Z34test_converion_from_to_float_typesIeEvv:bb.a
  %i.dn = call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.dj)
  %i.do = fcmp oeq x86_fp80 %i.dn, +inf
  br i1 %i.do, label %bb.r, label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.dp = bitcast x86_fp80 %i.dj to i80
  %i.dq = icmp slt i80 %i.dp, 0
  %.9.i.i.i.i.i.i = select i1 %i.dq, ptr @.str.44, ptr @.str.43
  br label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i

_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i: ; preds = %bb.r, %bb.p
  %.0.i.i.ph.i.i.i.i = phi ptr [ %.9.i.i.i.i.i.i, %bb.r ], [ %..i.i.i.i.i.i, %bb.p ] ; 4 uses
  store ptr %.0.i.i.ph.i.i.i.i, ptr %i.t, align 8, !tbaa !157, !noalias !428
  %i.dr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i.ph.i.i.i.i) #27, !noalias !428
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i.i.ph.i.i.i.i, i64 %i.dr ; 2 uses
  store ptr %i.ds, ptr %i.u, align 8, !tbaa !158, !noalias !428
  br label %bb.s

_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i: ; preds = %bb.q
  %i.dt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull align 8 dereferenceable(56) %23, i64 noundef 33, ptr noundef nonnull @.str.537, i32 noundef 21, x86_fp80 noundef %i.dj) #27
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %23, i64 %i.du ; 3 uses
  store ptr %i.dv, ptr %i.u, align 8, !tbaa !158, !noalias !428
  %i.dw = load ptr, ptr %i.t, align 8, !tbaa !157, !noalias !428 ; 2 uses
  %i.dx = icmp ugt ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i, label %bb.t

_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i: ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i
  %.pre.i = load i64, ptr %i.s, align 8, !tbaa !45, !alias.scope !428
  br label %bb.s

bb.s:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i
  %i.dy = phi i64 [ 0, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i ], [ %.pre.i, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i ]
  %i.dz = phi ptr [ %i.ds, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i ], [ %i.dv, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i ]
  %i.ea = phi ptr [ %.0.i.i.ph.i.i.i.i, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i ], [ %i.dw, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i ] ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, i64 noundef 0, i64 noundef %i.dy, ptr noundef %i.ea, i64 noundef %i.ed)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEeEET_RKT0_.exit unwind label %bb.w ; 0 uses

bb.t:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27, !noalias !428
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27, !noalias !428
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %22, align 8, !tbaa !23, !noalias !428
  %i.ef = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr @_ZTIe, ptr %i.ef, align 8, !tbaa !28, !noalias !428
  %i.eg = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %i.eg, align 8, !tbaa !29, !noalias !428
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %22) #28
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27, !noalias !428
  br label %.body.i

bb.w:                                             ; preds = %bb.s
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.w, %bb.v
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ei, %bb.w ], [ %i.eh, %bb.v ] ; 2 uses
  %i.ej = load ptr, ptr %30, align 8, !tbaa !44, !alias.scope !428 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.r
  br i1 %i.ek, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.body.i
  %i.el = load i64, ptr %i.r, align 8, !tbaa !21, !alias.scope !428
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #29
  br label %common.resume

common.resume:                                    ; preds = %.body.i138, %.body.i115, %.body.i92, %.body.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.cx
  %common.resume.op = phi { ptr, i32 } [ %.pn71, %bb.cx ], [ %eh.lpad-body.i116, %.body.i115 ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i93, %.body.i92 ], [ %eh.lpad-body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %eh.lpad-body.i93, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i ], [ %eh.lpad-body.i116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117 ], [ %eh.lpad-body.i139, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i140 ], [ %eh.lpad-body.i139, %.body.i138 ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEeEET_RKT0_.exit: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27, !noalias !428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  store x86_fp80 0.000000e+00, ptr %i.h, align 16, !tbaa !55
  %i.en = load ptr, ptr %30, align 8, !tbaa !44   ; 3 uses
  %i.eo = load i64, ptr %i.s, align 8, !tbaa !45
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.eo ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  store ptr %i.en, ptr %21, align 8, !tbaa !19
  store ptr %i.ep, ptr %i.w, align 8, !tbaa !20
  %i.eq = call noundef zeroext i1 @_ZN5boost6detail18parse_inf_nan_implIceEEbPKT_S4_RT0_S4_S4_S4_S4_S2_S2_(ptr noundef %i.en, ptr noundef %i.ep, ptr noundef nonnull align 16 dereferenceable(16) %i.h, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i8 noundef signext 40, i8 noundef signext 41) #27
  br i1 %i.eq, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread.i84, label %bb.x

_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread.i84: ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEeEET_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.ab

bb.x:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEeEET_RKT0_.exit
  %i.er = invoke noundef zeroext i1 @_ZN5boost6detail5lcast16to_target_streamIcSt11char_traitsIcEE20shr_using_base_classIeEEbRT_(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 16 dereferenceable(16) %i.h)
          to label %.noexc85 unwind label %bb.ap

.noexc85:                                         ; preds = %bb.x
  br i1 %i.er, label %bb.y, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.i82

bb.y:                                             ; preds = %.noexc85
  %i.es = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !21
  %i.ev = add i8 %i.eu, -43                       ; 2 uses
  %i.ew = call i8 @llvm.fshl.i8(i8 %i.ev, i8 %i.ev, i8 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  switch i8 %i.ew, label %bb.ab [
    i8 29, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread2.i83
    i8 13, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread2.i83
    i8 1, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread2.i83
    i8 0, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread2.i83
  ]

_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.i82: ; preds = %.noexc85
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread2.i83

_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread2.i83: ; preds = %bb.y, %bb.y, %bb.y, %bb.y, %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.i82
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %20, align 8, !tbaa !23
  %i.ex = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %i.ex, align 8, !tbaa !28
  %i.ey = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr @_ZTIe, ptr %i.ey, align 8, !tbaa !29
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %20) #28
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread2.i83
  unreachable

bb.aa:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread2.i83
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %.body86

bb.ab:                                            ; preds = %bb.y, %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread.i84
  %i.fa = load x86_fp80, ptr %i.h, align 16, !tbaa !55 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  %i.fb = load ptr, ptr %30, align 8, !tbaa !44   ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.r
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.ab
  %i.fd = load i64, ptr %i.r, align 8, !tbaa !21
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  %i.ff = load x86_fp80, ptr %i.k, align 16, !tbaa !55
  %i.fg = fsub x86_fp80 %i.ff, %i.fa
  %i.fh = fadd x86_fp80 %i.fg, f0x3FC18000000000000000
  %i.fi = fcmp ole x86_fp80 %i.fh, f0x3FC28000000000000000
  %i.fj = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.509, ptr noundef nonnull @.str.1, i32 noundef 394, ptr noundef nonnull @__PRETTY_FUNCTION__._Z34test_converion_from_to_float_typesIeEvv, i1 noundef zeroext %i.fi) ; 0 uses
  %i.fk = load x86_fp80, ptr %i.k, align 16, !tbaa !55
  %i.fl = fsub x86_fp80 %i.fa, %i.fk
  %i.fm = fadd x86_fp80 %i.fl, f0x3FC18000000000000000
  %i.fn = fcmp ole x86_fp80 %i.fm, f0x3FC28000000000000000
  %i.fo = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.510, ptr noundef nonnull @.str.1, i32 noundef 394, ptr noundef nonnull @__PRETTY_FUNCTION__._Z34test_converion_from_to_float_typesIeEvv, i1 noundef zeroext %i.fn) ; 0 uses
  store x86_fp80 %i.dj, ptr %i.k, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !429)
  store ptr %i.x, ptr %31, align 8, !tbaa !105, !alias.scope !429
  store i64 0, ptr %i.y, align 8, !tbaa !102, !alias.scope !429
  store i32 0, ptr %i.x, align 8, !tbaa !95, !alias.scope !429
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27, !noalias !429
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !tbaa !106, !noalias !429
  br i1 %i.dk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.fp = bitcast x86_fp80 %i.dj to i80
  %i.fq = icmp slt i80 %i.fp, 0
  %..i.i.i.i.i.i97 = select i1 %i.fq, ptr @.str.73, ptr @.str.72
  br label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.fr = call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.dj)
  %i.fs = fcmp oeq x86_fp80 %i.fr, +inf
  br i1 %i.fs, label %bb.ae, label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.ft = bitcast x86_fp80 %i.dj to i80
  %i.fu = icmp slt i80 %i.ft, 0
  %.9.i.i.i.i.i.i95 = select i1 %i.fu, ptr @.str.75, ptr @.str.74
  br label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i

_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i: ; preds = %bb.ae, %bb.ac
  %.0.i.i.ph.i.i.i.i96 = phi ptr [ %.9.i.i.i.i.i.i95, %bb.ae ], [ %..i.i.i.i.i.i97, %bb.ac ] ; 4 uses
  store ptr %.0.i.i.ph.i.i.i.i96, ptr %i.z, align 8, !tbaa !160, !noalias !429
  %i.fv = call noundef i64 @wcslen(ptr noundef nonnull %.0.i.i.ph.i.i.i.i96) #32, !noalias !429
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.ph.i.i.i.i96, i64 %i.fv ; 2 uses
  store ptr %i.fw, ptr %i.aa, align 8, !tbaa !161, !noalias !429
  br label %bb.af

_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i: ; preds = %bb.ad
  %i.fx = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull align 8 dereferenceable(152) %19, i64 noundef 33, ptr noundef nonnull @.str.538, i32 noundef 21, x86_fp80 noundef %i.dj) #27
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %19, i64 %i.fy ; 3 uses
  store ptr %i.fz, ptr %i.aa, align 8, !tbaa !161, !noalias !429
  %i.ga = load ptr, ptr %i.z, align 8, !tbaa !160, !noalias !429 ; 2 uses
  %i.gb = icmp ugt ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i, label %bb.ag

_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i: ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i
  %.pre.i94 = load i64, ptr %i.y, align 8, !tbaa !102, !alias.scope !429
  br label %bb.af

bb.af:                                            ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i
  %i.gc = phi i64 [ 0, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i ], [ %.pre.i94, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i ]
  %i.gd = phi ptr [ %i.fw, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i ], [ %i.fz, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i ]
  %i.ge = phi ptr [ %.0.i.i.ph.i.i.i.i96, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i ], [ %i.ga, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i ] ; 2 uses
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = ashr exact i64 %i.gh, 2
  %i.gj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %31, i64 noundef 0, i64 noundef %i.gc, ptr noundef %i.ge, i64 noundef %i.gi)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEeEET_RKT0_.exit unwind label %bb.aj ; 0 uses

bb.ag:                                            ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27, !noalias !429
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27, !noalias !429
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %18, align 8, !tbaa !23, !noalias !429
  %i.gk = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr @_ZTIe, ptr %i.gk, align 8, !tbaa !28, !noalias !429
  %i.gl = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr @_ZTINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE, ptr %i.gl, align 8, !tbaa !29, !noalias !429
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %18) #28
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27, !noalias !429
  br label %.body.i92

bb.aj:                                            ; preds = %bb.af
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i92

.body.i92:                                        ; preds = %bb.aj, %bb.ai
  %eh.lpad-body.i93 = phi { ptr, i32 } [ %i.gn, %bb.aj ], [ %i.gm, %bb.ai ] ; 2 uses
  %i.go = load ptr, ptr %31, align 8, !tbaa !101, !alias.scope !429 ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.x
  br i1 %i.gp, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %.body.i92
  %i.gq = load i64, ptr %i.x, align 8, !tbaa !21, !alias.scope !429
  %i.gr = shl i64 %i.gq, 2
  %i.gs = add i64 %i.gr, 4
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #29
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEeEET_RKT0_.exit: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27, !noalias !429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store x86_fp80 0.000000e+00, ptr %i.g, align 16, !tbaa !55
  %i.gt = load ptr, ptr %31, align 8, !tbaa !101  ; 3 uses
  %i.gu = load i64, ptr %i.y, align 8, !tbaa !102
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.gu ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  store ptr %i.gt, ptr %17, align 8, !tbaa !97
  store ptr %i.gv, ptr %i.ac, align 8, !tbaa !98
  %i.gw = call noundef zeroext i1 @_ZN5boost6detail18parse_inf_nan_implIweEEbPKT_S4_RT0_S4_S4_S4_S4_S2_S2_(ptr noundef %i.gt, ptr noundef %i.gv, ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef signext 40, i32 noundef signext 41) #27
  br i1 %i.gw, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread.i100, label %bb.ak

_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread.i100: ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEeEET_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.ao

bb.ak:                                            ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEeEET_RKT0_.exit
  %i.gx = invoke noundef zeroext i1 @_ZN5boost6detail5lcast16to_target_streamIwSt11char_traitsIwEE20shr_using_base_classIeEEbRT_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 16 dereferenceable(16) %i.g)
          to label %.noexc101 unwind label %bb.aq

.noexc101:                                        ; preds = %bb.ak
  br i1 %i.gx, label %bb.al, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i98

bb.al:                                            ; preds = %.noexc101
  %i.gy = load ptr, ptr %i.ac, align 8, !tbaa !98
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !95
  %i.hb = add i32 %i.ha, -43                      ; 2 uses
  %i.hc = call i32 @llvm.fshl.i32(i32 %i.hb, i32 %i.hb, i32 31)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  switch i32 %i.hc, label %bb.ao [
    i32 29, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread2.i99
    i32 13, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread2.i99
    i32 1, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread2.i99
    i32 0, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread2.i99
  ]

_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i98: ; preds = %.noexc101
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread2.i99

_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread2.i99: ; preds = %bb.al, %bb.al, %bb.al, %bb.al, %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i98
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %16, align 8, !tbaa !23
  %i.hd = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr @_ZTINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE, ptr %i.hd, align 8, !tbaa !28
  %i.he = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr @_ZTIe, ptr %i.he, align 8, !tbaa !29
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %16) #28
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread2.i99
  unreachable

bb.an:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread2.i99
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %.body102

bb.ao:                                            ; preds = %bb.al, %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread.i100
  %i.hg = load x86_fp80, ptr %i.g, align 16, !tbaa !55 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  %i.hh = load ptr, ptr %31, align 8, !tbaa !101  ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.x
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i105: ; preds = %bb.ao
  %i.hj = load i64, ptr %i.x, align 8, !tbaa !21
  %i.hk = shl i64 %i.hj, 2
  %i.hl = add i64 %i.hk, 4
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #29
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit107: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  %i.hm = load x86_fp80, ptr %i.k, align 16, !tbaa !55
  %i.hn = fsub x86_fp80 %i.hm, %i.hg
  %i.ho = fadd x86_fp80 %i.hn, f0x3FC18000000000000000
  %i.hp = fcmp ole x86_fp80 %i.ho, f0x3FC28000000000000000
  %i.hq = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.509, ptr noundef nonnull @.str.1, i32 noundef 394, ptr noundef nonnull @__PRETTY_FUNCTION__._Z34test_converion_from_to_float_typesIeEvv, i1 noundef zeroext %i.hp) ; 0 uses
  %i.hr = load x86_fp80, ptr %i.k, align 16, !tbaa !55
  %i.hs = fsub x86_fp80 %i.hg, %i.hr
  %i.ht = fadd x86_fp80 %i.hs, f0x3FC18000000000000000
  %i.hu = fcmp ole x86_fp80 %i.ht, f0x3FC28000000000000000
  %i.hv = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.510, ptr noundef nonnull @.str.1, i32 noundef 394, ptr noundef nonnull @__PRETTY_FUNCTION__._Z34test_converion_from_to_float_typesIeEvv, i1 noundef zeroext %i.hu) ; 0 uses
  %i.hw = add nsw i32 %.1310, 1                   ; 2 uses
  %exitcond316.not = icmp eq i32 %i.hw, 51
  br i1 %exitcond316.not, label %bb.ar, label %bb.o, !llvm.loop !418

bb.ap:                                            ; preds = %bb.x
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %.body86

.body86:                                          ; preds = %bb.aa, %bb.ap
  %eh.lpad-body87 = phi { ptr, i32 } [ %i.hx, %bb.ap ], [ %i.ez, %bb.aa ]
  %i.hy = load ptr, ptr %30, align 8, !tbaa !44   ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.r
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %.body86
  %i.ia = load i64, ptr %i.r, align 8, !tbaa !21
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %.body86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  br label %bb.cx

bb.aq:                                            ; preds = %bb.ak
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.body102

.body102:                                         ; preds = %bb.an, %bb.aq
  %eh.lpad-body103 = phi { ptr, i32 } [ %i.ic, %bb.aq ], [ %i.hf, %bb.an ]
  %i.id = load ptr, ptr %31, align 8, !tbaa !101  ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.x
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i111: ; preds = %.body102
  %i.if = load i64, ptr %i.x, align 8, !tbaa !21
  %i.ig = shl i64 %i.if, 2
  %i.ih = add i64 %i.ig, 4
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ih) #29
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit113: ; preds = %.body102, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
end_hunk_3
begin_hunk_4_@_Z34test_converion_from_to_float_typesIeEvv:bb.a
  %..i.i.i.i.i.i125 = select i1 %i.iu, ptr @.str.42, ptr @.str.41
  br label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i123

bb.au:                                            ; preds = %bb.as
  %i.iv = call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.ir)
  %i.iw = fcmp oeq x86_fp80 %i.iv, +inf
  br i1 %i.iw, label %bb.av, label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i114

bb.av:                                            ; preds = %bb.au
  %i.ix = bitcast x86_fp80 %i.ir to i80
  %i.iy = icmp slt i80 %i.ix, 0
  %.9.i.i.i.i.i.i122 = select i1 %i.iy, ptr @.str.44, ptr @.str.43
  br label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i123

_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i123: ; preds = %bb.av, %bb.at
  %.0.i.i.ph.i.i.i.i124 = phi ptr [ %.9.i.i.i.i.i.i122, %bb.av ], [ %..i.i.i.i.i.i125, %bb.at ] ; 4 uses
  store ptr %.0.i.i.ph.i.i.i.i124, ptr %i.cy, align 8, !tbaa !157, !noalias !430
  %i.iz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i.ph.i.i.i.i124) #27, !noalias !430
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.i.i.ph.i.i.i.i124, i64 %i.iz ; 2 uses
  store ptr %i.ja, ptr %i.cz, align 8, !tbaa !158, !noalias !430
  br label %bb.aw

_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i114: ; preds = %bb.au
  %i.jb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull align 8 dereferenceable(56) %15, i64 noundef 33, ptr noundef nonnull @.str.537, i32 noundef 21, x86_fp80 noundef %i.ir) #27
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds i8, ptr %15, i64 %i.jc ; 3 uses
  store ptr %i.jd, ptr %i.cz, align 8, !tbaa !158, !noalias !430
  %i.je = load ptr, ptr %i.cy, align 8, !tbaa !157, !noalias !430 ; 2 uses
  %i.jf = icmp ugt ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i120, label %bb.ax

_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i120: ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i114
  %.pre.i121 = load i64, ptr %i.cx, align 8, !tbaa !45, !alias.scope !430
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i120, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i123
  %i.jg = phi i64 [ 0, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i123 ], [ %.pre.i121, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i120 ]
  %i.jh = phi ptr [ %i.ja, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i123 ], [ %i.jd, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i120 ]
  %i.ji = phi ptr [ %.0.i.i.ph.i.i.i.i124, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i123 ], [ %i.je, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i120 ] ; 2 uses
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = sub i64 %i.jj, %i.jk
  %i.jm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %32, i64 noundef 0, i64 noundef %i.jg, ptr noundef %i.ji, i64 noundef %i.jl)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEeEET_RKT0_.exit126 unwind label %bb.ba ; 0 uses

bb.ax:                                            ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27, !noalias !430
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27, !noalias !430
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %14, align 8, !tbaa !23, !noalias !430
  %i.jn = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @_ZTIe, ptr %i.jn, align 8, !tbaa !28, !noalias !430
  %i.jo = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %i.jo, align 8, !tbaa !29, !noalias !430
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %14) #28
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27, !noalias !430
  br label %.body.i115

bb.ba:                                            ; preds = %bb.aw
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i115

.body.i115:                                       ; preds = %bb.ba, %bb.az
  %eh.lpad-body.i116 = phi { ptr, i32 } [ %i.jq, %bb.ba ], [ %i.jp, %bb.az ] ; 2 uses
  %i.jr = load ptr, ptr %32, align 8, !tbaa !44, !alias.scope !430 ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.cw
  br i1 %i.js, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117: ; preds = %.body.i115
  %i.jt = load i64, ptr %i.cw, align 8, !tbaa !21, !alias.scope !430
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.ju) #29
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEeEET_RKT0_.exit126: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27, !noalias !430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store x86_fp80 0.000000e+00, ptr %i.f, align 16, !tbaa !55
  %i.jv = load ptr, ptr %32, align 8, !tbaa !44   ; 3 uses
  %i.jw = load i64, ptr %i.cx, align 8, !tbaa !45
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store ptr %i.jv, ptr %13, align 8, !tbaa !19
  store ptr %i.jx, ptr %i.db, align 8, !tbaa !20
  %i.jy = call noundef zeroext i1 @_ZN5boost6detail18parse_inf_nan_implIceEEbPKT_S4_RT0_S4_S4_S4_S4_S2_S2_(ptr noundef %i.jv, ptr noundef %i.jx, ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i8 noundef signext 40, i8 noundef signext 41) #27
  br i1 %i.jy, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread.i129, label %bb.bb

_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread.i129: ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEeEET_RKT0_.exit126
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.bf

bb.bb:                                            ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEeEET_RKT0_.exit126
  %i.jz = invoke noundef zeroext i1 @_ZN5boost6detail5lcast16to_target_streamIcSt11char_traitsIcEE20shr_using_base_classIeEEbRT_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 16 dereferenceable(16) %i.f)
          to label %.noexc130 unwind label %bb.bt

.noexc130:                                        ; preds = %bb.bb
  br i1 %i.jz, label %bb.bc, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.i127

bb.bc:                                            ; preds = %.noexc130
  %i.ka = load ptr, ptr %i.db, align 8, !tbaa !20
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 -1
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !21
  %i.kd = add i8 %i.kc, -43                       ; 2 uses
  %i.ke = call i8 @llvm.fshl.i8(i8 %i.kd, i8 %i.kd, i8 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  switch i8 %i.ke, label %bb.bf [
    i8 29, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread2.i128
    i8 13, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread2.i128
    i8 1, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread2.i128
    i8 0, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread2.i128
  ]

_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.i127: ; preds = %.noexc130
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread2.i128

_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread2.i128: ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc, %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.i127
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %12, align 8, !tbaa !23
  %i.kf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %i.kf, align 8, !tbaa !28
  %i.kg = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr @_ZTIe, ptr %i.kg, align 8, !tbaa !29
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %12) #28
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread2.i128
  unreachable

bb.be:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread2.i128
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %.body131

bb.bf:                                            ; preds = %bb.bc, %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_RT_.exit.thread.i129
  %i.ki = load x86_fp80, ptr %i.f, align 16, !tbaa !55 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.kj = load ptr, ptr %32, align 8, !tbaa !44   ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.cw
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.bf
  %i.kl = load i64, ptr %i.cw, align 8, !tbaa !21
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  %i.kn = load x86_fp80, ptr %i.k, align 16, !tbaa !55
  %i.ko = fsub x86_fp80 %i.kn, %i.ki
  %i.kp = fadd x86_fp80 %i.ko, f0x3FC18000000000000000
  %i.kq = fcmp ole x86_fp80 %i.kp, f0x3FC28000000000000000
  %i.kr = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.509, ptr noundef nonnull @.str.1, i32 noundef 398, ptr noundef nonnull @__PRETTY_FUNCTION__._Z34test_converion_from_to_float_typesIeEvv, i1 noundef zeroext %i.kq) ; 0 uses
  %i.ks = load x86_fp80, ptr %i.k, align 16, !tbaa !55
  %i.kt = fsub x86_fp80 %i.ki, %i.ks
  %i.ku = fadd x86_fp80 %i.kt, f0x3FC18000000000000000
  %i.kv = fcmp ole x86_fp80 %i.ku, f0x3FC28000000000000000
  %i.kw = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.510, ptr noundef nonnull @.str.1, i32 noundef 398, ptr noundef nonnull @__PRETTY_FUNCTION__._Z34test_converion_from_to_float_typesIeEvv, i1 noundef zeroext %i.kv) ; 0 uses
  store x86_fp80 %i.ir, ptr %i.k, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  store ptr %i.dc, ptr %33, align 8, !tbaa !105, !alias.scope !431
  store i64 0, ptr %i.dd, align 8, !tbaa !102, !alias.scope !431
  store i32 0, ptr %i.dc, align 8, !tbaa !95, !alias.scope !431
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27, !noalias !431
  store <2 x ptr> %i.dg, ptr %i.de, align 8, !tbaa !106, !noalias !431
  br i1 %i.is, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.kx = bitcast x86_fp80 %i.ir to i80
  %i.ky = icmp slt i80 %i.kx, 0
  %..i.i.i.i.i.i148 = select i1 %i.ky, ptr @.str.73, ptr @.str.72
  br label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i146

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.kz = call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.ir)
  %i.la = fcmp oeq x86_fp80 %i.kz, +inf
  br i1 %i.la, label %bb.bi, label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i137

bb.bi:                                            ; preds = %bb.bh
  %i.lb = bitcast x86_fp80 %i.ir to i80
  %i.lc = icmp slt i80 %i.lb, 0
  %.9.i.i.i.i.i.i145 = select i1 %i.lc, ptr @.str.75, ptr @.str.74
  br label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i146

_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i146: ; preds = %bb.bi, %bb.bg
  %.0.i.i.ph.i.i.i.i147 = phi ptr [ %.9.i.i.i.i.i.i145, %bb.bi ], [ %..i.i.i.i.i.i148, %bb.bg ] ; 4 uses
  store ptr %.0.i.i.ph.i.i.i.i147, ptr %i.de, align 8, !tbaa !160, !noalias !431
  %i.ld = call noundef i64 @wcslen(ptr noundef nonnull %.0.i.i.ph.i.i.i.i147) #32, !noalias !431
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.ph.i.i.i.i147, i64 %i.ld ; 2 uses
  store ptr %i.le, ptr %i.df, align 8, !tbaa !161, !noalias !431
  br label %bb.bj

_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i137: ; preds = %bb.bh
  %i.lf = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull align 8 dereferenceable(152) %11, i64 noundef 33, ptr noundef nonnull @.str.538, i32 noundef 21, x86_fp80 noundef %i.ir) #27
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [4 x i8], ptr %11, i64 %i.lg ; 3 uses
  store ptr %i.lh, ptr %i.df, align 8, !tbaa !161, !noalias !431
  %i.li = load ptr, ptr %i.de, align 8, !tbaa !160, !noalias !431 ; 2 uses
  %i.lj = icmp ugt ptr %i.lh, %i.li
  br i1 %i.lj, label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i143, label %bb.bk

_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i143: ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i137
  %.pre.i144 = load i64, ptr %i.dd, align 8, !tbaa !102, !alias.scope !431
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i143, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i146
  %i.lk = phi i64 [ 0, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i146 ], [ %.pre.i144, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i143 ]
  %i.ll = phi ptr [ %i.le, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i146 ], [ %i.lh, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i143 ]
  %i.lm = phi ptr [ %.0.i.i.ph.i.i.i.i147, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i.i146 ], [ %i.li, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge.i143 ] ; 2 uses
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = sub i64 %i.ln, %i.lo
  %i.lq = ashr exact i64 %i.lp, 2
  %i.lr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %33, i64 noundef 0, i64 noundef %i.lk, ptr noundef %i.lm, i64 noundef %i.lq)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEeEET_RKT0_.exit149 unwind label %bb.bn ; 0 uses

bb.bk:                                            ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !431
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27, !noalias !431
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %10, align 8, !tbaa !23, !noalias !431
  %i.ls = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @_ZTIe, ptr %i.ls, align 8, !tbaa !28, !noalias !431
  %i.lt = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr @_ZTINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE, ptr %i.lt, align 8, !tbaa !29, !noalias !431
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %10) #28
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !431
  br label %.body.i138

bb.bn:                                            ; preds = %bb.bj
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i138

.body.i138:                                       ; preds = %bb.bn, %bb.bm
  %eh.lpad-body.i139 = phi { ptr, i32 } [ %i.lv, %bb.bn ], [ %i.lu, %bb.bm ] ; 2 uses
  %i.lw = load ptr, ptr %33, align 8, !tbaa !101, !alias.scope !431 ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.dc
  br i1 %i.lx, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i140

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i140: ; preds = %.body.i138
  %i.ly = load i64, ptr %i.dc, align 8, !tbaa !21, !alias.scope !431
  %i.lz = shl i64 %i.ly, 2
  %i.ma = add i64 %i.lz, 4
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.ma) #29
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEeEET_RKT0_.exit149: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store x86_fp80 0.000000e+00, ptr %i.e, align 16, !tbaa !55
  %i.mb = load ptr, ptr %33, align 8, !tbaa !101  ; 3 uses
  %i.mc = load i64, ptr %i.dd, align 8, !tbaa !102
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.mc ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %i.mb, ptr %9, align 8, !tbaa !97
  store ptr %i.md, ptr %i.dh, align 8, !tbaa !98
  %i.me = call noundef zeroext i1 @_ZN5boost6detail18parse_inf_nan_implIweEEbPKT_S4_RT0_S4_S4_S4_S4_S2_S2_(ptr noundef %i.mb, ptr noundef %i.md, ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef signext 40, i32 noundef signext 41) #27
  br i1 %i.me, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread.i152, label %bb.bo

_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread.i152: ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEeEET_RKT0_.exit149
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.bs

bb.bo:                                            ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEeEET_RKT0_.exit149
  %i.mf = invoke noundef zeroext i1 @_ZN5boost6detail5lcast16to_target_streamIwSt11char_traitsIwEE20shr_using_base_classIeEEbRT_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) %i.e)
          to label %.noexc153 unwind label %bb.bu

.noexc153:                                        ; preds = %bb.bo
  br i1 %i.mf, label %bb.bp, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i150

bb.bp:                                            ; preds = %.noexc153
  %i.mg = load ptr, ptr %i.dh, align 8, !tbaa !98
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 -4
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !95
  %i.mj = add i32 %i.mi, -43                      ; 2 uses
  %i.mk = call i32 @llvm.fshl.i32(i32 %i.mj, i32 %i.mj, i32 31)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  switch i32 %i.mk, label %bb.bs [
    i32 29, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread2.i151
    i32 13, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread2.i151
    i32 1, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread2.i151
    i32 0, label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread2.i151
  ]

_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i150: ; preds = %.noexc153
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread2.i151

_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread2.i151: ; preds = %bb.bp, %bb.bp, %bb.bp, %bb.bp, %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i150
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %8, align 8, !tbaa !23
  %i.ml = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @_ZTINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE, ptr %i.ml, align 8, !tbaa !28
  %i.mm = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @_ZTIe, ptr %i.mm, align 8, !tbaa !29
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %8) #28
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread2.i151
  unreachable

bb.br:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread2.i151
  %i.mn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %.body154

bb.bs:                                            ; preds = %bb.bp, %_ZN5boost10conversion6detail19try_lexical_convertIeNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.thread.i152
  %i.mo = load x86_fp80, ptr %i.e, align 16, !tbaa !55 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.mp = load ptr, ptr %33, align 8, !tbaa !101  ; 2 uses
  %i.mq = icmp eq ptr %i.mp, %i.dc
  br i1 %i.mq, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i157: ; preds = %bb.bs
  %i.mr = load i64, ptr %i.dc, align 8, !tbaa !21
  %i.ms = shl i64 %i.mr, 2
  %i.mt = add i64 %i.ms, 4
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.mt) #29
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit159: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  %i.mu = load x86_fp80, ptr %i.k, align 16, !tbaa !55
  %i.mv = fsub x86_fp80 %i.mu, %i.mo
  %i.mw = fadd x86_fp80 %i.mv, f0x3FC18000000000000000
  %i.mx = fcmp ole x86_fp80 %i.mw, f0x3FC28000000000000000
  %i.my = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.509, ptr noundef nonnull @.str.1, i32 noundef 398, ptr noundef nonnull @__PRETTY_FUNCTION__._Z34test_converion_from_to_float_typesIeEvv, i1 noundef zeroext %i.mx) ; 0 uses
  %i.mz = load x86_fp80, ptr %i.k, align 16, !tbaa !55
  %i.na = fsub x86_fp80 %i.mo, %i.mz
  %i.nb = fadd x86_fp80 %i.na, f0x3FC18000000000000000
  %i.nc = fcmp ole x86_fp80 %i.nb, f0x3FC28000000000000000
  %i.nd = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.510, ptr noundef nonnull @.str.1, i32 noundef 398, ptr noundef nonnull @__PRETTY_FUNCTION__._Z34test_converion_from_to_float_typesIeEvv, i1 noundef zeroext %i.nc) ; 0 uses
  %i.ne = add nsw i32 %.2312, 1                   ; 2 uses
  %exitcond317.not = icmp eq i32 %i.ne, 51
  br i1 %exitcond317.not, label %bb.bv, label %bb.as, !llvm.loop !424

bb.bt:                                            ; preds = %bb.bb
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %.body131

.body131:                                         ; preds = %bb.be, %bb.bt
  %eh.lpad-body132 = phi { ptr, i32 } [ %i.nf, %bb.bt ], [ %i.kh, %bb.be ]
  %i.ng = load ptr, ptr %32, align 8, !tbaa !44   ; 2 uses
  %i.nh = icmp eq ptr %i.ng, %i.cw
  br i1 %i.nh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %.body131
  %i.ni = load i64, ptr %i.cw, align 8, !tbaa !21
  %i.nj = add i64 %i.ni, 1
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %.body131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  br label %bb.cx

bb.bu:                                            ; preds = %bb.bo
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %.body154

.body154:                                         ; preds = %bb.br, %bb.bu
  %eh.lpad-body155 = phi { ptr, i32 } [ %i.nk, %bb.bu ], [ %i.mn, %bb.br ]
  %i.nl = load ptr, ptr %33, align 8, !tbaa !101  ; 2 uses
  %i.nm = icmp eq ptr %i.nl, %i.dc
  br i1 %i.nm, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i163: ; preds = %.body154
  %i.nn = load i64, ptr %i.dc, align 8, !tbaa !21
  %i.no = shl i64 %i.nn, 2
  %i.np = add i64 %i.no, 4
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.np) #29
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit165: ; preds = %.body154, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
end_hunk_4
begin_hunk_5_@_ZN5boost6detail14test_with_implINS0_10lw_test_eqEieEEbT_PKcS5_S5_iS5_RKT0_RKT1_:bb.a

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 67
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !21
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bn)
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef signext i8 %i.bu(ptr noundef nonnull align 8 dereferenceable(570) %i.bn, i8 noundef signext 10), !inline_history !1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.o, %bb.p
  %.0.i.i.i = phi i8 [ %i.br, %bb.o ], [ %i.bv, %bb.p ]
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext %.0.i.i.i)
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw) ; 0 uses
  %i.by = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.q, label %_ZN5boost6detail12test_resultsEv.exit17, !prof !49

bb.q:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ca = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i16 = icmp eq i32 %i.ca, 0
  br i1 %.not.i16, label %_ZN5boost6detail12test_resultsEv.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !52
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !53
  %i.cb = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail12test_resultsEv.exit17

_ZN5boost6detail12test_resultsEv.exit17:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.q, %bb.r
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !76
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !76
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.d, %bb.c, %bb.b, %_ZN5boost6detail12test_resultsEv.exit17
  ret i1 %i.d
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIeEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), x86_fp80 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEeEET_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %3 = alloca %"class.boost::detail::lcast::optimized_src_stream.42", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !45
  store i8 0, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store ptr %3, ptr %i.c, align 8, !tbaa !157
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 33
  store ptr %i.e, ptr %i.d, align 8, !tbaa !158
  %i.f = load x86_fp80, ptr %1, align 16, !tbaa !55 ; 5 uses
  %i.g = fcmp uno x86_fp80 %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = bitcast x86_fp80 %i.f to i80
  %i.i = icmp slt i80 %i.h, 0
  %..i.i.i.i.i = select i1 %i.i, ptr @.str.42, ptr @.str.41
  br label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i

bb.c:                                             ; preds = %bb.a
  %i.j = call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.f)
  %i.k = fcmp oeq x86_fp80 %i.j, +inf
  br i1 %i.k, label %bb.d, label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = bitcast x86_fp80 %i.f to i80
  %i.m = icmp slt i80 %i.l, 0
  %.9.i.i.i.i.i = select i1 %i.m, ptr @.str.44, ptr @.str.43
  br label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i

_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i: ; preds = %bb.d, %bb.b
  %.0.i.i.ph.i.i.i = phi ptr [ %.9.i.i.i.i.i, %bb.d ], [ %..i.i.i.i.i, %bb.b ] ; 4 uses
  store ptr %.0.i.i.ph.i.i.i, ptr %i.c, align 8, !tbaa !157
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i.ph.i.i.i) #27
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.ph.i.i.i, i64 %i.n ; 2 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !158
  br label %bb.e

_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i: ; preds = %bb.c
  %i.p = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull align 8 dereferenceable(56) %3, i64 noundef 33, ptr noundef nonnull @.str.537, i32 noundef 21, x86_fp80 noundef %i.f) #27
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %3, i64 %i.q ; 3 uses
  store ptr %i.r, ptr %i.d, align 8, !tbaa !158
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !157  ; 2 uses
  %i.t = icmp ugt ptr %i.r, %i.s
  br i1 %i.t, label %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge, label %bb.f

_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge: ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i
  %.pre = load i64, ptr %i.b, align 8, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i
  %i.u = phi i64 [ 0, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %.pre, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ]
  %i.v = phi ptr [ %i.o, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %i.r, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ]
  %i.w = phi ptr [ %.0.i.i.ph.i.i.i, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %i.s, %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ] ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.u, ptr noundef %i.w, i64 noundef %i.z)
          to label %.thread unwind label %bb.i    ; 0 uses

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.f:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIcSt11char_traitsIcELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %2, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZTIe, ptr %i.ab, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %i.ac, align 8, !tbaa !29
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %2) #28
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.body

bb.i:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.ad, %bb.h ]
  %i.af = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !21
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEeEET_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.11") align 8 %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %3 = alloca %"class.boost::detail::lcast::optimized_src_stream.44", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !105
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !102
  store i32 0, ptr %i.a, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 3 uses
  store ptr %3, ptr %i.c, align 8, !tbaa !160
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 132
  store ptr %i.e, ptr %i.d, align 8, !tbaa !161
  %i.f = load x86_fp80, ptr %1, align 16, !tbaa !55 ; 5 uses
  %i.g = fcmp uno x86_fp80 %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = bitcast x86_fp80 %i.f to i80
  %i.i = icmp slt i80 %i.h, 0
  %..i.i.i.i.i = select i1 %i.i, ptr @.str.73, ptr @.str.72
  br label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i

bb.c:                                             ; preds = %bb.a
  %i.j = call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.f)
  %i.k = fcmp oeq x86_fp80 %i.j, +inf
  br i1 %i.k, label %bb.d, label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = bitcast x86_fp80 %i.f to i80
  %i.m = icmp slt i80 %i.l, 0
  %.9.i.i.i.i.i = select i1 %i.m, ptr @.str.75, ptr @.str.74
  br label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i

_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i: ; preds = %bb.d, %bb.b
  %.0.i.i.ph.i.i.i = phi ptr [ %.9.i.i.i.i.i, %bb.d ], [ %..i.i.i.i.i, %bb.b ] ; 4 uses
  store ptr %.0.i.i.ph.i.i.i, ptr %i.c, align 8, !tbaa !160
  %i.n = call noundef i64 @wcslen(ptr noundef nonnull %.0.i.i.ph.i.i.i) #32
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.ph.i.i.i, i64 %i.n ; 2 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !161
  br label %bb.e

_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i: ; preds = %bb.c
  %i.p = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull align 8 dereferenceable(152) %3, i64 noundef 33, ptr noundef nonnull @.str.538, i32 noundef 21, x86_fp80 noundef %i.f) #27
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %3, i64 %i.q ; 3 uses
  store ptr %i.r, ptr %i.d, align 8, !tbaa !161
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !160  ; 2 uses
  %i.t = icmp ugt ptr %i.r, %i.s
  br i1 %i.t, label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge, label %bb.f

_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge: ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i
  %.pre = load i64, ptr %i.b, align 8, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i
  %i.u = phi i64 [ 0, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %.pre, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ]
  %i.v = phi ptr [ %i.o, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %i.r, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ]
  %i.w = phi ptr [ %.0.i.i.ph.i.i.i, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %i.s, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ] ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.u, ptr noundef %i.w, i64 noundef %i.aa)
          to label %.thread unwind label %bb.i    ; 0 uses

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.f:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm33EE9stream_inIeEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %2, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZTIe, ptr %i.ac, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZTINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE, ptr %i.ad, align 8, !tbaa !29
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %2) #28
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.body

bb.i:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.ae, %bb.h ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !101   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.a
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !21
  %i.aj = shl i64 %i.ai, 2
  %i.ak = add i64 %i.aj, 4
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #29
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEiiEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !76
  %i.b = load i32, ptr %6, align 4, !tbaa !76
  %i.c = icmp eq i32 %i.a, %i.b                   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN5boost6detail12test_resultsEv.exit, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !52
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !53
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail12test_resultsEv.exit

bb.e:                                             ; preds = %bb.a
  %.not.i9 = icmp eq ptr %2, null
  br i1 %.not.i9, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !23
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !62
  %i.n = or i32 %i.m, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.k, i32 noundef %i.n)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.g:                                             ; preds = %bb.e
  %i.o = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #27
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %2, i64 noundef %i.o) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f, %bb.g
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %3) ; 12 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.3, i64 noundef 9) ; 0 uses
  %.not.i10 = icmp eq ptr %0, null
  br i1 %.not.i10, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !62
  %i.z = or i32 %i.y, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i32 noundef %i.z)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #27
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %0, i64 noundef %i.aa) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.h, %bb.i
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.481, i64 noundef 1) ; 0 uses
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.486, i64 noundef 2) ; 0 uses
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.481, i64 noundef 1) ; 0 uses
  %.not.i12 = icmp eq ptr %1, null
  br i1 %.not.i12, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.r, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !62
  %i.al = or i32 %i.ak, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ai, i32 noundef %i.al)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.am = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %1, i64 noundef %i.am) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %bb.j, %bb.k
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.482, i64 noundef 4) ; 0 uses
  %i.ap = load i32, ptr %5, align 4, !tbaa !76
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef %i.ap) ; 4 uses
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.483, i64 noundef 2) ; 0 uses
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.486, i64 noundef 2) ; 0 uses
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.484, i64 noundef 2) ; 0 uses
  %i.au = load i32, ptr %6, align 4, !tbaa !76
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i32 noundef %i.au) ; 8 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.485, i64 noundef 23) ; 0 uses
  %.not.i14 = icmp eq ptr %4, null
  br i1 %.not.i14, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !23
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.av, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !62
  %i.bd = or i32 %i.bc, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ba, i32 noundef %i.bd)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.be = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #27
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull %4, i64 noundef %i.be) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.l, %bb.m
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  %i.bh = load ptr, ptr %i.av, align 8, !tbaa !23
  %i.bi = getelementptr i8, ptr %i.bh, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
end_hunk_5
