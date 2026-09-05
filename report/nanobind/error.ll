Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/error?download=true
inline.NumInlined: 169
inline.NumDeleted: 93
begin_hunk_0_@PyException_SetCause
declare void @PyException_SetCause(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @PyException_SetContext(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN8nanobind6detail8is_aliveEv() local_unnamed_addr #13

; Function Attrs: nounwind
declare noundef ptr @_ZN8nanobind6detail13tstate_ensureEv() local_unnamed_addr #13

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN8nanobind6detail14tstate_releaseEPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #15

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #17 comdat align 2 {
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
  %i.m = tail call i64 @fwrite(ptr nonnull @.str.14, i64 54, i64 1, ptr %i.l) #28 ; 0 uses
  tail call void @abort() #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.n, %i.e                       ; 2 uses
  %i.p = add i64 %i.o, 1
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.p)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %spec.select, i1 false)
  tail call void @free(ptr noundef %i.c) #26
  store ptr %i.k, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  store ptr %i.q, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o
  store ptr %i.r, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail18raise_python_errorEv() local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 32) #26 ; 2 uses
  tail call void @_ZN8nanobind4abi112python_errorC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN8nanobind4abi112python_errorE, ptr nonnull @_ZN8nanobind4abi112python_errorD2Ev) #30
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8nanobind4abi112python_errorC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nanobind4abi112python_errorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = invoke ptr @PyErr_GetRaisedException()
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %_ZN8nanobind6detail11error_fetchEPNS0_13error_payloadE.exit, !prof !3

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #25
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #25
  unreachable

_ZN8nanobind6detail11error_fetchEPNS0_13error_payloadE.exit: ; preds = %bb.b
  store ptr %i.b, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8nanobind4abi112python_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nanobind4abi112python_errorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN8nanobind6detail13error_releaseEPNS0_13error_payloadE(ptr noundef nonnull %i.a) #26
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8nanobind4abi112python_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nanobind4abi112python_errorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN8nanobind6detail13error_releaseEPNS0_13error_payloadE(ptr noundef nonnull %i.a) #26, !inline_history !22
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #26, !inline_history !22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8nanobind4abi112python_error4whatEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef ptr @_ZN8nanobind6detail10error_whatEPNS0_13error_payloadE(ptr noundef nonnull %i.a) #26
  ret ptr %i.b
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

declare ptr @PyObject_Str(ptr noundef) local_unnamed_addr #3

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef ptr @_ZN8nanobind6detail15getattr_str_defEPNS0_12nb_internalsEP7_objectPKcmS4_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare noundef ptr @_ZN8nanobind6detail11getattr_defEP7_objectS2_S2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #19

