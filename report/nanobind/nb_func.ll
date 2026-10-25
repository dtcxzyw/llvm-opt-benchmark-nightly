Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/nb_func?download=true
inline.NumInlined: 459
inline.NumDeleted: 216
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN8nanobind6detail24nb_bound_method_traverseEP7_objectPFiS2_PvES3_:bb.a
  %i.c = tail call noundef i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) ; 2 uses
  %.not21 = icmp eq i32 %i.c, 0
  br i1 %.not21, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not22 = icmp eq ptr %i.e, null
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) ; 2 uses
  %.not23 = icmp eq i32 %i.f, 0
  br i1 %.not23, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.3 = phi i32 [ 0, %bb.e ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN8nanobind6detail21nb_bound_method_clearEP7_object(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZL9Py_DECREFP7_object.exit14, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 2147483648
  %.not15 = icmp eq i64 %i.d, 0
  br i1 %.not15, label %bb.c, label %_ZL9Py_DECREFP7_object.exit14

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i64 %i.c, -1                     ; 2 uses
  store i64 %i.e, ptr %i.b, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZL9Py_DECREFP7_object.exit14

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b)
  br label %_ZL9Py_DECREFP7_object.exit14

_ZL9Py_DECREFP7_object.exit14:                    ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %.not12 = icmp eq ptr %i.h, null
  br i1 %.not12, label %_ZL9Py_DECREFP7_object.exit, label %bb.e

bb.e:                                             ; preds = %_ZL9Py_DECREFP7_object.exit14
  store ptr null, ptr %i.g, align 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = and i64 %i.i, 2147483648
  %.not16 = icmp eq i64 %i.j, 0
  br i1 %.not16, label %bb.f, label %_ZL9Py_DECREFP7_object.exit

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i64 %i.i, -1                     ; 2 uses
  store i64 %i.k, ptr %i.h, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.g, label %_ZL9Py_DECREFP7_object.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h)
  br label %_ZL9Py_DECREFP7_object.exit

_ZL9Py_DECREFP7_object.exit:                      ; preds = %bb.g, %bb.f, %bb.e, %_ZL9Py_DECREFP7_object.exit14
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8nanobind6detail23nb_bound_method_deallocEP7_object(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @PyObject_GC_UnTrack(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZL9Py_DECREFP7_object.exit9, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 2147483648
  %.not11 = icmp eq i64 %i.d, 0
  br i1 %.not11, label %bb.c, label %_ZL9Py_DECREFP7_object.exit9

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i64 %i.c, -1                     ; 2 uses
  store i64 %i.e, ptr %i.b, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZL9Py_DECREFP7_object.exit9

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b)
  br label %_ZL9Py_DECREFP7_object.exit9

_ZL9Py_DECREFP7_object.exit9:                     ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %.not.i10 = icmp eq ptr %i.h, null
  br i1 %.not.i10, label %_ZL10Py_XDECREFP7_object.exit, label %bb.e

bb.e:                                             ; preds = %_ZL9Py_DECREFP7_object.exit9
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = and i64 %i.i, 2147483648
  %.not2.i = icmp eq i64 %i.j, 0
  br i1 %.not2.i, label %bb.f, label %_ZL10Py_XDECREFP7_object.exit

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i64 %i.i, -1                     ; 2 uses
  store i64 %i.k, ptr %i.h, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.g, label %_ZL10Py_XDECREFP7_object.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h)
  br label %_ZL10Py_XDECREFP7_object.exit

_ZL10Py_XDECREFP7_object.exit:                    ; preds = %_ZL9Py_DECREFP7_object.exit9, %bb.e, %bb.f, %bb.g
  %i.m = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.m, align 8             ; 3 uses
  tail call void @PyObject_GC_Del(ptr noundef nonnull %0)
  %i.n = load i64, ptr %.val, align 8             ; 2 uses
  %i.o = and i64 %i.n, 2147483648
  %.not12 = icmp eq i64 %i.o, 0
  br i1 %.not12, label %bb.h, label %_ZL9Py_DECREFP7_object.exit

bb.h:                                             ; preds = %_ZL10Py_XDECREFP7_object.exit
  %i.p = add nsw i64 %i.n, -1                     ; 2 uses
  store i64 %i.p, ptr %.val, align 8
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %_ZL9Py_DECREFP7_object.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val)
  br label %_ZL9Py_DECREFP7_object.exit

_ZL9Py_DECREFP7_object.exit:                      ; preds = %_ZL10Py_XDECREFP7_object.exit, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noalias noundef nonnull ptr @_ZN8nanobind6detail12malloc_checkEm(i64 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noalias ptr @malloc(i64 noundef %0) #27 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare hidden void @_ZN8nanobind6detail4failEPKcz(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noalias noundef nonnull ptr @_ZN8nanobind6detail12strdup_checkEPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noalias ptr @strdup(ptr noundef %0) #25 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.1) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple", align 8        ; 4 uses
  %3 = alloca %"class.std::tuple.22", align 8     ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8              ; 9 uses
  %i.h = and i32 %i.g, 2
  %i.i = icmp ne i32 %i.h, 0                      ; 3 uses
  %i.j = trunc i32 %i.g to i1                     ; 2 uses
  %i.k = and i32 %i.g, 8
  %.not317 = icmp eq i32 %i.k, 0                  ; 5 uses
  %i.l = and i32 %i.g, 16
  %.not329 = icmp eq i32 %i.l, 0                  ; 2 uses
  %i.m = lshr i32 %i.g, 13
  %i.n = trunc i32 %i.m to i8
  %i.o = and i8 %i.n, 1                           ; 3 uses
  %i.p = and i32 %i.g, 64                         ; 3 uses
  %i.q = icmp ne i32 %i.p, 0                      ; 5 uses
  %i.r = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %i.s = shufflevector <4 x i32> %i.r, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.t = and <4 x i32> %i.s, <i32 2048, i32 256, i32 4096, i32 4>
  %i.u = icmp eq <4 x i32> %i.t, zeroinitializer  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %4 = select i1 %.not317, ptr null, ptr %i.v
  %i.w = extractelement <4 x i1> %i.u, i64 2      ; 2 uses
  br i1 %i.w, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef ptr @_ZN8nanobind6detail12extract_nameEPKcS2_S2_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %i.y)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp ne i8 %i.aa, 0
  br label %_ZN8nanobind6detail12strdup_checkEPKc.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ae = phi ptr [ %i.ad, %bb.e ], [ @.str.4, %bb.d ]
  %i.af = tail call noalias ptr @strdup(ptr noundef readonly %i.ae) #25 ; 2 uses
  %.not.i365 = icmp eq ptr %i.af, null
  br i1 %.not.i365, label %bb.g, label %_ZN8nanobind6detail12strdup_checkEPKc.exit, !prof !6

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.1) #26
  unreachable

_ZN8nanobind6detail12strdup_checkEPKc.exit:       ; preds = %bb.f, %bb.c
  %.0293 = phi i1 [ %i.ab, %bb.c ], [ %i.j, %bb.f ]
  %.0286 = phi ptr [ %i.z, %bb.c ], [ %i.af, %bb.f ] ; 6 uses
  %or.cond = select i1 %i.i, i1 %.0293, i1 false
  br i1 %or.cond, label %bb.h, label %.thread405

bb.h:                                             ; preds = %_ZN8nanobind6detail12strdup_checkEPKc.exit
  %i.ag = invoke ptr @PyUnicode_InternFromString(ptr noundef nonnull %.0286)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.i:                                             ; preds = %bb.h
  %.not322 = icmp eq ptr %i.ag, null
  br i1 %.not322, label %bb.j, label %bb.k, !prof !6

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #26
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.aj = invoke i32 @_PyObject_LookupAttr(ptr noundef %i.ai, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.b)
          to label %bb.l unwind label %bb.o       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = icmp slt i32 %i.aj, 0
  br i1 %i.al, label %bb.n, label %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit.thread

bb.n:                                             ; preds = %bb.m
  invoke void @PyErr_Clear()
          to label %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit.thread unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #26
  unreachable

_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit.thread: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %_ZL9Py_DECREFP7_object.exit363

_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit: ; preds = %bb.l
  %i.ao = load ptr, ptr %i.b, align 8             ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %.not323 = icmp eq ptr %i.ao, null
  br i1 %.not323, label %_ZL9Py_DECREFP7_object.exit363, label %bb.p

bb.p:                                             ; preds = %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 16
  %i.as = icmp eq ptr %.val, %i.ar
  br i1 %i.as, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp eq ptr %.val, %i.au
  br i1 %i.av, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = load i32, ptr %i.f, align 8
  %i.az = xor i32 %i.ay, %i.ax
  %i.ba = and i32 %i.az, 64
  %.not324 = icmp eq i32 %i.ba, 0
  br i1 %.not324, label %bb.t, label %bb.s, !prof !5

bb.s:                                             ; preds = %bb.r
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #26
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.ah, align 8
  %.not325 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not325, label %_ZL9Py_DECREFP7_object.exit363, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.bf = and i64 %i.be, 2147483648
  %.not427 = icmp eq i64 %i.bf, 0
  br i1 %.not427, label %bb.v, label %_ZL9Py_DECREFP7_object.exit363

bb.v:                                             ; preds = %bb.u
  %i.bg = add nsw i64 %i.be, -1                   ; 2 uses
  store i64 %i.bg, ptr %i.ao, align 8
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.invoke, label %_ZL9Py_DECREFP7_object.exit363

.invoke:                                          ; preds = %bb.y, %bb.v
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.ao)
          to label %_ZL9Py_DECREFP7_object.exit363 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.q
  %i.bi = load i8, ptr %.0286, align 1
  %i.bj = icmp eq i8 %i.bi, 95
  br i1 %i.bj, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bk = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.bl = and i64 %i.bk, 2147483648
  %.not426 = icmp eq i64 %i.bl, 0
  br i1 %.not426, label %bb.y, label %_ZL9Py_DECREFP7_object.exit363

bb.y:                                             ; preds = %bb.x
  %i.bm = add nsw i64 %i.bk, -1                   ; 2 uses
  store i64 %i.bm, ptr %i.ao, align 8
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.invoke, label %_ZL9Py_DECREFP7_object.exit363

bb.z:                                             ; preds = %bb.w
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #26
  unreachable

_ZL9Py_DECREFP7_object.exit363:                   ; preds = %.invoke, %bb.y, %bb.x, %bb.v, %bb.u, %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit.thread, %bb.t, %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit
  %.4 = phi ptr [ null, %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit ], [ null, %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit.thread ], [ %i.ao, %bb.t ], [ null, %bb.v ], [ null, %.invoke ], [ null, %bb.u ], [ null, %bb.y ], [ null, %bb.x ] ; 3 uses
  %i.bo = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0286, ptr noundef nonnull dereferenceable(9) @.str.5) #28
  %i.bp = icmp eq i32 %i.bo, 0                    ; 3 uses
  %i.bq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0286, ptr noundef nonnull dereferenceable(8) @.str.6) #28
  %i.br = icmp eq i32 %i.bq, 0                    ; 2 uses
  br i1 %i.q, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %_ZL9Py_DECREFP7_object.exit363
  %i.bs = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0286, ptr noundef nonnull dereferenceable(13) @.str.7) #28
  %i.bt = icmp eq i32 %i.bs, 0
  %or.cond3 = select i1 %i.bp, i1 true, i1 %i.bt
  br i1 %or.cond3, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.bv, ptr noundef nonnull dereferenceable(5) @.str.8, i64 noundef 4) #28
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bz = load i16, ptr %i.by, align 4
  %i.ca = icmp eq i16 %i.bz, 2
  br i1 %i.ca, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not326 = icmp eq ptr %i.cd, null
  br i1 %.not326, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = icmp eq ptr %i.cd, %i.cf
  br label %.thread

.thread:                                          ; preds = %_ZL9Py_DECREFP7_object.exit363, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.0291 = phi i1 [ false, %bb.ab ], [ true, %bb.ae ], [ true, %bb.ad ], [ true, %bb.ac ], [ false, %bb.aa ], [ false, %_ZL9Py_DECREFP7_object.exit363 ] ; 2 uses
  %.0290 = phi i1 [ false, %bb.ab ], [ %i.cg, %bb.ae ], [ false, %bb.ad ], [ false, %bb.ac ], [ false, %bb.aa ], [ false, %_ZL9Py_DECREFP7_object.exit363 ] ; 2 uses
  %.not327 = icmp eq ptr %.4, null
  br i1 %.not327, label %.thread405, label %bb.af

bb.af:                                            ; preds = %.thread
  %i.ch = getelementptr i8, ptr %.4, i64 16
  %.5.val = load i64, ptr %i.ch, align 8
  br label %.thread405

.thread405:                                       ; preds = %_ZN8nanobind6detail12strdup_checkEPKc.exit, %.thread, %bb.af
  %.not327419 = phi i1 [ false, %bb.af ], [ true, %.thread ], [ true, %_ZN8nanobind6detail12strdup_checkEPKc.exit ]
  %.0287418 = phi ptr [ %i.ag, %bb.af ], [ %i.ag, %.thread ], [ null, %_ZN8nanobind6detail12strdup_checkEPKc.exit ] ; 5 uses
  %.0288417 = phi i1 [ %i.br, %bb.af ], [ %i.br, %.thread ], [ false, %_ZN8nanobind6detail12strdup_checkEPKc.exit ] ; 2 uses
  %.0289416 = phi i1 [ %i.bp, %bb.af ], [ %i.bp, %.thread ], [ false, %_ZN8nanobind6detail12strdup_checkEPKc.exit ] ; 2 uses
  %.0290415 = phi i1 [ %.0290, %bb.af ], [ %.0290, %.thread ], [ false, %_ZN8nanobind6detail12strdup_checkEPKc.exit ]
  %.0291414 = phi i1 [ %.0291, %bb.af ], [ %.0291, %.thread ], [ false, %_ZN8nanobind6detail12strdup_checkEPKc.exit ]
  %.5413 = phi ptr [ %.4, %bb.af ], [ null, %.thread ], [ null, %_ZN8nanobind6detail12strdup_checkEPKc.exit ] ; 11 uses
  %i.ci = phi i64 [ %.5.val, %bb.af ], [ 0, %.thread ], [ 0, %_ZN8nanobind6detail12strdup_checkEPKc.exit ] ; 5 uses
  %.in.v = select i1 %i.q, i64 24, i64 16
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.cj = load ptr, ptr %.in, align 8
  %i.ck = add nsw i64 %i.ci, 1
  %i.cl = invoke ptr @PyType_GenericAlloc(ptr noundef %i.cj, i64 noundef %i.ck)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 18 uses

bb.ag:                                            ; preds = %.thread405
  %.not328 = icmp eq ptr %i.cl, null
  br i1 %.not328, label %bb.ah, label %bb.ai, !prof !6

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #26
  unreachable

bb.ai:                                            ; preds = %bb.ag
  invoke void @_ZN8nanobind6detail17internals_inc_refEPNS0_12nb_internalsE(ptr noundef nonnull %0)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  %i.cm = and i32 %i.g, 48
  %or.cond5.not = icmp eq i32 %i.cm, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.co = load i16, ptr %i.cn, align 4            ; 3 uses
  br i1 %or.cond5.not, label %bb.ak, label %.loopexit434

bb.ak:                                            ; preds = %bb.aj
  %i.cp = icmp ugt i16 %i.co, 8                   ; 2 uses
  %brmerge = or i1 %.not317, %i.cp
  %.mux = select i1 %i.cp, i8 2, i8 %i.o
  br i1 %brmerge, label %.loopexit434, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.lobit330 = lshr exact i32 %i.p, 6
  %i.cq = zext nneg i32 %.lobit330 to i64         ; 3 uses
  %i.cr = zext nneg i16 %i.co to i64              ; 2 uses
  %i.cs = icmp samesign ult i64 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph.a, label %.loopexit434

.lr.ph.a:                                         ; preds = %bb.al, %bb.ao
  %.0283436 = phi i64 [ %i.dd, %bb.ao ], [ %i.cq, %bb.al ] ; 2 uses
  %.0284435 = phi i8 [ %i.dc, %bb.ao ], [ %i.o, %bb.al ]
  %5 = sub nuw nsw i64 %.0283436, %i.cq
  %6 = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %5 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = load ptr, ptr %6, align 8
  %.not331.a = icmp eq ptr %i.cv, null
  br i1 %.not331.a, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %.lr.ph.a
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %.not332.a = icmp eq ptr %i.cx, null
  br i1 %.not332.a, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cy = trunc i32 %i.cu to i8
  %i.cz = lshr i8 %i.cy, 2
  %i.da = and i8 %i.cz, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %.lr.ph.a
  %i.db = phi i8 [ 1, %bb.am ], [ 1, %.lr.ph.a ], [ %i.da, %bb.an ]
  %i.dc = or i8 %i.db, %.0284435                  ; 2 uses
  %i.dd = add nuw nsw i64 %.0283436, 1            ; 2 uses
  %exitcond.not.a = icmp eq i64 %i.dd, %i.cr
  br i1 %exitcond.not.a, label %.loopexit434, label %.lr.ph.a, !llvm.loop !20

.loopexit434:                                     ; preds = %bb.ao, %bb.aj, %bb.al, %bb.ak
  %.0400 = phi i8 [ %.mux, %bb.ak ], [ 2, %bb.aj ], [ %i.o, %bb.al ], [ %i.dc, %bb.ao ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 4 uses
  %i.df = zext i16 %i.co to i32                   ; 2 uses
  br i1 %.not327419, label %_ZL9Py_DECREFP7_object.exit357, label %bb.ap

bb.ap:                                            ; preds = %.loopexit434
  %i.dg = getelementptr inbounds nuw i8, ptr %.5413, i64 36
  %i.dh = load i8, ptr %i.dg, align 1
  %.sroa.speculated395 = call i8 @llvm.umax.i8(i8 %.0400, i8 %i.dh) ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.5413, i64 32
  %i.dj = load i32, ptr %i.di, align 4
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.dj, i32 %i.df) ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %.5413, i64 64 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.5413, i64 37
  %i.dn = load i8, ptr %i.dm, align 1, !range !7, !noundef !8
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dp = getelementptr inbounds nuw i8, ptr %.5413, i64 136
  %i.dq = load ptr, ptr %i.dp, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0282 = phi ptr [ %i.dq, %bb.aq ], [ null, %bb.ap ] ; 3 uses
  %i.dr = mul i64 %i.ci, 96                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr nonnull align 8 %i.dl, i64 %i.dr, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dl, i8 0, i64 %i.dr, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %.5413, i64 16
  store i64 0, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store ptr %.5413, ptr %i.c, align 8
  %i.du = ptrtoint ptr %.5413 to i64              ; 2 uses
  %i.dv = lshr i64 %i.du, 33
  %i.dw = xor i64 %i.dv, %i.du
  %i.dx = mul i64 %i.dw, -49064778989728563       ; 2 uses
  %i.dy = lshr i64 %i.dx, 33
  %i.dz = xor i64 %i.dy, %i.dx
  %i.ea = mul i64 %i.dz, -4265267296055464877     ; 2 uses
  %i.eb = lshr i64 %i.ea, 33
  %i.ec = xor i64 %i.eb, %i.ea
  %i.ed = invoke noundef i64 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E5eraseIS3_EEmRKT_m(ptr noundef nonnull align 8 dereferenceable(80) %i.dt, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.ec)
          to label %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5eraseERKS1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5eraseERKS1_.exit: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %.not334 = icmp eq i64 %i.ed, 1
  br i1 %.not334, label %bb.at, label %bb.as, !prof !5

bb.as:                                            ; preds = %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5eraseERKS1_.exit
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #26
  unreachable

bb.at:                                            ; preds = %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5eraseERKS1_.exit
  %i.ee = load i64, ptr %.5413, align 8           ; 2 uses
  %i.ef = and i64 %i.ee, 2147483648
  %.not428 = icmp eq i64 %i.ef, 0
  br i1 %.not428, label %bb.au, label %_ZL9Py_DECREFP7_object.exit357

bb.au:                                            ; preds = %bb.at
  %i.eg = add nsw i64 %i.ee, -1                   ; 2 uses
  store i64 %i.eg, ptr %.5413, align 8
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.av, label %_ZL9Py_DECREFP7_object.exit357

bb.av:                                            ; preds = %bb.au
  invoke void @_Py_Dealloc(ptr noundef nonnull %.5413)
          to label %_ZL9Py_DECREFP7_object.exit357 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL9Py_DECREFP7_object.exit357:                   ; preds = %bb.au, %bb.at, %bb.av, %.loopexit434
  %.0402 = phi i32 [ %i.df, %.loopexit434 ], [ %.sroa.speculated, %bb.av ], [ %.sroa.speculated, %bb.at ], [ %.sroa.speculated, %bb.au ]
  %.1401 = phi i8 [ %.0400, %.loopexit434 ], [ %.sroa.speculated395, %bb.av ], [ %.sroa.speculated395, %bb.at ], [ %.sroa.speculated395, %bb.au ] ; 2 uses
  %.1 = phi ptr [ null, %.loopexit434 ], [ %.0282, %bb.av ], [ %.0282, %bb.at ], [ %.0282, %bb.au ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store i32 %.0402, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cl, i64 36
  store i8 %.1401, ptr %i.ej, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store ptr %0, ptr %i.ek, align 8
  br i1 %i.i, label %bb.aw, label %.critedge

bb.aw:                                            ; preds = %_ZL9Py_DECREFP7_object.exit357
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.em = load ptr, ptr %i.el, align 8            ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  store ptr %i.em, ptr %i.en, align 8
  %i.eo = getelementptr i8, ptr %i.em, i64 8
  %.val364 = load ptr, ptr %i.eo, align 8         ; 2 uses
  %.not.i368 = icmp eq ptr %.val364, @PyModule_Type
  br i1 %.not.i368, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ep = invoke i32 @PyType_IsSubtype(ptr noundef %.val364, ptr noundef nonnull @PyModule_Type)
          to label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit: ; preds = %bb.ax
  %.fr = freeze i32 %i.ep
  %.not429 = icmp eq i32 %.fr, 0
  %spec.select425.v = select i1 %.not429, i64 640, i64 656
  br label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread: ; preds = %bb.aw, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  %spec.select425.v.sink = phi i64 [ %spec.select425.v, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit ], [ 656, %bb.aw ]
  %spec.select425 = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select425.v.sink
  %i.eq = load ptr, ptr %spec.select425, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.er = invoke i32 @_PyObject_LookupAttr(ptr noundef nonnull %i.em, ptr noundef %i.eq, ptr noundef nonnull %i.a)
          to label %bb.ay unwind label %bb.bc     ; 2 uses

bb.ay:                                            ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread
  %i.es = icmp eq i32 %i.er, 1
  br i1 %i.es, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.et = load ptr, ptr %i.a, align 8
  br label %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit371

bb.ba:                                            ; preds = %bb.ay
  %i.eu = icmp slt i32 %i.er, 0
  br i1 %i.eu, label %bb.bb, label %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit371

bb.bb:                                            ; preds = %bb.ba
  invoke void @PyErr_Clear()
          to label %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit371 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #26
  unreachable

_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit371: ; preds = %bb.ba, %bb.bb, %bb.az
  %.0.i370 = phi ptr [ %i.et, %bb.az ], [ null, %bb.bb ], [ null, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.critedge

.critedge:                                        ; preds = %_ZL9Py_DECREFP7_object.exit357, %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit371
  %.sink494 = phi i64 [ 56, %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit371 ], [ 48, %_ZL9Py_DECREFP7_object.exit357 ]
  %.sink = phi ptr [ %.0.i370, %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit371 ], [ null, %_ZL9Py_DECREFP7_object.exit357 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.sink494
  store ptr %.sink, ptr %i.ex, align 8
  switch i8 %.1401, label %bb.be [
    i8 2, label %bb.bh
    i8 1, label %bb.bd
  ]

bb.bd:                                            ; preds = %.critedge
  br label %bb.bh

bb.be:                                            ; preds = %.critedge
  %i.ey = load i16, ptr %i.de, align 4            ; 3 uses
  %i.ez = icmp ne i16 %i.ey, 0
  %i.fa = icmp ne i64 %i.ci, 0                    ; 3 uses
  %or.cond7 = or i1 %i.fa, %i.ez
  br i1 %or.cond7, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.fb = icmp ne i16 %i.ey, 1
  %or.cond9 = or i1 %i.fa, %i.fb
  br i1 %or.cond9, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fc = icmp ne i16 %i.ey, 2
  %or.cond11 = or i1 %i.fa, %i.fc
  %_ZN8nanobind6detailL25nb_func_vectorcall_simpleEP7_objectPKS2_mS2_._ZN8nanobind6detailL27nb_func_vectorcall_simple_2EP7_objectPKS2_mS2_ = select i1 %or.cond11, ptr @_ZN8nanobind6detailL25nb_func_vectorcall_simpleEP7_objectPKS2_mS2_, ptr @_ZN8nanobind6detailL27nb_func_vectorcall_simple_2EP7_objectPKS2_mS2_
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %.critedge, %bb.bd
  %.0281 = phi ptr [ @_ZN8nanobind6detailL26nb_func_vectorcall_complexEP7_objectPKS2_mS2_, %.critedge ], [ @_ZN8nanobind6detailL25nb_func_vectorcall_mediumEP7_objectPKS2_mS2_, %bb.bd ], [ @_ZN8nanobind6detailL27nb_func_vectorcall_simple_1EP7_objectPKS2_mS2_, %bb.bf ], [ %_ZN8nanobind6detailL25nb_func_vectorcall_simpleEP7_objectPKS2_mS2_._ZN8nanobind6detailL27nb_func_vectorcall_simple_2EP7_objectPKS2_mS2_, %bb.bg ], [ @_ZN8nanobind6detailL27nb_func_vectorcall_simple_0EP7_objectPKS2_mS2_, %bb.be ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %.0281, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store ptr %i.cl, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.d, ptr %2, align 8, !alias.scope !31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.e, ptr %3, align 8, !alias.scope !32
  %i.ff = invoke { ptr, i8 } @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11insert_implIS3_JRKSt21piecewise_construct_tSt5tupleIJOS3_EESN_IJODnEEEEES2_INSI_14robin_iteratorILb0EEEbERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.fe, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.fca.1.extract = extractvalue { ptr, i8 } %i.ff, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.fg = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.fg, label %bb.bk, label %bb.bj, !prof !5

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #26
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.fi = getelementptr inbounds [96 x i8], ptr %i.fh, i64 %i.ci ; 12 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  store ptr %i.fk, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  store ptr %i.fn, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 40 ; 2 uses
  store ptr %i.fq, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fi, i64 48 ; 2 uses
  store ptr %i.ft, ptr %i.fu, align 8
  %i.fv = load i32, ptr %i.f, align 8             ; 2 uses
  %i.fw = and i32 %i.fv, 16777215
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fi, i64 56 ; 9 uses
  store i32 %i.fw, ptr %i.fx, align 8
  %i.fy = load i16, ptr %i.de, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fi, i64 60 ; 5 uses
  store i16 %i.fy, ptr %i.fz, align 4
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 62
  %i.gb = load i16, ptr %i.ga, align 2
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fi, i64 62 ; 3 uses
  store i16 %i.gb, ptr %i.gc, align 2
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fi, i64 64 ; 2 uses
  store ptr %i.ge, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gh = load ptr, ptr %i.gg, align 8            ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fi, i64 72 ; 4 uses
  store ptr %i.gh, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fi, i64 80 ; 6 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fi, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, i8 0, i64 16, i1 false)
  %i.gl = extractelement <4 x i1> %i.u, i64 3
  br i1 %i.gl, label %bb.bt, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gm = load i8, ptr %i.gh, align 1             ; 2 uses
  %i.gn = icmp eq i8 %i.gm, 10
  br i1 %i.gn, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 1 ; 3 uses
  store ptr %i.go, ptr %i.gi, align 8
  %.pre460 = load i8, ptr %i.go, align 1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.gp = phi i8 [ %.pre460, %bb.bm ], [ %i.gm, %bb.bl ]
  %i.gq = phi ptr [ %i.go, %bb.bm ], [ %i.gh, %bb.bl ]
  %i.gr = icmp eq i8 %i.gp, 0
  br i1 %i.gr, label %.critedge351, label %bb.bo

.critedge351:                                     ; preds = %bb.bn
  store ptr null, ptr %i.gi, align 8
  %i.gs = and i32 %i.fv, 16777211
  store i32 %i.gs, ptr %i.fx, align 8
  br label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  %i.gt = call noalias ptr @strdup(ptr noundef nonnull readonly %i.gq) #25 ; 3 uses
  %.not.i373 = icmp eq ptr %i.gt, null
  br i1 %.not.i373, label %bb.bp, label %bb.bq, !prof !6

bb.bp:                                            ; preds = %bb.bo
  call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.1) #26
  unreachable

bb.bq:                                            ; preds = %bb.bo
  store ptr %i.gt, ptr %i.gi, align 8
  %i.gu = icmp eq i64 %i.ci, 0
  br i1 %i.gu, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not337 = icmp eq ptr %.1, null
  br i1 %.not337, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gt, ptr noundef nonnull dereferenceable(1) %.1) #28
  %i.gw = icmp eq i32 %i.gv, 0
  %i.gx = zext i1 %i.gw to i8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bk, %.critedge351, %bb.bq, %bb.bs, %bb.br
  %i.gy = phi i8 [ 0, %.critedge351 ], [ 1, %bb.bq ], [ 0, %bb.br ], [ %i.gx, %bb.bs ], [ 0, %bb.bk ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.cl, i64 37
  store i8 %i.gy, ptr %i.gz, align 1
  br i1 %.0291414, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ha = load i32, ptr %i.fx, align 8
  %i.hb = or i32 %i.ha, 128
  store i32 %i.hb, ptr %i.fx, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  br i1 %.0290415, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.hc = load i32, ptr %i.fx, align 8
  %i.hd = or i32 %i.hc, 16384
  store i32 %i.hd, ptr %i.fx, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  br i1 %.not317, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.he = load i32, ptr %i.fx, align 8
  %i.hf = or i32 %i.he, 8
  store i32 %i.hf, ptr %i.fx, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  store ptr %.0286, ptr %i.gf, align 8
  br i1 %i.w, label %_ZN8nanobind6detail12strdup_checkEPKc.exit376, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hg = load ptr, ptr %i.gd, align 8
  %i.hh = call noalias ptr @strdup(ptr noundef readonly %i.hg) #25 ; 2 uses
  %.not.i375 = icmp eq ptr %i.hh, null
  br i1 %.not.i375, label %bb.cb, label %_ZN8nanobind6detail12strdup_checkEPKc.exit376, !prof !6

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.1) #26
  unreachable

_ZN8nanobind6detail12strdup_checkEPKc.exit376:    ; preds = %bb.ca, %bb.bz
  %i.hi = phi ptr [ null, %bb.bz ], [ %i.hh, %bb.ca ]
  store ptr %i.hi, ptr %i.gk, align 8
  %i.hj = extractelement <4 x i1> %i.u, i64 1
  br i1 %i.hj, label %bb.ci, label %bb.cc

bb.cc:                                            ; preds = %_ZN8nanobind6detail12strdup_checkEPKc.exit376
  %i.hk = load i32, ptr %i.fx, align 8
  %i.hl = and i32 %i.hk, 128
  %.not338 = icmp eq i32 %i.hl, 0
  br i1 %.not338, label %bb.cd, label %bb.ce, !prof !6

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #26
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.hm = load i16, ptr %i.de, align 4
  %.not339 = icmp eq i16 %i.hm, 2
  br i1 %.not339, label %bb.cg, label %bb.cf, !prof !5

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #26
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.hn = load ptr, ptr %i.fs, align 8            ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8            ; 2 uses
  %.not340 = icmp eq ptr %i.hp, null
  br i1 %.not340, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.hq = load ptr, ptr %i.hn, align 8
  call void @_ZN8nanobind6detail22implicitly_convertibleEPNS0_12nb_internalsEPKSt9type_infoPvb(ptr noundef nonnull %0, ptr noundef %i.hq, ptr noundef nonnull %i.hp, i1 noundef zeroext false) #25
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch, %_ZN8nanobind6detail12strdup_checkEPKc.exit376
  %i.hr = load ptr, ptr %i.fp, align 8
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.hr)
  %i.hs = add i64 %strlen, 1                      ; 2 uses
  %i.ht = call noalias ptr @malloc(i64 noundef %i.hs) #27 ; 3 uses
  %.not.i377 = icmp eq ptr %i.ht, null
  br i1 %.not.i377, label %bb.cj, label %_ZN8nanobind6detail12malloc_checkEm.exit, !prof !6

bb.cj:                                            ; preds = %bb.ci
  call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str) #26
  unreachable

_ZN8nanobind6detail12malloc_checkEm.exit:         ; preds = %bb.ci
  store ptr %i.ht, ptr %i.fr, align 8
  %i.hu = load ptr, ptr %i.fp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ht, ptr align 1 %i.hu, i64 %i.hs, i1 false)
  %i.hv = load ptr, ptr %i.fs, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %_ZN8nanobind6detail12malloc_checkEm.exit
  %.0278 = phi i64 [ 0, %_ZN8nanobind6detail12malloc_checkEm.exit ], [ %i.hy, %bb.ck ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.0278
  %i.hx = load ptr, ptr %i.hw, align 8
  %.not342 = icmp eq ptr %i.hx, null
  %i.hy = add i64 %.0278, 1
  br i1 %.not342, label %bb.cl, label %bb.ck, !llvm.loop !25

bb.cl:                                            ; preds = %bb.ck
  %i.hz = shl i64 %.0278, 3
  %i.ia = add i64 %i.hz, 8                        ; 2 uses
  %i.ib = call noalias ptr @malloc(i64 noundef %i.ia) #27 ; 3 uses
  %.not.i378 = icmp eq ptr %i.ib, null
  br i1 %.not.i378, label %bb.cm, label %_ZN8nanobind6detail12malloc_checkEm.exit379, !prof !6

bb.cm:                                            ; preds = %bb.cl
  call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str) #26
  unreachable

