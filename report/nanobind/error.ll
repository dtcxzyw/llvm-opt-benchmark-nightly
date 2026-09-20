Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/error?download=true
inline.NumInlined: 169
inline.NumDeleted: 93
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._typeobject = type { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { %union.anon, ptr }
%union.anon = type { i64 }
%"struct.nanobind::detail::Buffer" = type { ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<_frame *, nanobind::detail::py_allocator<_frame *>>::_Vector_impl" }
%"struct.std::_Vector_base<_frame *, nanobind::detail::py_allocator<_frame *>>::_Vector_impl" = type { %"struct.std::_Vector_base<_frame *, nanobind::detail::py_allocator<_frame *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<_frame *, nanobind::detail::py_allocator<_frame *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.nanobind::object" = type { %"class.nanobind::handle" }
%"class.nanobind::handle" = type { ptr }
%"class.nanobind::str" = type { %"class.nanobind::object" }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN8nanobind6detail6Buffer3putILm25EEEvRAT__Kc = comdat any

$_ZN8nanobind6detail5raiseEPKcz = comdat any

$_ZNKR8nanobind6handle7dec_refEv = comdat any

$_ZN8nanobind6detail6Buffer6expandEm = comdat any

$_ZN8nanobind6detail18raise_python_errorEv = comdat any

$_ZN8nanobind4abi112python_errorC2Ev = comdat any

$_ZN8nanobind4abi112python_errorD2Ev = comdat any

$_ZN8nanobind4abi112python_errorD0Ev = comdat any

$_ZNK8nanobind4abi112python_error4whatEv = comdat any

$_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S6_EEDpOT_ = comdat any

$_ZTIN8nanobind4abi112python_errorE = comdat any

$_ZTSN8nanobind4abi112python_errorE = comdat any

$_ZTVN8nanobind4abi112python_errorE = comdat any

@.str = private unnamed_addr constant [69 x i8] c"<error message unavailable, the Python interpreter is shutting down>\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Traceback (most recent call last):\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"<unencodable filename>\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"<unencodable name>\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c", in \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"__name__\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"<exception str() failed>\00", align 1
@PyModule_Type = external global %struct._typeobject, align 8
@.str.10 = private unnamed_addr constant [68 x i8] c"nanobind::detail::exception_new(): could not determine module name!\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%U.%s\00", align 1
@.str.12 = private unnamed_addr constant [78 x i8] c"nanobind::detail::exception_new(): an object of the same name already exists!\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [55 x i8] c"Buffer::Buffer(): out of memory (unrecoverable error)!\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"Buffer::expand(): out of memory (unrecoverable error)!\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@_ZTIN8nanobind4abi112python_errorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8nanobind4abi112python_errorE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN8nanobind4abi112python_errorE = linkonce_odr constant [31 x i8] c"N8nanobind4abi112python_errorE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVN8nanobind4abi112python_errorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8nanobind4abi112python_errorE, ptr @_ZN8nanobind4abi112python_errorD2Ev, ptr @_ZN8nanobind4abi112python_errorD0Ev, ptr @_ZNK8nanobind4abi112python_error4whatEv] }, comdat, align 8
@.str.16 = private unnamed_addr constant [53 x i8] c"Buffer::copy(): out of memory (unrecoverable error)!\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"PyMem_Malloc(): out of memory!\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8nanobind6detail11error_fetchEPNS0_13error_payloadE(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = invoke ptr @PyErr_GetRaisedException()
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.d, !prof !3

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  store ptr %i.a, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #24
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
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #24
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
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #24
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
  tail call void @__clang_call_terminate(ptr %i.b) #24
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
  %i.b = tail call noundef zeroext i1 @_ZN8nanobind6detail8is_aliveEv() #25
  br i1 %i.b, label %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

_ZN8nanobind6detail13cleanup_guardC2Ev.exit:      ; preds = %bb.b
  %i.c = tail call noundef ptr @_ZN8nanobind6detail13tstate_ensureEv() #25 ; 2 uses
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
  tail call void @__clang_call_terminate(ptr %i.k) #24
  unreachable

_ZN8nanobind11error_scopeD2Ev.exit:               ; preds = %_ZL9Py_DECREFP7_object.exit
  tail call void @_ZN8nanobind6detail14tstate_releaseEPv(ptr noundef nonnull %i.c) #25
  br label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

_ZN8nanobind6detail13cleanup_guardD2Ev.exit:      ; preds = %bb.b, %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, %_ZN8nanobind11error_scopeD2Ev.exit, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @free(ptr noundef %i.m) #25
  ret void

bb.g:                                             ; preds = %bb.c, %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #24
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
  %i.e = tail call noundef zeroext i1 @_ZN8nanobind6detail8is_aliveEv() #25
  br i1 %i.e, label %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

_ZN8nanobind6detail13cleanup_guardC2Ev.exit:      ; preds = %bb.e
  %i.f = tail call noundef ptr @_ZN8nanobind6detail13tstate_ensureEv() #25 ; 2 uses
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
  tail call void @_ZN8nanobind6detail14tstate_releaseEPv(ptr noundef nonnull %i.f) #25
  br label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

_ZN8nanobind6detail13cleanup_guardD2Ev.exit:      ; preds = %bb.e, %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, %_ZL9Py_INCREFP7_object.exit, %bb.d
  ret void

bb.h:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #24
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
  %i.e = tail call noundef zeroext i1 @_ZN8nanobind6detail8is_aliveEv() #25
  br i1 %i.e, label %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

_ZN8nanobind6detail13cleanup_guardC2Ev.exit:      ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN8nanobind6detail13tstate_ensureEv() #25 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.k = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #26 ; 5 uses
  store ptr %i.k, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 45 uses
  %.not.i56 = icmp eq ptr %i.k, null
  br i1 %.not.i56, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr @stderr, align 8
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.13, i64 54, i64 1, ptr %i.m) #27 ; 0 uses
  tail call void @abort() #24
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.r = getelementptr inbounds nuw i8, ptr %.028, i64 24
  %i.s = load ptr, ptr %i.r, align 8              ; 5 uses
  store ptr %i.s, ptr %i.b, align 8
  %.not.i57 = icmp eq ptr %i.s, null
  br i1 %.not.i57, label %_ZL10Py_XINCREFP7_object.exit.thread, label %bb.i

_ZL10Py_XINCREFP7_object.exit.thread:             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.t = load i32, ptr %i.s, align 8
  %i.u = add i32 %i.t, 1                          ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZL10Py_XINCREFP7_object.exit.thread220, label %_ZL10Py_XINCREFP7_object.exit

_ZL10Py_XINCREFP7_object.exit.thread220:          ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.lr.ph

_ZL10Py_XINCREFP7_object.exit:                    ; preds = %bb.i
  store i32 %i.u, ptr %i.s, align 8
  %.pr.pre = load ptr, ptr %i.b, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
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
  call void @__clang_call_terminate(ptr %i.as) #24
  unreachable

_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEED2Ev.exit: ; preds = %._crit_edge177, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
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
  call void @__clang_call_terminate(ptr %i.bh) #24
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
  call void @__clang_call_terminate(ptr %i.bt) #24
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
  %i.ce = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.033) #28 ; 4 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
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
  %i.ef = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.032) #28 ; 4 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.fg = invoke ptr @PyObject_GetAttrString(ptr noundef nonnull %.val, ptr noundef nonnull @.str.7)
          to label %bb.be unwind label %bb.bu     ; 6 uses