declare void @_ZN8nanobind6detail7raise_vENS_14exception_typeEPKcP13__va_list_tag(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN8nanobind6detail11hasattr_strEPNS0_12nb_internalsEP7_objectPKcm(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

declare void @_ZN8nanobind6detail11setattr_strEPNS0_12nb_internalsEP7_objectPKcmS4_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #30
  unreachable

_ZNKSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = invoke ptr @PyMem_Malloc(i64 noundef %i.o)
          to label %bb.c unwind label %bb.e       ; 6 uses

bb.c:                                             ; preds = %_ZNKSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE12_M_check_lenEmPKc.exit
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_M_allocateEm.exit, !prof !3

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.19) #25
  unreachable

bb.e:                                             ; preds = %_ZNKSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE12_M_check_lenEmPKc.exit
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #25
  unreachable

_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_M_allocateEm.exit: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.t = load ptr, ptr %2, align 8
  store ptr %i.t, ptr %i.s, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %vector.body47, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_M_allocateEm.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_M_allocateEm.exit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.u = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !31, !noalias !30
  store ptr %i.u, ptr %.012.i.i.i, align 8, !alias.scope !30, !noalias !31
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i16, label %vector.body47, label %.lr.ph.i.i.i, !llvm.loop !26

vector.body47:                                    ; preds = %.lr.ph.i.i.i, %_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_M_allocateEm.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_M_allocateEm.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %i.y = icmp eq ptr %1, %i.b
  br i1 %i.y, label %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_S_relocateEPS1_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %vector.body47, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.ab, %.lr.ph.i.i.i18 ], [ %i.x, %vector.body47 ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.aa, %.lr.ph.i.i.i18 ], [ %1, %vector.body47 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.z = load ptr, ptr %.0911.i.i.i20, align 8, !alias.scope !33, !noalias !32
  store ptr %i.z, ptr %.012.i.i.i19, align 8, !alias.scope !32, !noalias !33
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_S_relocateEPS1_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !26

_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_S_relocateEPS1_S7_S7_RS5_.exit23: ; preds = %.lr.ph.i.i.i18, %vector.body47
  %.0.lcssa.i.i.i22 = phi ptr [ %i.x, %vector.body47 ], [ %i.ab, %.lr.ph.i.i.i18 ]
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_S_relocateEPS1_S7_S7_RS5_.exit23
  invoke void @PyMem_Free(ptr noundef nonnull %i.c)
          to label %_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE13_M_deallocateEPS1_m.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #25
  unreachable

_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_S_relocateEPS1_S7_S7_RS5_.exit23, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.af, ptr %i.ae, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #20

; Function Attrs: noreturn nounwind
declare hidden void @_ZN8nanobind6detail4failEPKcz(ptr noundef, ...) local_unnamed_addr #6

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { cold }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { noreturn }
attributes #31 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #32 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !"_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE6rbeginEv"}
!8 = distinct !{!8, !7, !"_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE6rbeginEv: argument 0"}
!9 = distinct !{!9, !"_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE4rendEv"}
!10 = distinct !{!10, !9, !"_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE4rendEv: argument 0"}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{null}
!14 = !{!8}
!15 = !{!10}
!16 = distinct !{!16, !"_ZN8nanobind6detail15str_getattr_defEPNS0_12nb_internalsENS_6handleEPKcS3_"}
!17 = distinct !{!17, !16, !"_ZN8nanobind6detail15str_getattr_defEPNS0_12nb_internalsENS_6handleEPKcS3_: argument 0"}
!18 = distinct !{!18, !"_ZN8nanobind7getattrENS_6handleES0_S0_"}
!19 = distinct !{!19, !18, !"_ZN8nanobind7getattrENS_6handleES0_S0_: argument 0"}
!20 = !{!17}
!21 = !{!19}
!22 = !{ptr @_ZN8nanobind4abi112python_errorD2Ev}
!23 = distinct !{!23, !"_ZSt19__relocate_object_aIP6_frameS1_N8nanobind6detail12py_allocatorIS1_EEEvPT_PT0_RT1_"}
!24 = distinct !{!24, !23, !"_ZSt19__relocate_object_aIP6_frameS1_N8nanobind6detail12py_allocatorIS1_EEEvPT_PT0_RT1_: argument 0"}
!25 = distinct !{!25, !23, !"_ZSt19__relocate_object_aIP6_frameS1_N8nanobind6detail12py_allocatorIS1_EEEvPT_PT0_RT1_: argument 1"}
!26 = distinct !{!26, !4}
!27 = distinct !{!27, !"_ZSt19__relocate_object_aIP6_frameS1_N8nanobind6detail12py_allocatorIS1_EEEvPT_PT0_RT1_"}
!28 = distinct !{!28, !27, !"_ZSt19__relocate_object_aIP6_frameS1_N8nanobind6detail12py_allocatorIS1_EEEvPT_PT0_RT1_: argument 0"}
!29 = distinct !{!29, !27, !"_ZSt19__relocate_object_aIP6_frameS1_N8nanobind6detail12py_allocatorIS1_EEEvPT_PT0_RT1_: argument 1"}
!30 = !{!24}
!31 = !{!25}
!32 = !{!28}
!33 = !{!29}
end_hunk_0
