Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_weakref?download=true
inline.NumInlined: 25
inline.NumDeleted: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.PyModuleDef_Base = type { %struct._object, ptr, i64, ptr }
%struct._object = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct._typeobject = type { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8, i16 }
%struct.PyVarObject = type { %struct._object, i64 }

@weakrefmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { %union.anon { i64 1407378104778752 }, ptr null }, ptr null, i64 0, ptr null }, ptr @.str, ptr @.str.1, i64 0, ptr @weakref_functions, ptr @weakref_slots, ptr null, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [9 x i8] c"_weakref\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Weak-reference support module.\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"getweakrefcount\00", align 1
@_weakref_getweakrefcount__doc__ = internal constant [90 x i8] c"getweakrefcount($module, object, /)\0A--\0A\0AReturn the number of weak references to 'object'.\00", align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"_remove_dead_weakref\00", align 1
@_weakref__remove_dead_weakref__doc__ = internal constant [111 x i8] c"_remove_dead_weakref($module, dct, key, /)\0A--\0A\0AAtomically remove key from dict if it points to a dead weakref.\00", align 16
@.str.4 = private unnamed_addr constant [12 x i8] c"getweakrefs\00", align 1
@_weakref_getweakrefs__doc__ = internal constant [102 x i8] c"getweakrefs($module, object, /)\0A--\0A\0AReturn a list of all weak reference objects pointing to 'object'.\00", align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"proxy\00", align 1
@_weakref_proxy__doc__ = internal constant [203 x i8] c"proxy($module, object, callback=None, /)\0A--\0A\0ACreate a proxy object that weakly references 'object'.\0A\0A'callback', if given, is called with a reference to the\0Aproxy when 'object' is about to be finalized.\00", align 16
@weakref_functions = internal global [5 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.2, ptr @_weakref_getweakrefcount, i32 8, [4 x i8] zeroinitializer, ptr @_weakref_getweakrefcount__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.3, ptr @_weakref__remove_dead_weakref, i32 128, [4 x i8] zeroinitializer, ptr @_weakref__remove_dead_weakref__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.4, ptr @_weakref_getweakrefs, i32 8, [4 x i8] zeroinitializer, ptr @_weakref_getweakrefs__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.5, ptr @_weakref_proxy, i32 128, [4 x i8] zeroinitializer, ptr @_weakref_proxy__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.7 = private unnamed_addr constant [11 x i8] c"argument 1\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@_PyWeakref_RefType = external global %struct._typeobject, align 8
@_PyWeakref_ProxyType = external global %struct._typeobject, align 8
@_PyWeakref_CallableProxyType = external global %struct._typeobject, align 8
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"not a weakref\00", align 1
@_Py_tss_interp = external thread_local local_unnamed_addr global ptr, align 8
@weakref_slots = internal global [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @weakref_exec }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr inttoptr (i64 2 to ptr) }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr inttoptr (i64 1 to ptr) }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"ReferenceType\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"ProxyType\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"CallableProxyType\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @PyInit__weakref() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyModuleDef_Init(ptr noundef nonnull @weakrefmodule) #3
  ret ptr %i.a
}

