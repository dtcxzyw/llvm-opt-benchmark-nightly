Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cv2_convert?download=true
inline.NumInlined: 489
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_Z11pyopencv_toIlEbP7_objectRT_RK7ArgInfo:bb.a
  br i1 %.not.i, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit: ; preds = %bb.f
  %i.r = tail call i32 @PyType_IsSubtype(ptr noundef nonnull %.val.i, ptr noundef %i.q)
  %.not17 = icmp eq i32 %i.r, 0
  br i1 %.not17, label %bb.g, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread: ; preds = %bb.f, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit, %bb.e
  %i.s = tail call i64 @PyLong_AsLongLong(ptr noundef nonnull %0) ; 2 uses
  store i64 %i.s, ptr %1, align 8, !tbaa !44
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  %i.u = load ptr, ptr %2, align 8, !tbaa !46
  %i.v = tail call noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.17, ptr noundef %i.u) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread
  %i.w = tail call ptr @PyErr_Occurred()
  %i.x = icmp eq ptr %i.w, null
  br label %bb.i

bb.i:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, %bb.h, %bb.a, %bb.g, %_Z6isBoolP7_object.exit.thread
  %.0 = phi i1 [ false, %bb.g ], [ false, %_Z6isBoolP7_object.exit.thread ], [ true, %bb.a ], [ true, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread ], [ %i.x, %bb.h ]
  ret i1 %.0
}

declare i64 @PyLong_AsLongLong(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z13pyopencv_fromIlEP7_objectRKT_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !44
  %i.b = tail call ptr @PyLong_FromLongLong(i64 noundef %i.a)
  ret ptr %i.b
}

