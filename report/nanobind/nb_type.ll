Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/nb_type?download=true
inline.NumInlined: 874
inline.NumDeleted: 423
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8nanobind6detail9type_dictEP7_object:bb.a
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #31
  unreachable
}

declare ptr @PyType_GetDict(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN8nanobind6detail9inst_dictEP7_object(ptr noundef %0) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 288
  %i.c = load i64, ptr %i.b, align 8
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke ptr @PyObject_GenericGetDict(ptr noundef nonnull %0, ptr noundef null)
          to label %bb.c unwind label %bb.f       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  invoke void @PyErr_Clear()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.0

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #31
  unreachable
}

declare ptr @PyObject_GenericGetDict(ptr noundef, ptr noundef) #3

declare void @PyErr_Clear() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN8nanobind6detail11type_freezeEP7_object(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #8 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN8nanobind6detail16nb_type_setattroEP7_objectS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit, label %_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit.thread, !prof !8

_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit: ; preds = %bb.a
  %i.c = tail call fastcc noundef i32 @_ZN8nanobind6detailL15nb_type_init_pyEP11_typeobject(ptr noundef nonnull %0)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit._ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit.thread_crit_edge, label %_ZL9Py_DECREFP7_object.exit41.thread, !prof !9

_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit._ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit.thread_crit_edge: ; preds = %_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit.thread

_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit.thread: ; preds = %_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit._ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit.thread_crit_edge, %bb.a
  %i.e = phi ptr [ %.pre, %_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit._ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit.thread_crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = invoke ptr @_PyType_Lookup(ptr noundef nonnull %0, ptr noundef %1)
          to label %bb.b unwind label %bb.e       ; 11 uses

bb.b:                                             ; preds = %_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit.thread
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN8nanobind6detail11type_lookupEPNS0_12nb_internalsEP7_objectS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add i32 %i.g, 1                          ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.h, ptr %i.f, align 8
  br label %bb.f

bb.e:                                             ; preds = %_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit.thread
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %i.f, i64 8
  %.val42 = load ptr, ptr %i.n, align 8
  %i.o = icmp eq ptr %.val42, %i.m
  br i1 %i.o, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %.not36 = icmp eq ptr %2, null
  br i1 %.not36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.p, align 8
  %.not37 = icmp eq ptr %.val, %i.m
  br i1 %.not37, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.r = load ptr, ptr %i.q, align 16
  %i.s = tail call noundef i32 %i.r(ptr noundef nonnull %i.f, ptr noundef nonnull %0, ptr noundef %2) ; 3 uses
  %i.t = load i64, ptr %i.f, align 8              ; 2 uses
  %i.u = and i64 %i.t, 2147483648
  %.not45 = icmp eq i64 %i.u, 0
  br i1 %.not45, label %bb.j, label %_ZL9Py_DECREFP7_object.exit41.thread

bb.j:                                             ; preds = %bb.i
  %i.v = add nsw i64 %i.t, -1                     ; 2 uses
  store i64 %i.v, ptr %i.f, align 8
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.k, label %_ZL9Py_DECREFP7_object.exit41.thread

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f)
  br label %_ZL9Py_DECREFP7_object.exit41.thread

bb.l:                                             ; preds = %bb.h, %bb.f
  %i.x = load i64, ptr %i.f, align 8              ; 2 uses
  %i.y = and i64 %i.x, 2147483648
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %bb.m, label %_ZL9Py_DECREFP7_object.exit

bb.m:                                             ; preds = %bb.l
  %i.z = add nsw i64 %i.x, -1                     ; 2 uses
  store i64 %i.z, ptr %i.f, align 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.n, label %_ZL9Py_DECREFP7_object.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f)
  br label %_ZL9Py_DECREFP7_object.exit

_ZL9Py_DECREFP7_object.exit:                      ; preds = %bb.l, %bb.m, %bb.n
  %i.ab = tail call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %1, ptr noundef null) ; 3 uses
  %.not38 = icmp eq ptr %i.ab, null
  br i1 %.not38, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZL9Py_DECREFP7_object.exit
  tail call void @PyErr_Clear()
  br label %_ZN8nanobind6detail11type_lookupEPNS0_12nb_internalsEP7_objectS4_.exit

bb.p:                                             ; preds = %_ZL9Py_DECREFP7_object.exit
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = icmp eq i8 %i.ac, 64
  br i1 %i.ad, label %bb.q, label %_ZN8nanobind6detail11type_lookupEPNS0_12nb_internalsEP7_objectS4_.exit

bb.q:                                             ; preds = %bb.p
  %i.ae = load ptr, ptr @PyExc_AttributeError, align 8
  %i.af = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ae, ptr noundef nonnull @.str, ptr noundef nonnull %i.ab) ; 0 uses
  br label %_ZL9Py_DECREFP7_object.exit41.thread