declare ptr @PyModuleDef_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @_weakref_getweakrefcount(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @_PyWeakref_GetWeakrefCount(ptr noundef %1) #3 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.a) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_weakref__remove_dead_weakref(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.3, i64 noundef %2, i64 noundef 2, i64 noundef 2) #3
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !13     ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr i8, ptr %.val, i64 168
  %.val12 = load i64, ptr %i.d, align 8, !tbaa !25
  %i.e = and i64 %.val12, 536870912
  %.not11 = icmp eq i64 %i.e, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.b) #3
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = tail call i32 @_PyDict_DelItemIf(ptr noundef nonnull %i.b, ptr noundef %i.g, ptr noundef nonnull @is_dead_weakref, ptr noundef null) #3
  %i.i = icmp slt i32 %i.h, 0
  %._Py_NoneStruct.i = select i1 %i.i, ptr null, ptr @_Py_NoneStruct
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d
  %.0 = phi ptr [ %._Py_NoneStruct.i, %bb.e ], [ null, %bb.d ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_weakref_getweakrefs(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr i8, ptr %.val, i64 208
  %.val27 = load i64, ptr %i.b, align 8, !tbaa !29
  %.not32 = icmp eq i64 %.val27, 0
  %i.c = tail call ptr @PyList_New(i64 noundef 0) #3 ; 8 uses
  br i1 %.not32, label %Py_DECREF.exit22, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_DECREF.exit22, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val9.i = load ptr, ptr %i.a, align 8, !tbaa !16 ; 2 uses
  %i.e = getelementptr i8, ptr %.val9.i, i64 168
  %.val9.val.i = load i64, ptr %i.e, align 8, !tbaa !25
  %i.f = and i64 %.val9.val.i, 2147483648
  %.not10.i = icmp eq i64 %i.f, 0
  br i1 %.not10.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 168
  %i.h = load i64, ptr %i.g, align 8, !tbaa !25
  %i.i = and i64 %i.h, 2
  %.not8.i = icmp eq i64 %i.i, 0
  br i1 %.not8.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.l = tail call ptr @_PyStaticType_GetState(ptr noundef %i.k, ptr noundef nonnull %1) #3
  %i.m = getelementptr i8, ptr %i.l, i64 40
  br label %_PyObject_GET_WEAKREFS_LISTPTR.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr i8, ptr %.val9.i, i64 208
  %i.o = load i64, ptr %i.n, align 8, !tbaa !29
  %i.p = getelementptr i8, ptr %1, i64 %i.o
  br label %_PyObject_GET_WEAKREFS_LISTPTR.exit

_PyObject_GET_WEAKREFS_LISTPTR.exit:              ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.m, %bb.e ], [ %i.p, %bb.f ]
  %.034.a = load ptr, ptr %.0.i, align 8, !tbaa !32 ; 2 uses
  %.not1835 = icmp eq ptr %.034.a, null
  br i1 %.not1835, label %Py_DECREF.exit22, label %.lr.ph

.lr.ph:                                           ; preds = %_PyObject_GET_WEAKREFS_LISTPTR.exit, %_Py_TryIncref.exit.a
  %.036 = phi ptr [ %.0, %_Py_TryIncref.exit.a ], [ %.034.a, %_PyObject_GET_WEAKREFS_LISTPTR.exit ] ; 9 uses
  %.val.i = load i32, ptr %.036, align 8, !tbaa !27 ; 3 uses
  %.not.i28 = icmp eq i32 %.val.i, 0
  %2 = add i32 %.val.i, 1073741824
  %or.cond = icmp ult i32 %2, 1073741825
  br i1 %or.cond, label %_Py_TryIncref.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.q = add nuw i32 %.val.i, 1
  store i32 %i.q, ptr %.036, align 8, !tbaa !27
  br label %_Py_TryIncref.exit

_Py_TryIncref.exit:                               ; preds = %.lr.ph, %bb.g
  br i1 %.not.i28, label %_Py_TryIncref.exit.a, label %bb.h

bb.h:                                             ; preds = %_Py_TryIncref.exit
  %i.r = tail call i32 @PyList_Append(ptr noundef nonnull %i.c, ptr noundef nonnull %.036) #3
  %.not20 = icmp eq i32 %i.r, 0
  %i.s = load i32, ptr %.036, align 8, !tbaa !27  ; 3 uses
  %.not.i = icmp sgt i32 %i.s, -1                 ; 2 uses
  br i1 %.not20, label %bb.m, label %.critedge

.critedge:                                        ; preds = %bb.h
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit24

bb.i:                                             ; preds = %.critedge
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %.036, align 8, !tbaa !27
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.j, label %Py_DECREF.exit24

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %.036) #3
  br label %Py_DECREF.exit24

Py_DECREF.exit24:                                 ; preds = %.critedge, %bb.i, %bb.j
  %i.v = load i32, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %.not.i21 = icmp sgt i32 %i.v, -1
  br i1 %.not.i21, label %bb.k, label %Py_DECREF.exit22

bb.k:                                             ; preds = %Py_DECREF.exit24
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.c, align 8, !tbaa !27
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.l, label %Py_DECREF.exit22

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #3
  br label %Py_DECREF.exit22

bb.m:                                             ; preds = %bb.h
  br i1 %.not.i, label %bb.n, label %_Py_TryIncref.exit.a

bb.n:                                             ; preds = %bb.m
  %i.y = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.y, ptr %.036, align 8, !tbaa !27
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.o, label %_Py_TryIncref.exit.a

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %.036) #3
  br label %_Py_TryIncref.exit.a

_Py_TryIncref.exit.a:                             ; preds = %bb.o, %bb.n, %bb.m, %_Py_TryIncref.exit
  %i.aa = getelementptr i8, ptr %.036, i64 48
  %.0 = load ptr, ptr %i.aa, align 8, !tbaa !32   ; 2 uses
  %.not18 = icmp eq ptr %.0, null
  br i1 %.not18, label %Py_DECREF.exit22, label %.lr.ph, !llvm.loop !28