_ZN8nanobind6detail12malloc_checkEm.exit379:      ; preds = %bb.cl
  store ptr %i.ib, ptr %i.fu, align 8
  %i.ic = load ptr, ptr %i.fs, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ib, ptr align 8 %i.ic, i64 %i.ia, i1 false)
  br i1 %.not317, label %.loopexit432, label %bb.cn

bb.cn:                                            ; preds = %_ZN8nanobind6detail12malloc_checkEm.exit379
  %i.id = load i16, ptr %i.de, align 4
  %i.ie = zext i16 %i.id to i64
  %i.if = mul nuw nsw i64 %i.ie, 40
  %i.ig = call noalias ptr @malloc(i64 noundef %i.if) #27 ; 3 uses
  %.not.i380 = icmp eq ptr %i.ig, null
  br i1 %.not.i380, label %bb.co, label %_ZN8nanobind6detail12malloc_checkEm.exit381, !prof !6

bb.co:                                            ; preds = %bb.cn
  call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str) #26
  unreachable

_ZN8nanobind6detail12malloc_checkEm.exit381:      ; preds = %bb.cn
  store ptr %i.ig, ptr %i.gj, align 8
  br i1 %i.q, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %_ZN8nanobind6detail12malloc_checkEm.exit381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ig, ptr noundef nonnull align 8 dereferenceable(40) @_ZN8nanobind6detailL15method_self_argE, i64 40, i1 false)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %_ZN8nanobind6detail12malloc_checkEm.exit381
  %.lobit = lshr exact i32 %i.p, 6                ; 2 uses
  %i.ih = zext nneg i32 %.lobit to i64            ; 2 uses
  %i.ii = load i16, ptr %i.fz, align 4            ; 2 uses
  %i.ij = zext i16 %i.ii to i32
  %i.ik = icmp samesign ult i32 %.lobit, %i.ij
  br i1 %i.ik, label %.lr.ph438, label %.preheader431

.preheader431:                                    ; preds = %.lr.ph438, %bb.cq
  %i.il = phi i16 [ %i.ii, %bb.cq ], [ %i.iw, %.lr.ph438 ]
  %.not446 = icmp eq i16 %i.il, 0
  br i1 %.not446, label %.loopexit432, label %.lr.ph440

.lr.ph438:                                        ; preds = %bb.cq, %.lr.ph438
  %.0277437 = phi i64 [ %i.iv, %.lr.ph438 ], [ %i.ih, %bb.cq ] ; 3 uses
  %i.im = sub nuw nsw i64 %.0277437, %i.ih
  %i.in = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.im ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !33
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ir = load i32, ptr %i.iq, align 8, !noalias !33
  %i.is = load ptr, ptr %i.gj, align 8
  %i.it = getelementptr inbounds nuw [40 x i8], ptr %i.is, i64 %.0277437 ; 4 uses
  %i.iu = load <2 x ptr>, ptr %i.in, align 8, !noalias !33
  store <2 x ptr> %i.iu, ptr %i.it, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  store ptr %i.ip, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  store i32 %i.ir, ptr %.sroa.7.0..sroa_idx, align 8
  %i.iv = add nuw nsw i64 %.0277437, 1            ; 2 uses
  %i.iw = load i16, ptr %i.fz, align 4            ; 2 uses
  %i.ix = zext i16 %i.iw to i64
  %i.iy = icmp samesign ult i64 %i.iv, %i.ix
  br i1 %i.iy, label %.lr.ph438, label %.preheader431, !llvm.loop !28

.lr.ph440:                                        ; preds = %.preheader431, %_ZL10Py_XINCREFP7_object.exit
  %.0276439 = phi i64 [ %i.jp, %_ZL10Py_XINCREFP7_object.exit ], [ 0, %.preheader431 ] ; 2 uses
  %i.iz = load ptr, ptr %i.gj, align 8
  %i.ja = getelementptr inbounds nuw [40 x i8], ptr %i.iz, i64 %.0276439 ; 6 uses
  %i.jb = load ptr, ptr %i.ja, align 8            ; 2 uses
  %.not348 = icmp eq ptr %i.jb, null
  br i1 %.not348, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph440
  %i.jc = invoke ptr @PyUnicode_InternFromString(ptr noundef nonnull %i.jb)
          to label %bb.cs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cs:                                            ; preds = %bb.cr
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store ptr %i.jc, ptr %i.jd, align 8
  %i.je = invoke ptr @PyUnicode_AsUTF8AndSize(ptr noundef %i.jc, ptr noundef null)
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ct:                                            ; preds = %bb.cs
  store ptr %i.je, ptr %i.ja, align 8
  br label %bb.cv

bb.cu:                                            ; preds = %.lr.ph440
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store ptr null, ptr %i.jf, align 8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8            ; 2 uses
  %.not349 = icmp eq ptr %i.jh, null
  br i1 %.not349, label %_ZN8nanobind6detail12strdup_checkEPKc.exit383, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ji = call noalias ptr @strdup(ptr noundef nonnull readonly %i.jh) #25 ; 2 uses
  %.not.i382 = icmp eq ptr %i.ji, null
  br i1 %.not.i382, label %bb.cx, label %_ZN8nanobind6detail12strdup_checkEPKc.exit383, !prof !6

bb.cx:                                            ; preds = %bb.cw
  call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.1) #26
  unreachable

_ZN8nanobind6detail12strdup_checkEPKc.exit383:    ; preds = %bb.cw, %bb.cv
  %i.jj = phi ptr [ null, %bb.cv ], [ %i.ji, %bb.cw ]
  store ptr %i.jj, ptr %i.jg, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8            ; 3 uses
  %.not.i384 = icmp eq ptr %i.jl, null
  br i1 %.not.i384, label %_ZL10Py_XINCREFP7_object.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZN8nanobind6detail12strdup_checkEPKc.exit383
  %i.jm = load i32, ptr %i.jl, align 8
  %i.jn = add i32 %i.jm, 1                        ; 2 uses
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %_ZL10Py_XINCREFP7_object.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store i32 %i.jn, ptr %i.jl, align 8
  br label %_ZL10Py_XINCREFP7_object.exit

_ZL10Py_XINCREFP7_object.exit:                    ; preds = %bb.cz, %bb.cy, %_ZN8nanobind6detail12strdup_checkEPKc.exit383
  %i.jp = add nuw nsw i64 %.0276439, 1            ; 2 uses
  %i.jq = load i16, ptr %i.fz, align 4
  %i.jr = zext i16 %i.jq to i64
  %i.js = icmp samesign ult i64 %i.jp, %i.jr
  br i1 %i.js, label %.lr.ph440, label %.loopexit432, !llvm.loop !29

.loopexit432:                                     ; preds = %_ZL10Py_XINCREFP7_object.exit, %.preheader431, %_ZN8nanobind6detail12malloc_checkEm.exit379
  %or.cond13 = and i1 %i.q, %.0289416
  %or.cond13.not = xor i1 %or.cond13, true
  %.not = xor i1 %.0288417, true
  %or.cond15 = or i1 %i.q, %.not
  %or.cond352 = select i1 %or.cond13.not, i1 %or.cond15, i1 false
  br i1 %or.cond352, label %.loopexit, label %bb.da

bb.da:                                            ; preds = %.loopexit432
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = call noundef zeroext i1 @_ZN8nanobind6detail13nb_type_checkEPNS0_12nb_internalsEP7_object(ptr noundef nonnull %0, ptr noundef %i.ju) #25
  br i1 %i.jv, label %bb.db, label %.loopexit

bb.db:                                            ; preds = %bb.da
  %i.jw = load ptr, ptr %i.jt, align 8            ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 924 ; 4 uses
  br i1 %.0289416, label %bb.dc, label %bb.dj

bb.dc:                                            ; preds = %bb.db
  %i.jy = load i32, ptr %i.jx, align 4            ; 2 uses
  %i.jz = and i32 %i.jy, 134217728
  %.not343 = icmp eq i32 %i.jz, 0
  br i1 %.not343, label %bb.df, label %.preheader

.preheader:                                       ; preds = %bb.dc
  %i.ka = load i16, ptr %i.fz, align 4
  %i.kb = zext i16 %i.ka to i32
  %i.kc = lshr i32 %i.g, 5
  %.lobit344 = and i32 %i.kc, 1
  %i.kd = sub nsw i32 %i.kb, %.lobit344           ; 4 uses
  %.not346441 = icmp ugt i32 %i.kd, 1
  br i1 %.not346441, label %.lr.ph443, label %.critedge354

.lr.ph443:                                        ; preds = %.preheader
  br i1 %.not317, label %.lr.ph443.split.us, label %.lr.ph443.split

.lr.ph443.split.us:                               ; preds = %.lr.ph443
  br i1 %.not329, label %.loopexit, label %.lr.ph443.split.us.split

.lr.ph443.split.us.split:                         ; preds = %.lr.ph443.split.us
  %i.ke = load i16, ptr %i.gc, align 2            ; 2 uses
  %i.kf = zext i16 %i.ke to i32
  %i.kg = icmp ne i16 %i.ke, 1
  %i.kh = add nuw nsw i32 %i.kf, 1
  %exitcond459.not = icmp ne i32 %i.kh, %i.kd
  %brmerge502 = select i1 %i.kg, i1 true, i1 %exitcond459.not
  br i1 %brmerge502, label %.loopexit, label %.critedge354

.lr.ph443.split:                                  ; preds = %.lr.ph443
  br i1 %.not329, label %.lr.ph443.split.split.us, label %.lr.ph443.split.split

.lr.ph443.split.split.us:                         ; preds = %.lr.ph443.split
  %i.ki = load ptr, ptr %i.gj, align 8
  %wide.trip.count457 = zext i32 %i.kd to i64
  br label %bb.dd

bb.dd:                                            ; preds = %bb.de, %.lr.ph443.split.split.us
  %indvars.iv454 = phi i64 [ %indvars.iv.next455, %bb.de ], [ 1, %.lr.ph443.split.split.us ] ; 2 uses
  %i.kj = getelementptr inbounds nuw [40 x i8], ptr %i.ki, i64 %indvars.iv454
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8
  %.not345.us = icmp eq ptr %i.kl, null
  br i1 %.not345.us, label %.loopexit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %indvars.iv.next455 = add nuw nsw i64 %indvars.iv454, 1 ; 2 uses
  %exitcond458.not = icmp eq i64 %indvars.iv.next455, %wide.trip.count457
  br i1 %exitcond458.not, label %.critedge354, label %bb.dd, !llvm.loop !30

.lr.ph443.split.split:                            ; preds = %.lr.ph443.split
  %i.km = load i16, ptr %i.gc, align 2
  %i.kn = zext i16 %i.km to i64
  %wide.trip.count = zext i32 %i.kd to i64
  br label %bb.dg

bb.df:                                            ; preds = %bb.dc
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jw, i64 976
  store ptr %i.cl, ptr %i.ko, align 8
  br label %.loopexit

bb.dg:                                            ; preds = %.lr.ph443.split.split, %bb.di
  %indvars.iv = phi i64 [ 1, %.lr.ph443.split.split ], [ %indvars.iv.next, %bb.di ] ; 3 uses
  %i.kp = icmp eq i64 %indvars.iv, %i.kn
  br i1 %i.kp, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.kq = load ptr, ptr %i.gj, align 8
  %i.kr = getelementptr inbounds nuw [40 x i8], ptr %i.kq, i64 %indvars.iv
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  %i.kt = load ptr, ptr %i.ks, align 8
  %.not345 = icmp eq ptr %i.kt, null
  br i1 %.not345, label %.loopexit, label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond453.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond453.not, label %.critedge354, label %bb.dg, !llvm.loop !30

.critedge354:                                     ; preds = %bb.di, %bb.de, %.lr.ph443.split.us.split, %.preheader
  %i.ku = or i32 %i.jy, 268435456
  store i32 %i.ku, ptr %i.jx, align 4
  br label %.loopexit

bb.dj:                                            ; preds = %bb.db
  br i1 %.0288417, label %bb.dk, label %.loopexit

bb.dk:                                            ; preds = %bb.dj
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jw, i64 976
  store ptr %i.cl, ptr %i.kv, align 8
  %i.kw = load i32, ptr %i.jx, align 4
  %i.kx = or i32 %i.kw, 134217728
  store i32 %i.kx, ptr %i.jx, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.dh, %bb.dd, %.lr.ph443.split.us.split, %.lr.ph443.split.us, %bb.df, %bb.dk, %bb.dj, %.critedge354, %.loopexit432, %bb.da
  %i.ky = icmp ne ptr %.0287418, null             ; 2 uses
  %or.cond17 = select i1 %i.i, i1 %i.ky, i1 false
  br i1 %or.cond17, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %.loopexit
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.la = load ptr, ptr %i.kz, align 8
  %i.lb = invoke i32 @PyObject_SetAttr(ptr noundef %i.la, ptr noundef nonnull %.0287418, ptr noundef nonnull %i.cl)
          to label %bb.dm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dm:                                            ; preds = %bb.dl
  %.not347 = icmp eq i32 %i.lb, 0
  br i1 %.not347, label %.thread423, label %bb.dn, !prof !5

bb.dn:                                            ; preds = %bb.dm
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #26
  unreachable

bb.do:                                            ; preds = %.loopexit
  br i1 %i.ky, label %.thread423, label %_ZL10Py_XDECREFP7_object.exit

.thread423:                                       ; preds = %bb.dm, %bb.do
  %i.lc = load i64, ptr %.0287418, align 8        ; 2 uses
  %i.ld = and i64 %i.lc, 2147483648
  %.not2.i = icmp eq i64 %i.ld, 0
  br i1 %.not2.i, label %bb.dp, label %_ZL10Py_XDECREFP7_object.exit

bb.dp:                                            ; preds = %.thread423
  %i.le = add nsw i64 %i.lc, -1                   ; 2 uses
  store i64 %i.le, ptr %.0287418, align 8
  %i.lf = icmp eq i64 %i.le, 0
  br i1 %i.lf, label %bb.dq, label %_ZL10Py_XDECREFP7_object.exit

bb.dq:                                            ; preds = %bb.dp
  invoke void @_Py_Dealloc(ptr noundef nonnull %.0287418)
          to label %_ZL10Py_XDECREFP7_object.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL10Py_XDECREFP7_object.exit:                    ; preds = %bb.dp, %.thread423, %bb.do, %bb.dq
  %i.lg = extractelement <4 x i1> %i.u, i64 0
  br i1 %i.lg, label %bb.dr, label %_ZL9Py_DECREFP7_object.exit

bb.dr:                                            ; preds = %_ZL10Py_XDECREFP7_object.exit
  %i.lh = load i64, ptr %i.cl, align 8            ; 2 uses
  %i.li = and i64 %i.lh, 2147483648
  %.not430 = icmp eq i64 %i.li, 0
  br i1 %.not430, label %bb.ds, label %_ZL9Py_DECREFP7_object.exit

bb.ds:                                            ; preds = %bb.dr
  %i.lj = add nsw i64 %i.lh, -1                   ; 2 uses
  store i64 %i.lj, ptr %i.cl, align 8
  %i.lk = icmp eq i64 %i.lj, 0
  br i1 %i.lk, label %bb.dt, label %_ZL9Py_DECREFP7_object.exit

bb.dt:                                            ; preds = %bb.ds
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.cl)
          to label %_ZL9Py_DECREFP7_object.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL9Py_DECREFP7_object.exit:                      ; preds = %bb.ds, %bb.dr, %bb.dt, %_ZL10Py_XDECREFP7_object.exit
  %.0280 = phi ptr [ %i.cl, %_ZL10Py_XDECREFP7_object.exit ], [ null, %bb.dt ], [ null, %bb.dr ], [ null, %bb.ds ]
  ret ptr %.0280

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cs, %bb.cr, %.invoke, %bb.dq, %bb.bh, %bb.ax, %bb.ar, %bb.av, %bb.dt, %bb.dl, %bb.ai, %.thread405, %bb.h, %bb.b
  %lpad.loopexit.split-lp505 = landingpad { ptr, i32 }
          catch ptr null
  %i.ll = extractvalue { ptr, i32 } %lpad.loopexit.split-lp505, 0
  call void @__clang_call_terminate(ptr %i.ll) #26
  unreachable
}

declare hidden noundef ptr @_ZN8nanobind6detail12extract_nameEPKcS2_S2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare ptr @PyUnicode_InternFromString(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

declare ptr @PyType_GenericAlloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @_ZN8nanobind6detail17internals_inc_refEPNS0_12nb_internalsE(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN8nanobind6detailL26nb_func_vectorcall_complexEP7_objectPKS2_mS2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [0 x i8], align 16
  %4 = alloca %"struct.nanobind::detail::cleanup_list", align 8 ; 22 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.b, align 8             ; 3 uses
  %i.c = and i64 %2, 4611686018427387903          ; 9 uses
  %.not = icmp eq ptr %3, null                    ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 16
  %.val272 = load i64, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %.val272, %bb.b ], [ 0, %bb.a ] ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = and i32 %i.h, 64
  %i.j = icmp ne i32 %i.i, 0
  %i.k = and i32 %i.h, 128                        ; 2 uses
  %i.l = icmp ne i32 %i.k, 0                      ; 2 uses
  %i.m = icmp ne i64 %i.c, 0
  %or.cond = and i1 %i.m, %i.j
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %1, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.o = phi ptr [ %i.n, %bb.d ], [ null, %bb.c ]
  %i.p = icmp ugt i64 %i.e, 1024
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @PyExc_TypeError, align 8
  invoke void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.18)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  store i32 1, ptr %4, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i32 5, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.s, ptr %i.w, align 8
  store ptr %i.o, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i32, ptr %i.x, align 8
  %i.z = zext i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = alloca i8, i64 %i.aa, align 16          ; 5 uses
  %i.ac = alloca i8, i64 %i.e, align 16           ; 6 uses
  %.not409 = icmp eq i64 %i.e, 0                  ; 4 uses
  br i1 %.not409, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.ae = icmp ult i64 %i.e, 4
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 2044
  br label %bb.i

._crit_edge:                                      ; preds = %bb.g
  br i1 %.not, label %.loopexit346, label %bb.j, !prof !46

