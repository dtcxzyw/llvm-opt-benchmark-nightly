Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/nb_internals?download=true
inline.NumInlined: 455
inline.NumDeleted: 276
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN8nanobind6detail28default_exception_translatorERKNSt15__exception_ptr13exception_ptrEPv:bb.a
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofreeobj noundef align 8 dereferenceable(8)) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #29 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIPN8nanobind6detail12nb_internalsESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #32
  br label %_ZNSt12_Vector_baseIPN8nanobind6detail12nb_internalsESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIPN8nanobind6detail12nb_internalsESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN8nanobind6detail13import_cachedEPNS0_12nb_internalsEPNS0_12import_cacheE(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = invoke ptr @PyImport_ImportModule(ptr noundef %i.a)
          to label %bb.b unwind label %bb.aa      ; 5 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZL9Py_DECREFP7_object.exit34, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = invoke ptr @PyObject_GetAttrString(ptr noundef nonnull %i.b, ptr noundef %i.d)
          to label %bb.d unwind label %bb.aa      ; 15 uses

bb.d:                                             ; preds = %bb.c
  %i.f = load i64, ptr %i.b, align 8              ; 2 uses
  %i.g = and i64 %i.f, 2147483648
  %.not45 = icmp eq i64 %i.g, 0
  br i1 %.not45, label %bb.e, label %_ZL9Py_DECREFP7_object.exit37

bb.e:                                             ; preds = %bb.d
  %i.h = add nsw i64 %i.f, -1                     ; 2 uses
  store i64 %i.h, ptr %i.b, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %_ZL9Py_DECREFP7_object.exit37

bb.f:                                             ; preds = %bb.e
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.b)
          to label %_ZL9Py_DECREFP7_object.exit37 unwind label %bb.aa

_ZL9Py_DECREFP7_object.exit37:                    ; preds = %bb.e, %bb.d, %bb.f
  %.not22 = icmp eq ptr %i.e, null
  br i1 %.not22, label %_ZL9Py_DECREFP7_object.exit34, label %bb.g

bb.g:                                             ; preds = %_ZL9Py_DECREFP7_object.exit37
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = load i64, ptr %i.e, align 8              ; 2 uses
  %i.m = and i64 %i.l, 2147483648
  %.not46 = icmp eq i64 %i.m, 0
  br i1 %.not46, label %bb.i, label %_ZL9Py_DECREFP7_object.exit34

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i64 %i.l, -1                     ; 2 uses
  store i64 %i.n, ptr %i.e, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.j, label %_ZL9Py_DECREFP7_object.exit34

bb.j:                                             ; preds = %bb.i
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.e)
          to label %_ZL9Py_DECREFP7_object.exit34 unwind label %bb.aa

.critedge:                                        ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not24 = icmp eq ptr %i.q, null
  br i1 %.not24, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.critedge
  %i.r = load i64, ptr %i.e, align 8              ; 2 uses
  %i.s = and i64 %i.r, 2147483648
  %.not49 = icmp eq i64 %i.s, 0
  br i1 %.not49, label %bb.l, label %_ZL9Py_DECREFP7_object.exit31

bb.l:                                             ; preds = %bb.k
  %i.t = add nsw i64 %i.r, -1                     ; 2 uses
  store i64 %i.t, ptr %i.e, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.m, label %_ZL9Py_DECREFP7_object.exit31

bb.m:                                             ; preds = %bb.l
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.e)
          to label %_ZL9Py_DECREFP7_object.exit31 unwind label %bb.aa

_ZL9Py_DECREFP7_object.exit31:                    ; preds = %bb.l, %bb.k, %bb.m
  %i.v = load ptr, ptr @PyExc_RuntimeError, align 8
  invoke void @PyErr_SetString(ptr noundef %i.v, ptr noundef nonnull @.str)
          to label %_ZL9Py_DECREFP7_object.exit34 unwind label %bb.aa

bb.n:                                             ; preds = %.critedge
  %i.w = invoke i32 @PyList_Append(ptr noundef nonnull %i.q, ptr noundef nonnull %i.e)
          to label %bb.o unwind label %bb.aa

bb.o:                                             ; preds = %bb.n
  %.not25 = icmp eq i32 %i.w, 0
  %i.x = load i64, ptr %i.e, align 8              ; 3 uses
  %i.y = and i64 %i.x, 2147483648
  %.not48 = icmp eq i64 %i.y, 0                   ; 2 uses
  br i1 %.not25, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not48, label %bb.q, label %_ZL9Py_DECREFP7_object.exit34

