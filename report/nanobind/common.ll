Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/common?download=true
inline.NumInlined: 170
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN8nanobind6detail13submodule_newEPNS0_12nb_internalsEP7_objectPKcS6_:bb.a
  br i1 %.not, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = invoke ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b, ptr noundef %2)
          to label %bb.d unwind label %bb.aa      ; 6 uses

bb.d:                                             ; preds = %bb.c
  %.not57 = icmp eq ptr %i.c, null
  br i1 %.not57, label %bb.y, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = invoke ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
          to label %bb.f unwind label %bb.aa      ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %bb.y, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = invoke ptr @PyImport_AddModule(ptr noundef nonnull %i.d)
          to label %bb.h unwind label %bb.aa      ; 6 uses

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i16, label %bb.y, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add i32 %i.f, 1                          ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.g, ptr %i.e, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.not13 = icmp eq ptr %3, null
  br i1 %.not13, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.i = invoke ptr @PyUnicode_FromString(ptr noundef nonnull %3)
          to label %bb.m unwind label %bb.aa      ; 3 uses

bb.m:                                             ; preds = %bb.l
  %i.j = load i64, ptr %i.c, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2147483648
  %.not2.i.i.i24 = icmp eq i64 %i.k, 0
  br i1 %.not2.i.i.i24, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.l = add nsw i64 %i.j, -1                     ; 2 uses
  store i64 %i.l, ptr %i.c, align 8
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.c)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #34
  unreachable

bb.q:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.not58 = icmp eq ptr %i.i, null
  br i1 %.not58, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.p = invoke i32 @PyObject_SetAttrString(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.i)
          to label %bb.s unwind label %bb.aa

bb.s:                                             ; preds = %bb.r
  %.not14 = icmp eq i32 %i.p, 0
  br i1 %.not14, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s, %bb.k
  %.sroa.050.0 = phi ptr [ %i.c, %bb.k ], [ %i.i, %bb.s ] ; 3 uses
  %i.q = invoke i32 @PyModule_AddObjectRef(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.e)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  %.not15 = icmp eq i32 %i.q, 0
  br i1 %.not15, label %_ZNKR8nanobind6handle7dec_refEv.exit31, label %bb.y

_ZNKR8nanobind6handle7dec_refEv.exit31:           ; preds = %bb.u
  %i.r = load i64, ptr %.sroa.050.0, align 8      ; 2 uses
  %i.s = and i64 %i.r, 2147483648
  %.not2.i.i33 = icmp eq i64 %i.s, 0
  br i1 %.not2.i.i33, label %bb.v, label %_ZNKR8nanobind6handle7dec_refEv.exit34

bb.v:                                             ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit31
  %i.t = add nsw i64 %i.r, -1                     ; 2 uses
  store i64 %i.t, ptr %.sroa.050.0, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.w, label %_ZNKR8nanobind6handle7dec_refEv.exit34

bb.w:                                             ; preds = %bb.v
  invoke void @_Py_Dealloc(ptr noundef nonnull %.sroa.050.0)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit34 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #34
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit34:           ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit31, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret ptr %i.e

bb.y:                                             ; preds = %bb.h, %bb.u, %bb.s, %bb.q, %bb.f, %bb.d, %bb.b
  invoke void @_ZN8nanobind6detail18raise_python_errorEv() #29
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y, %bb.t, %bb.r, %bb.l, %bb.g, %bb.e, %bb.c, %bb.a
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #34
  unreachable
}

declare ptr @PyModule_GetName(ptr noundef) local_unnamed_addr #12

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #34
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #12

declare ptr @PyImport_AddModule(ptr noundef) local_unnamed_addr #12

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #12

declare i32 @PyObject_SetAttrString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

declare i32 @PyModule_AddObjectRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail18raise_python_errorEv() local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 32) #28 ; 2 uses
  tail call void @_ZN8nanobind4abi112python_errorC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN8nanobind4abi112python_errorE, ptr nonnull @_ZN8nanobind4abi112python_errorD2Ev) #29
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i64 0, -9223372036854775808) i64 @_ZN8nanobind6detail8len_hintEPNS0_12nb_internalsEP7_object(ptr nofree noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke i64 @PyObject_LengthHint(ptr noundef %1, i64 noundef 0)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @PyErr_Clear()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ 0, %bb.c ]
  ret i64 %.0

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #34
  unreachable
}