._crit_edge.thread.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.thread.unr-lcssa, %.lr.ph
  %.0217364.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bn, %._crit_edge.thread.unr-lcssa ]
  %.0218363.epil.init = phi i1 [ true, %.lr.ph ], [ %i.bm, %._crit_edge.thread.unr-lcssa ]
  %lcmp.mod510 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod510)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.0217364.epil = phi i64 [ %.0217364.epil.init, %.epil.preheader ], [ %i.al, %bb.h ] ; 2 uses
  %.0218363.epil = phi i1 [ %.0218363.epil.init, %.epil.preheader ], [ %i.ak, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0217364.epil
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
  %.val273.epil = load i32, ptr %i.ah, align 8
  %i.ai = and i32 %.val273.epil, 3
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = and i1 %.0218363.epil, %i.aj            ; 2 uses
  %i.al = add nuw nsw i64 %.0217364.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread, label %bb.h, !llvm.loop !34

._crit_edge.thread:                               ; preds = %bb.h, %._crit_edge.thread.unr-lcssa
  %.lcssa508 = phi i1 [ %i.bm, %._crit_edge.thread.unr-lcssa ], [ %i.ak, %bb.h ]
  br i1 %.lcssa508, label %bb.j, label %.lr.ph367, !prof !47

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %.0217364 = phi i64 [ 0, %.lr.ph.new ], [ %i.bn, %bb.i ] ; 5 uses
  %.0218363 = phi i1 [ true, %.lr.ph.new ], [ %i.bm, %bb.i ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.i ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0217364
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 32
  %.val273 = load i32, ptr %i.ao, align 8
  %i.ap = and i32 %.val273, 3
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = and i1 %.0218363, %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0217364
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 32
  %.val273.1 = load i32, ptr %i.av, align 8
  %i.aw = and i32 %.val273.1, 3
  %i.ax = icmp ne i32 %i.aw, 0
  %i.ay = and i1 %i.ar, %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0217364
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 32
  %.val273.2 = load i32, ptr %i.bc, align 8
  %i.bd = and i32 %.val273.2, 3
  %i.be = icmp ne i32 %i.bd, 0
  %i.bf = and i1 %i.ay, %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0217364
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr i8, ptr %i.bi, i64 32
  %.val273.3 = load i32, ptr %i.bj, align 8
  %i.bk = and i32 %.val273.3, 3
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = and i1 %i.bf, %i.bl                     ; 3 uses
  %i.bn = add nuw nsw i64 %.0217364, 4            ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.thread.unr-lcssa, label %bb.i, !llvm.loop !35

bb.j:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %.loopexit346

.lr.ph367:                                        ; preds = %._crit_edge.thread
  %i.bp = shl nuw nsw i64 %i.e, 3
  %i.bq = alloca i8, i64 %i.bp, align 16          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph367, %_ZL9Py_DECREFP7_object.exit
  %.0216365 = phi i64 [ 0, %.lr.ph367 ], [ %i.cl, %_ZL9Py_DECREFP7_object.exit ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.0216365
  %i.bt = load ptr, ptr %i.bs, align 8            ; 7 uses
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = add i32 %i.bu, 1                        ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_ZL10_Py_NewRefP7_object.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.bv, ptr %i.bt, align 8
  br label %_ZL10_Py_NewRefP7_object.exit

_ZL10_Py_NewRefP7_object.exit:                    ; preds = %bb.l, %bb.k
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.0216365 ; 3 uses
  store ptr %i.bt, ptr %i.bx, align 8
  invoke void @PyUnicode_InternInPlace(ptr noundef nonnull %i.bx)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %_ZL10_Py_NewRefP7_object.exit
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = icmp eq ptr %i.bt, %i.by
  br i1 %i.bz, label %bb.n, label %bb.q, !prof !5

bb.n:                                             ; preds = %bb.m
  %i.ca = load i64, ptr %i.bt, align 8            ; 2 uses
  %i.cb = and i64 %i.ca, 2147483648
  %.not336 = icmp eq i64 %i.cb, 0
  br i1 %.not336, label %bb.o, label %_ZL9Py_DECREFP7_object.exit

bb.o:                                             ; preds = %bb.n
  %i.cc = add nsw i64 %i.ca, -1                   ; 2 uses
  store i64 %i.cc, ptr %i.bt, align 8
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.p, label %_ZL9Py_DECREFP7_object.exit

bb.p:                                             ; preds = %bb.o
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.bt)
          to label %_ZL9Py_DECREFP7_object.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.m
  %i.ce = load i32, ptr %4, align 8               ; 2 uses
  %i.cf = load i32, ptr %i.t, align 4
  %.not.i270 = icmp ult i32 %i.ce, %i.cf
  br i1 %.not.i270, label %_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit271, label %bb.r, !prof !5

bb.r:                                             ; preds = %bb.q
  call void @_ZN8nanobind6detail12cleanup_list6expandEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #25
  %.pre = load i32, ptr %4, align 8
  br label %_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit271

_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit271: ; preds = %bb.q, %bb.r
  %i.cg = phi i32 [ %i.ce, %bb.q ], [ %.pre, %bb.r ] ; 2 uses
  %i.ch = load ptr, ptr %i.u, align 8
  %i.ci = add i32 %i.cg, 1
  store i32 %i.ci, ptr %4, align 8
  %i.cj = zext i32 %i.cg to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cj
  store ptr %i.by, ptr %i.ck, align 8
  br label %_ZL9Py_DECREFP7_object.exit

_ZL9Py_DECREFP7_object.exit:                      ; preds = %bb.o, %bb.n, %bb.p, %_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit271
  %i.cl = add nuw i64 %.0216365, 1                ; 2 uses
  %exitcond430.not = icmp eq i64 %i.cl, %i.e
  br i1 %exitcond430.not, label %.loopexit346, label %bb.k, !llvm.loop !36

.loopexit346:                                     ; preds = %_ZL9Py_DECREFP7_object.exit, %._crit_edge, %bb.j
  %.0219 = phi ptr [ %i.bo, %bb.j ], [ %i.a, %._crit_edge ], [ %i.bq, %_ZL9Py_DECREFP7_object.exit ] ; 2 uses
  %.not411 = icmp eq i64 %.val, 0
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c ; 2 uses
  %i.cn = and i64 %2, 4611686018427387904
  %.not334 = icmp eq i64 %i.cn, 0
  %i.co = lshr exact i32 %i.k, 6                  ; 2 uses
  br i1 %.not411, label %.thread321, label %.preheader341.us.preheader

.preheader341.us.preheader:                       ; preds = %.loopexit346
  %i.cp = icmp ne i64 %.val, 1
  %brmerge408.not.not = or i1 %.not, %.not409
  %min.iters.check = icmp ult i64 %i.e, 4
  %min.iters.check482 = icmp ult i64 %i.e, 32
  %i.cq = and i64 %i.e, 28
  %n.vec = and i64 %i.e, 2016                     ; 4 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.cq, 0
  %n.vec485 = and i64 %i.e, 2044                  ; 3 uses
  %cmp.n490 = icmp eq i64 %i.e, %n.vec485
  br label %.preheader341.us

.preheader341.us:                                 ; preds = %.preheader341.us.preheader, %._crit_edge392.us
  %.0215395.us = phi i1 [ false, %._crit_edge392.us ], [ %i.cp, %.preheader341.us.preheader ] ; 2 uses
  %.0235394.us = phi ptr [ %.5240313.us, %._crit_edge392.us ], [ null, %.preheader341.us.preheader ]
  br label %bb.s

bb.s:                                             ; preds = %.preheader341.us, %.thread309.us
  %.0214390.us = phi i64 [ 0, %.preheader341.us ], [ %i.hp, %.thread309.us ] ; 2 uses
  %.1236389.us = phi ptr [ %.0235394.us, %.preheader341.us ], [ %.5240313.us, %.thread309.us ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %.0214390.us ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56 ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 8            ; 3 uses
  %i.cu = and i32 %i.ct, 8
  %i.cv = icmp ne i32 %i.cu, 0                    ; 2 uses
  %i.cw = and i32 %i.ct, 16
  %i.cx = icmp ne i32 %i.cw, 0                    ; 3 uses
  %i.cy = and i32 %i.ct, 32                       ; 2 uses
  %.not251.us = icmp eq i32 %i.cy, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 62
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = zext i16 %i.da to i64                   ; 13 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 60
  %i.dd = load i16, ptr %i.dc, align 4
  %i.de = zext i16 %i.dd to i32                   ; 2 uses
  %.lobit.us = lshr exact i32 %i.cy, 5            ; 2 uses
  %i.df = sub nsw i32 %i.de, %.lobit.us
  %i.dg = sext i32 %i.df to i64                   ; 3 uses
  %i.dh = icmp samesign ule i64 %i.c, %i.db       ; 2 uses
  %or.cond6.us = select i1 %i.dh, i1 true, i1 %i.cx
  %i.di = icmp samesign uge i64 %i.c, %i.db
  %or.cond8.us = select i1 %i.di, i1 true, i1 %i.cv
  %or.cond266.us = select i1 %or.cond6.us, i1 %or.cond8.us, i1 false
  br i1 %or.cond266.us, label %bb.t, label %.thread309.us

bb.t:                                             ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.ac, i8 0, i64 %i.e, i1 false)
  %invariant.umin.us = call i64 @llvm.umin.i64(i64 %i.c, i64 %i.db)
  %.not415 = icmp eq i32 %.lobit.us, %i.de
  br i1 %.not415, label %.thread288.us, label %.lr.ph372.us

bb.u:                                             ; preds = %.lr.ph372.us, %bb.ag
  %.0213370.us = phi i64 [ 0, %.lr.ph372.us ], [ %i.ef, %bb.ag ] ; 8 uses
  %i.dj = icmp eq i64 %.0213370.us, %i.db
  %or.cond262.us = and i1 %i.cx, %i.dj
  br i1 %or.cond262.us, label %bb.ag, label %bb.v

bb.v:                                             ; preds = %bb.u
  %or.cond263.us = icmp ult i64 %.0213370.us, %invariant.umin.us
  br i1 %or.cond263.us, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0213370.us
  %i.dl = load ptr, ptr %i.dk, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0211.us = phi ptr [ %i.dl, %bb.w ], [ null, %bb.v ] ; 4 uses
  br i1 %i.cv, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.dm = load ptr, ptr %i.hq, align 8
  %i.dn = getelementptr inbounds nuw [40 x i8], ptr %i.dm, i64 %.0213370.us ; 3 uses
  br i1 %.not, label %.thread278.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not252.us = icmp eq ptr %i.dp, null
  %brmerge = or i1 %.not252.us, %.not409
  br i1 %brmerge, label %.thread278.us, label %.lr.ph369.us

.lr.ph369.us:                                     ; preds = %bb.z, %bb.aa
  %.0207368.us = phi i64 [ %i.dt, %bb.aa ], [ 0, %bb.z ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.0219, i64 %.0207368.us
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = icmp eq ptr %i.dr, %i.dp
  br i1 %i.ds, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph369.us
  %i.dt = add nuw i64 %.0207368.us, 1             ; 2 uses
  %exitcond431.not = icmp eq i64 %i.dt, %i.e
  br i1 %exitcond431.not, label %.thread278.us, label %.lr.ph369.us, !llvm.loop !37

bb.ab:                                            ; preds = %.lr.ph369.us
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.0207368.us
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.0207368.us
  store i8 1, ptr %i.dw, align 1
  %.not253.us = icmp eq ptr %i.dv, null
  br i1 %.not253.us, label %.thread278.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not254.us = icmp eq ptr %.0211.us, null
  br i1 %.not254.us, label %.thread282.us, label %.thread288.us

.thread278.us:                                    ; preds = %bb.aa, %bb.z, %bb.ab, %bb.y
  %.not255.us = icmp eq ptr %.0211.us, null
  br i1 %.not255.us, label %bb.ad, label %.thread282.us

bb.ad:                                            ; preds = %.thread278.us
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  br label %.thread282.us

.thread282.us:                                    ; preds = %bb.ad, %.thread278.us, %bb.ac
  %.4.us = phi ptr [ %.0211.us, %.thread278.us ], [ %i.dy, %bb.ad ], [ %i.dv, %bb.ac ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.ea = load i32, ptr %i.dz, align 8
  %i.eb = and i32 %i.ea, 4
  %i.ec = icmp eq i32 %i.eb, 0
  br label %bb.ae

bb.ae:                                            ; preds = %.thread282.us, %bb.x
  %.6.us = phi ptr [ %.4.us, %.thread282.us ], [ %.0211.us, %bb.x ] ; 3 uses
  %.1210.us = phi i1 [ %i.ec, %.thread282.us ], [ true, %bb.x ]
  %.not256.us = icmp eq ptr %.6.us, null
  %i.ed = icmp eq ptr %.6.us, @_Py_NoneStruct
  %or.cond265.us = select i1 %i.ed, i1 %.1210.us, i1 false
  %or.cond337.us = select i1 %.not256.us, i1 true, i1 %or.cond265.us
  br i1 %or.cond337.us, label %.thread288.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.0213370.us
  store ptr %.6.us, ptr %i.ee, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.u
  %i.ef = add nuw i64 %.0213370.us, 1             ; 3 uses
  %i.eg = icmp ult i64 %i.ef, %i.dg
  br i1 %i.eg, label %bb.u, label %.thread288.us, !llvm.loop !38

.thread288.us:                                    ; preds = %bb.ag, %bb.ae, %bb.ac, %bb.t
  %.0213.lcssa.us = phi i64 [ 0, %bb.t ], [ %.0213370.us, %bb.ac ], [ %.0213370.us, %bb.ae ], [ %i.ef, %bb.ag ]
  %.not257.us = icmp eq i64 %.0213.lcssa.us, %i.dg
  br i1 %.not257.us, label %bb.ah, label %.thread309.us

bb.ah:                                            ; preds = %.thread288.us
  br i1 %i.cx, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.eh = call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %i.db)
  %i.ei = invoke ptr @PyTuple_New(i64 noundef %i.eh)
          to label %.preheader340.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.lr.ph379.us.new:                                 ; preds = %.prol.loopexit, %_ZL10_Py_NewRefP7_object.exit274.us.1
  %.0206378.us = phi i64 [ %i.ey, %_ZL10_Py_NewRefP7_object.exit274.us.1 ], [ %.0206378.us.unr, %.prol.loopexit ] ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0206378.us
  %i.ek = load ptr, ptr %i.ej, align 8            ; 3 uses
  %i.el = load i32, ptr %i.ek, align 8
  %i.em = add i32 %i.el, 1                        ; 2 uses
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %_ZL10_Py_NewRefP7_object.exit274.us, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph379.us.new
  store i32 %i.em, ptr %i.ek, align 8
  br label %_ZL10_Py_NewRefP7_object.exit274.us

_ZL10_Py_NewRefP7_object.exit274.us:              ; preds = %bb.aj, %.lr.ph379.us.new
  %i.eo = sub nuw nsw i64 %.0206378.us, %i.db
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.eo
  store ptr %i.ek, ptr %i.ep, align 8
  %i.eq = add nuw nsw i64 %.0206378.us, 1         ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8            ; 3 uses
  %i.et = load i32, ptr %i.es, align 8
  %i.eu = add i32 %i.et, 1                        ; 2 uses
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %_ZL10_Py_NewRefP7_object.exit274.us.1, label %bb.ak

bb.ak:                                            ; preds = %_ZL10_Py_NewRefP7_object.exit274.us
  store i32 %i.eu, ptr %i.es, align 8
  br label %_ZL10_Py_NewRefP7_object.exit274.us.1

_ZL10_Py_NewRefP7_object.exit274.us.1:            ; preds = %bb.ak, %_ZL10_Py_NewRefP7_object.exit274.us
  %i.ew = sub nuw nsw i64 %i.eq, %i.db
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.ew
  store ptr %i.es, ptr %i.ex, align 8
  %i.ey = add nuw nsw i64 %.0206378.us, 2         ; 2 uses
  %exitcond432.not.1 = icmp eq i64 %i.ey, %i.c
  br i1 %exitcond432.not.1, label %._crit_edge380.us, label %.lr.ph379.us.new, !llvm.loop !39

._crit_edge380.us:                                ; preds = %.prol.loopexit, %_ZL10_Py_NewRefP7_object.exit274.us.1, %.preheader340.us
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.db
  store ptr %i.ei, ptr %i.ez, align 8
  %i.fa = load i32, ptr %4, align 8               ; 2 uses
  %i.fb = load i32, ptr %i.t, align 4
  %.not.i268.us = icmp ult i32 %i.fa, %i.fb
  br i1 %.not.i268.us, label %_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit269.us, label %bb.al, !prof !5

bb.al:                                            ; preds = %._crit_edge380.us
  call void @_ZN8nanobind6detail12cleanup_list6expandEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #25
  %.pre437 = load i32, ptr %4, align 8
  br label %_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit269.us

_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit269.us: ; preds = %bb.al, %._crit_edge380.us
  %i.fc = phi i32 [ %.pre437, %bb.al ], [ %i.fa, %._crit_edge380.us ] ; 2 uses
  %i.fd = load ptr, ptr %i.u, align 8
  %i.fe = add i32 %i.fc, 1
  store i32 %i.fe, ptr %4, align 8
  %i.ff = zext i32 %i.fc to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.ff
  store ptr %i.ei, ptr %i.fg, align 8
  br label %bb.am

bb.am:                                            ; preds = %_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit269.us, %bb.ah
  br i1 %.not251.us, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fh = invoke ptr @PyDict_New()
          to label %.preheader339.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.lr.ph382.us:                                     ; preds = %.preheader339.us, %bb.ap
  %.0205381.us = phi i64 [ %i.fq, %bb.ap ], [ 0, %.preheader339.us ] ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.0205381.us
  %i.fj = load i8, ptr %i.fi, align 1, !range !7, !noundef !8
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph382.us
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.0219, i64 %.0205381.us
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.0205381.us
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = invoke i32 @PyDict_SetItem(ptr noundef %i.fh, ptr noundef %i.fm, ptr noundef %i.fo)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ap:                                            ; preds = %bb.ao, %.lr.ph382.us
  %i.fq = add nuw i64 %.0205381.us, 1             ; 2 uses
  %exitcond433.not = icmp eq i64 %i.fq, %i.e
  br i1 %exitcond433.not, label %._crit_edge383.us, label %.lr.ph382.us, !llvm.loop !40

._crit_edge383.us:                                ; preds = %bb.ap, %.preheader339.us
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.dg
  store ptr %i.fh, ptr %i.fr, align 8
  %i.fs = load i32, ptr %4, align 8               ; 2 uses
  %i.ft = load i32, ptr %i.t, align 4
  %.not.i267.us = icmp ult i32 %i.fs, %i.ft
  br i1 %.not.i267.us, label %_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit.us, label %bb.aq, !prof !5

bb.aq:                                            ; preds = %._crit_edge383.us
  call void @_ZN8nanobind6detail12cleanup_list6expandEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #25
  %.pre438 = load i32, ptr %4, align 8
  br label %_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit.us

_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit.us: ; preds = %bb.aq, %._crit_edge383.us
  %i.fu = phi i32 [ %.pre438, %bb.aq ], [ %i.fs, %._crit_edge383.us ] ; 2 uses
  %i.fv = load ptr, ptr %i.u, align 8
  %i.fw = add i32 %i.fu, 1
  store i32 %i.fw, ptr %4, align 8
  %i.fx = zext i32 %i.fu to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fx
  store ptr %i.fh, ptr %i.fy, align 8
  br label %.critedge

bb.ar:                                            ; preds = %bb.am
  br i1 %brmerge408.not.not, label %.critedge, label %iter.check

iter.check:                                       ; preds = %bb.ar
  br i1 %min.iters.check, label %.lr.ph386.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check482, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <16 x i1> [ %i.gd, %vector.body ], [ splat (i1 true), %vector.main.loop.iter.check ]
  %vec.phi483 = phi <16 x i1> [ %i.ge, %vector.body ], [ splat (i1 true), %vector.main.loop.iter.check ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ac, i64 %index ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %wide.load = load <16 x i8>, ptr %i.fz, align 16
  %wide.load484 = load <16 x i8>, ptr %i.ga, align 16
  %i.gb = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.gc = icmp ne <16 x i8> %wide.load484, zeroinitializer
  %i.gd = and <16 x i1> %vec.phi, %i.gb           ; 2 uses
  %i.ge = and <16 x i1> %vec.phi483, %i.gc        ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gf = icmp eq i64 %index.next, %n.vec
  br i1 %i.gf, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <16 x i1> %i.ge, %i.gd
  %i.gg = bitcast <16 x i1> %bin.rdx to i16
  %i.gh = icmp eq i16 %i.gg, -1                   ; 3 uses
  br i1 %cmp.n, label %._crit_edge387.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph386.us.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.gh, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %i.gi = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index486 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next489, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi487 = phi <4 x i1> [ %i.gi, %vec.epilog.ph ], [ %i.gl, %vec.epilog.vector.body ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ac, i64 %index486
  %wide.load488 = load <4 x i8>, ptr %i.gj, align 4
  %i.gk = icmp ne <4 x i8> %wide.load488, zeroinitializer
  %i.gl = and <4 x i1> %vec.phi487, %i.gk         ; 2 uses
  %index.next489 = add nuw i64 %index486, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next489, %n.vec485
  br i1 %i.gm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !42

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.gn = bitcast <4 x i1> %i.gl to i4
  %i.go = icmp eq i4 %i.gn, -1                    ; 2 uses
  br i1 %cmp.n490, label %._crit_edge387.us, label %.lr.ph386.us.preheader

.lr.ph386.us.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0203385.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec485, %vec.epilog.middle.block ]
  %.0204384.us.ph = phi i1 [ true, %iter.check ], [ %i.gh, %vec.epilog.iter.check ], [ %i.go, %vec.epilog.middle.block ]
  br label %.lr.ph386.us

.lr.ph386.us:                                     ; preds = %.lr.ph386.us.preheader, %.lr.ph386.us
  %.0203385.us = phi i64 [ %i.gt, %.lr.ph386.us ], [ %.0203385.us.ph, %.lr.ph386.us.preheader ] ; 2 uses
  %.0204384.us = phi i1 [ %i.gs, %.lr.ph386.us ], [ %.0204384.us.ph, %.lr.ph386.us.preheader ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.0203385.us
  %i.gq = load i8, ptr %i.gp, align 1, !range !7, !noundef !8
  %i.gr = icmp ne i8 %i.gq, 0
  %i.gs = and i1 %.0204384.us, %i.gr              ; 2 uses
  %i.gt = add nuw nsw i64 %.0203385.us, 1         ; 2 uses
  %exitcond434.not = icmp eq i64 %i.gt, %i.e
  br i1 %exitcond434.not, label %._crit_edge387.us, label %.lr.ph386.us, !llvm.loop !43

.critedge:                                        ; preds = %bb.ar, %._crit_edge387.us, %_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit.us
  br i1 %i.l, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.critedge
  %i.gu = load ptr, ptr %i.ab, align 16
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.critedge
  %.0202.us = phi ptr [ %i.gu, %bb.as ], [ null, %.critedge ] ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8
  br i1 %.0215395.us, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gx = load i32, ptr %i.cs, align 8
  %i.gy = lshr i32 %i.gx, 14
  %.lobit.i.us = and i32 %i.gy, 1
  %i.gz = or disjoint i32 %.lobit.i.us, %i.co
  %i.ha = xor i32 %i.gz, 1
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.hb = phi i32 [ %i.co, %bb.at ], [ %i.ha, %bb.au ] ; 2 uses
  br i1 %.not334, label %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hc = load i32, ptr %i.cs, align 8
  %i.hd = lshr i32 %i.hc, 2
  %i.he = and i32 %i.hd, 32
  %i.hf = or i32 %i.hb, %i.he
  br label %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us

_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us: ; preds = %bb.aw, %bb.av
  %i.hg = phi i32 [ %i.hb, %bb.av ], [ %i.hf, %bb.aw ]
  %i.hh = invoke noundef ptr %i.gw(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.ab, i32 noundef %i.hg, ptr noundef nonnull %4)
          to label %bb.ba unwind label %bb.ax     ; 2 uses

bb.ax:                                            ; preds = %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us
  %i.hi = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nanobind4abi117builtin_exceptionE
          catch ptr @_ZTIN8nanobind4abi112python_errorE
          catch ptr null                          ; 2 uses
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0      ; 2 uses
  %i.hk = extractvalue { ptr, i32 } %i.hi, 1      ; 2 uses
  %i.hl = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE) #25
  %i.hm = icmp eq i32 %i.hk, %i.hl
  br i1 %i.hm, label %bb.ay, label %.split398.us

bb.ay:                                            ; preds = %bb.ax
  %i.hn = call ptr @__cxa_begin_catch(ptr %i.hj) #25
  %i.ho = invoke fastcc noundef zeroext i1 @_ZN8nanobind6detailL28set_builtin_exception_statusERNS_4abi117builtin_exceptionE(ptr noundef nonnull align 8 dereferenceable(20) %i.hn)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay
  %spec.select.us = select i1 %i.ho, ptr null, ptr inttoptr (i64 1 to ptr)
  invoke void @__cxa_end_catch()
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us
  %.not258.us = icmp eq ptr %i.hh, null
  br i1 %.not258.us, label %.thread321, label %bb.bb, !prof !6

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.3238.us = phi ptr [ %spec.select.us, %bb.az ], [ %i.hh, %bb.ba ] ; 5 uses
  %.not259.us = icmp eq ptr %.3238.us, inttoptr (i64 1 to ptr)
  br i1 %.not259.us, label %.thread309.us, label %.split402.us

.thread309.us:                                    ; preds = %bb.bb, %._crit_edge387.us, %.thread288.us, %bb.s
  %.5240313.us = phi ptr [ inttoptr (i64 1 to ptr), %bb.bb ], [ %.1236389.us, %bb.s ], [ %.1236389.us, %.thread288.us ], [ %.1236389.us, %._crit_edge387.us ] ; 3 uses
  %i.hp = add nuw i64 %.0214390.us, 1             ; 2 uses
  %exitcond435.not = icmp eq i64 %i.hp, %.val
  br i1 %exitcond435.not, label %._crit_edge392.us, label %bb.s, !llvm.loop !44

.preheader339.us:                                 ; preds = %bb.an
  br i1 %.not409, label %._crit_edge383.us, label %.lr.ph382.us

.preheader340.us:                                 ; preds = %bb.ai
  br i1 %i.dh, label %._crit_edge380.us, label %.lr.ph379.us

.lr.ph372.us:                                     ; preds = %bb.t
  %i.hq = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  br label %bb.u

.lr.ph379.us:                                     ; preds = %.preheader340.us
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 3 uses
  %i.hs = sub i64 %2, %i.db
  %.neg = add nuw nsw i64 %i.db, 1
  %xtraiter511 = and i64 %i.hs, 1
  %lcmp.mod512.not = icmp eq i64 %xtraiter511, 0
  br i1 %lcmp.mod512.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph379.us
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.db
  %i.hu = load ptr, ptr %i.ht, align 8            ; 3 uses
  %i.hv = load i32, ptr %i.hu, align 8
  %i.hw = add i32 %i.hv, 1                        ; 2 uses
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %_ZL10_Py_NewRefP7_object.exit274.us.prol, label %bb.bc

bb.bc:                                            ; preds = %.prol.preheader
  store i32 %i.hw, ptr %i.hu, align 8
  br label %_ZL10_Py_NewRefP7_object.exit274.us.prol

_ZL10_Py_NewRefP7_object.exit274.us.prol:         ; preds = %bb.bc, %.prol.preheader
  store ptr %i.hu, ptr %i.hr, align 8
  %i.hy = add nuw nsw i64 %i.db, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZL10_Py_NewRefP7_object.exit274.us.prol, %.lr.ph379.us
  %.0206378.us.unr = phi i64 [ %i.db, %.lr.ph379.us ], [ %i.hy, %_ZL10_Py_NewRefP7_object.exit274.us.prol ]
  %i.hz = icmp eq i64 %i.c, %.neg
  br i1 %i.hz, label %._crit_edge380.us, label %.lr.ph379.us.new

._crit_edge387.us:                                ; preds = %.lr.ph386.us, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i1 [ %i.go, %vec.epilog.middle.block ], [ %i.gh, %middle.block ], [ %i.gs, %.lr.ph386.us ]
  br i1 %.lcssa, label %.critedge, label %.thread309.us

._crit_edge392.us:                                ; preds = %.thread309.us
  br i1 %.0215395.us, label %.preheader341.us, label %.thread321, !llvm.loop !45

.split398.us:                                     ; preds = %bb.ax
  %i.ia = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi112python_errorE) #25
  %i.ib = icmp eq i32 %i.hk, %i.ia
  %i.ic = call ptr @__cxa_begin_catch(ptr %i.hj) #25
  br i1 %i.ib, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.split398.us
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8
  call void @_ZN8nanobind6detail13error_restoreEP7_object(ptr noundef %i.ie) #25
  store ptr null, ptr %i.id, align 8
  br label %.invoke

bb.be:                                            ; preds = %.split398.us
  call fastcc void @_ZN8nanobind6detailL29nb_func_convert_cpp_exceptionEP7_object(ptr noundef nonnull %0) #25
  br label %.invoke

.invoke:                                          ; preds = %bb.bd, %bb.be
  invoke void @__cxa_end_catch()
          to label %.thread321 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split402.us:                                     ; preds = %bb.bb
  %i.if = icmp ne ptr %.3238.us, null
  %or.cond10 = and i1 %i.l, %i.if
  br i1 %or.cond10, label %bb.bf, label %.thread321

bb.bf:                                            ; preds = %.split402.us
  %i.ig = getelementptr inbounds nuw i8, ptr %.0202.us, i64 20 ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 4             ; 3 uses
  %i.ii = and i8 %i.ih, -20
  %i.ij = or disjoint i8 %i.ii, 18
  store i8 %i.ij, ptr %i.ig, align 4
  %i.ik = and i8 %i.ih, 64
  %.not260 = icmp eq i8 %i.ik, 0
  br i1 %.not260, label %.thread321, label %bb.bg, !prof !5

bb.bg:                                            ; preds = %bb.bf
  %i.il = getelementptr i8, ptr %.0202.us, i64 8
  %.0202.val = load ptr, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %.0202.val, i64 1024
  %i.in = load ptr, ptr %i.im, align 8
  %i.io = ptrtoint ptr %.0202.us to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %.0202.us, i64 16
  %i.iq = load i32, ptr %i.ip, align 8
  %i.ir = sext i32 %i.iq to i64
  %i.is = add nsw i64 %i.ir, %i.io
  %i.it = inttoptr i64 %i.is to ptr               ; 2 uses
  %i.iu = and i8 %i.ih, 4
  %.not.i275 = icmp eq i8 %i.iu, 0
  br i1 %.not.i275, label %bb.bh, label %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit

bb.bh:                                            ; preds = %bb.bg
  %i.iv = load ptr, ptr %i.it, align 8
  br label %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit

_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit: ; preds = %bb.bg, %bb.bh
  %i.iw = phi ptr [ %i.iv, %bb.bh ], [ %i.it, %bb.bg ]
  call void %i.in(ptr noundef %i.iw, ptr noundef nonnull %.0202.us) #25
  br label %.thread321

.thread321:                                       ; preds = %._crit_edge392.us, %bb.ba, %.invoke, %.loopexit346, %.split402.us, %bb.bf, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit
  %.7242325 = phi ptr [ null, %.loopexit346 ], [ null, %.invoke ], [ null, %bb.ba ], [ %.3238.us, %bb.bf ], [ %.3238.us, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ], [ %.3238.us, %.split402.us ], [ %.5240313.us, %._crit_edge392.us ]
  %.not261 = phi i1 [ false, %.loopexit346 ], [ true, %.invoke ], [ false, %bb.ba ], [ true, %bb.bf ], [ true, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ], [ true, %.split402.us ], [ false, %._crit_edge392.us ]
  %.7 = phi ptr [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %.loopexit346 ], [ null, %.invoke ], [ @_ZN8nanobind6detailL23nb_func_error_noconvertEP7_objectPKS2_mS2_, %bb.ba ], [ null, %bb.bf ], [ null, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ], [ null, %.split402.us ], [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %._crit_edge392.us ]
  %i.ix = load i32, ptr %4, align 8
  %.not335 = icmp eq i32 %i.ix, 1
  br i1 %.not335, label %bb.bj, label %bb.bi, !prof !5

bb.bi:                                            ; preds = %.thread321
  call void @_ZN8nanobind6detail12cleanup_list7releaseEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #25
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.thread321
  br i1 %.not261, label %bb.bl, label %bb.bk, !prof !5

bb.bk:                                            ; preds = %bb.bj
  %i.iy = call noundef ptr %.7(ptr noundef %0, ptr noundef %1, i64 noundef %i.c, ptr noundef %3) #25, !callees !12
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %.0 = phi ptr [ %.7242325, %bb.bj ], [ %i.iy, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.bm

bb.bm:                                            ; preds = %bb.f, %bb.bl
  %.1 = phi ptr [ %.0, %bb.bl ], [ null, %bb.f ]
  ret ptr %.1

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.az, %bb.ay, %bb.an, %bb.ai, %bb.ao, %bb.p, %_ZL10_Py_NewRefP7_object.exit, %.invoke, %bb.f
  %lpad.loopexit.split-lp506 = landingpad { ptr, i32 }
          catch ptr null
  %i.iz = extractvalue { ptr, i32 } %lpad.loopexit.split-lp506, 0
  call void @__clang_call_terminate(ptr %i.iz) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN8nanobind6detailL25nb_func_vectorcall_mediumEP7_objectPKS2_mS2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #5 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN8nanobind6detailL26nb_func_vectorcall_complexEP7_objectPKS2_mS2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef ptr @_ZN8nanobind6detailL29nb_func_vectorcall_medium_posEP7_objectPKS2_mS2_(ptr noundef %0, ptr noundef %1, i64 noundef %2) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN8nanobind6detailL27nb_func_vectorcall_simple_0EP7_objectPKS2_mS2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %2, 4611686018427387903          ; 2 uses
  %i.b = icmp eq ptr %3, null
  %i.c = icmp eq i64 %i.a, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %.thread35

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i32, ptr %i.g, align 8
  %i.i = lshr i32 %i.h, 14
  %.lobit.i = and i32 %i.i, 1
  %i.j = xor i32 %.lobit.i, 1
  %i.k = invoke noundef ptr %i.f(ptr noundef nonnull %i.d, ptr noundef %1, i32 noundef %i.j, ptr noundef null)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %magicptr = ptrtoint ptr %i.k to i64
  switch i64 %magicptr, label %.thread [
    i64 1, label %.thread35
    i64 0, label %bb.j
  ]

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nanobind4abi117builtin_exceptionE
          catch ptr @_ZTIN8nanobind4abi112python_errorE
          catch ptr null                          ; 2 uses
  %i.m = extractvalue { ptr, i32 } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, i32 } %i.l, 1        ; 2 uses
  %i.o = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE) #25
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.m) #25
  %i.r = invoke fastcc noundef zeroext i1 @_ZN8nanobind6detailL28set_builtin_exception_statusERNS_4abi117builtin_exceptionE(ptr noundef nonnull align 8 dereferenceable(20) %i.q)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.s = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi112python_errorE) #25
  %i.t = icmp eq i32 %i.n, %i.s
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.m) #25
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  tail call void @_ZN8nanobind6detail13error_restoreEP7_object(ptr noundef %i.w) #25
  store ptr null, ptr %i.v, align 8
  br label %.invoke

bb.i:                                             ; preds = %bb.g
  tail call fastcc void @_ZN8nanobind6detailL29nb_func_convert_cpp_exceptionEP7_object(ptr noundef nonnull %0) #25
  br label %.invoke

.invoke:                                          ; preds = %bb.h, %bb.i
  invoke void @__cxa_end_catch()
          to label %.thread unwind label %bb.l

bb.j:                                             ; preds = %bb.c
  br label %.thread35

bb.k:                                             ; preds = %bb.f
  br i1 %i.r, label %.thread, label %.thread35, !prof !13

.thread35:                                        ; preds = %bb.a, %bb.j, %bb.c, %bb.k
  %.12539 = phi ptr [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %bb.k ], [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %bb.a ], [ @_ZN8nanobind6detailL23nb_func_error_noconvertEP7_objectPKS2_mS2_, %bb.j ], [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %bb.c ]
  %i.x = tail call noundef ptr %.12539(ptr noundef %0, ptr noundef %1, i64 noundef %i.a, ptr noundef %3) #25, !callees !12
  br label %.thread

.thread:                                          ; preds = %.invoke, %bb.c, %.thread35, %bb.k
  %.1 = phi ptr [ %i.x, %.thread35 ], [ null, %bb.k ], [ null, %.invoke ], [ %i.k, %bb.c ]
  ret ptr %.1

end_hunk_0
begin_hunk_1_@_ZN8nanobind6detailL27nb_func_vectorcall_simple_2EP7_objectPKS2_mS2_:bb.a
  %.not58 = icmp eq i64 %i.t, 0
  %i.u = lshr i32 %i.d, 14
  %.lobit.i = and i32 %i.u, 1
  %i.v = lshr i32 %i.d, 2
  %i.w = and i32 %i.v, 32
  %i.x = select i1 %.not58, i32 0, i32 %i.w
  %i.y = lshr exact i32 %i.f, 6
  %i.z = or disjoint i32 %.lobit.i, %i.y
  %i.aa = or disjoint i32 %i.z, %i.x
  %i.ab = xor i32 %i.aa, 1
  %i.ac = invoke noundef ptr %i.s(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i32 noundef %i.ab, ptr noundef nonnull %4)
          to label %bb.d unwind label %bb.e       ; 5 uses

bb.d:                                             ; preds = %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit
  %magicptr = ptrtoint ptr %i.ac to i64
  switch i64 %magicptr, label %bb.l [
    i64 1, label %bb.p
    i64 0, label %bb.k
  ]

bb.e:                                             ; preds = %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nanobind4abi117builtin_exceptionE
          catch ptr @_ZTIN8nanobind4abi112python_errorE
          catch ptr null                          ; 2 uses
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0      ; 2 uses
  %i.af = extractvalue { ptr, i32 } %i.ad, 1      ; 2 uses
  %i.ag = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE) #25
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ai = call ptr @__cxa_begin_catch(ptr %i.ae) #25
  %i.aj = invoke fastcc noundef zeroext i1 @_ZN8nanobind6detailL28set_builtin_exception_statusERNS_4abi117builtin_exceptionE(ptr noundef nonnull align 8 dereferenceable(20) %i.ai)
          to label %bb.g unwind label %bb.t

bb.g:                                             ; preds = %bb.f
  %spec.select = select i1 %i.aj, ptr null, ptr @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.t

bb.h:                                             ; preds = %bb.e
  %i.ak = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi112python_errorE) #25
  %i.al = icmp eq i32 %i.af, %i.ak
  %i.am = call ptr @__cxa_begin_catch(ptr %i.ae) #25
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  call void @_ZN8nanobind6detail13error_restoreEP7_object(ptr noundef %i.ao) #25
  store ptr null, ptr %i.an, align 8
  br label %.invoke

bb.j:                                             ; preds = %bb.h
  call fastcc void @_ZN8nanobind6detailL29nb_func_convert_cpp_exceptionEP7_object(ptr noundef nonnull %0) #25
  br label %.invoke

.invoke:                                          ; preds = %bb.i, %bb.j
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.t

bb.k:                                             ; preds = %bb.d
  br label %bb.p

bb.l:                                             ; preds = %bb.d
  br i1 %.not57, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %1, align 8               ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 20 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 4             ; 3 uses
  %i.as = and i8 %i.ar, -20
  %i.at = or disjoint i8 %i.as, 18
  store i8 %i.at, ptr %i.aq, align 4
  %i.au = and i8 %i.ar, 64
  %.not50 = icmp eq i8 %i.au, 0
  br i1 %.not50, label %bb.p, label %bb.n, !prof !5

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %1, align 8               ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val = load ptr, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 1024
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.ap to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = sext i32 %i.bb to i64
  %i.bd = add nsw i64 %i.bc, %i.az
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = and i8 %i.ar, 4
  %.not.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i, label %bb.o, label %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %i.be, align 8
  br label %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit

_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit: ; preds = %bb.n, %bb.o
  %i.bh = phi ptr [ %i.bg, %bb.o ], [ %i.be, %bb.n ]
  call void %i.ay(ptr noundef %i.bh, ptr noundef nonnull %i.av) #25
  br label %bb.p

bb.p:                                             ; preds = %.invoke, %bb.g, %bb.m, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit, %bb.d, %bb.l, %bb.k
  %.142 = phi ptr [ null, %.invoke ], [ %spec.select, %bb.g ], [ null, %bb.l ], [ @_ZN8nanobind6detailL23nb_func_error_noconvertEP7_objectPKS2_mS2_, %bb.k ], [ null, %bb.m ], [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %bb.d ], [ null, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ] ; 2 uses
  %.0 = phi ptr [ null, %.invoke ], [ null, %bb.g ], [ %i.ac, %bb.l ], [ null, %bb.k ], [ %i.ac, %bb.m ], [ %i.ac, %bb.d ], [ %i.ac, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ]
  %i.bi = load i32, ptr %4, align 8
  %.not59 = icmp eq i32 %i.bi, 1
  br i1 %.not59, label %bb.r, label %bb.q, !prof !5

bb.q:                                             ; preds = %bb.p
  call void @_ZN8nanobind6detail12cleanup_list7releaseEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.not51 = icmp eq ptr %.142, null
  br i1 %.not51, label %bb.s, label %.thread, !prof !13

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.r
  %.24355 = phi ptr [ %.142, %bb.r ], [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %bb.c ], [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %bb.b ], [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %bb.a ]
  %i.bj = call noundef ptr %.24355(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.b, ptr noundef %3) #25, !callees !12
  br label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r
  %.2 = phi ptr [ %i.bj, %.thread ], [ %.0, %bb.r ]
  ret ptr %.2

bb.t:                                             ; preds = %.invoke, %bb.g, %bb.f
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN8nanobind6detailL25nb_func_vectorcall_simpleEP7_objectPKS2_mS2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::cleanup_list", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.b, align 8
  %.val.fr = freeze i64 %.val                     ; 4 uses
  %i.c = and i64 %2, 4611686018427387903          ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = and i32 %i.e, 64
  %i.g = icmp ne i32 %i.f, 0
  %i.h = and i32 %i.e, 128                        ; 2 uses
  %i.i = icmp ne i32 %i.h, 0
  %i.j = icmp ne i64 %i.c, 0                      ; 2 uses
  %or.cond = and i1 %i.j, %i.g
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  store i32 1, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 5, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.n, ptr %i.r, align 8
  store ptr %i.l, ptr %i.q, align 8
  %i.s = icmp ne ptr %3, null                     ; 3 uses
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %min.iters.check = icmp samesign ult i64 %i.c, 4
  br i1 %min.iters.check, label %.lr.ph.preheader247, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, 4611686018427387900        ; 3 uses
  %i.t = insertelement <2 x i1> <i1 poison, i1 false>, i1 %i.s, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i1> [ %i.t, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi230 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x ptr>, ptr %i.u, align 8
  %wide.load231 = load <2 x ptr>, ptr %i.v, align 8
  %i.w = icmp eq <2 x ptr> %wide.load, <ptr @_Py_NoneStruct, ptr @_Py_NoneStruct>
  %i.x = icmp eq <2 x ptr> %wide.load231, <ptr @_Py_NoneStruct, ptr @_Py_NoneStruct>
  %i.y = or <2 x i1> %vec.phi, %i.w               ; 2 uses
  %i.z = or <2 x i1> %vec.phi230, %i.x            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.z, %i.y
  %i.ab = bitcast <2 x i1> %bin.rdx to i2
  %i.ac = icmp ne i2 %i.ab, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader247

.lr.ph.preheader247:                              ; preds = %.lr.ph.preheader, %middle.block
  %.070133.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.071.in132.ph = phi i1 [ %i.s, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.c
  %.071.in.lcssa = phi i1 [ %i.s, %bb.c ], [ %i.ac, %middle.block ], [ %i.ag, %.lr.ph ]
  br i1 %.071.in.lcssa, label %.thread112, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader247, %.lr.ph
  %.070133 = phi i64 [ %i.ah, %.lr.ph ], [ %.070133.ph, %.lr.ph.preheader247 ] ; 2 uses
  %.071.in132 = phi i1 [ %i.ag, %.lr.ph ], [ %.071.in132.ph, %.lr.ph.preheader247 ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.070133
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, @_Py_NoneStruct
  %i.ag = or i1 %.071.in132, %i.af                ; 2 uses
  %i.ah = add nuw nsw i64 %.070133, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !50

bb.d:                                             ; preds = %._crit_edge
  %.not173 = icmp eq i64 %.val.fr, 0
  %i.ai = and i64 %2, 4611686018427387904
  %.not118 = icmp eq i64 %i.ai, 0                 ; 2 uses
  %i.aj = lshr exact i32 %i.h, 6                  ; 3 uses
  br i1 %.not173, label %.thread112, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.d
  %i.ak = icmp ne i64 %.val.fr, 1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge137.us
  %.069146.us = phi i1 [ false, %._crit_edge137.us ], [ %i.ak, %.preheader.us.preheader ] ; 2 uses
  %.075145.us = phi ptr [ %.us-phi144.us, %._crit_edge137.us ], [ null, %.preheader.us.preheader ] ; 2 uses
  br i1 %.069146.us, label %.lr.ph136.split.us.us, label %.lr.ph136.split.us148

.lr.ph136.split.us148:                            ; preds = %.preheader.us, %bb.j
  %.067135.us149 = phi i64 [ %i.bi, %bb.j ], [ 0, %.preheader.us ] ; 2 uses
  %.176134.us150 = phi ptr [ %.479.us157, %bb.j ], [ %.075145.us, %.preheader.us ]
  %i.al = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %.067135.us149 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 60
  %i.an = load i16, ptr %i.am, align 4
  %i.ao = zext i16 %i.an to i64
  %.not.us151 = icmp eq i64 %i.c, %i.ao
  br i1 %.not.us151, label %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us152, label %bb.j

_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us152: ; preds = %.lr.ph136.split.us148
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.at = lshr i32 %i.as, 14
  %.lobit.i.us = and i32 %i.at, 1
  %i.au = lshr i32 %i.as, 2
  %i.av = and i32 %i.au, 32
  %i.aw = select i1 %.not118, i32 0, i32 %i.av
  %i.ax = or disjoint i32 %.lobit.i.us, %i.aw
  %i.ay = or disjoint i32 %i.ax, %i.aj
  %i.az = xor i32 %i.ay, 1
  %i.ba = invoke noundef ptr %i.aq(ptr noundef nonnull %i.al, ptr noundef %1, i32 noundef %i.az, ptr noundef nonnull %4)
          to label %bb.h unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us152
  %i.bb = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nanobind4abi117builtin_exceptionE
          catch ptr @_ZTIN8nanobind4abi112python_errorE
          catch ptr null                          ; 2 uses
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0      ; 2 uses
  %i.bd = extractvalue { ptr, i32 } %i.bb, 1      ; 2 uses
  %i.be = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE) #25
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.f, label %.split.us

bb.f:                                             ; preds = %bb.e
  %i.bg = call ptr @__cxa_begin_catch(ptr %i.bc) #25
  %i.bh = invoke fastcc noundef zeroext i1 @_ZN8nanobind6detailL28set_builtin_exception_statusERNS_4abi117builtin_exceptionE(ptr noundef nonnull align 8 dereferenceable(20) %i.bg)
          to label %bb.g unwind label %.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %spec.select.us153 = select i1 %i.bh, ptr null, ptr inttoptr (i64 1 to ptr)
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us152
  %.not84.us154 = icmp eq ptr %i.ba, null
  br i1 %.not84.us154, label %.thread112, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h, %bb.g
  %.378.us155 = phi ptr [ %spec.select.us153, %bb.g ], [ %i.ba, %bb.h ] ; 2 uses
  %.not85.us156 = icmp eq ptr %.378.us155, inttoptr (i64 1 to ptr)
  br i1 %.not85.us156, label %bb.j, label %.split142.us

bb.j:                                             ; preds = %bb.i, %.lr.ph136.split.us148
  %.479.us157 = phi ptr [ inttoptr (i64 1 to ptr), %bb.i ], [ %.176134.us150, %.lr.ph136.split.us148 ] ; 2 uses
  %i.bi = add nuw i64 %.067135.us149, 1           ; 2 uses
  %exitcond192.not = icmp eq i64 %i.bi, %.val.fr
  br i1 %exitcond192.not, label %._crit_edge137.us, label %.lr.ph136.split.us148, !llvm.loop !51

.lr.ph136.split.us.us:                            ; preds = %.preheader.us, %bb.r
  %.067135.us.us = phi i64 [ %i.cd, %bb.r ], [ 0, %.preheader.us ] ; 2 uses
  %.176134.us.us = phi ptr [ %.479.us.us, %bb.r ], [ %.075145.us, %.preheader.us ]
  %i.bj = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %.067135.us.us ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 60
  %i.bl = load i16, ptr %i.bk, align 4
  %i.bm = zext i16 %i.bl to i64
  %.not.us.us = icmp eq i64 %i.c, %i.bm
  br i1 %.not.us.us, label %bb.k, label %bb.r

bb.k:                                             ; preds = %.lr.ph136.split.us.us
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8
  br i1 %.not118, label %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = lshr i32 %i.bq, 2
  %i.bs = and i32 %i.br, 32
  %i.bt = or disjoint i32 %i.aj, %i.bs
  br label %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us.us

_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us.us: ; preds = %bb.l, %bb.k
  %i.bu = phi i32 [ %i.aj, %bb.k ], [ %i.bt, %bb.l ]
  %i.bv = invoke noundef ptr %i.bo(ptr noundef nonnull %i.bj, ptr noundef %1, i32 noundef %i.bu, ptr noundef nonnull %4)
          to label %bb.p unwind label %bb.m       ; 2 uses

bb.m:                                             ; preds = %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us.us
  %i.bw = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nanobind4abi117builtin_exceptionE
          catch ptr @_ZTIN8nanobind4abi112python_errorE
          catch ptr null                          ; 2 uses
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0      ; 2 uses
  %i.by = extractvalue { ptr, i32 } %i.bw, 1      ; 2 uses
  %i.bz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE) #25
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.n, label %.split.us

bb.n:                                             ; preds = %bb.m
  %i.cb = call ptr @__cxa_begin_catch(ptr %i.bx) #25
  %i.cc = invoke fastcc noundef zeroext i1 @_ZN8nanobind6detailL28set_builtin_exception_statusERNS_4abi117builtin_exceptionE(ptr noundef nonnull align 8 dereferenceable(20) %i.cb)
          to label %bb.o unwind label %.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %spec.select.us.us = select i1 %i.cc, ptr null, ptr inttoptr (i64 1 to ptr)
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us.us
  %.not84.us.us = icmp eq ptr %i.bv, null
  br i1 %.not84.us.us, label %.thread112, label %bb.q, !prof !6

bb.q:                                             ; preds = %bb.p, %bb.o
  %.378.us.us = phi ptr [ %spec.select.us.us, %bb.o ], [ %i.bv, %bb.p ] ; 2 uses
  %.not85.us.us = icmp eq ptr %.378.us.us, inttoptr (i64 1 to ptr)
  br i1 %.not85.us.us, label %bb.r, label %.split142.us

bb.r:                                             ; preds = %bb.q, %.lr.ph136.split.us.us
  %.479.us.us = phi ptr [ inttoptr (i64 1 to ptr), %bb.q ], [ %.176134.us.us, %.lr.ph136.split.us.us ] ; 2 uses
  %i.cd = add nuw i64 %.067135.us.us, 1           ; 2 uses
  %exitcond193.not = icmp eq i64 %i.cd, %.val.fr
  br i1 %exitcond193.not, label %._crit_edge137.us, label %.lr.ph136.split.us.us, !llvm.loop !51

._crit_edge137.us:                                ; preds = %bb.j, %bb.r
  %.us-phi144.us = phi ptr [ %.479.us.us, %bb.r ], [ %.479.us157, %bb.j ] ; 2 uses
  br i1 %.069146.us, label %.preheader.us, label %.thread112, !llvm.loop !52

.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.o, %bb.g, %bb.f, %.invoke
  %lpad.loopexit.split-lp234 = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %lpad.loopexit.split-lp234, 0
  call void @__clang_call_terminate(ptr %i.ce) #26
  unreachable

.split.us:                                        ; preds = %bb.e, %bb.m
  %.us-phi = phi ptr [ %i.bx, %bb.m ], [ %i.bc, %bb.e ]
  %.us-phi139 = phi i32 [ %i.by, %bb.m ], [ %i.bd, %bb.e ]
  %i.cf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi112python_errorE) #25
  %i.cg = icmp eq i32 %.us-phi139, %i.cf
  %i.ch = call ptr @__cxa_begin_catch(ptr %.us-phi) #25
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.split.us
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  call void @_ZN8nanobind6detail13error_restoreEP7_object(ptr noundef %i.cj) #25
  store ptr null, ptr %i.ci, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.t, %bb.s
  invoke void @__cxa_end_catch()
          to label %.thread112 unwind label %.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %.split.us
  call fastcc void @_ZN8nanobind6detailL29nb_func_convert_cpp_exceptionEP7_object(ptr noundef nonnull %0) #25
  br label %.invoke