bb.be:                                            ; preds = %bb.bd
  %.not.i54 = icmp eq ptr %i.fg, null
  br i1 %.not.i54, label %bb.bf, label %bb.bg, !prof !3

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN8nanobind6detail18raise_python_errorEv() #29
          to label %.noexc55 unwind label %bb.bu

.noexc55:                                         ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.be
  store ptr %i.fg, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
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
  %i.fm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fl) #28 ; 4 uses
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

bb.bl:                                            ; preds = %bb.bk
  %i.ga = add nsw i64 %i.fy, -1                   ; 2 uses
  store i64 %i.ga, ptr %i.fx, align 8
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %bb.bm, label %_ZNKR8nanobind6handle7dec_refEv.exit97

bb.bm:                                            ; preds = %bb.bl
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.fx)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit97 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #24
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit97:           ; preds = %bb.bj, %bb.bk, %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ge = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  %i.gg = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i98 = icmp ult ptr %i.gf, %i.gg
  br i1 %.not.i.i98, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit97
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.ge to i64
  %i.gj = add i64 %i.gi, 3
  %i.gk = sub i64 %i.gj, %i.gh
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.gk)
  %.pre.i.i99 = load ptr, ptr %i.l, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZNKR8nanobind6handle7dec_refEv.exit97
  %i.gl = phi ptr [ %.pre.i.i99, %bb.bo ], [ %i.ge, %_ZNKR8nanobind6handle7dec_refEv.exit97 ]
  store i16 8250, ptr %i.gl, align 1
  %i.gm = load ptr, ptr %i.l, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 2 ; 2 uses
  store ptr %i.gn, ptr %i.l, align 8
  store i8 0, ptr %i.gn, align 1
  %i.go = load ptr, ptr %3, align 8               ; 4 uses
  %.not.i.i100 = icmp eq ptr %i.go, null
  br i1 %.not.i.i100, label %_ZNKR8nanobind6handle7dec_refEv.exit102, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gp = load i64, ptr %i.go, align 8            ; 2 uses
  %i.gq = and i64 %i.gp, 2147483648
  %.not2.i.i101 = icmp eq i64 %i.gq, 0
  br i1 %.not2.i.i101, label %bb.br, label %_ZNKR8nanobind6handle7dec_refEv.exit102