bb.q:                                             ; preds = %bb.p
  %i.z = add nsw i64 %i.x, -1                     ; 2 uses
  store i64 %i.z, ptr %i.e, align 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.r, label %_ZL9Py_DECREFP7_object.exit34

bb.r:                                             ; preds = %bb.q
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.e)
          to label %_ZL9Py_DECREFP7_object.exit34 unwind label %bb.aa

bb.s:                                             ; preds = %bb.o
  br i1 %.not48, label %bb.t, label %_ZL9Py_DECREFP7_object.exit

bb.t:                                             ; preds = %bb.s
  %i.ab = add nsw i64 %i.x, -1                    ; 2 uses
  store i64 %i.ab, ptr %i.e, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.u, label %_ZL9Py_DECREFP7_object.exit

bb.u:                                             ; preds = %bb.t
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.e)
          to label %_ZL9Py_DECREFP7_object.exit unwind label %bb.aa

_ZL9Py_DECREFP7_object.exit:                      ; preds = %bb.t, %bb.s, %bb.u
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %.not.i38 = icmp eq ptr %i.af, %i.ah
  br i1 %.not.i38, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZL9Py_DECREFP7_object.exit
  store ptr %1, ptr %i.af, align 8
  %i.ai = load ptr, ptr %i.ae, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %i.ae, align 8
  br label %_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EE9push_backERKS3_.exit

bb.w:                                             ; preds = %_ZL9Py_DECREFP7_object.exit
  %i.ak = load ptr, ptr %i.ad, align 8            ; 4 uses
  %i.al = ptrtoint ptr %i.af to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 6 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.x, label %_ZNKSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #30
          to label %.noexc39 unwind label %bb.aa

.noexc39:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %2 = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %i.aq = icmp ult i64 %2, %i.ap
  %i.ar = tail call i64 @llvm.umin.i64(i64 %2, i64 1152921504606846975)
  %i.as = select i1 %i.aq, i64 1152921504606846975, i64 %i.ar ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #33
          to label %.noexc40 unwind label %bb.aa  ; 4 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.an ; 2 uses
  store ptr %1, ptr %i.av, align 8
  %i.aw = icmp sgt i64 %i.an, 0
  br i1 %i.aw, label %bb.y, label %_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.y:                                             ; preds = %.noexc40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.y, %.noexc40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #32
  br label %_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.z, %_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.au, ptr %i.ad, align 8
  store ptr %i.ax, ptr %i.ae, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  store ptr %i.ay, ptr %i.ag, align 8
  br label %_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.v
  store ptr %i.e, ptr %i.j, align 8
  br label %_ZL9Py_DECREFP7_object.exit34

_ZL9Py_DECREFP7_object.exit34:                    ; preds = %_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EE9push_backERKS3_.exit, %_ZL9Py_DECREFP7_object.exit31, %bb.i, %bb.h, %bb.j, %bb.r, %bb.p, %bb.q, %_ZL9Py_DECREFP7_object.exit37, %bb.b
  %.3 = phi ptr [ null, %bb.b ], [ null, %_ZL9Py_DECREFP7_object.exit37 ], [ null, %_ZL9Py_DECREFP7_object.exit31 ], [ %i.e, %_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EE9push_backERKS3_.exit ], [ %i.k, %bb.j ], [ %i.k, %bb.i ], [ %i.k, %bb.h ], [ null, %bb.r ], [ null, %bb.p ], [ null, %bb.q ]
  ret ptr %.3

bb.aa:                                            ; preds = %_ZNKSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.x, %bb.f, %bb.j, %bb.m, %bb.r, %bb.u, %bb.n, %_ZL9Py_DECREFP7_object.exit31, %bb.c, %bb.a
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #31
  unreachable
}

declare ptr @PyImport_ImportModule(ptr noundef) local_unnamed_addr #4