.split142.us:                                     ; preds = %bb.i, %bb.q
  %.us-phi143 = phi ptr [ %.378.us.us, %bb.q ], [ %.378.us155, %bb.i ] ; 4 uses
  %i.ck = icmp ne ptr %.us-phi143, null
  %or.cond3 = and i1 %i.i, %i.ck
  br i1 %or.cond3, label %bb.u, label %.thread112

bb.u:                                             ; preds = %.split142.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 4             ; 3 uses
  %i.cn = and i8 %i.cm, -20
  %i.co = or disjoint i8 %i.cn, 18
  store i8 %i.co, ptr %i.cl, align 4
  %i.cp = and i8 %i.cm, 64
  %.not86 = icmp eq i8 %i.cp, 0
  br i1 %.not86, label %.thread112, label %bb.v, !prof !5

bb.v:                                             ; preds = %bb.u
  %i.cq = getelementptr i8, ptr %i.l, i64 8
  %.val89 = load ptr, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.val89, i64 1024
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = ptrtoint ptr %i.l to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = sext i32 %i.cv to i64
  %i.cx = add nsw i64 %i.cw, %i.ct
  %i.cy = inttoptr i64 %i.cx to ptr               ; 2 uses
  %i.cz = and i8 %i.cm, 4
  %.not.i = icmp eq i8 %i.cz, 0
  br i1 %.not.i, label %bb.w, label %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit

bb.w:                                             ; preds = %bb.v
  %i.da = load ptr, ptr %i.cy, align 8
  br label %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit

_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit: ; preds = %bb.v, %bb.w
  %i.db = phi ptr [ %i.da, %bb.w ], [ %i.cy, %bb.v ]
  call void %i.cs(ptr noundef %i.db, ptr noundef nonnull %i.l) #25
  br label %.thread112

.thread112:                                       ; preds = %._crit_edge137.us, %bb.h, %bb.p, %.invoke, %bb.d, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit, %bb.u, %.split142.us, %._crit_edge
  %.7 = phi ptr [ null, %._crit_edge ], [ null, %bb.p ], [ %.us-phi143, %.split142.us ], [ %.us-phi143, %bb.u ], [ %.us-phi143, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ], [ null, %bb.h ], [ null, %.invoke ], [ null, %bb.d ], [ %.us-phi144.us, %._crit_edge137.us ]
  %.not87 = phi i1 [ false, %._crit_edge ], [ false, %bb.p ], [ true, %.split142.us ], [ true, %bb.u ], [ true, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ], [ false, %bb.h ], [ true, %.invoke ], [ false, %bb.d ], [ false, %._crit_edge137.us ]
  %.6 = phi ptr [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %._crit_edge ], [ @_ZN8nanobind6detailL23nb_func_error_noconvertEP7_objectPKS2_mS2_, %bb.p ], [ null, %.split142.us ], [ null, %bb.u ], [ null, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ], [ @_ZN8nanobind6detailL23nb_func_error_noconvertEP7_objectPKS2_mS2_, %bb.h ], [ null, %.invoke ], [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %bb.d ], [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %._crit_edge137.us ]
  %i.dc = load i32, ptr %4, align 8
  %.not119 = icmp eq i32 %i.dc, 1
  br i1 %.not119, label %bb.y, label %bb.x, !prof !5

bb.x:                                             ; preds = %.thread112
  call void @_ZN8nanobind6detail12cleanup_list7releaseEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread112
  br i1 %.not87, label %bb.aa, label %bb.z, !prof !5

bb.z:                                             ; preds = %bb.y
  %i.dd = call noundef ptr %.6(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.c, ptr noundef %3) #25, !callees !12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.0 = phi ptr [ %.7, %bb.y ], [ %i.dd, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %.0
}

; Function Attrs: nounwind
declare void @_ZN8nanobind6detail22implicitly_convertibleEPNS0_12nb_internalsEPKSt9type_infoPvb(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #12

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN8nanobind6detail13nb_type_checkEPNS0_12nb_internalsEP7_object(ptr noundef, ptr noundef) local_unnamed_addr #12

declare i32 @PyObject_SetAttr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN8nanobind6detail19nb_method_descr_getEP7_objectS2_S2_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 32
  %i.e = tail call ptr @_PyObject_GC_New(ptr noundef %i.d) ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @_ZN8nanobind6detailL26nb_bound_method_vectorcallEP7_objectPKS2_mS2_, ptr %i.h, align 8
  %i.i = load i32, ptr %0, align 8
  %i.j = add i32 %i.i, 1                          ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZL9Py_INCREFP7_object.exit16, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.j, ptr %0, align 8
  br label %_ZL9Py_INCREFP7_object.exit16

_ZL9Py_INCREFP7_object.exit16:                    ; preds = %bb.b, %bb.c
  %i.l = load i32, ptr %1, align 8
  %i.m = add i32 %i.l, 1                          ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZL9Py_INCREFP7_object.exit15, label %bb.d

bb.d:                                             ; preds = %_ZL9Py_INCREFP7_object.exit16
  store i32 %i.m, ptr %1, align 8
  br label %_ZL9Py_INCREFP7_object.exit15

_ZL9Py_INCREFP7_object.exit15:                    ; preds = %_ZL9Py_INCREFP7_object.exit16, %bb.d
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.e)
  br label %_ZL9Py_INCREFP7_object.exit

bb.e:                                             ; preds = %bb.a
  %i.o = load i32, ptr %0, align 8
  %i.p = add i32 %i.o, 1                          ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZL9Py_INCREFP7_object.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.p, ptr %0, align 8
  br label %_ZL9Py_INCREFP7_object.exit

_ZL9Py_INCREFP7_object.exit:                      ; preds = %bb.f, %bb.e, %_ZL9Py_INCREFP7_object.exit15
  %.0 = phi ptr [ %i.e, %_ZL9Py_INCREFP7_object.exit15 ], [ %0, %bb.e ], [ %0, %bb.f ]
  ret ptr %.0
}

declare ptr @_PyObject_GC_New(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN8nanobind6detailL26nb_bound_method_vectorcallEP7_objectPKS2_mS2_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [5 x ptr], align 16               ; 4 uses
  %i.b = and i64 %2, 4611686018427387903          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %.not = icmp sgt i64 %2, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %1, i64 -8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.pre = add nuw nsw i64 %i.b, 1
  br label %.thread44

bb.c:                                             ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.b, 1                  ; 4 uses
  %.not40 = icmp eq ptr %3, null
  br i1 %.not40, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.f, align 8
  %i.g = add i64 %.val, %i.e
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i64 [ %i.g, %bb.d ], [ %i.e, %bb.c ] ; 4 uses
  %i.h = icmp ugt i64 %.029, 4                    ; 2 uses
  br i1 %i.h, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.i = shl i64 %.029, 3                         ; 2 uses
  %i.j = invoke ptr @PyMem_Malloc(i64 noundef %i.i)
          to label %bb.g unwind label %bb.m       ; 2 uses

end_hunk_1
begin_hunk_2_@_ZN8nanobind6detailL26nb_bound_method_vectorcallEP7_objectPKS2_mS2_:bb.a
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef ptr %i.t(ptr noundef nonnull %i.r, ptr noundef nonnull %.234, i64 noundef %.pre-phi, ptr noundef %3)
          to label %bb.j unwind label %bb.m       ; 2 uses

bb.j:                                             ; preds = %.thread44
  store ptr %.031, ptr %.234, align 8
  br i1 %.2, label %bb.k, label %bb.l, !prof !6

bb.k:                                             ; preds = %bb.j
  invoke void @PyMem_Free(ptr noundef nonnull %.234)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.j, %bb.k
  %.136 = phi ptr [ %i.u, %bb.j ], [ %i.u, %bb.k ], [ %i.k, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %.136

bb.m:                                             ; preds = %bb.k, %.thread44, %bb.h, %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #26
  unreachable
}

declare void @PyObject_GC_Track(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN8nanobind6detail24nb_func_get_nb_signatureEP7_objectPv(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.nanobind::detail::Buffer", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.b, align 8             ; 3 uses
  %i.c = and i64 %.val, 4294967295
  %i.d = tail call ptr @PyTuple_New(i64 noundef %i.c) ; 7 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.e = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #27 ; 5 uses
  store ptr %i.e, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.not.i109 = icmp eq ptr %i.e, null
  br i1 %.not.i109, label %bb.c, label %_ZN8nanobind6detail6BufferC2Em.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @stderr, align 8
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.32, i64 54, i64 1, ptr %i.g) #29 ; 0 uses
  tail call void @abort() #26
  unreachable

_ZN8nanobind6detail6BufferC2Em.exit:              ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr %i.i, ptr %i.h, align 8
  store ptr %i.e, ptr %i.f, align 8
  store i8 0, ptr %i.e, align 1
  %i.j = and i64 %.val, 4294967295
  %.not178 = icmp eq i64 %i.j, 0
  br i1 %.not178, label %_ZL9Py_DECREFP7_object.exit, label %.lr.ph177

.lr.ph177:                                        ; preds = %_ZN8nanobind6detail6BufferC2Em.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %wide.trip.count = and i64 %.val, 4294967295
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph177, %.thread133
  %indvars.iv204 = phi i64 [ 0, %.lr.ph177 ], [ %indvars.iv.next205, %.thread133 ] ; 3 uses
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %indvars.iv204 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, 4
  %.not98 = icmp eq i32 %i.p, 0
  br i1 %.not98, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke ptr @PyUnicode_FromString(ptr noundef %i.r)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.d, %bb.e
  %.186 = phi ptr [ %i.s, %bb.e ], [ @_Py_NoneStruct, %bb.d ] ; 5 uses
  %i.t = load ptr, ptr %2, align 8                ; 3 uses
  store ptr %i.t, ptr %i.f, align 8
  %i.u = load ptr, ptr %i.h, align 8
  %.not.i110 = icmp eq ptr %i.t, %i.u
  br i1 %.not.i110, label %_ZN8nanobind6detail6Buffer5clearEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.t, align 1
  br label %_ZN8nanobind6detail6Buffer5clearEv.exit

_ZN8nanobind6detail6Buffer5clearEv.exit:          ; preds = %bb.f, %bb.g
  %i.v = load ptr, ptr %i.k, align 8
  %i.w = call fastcc noundef i32 @_ZN8nanobind6detailL24nb_func_render_signatureERNS0_6BufferEPNS0_12nb_internalsEPKNS0_9func_dataEb(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.v, ptr noundef nonnull %i.m, i1 noundef zeroext true) #25 ; 3 uses
  %i.x = invoke ptr @PyTuple_New(i64 noundef 3)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

bb.h:                                             ; preds = %_ZN8nanobind6detail6Buffer5clearEv.exit
  %i.y = load ptr, ptr %2, align 8
  %i.z = invoke ptr @PyUnicode_FromString(ptr noundef %i.y)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.i:                                             ; preds = %bb.h
  %.not99 = icmp eq i32 %i.w, 0                   ; 2 uses
  br i1 %.not99, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = zext i32 %i.w to i64
  %i.ab = invoke ptr @PyTuple_New(i64 noundef %i.aa)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.i, %bb.j
  %.179 = phi ptr [ %i.ab, %bb.j ], [ @_Py_NoneStruct, %bb.i ] ; 6 uses
  %i.ac = icmp ne ptr %.186, null                 ; 2 uses
  %i.ad = icmp ne ptr %i.z, null                  ; 2 uses
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  %i.ae = icmp ne ptr %i.x, null                  ; 2 uses
  %or.cond5 = select i1 %or.cond, i1 %i.ae, i1 false
  %i.af = icmp ne ptr %.179, null                 ; 2 uses
  %or.cond7 = select i1 %or.cond5, i1 %i.af, i1 false
  br i1 %or.cond7, label %bb.l, label %.loopexit152

bb.l:                                             ; preds = %bb.k
  br i1 %.not99, label %.thread133, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 60 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 4            ; 2 uses
  %.not179 = icmp eq i16 %i.ah, 0
  br i1 %.not179, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %.179, i64 24
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.s
  %i.ak = phi i16 [ %i.ah, %.lr.ph ], [ %i.ay, %bb.s ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %.067174 = phi i64 [ 0, %.lr.ph ], [ %.1.ph, %bb.s ] ; 3 uses
  %i.al = load ptr, ptr %i.ai, align 8
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8            ; 5 uses
  %.not100 = icmp eq ptr %i.ao, null
  br i1 %.not100, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not101 = icmp eq ptr %i.aq, null
  br i1 %.not101, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = invoke ptr @PyUnicode_FromString(ptr noundef nonnull %i.aq)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.p:                                             ; preds = %bb.o
  %.not104 = icmp eq ptr %i.ar, null
  br i1 %.not104, label %.loopexit152, label %_ZL9Py_INCREFP7_object.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %bb.e, %_ZN8nanobind6detail6Buffer5clearEv.exit, %bb.h, %bb.j, %bb.af, %bb.ac, %bb.z, %bb.w, %bb.ah
  %lpad.loopexit.split-lp307 = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %2, align 8
  call void @free(ptr noundef %i.as) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %lpad.loopexit.split-lp307

bb.q:                                             ; preds = %bb.n
  %i.at = load i32, ptr %i.ao, align 8
  %i.au = add i32 %i.at, 1                        ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZL9Py_INCREFP7_object.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.au, ptr %i.ao, align 8
  br label %_ZL9Py_INCREFP7_object.exit

_ZL9Py_INCREFP7_object.exit:                      ; preds = %bb.r, %bb.q, %bb.p
  %.0 = phi ptr [ %i.ar, %bb.p ], [ %i.ao, %bb.q ], [ %i.ao, %bb.r ]
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.067174
  store ptr %.0, ptr %i.aw, align 8
  %i.ax = add i64 %.067174, 1
  %.pre = load i16, ptr %i.ag, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZL9Py_INCREFP7_object.exit, %bb.m
  %i.ay = phi i16 [ %i.ak, %bb.m ], [ %.pre, %_ZL9Py_INCREFP7_object.exit ] ; 2 uses
  %.1.ph = phi i64 [ %.067174, %bb.m ], [ %i.ax, %_ZL9Py_INCREFP7_object.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = zext i16 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %bb.m, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.s, %.preheader
  %.067.lcssa = phi i64 [ 0, %.preheader ], [ %.1.ph, %bb.s ]
  %i.bb = zext i32 %i.w to i64
  %.not105 = icmp eq i64 %.067.lcssa, %i.bb
  br i1 %.not105, label %.thread133, label %bb.t, !prof !5

bb.t:                                             ; preds = %._crit_edge
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #26
  unreachable

.thread133:                                       ; preds = %._crit_edge, %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.z, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %.186, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %.179, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv204
  store ptr %i.x, ptr %i.bf, align 8
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next205, %wide.trip.count
  br i1 %exitcond.not, label %_ZL9Py_DECREFP7_object.exit, label %bb.d, !llvm.loop !54

.loopexit152:                                     ; preds = %bb.k, %bb.p
  br i1 %i.ac, label %bb.u, label %_ZL10Py_XDECREFP7_object.exit

bb.u:                                             ; preds = %.loopexit152
  %i.bg = load i64, ptr %.186, align 8            ; 2 uses
  %i.bh = and i64 %i.bg, 2147483648
  %.not2.i = icmp eq i64 %i.bh, 0
  br i1 %.not2.i, label %bb.v, label %_ZL10Py_XDECREFP7_object.exit

bb.v:                                             ; preds = %bb.u
  %i.bi = add nsw i64 %i.bg, -1                   ; 2 uses
  store i64 %i.bi, ptr %.186, align 8
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.w, label %_ZL10Py_XDECREFP7_object.exit

bb.w:                                             ; preds = %bb.v
  invoke void @_Py_Dealloc(ptr noundef nonnull %.186)
          to label %_ZL10Py_XDECREFP7_object.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL10Py_XDECREFP7_object.exit:                    ; preds = %bb.v, %bb.u, %.loopexit152, %bb.w
  br i1 %i.ad, label %bb.x, label %_ZL10Py_XDECREFP7_object.exit116

bb.x:                                             ; preds = %_ZL10Py_XDECREFP7_object.exit
  %i.bk = load i64, ptr %i.z, align 8             ; 2 uses
  %i.bl = and i64 %i.bk, 2147483648
  %.not2.i114 = icmp eq i64 %i.bl, 0
  br i1 %.not2.i114, label %bb.y, label %_ZL10Py_XDECREFP7_object.exit116

bb.y:                                             ; preds = %bb.x
  %i.bm = add nsw i64 %i.bk, -1                   ; 2 uses
  store i64 %i.bm, ptr %i.z, align 8
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.z, label %_ZL10Py_XDECREFP7_object.exit116

bb.z:                                             ; preds = %bb.y
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.z)
          to label %_ZL10Py_XDECREFP7_object.exit116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL10Py_XDECREFP7_object.exit116:                 ; preds = %bb.y, %bb.x, %_ZL10Py_XDECREFP7_object.exit, %bb.z
  br i1 %i.af, label %bb.aa, label %_ZL10Py_XDECREFP7_object.exit120

bb.aa:                                            ; preds = %_ZL10Py_XDECREFP7_object.exit116
  %i.bo = load i64, ptr %.179, align 8            ; 2 uses
  %i.bp = and i64 %i.bo, 2147483648
  %.not2.i118 = icmp eq i64 %i.bp, 0
  br i1 %.not2.i118, label %bb.ab, label %_ZL10Py_XDECREFP7_object.exit120

bb.ab:                                            ; preds = %bb.aa
  %i.bq = add nsw i64 %i.bo, -1                   ; 2 uses
  store i64 %i.bq, ptr %.179, align 8
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.ac, label %_ZL10Py_XDECREFP7_object.exit120

bb.ac:                                            ; preds = %bb.ab
  invoke void @_Py_Dealloc(ptr noundef nonnull %.179)
          to label %_ZL10Py_XDECREFP7_object.exit120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL10Py_XDECREFP7_object.exit120:                 ; preds = %bb.ab, %bb.aa, %_ZL10Py_XDECREFP7_object.exit116, %bb.ac
  br i1 %i.ae, label %bb.ad, label %_ZL10Py_XDECREFP7_object.exit124

bb.ad:                                            ; preds = %_ZL10Py_XDECREFP7_object.exit120
  %i.bs = load i64, ptr %i.x, align 8             ; 2 uses
  %i.bt = and i64 %i.bs, 2147483648
  %.not2.i122 = icmp eq i64 %i.bt, 0
  br i1 %.not2.i122, label %bb.ae, label %_ZL10Py_XDECREFP7_object.exit124

bb.ae:                                            ; preds = %bb.ad
  %i.bu = add nsw i64 %i.bs, -1                   ; 2 uses
  store i64 %i.bu, ptr %i.x, align 8
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.af, label %_ZL10Py_XDECREFP7_object.exit124

bb.af:                                            ; preds = %bb.ae
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.x)
          to label %_ZL10Py_XDECREFP7_object.exit124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL10Py_XDECREFP7_object.exit124:                 ; preds = %bb.ae, %bb.ad, %_ZL10Py_XDECREFP7_object.exit120, %bb.af
  %i.bw = load i64, ptr %i.d, align 8             ; 2 uses
  %i.bx = and i64 %i.bw, 2147483648
  %.not151 = icmp eq i64 %i.bx, 0
  br i1 %.not151, label %bb.ag, label %_ZL9Py_DECREFP7_object.exit

bb.ag:                                            ; preds = %_ZL10Py_XDECREFP7_object.exit124
  %i.by = add nsw i64 %i.bw, -1                   ; 2 uses
  store i64 %i.by, ptr %i.d, align 8
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.ah, label %_ZL9Py_DECREFP7_object.exit

bb.ah:                                            ; preds = %bb.ag
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.d)
          to label %_ZL9Py_DECREFP7_object.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL9Py_DECREFP7_object.exit:                      ; preds = %.thread133, %_ZN8nanobind6detail6BufferC2Em.exit, %bb.ag, %_ZL10Py_XDECREFP7_object.exit124, %bb.ah
  %.088 = phi ptr [ null, %bb.ag ], [ null, %bb.ah ], [ null, %_ZL10Py_XDECREFP7_object.exit124 ], [ %i.d, %_ZN8nanobind6detail6BufferC2Em.exit ], [ %i.d, %.thread133 ]
  %i.ca = load ptr, ptr %2, align 8
  call void @free(ptr noundef %i.ca) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %_ZL9Py_DECREFP7_object.exit
  %.189 = phi ptr [ %.088, %_ZL9Py_DECREFP7_object.exit ], [ null, %bb.a ]
  ret ptr %.189
}

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #2

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN8nanobind6detailL24nb_func_render_signatureERNS0_6BufferEPNS0_12nb_internalsEPKNS0_9func_dataEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [10 x i8], align 1                ; 4 uses
  %i.d = alloca [10 x i8], align 1                ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.g = load i32, ptr %i.f, align 8              ; 6 uses
  %i.h = and i32 %i.g, 64                         ; 2 uses
  %i.i = icmp ne i32 %i.h, 0                      ; 2 uses
  %i.j = and i32 %i.g, 8
  %i.k = icmp ne i32 %i.j, 0                      ; 3 uses
  %i.l = and i32 %i.g, 16
  %.not = icmp eq i32 %i.l, 0
  %i.m = and i32 %i.g, 32
  %.not227 = icmp eq i32 %i.m, 0
  %i.n = and i32 %i.g, 4096
  %.not228 = icmp eq i32 %i.n, 0
  br i1 %.not228, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  br i1 %3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.p, i32 noundef 10) #28 ; 2 uses
  %.not254 = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = select i1 %.not254, ptr %i.p, ptr %i.r   ; 2 uses
  %i.t = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(5) @.str.3, i64 noundef 4) #28
  %i.u = icmp eq i32 %i.t, 0
  %spec.select.idx = select i1 %i.u, i64 4, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.s, i64 %spec.select.idx
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1208 = phi ptr [ %i.p, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %i.v = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1208) #28 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i.i = icmp ult ptr %i.y, %i.aa
  br i1 %.not.i.i, label %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.x to i64
  %.neg.i.i = add i64 %i.v, 1
  %i.ad = add i64 %.neg.i.i, %i.ac
  %i.ae = sub i64 %i.ad, %i.ab
  tail call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ae)
  %.pre.i.i = load ptr, ptr %i.w, align 8
  br label %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit

_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit:     ; preds = %bb.d, %bb.e
  %i.af = phi ptr [ %.pre.i.i, %bb.e ], [ %i.x, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %.1208, i64 %i.v, i1 false)
  %i.ag = load ptr, ptr %i.w, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.v ; 2 uses
  store ptr %i.ah, ptr %i.w, align 8
  store i8 0, ptr %i.ah, align 1
  br label %bb.eq

bb.f:                                             ; preds = %bb.a
  br i1 %3, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i.i262 = icmp ult ptr %i.ak, %i.am
  br i1 %.not.i.i262, label %_ZN8nanobind6detail6Buffer3putILm5EEEvRAT__Kc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = add i64 %i.ao, 5
  %i.aq = sub i64 %i.ap, %i.an
  tail call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aq)
  %.pre.i.i263 = load ptr, ptr %i.ai, align 8
  br label %_ZN8nanobind6detail6Buffer3putILm5EEEvRAT__Kc.exit

_ZN8nanobind6detail6Buffer3putILm5EEEvRAT__Kc.exit: ; preds = %bb.g, %bb.h
  %i.ar = phi ptr [ %.pre.i.i263, %bb.h ], [ %i.aj, %bb.g ]
  store i32 543581540, ptr %i.ar, align 1
  %i.as = load ptr, ptr %i.ai, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  store ptr %i.at, ptr %i.ai, align 8
  store i8 0, ptr %i.at, align 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN8nanobind6detail6Buffer3putILm5EEEvRAT__Kc.exit, %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ax) #28 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 120 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 30 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i264 = icmp ult ptr %i.bb, %i.bd
  br i1 %.not.i.i264, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.ba to i64
  %.neg.i.i265 = add i64 %i.ay, 1
  %i.bg = add i64 %.neg.i.i265, %i.bf
  %i.bh = sub i64 %i.bg, %i.be
  tail call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bh)
  %.pre.i.i266 = load ptr, ptr %i.az, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bi = phi ptr [ %.pre.i.i266, %bb.j ], [ %i.ba, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr nonnull align 1 %i.ax, i64 %i.ay, i1 false)
  %i.bj = load ptr, ptr %i.az, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ay ; 2 uses
  store ptr %i.bk, ptr %i.az, align 8
  store i8 0, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 62 ; 2 uses
  %.lobit = lshr exact i32 %i.h, 6                ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.bs = add nuw nsw i32 %.lobit, 1
  %i.bt = lshr i32 %i.g, 6
  %.lobit498 = and i32 %i.bt, 1
  %i.bu = zext nneg i32 %.lobit498 to i64         ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %.critedge2, %bb.k
  %.0196 = phi ptr [ %i.av, %bb.k ], [ %.9205, %.critedge2 ] ; 17 uses
  %.0192 = phi i1 [ false, %bb.k ], [ %.3195, %.critedge2 ] ; 11 uses
  %.0188 = phi i32 [ 0, %bb.k ], [ %.3191, %.critedge2 ] ; 19 uses
  %.0183 = phi i32 [ 0, %bb.k ], [ %.4187, %.critedge2 ] ; 19 uses
  %.0181 = phi ptr [ %i.bm, %bb.k ], [ %i.sl, %.critedge2 ] ; 13 uses
  %i.bv = load i8, ptr %.0181, align 1            ; 2 uses
  switch i8 %i.bv, label %bb.en [
    i8 0, label %bb.m
    i8 64, label %bb.n
    i8 123, label %bb.w
    i8 125, label %bb.bi
    i8 37, label %bb.cs
    i8 45, label %bb.el
  ]

bb.m:                                             ; preds = %bb.l
  %i.bw = load i16, ptr %i.br, align 4
  %i.bx = zext i16 %i.bw to i32
  %i.by = icmp eq i32 %.0188, %i.bx
  br i1 %i.by, label %bb.ep, label %.critedge261, !prof !5

bb.n:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.0181, i64 1 ; 2 uses
  br i1 %.0192, label %.preheader, label %.preheader409

.preheader409:                                    ; preds = %bb.n, %_ZN8nanobind6detail6Buffer3putEc.exit
  %.1182 = phi ptr [ %i.cb, %_ZN8nanobind6detail6Buffer3putEc.exit ], [ %i.bz, %bb.n ] ; 3 uses
  %i.ca = load i8, ptr %.1182, align 1            ; 3 uses
  switch i8 %i.ca, label %bb.o [
    i8 0, label %.critedge
    i8 64, label %.critedge
  ]

bb.o:                                             ; preds = %.preheader409
  %i.cb = getelementptr inbounds nuw i8, ptr %.1182, i64 1
  %i.cc = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.ce = load ptr, ptr %i.bc, align 8
  %.not.i268 = icmp ult ptr %i.cd, %i.ce
  br i1 %.not.i268, label %_ZN8nanobind6detail6Buffer3putEc.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  %.pre.i = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer3putEc.exit

_ZN8nanobind6detail6Buffer3putEc.exit:            ; preds = %bb.o, %bb.p
  %i.cf = phi ptr [ %.pre.i, %bb.p ], [ %i.cc, %bb.o ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  store ptr %i.cg, ptr %i.az, align 8
  store i8 %i.ca, ptr %i.cf, align 1
  %i.ch = load ptr, ptr %i.az, align 8
  store i8 0, ptr %i.ch, align 1
  br label %.preheader409, !llvm.loop !55

.critedge:                                        ; preds = %.preheader409, %.preheader409
  %i.ci = icmp eq i8 %i.ca, 64
  %spec.select255.idx = zext i1 %i.ci to i64
  %spec.select255 = getelementptr inbounds nuw i8, ptr %.1182, i64 %spec.select255.idx
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.critedge
  %.3 = phi ptr [ %spec.select255, %.critedge ], [ %i.ck, %bb.r ] ; 4 uses
  %i.cj = load i8, ptr %.3, align 1
  switch i8 %i.cj, label %bb.r [
    i8 0, label %.critedge2
    i8 64, label %.critedge2
  ]

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %.3, i64 1
  br label %bb.q, !llvm.loop !56

.preheader:                                       ; preds = %bb.n, %bb.s
  %.4 = phi ptr [ %i.cm, %bb.s ], [ %i.bz, %bb.n ] ; 3 uses
  %i.cl = load i8, ptr %.4, align 1               ; 2 uses
  switch i8 %i.cl, label %bb.s [
    i8 0, label %.critedge4
    i8 64, label %.critedge4
  ]

bb.s:                                             ; preds = %.preheader
  %i.cm = getelementptr inbounds nuw i8, ptr %.4, i64 1
  br label %.preheader, !llvm.loop !57

.critedge4:                                       ; preds = %.preheader, %.preheader
  %i.cn = icmp eq i8 %i.cl, 64
  %spec.select256.idx = zext i1 %i.cn to i64
  %spec.select256 = getelementptr inbounds nuw i8, ptr %.4, i64 %spec.select256.idx
  br label %bb.t

bb.t:                                             ; preds = %_ZN8nanobind6detail6Buffer3putEc.exit271, %.critedge4
  %.6 = phi ptr [ %spec.select256, %.critedge4 ], [ %i.cp, %_ZN8nanobind6detail6Buffer3putEc.exit271 ] ; 4 uses
  %i.co = load i8, ptr %.6, align 1               ; 2 uses
  switch i8 %i.co, label %bb.u [
    i8 0, label %.critedge2
    i8 64, label %.critedge2
  ]

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %.6, i64 1
  %i.cq = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.cs = load ptr, ptr %i.bc, align 8
  %.not.i269 = icmp ult ptr %i.cr, %i.cs
  br i1 %.not.i269, label %_ZN8nanobind6detail6Buffer3putEc.exit271, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  %.pre.i270 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer3putEc.exit271

_ZN8nanobind6detail6Buffer3putEc.exit271:         ; preds = %bb.u, %bb.v
  %i.ct = phi ptr [ %.pre.i270, %bb.v ], [ %i.cq, %bb.u ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store ptr %i.cu, ptr %i.az, align 8
  store i8 %i.co, ptr %i.ct, align 1
  %i.cv = load ptr, ptr %i.az, align 8
  store i8 0, ptr %i.cv, align 1
  br label %bb.t, !llvm.loop !58

bb.w:                                             ; preds = %bb.l
  br i1 %i.k, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cw = load ptr, ptr %i.bp, align 8
  %i.cx = zext i32 %.0188 to i64
  %i.cy = getelementptr inbounds nuw [40 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.da = phi ptr [ %i.cz, %bb.x ], [ null, %bb.w ] ; 7 uses
  br i1 %.not227, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = add i32 %.0188, 1
  %i.dc = load i16, ptr %i.br, align 4
  %i.dd = zext i16 %i.dc to i32
  %i.de = icmp eq i32 %i.db, %i.dd
  br i1 %i.de, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.df = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dh = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i272 = icmp ult ptr %i.dg, %i.dh
  br i1 %.not.i.i272, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = add i64 %i.dj, 3
  %i.dl = sub i64 %i.dk, %i.di
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.dl)
  %.pre.i.i273 = load ptr, ptr %i.az, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dm = phi ptr [ %.pre.i.i273, %bb.ab ], [ %i.df, %bb.aa ]
  store i16 10794, ptr %i.dm, align 1
  %i.dn = load ptr, ptr %i.az, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2 ; 2 uses
  store ptr %i.do, ptr %i.az, align 8
  store i8 0, ptr %i.do, align 1
  %.not244 = icmp eq ptr %i.da, null
  %i.dp = select i1 %.not244, ptr @.str.34, ptr %i.da ; 2 uses
  %i.dq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dp) #28 ; 4 uses
  %i.dr = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dq
  %i.dt = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i274 = icmp ult ptr %i.ds, %i.dt
  br i1 %.not.i.i274, label %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit277, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %.neg.i.i275 = add i64 %i.dq, 1
  %i.dw = add i64 %.neg.i.i275, %i.dv
  %i.dx = sub i64 %i.dw, %i.du
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.dx)
  %.pre.i.i276 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit277

