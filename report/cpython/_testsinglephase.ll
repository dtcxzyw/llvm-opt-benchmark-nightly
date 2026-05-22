inline.NumInlined: 19
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.PyModuleDef_Base = type { %struct._object, ptr, i64, ptr }
%struct._object = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.module_state = type { i64, ptr, ptr, ptr }

@_testsinglephase_basic = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { %union.anon { i64 1407378104778752 }, ptr null }, ptr null, i64 0, ptr null }, ptr @.str.5, ptr @.str.6, i64 -1, ptr @TestMethods_Basic, ptr null, ptr null, ptr null, ptr null }, align 8
@PyInit__testsinglephase_basic_copy.def = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { %union.anon { i64 1407378104778752 }, ptr null }, ptr null, i64 0, ptr null }, ptr @.str, ptr @.str.1, i64 -1, ptr @TestMethods_Basic, ptr null, ptr null, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [28 x i8] c"_testsinglephase_basic_copy\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Test module _testsinglephase_basic_copy\00", align 1
@_testsinglephase_with_reinit = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { %union.anon { i64 1407378104778752 }, ptr null }, ptr null, i64 0, ptr null }, ptr @.str.14, ptr @.str.15, i64 0, ptr @TestMethods_Reinit, ptr null, ptr null, ptr null, ptr null }, align 8
@_testsinglephase_with_state = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { %union.anon { i64 1407378104778752 }, ptr null }, ptr null, i64 0, ptr null }, ptr @.str.23, ptr @.str.24, i64 32, ptr @TestMethods_WithState, ptr null, ptr null, ptr null, ptr null }, align 8
@_testsinglephase_check_cache_first = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { %union.anon { i64 1407378104778752 }, ptr null }, ptr null, i64 0, ptr null }, ptr @.str.27, ptr @.str.28, i64 -1, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@_testsinglephase_with_reinit_check_cache_first = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { %union.anon { i64 1407378104778752 }, ptr null }, ptr null, i64 0, ptr null }, ptr @.str.29, ptr @.str.30, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@_testsinglephase_with_state_check_cache_first = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { %union.anon { i64 1407378104778752 }, ptr null }, ptr null, i64 0, ptr null }, ptr @.str.31, ptr @.str.32, i64 42, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@static_module_circular = internal unnamed_addr global ptr null, align 8
@_testsinglephase_circular = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { %union.anon { i64 1407378104778752 }, ptr null }, ptr null, i64 0, ptr null }, ptr @.str.33, ptr @.str.34, i64 0, ptr @.compoundliteral, ptr null, ptr null, ptr null, ptr null }, align 8
@PyInit__testsinglephase_circular.helper_mod_name = internal constant [51 x i8] c"test.test_import.data.circular_imports.singlephase\00", align 16
@.str.2 = private unnamed_addr constant [16 x i8] c"helper_mod_name\00", align 1
@PyExc_RuntimeError = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"evil\00", align 1
@global_state = internal global { i32, [4 x i8], %struct.module_state } { i32 -1, [4 x i8] zeroinitializer, %struct.module_state zeroinitializer }, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"_testsinglephase\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Test module _testsinglephase\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"look_up_self\00", align 1
@common_look_up_self_doc = internal constant [84 x i8] c"look_up_self()\0A\0AReturn the module associated with this module's def.m_base.m_index.\00", align 16
@.str.8 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@common_sum_doc = internal constant [37 x i8] c"sum(i,j)\0A\0AReturn the sum of i and j.\00", align 16
@.str.9 = private unnamed_addr constant [18 x i8] c"state_initialized\00", align 1
@common_state_initialized_doc = internal constant [91 x i8] c"state_initialized()\0A\0AReturn the seconds-since-epoch when the module state was initialized.\00", align 16
@.str.10 = private unnamed_addr constant [18 x i8] c"initialized_count\00", align 1
@basic_initialized_count_doc = internal constant [76 x i8] c"initialized_count()\0A\0AReturn how many times the module has been initialized.\00", align 16
@.str.11 = private unnamed_addr constant [15 x i8] c"_clear_globals\00", align 1
@basic__clear_globals_doc = internal constant [69 x i8] c"_clear_globals()\0A\0AFree all global state and set it to uninitialized.\00", align 16
@TestMethods_Basic = internal global [6 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.7, ptr @common_look_up_self, i32 4, [4 x i8] zeroinitializer, ptr @common_look_up_self_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.8, ptr @common_sum, i32 1, [4 x i8] zeroinitializer, ptr @common_sum_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.9, ptr @common_state_initialized, i32 4, [4 x i8] zeroinitializer, ptr @common_state_initialized_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.10, ptr @basic_initialized_count, i32 4, [4 x i8] zeroinitializer, ptr @basic_initialized_count_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.11, ptr @basic__clear_globals, i32 4, [4 x i8] zeroinitializer, ptr @basic__clear_globals_doc }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [7 x i8] c"ll:sum\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.14 = private unnamed_addr constant [29 x i8] c"_testsinglephase_with_reinit\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Test module _testsinglephase_with_reinit\00", align 1
@TestMethods_Reinit = internal global [4 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.7, ptr @common_look_up_self, i32 4, [4 x i8] zeroinitializer, ptr @common_look_up_self_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.8, ptr @common_sum, i32 1, [4 x i8] zeroinitializer, ptr @common_sum_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.9, ptr @common_state_initialized, i32 4, [4 x i8] zeroinitializer, ptr @common_state_initialized_doc }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [23 x i8] c"_testsinglephase.error\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"something different\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"int_const\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"str_const\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"_module_initialized\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"_testsinglephase_with_state\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"Test module _testsinglephase_with_state\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"_clear_module_state\00", align 1
@basic__clear_module_state_doc = internal constant [74 x i8] c"_clear_module_state()\0A\0AFree the module state and set it to uninitialized.\00", align 16
@TestMethods_WithState = internal global [5 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.7, ptr @common_look_up_self, i32 4, [4 x i8] zeroinitializer, ptr @common_look_up_self_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.8, ptr @common_sum, i32 1, [4 x i8] zeroinitializer, ptr @common_sum_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.9, ptr @common_state_initialized, i32 4, [4 x i8] zeroinitializer, ptr @common_state_initialized_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.25, ptr @basic__clear_module_state, i32 4, [4 x i8] zeroinitializer, ptr @basic__clear_module_state_doc }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [35 x i8] c"_testsinglephase_check_cache_first\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"Test module _testsinglephase_check_cache_first\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"_testsinglephase_with_reinit_check_cache_first\00", align 1
@.str.30 = private unnamed_addr constant [59 x i8] c"Test module _testsinglephase_with_reinit_check_cache_first\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"_testsinglephase_with_state_check_cache_first\00", align 1
@.str.32 = private unnamed_addr constant [58 x i8] c"Test module _testsinglephase_with_state_check_cache_first\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"_testsinglephase_circular\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"Test module _testsinglephase_circular\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"clear_static_var\00", align 1
@.str.36 = private unnamed_addr constant [57 x i8] c"Clear the static variable and return its previous value.\00", align 1
@.compoundliteral = internal global [2 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.35, ptr @circularmod_clear_static_var, i32 4, [4 x i8] zeroinitializer, ptr @.str.36 }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 8

