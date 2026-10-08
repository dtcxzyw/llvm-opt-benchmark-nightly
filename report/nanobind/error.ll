Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/error?download=true
inline.NumInlined: 169
inline.NumDeleted: 93
begin_hunk_0_@_ZN8nanobind6detail11error_fetchEPNS0_13error_payloadE:bb.a
  ret void

bb.e:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #25
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @PyErr_GetRaisedException() local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare hidden void @_ZN8nanobind6detail16fail_unspecifiedEv() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8nanobind6detail13error_restoreEP7_object(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !3

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #25
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @PyErr_SetRaisedException(ptr noundef nonnull %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %bb.c
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #25
  unreachable
}

declare void @PyErr_SetRaisedException(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8nanobind6detail13error_releaseEPNS0_13error_payloadE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN8nanobind6detail8is_aliveEv() #26
  br i1 %i.b, label %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

_ZN8nanobind6detail13cleanup_guardC2Ev.exit:      ; preds = %bb.b
  %i.c = tail call noundef ptr @_ZN8nanobind6detail13tstate_ensureEv() #26 ; 2 uses
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8nanobind6detail13cleanup_guardC2Ev.exit
  %i.d = invoke ptr @PyErr_GetRaisedException()
          to label %_ZN8nanobind11error_scopeC2Ev.exit unwind label %bb.g

_ZN8nanobind11error_scopeC2Ev.exit:               ; preds = %bb.c
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = and i64 %i.f, 2147483648
  %.not9 = icmp eq i64 %i.g, 0
  br i1 %.not9, label %bb.d, label %_ZL9Py_DECREFP7_object.exit

bb.d:                                             ; preds = %_ZN8nanobind11error_scopeC2Ev.exit
  %i.h = add nsw i64 %i.f, -1                     ; 2 uses
  store i64 %i.h, ptr %i.e, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %_ZL9Py_DECREFP7_object.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.e)
          to label %_ZL9Py_DECREFP7_object.exit unwind label %bb.g

_ZL9Py_DECREFP7_object.exit:                      ; preds = %bb.d, %_ZN8nanobind11error_scopeC2Ev.exit, %bb.e
  invoke void @PyErr_SetRaisedException(ptr noundef %i.d)
          to label %_ZN8nanobind11error_scopeD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZL9Py_DECREFP7_object.exit
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #25
  unreachable

_ZN8nanobind11error_scopeD2Ev.exit:               ; preds = %_ZL9Py_DECREFP7_object.exit
  tail call void @_ZN8nanobind6detail14tstate_releaseEPv(ptr noundef nonnull %i.c) #26
  br label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

_ZN8nanobind6detail13cleanup_guardD2Ev.exit:      ; preds = %bb.b, %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, %_ZN8nanobind11error_scopeD2Ev.exit, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @free(ptr noundef %i.m) #26
  ret void

bb.g:                                             ; preds = %bb.c, %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #25
  unreachable
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8nanobind6detail10error_copyEPKNS0_13error_payloadEPS1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 24)) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef ptr @_ZN8nanobind6detail12strdup_checkEPKc(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  store ptr %i.c, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.d = load ptr, ptr %1, align 8
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef zeroext i1 @_ZN8nanobind6detail8is_aliveEv() #26
  br i1 %i.e, label %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

_ZN8nanobind6detail13cleanup_guardC2Ev.exit:      ; preds = %bb.e
  %i.f = tail call noundef ptr @_ZN8nanobind6detail13tstate_ensureEv() #26 ; 2 uses
  %.not10 = icmp eq ptr %i.f, null
  br i1 %.not10, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN8nanobind6detail13cleanup_guardC2Ev.exit
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add i32 %i.h, 1                          ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZL9Py_INCREFP7_object.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.i, ptr %i.g, align 8
  br label %_ZL9Py_INCREFP7_object.exit

_ZL9Py_INCREFP7_object.exit:                      ; preds = %bb.f, %bb.g
  tail call void @_ZN8nanobind6detail14tstate_releaseEPv(ptr noundef nonnull %i.f) #26
  br label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

_ZN8nanobind6detail13cleanup_guardD2Ev.exit:      ; preds = %bb.e, %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, %_ZL9Py_INCREFP7_object.exit, %bb.d
  ret void

bb.h:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #25
  unreachable
}