_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit277:  ; preds = %bb.ac, %bb.ad
  %i.dy = phi ptr [ %.pre.i.i276, %bb.ad ], [ %i.dr, %bb.ac ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dy, ptr nonnull align 1 %i.dp, i64 %i.dq, i1 false)
  %i.dz = load ptr, ptr %i.az, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dq ; 2 uses
  store ptr %i.ea, ptr %i.az, align 8
  store i8 0, ptr %i.ea, align 1
  br label %.outer557

.outer557:                                        ; preds = %bb.af, %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit277
  %.1197.ph = phi ptr [ %i.ed, %bb.af ], [ %.0196, %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit277 ] ; 2 uses
  %.7.ph = phi ptr [ %i.eb, %bb.af ], [ %.0181, %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit277 ]
  br label %bb.ae

bb.ae:                                            ; preds = %.outer557, %bb.ae
  %.7 = phi ptr [ %i.eb, %bb.ae ], [ %.7.ph, %.outer557 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 3 uses
  %i.ec = load i8, ptr %i.eb, align 1
  switch i8 %i.ec, label %bb.ae [
    i8 125, label %.critedge2
    i8 37, label %bb.af
  ], !llvm.loop !59

bb.af:                                            ; preds = %bb.ae
  %i.ed = getelementptr inbounds nuw i8, ptr %.1197.ph, i64 8
  br label %.outer557, !llvm.loop !59

bb.ag:                                            ; preds = %bb.z, %bb.y
  %i.ee = load i16, ptr %i.bq, align 2
  %i.ef = zext i16 %i.ee to i32
  %i.eg = icmp eq i32 %.0188, %i.ef
  br i1 %i.eg, label %bb.ah, label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  %i.eh = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  %i.ej = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i278 = icmp ult ptr %i.ei, %i.ej
  br i1 %.not.i.i278, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = add i64 %i.el, 2
  %i.en = sub i64 %i.em, %i.ek
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.en)
  %.pre.i.i279 = load ptr, ptr %i.az, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.eo = phi ptr [ %.pre.i.i279, %bb.ai ], [ %i.eh, %bb.ah ]
  store i8 42, ptr %i.eo, align 1
  %i.ep = load ptr, ptr %i.az, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1 ; 2 uses
  store ptr %i.eq, ptr %i.az, align 8
  store i8 0, ptr %i.eq, align 1
  br i1 %.not, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not242 = icmp eq ptr %i.da, null
  %i.er = select i1 %.not242, ptr @.str.36, ptr %i.da ; 2 uses
  %i.es = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.er) #28 ; 4 uses
  %i.et = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.es
  %i.ev = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i280 = icmp ult ptr %i.eu, %i.ev
  br i1 %.not.i.i280, label %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit283, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %.neg.i.i281 = add i64 %i.es, 1
  %i.ey = add i64 %.neg.i.i281, %i.ex
  %i.ez = sub i64 %i.ey, %i.ew
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ez)
  %.pre.i.i282 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit283

_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit283:  ; preds = %bb.ak, %bb.al
  %i.fa = phi ptr [ %.pre.i.i282, %bb.al ], [ %i.et, %bb.ak ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fa, ptr nonnull align 1 %i.er, i64 %i.es, i1 false)
  %i.fb = load ptr, ptr %i.az, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.es ; 2 uses
  store ptr %i.fc, ptr %i.az, align 8
  store i8 0, ptr %i.fc, align 1
  br label %.outer

.outer:                                           ; preds = %bb.an, %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit283
  %.3199.ph = phi ptr [ %i.ff, %bb.an ], [ %.0196, %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit283 ] ; 2 uses
  %.8.ph = phi ptr [ %i.fd, %bb.an ], [ %.0181, %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit283 ]
  br label %bb.am

bb.am:                                            ; preds = %.outer, %bb.am
  %.8 = phi ptr [ %i.fd, %bb.am ], [ %.8.ph, %.outer ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 3 uses
  %i.fe = load i8, ptr %i.fd, align 1
  switch i8 %i.fe, label %bb.am [
    i8 125, label %.critedge2
    i8 37, label %bb.an
  ], !llvm.loop !60

bb.an:                                            ; preds = %bb.am
  %i.ff = getelementptr inbounds nuw i8, ptr %.3199.ph, i64 8
  br label %.outer, !llvm.loop !60

bb.ao:                                            ; preds = %bb.aj
  %i.fg = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  %i.fi = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i284 = icmp ult ptr %i.fh, %i.fi
  br i1 %.not.i.i284, label %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit286, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fg to i64
  %i.fl = add i64 %i.fk, 3
  %i.fm = sub i64 %i.fl, %i.fj
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.fm)
  %.pre.i.i285 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit286

_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit286: ; preds = %bb.ao, %bb.ap
  %i.fn = phi ptr [ %.pre.i.i285, %bb.ap ], [ %i.fg, %bb.ao ]
  store i16 8236, ptr %i.fn, align 1
  %i.fo = load ptr, ptr %i.az, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 2 ; 2 uses
  store ptr %i.fp, ptr %i.az, align 8
  store i8 0, ptr %i.fp, align 1
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit286, %bb.ag
  %i.fq = icmp eq i32 %.0188, 0
  %or.cond = select i1 %i.i, i1 %i.fq, i1 false
  br i1 %or.cond, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.fr = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i287 = icmp ult ptr %i.fs, %i.ft
  br i1 %.not.i.i287, label %_ZN8nanobind6detail6Buffer3putILm5EEEvRAT__Kc.exit289, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = add i64 %i.fv, 5
  %i.fx = sub i64 %i.fw, %i.fu
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.fx)
  %.pre.i.i288 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer3putILm5EEEvRAT__Kc.exit289

_ZN8nanobind6detail6Buffer3putILm5EEEvRAT__Kc.exit289: ; preds = %bb.ar, %bb.as
  %i.fy = phi ptr [ %.pre.i.i288, %bb.as ], [ %i.fr, %bb.ar ]
  store i32 1718379891, ptr %i.fy, align 1
  %i.fz = load ptr, ptr %i.az, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 2 uses
  store ptr %i.ga, ptr %i.az, align 8
  store i8 0, ptr %i.ga, align 1
  br label %bb.at

bb.at:                                            ; preds = %_ZN8nanobind6detail6Buffer3putILm5EEEvRAT__Kc.exit289, %bb.av
  %.5201 = phi ptr [ %.0196, %_ZN8nanobind6detail6Buffer3putILm5EEEvRAT__Kc.exit289 ], [ %.6202, %bb.av ] ; 3 uses
  %.9 = phi ptr [ %.0181, %_ZN8nanobind6detail6Buffer3putILm5EEEvRAT__Kc.exit289 ], [ %i.gd, %bb.av ] ; 3 uses
  %i.gb = load i8, ptr %.9, align 1
  switch i8 %i.gb, label %bb.av [
    i8 125, label %.critedge2
    i8 37, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at
  %i.gc = getelementptr inbounds nuw i8, ptr %.5201, i64 8
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %.6202 = phi ptr [ %i.gc, %bb.au ], [ %.5201, %bb.at ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.9, i64 1
  br label %bb.at, !llvm.loop !61

bb.aw:                                            ; preds = %bb.aq
  %.not239 = icmp eq ptr %i.da, null
  br i1 %.not239, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ge = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.da) #28 ; 4 uses
  %i.gf = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.ge
  %i.gh = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i290 = icmp ult ptr %i.gg, %i.gh
  br i1 %.not.i.i290, label %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit293, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gf to i64
  %.neg.i.i291 = add i64 %i.ge, 1
  %i.gk = add i64 %.neg.i.i291, %i.gj
  %i.gl = sub i64 %i.gk, %i.gi
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.gl)
  %.pre.i.i292 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit293

_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit293:  ; preds = %bb.ax, %bb.ay
  %i.gm = phi ptr [ %.pre.i.i292, %bb.ay ], [ %i.gf, %bb.ax ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gm, ptr nonnull align 1 %i.da, i64 %i.ge, i1 false)
  %i.gn = load ptr, ptr %i.az, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.ge ; 2 uses
  store ptr %i.go, ptr %i.az, align 8
  store i8 0, ptr %i.go, align 1
  br label %bb.bg

bb.az:                                            ; preds = %bb.aw
  %i.gp = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 3
  %i.gr = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i294 = icmp ult ptr %i.gq, %i.gr
  br i1 %.not.i.i294, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gp to i64
  %i.gu = add i64 %i.gt, 4
  %i.gv = sub i64 %i.gu, %i.gs
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.gv)
  %.pre.i.i295 = load ptr, ptr %i.az, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gw = phi ptr [ %.pre.i.i295, %bb.ba ], [ %i.gp, %bb.az ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.gw, ptr noundef nonnull align 1 dereferenceable(3) @.str.37, i64 3, i1 false)
  %i.gx = load ptr, ptr %i.az, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 3 ; 2 uses
  store ptr %i.gy, ptr %i.az, align 8
  store i8 0, ptr %i.gy, align 1
  %i.gz = load i16, ptr %i.br, align 4
  %i.ha = zext i16 %i.gz to i32
  %i.hb = icmp samesign ult i32 %i.bs, %i.ha
  br i1 %i.hb, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.hc = sub i32 %.0188, %.lobit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %bb.bc
  %.07.i = phi i32 [ %i.hc, %bb.bc ], [ %i.hj, %bb.bd ] ; 3 uses
  %.0.i = phi i64 [ 10, %bb.bc ], [ %i.hh, %bb.bd ] ; 3 uses
  %i.hd = urem i32 %.07.i, 10
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr @.str.42, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = add i64 %.0.i, -1                       ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hh
  store i8 %i.hg, ptr %i.hi, align 1
  %i.hj = udiv i32 %.07.i, 10
  %.not.i296 = icmp ult i32 %.07.i, 10
  br i1 %.not.i296, label %bb.be, label %bb.bd, !llvm.loop !0

bb.be:                                            ; preds = %bb.bd
  %i.hk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hh
  %i.hl = sub i64 11, %.0.i                       ; 3 uses
  %i.hm = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hl
  %i.ho = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i297 = icmp ult ptr %i.hn, %i.ho
  br i1 %.not.i.i297, label %_ZN8nanobind6detail6Buffer10put_uint32Ej.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hm to i64
  %i.hr = add i64 %i.hq, 12
  %i.hs = add i64 %.0.i, %i.hp
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ht)
  %.pre.i.i298 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer10put_uint32Ej.exit

_ZN8nanobind6detail6Buffer10put_uint32Ej.exit:    ; preds = %bb.be, %bb.bf
  %i.hu = phi ptr [ %.pre.i.i298, %bb.bf ], [ %i.hm, %bb.be ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hu, ptr nonnull align 1 %i.hk, i64 %i.hl, i1 false)
  %i.hv = load ptr, ptr %i.az, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hl ; 2 uses
  store ptr %i.hw, ptr %i.az, align 8
  store i8 0, ptr %i.hw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN8nanobind6detail6Buffer10put_uint32Ej.exit, %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit293, %bb.bb
  %i.hx = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 2
  %i.hz = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i299 = icmp ult ptr %i.hy, %i.hz
  br i1 %.not.i.i299, label %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit301, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = ptrtoint ptr %i.hx to i64
  %i.ic = add i64 %i.ib, 3
  %i.id = sub i64 %i.ic, %i.ia
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.id)
  %.pre.i.i300 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit301

_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit301: ; preds = %bb.bg, %bb.bh
  %i.ie = phi ptr [ %.pre.i.i300, %bb.bh ], [ %i.hx, %bb.bg ]
  store i16 8250, ptr %i.ie, align 1
  %i.if = load ptr, ptr %i.az, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 2 ; 2 uses
  store ptr %i.ig, ptr %i.az, align 8
  store i8 0, ptr %i.ig, align 1
  br label %.critedge2

bb.bi:                                            ; preds = %bb.l
  br i1 %i.k, label %bb.bj, label %bb.cp

bb.bj:                                            ; preds = %bb.bi
  %i.ih = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.ii = zext i32 %.0188 to i64                  ; 2 uses
  %i.ij = getelementptr inbounds nuw [40 x i8], ptr %i.ih, i64 %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.il = load i32, ptr %i.ik, align 8
  %i.im = and i32 %i.il, 4
  %.not233 = icmp eq i32 %i.im, 0
  br i1 %.not233, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.in = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 7
  %i.ip = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i302 = icmp ult ptr %i.io, %i.ip
  br i1 %.not.i.i302, label %_ZN8nanobind6detail6Buffer3putILm8EEEvRAT__Kc.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.in to i64
  %i.is = add i64 %i.ir, 8
  %i.it = sub i64 %i.is, %i.iq
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.it)
  %.pre.i.i303 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer3putILm8EEEvRAT__Kc.exit

_ZN8nanobind6detail6Buffer3putILm8EEEvRAT__Kc.exit: ; preds = %bb.bk, %bb.bl
  %i.iu = phi ptr [ %.pre.i.i303, %bb.bl ], [ %i.in, %bb.bk ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.iu, ptr noundef nonnull align 1 dereferenceable(7) @.str.38, i64 7, i1 false)
  %i.iv = load ptr, ptr %i.az, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 7 ; 2 uses
  store ptr %i.iw, ptr %i.az, align 8
  store i8 0, ptr %i.iw, align 1
  %.pre = load ptr, ptr %i.bp, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN8nanobind6detail6Buffer3putILm8EEEvRAT__Kc.exit, %bb.bj
  %i.ix = phi ptr [ %.pre, %_ZN8nanobind6detail6Buffer3putILm8EEEvRAT__Kc.exit ], [ %i.ih, %bb.bj ]
  %i.iy = getelementptr inbounds nuw [40 x i8], ptr %i.ix, i64 %i.ii ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8            ; 2 uses
  %.not234 = icmp eq ptr %i.ja, null
  br i1 %.not234, label %bb.cp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  br i1 %3, label %bb.bo, label %bb.bx

bb.bo:                                            ; preds = %bb.bn
  %i.jb = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i304 = icmp ult ptr %i.jc, %i.jd
  br i1 %.not.i.i304, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.jb to i64
  %i.jg = add i64 %i.jf, 5
  %i.jh = sub i64 %i.jg, %i.je
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.jh)
  %.pre.i.i305 = load ptr, ptr %i.az, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
end_hunk_2
begin_hunk_3_@_ZN8nanobind6detailL24nb_func_render_signatureERNS0_6BufferEPNS0_12nb_internalsEPKNS0_9func_dataEb:bb.a

bb.by:                                            ; preds = %bb.bx
  %i.kq = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 3
  %i.ks = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i316 = icmp ult ptr %i.kr, %i.ks
  br i1 %.not.i.i316, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kt = ptrtoint ptr %i.ks to i64
  %i.ku = ptrtoint ptr %i.kq to i64
  %i.kv = add i64 %i.ku, 4
  %i.kw = sub i64 %i.kv, %i.kt
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.kw)
  %.pre.i.i317 = load ptr, ptr %i.az, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.kx = phi ptr [ %.pre.i.i317, %bb.bz ], [ %i.kq, %bb.by ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kx, ptr noundef nonnull align 1 dereferenceable(3) @.str.40, i64 3, i1 false)
  %i.ky = load ptr, ptr %i.az, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 3 ; 2 uses
  store ptr %i.kz, ptr %i.az, align 8
  store i8 0, ptr %i.kz, align 1
  %i.la = load ptr, ptr %i.ko, align 8            ; 2 uses
  %i.lb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.la) #28 ; 4 uses
  %i.lc = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lb
  %i.le = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i319 = icmp ult ptr %i.ld, %i.le
  br i1 %.not.i.i319, label %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit322, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.lc to i64
  %.neg.i.i320 = add i64 %i.lb, 1
  %i.lh = add i64 %.neg.i.i320, %i.lg
  %i.li = sub i64 %i.lh, %i.lf
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.li)
  %.pre.i.i321 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit322

_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit322:  ; preds = %bb.ca, %bb.cb
  %i.lj = phi ptr [ %.pre.i.i321, %bb.cb ], [ %i.lc, %bb.ca ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lj, ptr nonnull align 1 %i.la, i64 %i.lb, i1 false)
  %i.lk = load ptr, ptr %i.az, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lb ; 2 uses
  store ptr %i.ll, ptr %i.az, align 8
  store i8 0, ptr %i.ll, align 1
  br label %bb.cp

bb.cc:                                            ; preds = %bb.bx
  %i.lm = invoke ptr @PyObject_Repr(ptr noundef nonnull %i.ja)
          to label %bb.cd unwind label %bb.er     ; 5 uses

bb.cd:                                            ; preds = %bb.cc
  %.not236 = icmp eq ptr %i.lm, null
  br i1 %.not236, label %bb.co, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i64 0, ptr %i.e, align 8
  %i.ln = invoke ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.lm, ptr noundef nonnull %i.e)
          to label %bb.cf unwind label %bb.er     ; 2 uses

bb.cf:                                            ; preds = %bb.ce
  %.not237 = icmp eq ptr %i.ln, null
  br i1 %.not237, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  invoke void @PyErr_Clear()
          to label %bb.cl unwind label %bb.er

bb.ch:                                            ; preds = %bb.cf
  %i.lo = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 3
  %i.lq = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i323 = icmp ult ptr %i.lp, %i.lq
  br i1 %.not.i.i323, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = ptrtoint ptr %i.lo to i64
  %i.lt = add i64 %i.ls, 4
  %i.lu = sub i64 %i.lt, %i.lr
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.lu)
  %.pre.i.i324 = load ptr, ptr %i.az, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.lv = phi ptr [ %.pre.i.i324, %bb.ci ], [ %i.lo, %bb.ch ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.lv, ptr noundef nonnull align 1 dereferenceable(3) @.str.40, i64 3, i1 false)
  %i.lw = load ptr, ptr %i.az, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 3 ; 2 uses
  store ptr %i.lx, ptr %i.az, align 8
  store i8 0, ptr %i.lx, align 1
  %i.ly = load i64, ptr %i.e, align 8             ; 4 uses
  %i.lz = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.ly
  %i.mb = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i326 = icmp ult ptr %i.ma, %i.mb
  br i1 %.not.i326, label %_ZN8nanobind6detail6Buffer3putEPKcm.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = ptrtoint ptr %i.lz to i64
  %.neg.i = add i64 %i.ly, 1
  %i.me = add i64 %.neg.i, %i.md
  %i.mf = sub i64 %i.me, %i.mc
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.mf)
  %.pre.i327 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer3putEPKcm.exit

_ZN8nanobind6detail6Buffer3putEPKcm.exit:         ; preds = %bb.cj, %bb.ck
  %i.mg = phi ptr [ %.pre.i327, %bb.ck ], [ %i.lz, %bb.cj ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mg, ptr nonnull align 1 %i.ln, i64 %i.ly, i1 false)
  %i.mh = load ptr, ptr %i.az, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.ly ; 2 uses
  store ptr %i.mi, ptr %i.az, align 8
  store i8 0, ptr %i.mi, align 1
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN8nanobind6detail6Buffer3putEPKcm.exit, %bb.cg
  %i.mj = load i64, ptr %i.lm, align 8            ; 2 uses
  %i.mk = and i64 %i.mj, 2147483648
  %.not382 = icmp eq i64 %i.mk, 0
  br i1 %.not382, label %bb.cm, label %_ZL9Py_DECREFP7_object.exit

bb.cm:                                            ; preds = %bb.cl
  %i.ml = add nsw i64 %i.mj, -1                   ; 2 uses
  store i64 %i.ml, ptr %i.lm, align 8
  %i.mm = icmp eq i64 %i.ml, 0
  br i1 %i.mm, label %bb.cn, label %_ZL9Py_DECREFP7_object.exit

bb.cn:                                            ; preds = %bb.cm
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.lm)
          to label %_ZL9Py_DECREFP7_object.exit unwind label %bb.er

_ZL9Py_DECREFP7_object.exit:                      ; preds = %bb.cm, %bb.cl, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.cp

bb.co:                                            ; preds = %bb.cd
  invoke void @PyErr_Clear()
          to label %bb.cp unwind label %bb.er

bb.cp:                                            ; preds = %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit322, %_ZN8nanobind6detail6Buffer10put_uint32Ej.exit315, %bb.co, %_ZL9Py_DECREFP7_object.exit, %bb.bm, %bb.bi
  %.2185 = phi i32 [ %.0183, %bb.bi ], [ %.0183, %bb.bm ], [ %i.kb, %_ZN8nanobind6detail6Buffer10put_uint32Ej.exit315 ], [ %.0183, %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit322 ], [ %.0183, %bb.co ], [ %.0183, %_ZL9Py_DECREFP7_object.exit ] ; 3 uses
  %i.mn = add i32 %.0188, 1                       ; 6 uses
  %i.mo = load i16, ptr %i.bq, align 2
  %i.mp = zext i16 %i.mo to i32
  %i.mq = icmp eq i32 %i.mn, %i.mp
  br i1 %i.mq, label %bb.cq, label %.critedge2

bb.cq:                                            ; preds = %bb.cp
  %i.mr = icmp ult i32 %.lobit, %i.mn
  %i.ms = select i1 %i.k, i1 %i.mr, i1 false
  br i1 %i.ms, label %.lr.ph, label %.critedge437

.lr.ph:                                           ; preds = %bb.cq
  %i.mt = load ptr, ptr %i.bp, align 8            ; 5 uses
  %wide.trip.count = zext nneg i32 %i.mn to i64   ; 2 uses
  %i.mu = sub nsw i64 %wide.trip.count, %i.bu     ; 3 uses
  %min.iters.check = icmp ult i64 %i.mu, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.mv = and i64 %i.mu, 3                        ; 2 uses
  %i.mw = icmp eq i64 %i.mv, 0
  %i.mx = select i1 %i.mw, i64 4, i64 %i.mv
  %n.vec = sub nsw i64 %i.mu, %i.mx               ; 2 uses
  %i.my = add nsw i64 %n.vec, %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i1> [ splat (i1 true), %vector.ph ], [ %i.nr, %vector.body ]
  %vec.phi552 = phi <2 x i1> [ splat (i1 true), %vector.ph ], [ %i.ns, %vector.body ]
  %i.mz = or disjoint i64 %index, %i.bu           ; 4 uses
  %i.na = getelementptr inbounds nuw [40 x i8], ptr %i.mt, i64 %i.mz
  %i.nb = getelementptr inbounds nuw [40 x i8], ptr %i.mt, i64 %i.mz
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 40
  %i.nd = getelementptr inbounds nuw [40 x i8], ptr %i.mt, i64 %i.mz
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 80
  %i.nf = getelementptr [40 x i8], ptr %i.mt, i64 %i.mz
  %i.ng = getelementptr i8, ptr %i.nf, i64 120
  %i.nh = load ptr, ptr %i.na, align 8
  %i.ni = load ptr, ptr %i.nc, align 8
  %i.nj = insertelement <2 x ptr> poison, ptr %i.nh, i64 0
  %i.nk = insertelement <2 x ptr> %i.nj, ptr %i.ni, i64 1
  %i.nl = load ptr, ptr %i.ne, align 8
  %i.nm = load ptr, ptr %i.ng, align 8
  %i.nn = insertelement <2 x ptr> poison, ptr %i.nl, i64 0
  %i.no = insertelement <2 x ptr> %i.nn, ptr %i.nm, i64 1
  %i.np = icmp eq <2 x ptr> %i.nk, splat (ptr null)
  %i.nq = icmp eq <2 x ptr> %i.no, splat (ptr null)
  %i.nr = and <2 x i1> %vec.phi, %i.np            ; 2 uses
  %i.ns = and <2 x i1> %vec.phi552, %i.nq         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nt = icmp eq i64 %index.next, %n.vec
  br i1 %i.nt, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <2 x i1> %i.ns, %i.nr
  %i.nu = bitcast <2 x i1> %bin.rdx to i2
  %i.nv = icmp eq i2 %i.nu, -1
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.bu, %.lr.ph ], [ %i.my, %middle.block ]
  %.0180435.ph = phi i1 [ true, %.lr.ph ], [ %i.nv, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph
  br i1 %i.nz, label %.critedge437, label %.critedge2

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0180435 = phi i1 [ %i.nz, %scalar.ph ], [ %.0180435.ph, %scalar.ph.preheader ]
  %i.nw = getelementptr inbounds nuw [40 x i8], ptr %i.mt, i64 %indvars.iv
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = icmp eq ptr %i.nx, null
  %i.nz = and i1 %.0180435, %i.ny                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !63

.critedge437:                                     ; preds = %bb.cq, %._crit_edge
  %i.oa = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 3
  %i.oc = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i328 = icmp ult ptr %i.ob, %i.oc
  br i1 %.not.i.i328, label %_ZN8nanobind6detail6Buffer3putILm4EEEvRAT__Kc.exit330, label %bb.cr

bb.cr:                                            ; preds = %.critedge437
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = ptrtoint ptr %i.oa to i64
  %i.of = add i64 %i.oe, 4
  %i.og = sub i64 %i.of, %i.od
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.og)
  %.pre.i.i329 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer3putILm4EEEvRAT__Kc.exit330

_ZN8nanobind6detail6Buffer3putILm4EEEvRAT__Kc.exit330: ; preds = %.critedge437, %bb.cr
  %i.oh = phi ptr [ %.pre.i.i329, %bb.cr ], [ %i.oa, %.critedge437 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.oh, ptr noundef nonnull align 1 dereferenceable(3) @.str.41, i64 3, i1 false)
  %i.oi = load ptr, ptr %i.az, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 3 ; 2 uses
  store ptr %i.oj, ptr %i.az, align 8
  store i8 0, ptr %i.oj, align 1
  br label %.critedge2

bb.cs:                                            ; preds = %bb.l
  %i.ok = load ptr, ptr %.0196, align 8           ; 2 uses
  %.not231 = icmp eq ptr %i.ok, null
  br i1 %.not231, label %bb.ct, label %bb.cu, !prof !6

bb.ct:                                            ; preds = %bb.cs
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #26
  unreachable

bb.cu:                                            ; preds = %bb.cs
  %i.ol = icmp eq i32 %.0188, 0
  %or.cond9 = select i1 %i.i, i1 %i.ol, i1 false
  br i1 %or.cond9, label %bb.ek, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.om = invoke noundef ptr @_ZN8nanobind6detail11nb_type_c2pEPNS0_12nb_internalsEPKSt9type_info(ptr noundef %1, ptr noundef nonnull %i.ok)
          to label %bb.cw unwind label %bb.er     ; 2 uses

bb.cw:                                            ; preds = %bb.cv
  %.not232 = icmp eq ptr %i.om, null
  br i1 %.not232, label %.critedge258, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 40
  %i.oo = load ptr, ptr %i.on, align 8            ; 2 uses
  %i.op = load ptr, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.oq = invoke i32 @_PyObject_LookupAttr(ptr noundef %i.oo, ptr noundef %i.op, ptr noundef nonnull %i.b)
          to label %bb.cy unwind label %bb.dc     ; 2 uses

bb.cy:                                            ; preds = %bb.cx
  %i.or = icmp eq i32 %i.oq, 1
  br i1 %i.or, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.os = load ptr, ptr %i.b, align 8
  br label %bb.dd

bb.da:                                            ; preds = %bb.cy
  %i.ot = icmp slt i32 %i.oq, 0
  br i1 %i.ot, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  invoke void @PyErr_Clear()
          to label %bb.dd unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cx
  %i.ou = landingpad { ptr, i32 }
          catch ptr null
  %i.ov = extractvalue { ptr, i32 } %i.ou, 0
  call void @__clang_call_terminate(ptr %i.ov) #26
  unreachable

bb.dd:                                            ; preds = %bb.cz, %bb.db, %bb.da
  %.0.i331 = phi ptr [ %i.os, %bb.cz ], [ null, %bb.db ], [ null, %bb.da ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.ow = load ptr, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ox = invoke i32 @_PyObject_LookupAttr(ptr noundef %i.oo, ptr noundef %i.ow, ptr noundef nonnull %i.a)
          to label %bb.de unwind label %bb.di     ; 2 uses

bb.de:                                            ; preds = %bb.dd
  %i.oy = icmp eq i32 %i.ox, 1
  br i1 %i.oy, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.oz = load ptr, ptr %i.a, align 8
  br label %bb.dj

bb.dg:                                            ; preds = %bb.de
  %i.pa = icmp slt i32 %i.ox, 0
  br i1 %i.pa, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  invoke void @PyErr_Clear()
          to label %bb.dj unwind label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dd
  %i.pb = landingpad { ptr, i32 }
          catch ptr null
  %i.pc = extractvalue { ptr, i32 } %i.pb, 0
  call void @__clang_call_terminate(ptr %i.pc) #26
  unreachable

bb.dj:                                            ; preds = %bb.dg, %bb.dh, %bb.df
  %.0.i332 = phi ptr [ %i.oz, %bb.df ], [ null, %bb.dh ], [ null, %bb.dg ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not380 = icmp eq ptr %.0.i331, null           ; 2 uses
  br i1 %.not380, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pd = invoke ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %.0.i331, ptr noundef null)
          to label %bb.dl unwind label %bb.er

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.pe = phi ptr [ %i.pd, %bb.dk ], [ null, %bb.dj ] ; 3 uses
  %.not381 = icmp eq ptr %.0.i332, null           ; 2 uses
  br i1 %.not381, label %.thread, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.pf = invoke ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %.0.i332, ptr noundef null)
          to label %bb.dn unwind label %bb.er     ; 3 uses

bb.dn:                                            ; preds = %bb.dm
  %i.pg = icmp ne ptr %i.pe, null
  %i.ph = icmp ne ptr %i.pf, null
  %or.cond11 = select i1 %i.pg, i1 %i.ph, i1 false
  br i1 %or.cond11, label %bb.do, label %.thread

bb.do:                                            ; preds = %bb.dn
  %i.pi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.pe) #28 ; 4 uses
  %i.pj = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.pi
  %i.pl = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i334 = icmp ult ptr %i.pk, %i.pl
  br i1 %.not.i.i334, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.pm = ptrtoint ptr %i.pl to i64
  %i.pn = ptrtoint ptr %i.pj to i64
  %.neg.i.i335 = add i64 %i.pi, 1
  %i.po = add i64 %.neg.i.i335, %i.pn
  %i.pp = sub i64 %i.po, %i.pm
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.pp)
  %.pre.i.i336 = load ptr, ptr %i.az, align 8
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.pq = phi ptr [ %.pre.i.i336, %bb.dp ], [ %i.pj, %bb.do ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pq, ptr nonnull align 1 %i.pe, i64 %i.pi, i1 false)
  %i.pr = load ptr, ptr %i.az, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.pi ; 2 uses
  store ptr %i.ps, ptr %i.az, align 8
  store i8 0, ptr %i.ps, align 1
  %i.pt = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 1
  %i.pv = load ptr, ptr %i.bc, align 8
  %.not.i338 = icmp ult ptr %i.pu, %i.pv
  br i1 %.not.i338, label %_ZN8nanobind6detail6Buffer3putEc.exit340, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  %.pre.i339 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer3putEc.exit340

_ZN8nanobind6detail6Buffer3putEc.exit340:         ; preds = %bb.dq, %bb.dr
  %i.pw = phi ptr [ %.pre.i339, %bb.dr ], [ %i.pt, %bb.dq ] ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 1
  store ptr %i.px, ptr %i.az, align 8
  store i8 46, ptr %i.pw, align 1
  %i.py = load ptr, ptr %i.az, align 8
  store i8 0, ptr %i.py, align 1
  %i.pz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.pf) #28 ; 4 uses
  %i.qa = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.pz
  %i.qc = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i341 = icmp ult ptr %i.qb, %i.qc
  br i1 %.not.i.i341, label %.thread375, label %bb.ds

bb.ds:                                            ; preds = %_ZN8nanobind6detail6Buffer3putEc.exit340
  %i.qd = ptrtoint ptr %i.qc to i64
  %i.qe = ptrtoint ptr %i.qa to i64
  %.neg.i.i342 = add i64 %i.pz, 1
  %i.qf = add i64 %.neg.i.i342, %i.qe
  %i.qg = sub i64 %i.qf, %i.qd
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.qg)
  %.pre.i.i343 = load ptr, ptr %i.az, align 8
  br label %.thread375