declare ptr @PyObject_GetAttrString(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN8nanobind6detail13cached_stringEPNS0_12nb_internalsEPKcmPb(ptr nofree noundef captures(address) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.b = mul i64 %i.a, -7046029254386353131
  %i.c = lshr i64 %i.b, 52                        ; 4 uses
  store i8 0, ptr %3, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %.not.i4 = icmp eq i64 %2, 0
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.c ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %.not.i.us = icmp eq ptr %i.g, null             ; 14 uses
  br i1 %.not.i4, label %.split17.us.preheader, label %.split17.preheader

.split17.preheader:                               ; preds = %bb.a
  br i1 %.not.i.us, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread, label %bb.h, !prof !4

.split17.us.preheader:                            ; preds = %bb.a
  br i1 %.not.i.us, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread.us, label %bb.b, !prof !4

bb.b:                                             ; preds = %.split17.us.preheader
  %i.h = load i64, ptr %i.e, align 8
  %i.i = icmp eq i64 %i.h, %i.a
  br i1 %i.i, label %.preheader.i.us, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread.us, !prof !5

.preheader.i.us:                                  ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.e, i64 8
  %.val.us = load ptr, ptr %i.j, align 8          ; 5 uses
  %i.k = getelementptr i8, ptr %i.e, i64 16
  %.val3.us = load i64, ptr %i.k, align 8
  %i.l = freeze i64 %.val3.us                     ; 5 uses
  %.not3.i.us = icmp eq i64 %i.l, 0
  br i1 %.not3.i.us, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread12.us, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %.preheader.i.us
  %xtraiter = and i64 %i.l, 3                     ; 3 uses
  %i.m = icmp ult i64 %i.l, 4
  br i1 %i.m, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us.preheader.new

.lr.ph.i.us.preheader.new:                        ; preds = %.lr.ph.i.us.preheader
  %unroll_iter = and i64 %i.l, -4
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.c, %.lr.ph.i.us.preheader.new
  %.0182.i.us = phi i64 [ 0, %.lr.ph.i.us.preheader.new ], [ %i.ag, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.us.preheader.new ], [ %niter.next.3, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %.val.us, i64 %.0182.i.us
  %i.o = load i8, ptr %i.n, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.0182.i.us
  %i.q = load i8, ptr %i.p, align 1
  %.not22.i.us = icmp eq i8 %i.o, %i.q
  br i1 %.not22.i.us, label %.lr.ph.i.us.138, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread.us, !prof !6

.lr.ph.i.us.138:                                  ; preds = %.lr.ph.i.us
  %i.r = or disjoint i64 %.0182.i.us, 1           ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.v = load i8, ptr %i.u, align 1
  %.not22.i.us.137 = icmp eq i8 %i.t, %i.v
  br i1 %.not22.i.us.137, label %.lr.ph.i.us.2, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread.us, !prof !6

.lr.ph.i.us.2:                                    ; preds = %.lr.ph.i.us.138
  %i.w = or disjoint i64 %.0182.i.us, 2           ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.aa = load i8, ptr %i.z, align 1
  %.not22.i.us.2 = icmp eq i8 %i.y, %i.aa
  br i1 %.not22.i.us.2, label %.lr.ph.i.us.3, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread.us, !prof !6

.lr.ph.i.us.3:                                    ; preds = %.lr.ph.i.us.2
  %i.ab = or disjoint i64 %.0182.i.us, 3          ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.af = load i8, ptr %i.ae, align 1
  %.not22.i.us.3 = icmp eq i8 %i.ad, %i.af
  br i1 %.not22.i.us.3, label %bb.c, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread.us, !prof !6

bb.c:                                             ; preds = %.lr.ph.i.us.3
  %i.ag = add nuw i64 %.0182.i.us, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.us.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !0

_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.us.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.us.unr-lcssa, %.lr.ph.i.us.preheader
  %.0182.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.preheader ], [ %i.ag, %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.us.unr-lcssa ]
  %lcmp.mod34 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph.i.us.epil

.lr.ph.i.us.epil:                                 ; preds = %bb.d, %.lr.ph.i.us.epil.preheader
  %.0182.i.us.epil = phi i64 [ %i.al, %bb.d ], [ %.0182.i.us.epil.init, %.lr.ph.i.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.d ], [ 0, %.lr.ph.i.us.epil.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.us, i64 %.0182.i.us.epil
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.0182.i.us.epil
  %i.ak = load i8, ptr %i.aj, align 1
  %.not22.i.us.epil = icmp eq i8 %i.ai, %i.ak
  br i1 %.not22.i.us.epil, label %bb.d, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread.us, !prof !6

bb.d:                                             ; preds = %.lr.ph.i.us.epil
  %i.al = add nuw i64 %.0182.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.us, label %.lr.ph.i.us.epil, !llvm.loop !13

_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.us: ; preds = %bb.d, %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.us.unr-lcssa
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %_ZN8nanobind6detailL18cached_string_fastEPNS0_12nb_internalsEPKcmPb.exit, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread.us, !prof !9

_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread12.us: ; preds = %.preheader.i.us
  %i.ap = load i8, ptr %1, align 1
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %_ZN8nanobind6detailL18cached_string_fastEPNS0_12nb_internalsEPKcmPb.exit, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread.us, !prof !9

_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread.us: ; preds = %.lr.ph.i.us.3, %.lr.ph.i.us.2, %.lr.ph.i.us.138, %.lr.ph.i.us, %.lr.ph.i.us.epil, %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread12.us, %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.us, %bb.b, %.split17.us.preheader
  %i.ar = xor i64 %i.c, 1
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.ar ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %.not.i.us.1 = icmp eq ptr %i.au, null
  br i1 %.not.i.us.1, label %.thread7, label %bb.e, !prof !4

bb.e:                                             ; preds = %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread.us
  %i.av = load i64, ptr %i.as, align 8
  %i.aw = icmp eq i64 %i.av, %i.a
  br i1 %i.aw, label %.preheader.i.us.1, label %.thread7, !prof !5

.preheader.i.us.1:                                ; preds = %bb.e
  %i.ax = getelementptr i8, ptr %i.as, i64 8
  %.val.us.1 = load ptr, ptr %i.ax, align 8       ; 5 uses
  %i.ay = getelementptr i8, ptr %i.as, i64 16
  %.val3.us.1 = load i64, ptr %i.ay, align 8
  %i.az = freeze i64 %.val3.us.1                  ; 5 uses
  %.not3.i.us.1 = icmp eq i64 %i.az, 0
  br i1 %.not3.i.us.1, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread12.us.1, label %.lr.ph.i.us.1.preheader

.lr.ph.i.us.1.preheader:                          ; preds = %.preheader.i.us.1
  %xtraiter40 = and i64 %i.az, 3                  ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN8nanobind6detail14nb_module_initEPKcP7_object:bb.a

bb.as:                                            ; preds = %.split.i
  %i.ch = add nsw i64 %i.cf, -1                   ; 2 uses
  store i64 %i.ch, ptr %i.ce, align 8
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.at, label %_ZL10Py_XDECREFP7_object.exit.i

bb.at:                                            ; preds = %bb.as
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.ce)
          to label %_ZL10Py_XDECREFP7_object.exit.i unwind label %bb.by

.split49.i:                                       ; preds = %.noexc44
  invoke void @PyErr_Clear()
          to label %_ZL10Py_XDECREFP7_object.exit.i unwind label %bb.by

bb.au:                                            ; preds = %.noexc38
  %i.cj = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nanobind4abi112python_errorE
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt9exception
          catch ptr null
  tail call void @_ZdlPvSt11align_val_t(ptr noundef nonnull %i.bw, i64 noundef 64) #32
  br label %.body

_ZL10Py_XDECREFP7_object.exit.i:                  ; preds = %.split49.i, %bb.at, %bb.as, %.split.i
  %i.ck = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cl = and i64 %i.ck, 2147483648
  %.not121.i = icmp eq i64 %i.cl, 0
  br i1 %.not121.i, label %bb.av, label %_ZL9Py_DECREFP7_object.exit83.i

bb.av:                                            ; preds = %_ZL10Py_XDECREFP7_object.exit.i
  %i.cm = add nsw i64 %i.ck, -1                   ; 2 uses
  store i64 %i.cm, ptr %i.cd, align 8
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.aw, label %_ZL9Py_DECREFP7_object.exit83.i

bb.aw:                                            ; preds = %bb.av
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.cd)
          to label %_ZL9Py_DECREFP7_object.exit83.i unwind label %bb.by

bb.ax:                                            ; preds = %.noexc43
  invoke void @PyErr_Clear()
          to label %_ZL9Py_DECREFP7_object.exit83.i unwind label %bb.by

_ZL9Py_DECREFP7_object.exit83.i:                  ; preds = %bb.ax, %bb.aw, %bb.av, %_ZL10Py_XDECREFP7_object.exit.i
  %i.co = load i64, ptr %i.cc, align 8            ; 2 uses
  %i.cp = and i64 %i.co, 2147483648
  %.not122.i = icmp eq i64 %i.cp, 0
  br i1 %.not122.i, label %bb.ay, label %_ZL9Py_DECREFP7_object.exit81.i

bb.ay:                                            ; preds = %_ZL9Py_DECREFP7_object.exit83.i
  %i.cq = add nsw i64 %i.co, -1                   ; 2 uses
  store i64 %i.cq, ptr %i.cc, align 8
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.az, label %_ZL9Py_DECREFP7_object.exit81.i

bb.az:                                            ; preds = %bb.ay
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.cc)
          to label %_ZL9Py_DECREFP7_object.exit81.i unwind label %bb.by