bb.br:                                            ; preds = %bb.bq
  %i.gr = add nsw i64 %i.gp, -1                   ; 2 uses
  store i64 %i.gr, ptr %i.go, align 8
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %bb.bs, label %_ZNKR8nanobind6handle7dec_refEv.exit102

bb.bs:                                            ; preds = %bb.br
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.go)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit102 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #24
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit102:          ; preds = %bb.bp, %bb.bq, %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.by

bb.bu:                                            ; preds = %bb.bf, %bb.bd
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bw

bb.bv:                                            ; preds = %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.gy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #25 ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.pn42.pn = phi { ptr, i32 } [ %i.gw, %bb.bv ], [ %i.gv, %bb.bu ]
  %.231 = extractvalue { ptr, i32 } %.pn42.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.gz = call ptr @__cxa_begin_catch(ptr %.231) #25 ; 0 uses
  invoke void @PyErr_Clear()
          to label %bb.bx unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bw
  invoke void @__cxa_end_catch()
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp

bb.by:                                            ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit102, %bb.bx, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ha = invoke ptr @PyObject_Str(ptr noundef nonnull %i.h)
          to label %.noexc104 unwind label %bb.cg, !inline_history !13 ; 6 uses

.noexc104:                                        ; preds = %bb.by
  %.not.i.i103 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i103, label %bb.bz, label %bb.ca, !prof !3

bb.bz:                                            ; preds = %.noexc104
  invoke void @_ZN8nanobind6detail18raise_python_errorEv() #29
          to label %.noexc105 unwind label %bb.cg, !inline_history !13

.noexc105:                                        ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %.noexc104
  store ptr %i.ha, ptr %5, align 8
  %i.hb = invoke noundef ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.ha, ptr noundef null)
          to label %_ZNK8nanobind3str5c_strEv.exit107 unwind label %bb.ch ; 2 uses

_ZNK8nanobind3str5c_strEv.exit107:                ; preds = %bb.ca
  %i.hc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hb) #28 ; 4 uses
  %i.hd = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hc
  %i.hf = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i108 = icmp ult ptr %i.he, %i.hf
  br i1 %.not.i.i108, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_ZNK8nanobind3str5c_strEv.exit107
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = ptrtoint ptr %i.hd to i64
  %.neg.i.i109 = add i64 %i.hc, 1
  %i.hi = add i64 %.neg.i.i109, %i.hh
  %i.hj = sub i64 %i.hi, %i.hg
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hj)
  %.pre.i.i110 = load ptr, ptr %i.l, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %_ZNK8nanobind3str5c_strEv.exit107, %bb.cb
  %i.hk = phi ptr [ %.pre.i.i110, %bb.cb ], [ %i.hd, %_ZNK8nanobind3str5c_strEv.exit107 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hk, ptr nonnull align 1 %i.hb, i64 %i.hc, i1 false)
  %i.hl = load ptr, ptr %i.l, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hc ; 2 uses
  store ptr %i.hm, ptr %i.l, align 8
  store i8 0, ptr %i.hm, align 1
  %i.hn = load i64, ptr %i.ha, align 8            ; 2 uses
  %i.ho = and i64 %i.hn, 2147483648
  %.not2.i.i113 = icmp eq i64 %i.ho, 0
  br i1 %.not2.i.i113, label %bb.cd, label %_ZNKR8nanobind6handle7dec_refEv.exit114

