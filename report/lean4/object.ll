Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/object?download=true
inline.NumInlined: 1800
inline.NumDeleted: 578
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@lean_dbg_trace_if_shared:bb.a
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %2, align 8, !tbaa !111   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.o
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.p
  %i.ar = load i64, ptr %i.o, align 8, !tbaa !33
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.o
  %.pn = phi { ptr, i32 } [ %i.an, %bb.o ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.ao, %bb.p ]
  %i.at = load ptr, ptr %3, align 8, !tbaa !111   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.d
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.av = load i64, ptr %i.d, align 8, !tbaa !33
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %bb.b, %bb.a
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define ptr @lean_dbg_stack_trace(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZN4leanL15print_backtraceEb(i1 noundef zeroext false)
  %i.a = tail call ptr @lean_apply_1(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr))
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4leanL15print_backtraceEb(i1 noundef zeroext %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [100 x ptr], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = call i32 @backtrace(ptr noundef nonnull %i.a, i32 noundef 100) ; 4 uses
  %i.c = call ptr @backtrace_symbols(ptr noundef nonnull %i.a, i32 noundef %i.b) #36 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @getenv(ptr noundef nonnull @.str.33) #36
  %i.e = icmp sgt i32 %i.b, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b
  call void @free(ptr noundef nonnull %i.c) #36
  br label %bb.n

.lr.ph:                                           ; preds = %bb.b
  %.not24 = icmp eq ptr %i.d, null
  %wide.trip.count38 = zext nneg i32 %i.b to i64  ; 2 uses
  br i1 %.not24, label %.lr.ph.split.us, label %_ZL8lean_decP11lean_object.exit27.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZL8lean_decP11lean_object.exit27.us
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %_ZL8lean_decP11lean_object.exit27.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv35 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !235  ; 2 uses
  %i.h = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #41
  %i.i = call nonnull ptr @lean_mk_string_from_bytes(ptr noundef nonnull %i.g, i64 noundef %i.h)
  %i.j = call ptr @lean_demangle_bt_line_cstr(ptr noundef nonnull %i.i) ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !33
  %.not25.us = icmp eq i8 %i.l, 0
  br i1 %.not25.us, label %bb.h, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.m = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #41, !inline_history !0
  call fastcc void @_ZN4leanL14panic_eprintlnEPKcmb(ptr noundef nonnull %i.k, i64 noundef %i.m, i1 noundef zeroext %0), !inline_history !0
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = and i64 %i.n, 1
  %.not.i26.us = icmp eq i64 %i.o, 0
  br i1 %.not.i26.us, label %bb.d, label %_ZL8lean_decP11lean_object.exit27.us

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.j, align 4, !tbaa !18   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %bb.e, !prof !19

bb.e:                                             ; preds = %bb.d
  %.not.i28.us = icmp eq i32 %i.p, 0
  br i1 %.not.i28.us, label %_ZL8lean_decP11lean_object.exit27.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @lean_dec_ref_cold(ptr noundef nonnull %i.j)
  br label %_ZL8lean_decP11lean_object.exit27.us

bb.g:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.j, align 4, !tbaa !18
  br label %_ZL8lean_decP11lean_object.exit27.us

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.s = ptrtoint ptr %i.j to i64
  %i.t = and i64 %i.s, 1
  %.not.i.us = icmp eq i64 %i.t, 0
  br i1 %.not.i.us, label %bb.i, label %_ZL8lean_decP11lean_object.exit27.thread.us

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr %i.j, align 4, !tbaa !18   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.l, label %bb.j, !prof !19

bb.j:                                             ; preds = %bb.i
  %.not.i29.us = icmp eq i32 %i.u, 0
  br i1 %.not.i29.us, label %_ZL8lean_decP11lean_object.exit27.thread.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @lean_dec_ref_cold(ptr noundef nonnull %i.j)
  br label %_ZL8lean_decP11lean_object.exit27.thread.us

bb.l:                                             ; preds = %bb.i
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %i.j, align 4, !tbaa !18
  br label %_ZL8lean_decP11lean_object.exit27.thread.us

_ZL8lean_decP11lean_object.exit27.thread.us:      ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !235  ; 2 uses
  %i.y = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #41, !inline_history !0
  call fastcc void @_ZN4leanL14panic_eprintlnEPKcmb(ptr noundef nonnull %i.x, i64 noundef %i.y, i1 noundef zeroext %0), !inline_history !0
  br label %_ZL8lean_decP11lean_object.exit27.us

_ZL8lean_decP11lean_object.exit27.us:             ; preds = %_ZL8lean_decP11lean_object.exit27.thread.us, %bb.g, %bb.f, %bb.e, %bb.c
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !234

._crit_edge:                                      ; preds = %_ZL8lean_decP11lean_object.exit27.thread, %_ZL8lean_decP11lean_object.exit27.us
  call void @free(ptr noundef nonnull %i.c) #36
  %i.z = icmp eq i32 %i.b, 800
  br i1 %i.z, label %bb.m, label %bb.n

_ZL8lean_decP11lean_object.exit27.thread:         ; preds = %.lr.ph, %_ZL8lean_decP11lean_object.exit27.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZL8lean_decP11lean_object.exit27.thread ], [ 0, %.lr.ph ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !235 ; 2 uses
  %i.ac = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #41, !inline_history !0
  call fastcc void @_ZN4leanL14panic_eprintlnEPKcmb(ptr noundef nonnull %i.ab, i64 noundef %i.ac, i1 noundef zeroext %0), !inline_history !0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count38
  br i1 %exitcond.not, label %._crit_edge, label %_ZL8lean_decP11lean_object.exit27.thread, !llvm.loop !234

bb.m:                                             ; preds = %._crit_edge
  call fastcc void @_ZN4leanL14panic_eprintlnEPKcmb(ptr noundef nonnull @.str.34, i64 noundef 3, i1 noundef zeroext %0), !inline_history !0
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread, %._crit_edge, %bb.m, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @lean_register_external_class(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN4leanL19g_ext_classes_mutexE, align 8, !tbaa !120 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #36 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #44
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #45
          to label %bb.c unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit6 ; 5 uses

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  store ptr %0, ptr %i.c, align 16, !tbaa !121
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !43
  %i.e = load ptr, ptr @_ZN4leanL13g_ext_classesE, align 8, !tbaa !123 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !236  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !125
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.c, ptr %i.g, align 8, !tbaa !31
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !236
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !236
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !126  ; 4 uses
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 5 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.f, label %_ZNKSt6vectorIP19lean_external_classSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #44
          to label %.noexc unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit6

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIP19lean_external_classSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %2 = add nsw i64 %.sroa.speculated.i.i.i, %i.q  ; 2 uses
  %i.r = icmp ult i64 %2, %i.q
  %i.s = tail call i64 @llvm.umin.i64(i64 %2, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i3 = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i3)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #45
          to label %.noexc4 unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit6 ; 4 uses

.noexc4:                                          ; preds = %_ZNKSt6vectorIP19lean_external_classSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.o ; 2 uses
  store ptr %i.c, ptr %i.w, align 8, !tbaa !31
  %i.x = icmp sgt i64 %i.o, 0
  br i1 %i.x, label %bb.g, label %_ZNSt6vectorIP19lean_external_classSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.g:                                             ; preds = %.noexc4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIP19lean_external_classSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP19lean_external_classSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.g, %.noexc4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.not.i17.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP19lean_external_classSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIP19lean_external_classSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ab) #46
  br label %_ZNSt6vectorIP19lean_external_classSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP19lean_external_classSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIP19lean_external_classSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.v, ptr %i.e, align 8, !tbaa !126
  store ptr %i.y, ptr %i.f, align 8, !tbaa !236
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !125
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.d, %_ZNSt6vectorIP19lean_external_classSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ad = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #36 ; 0 uses
  ret ptr %i.c

_ZNSt11unique_lockISt5mutexED2Ev.exit6:           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %bb.f, %_ZNKSt6vectorIP19lean_external_classSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #36 ; 0 uses
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean17initialize_objectEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !22
  store ptr %i.a, ptr @_ZN4lean14g_saved_stderrE, align 8, !tbaa !22
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr @_ZN4leanL13g_ext_classesE, align 8, !tbaa !123
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #45 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  store ptr %i.c, ptr @_ZN4leanL19g_ext_classes_mutexE, align 8, !tbaa !120
  %i.d = tail call noalias ptr @mi_malloc(i64 noundef 24) #36 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_ZL16lean_alloc_arraymm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #44
  unreachable

_ZL16lean_alloc_arraymm.exit:                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 1, ptr %i.d, align 4, !tbaa !18
  store i32 -167772160, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr %i.d, ptr @_ZN4leanL13g_array_emptyE, align 8, !tbaa !31
  tail call void @lean_mark_persistent(ptr noundef nonnull %i.d)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #26

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4lean15finalize_objectEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN4leanL13g_ext_classesE, align 8, !tbaa !123 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !237  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !237  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr @_ZN4leanL13g_ext_classesE, align 8, !tbaa !123 ; 3 uses
  %i.f = icmp eq ptr %.pre, null
  br i1 %i.f, label %bb.e, label %thread-pre-split

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.05.08 = phi ptr [ %i.i, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.05.08, align 8, !tbaa !31 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 16) #46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 8 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph

thread-pre-split:                                 ; preds = %._crit_edge
  %.pr = load ptr, ptr %.pre, align 8, !tbaa !126
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %thread-pre-split
  %i.k = phi ptr [ %.pr, %thread-pre-split ], [ %i.b, %bb.a ] ; 3 uses
  %i.l = phi ptr [ %.pre, %thread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP19lean_external_classSaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !125
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.q) #46
  br label %_ZNSt6vectorIP19lean_external_classSaIS1_EED2Ev.exit

_ZNSt6vectorIP19lean_external_classSaIS1_EED2Ev.exit: ; preds = %._crit_edge.thread, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 24) #46
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIP19lean_external_classSaIS1_EED2Ev.exit, %._crit_edge
  %i.r = load ptr, ptr @_ZN4leanL19g_ext_classes_mutexE, align 8, !tbaa !120 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 40) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4lean18lock_simple_atomicERSt6atomicIiE(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::__waiter", align 8 ; 6 uses
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr exact i64 %i.a, 2
  %i.c = and i64 %i.b, 15
  %i.d = getelementptr inbounds nuw [128 x i8], ptr @_ZZNSt8__detail18__waiter_pool_base6_S_forEPKvE3__w, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit: ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  store ptr %i.d, ptr %1, align 8, !tbaa !128
  store ptr %0, ptr %i.e, align 8, !tbaa !130
  %i.f = atomicrmw add ptr %i.d, i32 1 seq_cst, align 64 ; 0 uses
  invoke void @_ZNSt8__detail8__waiterISt17integral_constantIbLb1EEE12_M_do_wait_vIiZNKSt13__atomic_baseIiE4waitEiSt12memory_orderEUlvE_EEvT_T0_(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, i32 5, ptr nonnull align 4 dereferenceable(4) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #43
  unreachable

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit
  %i.i = load ptr, ptr %1, align 8, !tbaa !131, !nonnull !26, !align !132
  %i.j = atomicrmw sub ptr %i.i, i32 1 release, align 64 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  %i.k = cmpxchg ptr %0, i32 0, i32 1 seq_cst seq_cst, align 4
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %bb.d, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit

bb.d:                                             ; preds = %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4lean20unlock_simple_atomicERSt6atomicIiE(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  store atomic i32 0, ptr %0 seq_cst, align 4
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr exact i64 %i.a, 2
  %i.c = and i64 %i.b, 15
  %i.d = getelementptr inbounds nuw [128 x i8], ptr @_ZZNSt8__detail18__waiter_pool_base6_S_forEPKvE3__w, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = icmp eq ptr %0, %i.e                     ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = atomicrmw add ptr %0, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load atomic i32, ptr %i.d seq_cst, align 64
  %.not.i.i.i = icmp eq i32 %i.h, 0
end_hunk_0
begin_hunk_1_@_ZN4lean12task_manager8run_taskERSt11unique_lockISt5mutexEP9lean_task:bb.a
bb.s:                                             ; preds = %bb.q
  %.not.i31 = icmp eq i32 %i.ah, 0
  br i1 %.not.i31, label %_ZL8lean_decP11lean_object.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n)
  br label %_ZL8lean_decP11lean_object.exit

_ZL8lean_decP11lean_object.exit:                  ; preds = %bb.r, %bb.s, %bb.t, %_ZNSt11unique_lockISt5mutexE6unlockEv.exit42
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !97  ; 2 uses
  %.not.i43 = icmp eq ptr %i.ak, null
  br i1 %.not.i43, label %_ZN4leanL9free_taskEP9lean_task.exit44, label %bb.u

bb.u:                                             ; preds = %_ZL8lean_decP11lean_object.exit
  tail call void @mi_free(ptr noundef nonnull %i.ak) #36
  br label %_ZN4leanL9free_taskEP9lean_task.exit44

_ZN4leanL9free_taskEP9lean_task.exit44:           ; preds = %_ZL8lean_decP11lean_object.exit, %bb.u
  tail call void @mi_free(ptr noundef nonnull %2) #36
  %i.al = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %.not.i45 = icmp eq ptr %i.al, null
  br i1 %.not.i45, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4leanL9free_taskEP9lean_task.exit44
  tail call void @_ZSt20__throw_system_errori(i32 noundef 1) #44
  unreachable

bb.w:                                             ; preds = %_ZN4leanL9free_taskEP9lean_task.exit44
  %i.am = load i8, ptr %i.i, align 8, !tbaa !78, !range !25, !noundef !26
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #44
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ao = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.al) #36 ; 2 uses
  %.not.i.i46 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i46, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit47, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #44
  unreachable

_ZNSt11unique_lockISt5mutexE4lockEv.exit47:       ; preds = %bb.y
  store i8 1, ptr %i.i, align 8, !tbaa !78
  br label %bb.an

bb.aa:                                            ; preds = %bb.n
  br i1 %.not28, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_mark_mt(ptr noundef nonnull %i.n), !inline_history !247
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store atomic ptr %i.n, ptr %i.ap seq_cst, align 8
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !97  ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !97
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !104 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !104
  %.not.i.i4860 = icmp eq ptr %i.as, null
  br i1 %.not.i.i4860, label %_ZN4lean12task_manager12resolve_coreERSt11unique_lockISt5mutexEP9lean_taskP11lean_object.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ab
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.af
  %.0.i.i61 = phi ptr [ %i.as, %.lr.ph ], [ %i.ax, %bb.af ] ; 3 uses
  %i.au = load i8, ptr %i.at, align 4, !tbaa !101
  %.not13.i.i = icmp eq i8 %i.au, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0.i.i61, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !97 ; 4 uses
  br i1 %.not13.i.i, label %._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.av = getelementptr inbounds nuw i8, ptr %.pre, i64 28
  store i8 1, ptr %i.av, align 4, !tbaa !101
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ac, %bb.ad
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !105 ; 2 uses
  store ptr null, ptr %i.aw, align 8, !tbaa !105
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre, i64 30
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !103
  %.not14.i.i = icmp eq i8 %i.az, 0
  br i1 %.not14.i.i, label %bb.ae, label %_ZN4leanL9free_taskEP9lean_task.exit55

_ZN4leanL9free_taskEP9lean_task.exit55:           ; preds = %._crit_edge
  tail call void @mi_free(ptr noundef nonnull %.pre) #36
  tail call void @mi_free(ptr noundef nonnull %.0.i.i61) #36
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge
  tail call void @_ZN4lean12task_manager12enqueue_coreERSt11unique_lockISt5mutexEP9lean_task(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull %.0.i.i61), !inline_history !248
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN4leanL9free_taskEP9lean_task.exit55
  %.not.i.i48 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i48, label %_ZN4lean12task_manager12resolve_coreERSt11unique_lockISt5mutexEP9lean_taskP11lean_object.exit, label %bb.ac, !llvm.loop !7

_ZN4lean12task_manager12resolve_coreERSt11unique_lockISt5mutexEP9lean_taskP11lean_object.exit: ; preds = %bb.af, %bb.ab
  tail call void @mi_free(ptr noundef nonnull %i.aq) #36, !inline_history !8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ba) #36, !inline_history !8
  br label %bb.an

bb.ag:                                            ; preds = %bb.aa
  %i.bb = load ptr, ptr %i.aa, align 8, !tbaa !99
  %i.bc = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %.not.i49 = icmp eq ptr %i.bc, null
  br i1 %.not.i49, label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit50, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bd = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bc) #36 ; 0 uses
  store i8 0, ptr %i.i, align 8, !tbaa !78
  br label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit50