bb.ba:                                            ; preds = %.noexc42
  invoke void @PyErr_Clear()
          to label %_ZL9Py_DECREFP7_object.exit81.i unwind label %bb.by

_ZL9Py_DECREFP7_object.exit81.i:                  ; preds = %bb.ba, %bb.az, %bb.ay, %_ZL9Py_DECREFP7_object.exit83.i
  %i.cs = invoke ptr @PyCapsule_New(ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.10, ptr noundef null)
          to label %.noexc51 unwind label %bb.by  ; 5 uses

.noexc51:                                         ; preds = %_ZL9Py_DECREFP7_object.exit81.i
  %.not72.i = icmp eq ptr %i.cs, null
  br i1 %.not72.i, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %.noexc51
  %i.ct = load i64, ptr %i.az, align 8            ; 2 uses
  %i.cu = and i64 %i.ct, 2147483648
  %.not125.i = icmp eq i64 %i.cu, 0
  br i1 %.not125.i, label %bb.bc, label %_ZL9Py_DECREFP7_object.exit79.i

bb.bc:                                            ; preds = %bb.bb
  %i.cv = add nsw i64 %i.ct, -1                   ; 2 uses
  store i64 %i.cv, ptr %i.az, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.bd, label %_ZL9Py_DECREFP7_object.exit79.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.az)
          to label %_ZL9Py_DECREFP7_object.exit79.i unwind label %bb.by