bb.cd:                                            ; preds = %bb.cc
  %i.hp = add nsw i64 %i.hn, -1                   ; 2 uses
  store i64 %i.hp, ptr %i.ha, align 8
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %bb.ce, label %_ZNKR8nanobind6handle7dec_refEv.exit114

bb.ce:                                            ; preds = %bb.cd
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.ha)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit114 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #24
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit114:          ; preds = %bb.cc, %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.cl

bb.cg:                                            ; preds = %bb.bz, %bb.by
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ci

bb.ch:                                            ; preds = %bb.ca
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #25 ; 0 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.pn43 = phi { ptr, i32 } [ %i.hu, %bb.ch ], [ %i.ht, %bb.cg ]
  %.3 = extractvalue { ptr, i32 } %.pn43, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.hw = call ptr @__cxa_begin_catch(ptr %.3) #25 ; 0 uses
  invoke void @PyErr_Clear()
          to label %bb.cj unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZN8nanobind6detail6Buffer3putILm25EEEvRAT__Kc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(25) @.str.9)
          to label %bb.ck unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ck:                                            ; preds = %bb.cj
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit114, %bb.ck
  %i.hx = load ptr, ptr %i.l, align 8
  %i.hy = load ptr, ptr %1, align 8               ; 2 uses
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = add i64 %i.hz, 1
  %i.ic = sub i64 %i.ib, %i.ia                    ; 2 uses
  %i.id = call noalias ptr @malloc(i64 noundef %i.ic) #26 ; 5 uses
  %.not.i115 = icmp eq ptr %i.id, null
  br i1 %.not.i115, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ie = load ptr, ptr @stderr, align 8
  %fwrite.i116 = call i64 @fwrite(ptr nonnull @.str.16, i64 52, i64 1, ptr %i.ie) #27 ; 0 uses
  call void @abort() #24
  unreachable

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.id, ptr align 1 %i.hy, i64 %i.ic, i1 false)
  %i.if = cmpxchg ptr %i.c, ptr null, ptr %i.id release acquire, align 8 ; 2 uses
  %i.ig = extractvalue { ptr, i1 } %i.if, 1
  br i1 %i.ig, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ih = extractvalue { ptr, i1 } %i.if, 0
  call void @free(ptr noundef nonnull %i.id) #25
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cn, %bb.co
  %.0 = phi ptr [ %i.ih, %bb.co ], [ %i.id, %bb.cn ] ; 4 uses
  %i.ii = load ptr, ptr %1, align 8
  call void @free(ptr noundef %i.ii) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.not148, label %_ZNKR8nanobind6handle7dec_refEv.exit119.thread143, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ij = load i64, ptr %i.j, align 8             ; 2 uses
  %i.ik = and i64 %i.ij, 2147483648
  %.not2.i.i118 = icmp eq i64 %i.ik, 0
  br i1 %.not2.i.i118, label %bb.cr, label %_ZNKR8nanobind6handle7dec_refEv.exit119.thread143

bb.cr:                                            ; preds = %bb.cq
  %i.il = add nsw i64 %i.ij, -1                   ; 2 uses
  store i64 %i.il, ptr %i.j, align 8
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %bb.cs, label %_ZNKR8nanobind6handle7dec_refEv.exit119.thread143

bb.cs:                                            ; preds = %bb.cr
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.j)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit119.thread143 unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.in = landingpad { ptr, i32 }
          catch ptr null
  %i.io = extractvalue { ptr, i32 } %i.in, 0
  call void @__clang_call_terminate(ptr %i.io) #24
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit119.thread143: ; preds = %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.c
  %.1146 = phi ptr [ %i.g, %bb.c ], [ %.0, %bb.cs ], [ %.0, %bb.cr ], [ %.0, %bb.cq ], [ %.0, %bb.cp ]
  call void @_ZN8nanobind6detail14tstate_releaseEPv(ptr noundef nonnull %i.f) #25
  br label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