; Function Attrs: nounwind uwtable
define ptr @PyInit__testsinglephase() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @init__testsinglephase_basic(ptr noundef nonnull @_testsinglephase_basic)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @init__testsinglephase_basic(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @global_state, align 8, !tbaa !10
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr @global_state, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call ptr @PyModule_Create2(ptr noundef %0, i32 noundef 1013) #5 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_DECREF.exit21, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @global_state, i64 8), align 8, !tbaa !16
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_state, i64 16), align 8, !tbaa !17 ; 4 uses
  %.not.i23 = icmp eq ptr %i.e, null
  br i1 %.not.i23, label %Py_DECREF.exit23.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @global_state, i64 16), align 8, !tbaa !17
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %.not.i22.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i22.i, label %bb.f, label %Py_DECREF.exit23.i

bb.f:                                             ; preds = %bb.e
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !18
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %Py_DECREF.exit23.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #5
  br label %Py_DECREF.exit23.i

Py_DECREF.exit23.i:                               ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_state, i64 24), align 8, !tbaa !17 ; 4 uses
  %.not18.i = icmp eq ptr %i.i, null
  br i1 %.not18.i, label %Py_DECREF.exit21.i, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit23.i
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @global_state, i64 24), align 8, !tbaa !17
  %i.j = load i32, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %.not.i20.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i20.i, label %bb.i, label %Py_DECREF.exit21.i