declare ptr @PyLong_FromLongLong(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z11pyopencv_toIhEbP7_objectRT_RK7ArgInfo(ptr noundef %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(12) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, @_Py_NoneStruct
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @PyLong_AsLong(ptr noundef nonnull %0)
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = tail call i32 @llvm.smax.i32(i32 %i.d, i32 0)
  %i.f = tail call i32 @llvm.umin.i32(i32 %i.e, i32 255)
  %i.g = trunc nuw i32 %i.f to i8
  store i8 %i.g, ptr %1, align 1, !tbaa !60
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @PyErr_Occurred()
  %.not8 = icmp eq ptr %i.h, null
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ %.not8, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z13pyopencv_fromIhEP7_objectRKT_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !60
  %i.b = zext i8 %i.a to i64
  %i.c = tail call ptr @PyLong_FromLong(i64 noundef %i.b)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z11pyopencv_toIcEbP7_objectRT_RK7ArgInfo(ptr noundef %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, @_Py_NoneStruct
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val2.i = load ptr, ptr %i.f, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp eq ptr %.val2.i, %i.e
  br i1 %.not.i.i, label %_Z6isBoolP7_object.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke i32 @PyType_IsSubtype(ptr noundef %.val2.i, ptr noundef %i.e)
          to label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i unwind label %bb.d

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i: ; preds = %bb.c
  %.not4.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i, label %_Z6isBoolP7_object.exit, label %_Z6isBoolP7_object.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #18
  unreachable

_Z6isBoolP7_object.exit:                          ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !26 ; 4 uses
  %i.j = icmp eq ptr %.val.i, @PyBool_Type
  br i1 %i.j, label %_Z6isBoolP7_object.exit.thread, label %bb.e

_Z6isBoolP7_object.exit.thread:                   ; preds = %bb.b, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i, %_Z6isBoolP7_object.exit
  %i.k = load ptr, ptr %2, align 8, !tbaa !46
  %i.l = tail call noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.19, ptr noundef %i.k) ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %_Z6isBoolP7_object.exit
  %i.m = getelementptr i8, ptr %.val.i, i64 168
  %.val14 = load i64, ptr %i.m, align 8, !tbaa !34
  %i.n = and i64 %.val14, 16777216
  %.not = icmp eq i64 %i.n, 0
  %.pre18 = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !49 ; 3 uses
  br i1 %.not, label %bb.f, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.pre18, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %.not.i = icmp eq ptr %.val.i, %i.p
  br i1 %.not.i, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit: ; preds = %bb.f
  %i.q = tail call i32 @PyType_IsSubtype(ptr noundef nonnull %.val.i, ptr noundef %i.p)
  %.not17 = icmp eq i32 %i.q, 0
  br i1 %.not17, label %bb.g, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit._ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread_crit_edge

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit._ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread_crit_edge: ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  %.pre = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !49
  br label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread: ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit._ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread_crit_edge, %bb.f, %bb.e
  %i.r = phi ptr [ %.pre, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit._ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread_crit_edge ], [ %.pre18, %bb.f ], [ %.pre18, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 800
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull %0)
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  store i8 %i.v, ptr %1, align 1, !tbaa !60
  %i.w = icmp eq i8 %i.v, -1
  br i1 %i.w, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  %i.x = load ptr, ptr %2, align 8, !tbaa !46
  %i.y = tail call noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.17, ptr noundef %i.x) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread
  %i.z = tail call ptr @PyErr_Occurred()
  %i.aa = icmp eq ptr %i.z, null
  br label %bb.i

bb.i:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, %bb.h, %bb.a, %bb.g, %_Z6isBoolP7_object.exit.thread
  %.0 = phi i1 [ false, %bb.g ], [ false, %_Z6isBoolP7_object.exit.thread ], [ true, %bb.a ], [ true, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread ], [ %i.aa, %bb.h ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z11pyopencv_toIdEbP7_objectRT_RK7ArgInfo(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, @_Py_NoneStruct
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %.val2.i = load ptr, ptr %i.f, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp eq ptr %.val2.i, %i.e
  br i1 %.not.i.i, label %_Z6isBoolP7_object.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke i32 @PyType_IsSubtype(ptr noundef %.val2.i, ptr noundef %i.e)
          to label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i unwind label %bb.d

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i: ; preds = %bb.c
  %.not4.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i, label %_Z6isBoolP7_object.exit, label %_Z6isBoolP7_object.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #18
  unreachable

_Z6isBoolP7_object.exit:                          ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !26 ; 3 uses
  %i.j = icmp eq ptr %.val.i, @PyBool_Type
  br i1 %i.j, label %_Z6isBoolP7_object.exit.thread, label %bb.e

_Z6isBoolP7_object.exit.thread:                   ; preds = %bb.b, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i, %_Z6isBoolP7_object.exit
  %i.k = load ptr, ptr %2, align 8, !tbaa !46
  %i.l = tail call noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.20, ptr noundef %i.k) ; 0 uses
  br label %bb.m

bb.e:                                             ; preds = %_Z6isBoolP7_object.exit
  %.not.i = icmp eq ptr %.val.i, @PyFloat_Type
  br i1 %.not.i, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit: ; preds = %bb.e
  %i.m = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef nonnull @PyFloat_Type)
  %.not52 = icmp eq i32 %i.m, 0
  %.val.pre57 = load ptr, ptr %i.f, align 8, !tbaa !26 ; 3 uses
  br i1 %.not52, label %3, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread

3:                                                ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  %.not.i41 = icmp eq ptr %.val.pre57, @PyComplex_Type
  br i1 %.not.i41, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit42

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit42: ; preds = %3
  %i.n = tail call i32 @PyType_IsSubtype(ptr noundef %.val.pre57, ptr noundef nonnull @PyComplex_Type)
  %.not = icmp eq i32 %i.n, 0
  %.val.pre = load ptr, ptr %i.f, align 8, !tbaa !26 ; 6 uses
  br i1 %.not, label %bb.f, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread

bb.f:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit42
  %i.o = getelementptr i8, ptr %.val.pre, i64 168
  %.val34 = load i64, ptr %i.o, align 8, !tbaa !34
  %i.p = and i64 %.val34, 16777216
  %.not26 = icmp ne i64 %i.p, 0
  %.not53 = icmp eq ptr %.val.pre, @PyBool_Type
  %or.cond56 = or i1 %.not53, %.not26
  br i1 %or.cond56, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, label %bb.i

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread: ; preds = %3, %bb.e, %bb.f, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit42, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  %.val = phi ptr [ @PyComplex_Type, %3 ], [ @PyFloat_Type, %bb.e ], [ %.val.pre, %bb.f ], [ %.val.pre, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit42 ], [ %.val.pre57, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit ]
  %i.q = getelementptr i8, ptr %.val, i64 168
  %.val33 = load i64, ptr %i.q, align 8, !tbaa !34
  %i.r = and i64 %.val33, 16777216
  %.not30 = icmp eq i64 %i.r, 0
  br i1 %.not30, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread
  %i.s = tail call double @PyLong_AsDouble(ptr noundef nonnull %0)
  br label %.thread.sink.split

bb.h:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread
  %i.t = tail call double @PyFloat_AsDouble(ptr noundef nonnull %0)
  br label %.thread.sink.split

bb.i:                                             ; preds = %bb.f
  %i.u = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !49
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50   ; 2 uses
  %.not.i43 = icmp eq ptr %.val.pre, %i.w
  br i1 %.not.i43, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit44.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit44

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit44: ; preds = %bb.i
  %i.x = tail call i32 @PyType_IsSubtype(ptr noundef nonnull %.val.pre, ptr noundef %i.w)
  %.not54 = icmp eq i32 %i.x, 0
  br i1 %.not54, label %bb.j, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit44.thread

bb.j:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit44
  %i.y = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !49
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50  ; 2 uses
  %.val36 = load ptr, ptr %i.f, align 8, !tbaa !26 ; 2 uses
  %.not.i45 = icmp eq ptr %.val36, %i.aa
  br i1 %.not.i45, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit46.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit46

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit46: ; preds = %bb.j
  %i.ab = tail call i32 @PyType_IsSubtype(ptr noundef %.val36, ptr noundef %i.aa)
  %.not55 = icmp eq i32 %i.ab, 0
  br i1 %.not55, label %bb.l, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit46.thread

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit46.thread: ; preds = %bb.j, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit46
  %i.ac = getelementptr i8, ptr %0, i64 24
  %.val40 = load i32, ptr %i.ac, align 8, !tbaa !61
  %i.ad = icmp eq i32 %.val40, 0
  br i1 %i.ad, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit44.thread, label %bb.l

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit44.thread: ; preds = %bb.i, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit46.thread, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit44
  %i.ae = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116parseNumpyScalarIdEEbP7_objectRT_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.ae, label %.thread, label %bb.k

bb.k:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit44.thread
  %i.af = load ptr, ptr %2, align 8, !tbaa !46
  %i.ag = tail call noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.21, ptr noundef %i.af) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit46.thread, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit46
  %i.ah = load ptr, ptr %2, align 8, !tbaa !46
  %i.ai = tail call noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.22, ptr noundef %i.ah) ; 0 uses
  br label %bb.m