declare hidden noundef ptr @_ZN8nanobind6detail12strdup_checkEPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN8nanobind6detail10error_whatEPNS0_13error_payloadE(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 4 uses
  %1 = alloca %"struct.nanobind::detail::Buffer", align 8 ; 19 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %2 = alloca %"class.std::vector", align 8       ; 13 uses
  %3 = alloca %"class.nanobind::object", align 8  ; 6 uses
  %4 = alloca %"class.nanobind::str", align 8     ; 7 uses
  %5 = alloca %"class.nanobind::str", align 8     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN8nanobind6detail8is_aliveEv() #26
  br i1 %i.e, label %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

_ZN8nanobind6detail13cleanup_guardC2Ev.exit:      ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN8nanobind6detail13tstate_ensureEv() #26 ; 2 uses
  %.not147 = icmp eq ptr %i.f, null
  br i1 %.not147, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8nanobind6detail13cleanup_guardC2Ev.exit
  %i.g = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not39 = icmp eq ptr %i.g, null
  br i1 %.not39, label %bb.d, label %_ZNKR8nanobind6handle7dec_refEv.exit119.thread143

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8                ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.j = invoke ptr @PyException_GetTraceback(ptr noundef nonnull %i.h)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.k = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #27 ; 5 uses
  store ptr %i.k, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 45 uses
  %.not.i56 = icmp eq ptr %i.k, null
  br i1 %.not.i56, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr @stderr, align 8
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.13, i64 54, i64 1, ptr %i.m) #28 ; 0 uses
  tail call void @abort() #25
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store ptr %i.o, ptr %i.n, align 8
  store ptr %i.k, ptr %i.l, align 8
  store i8 0, ptr %i.k, align 1
  %.not148 = icmp eq ptr %i.j, null               ; 2 uses
  br i1 %.not148, label %bb.bc, label %.preheader