_ZN8nanobind6detail11type_lookupEPNS0_12nb_internalsEP7_objectS4_.exit: ; preds = %bb.o, %bb.p, %bb.b
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyType_Type, i64 152), align 8
  %i.ah = tail call noundef i32 %i.ag(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.r, label %_ZL9Py_DECREFP7_object.exit41.thread

bb.r:                                             ; preds = %_ZN8nanobind6detail11type_lookupEPNS0_12nb_internalsEP7_objectS4_.exit
  tail call void @_ZN8nanobind6detail24nb_trampoline_invalidateEP7_object(ptr noundef nonnull %0) #30
  br label %_ZL9Py_DECREFP7_object.exit41.thread

_ZL9Py_DECREFP7_object.exit41.thread:             ; preds = %bb.k, %bb.j, %bb.i, %bb.q, %bb.r, %_ZN8nanobind6detail11type_lookupEPNS0_12nb_internalsEP7_objectS4_.exit, %_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit
  %.3 = phi i32 [ -1, %_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit ], [ %i.ah, %_ZN8nanobind6detail11type_lookupEPNS0_12nb_internalsEP7_objectS4_.exit ], [ 0, %bb.r ], [ %i.s, %bb.k ], [ %i.s, %bb.j ], [ %i.s, %bb.i ], [ -1, %bb.q ]
  ret i32 %.3
}

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare hidden void @_ZN8nanobind6detail24nb_trampoline_invalidateEP7_object(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN8nanobind6detail24nb_type_create_metaclassEPNS0_12nb_internalsEP11_typeobject(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [7 x %struct.PyType_Slot], align 16 ; 4 uses
  %3 = alloca %struct.PyType_Spec, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %2, ptr noundef nonnull align 16 dereferenceable(112) @__const._ZN8nanobind6detail24nb_type_create_metaclassEPNS0_12nb_internalsEP11_typeobject.slots, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr @.str.1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4294967128, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 256, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.c, align 8
  %i.d = load ptr, ptr %0, align 64
  %i.e = invoke noundef ptr @PyType_FromMetaclass(ptr noundef %1, ptr noundef %i.d, ptr noundef nonnull %3, ptr noundef null)
          to label %_ZN8nanobind6detailL22nb_type_from_metaclassEP11_typeobjectP7_objectP11PyType_Spec.exit unwind label %bb.e ; 6 uses

_ZN8nanobind6detailL22nb_type_from_metaclassEP11_typeobjectP7_objectP11PyType_Spec.exit: ; preds = %bb.a
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit, label %bb.b

bb.b:                                             ; preds = %_ZN8nanobind6detailL22nb_type_from_metaclassEP11_typeobjectP7_objectP11PyType_Spec.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke i32 @PyList_Append(ptr noundef %i.g, ptr noundef nonnull %i.e)
          to label %.noexc unwind label %bb.e     ; 0 uses

.noexc:                                           ; preds = %bb.b
  %i.i = load i64, ptr %i.e, align 8              ; 2 uses
  %i.j = and i64 %i.i, 2147483648
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.c, label %_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit

bb.c:                                             ; preds = %.noexc
  %i.k = add nsw i64 %i.i, -1                     ; 2 uses
  store i64 %i.k, ptr %i.e, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.e)
          to label %_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit unwind label %bb.e

_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit: ; preds = %bb.c, %.noexc, %bb.d, %_ZN8nanobind6detailL22nb_type_from_metaclassEP11_typeobjectP7_objectP11PyType_Spec.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %i.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8nanobind6detailL15nb_type_deallocEP7_object(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 924 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = and i32 %i.c, 8192
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1072
  tail call void @_ZN8nanobind6detail13nb_pool_drainEPNS0_12nb_inst_poolEb(ptr noundef nonnull %i.e, i1 noundef zeroext true) #30
  %.pre22.pre = load i32, ptr %i.b, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre22 = phi i32 [ %.pre22.pre, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.g = load ptr, ptr %i.f, align 8
  %.not18 = icmp ne ptr %i.g, null
  %i.h = and i32 %.pre22, 67108864
  %i.i = icmp eq i32 %i.h, 0
  %or.cond = select i1 %.not18, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8nanobind6detail18nb_type_unregisterEPNS0_9type_dataE(ptr noundef nonnull %i.a) #30
  %.pre = load i32, ptr %i.b, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi i32 [ %.pre, %bb.d ], [ %.pre22, %bb.c ]
  %i.k = and i32 %i.j, 33554432
  %.not19 = icmp eq i32 %i.k, 0
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @PyMem_Free(ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @PyMem_Free(ptr noundef %i.o)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not20 = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.s = load ptr, ptr %i.r, align 8
  tail call void @free(ptr noundef %i.q) #30
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.u = load ptr, ptr %i.t, align 8
  tail call void @PyMem_Free(ptr noundef %i.u)
  tail call void @_ZN8nanobind6detail18nb_trampoline_freeEPNS0_9type_dataE(ptr noundef nonnull %i.a) #30
  %i.v = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.v, align 8             ; 3 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyType_Type, i64 48), align 8
  tail call void %i.w(ptr noundef nonnull %0)
  %i.x = load i64, ptr %.val, align 8             ; 2 uses
  %i.y = and i64 %i.x, 2147483648
  %.not21 = icmp eq i64 %i.y, 0
  br i1 %.not21, label %bb.h, label %_ZL9Py_DECREFP7_object.exit

bb.h:                                             ; preds = %bb.g
  %i.z = add nsw i64 %i.x, -1                     ; 2 uses
  store i64 %i.z, ptr %.val, align 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.i, label %_ZL9Py_DECREFP7_object.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val)
  br label %_ZL9Py_DECREFP7_object.exit

_ZL9Py_DECREFP7_object.exit:                      ; preds = %bb.g, %bb.h, %bb.i
  br i1 %.not20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZL9Py_DECREFP7_object.exit
  tail call void @_ZN8nanobind6detail17internals_dec_refEPNS0_12nb_internalsE(ptr noundef %i.s)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZL9Py_DECREFP7_object.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN8nanobind6detailL12nb_type_initEP7_objectS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyType_Type, i64 296), align 8
  %i.b = tail call noundef i32 %i.a(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit, label %_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit.thread, !prof !8

_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit: ; preds = %bb.b
  %i.f = tail call fastcc noundef i32 @_ZN8nanobind6detailL15nb_type_init_pyEP11_typeobject(ptr noundef nonnull %0)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit.thread, label %bb.c

_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit.thread: ; preds = %bb.b, %_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit.thread, %_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ 0, %_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit.thread ], [ -1, %_ZN8nanobind6detailL14nb_type_ensureEP11_typeobject.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress noinline uwtable
define hidden noundef ptr @_ZN8nanobind6detail12extract_nameEPKcS2_S2_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 10) #32 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.c = select i1 %.not, ptr %2, ptr %i.b        ; 2 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32 ; 2 uses
  %i.e = tail call i32 @strncmp(ptr noundef nonnull %i.c, ptr noundef nonnull %1, i64 noundef %i.d) #32
  %.not41 = icmp eq i32 %i.e, 0
  br i1 %.not41, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d ; 8 uses
  %i.g = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.f, i32 noundef 40) #32 ; 4 uses
  %i.h = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.f, i32 noundef 91) #32 ; 4 uses
  %i.i = icmp eq ptr %i.g, null
  %.not43 = icmp eq ptr %i.h, null                ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not43, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp ult ptr %i.g, %i.h
  %i.k = select i1 %i.j, ptr %i.g, ptr %i.h
  br label %.thread

bb.f:                                             ; preds = %bb.c
  br i1 %.not43, label %bb.g, label %.thread, !prof !28

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #31
  unreachable

end_hunk_0
begin_hunk_1_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E22rehash_on_extreme_loadEs:bb.a