_ZNSt11unique_lockISt5mutexE6unlockEv.exit50:     ; preds = %bb.ag, %bb.ah
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !31
  tail call void @_ZN4lean12task_manager7add_depEP9lean_taskS2_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.bf, ptr noundef nonnull %2)
  %i.bg = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %.not.i51 = icmp eq ptr %i.bg, null
  br i1 %.not.i51, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit50
  tail call void @_ZSt20__throw_system_errori(i32 noundef 1) #44
  unreachable

bb.aj:                                            ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit50
  %i.bh = load i8, ptr %i.i, align 8, !tbaa !78, !range !25, !noundef !26
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #44
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.bj = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bg) #36 ; 2 uses
  %.not.i.i52 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i52, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit53, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.bj) #44
  unreachable

_ZNSt11unique_lockISt5mutexE4lockEv.exit53:       ; preds = %bb.al
  store i8 1, ptr %i.i, align 8, !tbaa !78
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit47, %_ZNSt11unique_lockISt5mutexE4lockEv.exit53, %_ZN4lean12task_manager12resolve_coreERSt11unique_lockISt5mutexEP9lean_taskP11lean_object.exit, %_ZN4leanL9free_taskEP9lean_task.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean12task_manager12spawn_workerEv(ptr noundef nonnull align 8 dereferenceable(953) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.b = load i8, ptr %i.a, align 8, !tbaa !74, !range !25, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = ptrtoint ptr %0 to i64
  store i64 %i.h, ptr %1, align 8, !tbaa !47
  store ptr @_ZNSt17_Function_handlerIFvvEZN4lean12task_manager12spawn_workerEvEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.f, align 8, !tbaa !140
  store ptr @_ZNSt17_Function_handlerIFvvEZN4lean12task_manager12spawn_workerEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, ptr %i.e, align 8, !tbaa !141
  invoke void @_ZN4lean7lthreadC1ERKSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !93
  %.not.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.k, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !92
  br label %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !91   ; 10 uses
  %i.p = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 4 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #44
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %2 = add nsw i64 %.sroa.speculated.i.i.i, %i.t  ; 2 uses
  %i.u = icmp ult i64 %2, %i.t
  %i.v = call i64 @llvm.umin.i64(i64 %2, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #45
          to label %.noexc3 unwind label %bb.k    ; 10 uses

.noexc3:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.r
  store ptr %i.d, ptr %i.z, align 8, !tbaa !80
  %.not10.i.i.i.i.i = icmp eq ptr %i.o, %i.k
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc3
  %i.aa = add i64 %i.p, -8
  %i.ab = sub i64 %i.aa, %i.q                     ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ae = add i64 %i.p, -8
  %i.af = sub i64 %i.ae, %i.q
  %i.ag = and i64 %i.af, -8
  %i.ah = add i64 %i.ag, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.ah
  %scevgep13 = getelementptr i8, ptr %i.o, i64 %i.ah
  %bound0 = icmp ult ptr %i.y, %scevgep13
  %bound1 = icmp ult ptr %i.o, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.y, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.o, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.al ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.o, i64 %i.al ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.am = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 8, !tbaa !80, !alias.scope !259, !noalias !257
  %wide.load15 = load <2 x i64>, ptr %i.am, align 8, !tbaa !80, !alias.scope !259, !noalias !257
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !80, !alias.scope !260, !noalias !259
  store <2 x i64> %wide.load15, ptr %i.an, align 8, !tbaa !80, !alias.scope !260, !noalias !259
  %i.ao = getelementptr i8, ptr %next.gep14, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !80, !alias.scope !259, !noalias !257
  store <2 x ptr> splat (ptr null), ptr %i.ao, align 8, !tbaa !80, !alias.scope !259, !noalias !257
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !255

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader17

.lr.ph.i.i.i.i.i.preheader17:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader17, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader17 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader17 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.aq = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !258, !noalias !257
  store i64 %i.aq, ptr %.012.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !257, !noalias !258
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !258, !noalias !257
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !256

_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc3
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %.noexc3 ], [ %i.aj, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !93
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.aw) #46
  br label %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.y, ptr %i.i, align 8, !tbaa !91
  store ptr %i.at, ptr %i.j, align 8, !tbaa !92
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ax, ptr %i.l, align 8, !tbaa !93
  br label %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.d
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !141 ; 2 uses
  %.not.i4 = icmp eq ptr %i.ay, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #43
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNSt14_Function_baseD2Ev.exit
  ret void

bb.k:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.f, %bb.b
  %.0 = phi i1 [ false, %_ZNKSt6vectorISt10unique_ptrIN4lean7lthreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ true, %bb.b ], [ false, %bb.f ]
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !141 ; 2 uses
  %.not.i5 = icmp eq ptr %i.bd, null
  br i1 %.not.i5, label %_ZNSt14_Function_baseD2Ev.exit6, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = invoke noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit6 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #43
  unreachable

_ZNSt14_Function_baseD2Ev.exit6:                  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br i1 %.0, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit6
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 8) #46
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNSt14_Function_baseD2Ev.exit6
  resume { ptr, i32 } %i.bc
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #10

declare void @_ZN4lean15reset_heartbeatEv() local_unnamed_addr #13

declare void @_ZN4lean7lthreadC1ERKSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvvEZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskEUlvE_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !263
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskEUlvE_, ptr %0, align 8, !tbaa !143
  br label %_ZNSt14_Function_base13_Base_managerIZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !31
  br label %_ZNSt14_Function_base13_Base_managerIZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !264
  br label %_ZNSt14_Function_base13_Base_managerIZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4lean12task_manager22spawn_dedicated_workerEP9lean_taskENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !266    ; 5 uses
  tail call void @_ZN4lean15save_stack_infoEb(i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  store ptr %i.a, ptr %1, align 8, !tbaa !77
end_hunk_1