_ZN8nanobind6detail13cleanup_guardD2Ev.exit:      ; preds = %bb.b, %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, %_ZNKR8nanobind6handle7dec_refEv.exit119.thread143, %bb.a
  %.2 = phi ptr [ %i.d, %bb.a ], [ %.1146, %_ZNKR8nanobind6handle7dec_refEv.exit119.thread143 ], [ @.str, %bb.b ], [ @.str, %_ZN8nanobind6detail13cleanup_guardC2Ev.exit ]
  ret ptr %.2

.loopexit:                                        ; preds = %.lr.ph176, %bb.y, %bb.ag, %bb.an, %bb.bb, %bb.az, %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit53, %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit51
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.l, %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE9push_backERKS1_.exit
  %lpad.loopexit164 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.bx, %bb.bw, %bb.d
  %lpad.loopexit.split-lp165 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit164, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp165, %.loopexit.split-lp.loopexit.split-lp ]
  %i.ip = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.ip) #24
  unreachable
}

declare ptr @PyException_GetTraceback(ptr noundef) local_unnamed_addr #3

declare ptr @PyFrame_GetBack(ptr noundef) local_unnamed_addr #3

declare ptr @PyFrame_GetCode(ptr noundef) local_unnamed_addr #3

declare void @PyErr_Clear() local_unnamed_addr #3

declare i32 @PyFrame_GetLineNumber(ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_GetAttrString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail6Buffer3putILm25EEEvRAT__Kc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(25) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp ult ptr %i.c, %i.e
  br i1 %.not.i, label %_ZN8nanobind6detail6Buffer3putEPKcm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = add i64 %i.g, 25
  %i.i = sub i64 %i.h, %i.f
  tail call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  %.pre.i = load ptr, ptr %i.a, align 8
  br label %_ZN8nanobind6detail6Buffer3putEPKcm.exit

_ZN8nanobind6detail6Buffer3putEPKcm.exit:         ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.j, ptr noundef nonnull align 1 dereferenceable(24) %1, i64 24, i1 false)
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8
  store i8 0, ptr %i.l, align 1
  ret void
}

; Function Attrs: mustprogress memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_ZN8nanobind6detail29register_exception_translatorEPNS0_12nb_internalsEPFvRKNSt15__exception_ptr13exception_ptrEPvES7_(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 4 uses
  store ptr %1, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  store ptr %i.e, ptr %i.c, align 16
  store ptr %i.a, ptr %i.d, align 8
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN8nanobind6detail13exception_newEPNS0_12nb_internalsEP7_objectPKcS4_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nanobind::object", align 8  ; 6 uses
  %5 = alloca %"class.nanobind::str", align 8     ; 5 uses
  %6 = alloca %"class.nanobind::object", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr null, ptr %4, align 8
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, @PyModule_Type
  br i1 %.not.i, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyModule_Type)
          to label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit unwind label %bb.c

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit: ; preds = %bb.b
  %.not53 = icmp eq i32 %i.b, 0
  br i1 %.not53, label %bb.d, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread: ; preds = %bb.a, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  %i.c = tail call noundef ptr @_ZN8nanobind6detail15getattr_str_defEPNS0_12nb_internalsEP7_objectPKcmS4_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.7, i64 noundef 9, ptr noundef null) #25, !noalias !20
  br label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.f
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.d:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr @_ZN8nanobind6detail11getattr_defEP7_objectS2_S2_(ptr noundef nonnull %1, ptr noundef %i.f, ptr noundef null) #25, !noalias !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread
  %i.h = phi ptr [ %i.g, %bb.d ], [ %i.c, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread ] ; 6 uses
  store ptr %i.h, ptr %4, align 8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ...) @_ZN8nanobind6detail5raiseEPKcz(ptr noundef nonnull @.str.10) #29
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.i = invoke ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.h, ptr noundef %2)
          to label %bb.i unwind label %bb.l       ; 6 uses

bb.i:                                             ; preds = %bb.h
  store ptr %i.i, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.j = invoke noundef ptr @PyUnicode_AsUTF8AndSize(ptr noundef %i.i, ptr noundef null)
          to label %_ZNK8nanobind3str5c_strEv.exit unwind label %bb.m