_ZL9Py_DECREFP7_object.exit79.i:                  ; preds = %bb.bd, %bb.bc, %bb.bb
  tail call fastcc void @_ZN8nanobind6detailL17internals_discardEPNS0_12nb_internalsE(ptr noundef nonnull %i.bw) #29
  br label %_ZN8nanobind6detailL19nb_module_init_implEPKcP7_object.exit

bb.be:                                            ; preds = %.noexc51
  %i.cx = invoke ptr @PyDict_GetItemWithError(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.az)
          to label %bb.bf unwind label %bb.bi     ; 4 uses

bb.bf:                                            ; preds = %bb.be
  %.not.i.i.i.i93.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i93.i, label %_ZL11_Py_XNewRefP7_object.exit.i.i95.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = add i32 %i.cy, 1                        ; 2 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %_ZN8nanobind6detail23dict_getitem_or_defaultEP7_objectS2_S2_.exit98.thread.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.cz, ptr %i.cx, align 8
  br label %_ZN8nanobind6detail23dict_getitem_or_defaultEP7_objectS2_S2_.exit98.thread.i

_ZL11_Py_XNewRefP7_object.exit.i.i95.i:           ; preds = %bb.bf
  %i.db = invoke ptr @PyErr_Occurred()
          to label %_ZN8nanobind6detail16dict_getitem_refEP7_objectS2_Pb.exit.i96.i unwind label %bb.bi

bb.bi:                                            ; preds = %_ZL11_Py_XNewRefP7_object.exit.i.i95.i, %bb.be
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  tail call void @__clang_call_terminate(ptr %i.dd) #31
  unreachable

_ZN8nanobind6detail16dict_getitem_refEP7_objectS2_Pb.exit.i96.i: ; preds = %_ZL11_Py_XNewRefP7_object.exit.i.i95.i
  %.not.i97.i = icmp eq ptr %i.db, null
  br i1 %.not.i97.i, label %_ZN8nanobind6detail23dict_getitem_or_defaultEP7_objectS2_S2_.exit98.i, label %.invoke, !prof !24

.invoke:                                          ; preds = %_ZN8nanobind6detail16dict_getitem_refEP7_objectS2_Pb.exit.i96.i, %_ZN8nanobind6detail16dict_getitem_refEP7_objectS2_Pb.exit.i.i, %_ZN8nanobind6detail16dict_getitem_refEP7_objectS2_Pb.exit.i50.i.i, %_ZN8nanobind6detail16dict_getitem_refEP7_objectS2_Pb.exit.i.i.i
  invoke void @_ZN8nanobind6detail18raise_python_errorEv() #30
          to label %.cont unwind label %bb.by

.cont:                                            ; preds = %.invoke
  unreachable

_ZN8nanobind6detail23dict_getitem_or_defaultEP7_objectS2_S2_.exit98.i: ; preds = %_ZN8nanobind6detail16dict_getitem_refEP7_objectS2_Pb.exit.i96.i
  %i.de = invoke i32 @PyDict_SetItem(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.az, ptr noundef nonnull %i.cs)
          to label %_ZN8nanobind6detail23dict_getitem_or_defaultEP7_objectS2_S2_.exit98.thread.i unwind label %bb.by