declare i64 @PyObject_LengthHint(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @PyErr_Clear() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN8nanobind6detail14obj_vectorcallEPNS0_12nb_internalsEP7_objectPKS4_mmj(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #16 {
bb.a:
  %i.a = and i64 %3, 9223372036854775807          ; 6 uses
  %.not = icmp eq ptr %1, null                    ; 4 uses
  %.not45 = icmp ne i64 %i.a, 0                   ; 2 uses
  br i1 %.not45, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp samesign ult i64 %i.a, 4
  br i1 %min.iters.check, label %.lr.ph.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %3, 9223372036854775804        ; 3 uses
  %i.b = insertelement <2 x i1> <i1 poison, i1 false>, i1 %.not, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i1> [ %i.b, %vector.ph ], [ %i.g, %vector.body ]
  %vec.phi52 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <2 x ptr>, ptr %i.c, align 8
  %wide.load53 = load <2 x ptr>, ptr %i.d, align 8
  %i.e = icmp eq <2 x ptr> %wide.load, splat (ptr null)
  %i.f = icmp eq <2 x ptr> %wide.load53, splat (ptr null)
  %i.g = or <2 x i1> %vec.phi, %i.e               ; 2 uses
  %i.h = or <2 x i1> %vec.phi52, %i.f             ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.h, %i.g
  %i.j = bitcast <2 x i1> %bin.rdx to i2
  %i.k = icmp ne i2 %i.j, 0                       ; 2 uses
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader54

.lr.ph.preheader54:                               ; preds = %.lr.ph.preheader, %middle.block
  %.02841.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.029.in40.ph = phi i1 [ %.not, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.029.in.lcssa = phi i1 [ %.not, %bb.a ], [ %i.k, %middle.block ], [ %i.n, %.lr.ph ] ; 2 uses
  br i1 %.029.in.lcssa, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader54, %.lr.ph
  %.02841 = phi i64 [ %i.o, %.lr.ph ], [ %.02841.ph, %.lr.ph.preheader54 ] ; 2 uses
  %.029.in40 = phi i1 [ %i.n, %.lr.ph ], [ %.029.in40.ph, %.lr.ph.preheader54 ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.02841
  %i.m = load ptr, ptr %i.l, align 8
  %.not36 = icmp eq ptr %i.m, null
  %i.n = or i1 %.029.in40, %.not36                ; 2 uses
  %i.o = add nuw nsw i64 %.02841, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

bb.b:                                             ; preds = %._crit_edge
  %i.p = and i32 %5, 1
  %.not32 = icmp eq i32 %i.p, 0
  %PyObject_VectorcallMethod.PyObject_Vectorcall = select i1 %.not32, ptr @PyObject_Vectorcall, ptr @PyObject_VectorcallMethod
  %i.q = tail call noundef ptr %PyObject_VectorcallMethod.PyObject_Vectorcall(ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef null), !callees !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.030 = phi ptr [ null, %._crit_edge ], [ %i.q, %bb.b ] ; 2 uses
  %.not47 = icmp eq i64 %4, 0
  %i.r = icmp samesign ugt i64 %i.a, 64
  %or.cond44 = select i1 %.not47, i1 %i.r, i1 %.not45
  br i1 %or.cond44, label %.lr.ph43.preheader, label %.loopexit

.lr.ph43.preheader:                               ; preds = %bb.c
  %umax = tail call i64 @llvm.umax.i64(i64 %i.a, i64 1)
  br label %.lr.ph43

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %_ZL10Py_XDECREFP7_object.exit
  %.042 = phi i64 [ %i.ab, %_ZL10Py_XDECREFP7_object.exit ], [ 0, %.lr.ph43.preheader ] ; 4 uses
  %i.s = icmp samesign ugt i64 %.042, 63
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph43
  %i.t = shl nuw i64 1, %.042
  %i.u = and i64 %i.t, %4
  %.not35 = icmp eq i64 %i.u, 0
  br i1 %.not35, label %_ZL10Py_XDECREFP7_object.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph43
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.042
  %i.w = load ptr, ptr %i.v, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZL10Py_XDECREFP7_object.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = and i64 %i.x, 2147483648
  %.not2.i = icmp eq i64 %i.y, 0
  br i1 %.not2.i, label %bb.g, label %_ZL10Py_XDECREFP7_object.exit

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i64 %i.x, -1                     ; 2 uses
  store i64 %i.z, ptr %i.w, align 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %_ZL10Py_XDECREFP7_object.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.w)
  br label %_ZL10Py_XDECREFP7_object.exit

_ZL10Py_XDECREFP7_object.exit:                    ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.ab = add nuw nsw i64 %.042, 1                ; 2 uses
  %exitcond48.not = icmp eq i64 %i.ab, %umax
  br i1 %exitcond48.not, label %.loopexit, label %.lr.ph43, !llvm.loop !12

.loopexit:                                        ; preds = %_ZL10Py_XDECREFP7_object.exit, %bb.c
  %i.ac = and i32 %5, 2
  %.not33 = icmp eq i32 %i.ac, 0
  %brmerge = or i1 %.not, %.not33
  br i1 %brmerge, label %_ZL10Py_XDECREFP7_object.exit39, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.ad = load i64, ptr %1, align 8               ; 2 uses
  %i.ae = and i64 %i.ad, 2147483648
  %.not2.i38 = icmp eq i64 %i.ae, 0
  br i1 %.not2.i38, label %bb.j, label %_ZL10Py_XDECREFP7_object.exit39

bb.j:                                             ; preds = %bb.i
  %i.af = add nsw i64 %i.ad, -1                   ; 2 uses
  store i64 %i.af, ptr %1, align 8
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.k, label %_ZL10Py_XDECREFP7_object.exit39

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %1)
  br label %_ZL10Py_XDECREFP7_object.exit39

_ZL10Py_XDECREFP7_object.exit39:                  ; preds = %.loopexit, %bb.k, %bb.j, %bb.i
  %.not34 = icmp eq ptr %.030, null
  br i1 %.not34, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZL10Py_XDECREFP7_object.exit39
  br i1 %.029.in.lcssa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN8nanobind6detail26raise_python_or_cast_errorEv() #29
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZN8nanobind6detail18raise_python_errorEv() #29
  unreachable

bb.o:                                             ; preds = %_ZL10Py_XDECREFP7_object.exit39
  ret ptr %.030
}

declare ptr @PyObject_VectorcallMethod(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #12

declare ptr @PyObject_Vectorcall(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZL10Py_XDECREFP7_object(ptr noundef %0) unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZL9Py_DECREFP7_object.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 2147483648
  %.not2 = icmp eq i64 %i.b, 0
  br i1 %.not2, label %bb.c, label %_ZL9Py_DECREFP7_object.exit

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i64 %i.a, -1                     ; 2 uses
  store i64 %i.c, ptr %0, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %_ZL9Py_DECREFP7_object.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %0)
  br label %_ZL9Py_DECREFP7_object.exit

_ZL9Py_DECREFP7_object.exit:                      ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail26raise_python_or_cast_errorEv() local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @PyErr_Occurred()
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 32) #28 ; 2 uses
  tail call void @_ZN8nanobind4abi112python_errorC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN8nanobind4abi112python_errorE, ptr nonnull @_ZN8nanobind4abi112python_errorD2Ev) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt8bad_cast, i64 16), ptr %i.c, align 8
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt8bad_cast, ptr nonnull @_ZNSt8bad_castD1Ev) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN8nanobind6detail17obj_vectorcall_exEPNS0_12nb_internalsEP7_objectPNS0_8call_argEmj(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #16 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %.not = icmp eq ptr %1, null                    ; 3 uses
  %i.d = icmp eq i64 %3, 0                        ; 3 uses
  %.not129225 = or i1 %i.d, %.not
  br i1 %.not129225, label %._crit_edge.thread281, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.thread
  %.091228 = phi i64 [ %i.ah, %.thread ], [ 0, %bb.a ] ; 2 uses
  %.0100227 = phi i64 [ %.4104.ph, %.thread ], [ 0, %bb.a ] ; 4 uses
  %.0106226 = phi i64 [ %.4110.ph, %.thread ], [ 0, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.091228 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq i32 %i.g, 2                      ; 2 uses
  %i.i = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not130 = icmp eq ptr %i.i, null               ; 4 uses
  br i1 %.not130, label %.lr.ph251.preheader, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  switch i32 %i.g, label %bb.e [
    i32 1, label %bb.c
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %.not131 = icmp ne ptr %i.k, null               ; 2 uses
  %i.l = zext i1 %.not131 to i64
  %spec.select = add i64 %.0100227, %i.l
  %not..not131 = xor i1 %.not131, true
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.m = add i64 %.0106226, 1
  br label %.thread

bb.e:                                             ; preds = %bb.b
  br i1 %i.h, label %_ZN8nanobind6detailL11kwargs_dictEP7_object.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @PyDict_New()              ; 6 uses
  %.not.i146 = icmp eq ptr %i.n, null
  br i1 %.not.i146, label %.lr.ph251.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call i32 @PyDict_Update(ptr noundef nonnull %i.n, ptr noundef nonnull %i.i)
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %_ZN8nanobind6detailL11kwargs_dictEP7_object.exit.thread163

bb.h:                                             ; preds = %bb.g
  %i.q = load i64, ptr %i.n, align 8              ; 2 uses
  %i.r = and i64 %i.q, 2147483648
  %.not11.i = icmp eq i64 %i.r, 0
  br i1 %.not11.i, label %bb.i, label %_ZL9Py_DECREFP7_object.exit.i

bb.i:                                             ; preds = %bb.h
  %i.s = add nsw i64 %i.q, -1                     ; 2 uses
  store i64 %i.s, ptr %i.n, align 8
  %i.t = icmp eq i64 %i.s, 0
end_hunk_0