_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit: ; preds = %bb.c
  %i.n = shl nsw i64 %i.i, 1
  %i.o = add i64 %i.n, 2
  tail call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %i.o)
  store i8 0, ptr %i.a, align 8
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !range !12, !noundef !13
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.p, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load float, ptr %i.s, align 8            ; 2 uses
  %i.u = fcmp une float %i.t, 0.000000e+00
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = uitofp i64 %i.f to float                 ; 2 uses
  %i.z = uitofp i64 %i.w to float
  %i.aa = fdiv float %i.y, %i.z
  %.0.i = select i1 %i.x, float 0.000000e+00, float %i.aa
  %i.ab = fcmp olt float %.0.i, %i.t
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = add nuw i64 %i.f, 1
  %i.ad = uitofp i64 %i.ac to float
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.y, i64 1
  %i.ai = insertelement <2 x float> poison, float %i.af, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fdiv <2 x float> %i.ah, %i.aj
  %i.al = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ak) ; 2 uses
  %i.am = extractelement <2 x float> %i.al, i64 0
  %i.an = fptoui float %i.am to i64
  %i.ao = extractelement <2 x float> %i.al, i64 1
  %i.ap = fptoui float %i.ao to i64
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.ap)
  tail call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %.sroa.speculated.i.i)
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.j, %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit
  %.0 = phi i1 [ true, %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit ], [ true, %bb.j ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.g ]
  ret i1 %.0
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tsl::detail_robin_hash::robin_hash.3", align 8 ; 17 uses
  %3 = alloca %"class.std::allocator.35", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load float, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load float, ptr %i.c, align 4
  call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_EC2EmRKSC_RKSD_RKSE_ff(ptr noundef nonnull align 8 dereferenceable(74) %2, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, float noundef %i.b, float noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not23 = icmp eq ptr %i.g, %i.i
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = load i64, ptr %i.e, align 8
  %.fr25 = freeze i64 %i.j
  %i.k = icmp ult i64 %.fr25, 4294967297
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %.sroa.019.024.us = phi ptr [ %i.ap, %bb.f ], [ %i.g, %.lr.ph ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.019.024.us, i64 4
  %i.n = load i16, ptr %i.m, align 4
  %i.o = icmp eq i16 %i.n, -1
  br i1 %i.o, label %bb.f, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit.us

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit.us: ; preds = %.lr.ph.split.us
  %i.p = load i32, ptr %.sroa.019.024.us, align 4 ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = load i64, ptr %2, align 8                ; 2 uses
  %i.s = and i64 %i.r, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.019.024.us, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.019.024.us, i64 16 ; 2 uses
  %.pre17.i.us = load ptr, ptr %i.l, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit.us
  %i.v = phi i64 [ %i.r, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit.us ], [ %i.ak, %bb.e ]
  %i.w = phi ptr [ %.pre17.i.us, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit.us ], [ %i.al, %bb.e ] ; 2 uses
  %.013.i.us = phi i16 [ 0, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit.us ], [ %i.am, %bb.e ] ; 4 uses
  %.012.i.us = phi i32 [ %i.p, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit.us ], [ %.1.i.us, %bb.e ] ; 3 uses
  %.0.i.us = phi i64 [ %i.s, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit.us ], [ %i.ao, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.0.i.us ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 4 uses
  %i.z = load i16, ptr %i.y, align 4              ; 2 uses
  %i.aa = icmp sgt i16 %.013.i.us, %i.z
  br i1 %i.aa, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp eq i16 %i.z, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  br i1 %i.ab, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E22insert_value_on_rehashEmsjOSA_.exit.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.t, align 8
  %i.ae = load ptr, ptr %i.ac, align 8
  store ptr %i.ae, ptr %i.t, align 8
  store ptr %i.ad, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.u, align 8
  %i.ah = load ptr, ptr %i.af, align 8
  store ptr %i.ah, ptr %i.u, align 8
  store ptr %i.ag, ptr %i.af, align 8
  %i.ai = load i16, ptr %i.y, align 4
  store i16 %.013.i.us, ptr %i.y, align 4
  %i.aj = load i32, ptr %i.x, align 8
  store i32 %.012.i.us, ptr %i.x, align 8
  %.pre.i.us = load ptr, ptr %i.l, align 8
  %.pre30 = load i64, ptr %2, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.ak = phi i64 [ %.pre30, %bb.d ], [ %i.v, %bb.b ] ; 2 uses
  %i.al = phi ptr [ %.pre.i.us, %bb.d ], [ %i.w, %bb.b ]
  %.114.i.us = phi i16 [ %i.ai, %bb.d ], [ %.013.i.us, %bb.b ]
  %.1.i.us = phi i32 [ %i.aj, %bb.d ], [ %.012.i.us, %bb.b ]
  %i.am = add i16 %.114.i.us, 1
  %i.an = add i64 %.0.i.us, 1
  %i.ao = and i64 %i.ak, %i.an
  br label %bb.b, !llvm.loop !80

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E22insert_value_on_rehashEmsjOSA_.exit.us: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  store i32 %.012.i.us, ptr %i.x, align 8
  store i16 %.013.i.us, ptr %i.y, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E22insert_value_on_rehashEmsjOSA_.exit.us, %.lr.ph.split.us
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.019.024.us, i64 24 ; 2 uses
  %.not.us = icmp eq ptr %i.ap, %i.i
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.n, %bb.f, %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8
  %i.aq = load i64, ptr %0, align 8
  store i64 %i.aq, ptr %2, align 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.f, align 8
  %i.au = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aw = load <2 x ptr>, ptr %i.ar, align 8
  store <2 x ptr> %i.at, ptr %i.ar, align 8
  store <2 x ptr> %i.aw, ptr %i.f, align 8
  %i.ax = load <2 x ptr>, ptr %i.av, align 8
  %i.ay = load ptr, ptr %i.av, align 8
  %i.az = load <2 x ptr>, ptr %i.as, align 8
  store <2 x ptr> %i.ax, ptr %i.as, align 8
  store <2 x ptr> %i.az, ptr %i.av, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bb = load i64, ptr %i.e, align 8
  %i.bc = load <2 x i64>, ptr %i.ba, align 8
  store i64 %i.bb, ptr %i.ba, align 8
  store <2 x i64> %i.bc, ptr %i.e, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bf = load i64, ptr %i.bd, align 8
  %i.bg = load i64, ptr %i.be, align 8
  store i64 %i.bg, ptr %i.bd, align 8
  store i64 %i.bf, ptr %i.be, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.bi = load <2 x float>, ptr %i.a, align 8
  %i.bj = load <2 x float>, ptr %i.bh, align 8
  store <2 x float> %i.bi, ptr %i.bh, align 8
  store <2 x float> %i.bj, ptr %i.a, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bm = load i8, ptr %i.bk, align 8, !range !12, !noundef !13
  %i.bn = load i8, ptr %i.bl, align 8, !range !12, !noundef !13
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 73
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.bq = load i8, ptr %i.bo, align 1, !range !12, !noundef !13
  %i.br = load i8, ptr %i.bp, align 1, !range !12, !noundef !13
  %4 = zext nneg i8 %i.bn to i16
  %5 = zext nneg i8 %i.br to i16
  %6 = shl nuw nsw i16 %5, 8
  %7 = or disjoint i16 %6, %4
  store i16 %7, ptr %i.bk, align 8
  %8 = zext nneg i8 %i.bm to i16
  %9 = zext nneg i8 %i.bq to i16
  %10 = shl nuw nsw i16 %9, 8
  %11 = or disjoint i16 %10, %8
  store i16 %11, ptr %i.bl, align 8
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_ED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.bs = ptrtoint ptr %i.ay to i64
  %i.bt = ptrtoint ptr %i.au to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.bu) #35
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_ED2Ev.exit: ; preds = %._crit_edge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.n
  %.sroa.019.024 = phi ptr [ %i.dh, %bb.n ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 4
  %i.bw = load i16, ptr %i.bv, align 4
  %i.bx = icmp eq i16 %i.bw, -1
  br i1 %i.bx, label %bb.n, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 8 ; 4 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = icmp eq i8 %i.cc, 42
  %.idx.i.i.i = zext i1 %i.cd to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i ; 2 uses
  %i.cf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ce) #32
  %i.cg = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull %i.ce, i64 noundef %i.cf, i64 noundef 3339675911)
          to label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit unwind label %bb.i ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #31
  unreachable

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit: ; preds = %bb.h
  %i.cj = load i64, ptr %2, align 8               ; 2 uses
  %i.ck = and i64 %i.cj, %i.cg
  %i.cl = trunc i64 %i.cg to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 16 ; 2 uses
  %.pre17.i = load ptr, ptr %i.l, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit
  %i.cn = phi i64 [ %i.cj, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit ], [ %i.dc, %bb.m ]
  %i.co = phi ptr [ %.pre17.i, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit ], [ %i.dd, %bb.m ] ; 2 uses
  %.013.i = phi i16 [ 0, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit ], [ %i.de, %bb.m ] ; 4 uses
  %.012.i = phi i32 [ %i.cl, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit ], [ %.1.i, %bb.m ] ; 3 uses
  %.0.i = phi i64 [ %i.ck, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit ], [ %i.dg, %bb.m ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %.0.i ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 4 uses
  %i.cr = load i16, ptr %i.cq, align 4            ; 2 uses
  %i.cs = icmp sgt i16 %.013.i, %i.cr
  br i1 %i.cs, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ct = icmp eq i16 %i.cr, -1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  br i1 %i.ct, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E22insert_value_on_rehashEmsjOSA_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cv = load ptr, ptr %i.by, align 8
  %i.cw = load ptr, ptr %i.cu, align 8
  store ptr %i.cw, ptr %i.by, align 8
  store ptr %i.cv, ptr %i.cu, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.cy = load ptr, ptr %i.cm, align 8
  %i.cz = load ptr, ptr %i.cx, align 8
  store ptr %i.cz, ptr %i.cm, align 8
  store ptr %i.cy, ptr %i.cx, align 8
  %i.da = load i16, ptr %i.cq, align 4
  store i16 %.013.i, ptr %i.cq, align 4
  %i.db = load i32, ptr %i.cp, align 8
  store i32 %.012.i, ptr %i.cp, align 8
  %.pre.i = load ptr, ptr %i.l, align 8
  %.pre = load i64, ptr %2, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.dc = phi i64 [ %.pre, %bb.l ], [ %i.cn, %bb.j ] ; 2 uses
  %i.dd = phi ptr [ %.pre.i, %bb.l ], [ %i.co, %bb.j ]
  %.114.i = phi i16 [ %i.da, %bb.l ], [ %.013.i, %bb.j ]
  %.1.i = phi i32 [ %i.db, %bb.l ], [ %.012.i, %bb.j ]
  %i.de = add i16 %.114.i, 1
  %i.df = add i64 %.0.i, 1
  %i.dg = and i64 %i.dc, %i.df
  br label %bb.j, !llvm.loop !80

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E22insert_value_on_rehashEmsjOSA_.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false)
  store i32 %.012.i, ptr %i.cp, align 8
  store i16 %.013.i, ptr %i.cq, align 4
  br label %bb.n

bb.n:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E22insert_value_on_rehashEmsjOSA_.exit, %.lr.ph.split
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.dh, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_EC2EmRKSC_RKSD_RKSE_ff(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, float noundef %5, float noundef %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, -9223372036854775808
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.23)
          to label %bb.c unwind label %common.resume

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #33
  unreachable

common.resume:                                    ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #30
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.f, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i

_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i: ; preds = %bb.d
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ult i64 %i.d, 2
  br i1 %i.e, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i
  %i.f = add i64 %1, -1                           ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = or i64 %i.q, %i.p
  %i.s = add nuw i64 %i.r, 1
  br label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit

_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i, %bb.e
  %.012.i.i = phi i64 [ %i.s, %bb.e ], [ %1, %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i ] ; 9 uses
  %i.t = add i64 %.012.i.i, -1
  store i64 %i.t, ptr %0, align 8
  %i.u = icmp ugt i64 %.012.i.i, 384307168202282325
  br i1 %i.u, label %.noexc, label %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEELb1EEESaISC_EEC2EmRKSD_.exit.i

.noexc:                                           ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #33
  unreachable

_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEELb1EEESaISC_EEC2EmRKSD_.exit.i: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = mul nuw nsw i64 %.012.i.i, 24
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #36 ; 5 uses
  store ptr %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.012.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.y, ptr %i.z, align 8
  %xtraiter = and i64 %.012.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEELb1EEESaISC_EEC2EmRKSD_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEELb1EEESaISC_EEC2EmRKSD_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEELb1EEESaISC_EEC2EmRKSD_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEELb1EEESaISC_EEC2EmRKSD_.exit.i ]
  store i32 0, ptr %.08.i.i.i.i.i.prol, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 4
  store i16 -1, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 6
  store i8 0, ptr %i.ab, align 2
  %i.ac = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !81

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEELb1EEESaISC_EEC2EmRKSD_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEELb1EEESaISC_EEC2EmRKSD_.exit.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEELb1EEESaISC_EEC2EmRKSD_.exit.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEELb1EEESaISC_EEC2EmRKSD_.exit.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %i.ae = icmp ult i64 %.012.i.i, 4
  br i1 %i.ae, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.08.i.i.i.i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4
  store i16 -1, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 6
  store i8 0, ptr %i.ag, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 28
  store i16 -1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 30
  store i8 0, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  store i32 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 52
  store i16 -1, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 54
  store i8 0, ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i32 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 76
  store i16 -1, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 78
  store i8 0, ptr %i.ap, align 2
  %i.aq = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i.i.i.3, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !82

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.at = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket acquire, align 8
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.g, label %.thread, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.av = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #30
  %.not.i10 = icmp eq i32 %i.av, 0
  br i1 %.not.i10, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, align 8
  store i16 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 4), align 4
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #30
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.as, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i16 0, ptr %i.ax, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  br label %bb.i

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %.lcssa, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %.012.i.i, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i16 0, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %i.ay, align 8
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -18
  store i8 1, ptr %i.be, align 2
  %.pre = load i64, ptr %i.ba, align 8
  %i.bf = uitofp i64 %.pre to float
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.unr-lcssa
  %i.bg = phi float [ %i.bf, %.unr-lcssa ], [ 0.000000e+00, %.thread ]
  %i.bh = fcmp olt float %5, 0.000000e+00
  %i.bi = select i1 %i.bh, float 0.000000e+00, float %5 ; 2 uses
  %i.bj = fcmp ogt float %i.bi, 1.500000e-01
  %.sroa.speculated.i = select i1 %i.bj, float 1.500000e-01, float %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %.sroa.speculated.i, ptr %i.bk, align 8
  %i.bl = fcmp olt float %6, 2.000000e-01
  %i.bm = select i1 %i.bl, float 2.000000e-01, float %6 ; 2 uses
  %i.bn = fcmp ogt float %i.bm, f0x3F733333
  %.sroa.speculated.i11 = select i1 %i.bn, float f0x3F733333, float %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %.sroa.speculated.i11, ptr %i.bo, align 4
  %i.bp = fmul float %.sroa.speculated.i11, %i.bg
  %i.bq = fptoui float %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bq, ptr %i.br, align 8
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #20

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #21

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #23