_ZN8nanobind6detail23dict_getitem_or_defaultEP7_objectS2_S2_.exit98.thread.i: ; preds = %_ZN8nanobind6detail23dict_getitem_or_defaultEP7_objectS2_S2_.exit98.i, %bb.bh, %bb.bg
  %i.df = phi i32 [ 1, %bb.bh ], [ 1, %bb.bg ], [ %i.de, %_ZN8nanobind6detail23dict_getitem_or_defaultEP7_objectS2_S2_.exit98.i ] ; 2 uses
  %i.dg = load i64, ptr %i.cs, align 8            ; 2 uses
  %i.dh = and i64 %i.dg, 2147483648
  %.not123.i = icmp eq i64 %i.dh, 0
  br i1 %.not123.i, label %bb.bj, label %_ZL9Py_DECREFP7_object.exit77.i

bb.bj:                                            ; preds = %_ZN8nanobind6detail23dict_getitem_or_defaultEP7_objectS2_S2_.exit98.thread.i
  %i.di = add nsw i64 %i.dg, -1                   ; 2 uses
  store i64 %i.di, ptr %i.cs, align 8
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.bk, label %_ZL9Py_DECREFP7_object.exit77.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.cs)
          to label %_ZL9Py_DECREFP7_object.exit77.i unwind label %bb.by

_ZL9Py_DECREFP7_object.exit77.i:                  ; preds = %bb.bk, %bb.bj, %_ZN8nanobind6detail23dict_getitem_or_defaultEP7_objectS2_S2_.exit98.thread.i
  %i.dk = load i64, ptr %i.az, align 8            ; 2 uses
  %i.dl = and i64 %i.dk, 2147483648
  %.not124.i = icmp eq i64 %i.dl, 0
  br i1 %.not124.i, label %bb.bl, label %_ZL9Py_DECREFP7_object.exit.i

bb.bl:                                            ; preds = %_ZL9Py_DECREFP7_object.exit77.i
  %i.dm = add nsw i64 %i.dk, -1                   ; 2 uses
  store i64 %i.dm, ptr %i.az, align 8
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.bm, label %_ZL9Py_DECREFP7_object.exit.i

bb.bm:                                            ; preds = %bb.bl
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.az)
          to label %_ZL9Py_DECREFP7_object.exit.i unwind label %bb.by

_ZL9Py_DECREFP7_object.exit.i:                    ; preds = %bb.bm, %bb.bl, %_ZL9Py_DECREFP7_object.exit77.i
  %.not74.i = icmp eq i32 %i.df, 0
  br i1 %.not74.i, label %bb.bp, label %bb.bn, !prof !5

bb.bn:                                            ; preds = %_ZL9Py_DECREFP7_object.exit.i
  tail call fastcc void @_ZN8nanobind6detailL17internals_discardEPNS0_12nb_internalsE(ptr noundef nonnull %i.bw) #29
  %i.do = icmp slt i32 %i.df, 0
  br i1 %i.do, label %_ZN8nanobind6detailL19nb_module_init_implEPKcP7_object.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.dp = invoke fastcc noundef ptr @_ZN8nanobind6detailL14internals_joinEP7_objectPPNS0_12nb_internalsE(ptr noundef %i.cx, ptr noundef %.047.i)
          to label %_ZN8nanobind6detailL19nb_module_init_implEPKcP7_object.exit unwind label %bb.by

bb.bp:                                            ; preds = %_ZL9Py_DECREFP7_object.exit.i
  %i.dq = load ptr, ptr @_ZN8nanobind6detailL17internals_createdE, align 8 ; 5 uses
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8nanobind6detailL17internals_createdE, i64 8), align 8 ; 4 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8nanobind6detailL17internals_createdE, i64 16), align 8
  %.not.i99.i = icmp eq ptr %i.dr, %i.dt
  br i1 %.not.i99.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store ptr %i.bw, ptr %i.dr, align 8
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8nanobind6detailL17internals_createdE, i64 8), align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.dv, ptr getelementptr inbounds nuw (i8, ptr @_ZN8nanobind6detailL17internals_createdE, i64 8), align 8
  br label %_ZNSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EE9push_backERKS3_.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.dw = ptrtoint ptr %i.dr to i64
  %i.dx = ptrtoint ptr %i.dq to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 6 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775800
  br i1 %i.dz, label %bb.bs, label %_ZNKSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #30
          to label %.noexc58 unwind label %bb.by

.noexc58:                                         ; preds = %bb.bs
  unreachable

_ZNKSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.br
  %i.ea = ashr exact i64 %i.dy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %2 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ea ; 2 uses
  %i.eb = icmp ult i64 %2, %i.ea
  %i.ec = tail call i64 @llvm.umin.i64(i64 %2, i64 1152921504606846975)
  %i.ed = select i1 %i.eb, i64 1152921504606846975, i64 %i.ec ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ed, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ee = shl nuw nsw i64 %i.ed, 3
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #33
          to label %.noexc59 unwind label %bb.by  ; 4 uses