_ZNK8nanobind3str5c_strEv.exit:                   ; preds = %bb.i
  %i.k = invoke ptr @PyErr_NewException(ptr noundef %i.j, ptr noundef %3, ptr noundef null)
          to label %bb.j unwind label %bb.m       ; 4 uses

bb.j:                                             ; preds = %_ZNK8nanobind3str5c_strEv.exit
  store ptr %i.k, ptr %6, align 8
  %.not54 = icmp eq ptr %i.k, null
  br i1 %.not54, label %bb.k, label %bb.o, !prof !3

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #24
  unreachable

bb.l:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.m:                                             ; preds = %bb.i, %_ZNK8nanobind3str5c_strEv.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.n:                                             ; preds = %bb.r, %bb.p
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #25 ; 0 uses
  br label %bb.aa

bb.o:                                             ; preds = %bb.j
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28
  %i.q = add i64 %i.p, 1
  %i.r = tail call noundef zeroext i1 @_ZN8nanobind6detail11hasattr_strEPNS0_12nb_internalsEP7_objectPKcm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %i.q) #25
  br i1 %i.r, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void (ptr, ...) @_ZN8nanobind6detail5raiseEPKcz(ptr noundef nonnull @.str.12) #29
          to label %bb.q unwind label %bb.n

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28
  %i.t = add i64 %i.s, 1
  invoke void @_ZN8nanobind6detail11setattr_strEPNS0_12nb_internalsEP7_objectPKcmS4_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %i.t, ptr noundef nonnull %i.k)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit32 unwind label %bb.n

_ZNKR8nanobind6handle7dec_refEv.exit32:           ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.not.i.i33 = icmp eq ptr %i.i, null
  br i1 %.not.i.i33, label %bb.w, label %bb.s

bb.s:                                             ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit32
  %i.u = load i64, ptr %i.i, align 8              ; 2 uses
  %i.v = and i64 %i.u, 2147483648
  %.not2.i.i34 = icmp eq i64 %i.v, 0
  br i1 %.not2.i.i34, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.w = add nsw i64 %i.u, -1                     ; 2 uses
  store i64 %i.w, ptr %i.i, align 8
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.i)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #24
  unreachable

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s, %_ZNKR8nanobind6handle7dec_refEv.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.aa = load i64, ptr %i.h, align 8             ; 2 uses
  %i.ab = and i64 %i.aa, 2147483648
  %.not2.i.i37 = icmp eq i64 %i.ab, 0
  br i1 %.not2.i.i37, label %bb.x, label %_ZNKR8nanobind6handle7dec_refEv.exit38

bb.x:                                             ; preds = %bb.w
  %i.ac = add nsw i64 %i.aa, -1                   ; 2 uses
  store i64 %i.ac, ptr %i.h, align 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.y, label %_ZNKR8nanobind6handle7dec_refEv.exit38

bb.y:                                             ; preds = %bb.x
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.h)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit38 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #24
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit38:           ; preds = %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %i.k

bb.aa:                                            ; preds = %bb.n, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.n ], [ %i.m, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #25 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aa ], [ %i.l, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.c
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ab ], [ %i.d, %bb.c ]
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail5raiseEPKcz(ptr noundef %0, ...) local_unnamed_addr #12 comdat {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.va_start.p0(ptr nonnull %1)
  call void @_ZN8nanobind6detail7raise_vENS_14exception_typeEPKcP13__va_list_tag(i32 noundef 0, ptr noundef %0, ptr noundef nonnull %1)
  unreachable
}

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #3

declare ptr @PyErr_NewException(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8nanobind6detail7chain_vEP7_objectPKcP13__va_list_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke ptr @PyErr_GetRaisedException()
          to label %bb.b unwind label %bb.j       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = invoke ptr @PyErr_FormatV(ptr noundef %0, ptr noundef %1, ptr noundef %2)
          to label %bb.c unwind label %bb.j       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = invoke ptr @PyErr_GetRaisedException()
          to label %bb.e unwind label %bb.j       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.d = load i32, ptr %i.a, align 8
  %i.e = add i32 %i.d, 1                          ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZL9Py_INCREFP7_object.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.e, ptr %i.a, align 8
  br label %_ZL9Py_INCREFP7_object.exit

_ZL9Py_INCREFP7_object.exit:                      ; preds = %bb.e, %bb.f
  invoke void @PyException_SetCause(ptr noundef %i.c, ptr noundef nonnull %i.a)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZL9Py_INCREFP7_object.exit
  invoke void @PyException_SetContext(ptr noundef %i.c, ptr noundef nonnull %i.a)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @PyErr_SetRaisedException(ptr noundef %i.c)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.c
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g, %_ZL9Py_INCREFP7_object.exit, %bb.d, %bb.b, %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #24
  unreachable
}