bb.i:                                             ; preds = %bb.h
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !18
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.j, label %Py_DECREF.exit21.i

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #5
  br label %Py_DECREF.exit21.i

Py_DECREF.exit21.i:                               ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit23.i
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_state, i64 32), align 8, !tbaa !17 ; 4 uses
  %.not19.i = icmp eq ptr %i.m, null
  br i1 %.not19.i, label %clear_state.exit, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit21.i
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @global_state, i64 32), align 8, !tbaa !17
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i.i, label %bb.l, label %clear_state.exit

bb.l:                                             ; preds = %bb.k
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.m, align 8, !tbaa !18
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.m, label %clear_state.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.m) #5
  br label %clear_state.exit

clear_state.exit:                                 ; preds = %Py_DECREF.exit21.i, %bb.k, %bb.l, %bb.m
  %i.q = tail call fastcc i32 @init_state(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_state, i64 8))
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.n, label %bb.p

bb.n:                                             ; preds = %clear_state.exit
  %i.s = load i32, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %.not.i20 = icmp sgt i32 %i.s, -1
  br i1 %.not.i20, label %bb.o, label %Py_DECREF.exit21

bb.o:                                             ; preds = %bb.n
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.c, align 8, !tbaa !18
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %Py_DECREF.exit21.sink.split, label %Py_DECREF.exit21

bb.p:                                             ; preds = %clear_state.exit
  %i.v = tail call fastcc i32 @init_module(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_state, i64 8))
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.x = load i32, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit21

bb.r:                                             ; preds = %bb.q
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.c, align 8, !tbaa !18
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %Py_DECREF.exit21.sink.split, label %Py_DECREF.exit21

bb.s:                                             ; preds = %bb.p
  %i.aa = load i32, ptr @global_state, align 8, !tbaa !10
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr @global_state, align 8, !tbaa !10
  br label %Py_DECREF.exit21

Py_DECREF.exit21.sink.split:                      ; preds = %bb.r, %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #5
  br label %Py_DECREF.exit21