.preheader:                                       ; preds = %bb.g, %.preheader
  %.028 = phi ptr [ %i.q, %.preheader ], [ %i.j, %bb.g ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not40 = icmp eq ptr %i.q, null
  br i1 %.not40, label %bb.h, label %.preheader, !llvm.loop !5

bb.h:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.r = getelementptr inbounds nuw i8, ptr %.028, i64 24
  %i.s = load ptr, ptr %i.r, align 8              ; 5 uses
  store ptr %i.s, ptr %i.b, align 8
  %.not.i57 = icmp eq ptr %i.s, null
  br i1 %.not.i57, label %_ZL10Py_XINCREFP7_object.exit.thread, label %bb.i

_ZL10Py_XINCREFP7_object.exit.thread:             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.t = load i32, ptr %i.s, align 8
  %i.u = add i32 %i.t, 1                          ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZL10Py_XINCREFP7_object.exit.thread220, label %_ZL10Py_XINCREFP7_object.exit

_ZL10Py_XINCREFP7_object.exit.thread220:          ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.lr.ph

_ZL10Py_XINCREFP7_object.exit:                    ; preds = %bb.i
  store i32 %i.u, ptr %i.s, align 8
  %.pr.pre = load ptr, ptr %i.b, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not41171 = icmp eq ptr %.pr.pre, null
  br i1 %.not41171, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL10Py_XINCREFP7_object.exit.thread220, %_ZL10Py_XINCREFP7_object.exit
  %.pr223 = phi ptr [ %i.s, %_ZL10Py_XINCREFP7_object.exit.thread220 ], [ %.pr.pre, %_ZL10Py_XINCREFP7_object.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %i.y = phi ptr [ %.pr223, %.lr.ph ], [ %i.ae, %bb.m ]
  %i.z = load ptr, ptr %i.w, align 8              ; 3 uses
  %i.aa = load ptr, ptr %i.x, align 8
  %.not.i58 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i58, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.y, ptr %i.z, align 8
  %i.ab = load ptr, ptr %i.w, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ac, ptr %i.w, align 8
  br label %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE9push_backERKS1_.exit

bb.l:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE9push_backERKS1_.exit unwind label %.loopexit.split-lp.loopexit

_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE9push_backERKS1_.exit: ; preds = %bb.k, %bb.l
  %i.ad = load ptr, ptr %i.b, align 8
  %i.ae = invoke ptr @PyFrame_GetBack(ptr noundef %i.ad)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit ; 3 uses

bb.m:                                             ; preds = %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE9push_backERKS1_.exit
  store ptr %i.ae, ptr %i.b, align 8
  %.not41 = icmp eq ptr %i.ae, null
  br i1 %.not41, label %._crit_edge, label %bb.j, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.m, %_ZL10Py_XINCREFP7_object.exit.thread, %_ZL10Py_XINCREFP7_object.exit
  %i.af = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 35
  %i.ah = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i = icmp ult ptr %i.ag, %i.ah
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = add i64 %i.aj, 36
  %i.al = sub i64 %i.ak, %i.ai
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.al)
  %.pre.i.i = load ptr, ptr %i.l, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %i.am = phi ptr [ %.pre.i.i, %bb.n ], [ %i.af, %._crit_edge ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.am, ptr noundef nonnull align 1 dereferenceable(35) @.str.1, i64 35, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 35 ; 2 uses
  store ptr %i.an, ptr %i.l, align 8
  store i8 0, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !14 ; 2 uses
  %i.aq = load ptr, ptr %2, align 8, !noalias !15 ; 2 uses
  %.not149173 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not149173, label %._crit_edge177, label %.lr.ph176

._crit_edge177:                                   ; preds = %_ZL9Py_DECREFP7_object.exit, %bb.o
  %.lcssa167 = phi ptr [ %i.aq, %bb.o ], [ %i.ff, %_ZL9Py_DECREFP7_object.exit ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.lcssa167, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge177
  invoke void @PyMem_Free(ptr noundef nonnull %.lcssa167)
          to label %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #25
  unreachable

_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEED2Ev.exit: ; preds = %._crit_edge177, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.bc

.lr.ph176:                                        ; preds = %bb.o, %_ZL9Py_DECREFP7_object.exit
  %.sroa.0128.0174 = phi ptr [ %i.at, %_ZL9Py_DECREFP7_object.exit ], [ %i.ap, %bb.o ]
  %i.at = getelementptr inbounds i8, ptr %.sroa.0128.0174, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  store ptr %i.au, ptr %i.b, align 8
  %i.av = invoke ptr @PyFrame_GetCode(ptr noundef %i.au)
          to label %bb.r unwind label %.loopexit  ; 5 uses

bb.r:                                             ; preds = %.lr.ph176
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  %i.ax = load ptr, ptr %i.aw, align 8            ; 7 uses
  %.not.i.i.i60 = icmp eq ptr %i.ax, null         ; 2 uses
  br i1 %.not.i.i.i60, label %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit53, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = add i32 %i.ay, 1                        ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit53, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.az, ptr %i.ax, align 8
  br label %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit53

_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit53: ; preds = %bb.r, %bb.s, %bb.t
  %i.bb = invoke noundef ptr @PyUnicode_AsUTF8AndSize(ptr noundef %i.ax, ptr noundef null)
          to label %_ZNK8nanobind3str5c_strEv.exit unwind label %.loopexit ; 2 uses

_ZNK8nanobind3str5c_strEv.exit:                   ; preds = %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit53
  br i1 %.not.i.i.i60, label %_ZNKR8nanobind6handle7dec_refEv.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK8nanobind3str5c_strEv.exit
  %i.bc = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.bd = and i64 %i.bc, 2147483648
  %.not2.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not2.i.i, label %bb.v, label %_ZNKR8nanobind6handle7dec_refEv.exit

bb.v:                                             ; preds = %bb.u
  %i.be = add nsw i64 %i.bc, -1                   ; 2 uses
  store i64 %i.be, ptr %i.ax, align 8
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.w, label %_ZNKR8nanobind6handle7dec_refEv.exit

bb.w:                                             ; preds = %bb.v
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.ax)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #25
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit:             ; preds = %_ZNK8nanobind3str5c_strEv.exit, %bb.u, %bb.v, %bb.w
  %.not44 = icmp eq ptr %i.bb, null
  br i1 %.not44, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit
  invoke void @PyErr_Clear()
          to label %bb.z unwind label %.loopexit

bb.z:                                             ; preds = %bb.y, %_ZNKR8nanobind6handle7dec_refEv.exit
  %.033 = phi ptr [ %i.bb, %_ZNKR8nanobind6handle7dec_refEv.exit ], [ @.str.2, %bb.y ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.bj = load ptr, ptr %i.bi, align 8            ; 7 uses
  %.not.i.i.i63 = icmp eq ptr %i.bj, null         ; 2 uses
  br i1 %.not.i.i.i63, label %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit51, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = add i32 %i.bk, 1                        ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit51, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.bl, ptr %i.bj, align 8
  br label %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit51

_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit51: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bn = invoke noundef ptr @PyUnicode_AsUTF8AndSize(ptr noundef %i.bj, ptr noundef null)
          to label %_ZNK8nanobind3str5c_strEv.exit66 unwind label %.loopexit ; 2 uses

_ZNK8nanobind3str5c_strEv.exit66:                 ; preds = %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit51
  br i1 %.not.i.i.i63, label %_ZNKR8nanobind6handle7dec_refEv.exit69, label %bb.ac

bb.ac:                                            ; preds = %_ZNK8nanobind3str5c_strEv.exit66
  %i.bo = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.bp = and i64 %i.bo, 2147483648
  %.not2.i.i68 = icmp eq i64 %i.bp, 0
  br i1 %.not2.i.i68, label %bb.ad, label %_ZNKR8nanobind6handle7dec_refEv.exit69

bb.ad:                                            ; preds = %bb.ac
  %i.bq = add nsw i64 %i.bo, -1                   ; 2 uses
  store i64 %i.bq, ptr %i.bj, align 8
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.ae, label %_ZNKR8nanobind6handle7dec_refEv.exit69

bb.ae:                                            ; preds = %bb.ad
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.bj)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit69 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #25
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit69:           ; preds = %_ZNK8nanobind3str5c_strEv.exit66, %bb.ac, %bb.ad, %bb.ae
  %.not45 = icmp eq ptr %i.bn, null
  br i1 %.not45, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit69
  invoke void @PyErr_Clear()
          to label %bb.ah unwind label %.loopexit

bb.ah:                                            ; preds = %bb.ag, %_ZNKR8nanobind6handle7dec_refEv.exit69
  %.032 = phi ptr [ %i.bn, %_ZNKR8nanobind6handle7dec_refEv.exit69 ], [ @.str.3, %bb.ag ] ; 2 uses
  %i.bu = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i70 = icmp ult ptr %i.bv, %i.bw
  br i1 %.not.i.i70, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = add i64 %i.by, 9
  %i.ca = sub i64 %i.bz, %i.bx
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ca)
  %.pre.i.i71 = load ptr, ptr %i.l, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.cb = phi ptr [ %.pre.i.i71, %bb.ai ], [ %i.bu, %bb.ah ]
  store i64 2459076912841367584, ptr %i.cb, align 1
  %i.cc = load ptr, ptr %i.l, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  store ptr %i.cd, ptr %i.l, align 8
  store i8 0, ptr %i.cd, align 1
  %i.ce = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.033) #29 ; 4 uses
  %i.cf = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  %i.ch = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i72 = icmp ult ptr %i.cg, %i.ch
  br i1 %.not.i.i72, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %.neg.i.i = add i64 %i.ce, 1
  %i.ck = add i64 %.neg.i.i, %i.cj
  %i.cl = sub i64 %i.ck, %i.ci
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.cl)
  %.pre.i.i73 = load ptr, ptr %i.l, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.cm = phi ptr [ %.pre.i.i73, %bb.ak ], [ %i.cf, %bb.aj ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr nonnull align 1 %.033, i64 %i.ce, i1 false)
  %i.cn = load ptr, ptr %i.l, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ce ; 2 uses
  store ptr %i.co, ptr %i.l, align 8
  store i8 0, ptr %i.co, align 1
  %i.cp = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i74 = icmp ult ptr %i.cq, %i.cr
  br i1 %.not.i.i74, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = add i64 %i.ct, 9
  %i.cv = sub i64 %i.cu, %i.cs
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.cv)
  %.pre.i.i75 = load ptr, ptr %i.l, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cw = phi ptr [ %.pre.i.i75, %bb.am ], [ %i.cp, %bb.al ]
  store i64 2334393380926139426, ptr %i.cw, align 1
  %i.cx = load ptr, ptr %i.l, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  store ptr %i.cy, ptr %i.l, align 8
  store i8 0, ptr %i.cy, align 1
  %i.cz = load ptr, ptr %i.b, align 8
  %i.da = invoke i32 @PyFrame_GetLineNumber(ptr noundef %i.cz)
          to label %bb.ao unwind label %.loopexit

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.07.i = phi i32 [ %i.da, %bb.ao ], [ %i.dh, %bb.ap ] ; 3 uses
  %.0.i = phi i64 [ 10, %bb.ao ], [ %i.df, %bb.ap ] ; 3 uses
  %i.db = urem i32 %.07.i, 10
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @.str.15, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = add i64 %.0.i, -1                       ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.df
  store i8 %i.de, ptr %i.dg, align 1
  %i.dh = udiv i32 %.07.i, 10
  %.not.i77 = icmp ult i32 %.07.i, 10
  br i1 %.not.i77, label %bb.aq, label %bb.ap, !llvm.loop !11