.thread.sink.split:                               ; preds = %bb.h, %bb.g
  %.sink = phi double [ %i.s, %bb.g ], [ %i.t, %bb.h ]
  store double %.sink, ptr %1, align 8, !tbaa !36
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit44.thread
  %i.aj = tail call ptr @PyErr_Occurred()
  %.not31 = icmp eq ptr %i.aj, null
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.a, %.thread, %bb.l, %_Z6isBoolP7_object.exit.thread
  %.1 = phi i1 [ false, %bb.l ], [ false, %_Z6isBoolP7_object.exit.thread ], [ %.not31, %.thread ], [ false, %bb.k ], [ true, %bb.a ]
  ret i1 %.1
}

declare double @PyLong_AsDouble(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116parseNumpyScalarIdEEbP7_objectRT_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !49 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val11 = load ptr, ptr %i.d, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp eq ptr %.val11, %i.c
  br i1 %.not.i, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit: ; preds = %bb.a
  %i.e = tail call i32 @PyType_IsSubtype(ptr noundef %.val11, ptr noundef %i.c)
  %.not17 = icmp eq i32 %i.e, 0
  %.pre19 = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !49 ; 2 uses
  br i1 %.not17, label %bb.b, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread

bb.b:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.pre19, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !26  ; 2 uses
  %.not.i13 = icmp eq ptr %.val, %i.g
  br i1 %.not.i13, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14: ; preds = %bb.b
  %i.h = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef %i.g)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread: ; preds = %bb.b, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14
  %i.i = getelementptr i8, ptr %0, i64 24
  %.val12 = load i32, ptr %i.i, align 8, !tbaa !61
  %i.j = icmp eq i32 %.val12, 0
  br i1 %i.j, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread._ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread_crit_edge, label %.thread

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread._ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread_crit_edge: ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread
  %.pre = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !49
  br label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread: ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread._ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread_crit_edge, %bb.a, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  %i.k = phi ptr [ %.pre, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread._ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread_crit_edge ], [ %i.a, %bb.a ], [ %.pre19, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 360
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = tail call noundef ptr %i.m(i32 noundef 12), !inline_history !130 ; 2 uses
  %i.o = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !49 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 424
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 456
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull %0), !inline_history !131
  %i.u = tail call noundef zeroext i8 %i.q(ptr noundef %i.t, ptr noundef %i.n), !inline_history !131
  %.not18 = icmp eq i8 %i.u, 0
  br i1 %.not18, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread
  %i.v = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 504
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.n) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread, %bb.c
  %.1 = phi i1 [ true, %bb.c ], [ false, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14 ], [ false, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread ], [ false, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z13pyopencv_fromIdEP7_objectRKT_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !36
  %i.b = tail call ptr @PyFloat_FromDouble(double noundef %i.a)
  ret ptr %i.b
}

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z11pyopencv_toIfEbP7_objectRT_RK7ArgInfo(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, @_Py_NoneStruct
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %.val2.i = load ptr, ptr %i.f, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp eq ptr %.val2.i, %i.e
  br i1 %.not.i.i, label %_Z6isBoolP7_object.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke i32 @PyType_IsSubtype(ptr noundef %.val2.i, ptr noundef %i.e)
          to label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i unwind label %bb.d

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i: ; preds = %bb.c
  %.not4.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i, label %_Z6isBoolP7_object.exit, label %_Z6isBoolP7_object.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #18
  unreachable

_Z6isBoolP7_object.exit:                          ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !26 ; 3 uses
  %i.j = icmp eq ptr %.val.i, @PyBool_Type
  br i1 %i.j, label %_Z6isBoolP7_object.exit.thread, label %bb.e

_Z6isBoolP7_object.exit.thread:                   ; preds = %bb.b, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i, %_Z6isBoolP7_object.exit
  %i.k = load ptr, ptr %2, align 8, !tbaa !46
  %i.l = tail call noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.23, ptr noundef %i.k) ; 0 uses
  br label %bb.m