declare void @PyErr_WriteUnraisable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef ptr @_ZN8nanobind6detail15getattr_str_defEPNS0_12nb_internalsEP7_objectPKcmS4_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZL10Py_XDECREFP7_object.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 2147483648
  %.not2.i = icmp eq i64 %i.c, 0
  br i1 %.not2.i, label %bb.c, label %_ZL10Py_XDECREFP7_object.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZL10Py_XDECREFP7_object.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.a)
          to label %_ZL10Py_XDECREFP7_object.exit unwind label %bb.e

_ZL10Py_XDECREFP7_object.exit:                    ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  ret ptr %0

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #31
  unreachable
}

; Function Attrs: nounwind
declare noundef ptr @_ZN8nanobind6detail11getattr_defEP7_objectS2_S2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #3

declare void @PyObject_ClearWeakRefs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #22

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvSt11align_val_t(ptr noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN8nanobind6detailL24nb_type_vectorcall_fixupEPNS0_7nb_funcEP7_objectPKS4_lS4_b(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [5 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = add nuw nsw i64 %3, 1                    ; 4 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %4, i64 16
  %.val = load i64, ptr %i.c, align 8
  %i.d = add i64 %.val, %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.029 = phi i64 [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = icmp ugt i64 %.029, 4                    ; 2 uses
  %i.f = shl i64 %.029, 3                         ; 2 uses
  br i1 %i.e, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.g = invoke ptr @PyMem_Malloc(i64 noundef %i.f)
          to label %bb.e unwind label %bb.q       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq ptr %i.g, null
  br i1 %.not35, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  br i1 %5, label %bb.g, label %_ZL9Py_DECREFP7_object.exit39

bb.g:                                             ; preds = %bb.f
  %i.h = load i64, ptr %1, align 8                ; 2 uses
  %i.i = and i64 %i.h, 2147483648
  %.not41 = icmp eq i64 %i.i, 0
  br i1 %.not41, label %bb.h, label %_ZL9Py_DECREFP7_object.exit39

bb.h:                                             ; preds = %bb.g
  %i.j = add nsw i64 %i.h, -1                     ; 2 uses
  store i64 %i.j, ptr %1, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.i, label %_ZL9Py_DECREFP7_object.exit39

bb.i:                                             ; preds = %bb.h
  invoke void @_Py_Dealloc(ptr noundef nonnull %1)
          to label %_ZL9Py_DECREFP7_object.exit39 unwind label %bb.q

_ZL9Py_DECREFP7_object.exit39:                    ; preds = %bb.h, %bb.g, %bb.i, %bb.f
  %i.l = invoke ptr @PyErr_NoMemory()
          to label %_ZL9Py_DECREFP7_object.exit unwind label %bb.q

._crit_edge:                                      ; preds = %bb.c, %bb.e
  %.031 = phi ptr [ %i.g, %bb.e ], [ %i.a, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.n = add i64 %i.f, -8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %2, i64 %i.n, i1 false)
  store ptr %1, ptr %.031, align 8
  %i.o = or i64 %i.b, 4611686018427387904
  %spec.select = select i1 %5, i64 %i.o, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef ptr %i.q(ptr noundef nonnull %0, ptr noundef nonnull %.031, i64 noundef %spec.select, ptr noundef %4)
          to label %bb.j unwind label %bb.q       ; 2 uses

bb.j:                                             ; preds = %._crit_edge
  br i1 %i.e, label %bb.k, label %bb.l, !prof !8

bb.k:                                             ; preds = %bb.j
  invoke void @PyMem_Free(ptr noundef nonnull %.031)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %5, label %bb.m, label %_ZL9Py_DECREFP7_object.exit

bb.m:                                             ; preds = %bb.l
  %.not36 = icmp eq ptr %i.r, null
  br i1 %.not36, label %bb.n, label %_ZL9Py_DECREFP7_object.exit

bb.n:                                             ; preds = %bb.m
  %i.s = load i64, ptr %1, align 8                ; 2 uses
  %i.t = and i64 %i.s, 2147483648
  %.not40 = icmp eq i64 %i.t, 0
  br i1 %.not40, label %bb.o, label %_ZL9Py_DECREFP7_object.exit

bb.o:                                             ; preds = %bb.n
  %i.u = add nsw i64 %i.s, -1                     ; 2 uses
  store i64 %i.u, ptr %1, align 8
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.p, label %_ZL9Py_DECREFP7_object.exit

end_hunk_1
begin_hunk_2_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22rehash_on_extreme_loadEs:bb.a
bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #30
  resume { ptr, i32 } %i.m

_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit: ; preds = %bb.c
  %i.n = shl nsw i64 %i.i, 1
  %i.o = add i64 %i.n, 2
  tail call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %i.o)
  store i8 0, ptr %i.a, align 8
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !range !12, !noundef !13
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.p, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load float, ptr %i.s, align 8            ; 2 uses
  %i.u = fcmp une float %i.t, 0.000000e+00
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = uitofp i64 %i.f to float                 ; 2 uses
  %i.z = uitofp i64 %i.w to float
  %i.aa = fdiv float %i.y, %i.z
  %.0.i = select i1 %i.x, float 0.000000e+00, float %i.aa
  %i.ab = fcmp olt float %.0.i, %i.t
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = add nuw i64 %i.f, 1
  %i.ad = uitofp i64 %i.ac to float
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.y, i64 1
  %i.ai = insertelement <2 x float> poison, float %i.af, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fdiv <2 x float> %i.ah, %i.aj
  %i.al = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ak) ; 2 uses
  %i.am = extractelement <2 x float> %i.al, i64 0
  %i.an = fptoui float %i.am to i64
  %i.ao = extractelement <2 x float> %i.al, i64 1
  %i.ap = fptoui float %i.ao to i64
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.ap)
  tail call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %.sroa.speculated.i.i)
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.j, %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit
  %.0 = phi i1 [ true, %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit ], [ true, %bb.j ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tsl::detail_robin_hash::robin_hash", align 8 ; 17 uses
  %3 = alloca %"class.std::allocator.53", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load float, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load float, ptr %i.c, align 4
  call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_EC2EmRKS8_RKSA_RKSB_ff(ptr noundef nonnull align 8 dereferenceable(74) %2, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, float noundef %i.b, float noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not23 = icmp eq ptr %i.g, %i.i
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = load i64, ptr %i.e, align 8
  %.fr25 = freeze i64 %i.j
  %i.k = icmp ult i64 %.fr25, 4294967297
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %.sroa.019.024.us = phi ptr [ %i.ap, %bb.g ], [ %i.g, %.lr.ph ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.019.024.us, i64 4
  %i.n = load i16, ptr %i.m, align 4
  %i.o = icmp eq i16 %i.n, -1
  br i1 %i.o, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.p = load i32, ptr %.sroa.019.024.us, align 4 ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = load i64, ptr %2, align 8                ; 2 uses
  %i.s = and i64 %i.r, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.019.024.us, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.019.024.us, i64 16 ; 2 uses
  %.pre17.i.us = load ptr, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %i.v = phi i64 [ %i.r, %bb.b ], [ %i.ak, %bb.f ]
  %i.w = phi ptr [ %.pre17.i.us, %bb.b ], [ %i.al, %bb.f ] ; 2 uses
  %.013.i.us = phi i16 [ 0, %bb.b ], [ %i.am, %bb.f ] ; 4 uses
  %.012.i.us = phi i32 [ %i.p, %bb.b ], [ %.1.i.us, %bb.f ] ; 3 uses
  %.0.i.us = phi i64 [ %i.s, %bb.b ], [ %i.ao, %bb.f ] ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.0.i.us ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 4 uses
  %i.z = load i16, ptr %i.y, align 4              ; 2 uses
  %i.aa = icmp sgt i16 %.013.i.us, %i.z
  br i1 %i.aa, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp eq i16 %i.z, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  br i1 %i.ab, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS4_.exit.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.t, align 8
  %i.ae = load ptr, ptr %i.ac, align 8
  store ptr %i.ae, ptr %i.t, align 8
  store ptr %i.ad, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.u, align 8
  %i.ah = load ptr, ptr %i.af, align 8
  store ptr %i.ah, ptr %i.u, align 8
  store ptr %i.ag, ptr %i.af, align 8
  %i.ai = load i16, ptr %i.y, align 4
  store i16 %.013.i.us, ptr %i.y, align 4
  %i.aj = load i32, ptr %i.x, align 8
  store i32 %.012.i.us, ptr %i.x, align 8
  %.pre.i.us = load ptr, ptr %i.l, align 8
  %.pre30 = load i64, ptr %2, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.ak = phi i64 [ %.pre30, %bb.e ], [ %i.v, %bb.c ] ; 2 uses
  %i.al = phi ptr [ %.pre.i.us, %bb.e ], [ %i.w, %bb.c ]
  %.114.i.us = phi i16 [ %i.ai, %bb.e ], [ %.013.i.us, %bb.c ]
  %.1.i.us = phi i32 [ %i.aj, %bb.e ], [ %.012.i.us, %bb.c ]
  %i.am = add i16 %.114.i.us, 1
  %i.an = add i64 %.0.i.us, 1
  %i.ao = and i64 %i.ak, %i.an
  br label %bb.c, !llvm.loop !91

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS4_.exit.us: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  store i32 %.012.i.us, ptr %i.x, align 8
  store i16 %.013.i.us, ptr %i.y, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS4_.exit.us, %.lr.ph.split.us
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.019.024.us, i64 24 ; 2 uses
  %.not.us = icmp eq ptr %i.ap, %i.i
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.n, %bb.g, %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8
  %i.aq = load i64, ptr %0, align 8
  store i64 %i.aq, ptr %2, align 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.f, align 8
  %i.au = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aw = load <2 x ptr>, ptr %i.ar, align 8
  store <2 x ptr> %i.at, ptr %i.ar, align 8
  store <2 x ptr> %i.aw, ptr %i.f, align 8
  %i.ax = load <2 x ptr>, ptr %i.av, align 8
  %i.ay = load ptr, ptr %i.av, align 8
  %i.az = load <2 x ptr>, ptr %i.as, align 8
  store <2 x ptr> %i.ax, ptr %i.as, align 8
  store <2 x ptr> %i.az, ptr %i.av, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bb = load i64, ptr %i.e, align 8
  %i.bc = load <2 x i64>, ptr %i.ba, align 8
  store i64 %i.bb, ptr %i.ba, align 8
  store <2 x i64> %i.bc, ptr %i.e, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bf = load i64, ptr %i.bd, align 8
  %i.bg = load i64, ptr %i.be, align 8
  store i64 %i.bg, ptr %i.bd, align 8
  store i64 %i.bf, ptr %i.be, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.bi = load <2 x float>, ptr %i.a, align 8
  %i.bj = load <2 x float>, ptr %i.bh, align 8
  store <2 x float> %i.bi, ptr %i.bh, align 8
  store <2 x float> %i.bj, ptr %i.a, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bm = load i8, ptr %i.bk, align 8, !range !12, !noundef !13
  %i.bn = load i8, ptr %i.bl, align 8, !range !12, !noundef !13
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 73
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.bq = load i8, ptr %i.bo, align 1, !range !12, !noundef !13
  %i.br = load i8, ptr %i.bp, align 1, !range !12, !noundef !13
  %4 = zext nneg i8 %i.bn to i16
  %5 = zext nneg i8 %i.br to i16
  %6 = shl nuw nsw i16 %5, 8
  %7 = or disjoint i16 %6, %4
  store i16 %7, ptr %i.bk, align 8
  %8 = zext nneg i8 %i.bm to i16
  %9 = zext nneg i8 %i.bq to i16
  %10 = shl nuw nsw i16 %9, 8
  %11 = or disjoint i16 %10, %8
  store i16 %11, ptr %i.bl, align 8
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bs = ptrtoint ptr %i.ay to i64
  %i.bt = ptrtoint ptr %i.au to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.bu) #35
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit: ; preds = %._crit_edge, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.n
  %.sroa.019.024 = phi ptr [ %i.dh, %bb.n ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 4
  %i.bw = load i16, ptr %i.bv, align 4
  %i.bx = icmp eq i16 %i.bw, -1
  br i1 %i.bx, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 8 ; 4 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cb = lshr i64 %i.ca, 33
  %i.cc = xor i64 %i.cb, %i.ca
  %i.cd = mul i64 %i.cc, -49064778989728563       ; 2 uses
  %i.ce = lshr i64 %i.cd, 33
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = mul i64 %i.cf, -4265267296055464877     ; 2 uses
  %i.ch = lshr i64 %i.cg, 33
  %i.ci = xor i64 %i.ch, %i.cg                    ; 2 uses
  %i.cj = load i64, ptr %2, align 8               ; 2 uses
  %i.ck = and i64 %i.cj, %i.ci
  %i.cl = trunc i64 %i.ci to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 16 ; 2 uses
  %.pre17.i = load ptr, ptr %i.l, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %i.cn = phi i64 [ %i.cj, %bb.i ], [ %i.dc, %bb.m ]
  %i.co = phi ptr [ %.pre17.i, %bb.i ], [ %i.dd, %bb.m ] ; 2 uses
  %.013.i = phi i16 [ 0, %bb.i ], [ %i.de, %bb.m ] ; 4 uses
  %.012.i = phi i32 [ %i.cl, %bb.i ], [ %.1.i, %bb.m ] ; 3 uses
  %.0.i = phi i64 [ %i.ck, %bb.i ], [ %i.dg, %bb.m ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %.0.i ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 4 uses
  %i.cr = load i16, ptr %i.cq, align 4            ; 2 uses
  %i.cs = icmp sgt i16 %.013.i, %i.cr
  br i1 %i.cs, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ct = icmp eq i16 %i.cr, -1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  br i1 %i.ct, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS4_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cv = load ptr, ptr %i.by, align 8
  %i.cw = load ptr, ptr %i.cu, align 8
  store ptr %i.cw, ptr %i.by, align 8
  store ptr %i.cv, ptr %i.cu, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.cy = load ptr, ptr %i.cm, align 8
  %i.cz = load ptr, ptr %i.cx, align 8
  store ptr %i.cz, ptr %i.cm, align 8
  store ptr %i.cy, ptr %i.cx, align 8
  %i.da = load i16, ptr %i.cq, align 4
  store i16 %.013.i, ptr %i.cq, align 4
  %i.db = load i32, ptr %i.cp, align 8
  store i32 %.012.i, ptr %i.cp, align 8
  %.pre.i = load ptr, ptr %i.l, align 8
  %.pre = load i64, ptr %2, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.dc = phi i64 [ %.pre, %bb.l ], [ %i.cn, %bb.j ] ; 2 uses
  %i.dd = phi ptr [ %.pre.i, %bb.l ], [ %i.co, %bb.j ]
  %.114.i = phi i16 [ %i.da, %bb.l ], [ %.013.i, %bb.j ]
  %.1.i = phi i32 [ %i.db, %bb.l ], [ %.012.i, %bb.j ]
  %i.de = add i16 %.114.i, 1
  %i.df = add i64 %.0.i, 1
  %i.dg = and i64 %i.dc, %i.df
  br label %bb.j, !llvm.loop !91

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS4_.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false)
  store i32 %.012.i, ptr %i.cp, align 8
  store i16 %.013.i, ptr %i.cq, align 4
  br label %bb.n

bb.n:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS4_.exit, %.lr.ph.split
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.dh, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_EC2EmRKS8_RKSA_RKSB_ff(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, float noundef %5, float noundef %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, -9223372036854775808
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.23)
          to label %bb.c unwind label %common.resume

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #33
  unreachable

common.resume:                                    ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #30
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.f, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i

_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i: ; preds = %bb.d
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ult i64 %i.d, 2
  br i1 %i.e, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i
  %i.f = add i64 %1, -1                           ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = or i64 %i.q, %i.p
  %i.s = add nuw i64 %i.r, 1
  br label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit

_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i, %bb.e
  %.012.i.i = phi i64 [ %i.s, %bb.e ], [ %1, %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i ] ; 9 uses
  %i.t = add i64 %.012.i.i, -1
  store i64 %i.t, ptr %0, align 8
  %i.u = icmp ugt i64 %.012.i.i, 384307168202282325
  br i1 %i.u, label %.noexc, label %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i

.noexc:                                           ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #33
  unreachable

_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = mul nuw nsw i64 %.012.i.i, 24
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #36 ; 5 uses
  store ptr %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.012.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.y, ptr %i.z, align 8
  %xtraiter = and i64 %.012.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i ]
  store i32 0, ptr %.08.i.i.i.i.i.prol, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 4
  store i16 -1, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 6
  store i8 0, ptr %i.ab, align 2
  %i.ac = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !92

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %i.ae = icmp ult i64 %.012.i.i, 4
  br i1 %i.ae, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.08.i.i.i.i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4
  store i16 -1, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 6
  store i8 0, ptr %i.ag, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 28
  store i16 -1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 30
  store i8 0, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  store i32 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 52
  store i16 -1, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 54
  store i8 0, ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i32 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 76
  store i16 -1, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 78
  store i8 0, ptr %i.ap, align 2
  %i.aq = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i.i.i.3, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !93

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.at = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket acquire, align 8
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.g, label %.thread, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.av = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket) #30
  %.not.i10 = icmp eq i32 %i.av, 0
  br i1 %.not.i10, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, align 8
  store i16 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, i64 4), align 4
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket) #30
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.as, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i16 0, ptr %i.ax, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  br label %bb.i

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %.lcssa, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %.012.i.i, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i16 0, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %i.ay, align 8
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -18
  store i8 1, ptr %i.be, align 2
  %.pre = load i64, ptr %i.ba, align 8
  %i.bf = uitofp i64 %.pre to float
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.unr-lcssa
  %i.bg = phi float [ %i.bf, %.unr-lcssa ], [ 0.000000e+00, %.thread ]
  %i.bh = fcmp olt float %5, 0.000000e+00
  %i.bi = select i1 %i.bh, float 0.000000e+00, float %5 ; 2 uses
  %i.bj = fcmp ogt float %i.bi, 1.500000e-01
  %.sroa.speculated.i = select i1 %i.bj, float 1.500000e-01, float %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %.sroa.speculated.i, ptr %i.bk, align 8
  %i.bl = fcmp olt float %6, 2.000000e-01
  %i.bm = select i1 %i.bl, float 2.000000e-01, float %6 ; 2 uses
  %i.bn = fcmp ogt float %i.bm, f0x3F733333
  %.sroa.speculated.i11 = select i1 %i.bn, float f0x3F733333, float %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %.sroa.speculated.i11, ptr %i.bo, align 4
  %i.bp = fmul float %.sroa.speculated.i11, %i.bg
  %i.bq = fptoui float %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bq, ptr %i.br, align 8
  ret void
}