.thread375:                                       ; preds = %bb.ds, %_ZN8nanobind6detail6Buffer3putEc.exit340
  %i.qh = phi ptr [ %.pre.i.i343, %bb.ds ], [ %i.qa, %_ZN8nanobind6detail6Buffer3putEc.exit340 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qh, ptr nonnull align 1 %i.pf, i64 %i.pz, i1 false)
  %i.qi = load ptr, ptr %i.az, align 8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.pz ; 2 uses
  store ptr %i.qj, ptr %i.az, align 8
  store i8 0, ptr %i.qj, align 1
  br label %bb.du

.thread:                                          ; preds = %bb.dl, %bb.dn
  invoke void @PyErr_Clear()
          to label %bb.dt unwind label %bb.er

bb.dt:                                            ; preds = %.thread
  br i1 %.not381, label %_ZNKR8nanobind6handle7dec_refEv.exit, label %bb.du

bb.du:                                            ; preds = %.thread375, %bb.dt
  %or.cond11373378 = phi i1 [ true, %.thread375 ], [ false, %bb.dt ] ; 3 uses
  %i.qk = load i64, ptr %.0.i332, align 8         ; 2 uses
  %i.ql = and i64 %i.qk, 2147483648
  %.not2.i.i = icmp eq i64 %i.ql, 0
  br i1 %.not2.i.i, label %bb.dv, label %_ZNKR8nanobind6handle7dec_refEv.exit

bb.dv:                                            ; preds = %bb.du
  %i.qm = add nsw i64 %i.qk, -1                   ; 2 uses
  store i64 %i.qm, ptr %.0.i332, align 8
  %i.qn = icmp eq i64 %i.qm, 0
  br i1 %i.qn, label %bb.dw, label %_ZNKR8nanobind6handle7dec_refEv.exit

bb.dw:                                            ; preds = %bb.dv
  invoke void @_Py_Dealloc(ptr noundef nonnull %.0.i332)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.qo = landingpad { ptr, i32 }
          catch ptr null
  %i.qp = extractvalue { ptr, i32 } %i.qo, 0
  call void @__clang_call_terminate(ptr %i.qp) #26
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit:             ; preds = %bb.dt, %bb.du, %bb.dv, %bb.dw
  %or.cond11373379 = phi i1 [ false, %bb.dt ], [ %or.cond11373378, %bb.du ], [ %or.cond11373378, %bb.dv ], [ %or.cond11373378, %bb.dw ]
  br i1 %.not380, label %_ZNKR8nanobind6handle7dec_refEv.exit348, label %bb.dy

bb.dy:                                            ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit
  %i.qq = load i64, ptr %.0.i331, align 8         ; 2 uses
  %i.qr = and i64 %i.qq, 2147483648
  %.not2.i.i347 = icmp eq i64 %i.qr, 0
  br i1 %.not2.i.i347, label %bb.dz, label %_ZNKR8nanobind6handle7dec_refEv.exit348

bb.dz:                                            ; preds = %bb.dy
  %i.qs = add nsw i64 %i.qq, -1                   ; 2 uses
  store i64 %i.qs, ptr %.0.i331, align 8
  %i.qt = icmp eq i64 %i.qs, 0
  br i1 %i.qt, label %bb.ea, label %_ZNKR8nanobind6handle7dec_refEv.exit348

bb.ea:                                            ; preds = %bb.dz
  invoke void @_Py_Dealloc(ptr noundef nonnull %.0.i331)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit348 unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.qu = landingpad { ptr, i32 }
          catch ptr null
  %i.qv = extractvalue { ptr, i32 } %i.qu, 0
  call void @__clang_call_terminate(ptr %i.qv) #26
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit348:          ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit, %bb.dy, %bb.dz, %bb.ea
  br i1 %or.cond11373379, label %bb.ek, label %.critedge258

.critedge258:                                     ; preds = %bb.cw, %_ZNKR8nanobind6handle7dec_refEv.exit348
  br i1 %3, label %bb.ec, label %bb.ee

bb.ec:                                            ; preds = %.critedge258
  %i.qw = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 1
  %i.qy = load ptr, ptr %i.bc, align 8
  %.not.i349 = icmp ult ptr %i.qx, %i.qy
  br i1 %.not.i349, label %_ZN8nanobind6detail6Buffer3putEc.exit351, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  %.pre.i350 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer3putEc.exit351

_ZN8nanobind6detail6Buffer3putEc.exit351:         ; preds = %bb.ec, %bb.ed
  %i.qz = phi ptr [ %.pre.i350, %bb.ed ], [ %i.qw, %bb.ec ] ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 1
  store ptr %i.ra, ptr %i.az, align 8
  store i8 34, ptr %i.qz, align 1
  %i.rb = load ptr, ptr %i.az, align 8
  store i8 0, ptr %i.rb, align 1
  br label %bb.ee

bb.ee:                                            ; preds = %_ZN8nanobind6detail6Buffer3putEc.exit351, %.critedge258
  %i.rc = load ptr, ptr %.0196, align 8
  %i.rd = invoke noundef ptr @_ZN8nanobind6detail9type_nameEPKSt9type_info(ptr noundef %i.rc)
          to label %bb.ef unwind label %bb.er     ; 3 uses

bb.ef:                                            ; preds = %bb.ee
  %i.re = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.rd) #28 ; 4 uses
  %i.rf = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.re
  %i.rh = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i352 = icmp ult ptr %i.rg, %i.rh
  br i1 %.not.i.i352, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ri = ptrtoint ptr %i.rh to i64
  %i.rj = ptrtoint ptr %i.rf to i64
  %.neg.i.i353 = add i64 %i.re, 1
  %i.rk = add i64 %.neg.i.i353, %i.rj
  %i.rl = sub i64 %i.rk, %i.ri
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.rl)
  %.pre.i.i354 = load ptr, ptr %i.az, align 8
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.rm = phi ptr [ %.pre.i.i354, %bb.eg ], [ %i.rf, %bb.ef ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rm, ptr nonnull align 1 %i.rd, i64 %i.re, i1 false)
  %i.rn = load ptr, ptr %i.az, align 8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.re ; 2 uses
  store ptr %i.ro, ptr %i.az, align 8
  store i8 0, ptr %i.ro, align 1
  call void @free(ptr noundef nonnull %i.rd) #25
  br i1 %3, label %bb.ei, label %bb.ek

bb.ei:                                            ; preds = %bb.eh
  %i.rp = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 1
  %i.rr = load ptr, ptr %i.bc, align 8
  %.not.i356 = icmp ult ptr %i.rq, %i.rr
  br i1 %.not.i356, label %_ZN8nanobind6detail6Buffer3putEc.exit358, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  %.pre.i357 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer3putEc.exit358

_ZN8nanobind6detail6Buffer3putEc.exit358:         ; preds = %bb.ei, %bb.ej
  %i.rs = phi ptr [ %.pre.i357, %bb.ej ], [ %i.rp, %bb.ei ] ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 1
  store ptr %i.rt, ptr %i.az, align 8
  store i8 34, ptr %i.rs, align 1
  %i.ru = load ptr, ptr %i.az, align 8
  store i8 0, ptr %i.ru, align 1
  br label %bb.ek

bb.ek:                                            ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit348, %_ZN8nanobind6detail6Buffer3putEc.exit358, %bb.eh, %bb.cu
  %i.rv = getelementptr inbounds nuw i8, ptr %.0196, i64 8
  br label %.critedge2

bb.el:                                            ; preds = %bb.l
  %i.rw = getelementptr inbounds nuw i8, ptr %.0181, i64 1
  %i.rx = load i8, ptr %i.rw, align 1
  %i.ry = icmp eq i8 %i.rx, 62
  %spec.select259 = select i1 %i.ry, i1 true, i1 %.0192
  %i.rz = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 1
  %i.sb = load ptr, ptr %i.bc, align 8
  %.not.i359 = icmp ult ptr %i.sa, %i.sb
  br i1 %.not.i359, label %_ZN8nanobind6detail6Buffer3putEc.exit361, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  %.pre.i360 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer3putEc.exit361

_ZN8nanobind6detail6Buffer3putEc.exit361:         ; preds = %bb.el, %bb.em
  %i.sc = phi ptr [ %.pre.i360, %bb.em ], [ %i.rz, %bb.el ] ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 1
  store ptr %i.sd, ptr %i.az, align 8
  store i8 45, ptr %i.sc, align 1
  %i.se = load ptr, ptr %i.az, align 8
  store i8 0, ptr %i.se, align 1
  br label %.critedge2

bb.en:                                            ; preds = %bb.l
  %i.sf = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 1
  %i.sh = load ptr, ptr %i.bc, align 8
  %.not.i362 = icmp ult ptr %i.sg, %i.sh
  br i1 %.not.i362, label %_ZN8nanobind6detail6Buffer3putEc.exit364, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  %.pre.i363 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer3putEc.exit364

_ZN8nanobind6detail6Buffer3putEc.exit364:         ; preds = %bb.en, %bb.eo
  %i.si = phi ptr [ %.pre.i363, %bb.eo ], [ %i.sf, %bb.en ] ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 1
  store ptr %i.sj, ptr %i.az, align 8
  store i8 %i.bv, ptr %i.si, align 1
  %i.sk = load ptr, ptr %i.az, align 8
  store i8 0, ptr %i.sk, align 1
  br label %.critedge2

.critedge2:                                       ; preds = %bb.ae, %bb.am, %bb.at, %bb.q, %bb.q, %bb.t, %bb.t, %_ZN8nanobind6detail6Buffer3putILm4EEEvRAT__Kc.exit330, %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit301, %bb.ek, %_ZN8nanobind6detail6Buffer3putEc.exit361, %_ZN8nanobind6detail6Buffer3putEc.exit364, %bb.cp, %._crit_edge
  %.9205 = phi ptr [ %.0196, %._crit_edge ], [ %.0196, %_ZN8nanobind6detail6Buffer3putEc.exit364 ], [ %.0196, %bb.t ], [ %.0196, %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit301 ], [ %.5201, %bb.at ], [ %.3199.ph, %bb.am ], [ %.0196, %_ZN8nanobind6detail6Buffer3putILm4EEEvRAT__Kc.exit330 ], [ %i.rv, %bb.ek ], [ %.0196, %_ZN8nanobind6detail6Buffer3putEc.exit361 ], [ %.0196, %bb.cp ], [ %.0196, %bb.q ], [ %.0196, %bb.t ], [ %.0196, %bb.q ], [ %.1197.ph, %bb.ae ]
  %.3195 = phi i1 [ %.0192, %._crit_edge ], [ %.0192, %_ZN8nanobind6detail6Buffer3putEc.exit364 ], [ true, %bb.t ], [ %.0192, %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit301 ], [ %.0192, %bb.at ], [ %.0192, %bb.am ], [ %.0192, %_ZN8nanobind6detail6Buffer3putILm4EEEvRAT__Kc.exit330 ], [ %.0192, %bb.ek ], [ %spec.select259, %_ZN8nanobind6detail6Buffer3putEc.exit361 ], [ %.0192, %bb.cp ], [ false, %bb.q ], [ true, %bb.t ], [ false, %bb.q ], [ %.0192, %bb.ae ]
  %.3191 = phi i32 [ %i.mn, %._crit_edge ], [ %.0188, %_ZN8nanobind6detail6Buffer3putEc.exit364 ], [ %.0188, %bb.t ], [ %.0188, %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit301 ], [ 1, %bb.at ], [ %.0188, %bb.am ], [ %i.mn, %_ZN8nanobind6detail6Buffer3putILm4EEEvRAT__Kc.exit330 ], [ %.0188, %bb.ek ], [ %.0188, %_ZN8nanobind6detail6Buffer3putEc.exit361 ], [ %i.mn, %bb.cp ], [ %.0188, %bb.q ], [ %.0188, %bb.t ], [ %.0188, %bb.q ], [ %.0188, %bb.ae ]
  %.4187 = phi i32 [ %.2185, %._crit_edge ], [ %.0183, %_ZN8nanobind6detail6Buffer3putEc.exit364 ], [ %.0183, %bb.t ], [ %.0183, %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit301 ], [ %.0183, %bb.at ], [ %.0183, %bb.am ], [ %.2185, %_ZN8nanobind6detail6Buffer3putILm4EEEvRAT__Kc.exit330 ], [ %.0183, %bb.ek ], [ %.0183, %_ZN8nanobind6detail6Buffer3putEc.exit361 ], [ %.2185, %bb.cp ], [ %.0183, %bb.q ], [ %.0183, %bb.t ], [ %.0183, %bb.q ], [ %.0183, %bb.ae ]
  %.12 = phi ptr [ %.0181, %._crit_edge ], [ %.0181, %_ZN8nanobind6detail6Buffer3putEc.exit364 ], [ %.6, %bb.t ], [ %.0181, %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit301 ], [ %.9, %bb.at ], [ %.8, %bb.am ], [ %.0181, %_ZN8nanobind6detail6Buffer3putILm4EEEvRAT__Kc.exit330 ], [ %.0181, %bb.ek ], [ %.0181, %_ZN8nanobind6detail6Buffer3putEc.exit361 ], [ %.0181, %bb.cp ], [ %.3, %bb.q ], [ %.6, %bb.t ], [ %.3, %bb.q ], [ %.7, %bb.ae ]
  %i.sl = getelementptr inbounds nuw i8, ptr %.12, i64 1
  br label %bb.l, !llvm.loop !64

bb.ep:                                            ; preds = %bb.m
  %i.sm = load ptr, ptr %.0196, align 8
  %.not230.not = icmp eq ptr %i.sm, null
  br i1 %.not230.not, label %bb.eq, label %.critedge261, !prof !5

.critedge261:                                     ; preds = %bb.m, %bb.ep
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #26
  unreachable

bb.eq:                                            ; preds = %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit, %bb.ep
  %.0209 = phi i32 [ 0, %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit ], [ %.0183, %bb.ep ]
  ret i32 %.0209

bb.er:                                            ; preds = %bb.cn, %bb.ee, %.thread, %bb.dm, %bb.dk, %bb.cv, %bb.co, %bb.cg, %bb.ce, %bb.cc
  %i.sn = landingpad { ptr, i32 }
          catch ptr null
  %i.so = extractvalue { ptr, i32 } %i.sn, 0
  call void @__clang_call_terminate(ptr %i.so) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN8nanobind6detail15nb_func_get_docEP7_objectPv(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 4 uses
  %2 = alloca %"struct.nanobind::detail::Buffer", align 8 ; 23 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.d = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #27 ; 5 uses
  store ptr %i.d, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 46 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %_ZN8nanobind6detail6BufferC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.32, i64 54, i64 1, ptr %i.f) #29 ; 0 uses
  tail call void @abort() #26
  unreachable

_ZN8nanobind6detail6BufferC2Em.exit:              ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr %i.h, ptr %i.g, align 8
  store ptr %i.d, ptr %i.e, align 8
  store i8 0, ptr %i.d, align 1
  %i.i = and i64 %.val, 4294967295
  %.not70 = icmp eq i64 %i.i, 0
  br i1 %.not70, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8nanobind6detail6BufferC2Em.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %wide.trip.count = and i64 %.val, 4294967295    ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN8nanobind6detail6Buffer3putEc.exit
  br i1 %i.y, label %bb.e, label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %_ZN8nanobind6detail6Buffer3putEc.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8nanobind6detail6Buffer3putEc.exit ] ; 2 uses
  %.02865 = phi i1 [ false, %.lr.ph ], [ %i.y, %_ZN8nanobind6detail6Buffer3putEc.exit ]
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8
  %i.m = call fastcc noundef i32 @_ZN8nanobind6detailL24nb_func_render_signatureERNS0_6BufferEPNS0_12nb_internalsEPKNS0_9func_dataEb(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.l, ptr noundef nonnull %i.k, i1 noundef zeroext false) #25 ; 0 uses
  %i.n = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load ptr, ptr %i.g, align 8
  %.not.i32 = icmp ult ptr %i.o, %i.p
  br i1 %.not.i32, label %_ZN8nanobind6detail6Buffer3putEc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2)
  %.pre.i = load ptr, ptr %i.e, align 8
  br label %_ZN8nanobind6detail6Buffer3putEc.exit

_ZN8nanobind6detail6Buffer3putEc.exit:            ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %.pre.i, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.r, ptr %i.e, align 8
  store i8 10, ptr %i.q, align 1
  %i.s = load ptr, ptr %i.e, align 8
  store i8 0, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.u = load i32, ptr %i.t, align 8
  %i.v = lshr i32 %i.u, 2
  %.lobit = and i32 %i.v, 1
  %i.w = zext i1 %.02865 to i32
  %i.x = or i32 %.lobit, %i.w
  %i.y = icmp ne i32 %i.x, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !65

bb.e:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.aa = load i8, ptr %i.z, align 1, !range !7, !noundef !8
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = load ptr, ptr %i.e, align 8             ; 5 uses
  %i.ad = load ptr, ptr %i.g, align 8             ; 3 uses
  br i1 %i.ab, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %.not.i33 = icmp ult ptr %i.ae, %i.ad
  br i1 %.not.i33, label %_ZN8nanobind6detail6Buffer3putEc.exit35, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2)
  %.pre.i34 = load ptr, ptr %i.e, align 8
  br label %_ZN8nanobind6detail6Buffer3putEc.exit35

_ZN8nanobind6detail6Buffer3putEc.exit35:          ; preds = %bb.f, %bb.g
  %i.af = phi ptr [ %.pre.i34, %bb.g ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.e, align 8
  store i8 10, ptr %i.af, align 1
  %i.ah = load ptr, ptr %i.e, align 8
  store i8 0, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #28 ; 4 uses
  %i.al = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not.i.i = icmp ult ptr %i.am, %i.an
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN8nanobind6detail6Buffer3putEc.exit35
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %.neg.i.i = add i64 %i.ak, 1
  %i.aq = add i64 %.neg.i.i, %i.ap
  %i.ar = sub i64 %i.aq, %i.ao
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ar)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN8nanobind6detail6Buffer3putEc.exit35
  %i.as = phi ptr [ %.pre.i.i, %bb.h ], [ %i.al, %_ZN8nanobind6detail6Buffer3putEc.exit35 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr nonnull align 1 %i.aj, i64 %i.ak, i1 false)
  %i.at = load ptr, ptr %i.e, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ak ; 2 uses
  store ptr %i.au, ptr %i.e, align 8
  store i8 0, ptr %i.au, align 1
  %i.av = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = load ptr, ptr %i.g, align 8
  %.not.i36 = icmp ult ptr %i.aw, %i.ax
  br i1 %.not.i36, label %_ZN8nanobind6detail6Buffer3putEc.exit38, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2)
  %.pre.i37 = load ptr, ptr %i.e, align 8
  br label %_ZN8nanobind6detail6Buffer3putEc.exit38

_ZN8nanobind6detail6Buffer3putEc.exit38:          ; preds = %bb.i, %bb.j
  %i.ay = phi ptr [ %.pre.i37, %bb.j ], [ %i.av, %bb.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.az, ptr %i.e, align 8
  store i8 10, ptr %i.ay, align 1
  %i.ba = load ptr, ptr %i.e, align 8
  store i8 0, ptr %i.ba, align 1
  br label %.loopexit

bb.k:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 22
  %.not.i.i39 = icmp ult ptr %i.bb, %i.ad
  br i1 %.not.i.i39, label %.lr.ph69, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = ptrtoint ptr %i.ad to i64
  %i.bd = ptrtoint ptr %i.ac to i64
  %i.be = add i64 %i.bd, 23
  %i.bf = sub i64 %i.be, %i.bc
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bf)
  %.pre.i.i40 = load ptr, ptr %i.e, align 8
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.l, %bb.k
  %i.bg = phi ptr [ %.pre.i.i40, %bb.l ], [ %i.ac, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.bg, ptr noundef nonnull align 1 dereferenceable(22) @.str.9, i64 22, i1 false)
  %i.bh = load ptr, ptr %i.e, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 22 ; 2 uses
  store ptr %i.bi, ptr %i.e, align 8
  store i8 0, ptr %i.bi, align 1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph69, %bb.ab
  %indvars.iv72 = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next73, %bb.ab ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %indvars.iv72 ; 3 uses
  %i.bk = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load ptr, ptr %i.g, align 8
  %.not.i41 = icmp ult ptr %i.bl, %i.bm
  br i1 %.not.i41, label %_ZN8nanobind6detail6Buffer3putEc.exit43, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2)
  %.pre.i42 = load ptr, ptr %i.e, align 8
  br label %_ZN8nanobind6detail6Buffer3putEc.exit43

_ZN8nanobind6detail6Buffer3putEc.exit43:          ; preds = %bb.m, %bb.n
  %i.bn = phi ptr [ %.pre.i42, %bb.n ], [ %i.bk, %bb.m ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store ptr %i.bo, ptr %i.e, align 8
  store i8 10, ptr %i.bn, align 1
  %i.bp = load ptr, ptr %i.e, align 8
  store i8 0, ptr %i.bp, align 1
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bq = trunc nuw i64 %indvars.iv.next73 to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %_ZN8nanobind6detail6Buffer3putEc.exit43
  %.07.i = phi i32 [ %i.bq, %_ZN8nanobind6detail6Buffer3putEc.exit43 ], [ %i.bx, %bb.o ] ; 3 uses
  %.0.i = phi i64 [ 10, %_ZN8nanobind6detail6Buffer3putEc.exit43 ], [ %i.bv, %bb.o ] ; 3 uses
  %i.br = urem i32 %.07.i, 10
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @.str.42, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = add i64 %.0.i, -1                       ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bv
  store i8 %i.bu, ptr %i.bw, align 1
  %i.bx = udiv i32 %.07.i, 10
  %.not.i44 = icmp ult i32 %.07.i, 10
  br i1 %.not.i44, label %bb.p, label %bb.o, !llvm.loop !0

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bv
  %i.bz = sub i64 11, %.0.i                       ; 3 uses
  %i.ca = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  %i.cc = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not.i.i45 = icmp ult ptr %i.cb, %i.cc
  br i1 %.not.i.i45, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = add i64 %i.ce, 12
  %i.cg = add i64 %.0.i, %i.cd
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ch)
  %.pre.i.i46 = load ptr, ptr %i.e, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ci = phi ptr [ %.pre.i.i46, %bb.q ], [ %i.ca, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr nonnull align 1 %i.by, i64 %i.bz, i1 false)
  %i.cj = load ptr, ptr %i.e, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.bz ; 2 uses
  store ptr %i.ck, ptr %i.e, align 8
  store i8 0, ptr %i.ck, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.cl = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not.i.i47 = icmp ult ptr %i.cm, %i.cn
  br i1 %.not.i.i47, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = add i64 %i.cp, 5
  %i.cr = sub i64 %i.cq, %i.co
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cr)
  %.pre.i.i48 = load ptr, ptr %i.e, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cs = phi ptr [ %.pre.i.i48, %bb.s ], [ %i.cl, %bb.r ]
  store i32 1616912430, ptr %i.cs, align 1
  %i.ct = load ptr, ptr %i.e, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  store ptr %i.cu, ptr %i.e, align 8
  store i8 0, ptr %i.cu, align 1
  %i.cv = load ptr, ptr %i.j, align 8
  %i.cw = call fastcc noundef i32 @_ZN8nanobind6detailL24nb_func_render_signatureERNS0_6BufferEPNS0_12nb_internalsEPKNS0_9func_dataEb(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.cv, ptr noundef nonnull %i.bj, i1 noundef zeroext false) #25 ; 0 uses
  %i.cx = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.cz = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not.i.i49 = icmp ult ptr %i.cy, %i.cz
  br i1 %.not.i.i49, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = add i64 %i.db, 5
  %i.dd = sub i64 %i.dc, %i.da
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dd)
  %.pre.i.i50 = load ptr, ptr %i.e, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.de = phi ptr [ %.pre.i.i50, %bb.u ], [ %i.cx, %bb.t ]
  store i32 168452192, ptr %i.de, align 1
  %i.df = load ptr, ptr %i.e, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  store ptr %i.dg, ptr %i.e, align 8
  store i8 0, ptr %i.dg, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.di = load i32, ptr %i.dh, align 8
  %i.dj = and i32 %i.di, 4
  %.not = icmp eq i32 %i.dj, 0
  br i1 %.not, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %i.dm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dl) #28 ; 4 uses
  %i.dn = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dm
  %i.dp = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not.i.i52 = icmp ult ptr %i.do, %i.dp
  br i1 %.not.i.i52, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %.neg.i.i53 = add i64 %i.dm, 1
  %i.ds = add i64 %.neg.i.i53, %i.dr
  %i.dt = sub i64 %i.ds, %i.dq
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dt)
  %.pre.i.i54 = load ptr, ptr %i.e, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.du = phi ptr [ %.pre.i.i54, %bb.x ], [ %i.dn, %bb.w ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.du, ptr nonnull align 1 %i.dl, i64 %i.dm, i1 false)
  %i.dv = load ptr, ptr %i.e, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dm ; 2 uses
  store ptr %i.dw, ptr %i.e, align 8
  store i8 0, ptr %i.dw, align 1
  %i.dx = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.dz = load ptr, ptr %i.g, align 8
  %.not.i56 = icmp ult ptr %i.dy, %i.dz
  br i1 %.not.i56, label %_ZN8nanobind6detail6Buffer3putEc.exit58, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2)
  %.pre.i57 = load ptr, ptr %i.e, align 8
  br label %_ZN8nanobind6detail6Buffer3putEc.exit58

_ZN8nanobind6detail6Buffer3putEc.exit58:          ; preds = %bb.y, %bb.z
  %i.ea = phi ptr [ %.pre.i57, %bb.z ], [ %i.dx, %bb.y ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store ptr %i.eb, ptr %i.e, align 8
  store i8 10, ptr %i.ea, align 1
  %i.ec = load ptr, ptr %i.e, align 8
  store i8 0, ptr %i.ec, align 1
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ad
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %i.ee = load ptr, ptr %2, align 8
  call void @free(ptr noundef %i.ee) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.ed

bb.ab:                                            ; preds = %_ZN8nanobind6detail6Buffer3putEc.exit58, %bb.v
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count
  br i1 %exitcond76.not, label %.loopexit, label %bb.m, !llvm.loop !66

.loopexit:                                        ; preds = %bb.ab, %_ZN8nanobind6detail6BufferC2Em.exit, %_ZN8nanobind6detail6Buffer3putEc.exit38, %._crit_edge
  %i.ef = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.eg = load ptr, ptr %2, align 8               ; 4 uses
  %.not30 = icmp eq ptr %i.ef, %i.eg
  br i1 %.not30, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.loopexit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.ei = icmp ult ptr %i.ef, %i.eh
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 -1
  %storemerge.i = select i1 %i.ei, ptr %i.eg, ptr %i.ej ; 2 uses
  store ptr %storemerge.i, ptr %i.e, align 8
  store i8 0, ptr %storemerge.i, align 1
  %.pre = load ptr, ptr %2, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.loopexit
  %i.ek = phi ptr [ %.pre, %bb.ac ], [ %i.eg, %.loopexit ]
  %i.el = invoke ptr @PyUnicode_FromString(ptr noundef %i.ek)
          to label %bb.ae unwind label %bb.aa

bb.ae:                                            ; preds = %bb.ad
  %i.em = load ptr, ptr %2, align 8
  call void @free(ptr noundef %i.em) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret ptr %i.el
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN8nanobind6detail16nb_func_getattroEP7_objectS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %1, ptr noundef null) ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN8nanobind6detailL18nb_func_get_moduleEP7_object.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(11) @.str.12) #28
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.e, align 8             ; 5 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_ZN8nanobind6detailL18nb_func_get_moduleEP7_object.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %.val, align 8
  %i.g = add i32 %i.f, 1                          ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN8nanobind6detailL18nb_func_get_moduleEP7_object.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.g, ptr %.val, align 8
  br label %_ZN8nanobind6detailL18nb_func_get_moduleEP7_object.exit

bb.f:                                             ; preds = %bb.b
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(9) @.str.13) #28
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, 1
  %.not.i14 = icmp eq i32 %i.m, 0
  br i1 %.not.i14, label %_ZN8nanobind6detailL16nb_func_get_nameEP7_object.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load ptr, ptr %i.n, align 8
  br label %_ZN8nanobind6detailL16nb_func_get_nameEP7_object.exit

_ZN8nanobind6detailL16nb_func_get_nameEP7_object.exit: ; preds = %bb.g, %bb.h
  %.0.i15 = phi ptr [ %i.o, %bb.h ], [ @.str.4, %bb.g ]
  %i.p = tail call noundef ptr @PyUnicode_FromString(ptr noundef %.0.i15)
  br label %_ZN8nanobind6detailL18nb_func_get_moduleEP7_object.exit

bb.i:                                             ; preds = %bb.f
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(13) @.str.14) #28
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, 3
  %or.cond.not.i = icmp eq i32 %i.u, 3
  br i1 %or.cond.not.i, label %bb.k, label %_ZN8nanobind6detailL18nb_func_get_moduleEP7_object.exit

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 672
  %i.aa = load ptr, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ab = invoke i32 @_PyObject_LookupAttr(ptr noundef %i.w, ptr noundef %i.aa, ptr noundef nonnull %i.a)
          to label %bb.l unwind label %bb.o       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = icmp slt i32 %i.ab, 0
  br i1 %i.ad, label %bb.n, label %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit.thread.i

bb.n:                                             ; preds = %bb.m
  invoke void @PyErr_Clear()
          to label %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit.thread.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #26
  unreachable

_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit.thread.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.s

_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit.i: ; preds = %bb.l
  %i.ag = load ptr, ptr %i.a, align 8             ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not14.i = icmp eq ptr %i.ag, null
  br i1 %.not14.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.43, ptr noundef nonnull %i.ag, ptr noundef %i.ai) ; 3 uses
  %i.ak = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.al = and i64 %i.ak, 2147483648
  %.not.i16 = icmp eq i64 %i.al, 0
  br i1 %.not.i16, label %bb.q, label %_ZN8nanobind6detailL18nb_func_get_moduleEP7_object.exit

bb.q:                                             ; preds = %bb.p
  %i.am = add nsw i64 %i.ak, -1                   ; 2 uses
  store i64 %i.am, ptr %i.ag, align 8
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.r, label %_ZN8nanobind6detailL18nb_func_get_moduleEP7_object.exit

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag)
  br label %_ZN8nanobind6detailL18nb_func_get_moduleEP7_object.exit

bb.s:                                             ; preds = %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit.i, %_ZN8nanobind6detail7getattrEP7_objectS2_S2_.exit.thread.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call ptr @PyUnicode_FromString(ptr noundef %i.ap)
  br label %_ZN8nanobind6detailL18nb_func_get_moduleEP7_object.exit

bb.t:                                             ; preds = %bb.i
  %i.ar = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(8) @.str.15) #28
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.at = tail call noundef ptr @_ZN8nanobind6detail15nb_func_get_docEP7_objectPv(ptr noundef %0, ptr poison)
  br label %_ZN8nanobind6detailL18nb_func_get_moduleEP7_object.exit

bb.v:                                             ; preds = %bb.t
  %i.au = tail call ptr @PyObject_GenericGetAttr(ptr noundef %0, ptr noundef %1)
  br label %_ZN8nanobind6detailL18nb_func_get_moduleEP7_object.exit

_ZN8nanobind6detailL18nb_func_get_moduleEP7_object.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.j, %bb.e, %bb.d, %bb.c, %bb.a, %bb.v, %bb.u, %_ZN8nanobind6detailL16nb_func_get_nameEP7_object.exit
  %.0 = phi ptr [ null, %bb.a ], [ %i.p, %_ZN8nanobind6detailL16nb_func_get_nameEP7_object.exit ], [ %.val, %bb.e ], [ %i.at, %bb.u ], [ %i.au, %bb.v ], [ @_Py_NoneStruct, %bb.c ], [ %.val, %bb.d ], [ %i.aj, %bb.r ], [ %i.aq, %bb.s ], [ %i.aj, %bb.p ], [ %i.aj, %bb.q ], [ @_Py_NoneStruct, %bb.j ]
  ret ptr %.0
}

declare ptr @PyObject_GenericGetAttr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN8nanobind6detail24nb_bound_method_getattroEP7_objectS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %1, ptr noundef null) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(8) @.str.15) #28
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.critedge18, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(11) @.str.12) #28
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.critedge18, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c
  %i.f = tail call ptr @PyObject_GenericGetAttr(ptr noundef %0, ptr noundef %1) ; 2 uses
  %.not15 = icmp eq ptr %i.f, null
  br i1 %.not15, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.critedge
  %i.g = load ptr, ptr @PyExc_AttributeError, align 8
  %i.h = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.g)
  %.not16 = icmp eq i32 %i.h, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @PyErr_Clear()
  br label %.critedge18

.critedge18:                                      ; preds = %bb.b, %bb.e, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr @_ZN8nanobind6detail16nb_func_getattroEP7_objectS2_(ptr noundef %i.j, ptr noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %.critedge, %.critedge18
  %.1 = phi ptr [ %i.k, %.critedge18 ], [ %i.f, %.critedge ], [ null, %bb.d ]
  ret ptr %.1
}

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #2

declare void @PyErr_Clear() local_unnamed_addr #2

; Function Attrs: mustprogress noinline uwtable
define hidden noundef nonnull ptr @_ZN8nanobind6detail9type_nameEPKSt9type_info(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 42
  %.idx.i = zext i1 %i.e to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4
  %i.g = call ptr @__cxa_demangle(ptr noundef nonnull %i.f, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a) ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = call noalias ptr @strdup(ptr noundef nonnull readonly %i.f) #25 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %_ZN8nanobind6detail12strdup_checkEPKc.exit, !prof !6

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.1) #26
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.i = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.16) #28 ; 2 uses
  %.not1.i = icmp eq ptr %i.i, null
  br i1 %.not1.i, label %_ZN8nanobind6detail12strdup_checkEPKc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.j = phi ptr [ %i.n, %.lr.ph.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10 ; 2 uses
  %i.l = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #28
  %i.m = add i64 %i.l, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %i.k, i64 %i.m, i1 false)
  %i.n = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(1) @.str.16) #28 ; 2 uses
  %.not.i8 = icmp eq ptr %i.n, null
  br i1 %.not.i8, label %_ZN8nanobind6detail12strdup_checkEPKc.exit, label %.lr.ph.i, !llvm.loop !67