bb.e:                                             ; preds = %_Z6isBoolP7_object.exit
  %.not.i = icmp eq ptr %.val.i, @PyFloat_Type
  br i1 %.not.i, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit: ; preds = %bb.e
  %i.m = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef nonnull @PyFloat_Type)
  %.not54 = icmp eq i32 %i.m, 0
  %.val.pre59 = load ptr, ptr %i.f, align 8, !tbaa !26 ; 3 uses
  br i1 %.not54, label %3, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread

3:                                                ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  %.not.i43 = icmp eq ptr %.val.pre59, @PyComplex_Type
  br i1 %.not.i43, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit44

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit44: ; preds = %3
  %i.n = tail call i32 @PyType_IsSubtype(ptr noundef %.val.pre59, ptr noundef nonnull @PyComplex_Type)
  %.not = icmp eq i32 %i.n, 0
  %.val.pre = load ptr, ptr %i.f, align 8, !tbaa !26 ; 6 uses
  br i1 %.not, label %bb.f, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread

bb.f:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit44
  %i.o = getelementptr i8, ptr %.val.pre, i64 168
  %.val36 = load i64, ptr %i.o, align 8, !tbaa !34
  %i.p = and i64 %.val36, 16777216
  %.not28 = icmp ne i64 %i.p, 0
  %.not55 = icmp eq ptr %.val.pre, @PyBool_Type
  %or.cond58 = or i1 %.not55, %.not28
  br i1 %or.cond58, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, label %bb.i

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread: ; preds = %3, %bb.e, %bb.f, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit44, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  %.val = phi ptr [ @PyComplex_Type, %3 ], [ @PyFloat_Type, %bb.e ], [ %.val.pre, %bb.f ], [ %.val.pre, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit44 ], [ %.val.pre59, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit ]
  %i.q = getelementptr i8, ptr %.val, i64 168
  %.val35 = load i64, ptr %i.q, align 8, !tbaa !34
  %i.r = and i64 %.val35, 16777216
  %.not32 = icmp eq i64 %i.r, 0
  br i1 %.not32, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread
  %i.s = tail call double @PyLong_AsDouble(ptr noundef nonnull %0)
  br label %.thread.sink.split