declare ptr @PyErr_GetRaisedException() local_unnamed_addr #3

declare void @PyErr_SetRaisedException(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11insert_implIS3_JRKSt21piecewise_construct_tSt5tupleIJOS3_EESN_IJRPNS7_7nb_instEEEEEES2_INSI_14robin_iteratorILb0EEEbERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = lshr i64 %i.b, 33
  %i.d = xor i64 %i.c, %i.b
  %i.e = mul i64 %i.d, -49064778989728563         ; 2 uses
  %i.f = lshr i64 %i.e, 33
  %i.g = xor i64 %i.f, %i.e
  %i.h = mul i64 %i.g, -4265267296055464877       ; 2 uses
  %i.i = lshr i64 %i.h, 33
  %i.j = xor i64 %i.i, %i.h                       ; 3 uses
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.057 = and i64 %i.j, %i.k                      ; 3 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.057 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i16, ptr %i.o, align 4
  %.not58 = icmp slt i16 %i.p, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.b, %bb.a
  %.034.lcssa = phi i16 [ 0, %bb.a ], [ %i.w, %bb.b ] ; 2 uses
  %.0.lcssa = phi i64 [ %.057, %bb.a ], [ %.0, %bb.b ]
  %i.q = tail call noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %.034.lcssa)
  br i1 %i.q, label %.lr.ph69, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.r = phi ptr [ %i.x, %bb.b ], [ %i.n, %bb.a ] ; 2 uses
  %.060 = phi i64 [ %.0, %bb.b ], [ %.057, %bb.a ]
  %.03459 = phi i16 [ %i.w, %bb.b ], [ 0, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %.loopexit49, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.v = add i64 %.060, 1
  %i.w = add i16 %.03459, 1                       ; 3 uses
  %.0 = and i64 %i.v, %i.k                        ; 3 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.0 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i16, ptr %i.y, align 4
  %.not = icmp sgt i16 %i.w, %i.z
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !94

.loopexit:                                        ; preds = %.lr.ph66, %.lr.ph69
  %.236.lcssa = phi i16 [ 0, %.lr.ph69 ], [ %i.ah, %.lr.ph66 ] ; 2 uses
  %.2.lcssa = phi i64 [ %.262, %.lr.ph69 ], [ %.2, %.lr.ph66 ]
  %i.aa = tail call noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %.236.lcssa)
  br i1 %i.aa, label %.lr.ph69, label %._crit_edge, !llvm.loop !95