_ZN8nanobind6detail12strdup_checkEPKc.exit:       ; preds = %.lr.ph.i, %bb.d, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ %i.g, %bb.d ], [ %i.g, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %.0
}

declare ptr @__cxa_demangle(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #2

declare i32 @_PyObject_LookupAttr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PyUnicode_InternInPlace(ptr noundef) local_unnamed_addr #2

declare ptr @PyDict_New() local_unnamed_addr #2

declare i32 @PyDict_SetItem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noalias noundef ptr @_ZN8nanobind6detailL23nb_func_error_noconvertEP7_objectPKS2_mS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::Buffer", align 8 ; 8 uses
  %i.a = invoke ptr @PyErr_Occurred()
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.b = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #27 ; 5 uses
  store ptr %i.b, ptr %4, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr @stderr, align 8
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.32, i64 54, i64 1, ptr %i.c) #29 ; 0 uses
  tail call void @abort() #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.g, ptr %i.f, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.b, ptr noundef nonnull align 1 dereferenceable(80) @.str.20, i64 80, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  store ptr %i.h, ptr %i.d, align 8
  store i8 0, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call fastcc noundef i32 @_ZN8nanobind6detailL24nb_func_render_signatureERNS0_6BufferEPNS0_12nb_internalsEPKNS0_9func_dataEb(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.j, ptr noundef nonnull %i.e, i1 noundef zeroext false) #25 ; 0 uses
  %i.l = load ptr, ptr @PyExc_TypeError, align 8
  %i.m = load ptr, ptr %4, align 8
  invoke void @PyErr_SetString(ptr noundef %i.l, ptr noundef %i.m)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %4, align 8
  call void @free(ptr noundef %i.n) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  ret ptr null

bb.h:                                             ; preds = %bb.e, %bb.a
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #26
  unreachable
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #15

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN8nanobind6detailL29nb_func_convert_cpp_exceptionEP7_object(ptr nofree noundef readonly captures(none) %0) unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 528
  %.012 = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not13 = icmp eq ptr %.012, null
  br i1 %.not13, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %.0, %bb.d ], [ %.012, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.014, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.f)
          to label %.loopexit unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = call ptr @__cxa_begin_catch(ptr %i.h) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.j = load ptr, ptr %3, align 8
  store ptr null, ptr %3, align 8
  %i.k = load ptr, ptr %2, align 8                ; 2 uses
  store ptr %i.k, ptr %1, align 8
  store ptr %i.j, ptr %2, align 8
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.b
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #25
  %.pr = load ptr, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %.0 = load ptr, ptr %i.l, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !68

.critedge:                                        ; preds = %bb.d, %bb.a
  %i.m = load ptr, ptr @PyExc_SystemError, align 8
  invoke void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.22)
          to label %.loopexit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph, %.critedge
  %i.n = load ptr, ptr %2, align 8
  %.not.i8 = icmp eq ptr %i.n, null
  br i1 %.not.i8, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9, label %bb.e

bb.e:                                             ; preds = %.loopexit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9:  ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %.critedge
  %lpad.loopexit.split-lp16 = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %lpad.loopexit.split-lp16, 0
  call void @__clang_call_terminate(ptr %i.o) #26
  unreachable
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN8nanobind6detailL28set_builtin_exception_statusERNS_4abi117builtin_exceptionE(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.j [
    i32 0, label %bb.k
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #26
  unreachable

bb.k:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0.in = phi ptr [ @PyExc_AttributeError, %bb.i ], [ @PyExc_StopIteration, %bb.b ], [ @PyExc_IndexError, %bb.c ], [ @PyExc_KeyError, %bb.d ], [ @PyExc_ValueError, %bb.e ], [ @PyExc_TypeError, %bb.f ], [ @PyExc_BufferError, %bb.g ], [ @PyExc_ImportError, %bb.h ], [ @PyExc_RuntimeError, %bb.a ]
  %.0 = load ptr, ptr %.0.in, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  tail call void @PyErr_SetString(ptr noundef %.0, ptr noundef %i.f)
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.04 = phi i1 [ true, %bb.k ], [ false, %bb.a ]
  ret i1 %.04
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef ptr @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 4 uses
  %4 = alloca %"struct.nanobind::detail::Buffer", align 8 ; 25 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.b, align 8             ; 4 uses
  %i.c = trunc i64 %.val to i32                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 512
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %_ZNKR8nanobind6handle7dec_refEv.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.g = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #27 ; 6 uses
  store ptr %i.g, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 65 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stderr, align 8
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.32, i64 54, i64 1, ptr %i.i) #29 ; 0 uses
  tail call void @abort() #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 16 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store ptr %i.k, ptr %i.j, align 8
  store ptr %i.g, ptr %i.h, align 8
  store i8 0, ptr %i.g, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #28 ; 4 uses
  %.not.i.i53 = icmp samesign ult i64 %i.n, 128
  br i1 %.not.i.i53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add i64 %i.n, -127
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.o)
  %.pre.i.i = load ptr, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = phi ptr [ %.pre.i.i, %bb.e ], [ %i.g, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %i.m, i64 %i.n, i1 false)
  %i.q = load ptr, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 2 uses
  store ptr %i.r, ptr %i.h, align 8
  store i8 0, ptr %i.r, align 1
  %i.s = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 81
  %i.u = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i.i54 = icmp ult ptr %i.t, %i.u
  br i1 %.not.i.i54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = add i64 %i.w, 82
  %i.y = sub i64 %i.x, %i.v
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.y)
  %.pre.i.i55 = load ptr, ptr %i.h, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = phi ptr [ %.pre.i.i55, %bb.g ], [ %i.s, %bb.f ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(81) %i.z, ptr noundef nonnull align 1 dereferenceable(81) @.str.23, i64 81, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 81 ; 3 uses
  store ptr %i.aa, ptr %i.h, align 8
  store i8 0, ptr %i.aa, align 1
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(8) @.str.6) #28
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = icmp ugt i32 %i.c, 1
  %or.cond = and i1 %i.ae, %i.ad
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ag = load i16, ptr %i.af, align 4
  %i.ah = icmp eq i16 %i.ag, 1                    ; 2 uses
  %i.ai = add i64 %.val, 4294967295
  %spec.select = select i1 %i.ah, i64 160, i64 64
  %spec.select183 = select i1 %i.ah, i64 %i.ai, i64 %.val
  br label %.lr.ph

bb.j:                                             ; preds = %bb.h
  %.not137 = icmp eq i32 %i.c, 0
  br i1 %.not137, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %i.aj = phi i64 [ 64, %bb.j ], [ %spec.select, %bb.i ]
  %.043174 = phi i64 [ %.val, %bb.j ], [ %spec.select183, %bb.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %wide.trip.count = and i64 %.043174, 4294967295
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  br label %bb.l

._crit_edge.loopexit:                             ; preds = %_ZN8nanobind6detail6Buffer3putEc.exit
  %.pre = load ptr, ptr %i.h, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %i.am = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.aa, %bb.j ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 21
  %i.ao = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not.i.i56 = icmp ult ptr %i.an, %i.ao
  br i1 %.not.i.i56, label %_ZN8nanobind6detail6Buffer3putILm22EEEvRAT__Kc.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = add i64 %i.aq, 22
  %i.as = sub i64 %i.ar, %i.ap
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.as)
  %.pre.i.i57 = load ptr, ptr %i.h, align 8
  br label %_ZN8nanobind6detail6Buffer3putILm22EEEvRAT__Kc.exit

_ZN8nanobind6detail6Buffer3putILm22EEEvRAT__Kc.exit: ; preds = %._crit_edge, %bb.k
  %i.at = phi ptr [ %.pre.i.i57, %bb.k ], [ %i.am, %._crit_edge ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.at, ptr noundef nonnull align 1 dereferenceable(21) @.str.26, i64 21, i1 false)
  %i.au = load ptr, ptr %i.h, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 21 ; 2 uses
  store ptr %i.av, ptr %i.h, align 8
  store i8 0, ptr %i.av, align 1
  %.not138 = icmp eq i64 %2, 0
  br i1 %.not138, label %._crit_edge132.thread, label %.lr.ph131

bb.l:                                             ; preds = %.lr.ph, %_ZN8nanobind6detail6Buffer3putEc.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8nanobind6detail6Buffer3putEc.exit ] ; 2 uses
  %i.aw = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not.i.i58 = icmp ult ptr %i.ax, %i.ay
  br i1 %.not.i.i58, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = add i64 %i.ba, 5
  %i.bc = sub i64 %i.bb, %i.az
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bc)
  %.pre.i.i59 = load ptr, ptr %i.h, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bd = phi ptr [ %.pre.i.i59, %bb.m ], [ %i.aw, %bb.l ]
  store i32 538976288, ptr %i.bd, align 1
  %i.be = load ptr, ptr %i.h, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store ptr %i.bf, ptr %i.h, align 8
  store i8 0, ptr %i.bf, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bg = trunc nuw i64 %indvars.iv.next to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.07.i = phi i32 [ %i.bg, %bb.n ], [ %i.bn, %bb.o ] ; 3 uses
  %.0.i = phi i64 [ 10, %bb.n ], [ %i.bl, %bb.o ] ; 3 uses
  %i.bh = urem i32 %.07.i, 10
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @.str.42, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = add i64 %.0.i, -1                       ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  store i8 %i.bk, ptr %i.bm, align 1
  %i.bn = udiv i32 %.07.i, 10
  %.not.i60 = icmp ult i32 %.07.i, 10
  br i1 %.not.i60, label %bb.p, label %bb.o, !llvm.loop !0

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  %i.bp = sub i64 11, %.0.i                       ; 3 uses
  %i.bq = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp
  %i.bs = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not.i.i61 = icmp ult ptr %i.br, %i.bs
  br i1 %.not.i.i61, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = add i64 %i.bu, 12
  %i.bw = add i64 %.0.i, %i.bt
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bx)
  %.pre.i.i62 = load ptr, ptr %i.h, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.by = phi ptr [ %.pre.i.i62, %bb.q ], [ %i.bq, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr nonnull align 1 %i.bo, i64 %i.bp, i1 false)
  %i.bz = load ptr, ptr %i.h, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bp ; 2 uses
  store ptr %i.ca, ptr %i.h, align 8
  store i8 0, ptr %i.ca, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.cb = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cd = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not.i.i63 = icmp ult ptr %i.cc, %i.cd
  br i1 %.not.i.i63, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = add i64 %i.cf, 3
  %i.ch = sub i64 %i.cg, %i.ce
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.ch)
  %.pre.i.i64 = load ptr, ptr %i.h, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ci = phi ptr [ %.pre.i.i64, %bb.s ], [ %i.cb, %bb.r ]
  store i16 8238, ptr %i.ci, align 1
  %i.cj = load ptr, ptr %i.h, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2 ; 2 uses
  store ptr %i.ck, ptr %i.h, align 8
  store i8 0, ptr %i.ck, align 1
  %i.cl = load ptr, ptr %i.ak, align 8
  %i.cm = getelementptr inbounds nuw [96 x i8], ptr %i.al, i64 %indvars.iv
  %i.cn = call fastcc noundef i32 @_ZN8nanobind6detailL24nb_func_render_signatureERNS0_6BufferEPNS0_12nb_internalsEPKNS0_9func_dataEb(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.cl, ptr noundef nonnull %i.cm, i1 noundef zeroext false) #25 ; 0 uses
  %i.co = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cq = load ptr, ptr %i.j, align 8
  %.not.i65 = icmp ult ptr %i.cp, %i.cq
  br i1 %.not.i65, label %_ZN8nanobind6detail6Buffer3putEc.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 2)
  %.pre.i = load ptr, ptr %i.h, align 8
  br label %_ZN8nanobind6detail6Buffer3putEc.exit

_ZN8nanobind6detail6Buffer3putEc.exit:            ; preds = %bb.t, %bb.u
  %i.cr = phi ptr [ %.pre.i, %bb.u ], [ %i.co, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store ptr %i.cs, ptr %i.h, align 8
  store i8 10, ptr %i.cr, align 1
  %i.ct = load ptr, ptr %i.h, align 8
  store i8 0, ptr %i.ct, align 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.l, !llvm.loop !69

._crit_edge132:                                   ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit75
  %.not49 = icmp eq ptr %3, null
  br i1 %.not49, label %bb.az, label %bb.ae

._crit_edge132.thread:                            ; preds = %_ZN8nanobind6detail6Buffer3putILm22EEEvRAT__Kc.exit
  %.not49176 = icmp eq ptr %3, null
  br i1 %.not49176, label %bb.az, label %.thread177

.lr.ph131:                                        ; preds = %_ZN8nanobind6detail6Buffer3putILm22EEEvRAT__Kc.exit, %_ZNKR8nanobind6handle7dec_refEv.exit75
  %.040130 = phi i64 [ %i.dj, %_ZNKR8nanobind6handle7dec_refEv.exit75 ], [ 0, %_ZN8nanobind6detail6Buffer3putILm22EEEvRAT__Kc.exit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.040130
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef ptr @_ZN8nanobind6detail12nb_inst_nameEP7_object(ptr noundef %i.cv) #25 ; 5 uses
  %i.cx = invoke noundef ptr @PyUnicode_AsUTF8AndSize(ptr noundef %i.cw, ptr noundef null)
          to label %_ZNK8nanobind3str5c_strEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNK8nanobind3str5c_strEv.exit:                   ; preds = %.lr.ph131
  %i.cy = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cx) #28 ; 4 uses
  %i.cz = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy
  %i.db = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not.i.i66 = icmp ult ptr %i.da, %i.db
  br i1 %.not.i.i66, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK8nanobind3str5c_strEv.exit
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %.neg.i.i67 = add i64 %i.cy, 1
  %i.de = add i64 %.neg.i.i67, %i.dd
  %i.df = sub i64 %i.de, %i.dc
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.df)
  %.pre.i.i68 = load ptr, ptr %i.h, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK8nanobind3str5c_strEv.exit
  %i.dg = phi ptr [ %.pre.i.i68, %bb.v ], [ %i.cz, %_ZNK8nanobind3str5c_strEv.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dg, ptr nonnull align 1 %i.cx, i64 %i.cy, i1 false)
  %i.dh = load ptr, ptr %i.h, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cy ; 2 uses
  store ptr %i.di, ptr %i.h, align 8
  store i8 0, ptr %i.di, align 1
  %i.dj = add nuw i64 %.040130, 1                 ; 3 uses
  %i.dk = icmp ult i64 %i.dj, %2
  br i1 %i.dk, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dl = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.dn = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not.i.i70 = icmp ult ptr %i.dm, %i.dn
  br i1 %.not.i.i70, label %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit72, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = add i64 %i.dp, 3
  %i.dr = sub i64 %i.dq, %i.do
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.dr)
  %.pre.i.i71 = load ptr, ptr %i.h, align 8
  br label %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit72

_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit72: ; preds = %bb.x, %bb.y
  %i.ds = phi ptr [ %.pre.i.i71, %bb.y ], [ %i.dl, %bb.x ]
  store i16 8236, ptr %i.ds, align 1
  %i.dt = load ptr, ptr %i.h, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2 ; 2 uses
  store ptr %i.du, ptr %i.h, align 8
  store i8 0, ptr %i.du, align 1
  br label %bb.z

bb.z:                                             ; preds = %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit72, %bb.w
  %.not.i.i73 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i73, label %_ZNKR8nanobind6handle7dec_refEv.exit75, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = load i64, ptr %i.cw, align 8            ; 2 uses
  %i.dw = and i64 %i.dv, 2147483648
  %.not2.i.i74 = icmp eq i64 %i.dw, 0
  br i1 %.not2.i.i74, label %bb.ab, label %_ZNKR8nanobind6handle7dec_refEv.exit75

bb.ab:                                            ; preds = %bb.aa
  %i.dx = add nsw i64 %i.dv, -1                   ; 2 uses
  store i64 %i.dx, ptr %i.cw, align 8
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %bb.ac, label %_ZNKR8nanobind6handle7dec_refEv.exit75

bb.ac:                                            ; preds = %bb.ab
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.cw)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit75 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #26
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit75:           ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac
  %exitcond143.not = icmp eq i64 %i.dj, %2
  br i1 %exitcond143.not, label %._crit_edge132, label %.lr.ph131, !llvm.loop !70

bb.ae:                                            ; preds = %._crit_edge132
  %.pre146 = load ptr, ptr %i.h, align 8          ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.pre146, i64 2
  %i.ec = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not.i.i76 = icmp ult ptr %i.eb, %i.ec
  br i1 %.not.i.i76, label %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit78, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %.pre146 to i64
  %i.ef = add i64 %i.ee, 3
  %i.eg = sub i64 %i.ef, %i.ed
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.eg)
  %.pre.i.i77 = load ptr, ptr %i.h, align 8
  br label %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit78

_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit78: ; preds = %bb.ae, %bb.af
  %i.eh = phi ptr [ %.pre.i.i77, %bb.af ], [ %.pre146, %bb.ae ]
  store i16 8236, ptr %i.eh, align 1
  %i.ei = load ptr, ptr %i.h, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 2 ; 2 uses
  store ptr %i.ej, ptr %i.h, align 8
  store i8 0, ptr %i.ej, align 1
  br label %.thread177

.thread177:                                       ; preds = %._crit_edge132.thread, %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit78
  %.pre146178 = load ptr, ptr %i.h, align 8       ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.pre146178, i64 11
  %i.el = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not.i.i79 = icmp ult ptr %i.ek, %i.el
  br i1 %.not.i.i79, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.thread177
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %.pre146178 to i64
  %i.eo = add i64 %i.en, 12
  %i.ep = sub i64 %i.eo, %i.em
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.ep)
  %.pre.i.i80 = load ptr, ptr %i.h, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread177
  %i.eq = phi ptr [ %.pre.i.i80, %bb.ag ], [ %.pre146178, %.thread177 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.eq, ptr noundef nonnull align 1 dereferenceable(11) @.str.28, i64 11, i1 false)
  %i.er = load ptr, ptr %i.h, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 11 ; 2 uses
  store ptr %i.es, ptr %i.h, align 8
  store i8 0, ptr %i.es, align 1
  %i.et = getelementptr i8, ptr %3, i64 16
  %.val52 = load i64, ptr %i.et, align 8          ; 2 uses
  %i.eu = icmp sgt i64 %.val52, 0
  br i1 %i.eu, label %.lr.ph135, label %._crit_edge136

.lr.ph135:                                        ; preds = %bb.ah
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ew = getelementptr [8 x i8], ptr %1, i64 %2
  br label %bb.aj

._crit_edge136:                                   ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit101, %bb.ah
  %i.ex = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ey = load ptr, ptr %4, align 8               ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fa = icmp ult ptr %i.ex, %i.ez
  %i.fb = getelementptr inbounds i8, ptr %i.ex, i64 -2
  %storemerge.i = select i1 %i.fa, ptr %i.ey, ptr %i.fb ; 2 uses
  store ptr %storemerge.i, ptr %i.h, align 8
  store i8 0, ptr %storemerge.i, align 1
  %i.fc = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %i.fe = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not.i.i81 = icmp ult ptr %i.fd, %i.fe
  br i1 %.not.i.i81, label %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit83, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge136
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fc to i64
  %i.fh = add i64 %i.fg, 3
  %i.fi = sub i64 %i.fh, %i.ff
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.fi)
  %.pre.i.i82 = load ptr, ptr %i.h, align 8
  br label %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit83

_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit83: ; preds = %._crit_edge136, %bb.ai
  %i.fj = phi ptr [ %.pre.i.i82, %bb.ai ], [ %i.fc, %._crit_edge136 ]
  store i16 32032, ptr %i.fj, align 1
  %i.fk = load ptr, ptr %i.h, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 2 ; 2 uses
  store ptr %i.fl, ptr %i.h, align 8
  store i8 0, ptr %i.fl, align 1
  br label %bb.az

bb.aj:                                            ; preds = %.lr.ph135, %_ZNKR8nanobind6handle7dec_refEv.exit101
  %.039133 = phi i64 [ 0, %.lr.ph135 ], [ %i.hp, %_ZNKR8nanobind6handle7dec_refEv.exit101 ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %.039133
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = getelementptr [8 x i8], ptr %i.ew, i64 %.039133
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = invoke ptr @PyUnicode_AsUTF8AndSize(ptr noundef %i.fn, ptr noundef null)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not51 = icmp eq ptr %i.fq, null
  br i1 %.not51, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @PyErr_Clear()
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0 = phi ptr [ %i.fq, %bb.ak ], [ @.str.29, %bb.al ] ; 2 uses
  %i.fr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #28 ; 4 uses
  %i.fs = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fr
  %i.fu = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not.i.i84 = icmp ult ptr %i.ft, %i.fu
  br i1 %.not.i.i84, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.fs to i64
  %.neg.i.i85 = add i64 %i.fr, 1
  %i.fx = add i64 %.neg.i.i85, %i.fw
  %i.fy = sub i64 %i.fx, %i.fv
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.fy)
  %.pre.i.i86 = load ptr, ptr %i.h, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fz = phi ptr [ %.pre.i.i86, %bb.an ], [ %i.fs, %bb.am ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fz, ptr nonnull align 1 %.0, i64 %i.fr, i1 false)
  %i.ga = load ptr, ptr %i.h, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fr ; 2 uses
  store ptr %i.gb, ptr %i.h, align 8
  store i8 0, ptr %i.gb, align 1
  %i.gc = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.ge = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not.i.i88 = icmp ult ptr %i.gd, %i.ge
  br i1 %.not.i.i88, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.gc to i64
  %i.gh = add i64 %i.gg, 3
  %i.gi = sub i64 %i.gh, %i.gf
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.gi)
  %.pre.i.i89 = load ptr, ptr %i.h, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.gj = phi ptr [ %.pre.i.i89, %bb.ap ], [ %i.gc, %bb.ao ]
  store i16 8250, ptr %i.gj, align 1
  %i.gk = load ptr, ptr %i.h, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 2 ; 2 uses
  store ptr %i.gl, ptr %i.h, align 8
  store i8 0, ptr %i.gl, align 1
  %i.gm = call noundef ptr @_ZN8nanobind6detail12nb_inst_nameEP7_object(ptr noundef %i.fp) #25 ; 5 uses
  %i.gn = invoke noundef ptr @PyUnicode_AsUTF8AndSize(ptr noundef %i.gm, ptr noundef null)
          to label %_ZNK8nanobind3str5c_strEv.exit91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNK8nanobind3str5c_strEv.exit91:                 ; preds = %bb.aq
  %i.go = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gn) #28 ; 4 uses
  %i.gp = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.go
  %i.gr = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not.i.i92 = icmp ult ptr %i.gq, %i.gr
  br i1 %.not.i.i92, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNK8nanobind3str5c_strEv.exit91
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gp to i64
  %.neg.i.i93 = add i64 %i.go, 1
  %i.gu = add i64 %.neg.i.i93, %i.gt
  %i.gv = sub i64 %i.gu, %i.gs
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.gv)
  %.pre.i.i94 = load ptr, ptr %i.h, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZNK8nanobind3str5c_strEv.exit91
  %i.gw = phi ptr [ %.pre.i.i94, %bb.ar ], [ %i.gp, %_ZNK8nanobind3str5c_strEv.exit91 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gw, ptr nonnull align 1 %i.gn, i64 %i.go, i1 false)
  %i.gx = load ptr, ptr %i.h, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.go ; 2 uses
  store ptr %i.gy, ptr %i.h, align 8
  store i8 0, ptr %i.gy, align 1
  %i.gz = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 2
  %i.hb = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not.i.i96 = icmp ult ptr %i.ha, %i.hb
  br i1 %.not.i.i96, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.gz to i64
  %i.he = add i64 %i.hd, 3
  %i.hf = sub i64 %i.he, %i.hc
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.hf)
  %.pre.i.i97 = load ptr, ptr %i.h, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.hg = phi ptr [ %.pre.i.i97, %bb.at ], [ %i.gz, %bb.as ]
  store i16 8236, ptr %i.hg, align 1
  %i.hh = load ptr, ptr %i.h, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 2 ; 2 uses
  store ptr %i.hi, ptr %i.h, align 8
  store i8 0, ptr %i.hi, align 1
  %.not.i.i99 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i99, label %_ZNKR8nanobind6handle7dec_refEv.exit101, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hj = load i64, ptr %i.gm, align 8            ; 2 uses
  %i.hk = and i64 %i.hj, 2147483648
  %.not2.i.i100 = icmp eq i64 %i.hk, 0
  br i1 %.not2.i.i100, label %bb.aw, label %_ZNKR8nanobind6handle7dec_refEv.exit101

bb.aw:                                            ; preds = %bb.av
  %i.hl = add nsw i64 %i.hj, -1                   ; 2 uses
  store i64 %i.hl, ptr %i.gm, align 8
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %bb.ax, label %_ZNKR8nanobind6handle7dec_refEv.exit101

bb.ax:                                            ; preds = %bb.aw
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.gm)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit101 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #26
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit101:          ; preds = %bb.au, %bb.av, %bb.aw, %bb.ax
  %i.hp = add nuw nsw i64 %.039133, 1             ; 2 uses
  %exitcond144.not = icmp eq i64 %i.hp, %.val52
  br i1 %exitcond144.not, label %._crit_edge136, label %bb.aj, !llvm.loop !71

bb.az:                                            ; preds = %._crit_edge132.thread, %_ZN8nanobind6detail6Buffer3putILm3EEEvRAT__Kc.exit83, %._crit_edge132
  %i.hq = load ptr, ptr @PyExc_TypeError, align 8
  %i.hr = load ptr, ptr %4, align 8
  invoke void @PyErr_SetString(ptr noundef %i.hq, ptr noundef %i.hr)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  %i.hs = load ptr, ptr %4, align 8
  call void @free(ptr noundef %i.hs) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNKR8nanobind6handle7dec_refEv.exit

_ZNKR8nanobind6handle7dec_refEv.exit:             ; preds = %bb.a, %bb.ba
  %.044 = phi ptr [ null, %bb.ba ], [ @_Py_NotImplementedStruct, %bb.a ]
  ret ptr %.044

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aj, %bb.al, %bb.aq, %.lr.ph131, %bb.az
  %lpad.loopexit.split-lp185 = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = extractvalue { ptr, i32 } %lpad.loopexit.split-lp185, 0
  call void @__clang_call_terminate(ptr %i.ht) #26
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail12cleanup_list7releaseEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = icmp ugt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZL9Py_DECREFP7_object.exit, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %.not = icmp eq i32 %i.e, 5
  br i1 %.not, label %bb.f, label %bb.e

bb.b:                                             ; preds = %.lr.ph, %_ZL9Py_DECREFP7_object.exit
  %.04 = phi i64 [ 1, %.lr.ph ], [ %i.m, %_ZL9Py_DECREFP7_object.exit ] ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.04
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = and i64 %i.i, 2147483648
  %.not3 = icmp eq i64 %i.j, 0
  br i1 %.not3, label %bb.c, label %_ZL9Py_DECREFP7_object.exit

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %i.i, -1                     ; 2 uses
  store i64 %i.k, ptr %i.h, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZL9Py_DECREFP7_object.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.h)
          to label %_ZL9Py_DECREFP7_object.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL9Py_DECREFP7_object.exit:                      ; preds = %bb.c, %bb.b, %bb.d
  %i.m = add nuw nsw i64 %.04, 1                  ; 2 uses
  %i.n = load i32, ptr %0, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge, !llvm.loop !72

bb.e:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  invoke void @PyMem_Free(ptr noundef %i.r)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.s, align 8
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.e
  %lpad.loopexit.split-lp6 = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %lpad.loopexit.split-lp6, 0
  tail call void @__clang_call_terminate(ptr %i.t) #26
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail12cleanup_list6expandEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = shl i32 %i.b, 1                          ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = invoke ptr @PyMem_Malloc(i64 noundef %i.e)
          to label %bb.b unwind label %bb.g       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.d, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @stderr, align 8
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.19, i64 64, i64 1, ptr %i.g) #29 ; 0 uses
  tail call void @abort() #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i32, ptr %0, align 8
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.i, i64 %i.l, i1 false)
  %i.m = load i32, ptr %i.a, align 4
  %.not5 = icmp eq i32 %i.m, 5
  br i1 %.not5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.h, align 8
  invoke void @PyMem_Free(ptr noundef %i.n)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.f, ptr %i.h, align 8
  store i32 %i.c, ptr %i.a, align 4
  ret void