bb.aq:                                            ; preds = %bb.ap
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.df
  %i.dj = sub i64 11, %.0.i                       ; 3 uses
  %i.dk = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dj
  %i.dm = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i78 = icmp ult ptr %i.dl, %i.dm
  br i1 %.not.i.i78, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = add i64 %i.do, 12
  %i.dq = add i64 %.0.i, %i.dn
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.dr)
  %.pre.i.i79 = load ptr, ptr %i.l, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ds = phi ptr [ %.pre.i.i79, %bb.ar ], [ %i.dk, %bb.aq ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr nonnull align 1 %i.di, i64 %i.dj, i1 false)
  %i.dt = load ptr, ptr %i.l, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dj ; 2 uses
  store ptr %i.du, ptr %i.l, align 8
  store i8 0, ptr %i.du, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.dv = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 5
  %i.dx = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i80 = icmp ult ptr %i.dw, %i.dx
  br i1 %.not.i.i80, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = add i64 %i.dz, 6
  %i.eb = sub i64 %i.ea, %i.dy
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.eb)
  %.pre.i.i81 = load ptr, ptr %i.l, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ec = phi ptr [ %.pre.i.i81, %bb.at ], [ %i.dv, %bb.as ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ec, ptr noundef nonnull align 1 dereferenceable(5) @.str.6, i64 5, i1 false)
  %i.ed = load ptr, ptr %i.l, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 5 ; 2 uses
  store ptr %i.ee, ptr %i.l, align 8
  store i8 0, ptr %i.ee, align 1
  %i.ef = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.032) #29 ; 4 uses
  %i.eg = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ef
  %i.ei = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i82 = icmp ult ptr %i.eh, %i.ei
  br i1 %.not.i.i82, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %.neg.i.i83 = add i64 %i.ef, 1
  %i.el = add i64 %.neg.i.i83, %i.ek
  %i.em = sub i64 %i.el, %i.ej
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.em)
  %.pre.i.i84 = load ptr, ptr %i.l, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.en = phi ptr [ %.pre.i.i84, %bb.av ], [ %i.eg, %bb.au ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.en, ptr nonnull align 1 %.032, i64 %i.ef, i1 false)
  %i.eo = load ptr, ptr %i.l, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ef ; 2 uses
  store ptr %i.ep, ptr %i.l, align 8
  store i8 0, ptr %i.ep, align 1
  %i.eq = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.es = load ptr, ptr %i.n, align 8
  %.not.i86 = icmp ult ptr %i.er, %i.es
  br i1 %.not.i86, label %_ZN8nanobind6detail6Buffer3putEc.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 2)
  %.pre.i = load ptr, ptr %i.l, align 8
  br label %_ZN8nanobind6detail6Buffer3putEc.exit