.lr.ph69:                                         ; preds = %.preheader, %.loopexit
  %i.ab = load i64, ptr %0, align 8               ; 2 uses
  %i.ac = load ptr, ptr %i.l, align 8             ; 2 uses
  %.262 = and i64 %i.j, %i.ab                     ; 3 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.262
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i16, ptr %i.ae, align 4
  %.not3763 = icmp slt i16 %i.af, 0
  br i1 %.not3763, label %.loopexit, label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph69, %.lr.ph66
  %.265 = phi i64 [ %.2, %.lr.ph66 ], [ %.262, %.lr.ph69 ]
  %.23664 = phi i16 [ %i.ah, %.lr.ph66 ], [ 0, %.lr.ph69 ]
  %i.ag = add i64 %.265, 1
  %i.ah = add i16 %.23664, 1                      ; 3 uses
  %.2 = and i64 %i.ag, %i.ab                      ; 3 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i16, ptr %i.aj, align 4
  %.not37 = icmp sgt i16 %i.ah, %i.ak
  br i1 %.not37, label %.loopexit, label %.lr.ph66, !llvm.loop !96

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %.135.lcssa = phi i16 [ %.034.lcssa, %.preheader ], [ %.236.lcssa, %.loopexit ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0.lcssa, %.preheader ], [ %.2.lcssa, %.loopexit ] ; 3 uses
  %i.al = load ptr, ptr %i.l, align 8
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.1.lcssa ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 3 uses
  %i.ao = load i16, ptr %i.an, align 4            ; 2 uses
  %i.ap = icmp eq i16 %i.ao, -1
  %i.aq = trunc i64 %i.j to i32                   ; 2 uses
  br i1 %i.ap, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.as = load i64, ptr %3, align 8
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load i64, ptr %4, align 8
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load ptr, ptr %i.at, align 8
  store ptr %i.aw, ptr %i.ar, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ay = load ptr, ptr %i.av, align 8
  store ptr %i.ay, ptr %i.ax, align 8
  store i32 %i.aq, ptr %i.am, align 8
  store i16 %.135.lcssa, ptr %i.an, align 4
  br label %bb.j