.noexc59:                                         ; preds = %_ZNKSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 %i.dy ; 2 uses
  store ptr %i.bw, ptr %i.eg, align 8
  %i.eh = icmp sgt i64 %i.dy, 0
  br i1 %i.eh, label %bb.bt, label %_ZNSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.bt:                                            ; preds = %.noexc59
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ef, ptr align 8 %i.dq, i64 %i.dy, i1 false)
  br label %_ZNSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.bt, %.noexc59
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dy) #32
  br label %_ZNSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.bu, %_ZNSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.ef, ptr @_ZN8nanobind6detailL17internals_createdE, align 8
  store ptr %i.ei, ptr getelementptr inbounds nuw (i8, ptr @_ZN8nanobind6detailL17internals_createdE, i64 8), align 8
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ed
  store ptr %i.ej, ptr getelementptr inbounds nuw (i8, ptr @_ZN8nanobind6detailL17internals_createdE, i64 16), align 8
  br label %_ZNSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EE9push_backERKS3_.exit.i

_ZNSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EE9push_backERKS3_.exit.i: ; preds = %_ZNSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.bq
  br i1 %i.ds, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %_ZNSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EE9push_backERKS3_.exit.i
  %i.ek = invoke i32 @Py_AtExit(ptr noundef nonnull @_ZN8nanobind6detailL17internals_cleanupEv)
          to label %.noexc60 unwind label %bb.by

.noexc60:                                         ; preds = %bb.bv
  %.not75.i = icmp eq i32 %i.ek, 0
  br i1 %.not75.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.noexc60
  %i.el = load ptr, ptr @stderr, align 8
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.11, i64 298, i64 1, ptr %i.el) #34 ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.noexc60, %_ZNSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EE9push_backERKS3_.exit.i
  store ptr %i.bw, ptr %.047.i, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.bw, i64 560 ; 2 uses
  %i.en = load i32, ptr %i.em, align 16
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 16
  br label %_ZN8nanobind6detailL19nb_module_init_implEPKcP7_object.exit

bb.by:                                            ; preds = %.invoke89, %.invoke, %bb.bv, %_ZNKSt6vectorIPN8nanobind6detail12nb_internalsESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.bs, %bb.bo, %bb.bm, %bb.bk, %_ZN8nanobind6detail23dict_getitem_or_defaultEP7_objectS2_S2_.exit98.i, %bb.bd, %_ZL9Py_DECREFP7_object.exit81.i, %bb.ba, %bb.az, %bb.ax, %bb.aw, %.split49.i, %bb.at, %bb.ar, %bb.aq, %.noexc41, %.noexc40, %.noexc39, %bb.ap, %_ZN8nanobind6detail23dict_getitem_or_defaultEP7_objectS2_S2_.exit.i, %.noexc36, %bb.an, %bb.am, %_ZL9Py_DECREFP7_object.exit85.i, %bb.ak, %bb.ac, %.noexc28, %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.v, %_ZN8nanobind6detail23dict_getitem_or_defaultEP7_objectS2_S2_.exit52.i.i, %bb.m, %.noexc19, %_ZN8nanobind6detail23dict_getitem_or_defaultEP7_objectS2_S2_.exit.i.i, %bb.e, %.noexc12, %bb.d, %bb.c, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread.i, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i
  %i.ep = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nanobind4abi112python_errorE
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.au, %bb.by
  %eh.lpad-body = phi { ptr, i32 } [ %i.ep, %bb.by ], [ %i.cj, %bb.au ] ; 2 uses
  %i.eq = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 3 uses
  %i.er = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 3 uses
  %i.es = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi112python_errorE) #29
  %i.et = icmp eq i32 %i.er, %i.es
  br i1 %i.et, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.body
  %i.eu = tail call ptr @__cxa_begin_catch(ptr %i.eq) #29
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8
  tail call void @_ZN8nanobind6detail13error_restoreEP7_object(ptr noundef %i.ew) #29
  store ptr null, ptr %i.ev, align 8
  br label %.invoke90

bb.ca:                                            ; preds = %.body
  %i.ex = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #29
  %i.ey = icmp eq i32 %i.er, %i.ex
  br i1 %i.ey, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ez = tail call ptr @__cxa_begin_catch(ptr %i.eq) #29 ; 0 uses
  %i.fa = invoke ptr @PyErr_NoMemory()
          to label %.invoke90 unwind label %bb.ce ; 0 uses

bb.cc:                                            ; preds = %bb.ca
  %i.fb = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #29
  %i.fc = icmp eq i32 %i.er, %i.fb
  %i.fd = tail call ptr @__cxa_begin_catch(ptr %i.eq) #29 ; 2 uses
  %i.fe = load ptr, ptr @PyExc_RuntimeError, align 8
  br i1 %i.fc, label %bb.cd, label %.invoke91