_ZN8nanobind6detail6Buffer3putEc.exit:            ; preds = %bb.aw, %bb.ax
  %i.et = phi ptr [ %.pre.i, %bb.ax ], [ %i.eq, %bb.aw ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  store ptr %i.eu, ptr %i.l, align 8
  store i8 10, ptr %i.et, align 1
  %i.ev = load ptr, ptr %i.l, align 8
  store i8 0, ptr %i.ev, align 1
  %i.ew = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ex = and i64 %i.ew, 2147483648
  %.not151 = icmp eq i64 %i.ex, 0
  br i1 %.not151, label %bb.ay, label %_ZL9Py_DECREFP7_object.exit48

bb.ay:                                            ; preds = %_ZN8nanobind6detail6Buffer3putEc.exit
  %i.ey = add nsw i64 %i.ew, -1                   ; 2 uses
  store i64 %i.ey, ptr %i.av, align 8
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %bb.az, label %_ZL9Py_DECREFP7_object.exit48

bb.az:                                            ; preds = %bb.ay
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.av)
          to label %_ZL9Py_DECREFP7_object.exit48 unwind label %.loopexit

_ZL9Py_DECREFP7_object.exit48:                    ; preds = %bb.ay, %_ZN8nanobind6detail6Buffer3putEc.exit, %bb.az
  %i.fa = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.fb = load i64, ptr %i.fa, align 8            ; 2 uses
  %i.fc = and i64 %i.fb, 2147483648
  %.not152 = icmp eq i64 %i.fc, 0
  br i1 %.not152, label %bb.ba, label %_ZL9Py_DECREFP7_object.exit