bb.d:                                             ; preds = %._crit_edge
  %i.az = load i64, ptr %3, align 8
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load i64, ptr %4, align 8
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load ptr, ptr %i.ba, align 8
  %i.be = load ptr, ptr %i.bc, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  store ptr %i.bd, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  store ptr %i.be, ptr %i.bh, align 8
  store i16 %.135.lcssa, ptr %i.an, align 4
  %i.bj = load i32, ptr %i.am, align 8            ; 2 uses
  store i32 %i.aq, ptr %i.am, align 8
  %i.bk = add i64 %.1.lcssa, 1
  %i.bl = load i64, ptr %0, align 8               ; 2 uses
  %i.bm = and i64 %i.bl, %i.bk                    ; 2 uses
  %storemerge22.i.i = add nuw i16 %i.ao, 1        ; 2 uses
  %i.bn = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bm ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 3 uses
  %i.bq = load i16, ptr %i.bp, align 4            ; 2 uses
  %i.br = icmp eq i16 %i.bq, -1
  br i1 %i.br, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESN_IJRPNS7_7nb_instEEEEEEvmsjDpOT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.sroa.06.0.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %.sroa.06.1.i, %bb.i ] ; 2 uses
  %.sroa.8.0.i = phi ptr [ %i.bi, %.lr.ph.i.i ], [ %.sroa.8.1.i, %bb.i ] ; 2 uses
  %i.bt = phi ptr [ %i.bn, %.lr.ph.i.i ], [ %i.cg, %bb.i ]
  %i.bu = phi i64 [ %i.bl, %.lr.ph.i.i ], [ %i.ch, %bb.i ]
  %i.bv = phi i16 [ %i.bq, %.lr.ph.i.i ], [ %i.cm, %bb.i ]
  %i.bw = phi ptr [ %i.bp, %.lr.ph.i.i ], [ %i.cl, %bb.i ] ; 2 uses
  %i.bx = phi ptr [ %i.bo, %.lr.ph.i.i ], [ %i.ck, %bb.i ] ; 4 uses
  %storemerge25.i.i = phi i16 [ %storemerge22.i.i, %.lr.ph.i.i ], [ %storemerge.i.i, %bb.i ] ; 4 uses
  %.024.i.i = phi i64 [ %i.bm, %.lr.ph.i.i ], [ %i.cj, %bb.i ]
  %.01823.i.i = phi i32 [ %i.bj, %.lr.ph.i.i ], [ %.1.i.i, %bb.i ] ; 2 uses
  %i.by = icmp sgt i16 %storemerge25.i.i, %i.bv
  br i1 %i.by, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bz = icmp sgt i16 %storemerge25.i.i, 8192
  br i1 %i.bz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.bs, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  store ptr %.sroa.06.0.i, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8
  store ptr %.sroa.8.0.i, ptr %i.cc, align 8
  %i.ce = load i16, ptr %i.bw, align 2
  store i16 %storemerge25.i.i, ptr %i.bw, align 2
  %i.cf = load i32, ptr %i.bx, align 8
  store i32 %.01823.i.i, ptr %i.bx, align 8
  %.pre.i.i = load i64, ptr %0, align 8
  %.pre32.i.i = load ptr, ptr %i.l, align 8
end_hunk_2