Py_DECREF.exit22:                                 ; preds = %_Py_TryIncref.exit.a, %bb.a, %_PyObject_GET_WEAKREFS_LISTPTR.exit, %bb.l, %bb.k, %Py_DECREF.exit24, %bb.b
  %.4 = phi ptr [ %i.c, %bb.a ], [ null, %bb.b ], [ null, %bb.l ], [ null, %Py_DECREF.exit24 ], [ null, %bb.k ], [ %i.c, %_PyObject_GET_WEAKREFS_LISTPTR.exit ], [ %i.c, %_Py_TryIncref.exit.a ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define internal ptr @_weakref_proxy(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond = icmp ult i64 %i.a, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.5, i64 noundef %2, i64 noundef 1, i64 noundef 2) #3
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !13
  %i.d = icmp slt i64 %2, 2
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ null, %bb.c ], [ %i.f, %bb.d ]
  %i.g = tail call ptr @PyWeakref_NewProxy(ptr noundef %i.c, ptr noundef %.0) #3
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.010 = phi ptr [ %i.g, %bb.e ], [ null, %bb.b ]
  ret ptr %.010
}

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #1

declare i64 @_PyWeakref_GetWeakrefCount(ptr noundef) local_unnamed_addr #1

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyDict_DelItemIf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @is_dead_weakref(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val7 = load ptr, ptr %i.a, align 8, !tbaa !16 ; 2 uses
  %.not.i = icmp eq ptr %.val7, @_PyWeakref_RefType
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val7, ptr noundef nonnull @_PyWeakref_RefType) #3
  %.not10 = icmp eq i32 %i.b, 0
  br i1 %.not10, label %bb.b, label %PyObject_TypeCheck.exit.thread

bb.b:                                             ; preds = %PyObject_TypeCheck.exit
  %.val6 = load ptr, ptr %i.a, align 8, !tbaa !16 ; 2 uses
  %.not = icmp eq ptr %.val6, @_PyWeakref_ProxyType
  %.not11 = icmp eq ptr %.val6, @_PyWeakref_CallableProxyType
  %or.cond = or i1 %.not, %.not11
  br i1 %or.cond, label %PyObject_TypeCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.9) #3
  br label %_PyWeakref_IS_DEAD.exit

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %bb.b, %PyObject_TypeCheck.exit
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val8 = load ptr, ptr %i.d, align 8, !tbaa !35 ; 2 uses
  %i.e = icmp eq ptr %.val8, @_Py_NoneStruct
  br i1 %i.e, label %_PyWeakref_IS_DEAD.exit, label %bb.d

bb.d:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %.val.i = load i32, ptr %.val8, align 8, !tbaa !27
  %i.f = icmp eq i32 %.val.i, 0
  %i.g = zext i1 %i.f to i32
  br label %_PyWeakref_IS_DEAD.exit

_PyWeakref_IS_DEAD.exit:                          ; preds = %bb.d, %PyObject_TypeCheck.exit.thread, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ %i.g, %bb.d ], [ 1, %PyObject_TypeCheck.exit.thread ]
  ret i32 %.0
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyStaticType_GetState(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #2

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

declare ptr @PyWeakref_NewProxy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @weakref_exec(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @_PyWeakref_RefType) #3
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @_PyWeakref_RefType) #3
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @_PyWeakref_ProxyType) #3
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @_PyWeakref_CallableProxyType) #3
  %.lobit = ashr i32 %i.g, 31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ], [ %.lobit, %bb.d ]
  ret i32 %.0
}

declare i32 @PyModule_AddObjectRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"p1 _ZTS7_object", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTS11_typeobject", !11, i64 0}
!15 = !{!"_object", !8, i64 0, !14, i64 8}
!16 = !{!15, !14, i64 8}
!17 = !{!"long", !8, i64 0}
!18 = !{!"PyVarObject", !15, i64 0, !17, i64 16}
!19 = !{!"p1 omnipotent char", !11, i64 0}
!20 = !{!"p1 _ZTS11PyMethodDef", !11, i64 0}
!21 = !{!"p1 _ZTS11PyMemberDef", !11, i64 0}
!22 = !{!"p1 _ZTS11PyGetSetDef", !11, i64 0}
!23 = !{!"short", !8, i64 0}
!24 = !{!"_typeobject", !18, i64 0, !19, i64 24, !17, i64 32, !17, i64 40, !11, i64 48, !17, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !17, i64 168, !19, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !17, i64 208, !11, i64 216, !11, i64 224, !20, i64 232, !21, i64 240, !22, i64 248, !14, i64 256, !12, i64 264, !11, i64 272, !11, i64 280, !17, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !11, i64 360, !12, i64 368, !11, i64 376, !9, i64 384, !11, i64 392, !11, i64 400, !8, i64 408, !23, i64 410}
!25 = !{!24, !17, i64 168}
!26 = !{!"p1 _ZTS16_PyWeakReference", !11, i64 0}
!27 = !{!8, !8, i64 0}
!28 = distinct !{!28, !33}
!29 = !{!24, !17, i64 208}
!30 = !{!"p1 _ZTS3_is", !11, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!26, !26, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"_PyWeakReference", !15, i64 0, !12, i64 16, !12, i64 24, !17, i64 32, !26, i64 40, !26, i64 48, !11, i64 56}
!35 = !{!34, !12, i64 16}
end_hunk_0