Py_DECREF.exit21:                                 ; preds = %Py_DECREF.exit21.sink.split, %bb.r, %bb.q, %bb.o, %bb.n, %bb.s, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ %i.c, %bb.s ], [ null, %bb.r ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.q ], [ null, %Py_DECREF.exit21.sink.split ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define ptr @PyInit__testsinglephase_basic_wrapper() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @init__testsinglephase_basic(ptr noundef nonnull @_testsinglephase_basic)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @PyInit__testsinglephase_basic_copy() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @init__testsinglephase_basic(ptr noundef nonnull @PyInit__testsinglephase_basic_copy.def)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @PyInit__testsinglephase_with_reinit() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.module_state, align 8       ; 10 uses
  %i.a = tail call ptr @PyModule_Create2(ptr noundef nonnull @_testsinglephase_with_reinit, i32 noundef 1013) #5 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.c = call fastcc i32 @init_state(ptr noundef nonnull %0)
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i16 = icmp sgt i32 %i.e, -1
  br i1 %.not.i16, label %bb.d, label %Py_DECREF.exit17

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.a, align 8, !tbaa !18
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %Py_DECREF.exit17.sink.split, label %Py_DECREF.exit17

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 5 uses
  %i.j = tail call i32 @PyModule_AddObjectRef(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.19, ptr noundef %i.i) #5
  %.not.i19 = icmp eq i32 %i.j, 0
  br i1 %.not.i19, label %bb.f, label %init_module.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = tail call i32 @PyModule_AddObjectRef(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.20, ptr noundef %i.l) #5
  %.not9.i = icmp eq i32 %i.m, 0
  br i1 %.not9.i, label %bb.g, label %init_module.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = tail call i32 @PyModule_AddObjectRef(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.21, ptr noundef %i.o) #5
  %.not10.i = icmp eq i32 %i.p, 0
  br i1 %.not10.i, label %init_module.exit, label %init_module.exit.thread

init_module.exit:                                 ; preds = %bb.g
  %i.q = load i64, ptr %0, align 8, !tbaa !16
  %i.r = tail call double @PyTime_AsSecondsDouble(i64 noundef %i.q) #5
  %i.s = tail call ptr @PyFloat_FromDouble(double noundef %i.r) #5
  %i.t = tail call i32 @PyModule_Add(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.22, ptr noundef %i.s) #5
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %init_module.exit.thread, label %Py_DECREF.exit

init_module.exit.thread:                          ; preds = %bb.g, %bb.f, %bb.e, %init_module.exit
  %i.v = load i32, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %init_module.exit.thread
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.a, align 8, !tbaa !18
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %init_module.exit.thread, %init_module.exit
  %.114 = phi ptr [ %i.a, %init_module.exit ], [ null, %init_module.exit.thread ], [ null, %bb.h ], [ null, %bb.i ] ; 4 uses
  %.not.i21 = icmp eq ptr %i.i, null
  br i1 %.not.i21, label %Py_DECREF.exit23.i, label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit
  %i.y = load i32, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %.not.i22.i = icmp sgt i32 %i.y, -1
  br i1 %.not.i22.i, label %bb.k, label %Py_DECREF.exit23.i

bb.k:                                             ; preds = %bb.j
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.i, align 8, !tbaa !18
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.l, label %Py_DECREF.exit23.i

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #5
  br label %Py_DECREF.exit23.i

Py_DECREF.exit23.i:                               ; preds = %bb.l, %bb.k, %bb.j, %Py_DECREF.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 4 uses
  %.not18.i = icmp eq ptr %i.ac, null
  br i1 %.not18.i, label %Py_DECREF.exit21.i, label %bb.m

bb.m:                                             ; preds = %Py_DECREF.exit23.i
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !18 ; 2 uses
  %.not.i20.i = icmp sgt i32 %i.ad, -1
  br i1 %.not.i20.i, label %bb.n, label %Py_DECREF.exit21.i

bb.n:                                             ; preds = %bb.m
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !18
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.o, label %Py_DECREF.exit21.i

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ac) #5
  br label %Py_DECREF.exit21.i

Py_DECREF.exit21.i:                               ; preds = %bb.o, %bb.n, %bb.m, %Py_DECREF.exit23.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !17 ; 4 uses
  %.not19.i = icmp eq ptr %i.ah, null
  br i1 %.not19.i, label %Py_DECREF.exit17, label %bb.p

bb.p:                                             ; preds = %Py_DECREF.exit21.i
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !18 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ai, -1
  br i1 %.not.i.i, label %bb.q, label %Py_DECREF.exit17

bb.q:                                             ; preds = %bb.p
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !18
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %Py_DECREF.exit17.sink.split, label %Py_DECREF.exit17

Py_DECREF.exit17.sink.split:                      ; preds = %bb.q, %bb.d
  %.sink = phi ptr [ %i.a, %bb.d ], [ %i.ah, %bb.q ]
  %.0.ph = phi ptr [ null, %bb.d ], [ %.114, %bb.q ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #5
  br label %Py_DECREF.exit17

Py_DECREF.exit17:                                 ; preds = %Py_DECREF.exit17.sink.split, %bb.q, %bb.p, %Py_DECREF.exit21.i, %bb.d, %bb.c
  %.0 = phi ptr [ %.114, %bb.q ], [ null, %bb.c ], [ null, %bb.d ], [ %.114, %Py_DECREF.exit21.i ], [ %.114, %bb.p ], [ %.0.ph, %Py_DECREF.exit17.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #5
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %Py_DECREF.exit17
  %.1 = phi ptr [ %.0, %Py_DECREF.exit17 ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @PyModule_Create2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @init_state(ptr noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.c = call i32 @PyTime_Monotonic(ptr noundef nonnull %i.a) #5
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = call i32 @PyTime_Monotonic(ptr noundef nonnull %i.b) #5
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %bb.d, label %_set_initialized.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load i64, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.f = load i64, ptr %i.a, align 8, !tbaa !22
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.e, !llvm.loop !23

_set_initialized.exit:                            ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %.sink.split

bb.e:                                             ; preds = %bb.d
  store i64 %i.e, ptr %0, align 8, !tbaa !22
end_hunk_0