bb.g:                                             ; preds = %bb.e, %bb.a
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #26
  unreachable
}

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #17

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_Occurred() local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = shl i64 %i.f, 1
  %i.h = add i64 %i.g, %1                         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.h) #27 ; 5 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @stderr, align 8
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.21, i64 54, i64 1, ptr %i.l) #29 ; 0 uses
  tail call void @abort() #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.m, %i.e                       ; 2 uses
  %i.o = add i64 %i.n, 1
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.o)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %spec.select, i1 false)
  tail call void @free(ptr noundef %i.c) #25
  store ptr %i.k, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  store ptr %i.p, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  store ptr %i.q, ptr %i.i, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZSt17current_exceptionv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN8nanobind6detail13error_restoreEP7_object(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare noundef ptr @_ZN8nanobind6detail12nb_inst_nameEP7_object(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN8nanobind6detailL29nb_func_vectorcall_medium_posEP7_objectPKS2_mS2_(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.nanobind::detail::cleanup_list", align 8 ; 10 uses
  %i.a = alloca [8 x ptr], align 16               ; 11 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.b, align 8             ; 3 uses
  %i.c = and i64 %2, 4611686018427387903          ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = and i32 %i.f, 64
  %i.h = icmp ne i32 %i.g, 0
  %i.i = and i32 %i.f, 128                        ; 2 uses
  %i.j = icmp ne i32 %i.i, 0
  %i.k = icmp ne i64 %i.c, 0
  %or.cond = and i1 %i.k, %i.h
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  store i32 1, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 5, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.o, ptr %i.s, align 8
  store ptr %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %.not = icmp eq i64 %.val, 0
  %i.t = and i64 %2, 4611686018427387904
  %.not42 = icmp eq i64 %i.t, 0
  %i.u = lshr exact i32 %i.i, 6
  br i1 %.not, label %.thread36, label %.preheader47.us.preheader

.preheader47.us.preheader:                        ; preds = %bb.c
  %i.v = icmp ne i64 %.val, 1
  %i.w = add nsw i64 %i.c, -1
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.x = icmp ult i64 %i.w, 3
  %unroll_iter = and i64 %2, 4611686018427387900
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod175 = icmp ne i64 %xtraiter, 0
  br label %.preheader47.us

.preheader47.us:                                  ; preds = %.preheader47.us.preheader, %._crit_edge.us
  %.010784.us = phi i1 [ false, %._crit_edge.us ], [ %i.v, %.preheader47.us.preheader ] ; 2 uses
  %.011483.us = phi ptr [ %.5119.us, %._crit_edge.us ], [ null, %.preheader47.us.preheader ]
  br label %bb.d

bb.d:                                             ; preds = %.preheader47.us, %bb.u
  %.010380.us = phi i64 [ 0, %.preheader47.us ], [ %i.dn, %bb.u ] ; 2 uses
  %.111579.us = phi ptr [ %.011483.us, %.preheader47.us ], [ %.5119.us, %bb.u ] ; 2 uses
  %i.y = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %.010380.us ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load i32, ptr %i.z, align 8
  %.fr108 = freeze i32 %i.aa                      ; 3 uses
  %i.ab = and i32 %.fr108, 8
  %i.ac = icmp ne i32 %i.ab, 0                    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 60
  %i.ae = load i16, ptr %i.ad, align 4            ; 3 uses
  %i.af = zext i16 %i.ae to i64                   ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 62
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = zext i16 %i.ah to i64
  %i.aj = icmp samesign ule i64 %i.c, %i.ai
  %i.ak = icmp samesign uge i64 %i.c, %i.af
  %or.cond3.us = or i1 %i.ak, %i.ac
  %or.cond132.us = select i1 %i.aj, i1 %or.cond3.us, i1 false
  br i1 %or.cond132.us, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.al = icmp eq i64 %i.c, %i.af
  br i1 %i.al, label %.preheader.us, label %.preheader45.us, !prof !5

.preheader45.us:                                  ; preds = %bb.e
  %.not107 = icmp eq i16 %i.ae, 0
  br i1 %.not107, label %.thread.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.preheader45.us
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  br i1 %i.ac, label %.lr.ph.split.us.us, label %.lr.ph.split.us85

.lr.ph.split.us85:                                ; preds = %.lr.ph.us, %bb.g
  %.110260.us86 = phi i64 [ %i.ar, %bb.g ], [ 0, %.lr.ph.us ] ; 5 uses
  %exitcond.not = icmp eq i64 %.110260.us86, %i.c
  br i1 %exitcond.not, label %.thread.us, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us85
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.110260.us86
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %.not125.us88 = icmp ne ptr %i.ao, null
  %i.ap = icmp ne ptr %i.ao, @_Py_NoneStruct
  %or.cond44.us90 = and i1 %.not125.us88, %i.ap
  br i1 %or.cond44.us90, label %bb.g, label %.thread.us

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.110260.us86
  store ptr %i.ao, ptr %i.aq, align 8
  %i.ar = add nuw nsw i64 %.110260.us86, 1        ; 2 uses
  %exitcond121.not = icmp eq i64 %i.ar, %i.af
  br i1 %exitcond121.not, label %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us, label %.lr.ph.split.us85, !llvm.loop !73

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us, %bb.k
  %.110260.us.us = phi i64 [ %i.bj, %bb.k ], [ 0, %.lr.ph.us ] ; 7 uses
  %i.as = icmp samesign ult i64 %.110260.us.us, %i.c
  br i1 %i.as, label %bb.h, label %.thread2.us.us

.thread2.us.us:                                   ; preds = %.lr.ph.split.us.us
  %i.at = load ptr, ptr %i.am, align 8
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %.110260.us.us
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us.us
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.110260.us.us
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = load ptr, ptr %i.am, align 8
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %.110260.us.us ; 2 uses
  %.not.us.us = icmp eq ptr %i.aw, null
  br i1 %.not.us.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %.thread2.us.us
  %i.az = phi ptr [ %i.au, %.thread2.us.us ], [ %i.ay, %bb.h ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = phi ptr [ %i.ay, %bb.h ], [ %i.az, %bb.i ]
  %.0100.us.us = phi ptr [ %i.aw, %bb.h ], [ %i.bb, %bb.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = and i32 %i.be, 4
  %i.bg = icmp ne i32 %i.bf, 0
  %.not125.us.us = icmp ne ptr %.0100.us.us, null
  %i.bh = icmp ne ptr %.0100.us.us, @_Py_NoneStruct
  %brmerge.us.us = select i1 %i.bh, i1 true, i1 %i.bg
  %or.cond44.us.us = select i1 %.not125.us.us, i1 %brmerge.us.us, i1 false
  br i1 %or.cond44.us.us, label %bb.k, label %.thread.us

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.110260.us.us
  store ptr %.0100.us.us, ptr %i.bi, align 8
  %i.bj = add nuw nsw i64 %.110260.us.us, 1       ; 2 uses
  %exitcond122.not = icmp eq i64 %i.bj, %i.af
  br i1 %exitcond122.not, label %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us, label %.lr.ph.split.us.us, !llvm.loop !73

.preheader.us:                                    ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %.not109 = icmp eq i16 %i.ae, 0
  br i1 %.not109, label %.thread.us, label %.lr.ph69.us

.lr.ph69.us:                                      ; preds = %.preheader.us
  br i1 %i.ac, label %.lr.ph69.split.us.us, label %.lr.ph69.split.us95.preheader

.lr.ph69.split.us95.preheader:                    ; preds = %.lr.ph69.us
  br i1 %i.x, label %.lr.ph69.split.us95.epil.preheader, label %.lr.ph69.split.us95

.lr.ph69.split.us95:                              ; preds = %.lr.ph69.split.us95.preheader, %bb.l
  %.010168.us96 = phi i64 [ %i.ce, %bb.l ], [ 0, %.lr.ph69.split.us95.preheader ] ; 7 uses
  %niter = phi i64 [ %niter.next.3, %bb.l ], [ 0, %.lr.ph69.split.us95.preheader ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.010168.us96
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = icmp eq ptr %i.bm, @_Py_NoneStruct
  br i1 %i.bn, label %.thread.us, label %.lr.ph69.split.us95.1, !prof !6

.lr.ph69.split.us95.1:                            ; preds = %.lr.ph69.split.us95
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.010168.us96
  store ptr %i.bm, ptr %i.bo, align 16
  %i.bp = or disjoint i64 %.010168.us96, 1        ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = icmp eq ptr %i.br, @_Py_NoneStruct
  br i1 %i.bs, label %.thread.us, label %.lr.ph69.split.us95.2, !prof !6

.lr.ph69.split.us95.2:                            ; preds = %.lr.ph69.split.us95.1
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bp
  store ptr %i.br, ptr %i.bt, align 8
  %i.bu = or disjoint i64 %.010168.us96, 2        ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = icmp eq ptr %i.bw, @_Py_NoneStruct
  br i1 %i.bx, label %.thread.us, label %.lr.ph69.split.us95.3, !prof !6

.lr.ph69.split.us95.3:                            ; preds = %.lr.ph69.split.us95.2
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bu
  store ptr %i.bw, ptr %i.by, align 16
  %i.bz = or disjoint i64 %.010168.us96, 3        ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = icmp eq ptr %i.cb, @_Py_NoneStruct
  br i1 %i.cc, label %.thread.us, label %bb.l, !prof !6

bb.l:                                             ; preds = %.lr.ph69.split.us95.3
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bz
  store ptr %i.cb, ptr %i.cd, align 8
  %i.ce = add nuw nsw i64 %.010168.us96, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.thread.us.loopexit163.unr-lcssa, label %.lr.ph69.split.us95, !llvm.loop !74

.lr.ph69.split.us.us:                             ; preds = %.lr.ph69.us, %bb.n
  %.010168.us.us = phi i64 [ %i.cp, %bb.n ], [ 0, %.lr.ph69.us ] ; 5 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.010168.us.us
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ch = icmp eq ptr %i.cg, @_Py_NoneStruct
  br i1 %i.ch, label %bb.m, label %bb.n, !prof !6

bb.m:                                             ; preds = %.lr.ph69.split.us.us
  %i.ci = load ptr, ptr %i.bk, align 8
  %i.cj = getelementptr inbounds nuw [40 x i8], ptr %i.ci, i64 %.010168.us.us
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = and i32 %i.cl, 4
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %.thread.us, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph69.split.us.us
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.010168.us.us
  store ptr %i.cg, ptr %i.co, align 8
  %i.cp = add nuw nsw i64 %.010168.us.us, 1       ; 2 uses
  %exitcond124.not = icmp eq i64 %i.cp, %i.c
  br i1 %exitcond124.not, label %.thread.us, label %.lr.ph69.split.us.us, !llvm.loop !74

.thread.us.loopexit163.unr-lcssa:                 ; preds = %bb.l
  br i1 %lcmp.mod.not, label %.thread.us, label %.lr.ph69.split.us95.epil.preheader

.lr.ph69.split.us95.epil.preheader:               ; preds = %.thread.us.loopexit163.unr-lcssa, %.lr.ph69.split.us95.preheader
  %.010168.us96.epil.init = phi i64 [ 0, %.lr.ph69.split.us95.preheader ], [ %i.ce, %.thread.us.loopexit163.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod175)
  br label %.lr.ph69.split.us95.epil

.lr.ph69.split.us95.epil:                         ; preds = %bb.o, %.lr.ph69.split.us95.epil.preheader
  %.010168.us96.epil = phi i64 [ %i.cu, %bb.o ], [ %.010168.us96.epil.init, %.lr.ph69.split.us95.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.o ], [ 0, %.lr.ph69.split.us95.epil.preheader ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.010168.us96.epil
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = icmp eq ptr %i.cr, @_Py_NoneStruct
  br i1 %i.cs, label %.thread.us, label %bb.o, !prof !6

bb.o:                                             ; preds = %.lr.ph69.split.us95.epil
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.010168.us96.epil
  store ptr %i.cr, ptr %i.ct, align 8
  %i.cu = add nuw nsw i64 %.010168.us96.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread.us, label %.lr.ph69.split.us95.epil, !llvm.loop !75

.thread.us:                                       ; preds = %.lr.ph.split.us85, %bb.f, %bb.j, %.thread.us.loopexit163.unr-lcssa, %.lr.ph69.split.us95.epil, %bb.o, %.lr.ph69.split.us95, %.lr.ph69.split.us95.1, %.lr.ph69.split.us95.2, %.lr.ph69.split.us95.3, %bb.n, %bb.m, %.preheader.us, %.preheader45.us
  %.2.us = phi i64 [ %i.c, %bb.n ], [ %.110260.us.us, %bb.j ], [ %i.c, %bb.o ], [ 0, %.preheader45.us ], [ 0, %.preheader.us ], [ %.010168.us.us, %bb.m ], [ %i.c, %.thread.us.loopexit163.unr-lcssa ], [ %i.bz, %.lr.ph69.split.us95.3 ], [ %.010168.us96, %.lr.ph69.split.us95 ], [ %i.bp, %.lr.ph69.split.us95.1 ], [ %i.bu, %.lr.ph69.split.us95.2 ], [ %.010168.us96.epil, %.lr.ph69.split.us95.epil ], [ %i.c, %.lr.ph.split.us85 ], [ %.110260.us86, %bb.f ]
  %.not126.us = icmp eq i64 %.2.us, %i.af
  br i1 %.not126.us, label %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us, label %bb.u

_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us: ; preds = %bb.g, %bb.k, %.thread.us
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = lshr i32 %.fr108, 14
  %.lobit.i.us = and i32 %i.cx, 1
  %i.cy = xor i32 %.lobit.i.us, 1
  %i.cz = select i1 %.010784.us, i32 0, i32 %i.cy
  %i.da = lshr i32 %.fr108, 2
  %i.db = and i32 %i.da, 32
  %i.dc = select i1 %.not42, i32 0, i32 %i.db
  %i.dd = or disjoint i32 %i.dc, %i.u
  %i.de = or disjoint i32 %i.dd, %i.cz
  %i.df = invoke noundef ptr %i.cw(ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, i32 noundef %i.de, ptr noundef nonnull %3)
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us
  %i.dg = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nanobind4abi117builtin_exceptionE
          catch ptr @_ZTIN8nanobind4abi112python_errorE
          catch ptr null                          ; 2 uses
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0      ; 2 uses
  %i.di = extractvalue { ptr, i32 } %i.dg, 1      ; 2 uses
  %i.dj = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE) #25
  %i.dk = icmp eq i32 %i.di, %i.dj
  br i1 %i.dk, label %bb.q, label %.split100.us

bb.q:                                             ; preds = %bb.p
  %i.dl = call ptr @__cxa_begin_catch(ptr %i.dh) #25
  %i.dm = invoke fastcc noundef zeroext i1 @_ZN8nanobind6detailL28set_builtin_exception_statusERNS_4abi117builtin_exceptionE(ptr noundef nonnull align 8 dereferenceable(20) %i.dl)
          to label %bb.r unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %spec.select.us = select i1 %i.dm, ptr null, ptr inttoptr (i64 1 to ptr)
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us
  %.not127.us = icmp eq ptr %i.df, null
  br i1 %.not127.us, label %.thread36, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s, %bb.r
  %.3117.us = phi ptr [ %spec.select.us, %bb.r ], [ %i.df, %bb.s ] ; 5 uses
  %.not128.us = icmp eq ptr %.3117.us, inttoptr (i64 1 to ptr)
  br i1 %.not128.us, label %bb.u, label %.split104.us

bb.u:                                             ; preds = %bb.t, %.thread.us, %bb.d
  %.5119.us = phi ptr [ %.111579.us, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.t ], [ %.111579.us, %.thread.us ] ; 3 uses
  %i.dn = add nuw i64 %.010380.us, 1              ; 2 uses
  %exitcond125.not = icmp eq i64 %i.dn, %.val
  br i1 %exitcond125.not, label %._crit_edge.us, label %bb.d, !llvm.loop !76

._crit_edge.us:                                   ; preds = %bb.u
  br i1 %.010784.us, label %.preheader47.us, label %.thread36, !llvm.loop !77

.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %bb.q, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  call void @__clang_call_terminate(ptr %i.do) #26
  unreachable

.split100.us:                                     ; preds = %bb.p
  %i.dp = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi112python_errorE) #25
  %i.dq = icmp eq i32 %i.di, %i.dp
  %i.dr = call ptr @__cxa_begin_catch(ptr %i.dh) #25
  br i1 %i.dq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.split100.us
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8
  call void @_ZN8nanobind6detail13error_restoreEP7_object(ptr noundef %i.dt) #25
  store ptr null, ptr %i.ds, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.w, %bb.v
  invoke void @__cxa_end_catch()
          to label %.thread36 unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %.split100.us
  call fastcc void @_ZN8nanobind6detailL29nb_func_convert_cpp_exceptionEP7_object(ptr noundef nonnull %0) #25
  br label %.invoke

.split104.us:                                     ; preds = %bb.t
  %i.du = icmp ne ptr %.3117.us, null
  %or.cond5 = and i1 %i.j, %i.du
  br i1 %or.cond5, label %bb.x, label %.thread36

bb.x:                                             ; preds = %.split104.us
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 20 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 4             ; 3 uses
  %i.dx = and i8 %i.dw, -20
  %i.dy = or disjoint i8 %i.dx, 18
  store i8 %i.dy, ptr %i.dv, align 4
  %i.dz = and i8 %i.dw, 64
  %.not129 = icmp eq i8 %i.dz, 0
  br i1 %.not129, label %.thread36, label %bb.y, !prof !5

bb.y:                                             ; preds = %bb.x
  %i.ea = getelementptr i8, ptr %i.m, i64 8
  %.val134 = load ptr, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %.val134, i64 1024
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = ptrtoint ptr %i.m to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = sext i32 %i.ef to i64
  %i.eh = add nsw i64 %i.eg, %i.ed
  %i.ei = inttoptr i64 %i.eh to ptr               ; 2 uses
  %i.ej = and i8 %i.dw, 4
  %.not.i = icmp eq i8 %i.ej, 0
  br i1 %.not.i, label %bb.z, label %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit

bb.z:                                             ; preds = %bb.y
  %i.ek = load ptr, ptr %i.ei, align 8
  br label %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit

_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit: ; preds = %bb.y, %bb.z
  %i.el = phi ptr [ %i.ek, %bb.z ], [ %i.ei, %bb.y ]
  call void %i.ec(ptr noundef %i.el, ptr noundef nonnull %i.m) #25
  br label %.thread36

.thread36:                                        ; preds = %._crit_edge.us, %bb.s, %.invoke, %bb.c, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit, %bb.x, %.split104.us
  %.712140 = phi ptr [ null, %bb.c ], [ %.3117.us, %.split104.us ], [ %.3117.us, %bb.x ], [ %.3117.us, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ], [ null, %bb.s ], [ null, %.invoke ], [ %.5119.us, %._crit_edge.us ]
  %.not130 = phi i1 [ false, %bb.c ], [ true, %.split104.us ], [ true, %bb.x ], [ true, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ], [ false, %bb.s ], [ true, %.invoke ], [ false, %._crit_edge.us ]
  %i.em = phi ptr [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %bb.c ], [ null, %.split104.us ], [ null, %bb.x ], [ null, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ], [ @_ZN8nanobind6detailL23nb_func_error_noconvertEP7_objectPKS2_mS2_, %bb.s ], [ null, %.invoke ], [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %._crit_edge.us ]
  %i.en = load i32, ptr %3, align 8
  %.not43 = icmp eq i32 %i.en, 1
  br i1 %.not43, label %bb.ab, label %bb.aa, !prof !5

bb.aa:                                            ; preds = %.thread36
  call void @_ZN8nanobind6detail12cleanup_list7releaseEv(ptr noundef nonnull align 8 dereferenceable(64) %3) #25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread36
  br i1 %.not130, label %bb.ad, label %bb.ac, !prof !5

bb.ac:                                            ; preds = %bb.ab
  %i.eo = call noundef ptr %i.em(ptr noundef %0, ptr noundef %1, i64 noundef %i.c, ptr noundef null) #25, !callees !12
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.0 = phi ptr [ %.712140, %bb.ab ], [ %i.eo, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret ptr %.0
}

declare ptr @PyErr_NoMemory() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #10

declare ptr @PyObject_Repr(ptr noundef) local_unnamed_addr #2

declare hidden noundef ptr @_ZN8nanobind6detail11nb_type_c2pEPNS0_12nb_internalsEPKSt9type_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E5eraseIS3_EEmRKT_m(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %.0813.i.i.i.i = and i64 %i.a, %2               ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.0813.i.i.i.i ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i16, ptr %i.e, align 4
  %.not14.i.i.i.i = icmp slt i16 %i.f, 0
  br i1 %.not14.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.h = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %.0816.i.i.i.i = phi i64 [ %.0813.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i, %bb.c ]
  %.015.i.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.m, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit.loopexit, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.l = add i64 %.0816.i.i.i.i, 1
  %i.m = add i16 %.015.i.i.i.i, 1                 ; 2 uses
  %.08.i.i.i.i = and i64 %i.l, %i.a               ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.08.i.i.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i16, ptr %i.o, align 4
  %.not.i.i.i.i = icmp sgt i16 %i.m, %i.p
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.b, !llvm.loop !78

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.r
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit.loopexit: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit: ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit.loopexit, %._crit_edge.i.i.i.i
  %i.t = phi i64 [ %i.r, %._crit_edge.i.i.i.i ], [ %.pre, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit.loopexit ]
  %.sroa.09.0.i.i.i.i = phi ptr [ %i.s, %._crit_edge.i.i.i.i ], [ %i.h, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit.loopexit ] ; 3 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.t
  %.not = icmp eq ptr %.sroa.09.0.i.i.i.i, %i.u
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 4 ; 2 uses
  %i.w = load i16, ptr %i.v, align 4
  %i.x = icmp eq i16 %i.w, -1
  br i1 %i.x, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i16 -1, ptr %i.v, align 4
  %.pre6 = load ptr, ptr %i.b, align 8
  %.pre7 = load i64, ptr %0, align 8
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit.i: ; preds = %bb.e, %bb.d
  %i.y = phi i64 [ %.pre7, %bb.e ], [ %i.a, %bb.d ]
  %i.z = phi ptr [ %.pre6, %bb.e ], [ %i.c, %bb.d ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.ab, -1
  store i64 %i.ac, ptr %i.aa, align 8
  %i.ad = ptrtoint ptr %.sroa.09.0.i.i.i.i to i64
  %i.ae = ptrtoint ptr %i.z to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = sdiv exact i64 %i.af, 24                ; 2 uses
  %i.ah = add nsw i64 %i.ag, 1
  %i.ai = and i64 %i.ah, %i.y                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i16, ptr %i.ak, align 4            ; 2 uses
  %i.am = icmp sgt i16 %i.al, 0
  br i1 %i.am, label %.lr.ph.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E17erase_from_bucketENSI_14robin_iteratorILb0EEE.exit

.lr.ph.i:                                         ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit.i, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit12.i
  %i.an = phi i16 [ %i.bh, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit12.i ], [ %i.al, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit.i ]
  %i.ao = phi ptr [ %i.bf, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit12.i ], [ %i.aj, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit.i ] ; 2 uses
  %i.ap = phi ptr [ %i.bb, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit12.i ], [ %i.z, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit.i ]
  %.014.i = phi i64 [ %.01113.i, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit12.i ], [ %i.ag, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit.i ]
  %.01113.i = phi i64 [ %i.be, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit12.i ], [ %i.ai, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit.i ] ; 3 uses
  %i.aq = add nsw i16 %i.an, -1
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %.014.i ; 3 uses
  %i.as = load i32, ptr %i.ao, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false)
  store i32 %i.as, ptr %i.ar, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i16 %i.aq, ptr %i.av, align 4
  %i.aw = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %.01113.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 4
  %i.ba = icmp eq i16 %i.az, -1
  br i1 %i.ba, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit12.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  store i16 -1, ptr %i.ay, align 4
  %.pre.i = load ptr, ptr %i.b, align 8
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit12.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit12.i: ; preds = %bb.f, %.lr.ph.i
  %i.bb = phi ptr [ %i.aw, %.lr.ph.i ], [ %.pre.i, %bb.f ] ; 2 uses
  %i.bc = add i64 %.01113.i, 1
  %i.bd = load i64, ptr %0, align 8
  %i.be = and i64 %i.bd, %i.bc                    ; 2 uses
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load i16, ptr %i.bg, align 4            ; 2 uses
  %i.bi = icmp sgt i16 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E17erase_from_bucketENSI_14robin_iteratorILb0EEE.exit, !llvm.loop !79

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E17erase_from_bucketENSI_14robin_iteratorILb0EEE.exit: ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit12.i, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 1, ptr %i.bj, align 1
  br label %bb.g

bb.g:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E17erase_from_bucketENSI_14robin_iteratorILb0EEE.exit
  %.0 = phi i64 [ 1, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E17erase_from_bucketENSI_14robin_iteratorILb0EEE.exit ], [ 0, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11insert_implIS3_JRKSt21piecewise_construct_tSt5tupleIJOS3_EESN_IJODnEEEEES2_INSI_14robin_iteratorILb0EEEbERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
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
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !80

.loopexit:                                        ; preds = %.lr.ph66, %.lr.ph69
  %.236.lcssa = phi i16 [ 0, %.lr.ph69 ], [ %i.ah, %.lr.ph66 ] ; 2 uses
  %.2.lcssa = phi i64 [ %.262, %.lr.ph69 ], [ %.2, %.lr.ph66 ]
  %i.aa = tail call noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %.236.lcssa)
  br i1 %i.aa, label %.lr.ph69, label %._crit_edge, !llvm.loop !81

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
  br i1 %.not37, label %.loopexit, label %.lr.ph66, !llvm.loop !82

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
  %i.au = load ptr, ptr %i.at, align 8
  store ptr %i.au, ptr %i.ar, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr null, ptr %i.av, align 8
  store i32 %i.aq, ptr %i.am, align 8
  store i16 %.135.lcssa, ptr %i.an, align 4
  br label %bb.j

bb.d:                                             ; preds = %._crit_edge
  %i.aw = load i64, ptr %3, align 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  store ptr null, ptr %i.bb, align 8
  store i16 %.135.lcssa, ptr %i.an, align 4
  %i.bd = load i32, ptr %i.am, align 8            ; 2 uses
  store i32 %i.aq, ptr %i.am, align 8
  %i.be = add i64 %.1.lcssa, 1
  %i.bf = load i64, ptr %0, align 8               ; 2 uses
  %i.bg = and i64 %i.bf, %i.be                    ; 2 uses
  %storemerge22.i.i = add nuw i16 %i.ao, 1        ; 2 uses
  %i.bh = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bg ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 3 uses
  %i.bk = load i16, ptr %i.bj, align 4            ; 2 uses
  %i.bl = icmp eq i16 %i.bk, -1
  br i1 %i.bl, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESN_IJODnEEEEEvmsjDpOT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.sroa.06.0.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %.sroa.06.1.i, %bb.i ] ; 2 uses
  %.sroa.8.0.i = phi ptr [ %i.bc, %.lr.ph.i.i ], [ %.sroa.8.1.i, %bb.i ] ; 2 uses
  %i.bn = phi ptr [ %i.bh, %.lr.ph.i.i ], [ %i.ca, %bb.i ]
  %i.bo = phi i64 [ %i.bf, %.lr.ph.i.i ], [ %i.cb, %bb.i ]
  %i.bp = phi i16 [ %i.bk, %.lr.ph.i.i ], [ %i.cg, %bb.i ]
  %i.bq = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %i.cf, %bb.i ] ; 2 uses
  %i.br = phi ptr [ %i.bi, %.lr.ph.i.i ], [ %i.ce, %bb.i ] ; 4 uses
  %storemerge25.i.i = phi i16 [ %storemerge22.i.i, %.lr.ph.i.i ], [ %storemerge.i.i, %bb.i ] ; 4 uses
  %.024.i.i = phi i64 [ %i.bg, %.lr.ph.i.i ], [ %i.cd, %bb.i ]
  %.01823.i.i = phi i32 [ %i.bd, %.lr.ph.i.i ], [ %.1.i.i, %bb.i ] ; 2 uses
  %i.bs = icmp sgt i16 %storemerge25.i.i, %i.bp
  br i1 %i.bs, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bt = icmp sgt i16 %storemerge25.i.i, 8192
  br i1 %i.bt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.bm, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  store ptr %.sroa.06.0.i, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  store ptr %.sroa.8.0.i, ptr %i.bw, align 8
  %i.by = load i16, ptr %i.bq, align 2
  store i16 %storemerge25.i.i, ptr %i.bq, align 2
  %i.bz = load i32, ptr %i.br, align 8
  store i32 %.01823.i.i, ptr %i.br, align 8
  %.pre.i.i = load i64, ptr %0, align 8
  %.pre32.i.i = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.sroa.06.1.i = phi ptr [ %i.bv, %bb.h ], [ %.sroa.06.0.i, %bb.e ] ; 2 uses
  %.sroa.8.1.i = phi ptr [ %i.bx, %bb.h ], [ %.sroa.8.0.i, %bb.e ] ; 2 uses
  %i.ca = phi ptr [ %.pre32.i.i, %bb.h ], [ %i.bn, %bb.e ] ; 2 uses
  %i.cb = phi i64 [ %.pre.i.i, %bb.h ], [ %i.bo, %bb.e ] ; 2 uses
  %.120.i.i = phi i16 [ %i.by, %bb.h ], [ %storemerge25.i.i, %bb.e ]
  %.1.i.i = phi i32 [ %i.bz, %bb.h ], [ %.01823.i.i, %bb.e ] ; 2 uses
  %i.cc = add i64 %.024.i.i, 1
  %i.cd = and i64 %i.cb, %i.cc                    ; 2 uses
  %storemerge.i.i = add i16 %.120.i.i, 1          ; 2 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.cd ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 3 uses
  %i.cg = load i16, ptr %i.cf, align 4            ; 2 uses
  %i.ch = icmp eq i16 %i.cg, -1
  br i1 %i.ch, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESN_IJODnEEEEEvmsjDpOT_.exit, label %bb.e, !llvm.loop !83

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESN_IJODnEEEEEvmsjDpOT_.exit: ; preds = %bb.i, %bb.d
  %.sroa.06.2.i = phi ptr [ %i.ba, %bb.d ], [ %.sroa.06.1.i, %bb.i ]
  %.sroa.8.2.i = phi ptr [ %i.bc, %bb.d ], [ %.sroa.8.1.i, %bb.i ]
  %.018.lcssa.i.i = phi i32 [ %i.bd, %bb.d ], [ %.1.i.i, %bb.i ]
  %storemerge.lcssa.i.i = phi i16 [ %storemerge22.i.i, %bb.d ], [ %storemerge.i.i, %bb.i ]
  %.lcssa21.i.i = phi ptr [ %i.bi, %bb.d ], [ %i.ce, %bb.i ] ; 3 uses
  %.lcssa.i.i = phi ptr [ %i.bj, %bb.d ], [ %i.cf, %bb.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.lcssa21.i.i, i64 8
  store ptr %.sroa.06.2.i, ptr %i.ci, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa21.i.i, i64 16
  store ptr %.sroa.8.2.i, ptr %.sroa.8.0..sroa_idx.i, align 8
  store i32 %.018.lcssa.i.i, ptr %.lcssa21.i.i, align 8
  store i16 %storemerge.lcssa.i.i, ptr %.lcssa.i.i, align 4
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESN_IJODnEEEEEvmsjDpOT_.exit, %bb.c
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8
  %i.cm = load ptr, ptr %i.l, align 8
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %.1.lcssa
  br label %.loopexit49

.loopexit49:                                      ; preds = %.lr.ph, %bb.j
  %.pn47 = phi ptr [ %i.cn, %bb.j ], [ %i.r, %.lr.ph ]
  %.pn45 = phi i8 [ 1, %bb.j ], [ 0, %.lr.ph ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i8 } poison, ptr %.pn47, 0
  %.pn = insertvalue { ptr, i8 } %.fca.0.insert.i.pn, i8 %.pn45, 1
  ret { ptr, i8 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp sgt i16 %1, 8192
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8
  %.not = icmp ult i64 %i.f, %i.h
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load i64, ptr %0, align 8                ; 2 uses
  %i.j = add i64 %i.i, -4611686018427387904
  %i.k = icmp ult i64 %i.j, -4611686018427387905
  br i1 %i.k, label %bb.d, label %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.45)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #30
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #25
  resume { ptr, i32 } %i.m

_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit: ; preds = %bb.c
  %i.n = shl nsw i64 %i.i, 1
  %i.o = add i64 %i.n, 2
  tail call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %i.o)
  store i8 0, ptr %i.a, align 8
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !range !7, !noundef !8
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
  %3 = alloca %"class.std::allocator.25", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load float, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load float, ptr %i.c, align 4
  call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_EC2EmRKS8_RKSA_RKSB_ff(ptr noundef nonnull align 8 dereferenceable(74) %2, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, float noundef %i.b, float noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
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
  br label %bb.c, !llvm.loop !84

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
  %i.bm = load i8, ptr %i.bk, align 8, !range !7, !noundef !8
  %i.bn = load i8, ptr %i.bl, align 8, !range !7, !noundef !8
  store i8 %i.bn, ptr %i.bk, align 8
  store i8 %i.bm, ptr %i.bl, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 73 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.bq = load i8, ptr %i.bo, align 1, !range !7, !noundef !8
  %i.br = load i8, ptr %i.bp, align 1, !range !7, !noundef !8
  store i8 %i.br, ptr %i.bo, align 1
  store i8 %i.bq, ptr %i.bp, align 1
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bs = ptrtoint ptr %i.ay to i64
  %i.bt = ptrtoint ptr %i.au to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.bu) #31
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit: ; preds = %._crit_edge, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
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
  br label %bb.j, !llvm.loop !84

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
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.45)
          to label %bb.c unwind label %common.resume

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #25
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #30
  unreachable

_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = mul nuw nsw i64 %.012.i.i, 24
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #32 ; 5 uses
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !85

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
  br i1 %.not.i.i.i.i.i.3, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !86

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.at = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket acquire, align 8
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.g, label %.thread, !prof !87

bb.g:                                             ; preds = %bb.f
  %i.av = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket) #25
  %.not.i10 = icmp eq i32 %i.av, 0
  br i1 %.not.i10, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, align 8
  store i16 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, i64 4), align 4
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket) #25
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.as, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.ay, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  br label %bb.i

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %.lcssa, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %.012.i.i, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.be, align 1
  %i.bf = load ptr, ptr %i.az, align 8
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -18
  store i8 1, ptr %i.bg, align 2
  %.pre = load i64, ptr %i.bb, align 8
  %i.bh = uitofp i64 %.pre to float
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.unr-lcssa
  %i.bi = phi float [ %i.bh, %.unr-lcssa ], [ 0.000000e+00, %.thread ]
  %i.bj = fcmp olt float %5, 0.000000e+00
  %i.bk = select i1 %i.bj, float 0.000000e+00, float %5 ; 2 uses
  %i.bl = fcmp ogt float %i.bk, 1.500000e-01
  %.sroa.speculated.i = select i1 %i.bl, float 1.500000e-01, float %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %.sroa.speculated.i, ptr %i.bm, align 8
  %i.bn = fcmp olt float %6, 2.000000e-01
  %i.bo = select i1 %i.bn, float 2.000000e-01, float %6 ; 2 uses
  %i.bp = fcmp ogt float %i.bo, f0x3F733333
  %.sroa.speculated.i11 = select i1 %i.bp, float f0x3F733333, float %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %.sroa.speculated.i11, ptr %i.bq, align 4
  %i.br = fmul float %.sroa.speculated.i11, %i.bi
  %i.bs = fptoui float %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bs, ptr %i.bt, align 8
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #12

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #20

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #23

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind memory(none) }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { cold }
attributes #30 = { noreturn }
attributes #31 = { builtin nounwind }
attributes #32 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{!0, !4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{ptr @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, ptr @_ZN8nanobind6detailL23nb_func_error_noconvertEP7_objectPKS2_mS2_}
!13 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = distinct !{!20, !4}
!21 = distinct !{!21, i1 true, !"_ZSt16forward_as_tupleIJPvEESt5tupleIJDpOT_EES4_"}
!22 = distinct !{!22, !21, !"_ZSt16forward_as_tupleIJPvEESt5tupleIJDpOT_EES4_: argument 0"}
!23 = distinct !{!23, i1 true, !"_ZSt16forward_as_tupleIJDnEESt5tupleIJDpOT_EES3_"}
!24 = distinct !{!24, !23, !"_ZSt16forward_as_tupleIJDnEESt5tupleIJDpOT_EES3_: argument 0"}
!25 = distinct !{!25, !4}
!26 = distinct !{!26, i1 true, !"_ZN8nanobind6detailL13arg_from_initERKNS0_13arg_data_initE"}
!27 = distinct !{!27, !26, !"_ZN8nanobind6detailL13arg_from_initERKNS0_13arg_data_initE: argument 0"}
!28 = distinct !{!28, !4}
!29 = distinct !{!29, !4}
!30 = distinct !{!30, !4}
!31 = !{!22}
!32 = !{!24}
!33 = !{!27}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !4}
!36 = distinct !{!36, !4}
!37 = distinct !{!37, !4}
!38 = distinct !{!38, !4}
!39 = distinct !{!39, !4}
!40 = distinct !{!40, !4}
!41 = distinct !{!41, !4, !10, !11}
!42 = distinct !{!42, !4, !10, !11}
!43 = distinct !{!43, !4, !11, !10}
!44 = distinct !{!44, !4}
!45 = distinct !{!45, !4}
!46 = !{!"branch_weights", i32 2002, i32 2000}
!47 = !{!"branch_weights", i32 2000, i32 2002}
!48 = !{!"branch_weights", i32 4, i32 28}
!49 = distinct !{!49, !4, !10, !11}
!50 = distinct !{!50, !4, !11, !10}
!51 = distinct !{!51, !4}
!52 = distinct !{!52, !4}
!53 = distinct !{!53, !4}
!54 = distinct !{!54, !4}
!55 = distinct !{!55, !4}
!56 = distinct !{!56, !4}
!57 = distinct !{!57, !4}
!58 = distinct !{!58, !4}
!59 = distinct !{!59, !4}
!60 = distinct !{!60, !4}
!61 = distinct !{!61, !4}
!62 = distinct !{!62, !4, !10, !11}
!63 = distinct !{!63, !4, !11, !10}
!64 = distinct !{!64, !4}
!65 = distinct !{!65, !4}
!66 = distinct !{!66, !4}
!67 = distinct !{!67, !4}
!68 = distinct !{!68, !4}
!69 = distinct !{!69, !4}
!70 = distinct !{!70, !4}
!71 = distinct !{!71, !4}
!72 = distinct !{!72, !4}
!73 = distinct !{!73, !4}
!74 = distinct !{!74, !4}
!75 = distinct !{!75, !9}
!76 = distinct !{!76, !4}
!77 = distinct !{!77, !4}
!78 = distinct !{!78, !4}
!79 = distinct !{!79, !4}
!80 = distinct !{!80, !4}
!81 = distinct !{!81, !4}
!82 = distinct !{!82, !4}
!83 = distinct !{!83, !4}
!84 = distinct !{!84, !4}
!85 = distinct !{!85, !9}
!86 = distinct !{!86, !4}
!87 = !{!"branch_weights", i32 1, i32 1048575}
end_hunk_3