declare ptr @PyErr_FormatV(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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
  tail call void @__clang_call_terminate(ptr %i.g) #24
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
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.h) #26 ; 5 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @stderr, align 8
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.14, i64 54, i64 1, ptr %i.l) #27 ; 0 uses
  tail call void @abort() #24
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

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail18raise_python_errorEv() local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 32) #25 ; 2 uses
  tail call void @_ZN8nanobind4abi112python_errorC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN8nanobind4abi112python_errorE, ptr nonnull @_ZN8nanobind4abi112python_errorD2Ev) #29
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
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #24
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
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
  tail call void @_ZN8nanobind6detail13error_releaseEPNS0_13error_payloadE(ptr noundef nonnull %i.a) #25
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8nanobind4abi112python_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nanobind4abi112python_errorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN8nanobind6detail13error_releaseEPNS0_13error_payloadE(ptr noundef nonnull %i.a) #25, !inline_history !22
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #25, !inline_history !22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8nanobind4abi112python_error4whatEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef ptr @_ZN8nanobind6detail10error_whatEPNS0_13error_payloadE(ptr noundef nonnull %i.a) #25
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
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
  unreachable

_ZNKSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3
  %mul2 = ashr exact i64 %i.f, 2
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 1152921504606846975)
  %i.k = select i1 %i.i, i64 1152921504606846975, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = shl nuw nsw i64 %i.k, 3
  %i.o = invoke ptr @PyMem_Malloc(i64 noundef %i.n)
          to label %bb.c unwind label %bb.e       ; 6 uses

bb.c:                                             ; preds = %_ZNKSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE12_M_check_lenEmPKc.exit
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_M_allocateEm.exit, !prof !3

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.19) #24
  unreachable

bb.e:                                             ; preds = %_ZNKSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE12_M_check_lenEmPKc.exit
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #24
  unreachable

_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_M_allocateEm.exit: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.s = load ptr, ptr %2, align 8
  store ptr %i.s, ptr %i.r, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_S_relocateEPS1_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_M_allocateEm.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_M_allocateEm.exit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.t = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !31, !noalias !30
  store ptr %i.t, ptr %.012.i.i.i, align 8, !alias.scope !30, !noalias !31
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.u, %1
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_S_relocateEPS1_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !26

_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_S_relocateEPS1_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_M_allocateEm.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_M_allocateEm.exit ], [ %i.v, %.lr.ph.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_S_relocateEPS1_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_S_relocateEPS1_S7_S7_RS5_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.z, %.lr.ph.i.i.i18 ], [ %i.w, %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_S_relocateEPS1_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.y, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_S_relocateEPS1_S7_S7_RS5_.exit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.x = load ptr, ptr %.0911.i.i.i20, align 8, !alias.scope !33, !noalias !32
  store ptr %i.x, ptr %.012.i.i.i19, align 8, !alias.scope !32, !noalias !33
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_S_relocateEPS1_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !26

_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_S_relocateEPS1_S7_S7_RS5_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_S_relocateEPS1_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.w, %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_S_relocateEPS1_S7_S7_RS5_.exit ], [ %i.z, %.lr.ph.i.i.i18 ]
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_S_relocateEPS1_S7_S7_RS5_.exit23
  invoke void @PyMem_Free(ptr noundef nonnull %i.c)
          to label %_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE13_M_deallocateEPS1_m.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #24
  unreachable

_ZNSt12_Vector_baseIP6_frameN8nanobind6detail12py_allocatorIS1_EEE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEE11_S_relocateEPS1_S7_S7_RS5_.exit23, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.k
  store ptr %i.ad, ptr %i.ac, align 8
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
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { cold }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #31 = { builtin nounwind }

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