bb.h:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread
  %i.t = tail call double @PyFloat_AsDouble(ptr noundef nonnull %0)
  br label %.thread.sink.split

bb.i:                                             ; preds = %bb.f
  %i.u = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !49
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50   ; 2 uses
  %.not.i45 = icmp eq ptr %.val.pre, %i.w
  br i1 %.not.i45, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit46.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit46

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit46: ; preds = %bb.i
  %i.x = tail call i32 @PyType_IsSubtype(ptr noundef nonnull %.val.pre, ptr noundef %i.w)
  %.not56 = icmp eq i32 %i.x, 0
  br i1 %.not56, label %bb.j, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit46.thread

bb.j:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit46
  %i.y = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !49
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50  ; 2 uses
  %.val38 = load ptr, ptr %i.f, align 8, !tbaa !26 ; 2 uses
  %.not.i47 = icmp eq ptr %.val38, %i.aa
  br i1 %.not.i47, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit48.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit48

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit48: ; preds = %bb.j
  %i.ab = tail call i32 @PyType_IsSubtype(ptr noundef %.val38, ptr noundef %i.aa)
  %.not57 = icmp eq i32 %i.ab, 0
  br i1 %.not57, label %bb.l, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit48.thread

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit48.thread: ; preds = %bb.j, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit48
  %i.ac = getelementptr i8, ptr %0, i64 24
  %.val42 = load i32, ptr %i.ac, align 8, !tbaa !61
  %i.ad = icmp eq i32 %.val42, 0
  br i1 %i.ad, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit46.thread, label %bb.l

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit46.thread: ; preds = %bb.i, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit48.thread, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit46
  %i.ae = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116parseNumpyScalarIfEEbP7_objectRT_(ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  br i1 %i.ae, label %.thread, label %bb.k

bb.k:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit46.thread
  %i.af = load ptr, ptr %2, align 8, !tbaa !46
  %i.ag = tail call noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.24, ptr noundef %i.af) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit48.thread, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit48
  %i.ah = load ptr, ptr %2, align 8, !tbaa !46
  %i.ai = tail call noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.25, ptr noundef %i.ah) ; 0 uses
  br label %bb.m