bb.ba:                                            ; preds = %_ZL9Py_DECREFP7_object.exit48
  %i.fd = add nsw i64 %i.fb, -1                   ; 2 uses
  store i64 %i.fd, ptr %i.fa, align 8
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %bb.bb, label %_ZL9Py_DECREFP7_object.exit

bb.bb:                                            ; preds = %bb.ba
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.fa)
          to label %_ZL9Py_DECREFP7_object.exit unwind label %.loopexit

_ZL9Py_DECREFP7_object.exit:                      ; preds = %bb.ba, %_ZL9Py_DECREFP7_object.exit48, %bb.bb
  %i.ff = load ptr, ptr %2, align 8, !noalias !15 ; 2 uses
  %.not149 = icmp eq ptr %i.at, %i.ff
  br i1 %.not149, label %._crit_edge177, label %.lr.ph176, !llvm.loop !12

bb.bc:                                            ; preds = %bb.g, %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEED2Ev.exit
  %.not150 = icmp eq ptr %.val, null
  br i1 %.not150, label %bb.by, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.fg = invoke ptr @PyObject_GetAttrString(ptr noundef nonnull %.val, ptr noundef nonnull @.str.7)
          to label %bb.be unwind label %bb.bu     ; 6 uses

bb.be:                                            ; preds = %bb.bd
  %.not.i54 = icmp eq ptr %i.fg, null
  br i1 %.not.i54, label %bb.bf, label %bb.bg, !prof !3

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN8nanobind6detail18raise_python_errorEv() #30
          to label %.noexc55 unwind label %bb.bu

.noexc55:                                         ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.be
  store ptr %i.fg, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.fg, ptr %4, align 8
  %i.fh = load i32, ptr %i.fg, align 8
  %i.fi = add i32 %i.fh, 1                        ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.fi, ptr %i.fg, align 8
  %.pre = load ptr, ptr %4, align 8
  br label %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit

_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit: ; preds = %bb.bg, %bb.bh
  %i.fk = phi ptr [ %i.fg, %bb.bg ], [ %.pre, %bb.bh ]
  %i.fl = invoke noundef ptr @PyUnicode_AsUTF8AndSize(ptr noundef %i.fk, ptr noundef null)
          to label %_ZNK8nanobind3str5c_strEv.exit90 unwind label %bb.bv ; 2 uses

_ZNK8nanobind3str5c_strEv.exit90:                 ; preds = %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit
  %i.fm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fl) #29 ; 4 uses
  %i.fn = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fm
  %i.fp = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i91 = icmp ult ptr %i.fo, %i.fp
  br i1 %.not.i.i91, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZNK8nanobind3str5c_strEv.exit90
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fn to i64
  %.neg.i.i92 = add i64 %i.fm, 1
  %i.fs = add i64 %.neg.i.i92, %i.fr
  %i.ft = sub i64 %i.fs, %i.fq
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ft)
  %.pre.i.i93 = load ptr, ptr %i.l, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZNK8nanobind3str5c_strEv.exit90
  %i.fu = phi ptr [ %.pre.i.i93, %bb.bi ], [ %i.fn, %_ZNK8nanobind3str5c_strEv.exit90 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fu, ptr nonnull align 1 %i.fl, i64 %i.fm, i1 false)
  %i.fv = load ptr, ptr %i.l, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fm ; 2 uses
  store ptr %i.fw, ptr %i.l, align 8
  store i8 0, ptr %i.fw, align 1
  %i.fx = load ptr, ptr %4, align 8               ; 4 uses
  %.not.i.i95 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i95, label %_ZNKR8nanobind6handle7dec_refEv.exit97, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fy = load i64, ptr %i.fx, align 8            ; 2 uses
  %i.fz = and i64 %i.fy, 2147483648
  %.not2.i.i96 = icmp eq i64 %i.fz, 0
  br i1 %.not2.i.i96, label %bb.bl, label %_ZNKR8nanobind6handle7dec_refEv.exit97

end_hunk_0