bb.cd:                                            ; preds = %bb.cc
  %i.ff = load ptr, ptr %i.fd, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = tail call noundef ptr %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %i.fd) #29
  br label %.invoke91

.invoke91:                                        ; preds = %bb.cc, %bb.cd
  %i.fj = phi ptr [ %i.fi, %bb.cd ], [ @.str.1, %bb.cc ]
  invoke void @PyErr_SetString(ptr noundef %i.fe, ptr noundef %i.fj)
          to label %.invoke90 unwind label %bb.ce

.invoke90:                                        ; preds = %.invoke91, %bb.cb, %bb.bz
  invoke void @__cxa_end_catch()
          to label %_ZN8nanobind6detailL19nb_module_init_implEPKcP7_object.exit unwind label %bb.ce

_ZN8nanobind6detailL19nb_module_init_implEPKcP7_object.exit: ; preds = %.invoke90, %.invoke89, %bb.bx, %bb.bn, %_ZL9Py_DECREFP7_object.exit79.i, %bb.ao, %.noexc37, %_ZL9Py_DECREFP7_object.exit.i.i, %.noexc31, %_ZN8nanobind6detailL16nb_module_anchorEP7_object.exit.i, %_ZL9Py_DECREFP7_object.exit41.i.i, %bb.l, %bb.k, %.noexc17, %bb.m, %bb.bo
  %.0 = phi ptr [ null, %_ZL9Py_DECREFP7_object.exit41.i.i ], [ null, %bb.l ], [ null, %.invoke90 ], [ null, %.noexc17 ], [ null, %bb.k ], [ null, %_ZN8nanobind6detailL16nb_module_anchorEP7_object.exit.i ], [ %i.dp, %bb.bo ], [ null, %bb.m ], [ null, %.noexc31 ], [ null, %bb.bn ], [ %i.bl, %bb.ao ], [ null, %_ZL9Py_DECREFP7_object.exit.i.i ], [ %i.bl, %.noexc37 ], [ null, %_ZL9Py_DECREFP7_object.exit79.i ], [ %i.bw, %bb.bx ], [ null, %.invoke89 ]
  ret ptr %.0

bb.ce:                                            ; preds = %.invoke91, %.invoke90, %bb.cb
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  tail call void @__clang_call_terminate(ptr %i.fl) #31
  unreachable
}

; Function Attrs: mustprogress noinline noreturn nounwind uwtable
define hidden void @_ZN8nanobind6detail16fail_unspecifiedEv() local_unnamed_addr #15 {
bb.a:
  tail call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.2) #31
  unreachable
}

; Function Attrs: noreturn nounwind
declare hidden void @_ZN8nanobind6detail4failEPKcz(ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN8nanobind6detailL18cached_string_slowEPNS0_12nb_internalsEPKcmPbmb(ptr nofree noundef captures(address) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef range(i64 0, 4096) %4, i1 noundef zeroext %5) unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = icmp ne i64 %2, 0
  %or.cond = and i1 %i.c, %5
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke ptr @PyUnicode_FromString(ptr noundef %1)
          to label %bb.c unwind label %bb.ab      ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ne ptr %i.d, null
  %i.f = zext i1 %i.e to i8
  store i8 %i.f, ptr %3, align 1
  br label %bb.aa

bb.d:                                             ; preds = %bb.a
  %i.g = invoke ptr @PyUnicode_InternFromString(ptr noundef %1)
          to label %bb.e unwind label %bb.ab      ; 12 uses

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.aa, label %bb.f, !prof !4

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %3, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %4 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not61 = icmp eq ptr %i.k, null
  br i1 %.not61, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load i64, ptr %i.i, align 8
  %i.m = icmp eq i64 %i.l, %i.b
  br i1 %i.m, label %bb.h, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %i.i, i64 8
  %.val = load ptr, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.i, i64 16
  %.val70 = load i64, ptr %i.o, align 8           ; 3 uses
  %i.p = icmp ult i64 %.val70, %2
  br i1 %i.p, label %bb.i, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.val70
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread

_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit: ; preds = %bb.i
  %bcmp.i = tail call i32 @bcmp(ptr readonly %.val, ptr nonnull readonly %1, i64 %.val70)
  %i.t = icmp eq i32 %bcmp.i, 0
  br i1 %i.t, label %bb.j, label %_ZN8nanobind6detailL16name_cache_matchERKNS0_12nb_internals16name_cache_entryEPKcm.exit.thread
end_hunk_1