.thread.sink.split:                               ; preds = %bb.h, %bb.g
  %.sink64 = phi double [ %i.s, %bb.g ], [ %i.t, %bb.h ]
  %i.aj = fptrunc double %.sink64 to float
  store float %i.aj, ptr %1, align 4, !tbaa !71
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit46.thread
  %i.ak = tail call ptr @PyErr_Occurred()
  %.not33 = icmp eq ptr %i.ak, null
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.a, %.thread, %bb.l, %_Z6isBoolP7_object.exit.thread
  %.1 = phi i1 [ false, %bb.l ], [ false, %_Z6isBoolP7_object.exit.thread ], [ %.not33, %.thread ], [ false, %bb.k ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116parseNumpyScalarIfEEbP7_objectRT_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !49 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val11 = load ptr, ptr %i.d, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp eq ptr %.val11, %i.c
  br i1 %.not.i, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit: ; preds = %bb.a
  %i.e = tail call i32 @PyType_IsSubtype(ptr noundef %.val11, ptr noundef %i.c)
  %.not17 = icmp eq i32 %i.e, 0
  %.pre19 = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !49 ; 2 uses
  br i1 %.not17, label %bb.b, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread

bb.b:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.pre19, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !26  ; 2 uses
  %.not.i13 = icmp eq ptr %.val, %i.g
  br i1 %.not.i13, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14: ; preds = %bb.b
  %i.h = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef %i.g)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread: ; preds = %bb.b, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14
  %i.i = getelementptr i8, ptr %0, i64 24
  %.val12 = load i32, ptr %i.i, align 8, !tbaa !61
  %i.j = icmp eq i32 %.val12, 0
  br i1 %i.j, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread._ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread_crit_edge, label %.thread

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread._ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread_crit_edge: ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread
  %.pre = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !49
  br label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread: ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread._ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread_crit_edge, %bb.a, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  %i.k = phi ptr [ %.pre, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread._ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread_crit_edge ], [ %i.a, %bb.a ], [ %.pre19, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 360
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = tail call noundef ptr %i.m(i32 noundef 11), !inline_history !132 ; 2 uses
  %i.o = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !49 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 424
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 456
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull %0), !inline_history !133
  %i.u = tail call noundef zeroext i8 %i.q(ptr noundef %i.t, ptr noundef %i.n), !inline_history !133
  %.not18 = icmp eq i8 %i.u, 0
  br i1 %.not18, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread
  %i.v = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 504
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.n) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread, %bb.c
  %.1 = phi i1 [ true, %bb.c ], [ false, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14 ], [ false, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit14.thread ], [ false, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z13pyopencv_fromIfEP7_objectRKT_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !71
  %i.b = fpext float %i.a to double
  %i.c = tail call ptr @PyFloat_FromDouble(double noundef %i.b)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z11pyopencv_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbP7_objectRT_RK7ArgInfo(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, @_Py_NoneStruct
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !67
  store i8 0, ptr %i.c, align 8, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.f = load i8, ptr %i.e, align 2, !tbaa !134, !range !39, !noundef !40
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = invoke ptr @PyOS_FSPath(ptr noundef nonnull %0)
          to label %bb.d unwind label %bb.j       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = invoke ptr @PyErr_Occurred()
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %2, align 8, !tbaa !46
  %i.k = invoke noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.26, ptr noundef %i.j)
          to label %_ZL10Py_XDECREFP7_object.exit unwind label %bb.j ; 0 uses

bb.g:                                             ; preds = %bb.e, %bb.b
  %.019 = phi ptr [ %0, %bb.b ], [ %i.h, %bb.e ]  ; 2 uses
  %.017 = phi ptr [ null, %bb.b ], [ %i.h, %bb.e ] ; 4 uses
  %i.l = invoke fastcc noundef zeroext i1 @_ZL16getUnicodeStringP7_objectRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %.019, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.h unwind label %bb.j       ; 5 uses

bb.h:                                             ; preds = %bb.g
  br i1 %i.l, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.j
end_hunk_0
