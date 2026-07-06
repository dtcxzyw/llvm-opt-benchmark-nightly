inline.NumInlined: 253
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0
%union._PyStackRef = type { i64 }
%struct._line_offsets = type { i32, i32, i32, %struct._opaque }
%struct._opaque = type { i32, ptr, ptr }
%struct._Py_LocalMonitors = type { [11 x i8] }

@PyBaseObject_Type = external global %struct._typeobject, align 8
@_PyInstrumentation_DISABLE = dso_local global { { %struct.anon }, ptr } { { %struct.anon } { %struct.anon { i32 -1073741824, i16 0, i16 5 } }, ptr @PyBaseObject_Type }, align 8
@_PyInstrumentation_MISSING = dso_local global { { %struct.anon }, ptr } { { %struct.anon } { %struct.anon { i32 -1073741824, i16 0, i16 5 } }, ptr @PyBaseObject_Type }, align 8
@_PyOpcode_Caches = external local_unnamed_addr constant [256 x i8], align 16
@_PyOpcode_Deopt = external local_unnamed_addr constant [256 x i8], align 16
@DE_INSTRUMENT = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09\1E\0AF\00M\1Cgdef\80#xD`47\04K\00\00\00", align 16
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_OverflowError = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [26 x i8] c"events set too many times\00", align 1
@PyExc_SystemError = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot instrument shim code object '%U'\00", align 1
@monitoring_module = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { %union.anon { i64 1407378104778752 }, ptr null }, ptr null, i64 0, ptr null }, ptr @.str.12, ptr null, i64 -1, ptr @methods, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"DISABLE\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"MISSING\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@event_names = internal unnamed_addr constant [19 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], align 16
@.str.5 = private unnamed_addr constant [10 x i8] c"NO_EVENTS\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"DEBUGGER_ID\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"COVERAGE_ID\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"PROFILER_ID\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"OPTIMIZER_ID\00", align 1
@PyExc_StopIteration = external local_unnamed_addr global ptr, align 8
@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [44 x i8] c"Cannot disable %s events. Callback removed.\00", align 1
@MOST_SIGNIFICANT_BITS = internal unnamed_addr constant [16 x i8] c"\FF\00\01\01\02\02\02\02\03\03\03\03\03\03\03\03", align 16
@_Py_tss_tstate = external thread_local local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"tool %d is not in use\00", align 1
@_Py_tss_interp = external thread_local local_unnamed_addr global ptr, align 8
@EVENT_FOR_OPCODE = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\04\00\00\00\00\0A\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\09\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\09\00\08\00\00\00\00\07\00\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\09\09\09\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A\09\0A\08\00\07\08\09\09\09\09\00\02\03\00\04\04\04\04\07\00\00\00", align 16
@INSTRUMENTED_OPCODES = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\FB\00\00\00\00\E9\EB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\EF\00\EA\00\00\00\00\F5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F9\00\00\FA\00\00\00\00\00\00\00\00\00\00\00\00\F7\00\EC\00\00\00\00\FC\00\EE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F8\00\00\00\F1\F2\F3\F0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F6\00\00\00\00\00\00\00\F4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\00\00", align 16
@.str.12 = private unnamed_addr constant [15 x i8] c"sys.monitoring\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"use_tool_id\00", align 1
@monitoring_use_tool_id__doc__ = internal constant [44 x i8] c"use_tool_id($module, tool_id, name, /)\0A--\0A\0A\00", align 16
@.str.14 = private unnamed_addr constant [14 x i8] c"clear_tool_id\00", align 1
@monitoring_clear_tool_id__doc__ = internal constant [40 x i8] c"clear_tool_id($module, tool_id, /)\0A--\0A\0A\00", align 16
@.str.15 = private unnamed_addr constant [13 x i8] c"free_tool_id\00", align 1
@monitoring_free_tool_id__doc__ = internal constant [39 x i8] c"free_tool_id($module, tool_id, /)\0A--\0A\0A\00", align 16
@.str.16 = private unnamed_addr constant [9 x i8] c"get_tool\00", align 1
@monitoring_get_tool__doc__ = internal constant [35 x i8] c"get_tool($module, tool_id, /)\0A--\0A\0A\00", align 16
@.str.17 = private unnamed_addr constant [18 x i8] c"register_callback\00", align 1
@monitoring_register_callback__doc__ = internal constant [57 x i8] c"register_callback($module, tool_id, event, func, /)\0A--\0A\0A\00", align 16
@.str.18 = private unnamed_addr constant [11 x i8] c"get_events\00", align 1
@monitoring_get_events__doc__ = internal constant [37 x i8] c"get_events($module, tool_id, /)\0A--\0A\0A\00", align 16
@.str.19 = private unnamed_addr constant [11 x i8] c"set_events\00", align 1
@monitoring_set_events__doc__ = internal constant [48 x i8] c"set_events($module, tool_id, event_set, /)\0A--\0A\0A\00", align 16
@.str.20 = private unnamed_addr constant [17 x i8] c"get_local_events\00", align 1
@monitoring_get_local_events__doc__ = internal constant [49 x i8] c"get_local_events($module, tool_id, code, /)\0A--\0A\0A\00", align 16
@.str.21 = private unnamed_addr constant [17 x i8] c"set_local_events\00", align 1
@monitoring_set_local_events__doc__ = internal constant [60 x i8] c"set_local_events($module, tool_id, code, event_set, /)\0A--\0A\0A\00", align 16
@.str.22 = private unnamed_addr constant [15 x i8] c"restart_events\00", align 1
@monitoring_restart_events__doc__ = internal constant [32 x i8] c"restart_events($module, /)\0A--\0A\0A\00", align 16
@.str.23 = private unnamed_addr constant [12 x i8] c"_all_events\00", align 1
@monitoring__all_events__doc__ = internal constant [29 x i8] c"_all_events($module, /)\0A--\0A\0A\00", align 16
@methods = internal global [12 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.13, ptr @monitoring_use_tool_id, i32 128, [4 x i8] zeroinitializer, ptr @monitoring_use_tool_id__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.14, ptr @monitoring_clear_tool_id, i32 8, [4 x i8] zeroinitializer, ptr @monitoring_clear_tool_id__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.15, ptr @monitoring_free_tool_id, i32 8, [4 x i8] zeroinitializer, ptr @monitoring_free_tool_id__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.16, ptr @monitoring_get_tool, i32 8, [4 x i8] zeroinitializer, ptr @monitoring_get_tool__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.17, ptr @monitoring_register_callback, i32 128, [4 x i8] zeroinitializer, ptr @monitoring_register_callback__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.18, ptr @monitoring_get_events, i32 8, [4 x i8] zeroinitializer, ptr @monitoring_get_events__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.19, ptr @monitoring_set_events, i32 128, [4 x i8] zeroinitializer, ptr @monitoring_set_events__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.20, ptr @monitoring_get_local_events, i32 128, [4 x i8] zeroinitializer, ptr @monitoring_get_local_events__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.21, ptr @monitoring_set_local_events, i32 128, [4 x i8] zeroinitializer, ptr @monitoring_set_local_events__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.22, ptr @monitoring_restart_events, i32 4, [4 x i8] zeroinitializer, ptr @monitoring_restart_events__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.23, ptr @monitoring__all_events, i32 4, [4 x i8] zeroinitializer, ptr @monitoring__all_events__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.25 = private unnamed_addr constant [24 x i8] c"tool name must be a str\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"tool %d is already in use\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"invalid tool %d (must be between 0 and 5)\00", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"The callback can only be set for one event at a time\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"invalid event %d\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"sys.monitoring.register_callback\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"invalid event set 0x%x\00", align 1
@.str.33 = private unnamed_addr constant [52 x i8] c"cannot set C_RETURN or C_RAISE events independently\00", align 1
@PyCode_Type = external global %struct._typeobject, align 8
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str.34 = private unnamed_addr constant [27 x i8] c"code must be a code object\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"invalid local event set 0x%x\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"PY_START\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"PY_RESUME\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"PY_RETURN\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"PY_YIELD\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"CALL\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"LINE\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"INSTRUCTION\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"JUMP\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"BRANCH_LEFT\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"BRANCH_RIGHT\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"STOP_ITERATION\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"RAISE\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"EXCEPTION_HANDLED\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"PY_UNWIND\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"PY_THROW\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"RERAISE\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"C_RETURN\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"C_RAISE\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"BRANCH\00", align 1
@_PyRuntime = external global %struct.pyruntimestate, align 8
@.str.55 = private unnamed_addr constant [28 x i8] c"offset must be non-negative\00", align 1
@.str.56 = private unnamed_addr constant [38 x i8] c"Firing event %d with no exception set\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.57 = private unnamed_addr constant [36 x i8] c"sys.monitoring.branch_event_handler\00", align 1
@_PyLegacyBranchEventHandler_Type = internal global { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, i8, i8, i16, [4 x i8] } { %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyType_Type }, i64 0 }, ptr @.str.57, i64 40, i64 0, ptr @dealloc_branch_handler, i64 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @PyVectorcall_Call, ptr null, ptr null, ptr null, ptr null, i64 3200, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }, align 8
@.str.59 = private unnamed_addr constant [14 x i8] c"line_iterator\00", align 1
@_PyBranchesIterator = internal global { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, i8, i8, i16, [4 x i8] } { %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyType_Type }, i64 0 }, ptr @.str.59, i64 32, i64 0, ptr @branchesiter_dealloc, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 1024, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @PyObject_SelfIter, ptr @branchesiter_next, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr @PyObject_Free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 1, 257) i32 @_PyInstruction_GetLength(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 208
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr [2 x i8], ptr %i.a, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !11   ; 3 uses
  %.sroa.7.0.extract.shift.i = lshr i16 %i.d, 8
  %i.e = and i16 %i.d, 255                        ; 3 uses
  %i.f = icmp samesign ult i16 %i.e, 233
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i16 %i.e to i64
  br label %_Py_GetBaseCodeUnit.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.h = zext nneg i16 %i.e to i32
  %trunc.i = trunc i16 %i.d to i8
  switch i8 %trunc.i, label %bb.f [
    i8 -2, label %bb.d
    i8 -3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = zext nneg i16 %.sroa.7.0.extract.shift.i to i64
  %i.m = getelementptr [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr i8, ptr %i.n, i64 32
  %i.p = load i8, ptr %i.o, align 8, !tbaa !24
  %i.q = zext i8 %i.p to i64
  br label %_Py_GetBaseCodeUnit.exit.sink.split

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %0, i64 176
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32
  %i.t = getelementptr i8, ptr %i.s, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33   ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.u, align 1, !tbaa !37
  %i.x = zext i8 %i.w to i32
  %i.y = mul i32 %1, %i.x
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !39
  %i.ac = zext i8 %i.ab to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0.i = phi i32 [ %i.ac, %bb.e ], [ %i.h, %bb.c ] ; 2 uses
  %i.ad = icmp eq i32 %.0.i, 237
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %0, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32
  %i.ag = getelementptr i8, ptr %i.af, i64 112
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.b
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !39
  %i.ak = zext i8 %i.aj to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.i = phi i32 [ %i.ak, %bb.g ], [ %.0.i, %bb.f ]
  %i.al = zext nneg i32 %.1.i to i64              ; 2 uses
  %i.am = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !39  ; 2 uses
  %.not.i = icmp eq i8 %i.an, 0
  br i1 %.not.i, label %_Py_GetBaseCodeUnit.exit.sink.split, label %_Py_GetBaseCodeUnit.exit

_Py_GetBaseCodeUnit.exit.sink.split:              ; preds = %bb.h, %bb.d, %bb.b
  %.sink2 = phi i64 [ %i.g, %bb.b ], [ %i.q, %bb.d ], [ %i.al, %bb.h ]
  %i.ao = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %.sink2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !39
  br label %_Py_GetBaseCodeUnit.exit

_Py_GetBaseCodeUnit.exit:                         ; preds = %_Py_GetBaseCodeUnit.exit.sink.split, %bb.h
  %.sroa.0.1.i = phi i8 [ %i.an, %bb.h ], [ %i.ap, %_Py_GetBaseCodeUnit.exit.sink.split ]
  %i.aq = zext i8 %.sroa.0.1.i to i64
  %i.ar = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !39
  %i.at = zext i8 %i.as to i32
  %i.au = add nuw nsw i32 %i.at, 1
  ret i32 %i.au
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i16 @_Py_GetBaseCodeUnit(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 208
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr [2 x i8], ptr %i.a, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !11   ; 3 uses
  %.sroa.7.0.extract.shift = lshr i16 %i.d, 8     ; 2 uses
  %.sroa.7.0.extract.trunc = trunc nuw i16 %.sroa.7.0.extract.shift to i8 ; 3 uses
  %i.e = and i16 %i.d, 255                        ; 3 uses
  %i.f = icmp samesign ult i16 %i.e, 233
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i16 %i.e to i64
  %i.h = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = zext nneg i16 %i.e to i32
  %trunc = trunc i16 %i.d to i8
  switch i8 %trunc, label %bb.f [
    i8 -2, label %bb.d
    i8 -3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 152
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = zext nneg i16 %.sroa.7.0.extract.shift to i64
  %i.o = getelementptr [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22   ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 32
  %i.r = load i8, ptr %i.q, align 8, !tbaa !24
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !39
  %i.v = getelementptr i8, ptr %i.p, i64 33
  %i.w = load i8, ptr %i.v, align 1, !tbaa !41
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %0, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.z = getelementptr i8, ptr %i.y, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 1
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !37
  %i.ad = zext i8 %i.ac to i32
  %i.ae = mul i32 %1, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr i8, ptr %i.ab, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !39
  %i.ai = zext i8 %i.ah to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.0 = phi i32 [ %i.ai, %bb.e ], [ %i.j, %bb.c ] ; 2 uses
  %i.aj = icmp eq i32 %.0, 237
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr i8, ptr %0, i64 176
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !32
  %i.am = getelementptr i8, ptr %i.al, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !40
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.b
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !39
  %i.aq = zext i8 %i.ap to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %i.aq, %bb.g ], [ %.0, %bb.f ]
  %i.ar = zext nneg i32 %.1 to i64                ; 2 uses
  %i.as = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !39  ; 2 uses
  %.not = icmp eq i8 %i.at, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.ar
  %i.av = load i8, ptr %i.au, align 1, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.d, %bb.b
  %.sroa.0.1 = phi i8 [ %i.i, %bb.b ], [ %i.u, %bb.d ], [ %i.av, %bb.i ], [ %i.at, %bb.h ]
  %.sroa.7.0 = phi i8 [ %.sroa.7.0.extract.trunc, %bb.b ], [ %i.w, %bb.d ], [ %.sroa.7.0.extract.trunc, %bb.i ], [ %.sroa.7.0.extract.trunc, %bb.h ]
  %.sroa.7.0.insert.ext = zext i8 %.sroa.7.0 to i16
  %.sroa.7.0.insert.shift = shl nuw i16 %.sroa.7.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext i8 %.sroa.0.1 to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.7.0.insert.shift, %.sroa.0.0.insert.ext
  ret i16 %.sroa.0.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_Py_call_instrumentation(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = call fastcc i32 @call_instrumentation_vector(ptr noundef %3, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 2, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @call_instrumentation_vector(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i64 noundef range(i64 2, 5) %5, ptr noundef nonnull %6) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %3, align 8
  %i.c = and i64 %.val, -2
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = getelementptr i8, ptr %6, i64 8          ; 3 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !55
  %.val65 = load i64, ptr %3, align 8
  %i.f = and i64 %.val65, -2
  %i.g = ptrtoint ptr %0 to i64
  %i.h = add i64 %i.f, 208                        ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ptrtoint ptr %4 to i64
  %i.k = sub i64 %i.j, %i.h
  %i.l = shl i64 %i.k, 32
  %sext = ashr exact i64 %i.l, 32
  %i.m = and i64 %sext, -2
  %i.n = tail call ptr @PyLong_FromLong(i64 noundef %i.m) #12 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %6, i64 16
  store ptr %i.n, ptr %i.p, align 8, !tbaa !55
  %i.q = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56   ; 4 uses
  %i.s = icmp sgt i32 %2, 15
  %spec.store.select.i = select i1 %i.s, i32 4, i32 %2 ; 3 uses
  %i.t = icmp slt i32 %spec.store.select.i, 11
  br i1 %i.t, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.d, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32   ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57   ; 2 uses
  %.not.i66 = icmp eq ptr %i.x, null
  br i1 %.not.i66, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %sext71 = shl i64 %i.i, 31
  %i.y = ashr i64 %sext71, 32
  %i.z = getelementptr i8, ptr %i.x, i64 %i.y
  br label %get_tools_for_instruction.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %i.v, i64 11
  %i.ab = sext i32 %spec.store.select.i to i64
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.ab
  br label %get_tools_for_instruction.exit

bb.g:                                             ; preds = %bb.c
  %i.ad = getelementptr i8, ptr %i.r, i64 223456
  %i.ae = zext nneg i32 %spec.store.select.i to i64
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae
  br label %get_tools_for_instruction.exit

get_tools_for_instruction.exit:                   ; preds = %bb.e, %bb.f, %bb.g
  %.0.in.i = phi ptr [ %i.z, %bb.e ], [ %i.ac, %bb.f ], [ %i.af, %bb.g ]
  %.0.i = load i8, ptr %.0.in.i, align 1, !tbaa !39 ; 3 uses
  %i.ag = or disjoint i64 %5, -9223372036854775808 ; 2 uses
  %.not5975 = icmp eq i8 %.0.i, 0
  br i1 %.not5975, label %Py_DECREF.exit62.thread, label %.lr.ph

.lr.ph:                                           ; preds = %get_tools_for_instruction.exit
  %i.ah = icmp slt i32 %2, 11
  %i.ai = getelementptr i8, ptr %i.d, i64 176
  %sext72 = shl i64 %i.i, 31                      ; 2 uses
  %i.aj = ashr i64 %sext72, 32                    ; 4 uses
  %i.ak = sext i32 %2 to i64
  br i1 %i.ah, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.al = getelementptr i8, ptr %i.d, i64 208
  %i.am = getelementptr [2 x i8], ptr %i.al, i64 %i.aj ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 2
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %Py_DECREF.exit62.us
  %.05176.us = phi i8 [ %i.bb, %Py_DECREF.exit62.us ], [ %.0.i, %.lr.ph.split.us.preheader ] ; 5 uses
  %i.ao = icmp ugt i8 %.05176.us, 15
  br i1 %i.ao, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.ap = zext nneg i8 %.05176.us to i64
  %i.aq = getelementptr i8, ptr @MOST_SIGNIFICANT_BITS, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !39
  %i.as = sext i8 %i.ar to i32
  br label %most_significant_bit.exit.us

bb.i:                                             ; preds = %.lr.ph.split.us
  %i.at = lshr i8 %.05176.us, 4
  %i.au = zext nneg i8 %i.at to i64
  %i.av = getelementptr i8, ptr @MOST_SIGNIFICANT_BITS, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !39
  %i.ax = sext i8 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, 4
  br label %most_significant_bit.exit.us

most_significant_bit.exit.us:                     ; preds = %bb.i, %bb.h
  %.0.i67.us = phi i32 [ %i.ay, %bb.i ], [ %i.as, %bb.h ] ; 2 uses
  %i.az = shl nuw i32 1, %.0.i67.us               ; 2 uses
  %i.ba = trunc i32 %i.az to i8                   ; 3 uses
  %i.bb = xor i8 %.05176.us, %i.ba
  %i.bc = trunc i32 %.0.i67.us to i8
  %i.bd = tail call fastcc i32 @call_one_instrument(ptr noundef %i.r, ptr noundef %1, ptr noundef nonnull %i.e, i64 noundef %i.ag, i8 noundef signext %i.bc, i32 noundef %2) ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %Py_DECREF.exit62.us, label %bb.j

bb.j:                                             ; preds = %most_significant_bit.exit.us
  %i.bf = icmp slt i32 %i.bd, 0
  br i1 %i.bf, label %Py_DECREF.exit62.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.q, align 8, !tbaa !56  ; 2 uses
  tail call void @_PyEval_StopTheWorld(ptr noundef %i.bg) #12
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !32 ; 4 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 24     ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !57 ; 2 uses
  %.not.i68.us = icmp eq ptr %i.bj, null
  br i1 %.not.i68.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.aj  ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !39
  %i.bm = xor i8 %i.ba, -1
  %i.bn = and i8 %i.bl, %i.bm
  store i8 %i.bn, ptr %i.bk, align 1, !tbaa !39
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !57
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.aj
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !39
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %._crit_edge.i.us, label %remove_tools.exit.us

bb.m:                                             ; preds = %bb.k
  %i.bs = getelementptr i8, ptr %i.bh, i64 11
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.ak
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !39
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = and i32 %i.az, %i.bv
  %i.bx = icmp eq i32 %i.bw, %i.bv
  br i1 %i.bx, label %._crit_edge.i.us, label %remove_tools.exit.us

._crit_edge.i.us:                                 ; preds = %bb.m, %bb.l
  %i.by = load i8, ptr %i.am, align 2, !tbaa !39  ; 2 uses
  %i.bz = icmp eq i8 %i.by, -3
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.us
  %i.ca = getelementptr i8, ptr %i.bh, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !33 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 1
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !37
  %i.ce = zext i8 %i.cd to i64
  %sext74.us = mul i64 %sext72, %i.ce
  %i.cf = ashr exact i64 %sext74.us, 32
  %i.cg = getelementptr i8, ptr %i.cc, i64 %i.cf  ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !39
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.us
  %.017.in.i.i.us = phi i8 [ %i.ch, %bb.n ], [ %i.by, %._crit_edge.i.us ] ; 2 uses
  %.0.i.i.us = phi ptr [ %i.cg, %bb.n ], [ %i.am, %._crit_edge.i.us ]
  %i.ci = icmp eq i8 %.017.in.i.i.us, -19
  br i1 %i.ci, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cj = getelementptr i8, ptr %i.bh, i64 112
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !40
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.aj  ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !39
end_hunk_0
begin_hunk_1_@force_instrument_lock_held:bb.a

set_line_delta.exit.i.i:                          ; preds = %.lr.ph.i.i.i, %compute_line_delta.exit.i.i
  %i.nr = phi i8 [ %i.ni, %compute_line_delta.exit.i.i ], [ %i.no, %.lr.ph.i.i.i ] ; 3 uses
  %i.ns = load i16, ptr %i.lk, align 2, !tbaa !11 ; 3 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i16 %i.ns, 8
  %i.nt = and i16 %i.ns, 255                      ; 3 uses
  %i.nu = icmp samesign ult i16 %i.nt, 233
  br i1 %i.nu, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %set_line_delta.exit.i.i
  %i.nv = zext nneg i16 %i.nt to i64
  br label %_Py_GetBaseCodeUnit.exit.sink.split.i.i.i

bb.ba:                                            ; preds = %set_line_delta.exit.i.i
  %i.nw = zext nneg i16 %i.nt to i32
  %trunc.i.i.i.i = trunc i16 %i.ns to i8
  switch i8 %trunc.i.i.i.i, label %bb.bd [
    i8 -2, label %bb.bb
    i8 -3, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.nx = load ptr, ptr %i.lc, align 8, !tbaa !13
  %i.ny = getelementptr i8, ptr %i.nx, i64 8
  %i.nz = zext nneg i16 %.sroa.7.0.extract.shift.i.i.i.i to i64
  %i.oa = getelementptr [8 x i8], ptr %i.ny, i64 %i.nz
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !22
  %i.oc = getelementptr i8, ptr %i.ob, i64 32
  %i.od = load i8, ptr %i.oc, align 8, !tbaa !24
  %i.oe = zext i8 %i.od to i64
  br label %_Py_GetBaseCodeUnit.exit.sink.split.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.of = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.og = getelementptr i8, ptr %i.of, i64 96
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !33 ; 2 uses
  %i.oi = getelementptr i8, ptr %i.oh, i64 1
  %i.oj = load i8, ptr %i.oh, align 1, !tbaa !37
  %i.ok = zext i8 %i.oj to i32
  %i.ol = mul i32 %.0100226.i.i, %i.ok
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr i8, ptr %i.oi, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !39
  %i.op = zext i8 %i.oo to i32
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %.0.i.i.i.i = phi i32 [ %i.op, %bb.bc ], [ %i.nw, %bb.ba ] ; 2 uses
  %i.oq = icmp eq i32 %.0.i.i.i.i, 237
  br i1 %i.oq, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.or = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.os = getelementptr i8, ptr %i.or, i64 112
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !40
  %i.ou = getelementptr i8, ptr %i.ot, i64 %i.lj
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !39
  %i.ow = zext i8 %i.ov to i32
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.1.i.i.i.i = phi i32 [ %i.ow, %bb.be ], [ %.0.i.i.i.i, %bb.bd ]
  %i.ox = zext nneg i32 %.1.i.i.i.i to i64        ; 2 uses
  %i.oy = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.ox
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !39  ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.oz, 0
  br i1 %.not.i.i.i.i, label %_Py_GetBaseCodeUnit.exit.sink.split.i.i.i, label %_PyInstruction_GetLength.exit.i.i

_Py_GetBaseCodeUnit.exit.sink.split.i.i.i:        ; preds = %bb.bf, %bb.bb, %bb.az
  %.sink2.i.i.i = phi i64 [ %i.nv, %bb.az ], [ %i.oe, %bb.bb ], [ %i.ox, %bb.bf ]
  %i.pa = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %.sink2.i.i.i
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !39
  br label %_PyInstruction_GetLength.exit.i.i

_PyInstruction_GetLength.exit.i.i:                ; preds = %_Py_GetBaseCodeUnit.exit.sink.split.i.i.i, %bb.bf
  %.sroa.0.1.i.i.i.i = phi i8 [ %i.oz, %bb.bf ], [ %i.pb, %_Py_GetBaseCodeUnit.exit.sink.split.i.i.i ]
  %i.pc = zext i8 %.sroa.0.1.i.i.i.i to i64
  %i.pd = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !39  ; 2 uses
  %i.pf = zext i8 %i.pe to i32                    ; 2 uses
  %i.pg = load i32, ptr %i.il, align 8, !tbaa !166
  %i.ph = icmp slt i32 %.0100226.i.i, %i.pg
  br i1 %i.ph, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_PyInstruction_GetLength.exit.i.i
  %i.pi = zext i8 %i.nr to i32
  %i.pj = mul i32 %.0100226.i.i, %i.pi
  %i.pk = sext i32 %i.pj to i64
  %i.pl = getelementptr i8, ptr %i.ld, i64 %i.pk
  store i8 0, ptr %i.pl, align 1, !tbaa !39
  br label %bb.bm

bb.bh:                                            ; preds = %_PyInstruction_GetLength.exit.i.i
  switch i8 %.sroa.0.1.i.i112.i, label %bb.bj [
    i8 68, label %bb.bi
    i8 9, label %bb.bi
    i8 10, label %bb.bi
    i8 -128, label %bb.bi
    i8 30, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bh, %bb.bh, %bb.bh, %bb.bh
  %i.pm = zext i8 %i.nr to i32
  %i.pn = mul i32 %.0100226.i.i, %i.pm
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr i8, ptr %i.ld, i64 %i.po
  store i8 0, ptr %i.pp, align 1, !tbaa !39
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bh
  %i.pq = icmp ne i32 %i.mw, %.0227.i.i
  %i.pr = icmp sgt i32 %i.mw, -1
  %or.cond.i.i = and i1 %i.pq, %i.pr
  %i.ps = zext i8 %i.nr to i32
  %i.pt = mul i32 %.0100226.i.i, %i.ps
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr i8, ptr %i.ld, i64 %i.pu  ; 2 uses
  br i1 %or.cond.i.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i8 %.sroa.0.1.i.i112.i, ptr %i.pv, align 1, !tbaa !39
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  store i8 0, ptr %i.pv, align 1, !tbaa !39
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bg
  %.1.i.i = phi i32 [ %.0227.i.i, %bb.bg ], [ %.0227.i.i, %bb.bi ], [ %i.mw, %bb.bl ], [ %i.mw, %bb.bk ]
  %.not219224.i.i = icmp eq i8 %i.pe, 0
  br i1 %.not219224.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bm
  %.pre.i.i = load i8, ptr %i.kt, align 1, !tbaa !37
  br label %.lr.ph.i113.i

._crit_edge.i.i:                                  ; preds = %set_line_delta.exit118.i.i, %bb.bm
  %i.pw = add i32 %.0100226.i.i, 1
  %i.px = add i32 %i.pw, %i.pf                    ; 2 uses
  %i.py = icmp slt i32 %i.px, %i.ky
  br i1 %i.py, label %bb.aq, label %._crit_edge230.i.i, !llvm.loop !174

.lr.ph.i113.i:                                    ; preds = %set_line_delta.exit118.i.i, %.lr.ph.preheader.i.i
  %i.pz = phi i8 [ %i.qs, %set_line_delta.exit118.i.i ], [ %.pre.i.i, %.lr.ph.preheader.i.i ]
  %.0102225.i.i = phi i32 [ %i.qt, %set_line_delta.exit118.i.i ], [ 1, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.qa = add i32 %.0102225.i.i, %.0100226.i.i    ; 2 uses
  %i.qb = zext i8 %i.pz to i32
  %i.qc = mul i32 %i.qa, %i.qb
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr i8, ptr %i.ld, i64 %i.qd
  store i8 0, ptr %i.qe, align 1, !tbaa !39
  %i.qf = load i8, ptr %i.kt, align 1, !tbaa !37
  %i.qg = zext i8 %i.qf to i32
  %i.qh = mul i32 %i.qa, %i.qg
  %i.qi = add i32 %i.qh, 1
  %i.qj = sext i32 %i.qi to i64
  %i.qk = getelementptr i8, ptr %i.ld, i64 %i.qj  ; 2 uses
  store i8 0, ptr %i.qk, align 1, !tbaa !39
  %i.ql = load i8, ptr %i.kt, align 1, !tbaa !37  ; 2 uses
  %i.qm = icmp ugt i8 %i.ql, 2
  br i1 %i.qm, label %.lr.ph.i114.i.i, label %set_line_delta.exit118.i.i

.lr.ph.i114.i.i:                                  ; preds = %.lr.ph.i113.i, %.lr.ph.i114.i.i
  %.016.i115.i.i = phi i32 [ %i.qo, %.lr.ph.i114.i.i ], [ 2, %.lr.ph.i113.i ]
  %.01215.i116.i.i = phi ptr [ %i.qn, %.lr.ph.i114.i.i ], [ %i.qk, %.lr.ph.i113.i ]
  %i.qn = getelementptr i8, ptr %.01215.i116.i.i, i64 1 ; 2 uses
  store i8 0, ptr %i.qn, align 1, !tbaa !39
  %i.qo = add nuw nsw i32 %.016.i115.i.i, 1       ; 2 uses
  %i.qp = load i8, ptr %i.kt, align 1, !tbaa !37  ; 2 uses
  %i.qq = zext i8 %i.qp to i32
  %i.qr = icmp samesign ult i32 %i.qo, %i.qq
  br i1 %i.qr, label %.lr.ph.i114.i.i, label %set_line_delta.exit118.i.i, !llvm.loop !173

set_line_delta.exit118.i.i:                       ; preds = %.lr.ph.i114.i.i, %.lr.ph.i113.i
  %i.qs = phi i8 [ %i.ql, %.lr.ph.i113.i ], [ %i.qp, %.lr.ph.i114.i.i ]
  %i.qt = add nuw nsw i32 %.0102225.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %.0102225.i.i, %i.pf
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i113.i, !llvm.loop !175

._crit_edge244.i.i:                               ; preds = %bb.cy, %._crit_edge230.i.i
  %i.qu = getelementptr i8, ptr %0, i64 40
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !176 ; 2 uses
  %i.qw = getelementptr i8, ptr %i.qv, i64 32     ; 3 uses
  %i.qx = getelementptr i8, ptr %i.qv, i64 16
  %.val112.i.i = load i64, ptr %i.qx, align 8, !tbaa !167
  %i.qy = getelementptr i8, ptr %i.qw, i64 %.val112.i.i ; 2 uses
  %i.qz = icmp ult ptr %i.qw, %i.qy
  br i1 %i.qz, label %.lr.ph247.i.i, label %.sink.split.i

.lr.ph247.i.i:                                    ; preds = %._crit_edge244.i.i
  %i.ra = getelementptr i8, ptr %0, i64 208
  %i.rb = getelementptr i8, ptr %0, i64 152
  %i.rc = getelementptr i8, ptr %i.kt, i64 1      ; 2 uses
  br label %bb.cz

bb.bn:                                            ; preds = %bb.cy, %.lr.ph243.i.i
  %.0103241.i.i = phi i32 [ %i.le, %.lr.ph243.i.i ], [ %i.wh, %bb.cy ] ; 4 uses
  %i.rd = sext i32 %.0103241.i.i to i64           ; 3 uses
  %i.re = getelementptr [2 x i8], ptr %i.lg, i64 %i.rd
  %i.rf = load i16, ptr %i.re, align 2, !tbaa !11 ; 4 uses
  %.sroa.7.0.extract.shift.i119.i.i = lshr i16 %i.rf, 8 ; 3 uses
  %.sroa.7.0.extract.trunc.i120.i.i = trunc nuw i16 %.sroa.7.0.extract.shift.i119.i.i to i8 ; 3 uses
  %i.rg = and i16 %i.rf, 255                      ; 4 uses
  %i.rh = icmp samesign ult i16 %i.rg, 233
  br i1 %i.rh, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ri = zext nneg i16 %i.rg to i64
  %i.rj = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.ri
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !39
  br label %_Py_GetBaseCodeUnit.exit131.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.rl = zext nneg i16 %i.rg to i32
  %trunc.i121.i.i = trunc i16 %i.rf to i8
  switch i8 %trunc.i121.i.i, label %bb.bs [
    i8 -2, label %bb.bq
    i8 -3, label %bb.br
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.rm = load ptr, ptr %i.lh, align 8, !tbaa !13
  %i.rn = getelementptr i8, ptr %i.rm, i64 8
  %i.ro = zext nneg i16 %.sroa.7.0.extract.shift.i119.i.i to i64
  %i.rp = getelementptr [8 x i8], ptr %i.rn, i64 %i.ro
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !22 ; 2 uses
  %i.rr = getelementptr i8, ptr %i.rq, i64 32
  %i.rs = load i8, ptr %i.rr, align 8, !tbaa !24
  %i.rt = zext i8 %i.rs to i64
  %i.ru = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.rt
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !39
  %i.rw = getelementptr i8, ptr %i.rq, i64 33
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !41
  br label %_Py_GetBaseCodeUnit.exit131.i.i

bb.br:                                            ; preds = %bb.bp
  %i.ry = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.rz = getelementptr i8, ptr %i.ry, i64 96
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !33 ; 2 uses
  %i.sb = getelementptr i8, ptr %i.sa, i64 1
  %i.sc = load i8, ptr %i.sa, align 1, !tbaa !37
  %i.sd = zext i8 %i.sc to i32
  %i.se = mul i32 %.0103241.i.i, %i.sd
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr i8, ptr %i.sb, i64 %i.sf
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !39
  %i.si = zext i8 %i.sh to i32
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bp
  %.0.i122.i.i = phi i32 [ %i.si, %bb.br ], [ %i.rl, %bb.bp ] ; 2 uses
  %i.sj = icmp eq i32 %.0.i122.i.i, 237
  br i1 %i.sj, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.sk = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.sl = getelementptr i8, ptr %i.sk, i64 112
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !40
  %i.sn = getelementptr i8, ptr %i.sm, i64 %i.rd
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !39
  %i.sp = zext i8 %i.so to i32
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.1.i123.i.i = phi i32 [ %i.sp, %bb.bt ], [ %.0.i122.i.i, %bb.bs ]
  %i.sq = zext nneg i32 %.1.i123.i.i to i64       ; 2 uses
  %i.sr = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.sq
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !39  ; 2 uses
  %.not.i124.i.i = icmp eq i8 %i.ss, 0
  br i1 %.not.i124.i.i, label %bb.bv, label %_Py_GetBaseCodeUnit.exit131.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.st = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.sq
  %i.su = load i8, ptr %i.st, align 1, !tbaa !39
  br label %_Py_GetBaseCodeUnit.exit131.i.i

_Py_GetBaseCodeUnit.exit131.i.i:                  ; preds = %bb.bv, %bb.bu, %bb.bq, %bb.bo
  %.sroa.0.1.i125.i.i = phi i8 [ %i.rk, %bb.bo ], [ %i.rv, %bb.bq ], [ %i.su, %bb.bv ], [ %i.ss, %bb.bu ] ; 2 uses
  %.sroa.7.0.i126.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i120.i.i, %bb.bo ], [ %i.rx, %bb.bq ], [ %.sroa.7.0.extract.trunc.i120.i.i, %bb.bv ], [ %.sroa.7.0.extract.trunc.i120.i.i, %bb.bu ]
  %.sroa.7.0.insert.ext.i127.i.i = zext i8 %.sroa.7.0.i126.i.i to i16 ; 3 uses
  %.sroa.7.0.insert.shift.i128.i.i = shl nuw i16 %.sroa.7.0.insert.ext.i127.i.i, 8
  %.sroa.0.0.insert.ext.i129.i.i = zext i8 %.sroa.0.1.i125.i.i to i16
  %.sroa.0.0.insert.insert.i130.i.i = or disjoint i16 %.sroa.7.0.insert.shift.i128.i.i, %.sroa.0.0.insert.ext.i129.i.i
  %i.sv = icmp eq i8 %.sroa.0.1.i125.i.i, 69
  br i1 %i.sv, label %.lr.ph236.i.i, label %._crit_edge237.i.i

.lr.ph236.i.i:                                    ; preds = %_Py_GetBaseCodeUnit.exit131.i.i, %_Py_GetBaseCodeUnit.exit144.i.i
  %.sroa.6.0.in235.i.i = phi i16 [ %.sroa.7.0.insert.ext.i140.i.i, %_Py_GetBaseCodeUnit.exit144.i.i ], [ %.sroa.7.0.insert.ext.i127.i.i, %_Py_GetBaseCodeUnit.exit131.i.i ]
  %.1104234.i.i = phi i32 [ %i.sx, %_Py_GetBaseCodeUnit.exit144.i.i ], [ %.0103241.i.i, %_Py_GetBaseCodeUnit.exit131.i.i ]
  %.0107233.i.i = phi i32 [ %6, %_Py_GetBaseCodeUnit.exit144.i.i ], [ 0, %_Py_GetBaseCodeUnit.exit131.i.i ]
  %.sroa.6.0.i.i = zext nneg i16 %.sroa.6.0.in235.i.i to i32
  %i.sw = shl i32 %.0107233.i.i, 8
  %6 = or disjoint i32 %i.sw, %.sroa.6.0.i.i      ; 2 uses
  %i.sx = add i32 %.1104234.i.i, 1                ; 4 uses
  %i.sy = sext i32 %i.sx to i64                   ; 3 uses
  %i.sz = getelementptr [2 x i8], ptr %i.lg, i64 %i.sy
  %i.ta = load i16, ptr %i.sz, align 2, !tbaa !11 ; 4 uses
  %.sroa.7.0.extract.shift.i132.i.i = lshr i16 %i.ta, 8 ; 3 uses
  %.sroa.7.0.extract.trunc.i133.i.i = trunc nuw i16 %.sroa.7.0.extract.shift.i132.i.i to i8 ; 3 uses
  %i.tb = and i16 %i.ta, 255                      ; 4 uses
  %i.tc = icmp samesign ult i16 %i.tb, 233
  br i1 %i.tc, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.lr.ph236.i.i
  %i.td = zext nneg i16 %i.tb to i64
  %i.te = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !39
  br label %_Py_GetBaseCodeUnit.exit144.i.i

bb.bx:                                            ; preds = %.lr.ph236.i.i
  %i.tg = zext nneg i16 %i.tb to i32
  %trunc.i134.i.i = trunc i16 %i.ta to i8
  switch i8 %trunc.i134.i.i, label %bb.ca [
    i8 -2, label %bb.by
    i8 -3, label %bb.bz
  ]

bb.by:                                            ; preds = %bb.bx
  %i.th = load ptr, ptr %i.lh, align 8, !tbaa !13
  %i.ti = getelementptr i8, ptr %i.th, i64 8
  %i.tj = zext nneg i16 %.sroa.7.0.extract.shift.i132.i.i to i64
  %i.tk = getelementptr [8 x i8], ptr %i.ti, i64 %i.tj
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !22 ; 2 uses
  %i.tm = getelementptr i8, ptr %i.tl, i64 32
  %i.tn = load i8, ptr %i.tm, align 8, !tbaa !24
  %i.to = zext i8 %i.tn to i64
  %i.tp = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.to
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !39
  %i.tr = getelementptr i8, ptr %i.tl, i64 33
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !41
  br label %_Py_GetBaseCodeUnit.exit144.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.tt = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.tu = getelementptr i8, ptr %i.tt, i64 96
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !33 ; 2 uses
  %i.tw = getelementptr i8, ptr %i.tv, i64 1
  %i.tx = load i8, ptr %i.tv, align 1, !tbaa !37
  %i.ty = zext i8 %i.tx to i32
  %i.tz = mul i32 %i.sx, %i.ty
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr i8, ptr %i.tw, i64 %i.ua
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !39
  %i.ud = zext i8 %i.uc to i32
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bx
  %.0.i135.i.i = phi i32 [ %i.ud, %bb.bz ], [ %i.tg, %bb.bx ] ; 2 uses
  %i.ue = icmp eq i32 %.0.i135.i.i, 237
  br i1 %i.ue, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.uf = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.ug = getelementptr i8, ptr %i.uf, i64 112
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !40
  %i.ui = getelementptr i8, ptr %i.uh, i64 %i.sy
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !39
  %i.uk = zext i8 %i.uj to i32
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.1.i136.i.i = phi i32 [ %i.uk, %bb.cb ], [ %.0.i135.i.i, %bb.ca ]
  %i.ul = zext nneg i32 %.1.i136.i.i to i64       ; 2 uses
  %i.um = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.ul
  %i.un = load i8, ptr %i.um, align 1, !tbaa !39  ; 2 uses
  %.not.i137.i.i = icmp eq i8 %i.un, 0
  br i1 %.not.i137.i.i, label %bb.cd, label %_Py_GetBaseCodeUnit.exit144.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.uo = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.ul
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !39
  br label %_Py_GetBaseCodeUnit.exit144.i.i

_Py_GetBaseCodeUnit.exit144.i.i:                  ; preds = %bb.cd, %bb.cc, %bb.by, %bb.bw
  %.sroa.0.1.i138.i.i = phi i8 [ %i.tf, %bb.bw ], [ %i.tq, %bb.by ], [ %i.up, %bb.cd ], [ %i.un, %bb.cc ] ; 2 uses
  %.sroa.7.0.i139.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i133.i.i, %bb.bw ], [ %i.ts, %bb.by ], [ %.sroa.7.0.extract.trunc.i133.i.i, %bb.cd ], [ %.sroa.7.0.extract.trunc.i133.i.i, %bb.cc ]
  %.sroa.7.0.insert.ext.i140.i.i = zext i8 %.sroa.7.0.i139.i.i to i16 ; 3 uses
  %i.uq = icmp eq i8 %.sroa.0.1.i138.i.i, 69
  br i1 %i.uq, label %.lr.ph236.i.i, label %._crit_edge237.loopexit.i.i, !llvm.loop !177

._crit_edge237.loopexit.i.i:                      ; preds = %_Py_GetBaseCodeUnit.exit144.i.i
  %.sroa.7.0.insert.shift.i141.i.i = shl nuw i16 %.sroa.7.0.insert.ext.i140.i.i, 8
  %.sroa.0.0.insert.ext.i142.i.i = zext i8 %.sroa.0.1.i138.i.i to i16
  %.sroa.0.0.insert.insert.i143.i.i = or disjoint i16 %.sroa.7.0.insert.shift.i141.i.i, %.sroa.0.0.insert.ext.i142.i.i
  %i.ur = shl i32 %6, 8
  br label %._crit_edge237.i.i

._crit_edge237.i.i:                               ; preds = %._crit_edge237.loopexit.i.i, %_Py_GetBaseCodeUnit.exit131.i.i
  %.pre-phi255.i.i = phi i16 [ %i.tb, %._crit_edge237.loopexit.i.i ], [ %i.rg, %_Py_GetBaseCodeUnit.exit131.i.i ] ; 3 uses
  %.sroa.7.0.extract.shift.i.i145.pre-phi.i.i = phi i16 [ %.sroa.7.0.extract.shift.i132.i.i, %._crit_edge237.loopexit.i.i ], [ %.sroa.7.0.extract.shift.i119.i.i, %_Py_GetBaseCodeUnit.exit131.i.i ]
  %i.us = phi i16 [ %i.ta, %._crit_edge237.loopexit.i.i ], [ %i.rf, %_Py_GetBaseCodeUnit.exit131.i.i ]
  %.pre-phi.i105.i = phi i64 [ %i.sy, %._crit_edge237.loopexit.i.i ], [ %i.rd, %_Py_GetBaseCodeUnit.exit131.i.i ]
  %.0107.lcssa.i.i = phi i32 [ %i.ur, %._crit_edge237.loopexit.i.i ], [ 0, %_Py_GetBaseCodeUnit.exit131.i.i ]
  %.sroa.6.0.in.in.lcssa.i.i = phi i16 [ %.sroa.0.0.insert.insert.i143.i.i, %._crit_edge237.loopexit.i.i ], [ %.sroa.0.0.insert.insert.i130.i.i, %_Py_GetBaseCodeUnit.exit131.i.i ]
  %.1104.lcssa.i.i = phi i32 [ %i.sx, %._crit_edge237.loopexit.i.i ], [ %.0103241.i.i, %_Py_GetBaseCodeUnit.exit131.i.i ] ; 2 uses
  %.sroa.6.0.in.lcssa.i.i = phi i16 [ %.sroa.7.0.insert.ext.i140.i.i, %._crit_edge237.loopexit.i.i ], [ %.sroa.7.0.insert.ext.i127.i.i, %_Py_GetBaseCodeUnit.exit131.i.i ]
  %i.ut = zext nneg i16 %.sroa.6.0.in.lcssa.i.i to i32
  %7 = or disjoint i32 %.0107.lcssa.i.i, %i.ut    ; 3 uses
  %i.uu = icmp samesign ult i16 %.pre-phi255.i.i, 233
  br i1 %i.uu, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %._crit_edge237.i.i
  %i.uv = zext nneg i16 %.pre-phi255.i.i to i64
  br label %_Py_GetBaseCodeUnit.exit.sink.split.i151.i.i

bb.cf:                                            ; preds = %._crit_edge237.i.i
  %i.uw = zext nneg i16 %.pre-phi255.i.i to i32
  %trunc.i.i146.i.i = trunc i16 %i.us to i8
  switch i8 %trunc.i.i146.i.i, label %bb.ci [
    i8 -2, label %bb.cg
    i8 -3, label %bb.ch
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.ux = load ptr, ptr %i.lh, align 8, !tbaa !13
  %i.uy = getelementptr i8, ptr %i.ux, i64 8
  %i.uz = zext nneg i16 %.sroa.7.0.extract.shift.i.i145.pre-phi.i.i to i64
  %i.va = getelementptr [8 x i8], ptr %i.uy, i64 %i.uz
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !22
  %i.vc = getelementptr i8, ptr %i.vb, i64 32
  %i.vd = load i8, ptr %i.vc, align 8, !tbaa !24
  %i.ve = zext i8 %i.vd to i64
  br label %_Py_GetBaseCodeUnit.exit.sink.split.i151.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.vf = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.vg = getelementptr i8, ptr %i.vf, i64 96
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !33 ; 2 uses
  %i.vi = getelementptr i8, ptr %i.vh, i64 1
  %i.vj = load i8, ptr %i.vh, align 1, !tbaa !37
  %i.vk = zext i8 %i.vj to i32
  %i.vl = mul i32 %.1104.lcssa.i.i, %i.vk
  %i.vm = sext i32 %i.vl to i64
  %i.vn = getelementptr i8, ptr %i.vi, i64 %i.vm
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !39
  %i.vp = zext i8 %i.vo to i32
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cf
  %.0.i.i147.i.i = phi i32 [ %i.vp, %bb.ch ], [ %i.uw, %bb.cf ] ; 2 uses
  %i.vq = icmp eq i32 %.0.i.i147.i.i, 237
  br i1 %i.vq, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.vr = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.vs = getelementptr i8, ptr %i.vr, i64 112
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !40
  %i.vu = getelementptr i8, ptr %i.vt, i64 %.pre-phi.i105.i
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !39
  %i.vw = zext i8 %i.vv to i32
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.1.i.i148.i.i = phi i32 [ %i.vw, %bb.cj ], [ %.0.i.i147.i.i, %bb.ci ]
  %i.vx = zext nneg i32 %.1.i.i148.i.i to i64     ; 2 uses
  %i.vy = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.vx
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !39  ; 2 uses
  %.not.i.i149.i.i = icmp eq i8 %i.vz, 0
  br i1 %.not.i.i149.i.i, label %_Py_GetBaseCodeUnit.exit.sink.split.i151.i.i, label %_PyInstruction_GetLength.exit153.i.i

_Py_GetBaseCodeUnit.exit.sink.split.i151.i.i:     ; preds = %bb.ck, %bb.cg, %bb.ce
  %.sink2.i152.i.i = phi i64 [ %i.uv, %bb.ce ], [ %i.ve, %bb.cg ], [ %i.vx, %bb.ck ]
  %i.wa = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %.sink2.i152.i.i
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !39
  br label %_PyInstruction_GetLength.exit153.i.i

_PyInstruction_GetLength.exit153.i.i:             ; preds = %_Py_GetBaseCodeUnit.exit.sink.split.i151.i.i, %bb.ck
  %.sroa.0.1.i.i150.i.i = phi i8 [ %i.vz, %bb.ck ], [ %i.wb, %_Py_GetBaseCodeUnit.exit.sink.split.i151.i.i ]
  %i.wc = zext i8 %.sroa.0.1.i.i150.i.i to i64
  %i.wd = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.wc
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !39
  %i.wf = zext i8 %i.we to i32
  %i.wg = add i32 %.1104.lcssa.i.i, 1
  %i.wh = add i32 %i.wg, %i.wf                    ; 5 uses
  %trunc.i.i = trunc i16 %.sroa.6.0.in.in.lcssa.i.i to i8
  switch i8 %trunc.i.i, label %bb.cy [
    i8 100, label %bb.cl
    i8 103, label %bb.cl
    i8 101, label %bb.cl
    i8 102, label %bb.cl
    i8 77, label %bb.cl
    i8 70, label %bb.cm
    i8 106, label %bb.cm
    i8 75, label %bb.cn
    i8 76, label %bb.cn
  ], !llvm.loop !178

bb.cl:                                            ; preds = %_PyInstruction_GetLength.exit153.i.i, %_PyInstruction_GetLength.exit153.i.i, %_PyInstruction_GetLength.exit153.i.i, %_PyInstruction_GetLength.exit153.i.i, %_PyInstruction_GetLength.exit153.i.i
  %i.wi = add i32 %i.wh, %7
  br label %bb.co

bb.cm:                                            ; preds = %_PyInstruction_GetLength.exit153.i.i, %_PyInstruction_GetLength.exit153.i.i
  %i.wj = add i32 %7, 1
  %i.wk = add i32 %i.wj, %i.wh
  br label %bb.co

bb.cn:                                            ; preds = %_PyInstruction_GetLength.exit153.i.i, %_PyInstruction_GetLength.exit153.i.i
  %i.wl = sub i32 %i.wh, %7
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %bb.cl
  %.0106.i.i = phi i32 [ %i.wi, %bb.cl ], [ %i.wk, %bb.cm ], [ %i.wl, %bb.cn ] ; 3 uses
  %i.wm = load i8, ptr %i.kt, align 1, !tbaa !37  ; 2 uses
  %i.wn = zext i8 %i.wm to i32                    ; 3 uses
  %i.wo = mul i32 %.0106.i.i, %i.wn               ; 2 uses
  %i.wp = add i32 %i.wo, 1
  %i.wq = sext i32 %i.wp to i64
  %i.wr = getelementptr i8, ptr %i.li, i64 %i.wq  ; 4 uses
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !39
  %i.wt = zext i8 %i.ws to i32                    ; 3 uses
  %i.wu = icmp ugt i8 %i.wm, 2
  br i1 %i.wu, label %.lr.ph.i154.i.i.preheader, label %get_line_delta.exit.i.i

.lr.ph.i154.i.i.preheader:                        ; preds = %bb.co
  %i.wv = add nsw i32 %i.wn, -2                   ; 2 uses
  %i.ww = zext i32 %i.wv to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.wv, 8
  br i1 %min.iters.check, label %.lr.ph.i154.i.i.preheader534, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i154.i.i.preheader
  %n.vec = and i64 %i.ww, 4294967288              ; 4 uses
  %i.wx = getelementptr i8, ptr %i.wr, i64 %n.vec
  %i.wy = trunc nuw i64 %n.vec to i32
  %i.wz = or disjoint i32 %i.wy, 2
  %i.xa = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.wt, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.xa, %vector.ph ], [ %i.xk, %vector.body ]
  %vec.phi503 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.xl, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.wr, i64 %index ; 2 uses
  %i.xb = getelementptr i8, ptr %next.gep, i64 1
  %i.xc = shl <4 x i32> %vec.ind, splat (i32 3)
  %step.add = shl <4 x i32> %vec.ind, splat (i32 3)
  %i.xd = add nsw <4 x i32> %i.xc, splat (i32 -8)
  %i.xe = add <4 x i32> %step.add, splat (i32 24)
  %i.xf = getelementptr i8, ptr %next.gep, i64 5
  %wide.load = load <4 x i8>, ptr %i.xb, align 1, !tbaa !39
  %wide.load504 = load <4 x i8>, ptr %i.xf, align 1, !tbaa !39
  %i.xg = zext <4 x i8> %wide.load to <4 x i32>
  %i.xh = zext <4 x i8> %wide.load504 to <4 x i32>
  %i.xi = shl <4 x i32> %i.xg, %i.xd
  %i.xj = shl <4 x i32> %i.xh, %i.xe
  %i.xk = or <4 x i32> %i.xi, %vec.phi            ; 2 uses
  %i.xl = or <4 x i32> %i.xj, %vec.phi503         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.xm = icmp eq i64 %index.next, %n.vec
  br i1 %i.xm, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.xl, %i.xk
  %i.xn = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ww
  br i1 %cmp.n, label %get_line_delta.exit.i.i, label %.lr.ph.i154.i.i.preheader534

.lr.ph.i154.i.i.preheader534:                     ; preds = %.lr.ph.i154.i.i.preheader, %middle.block
  %.016.i155.i.i.ph = phi ptr [ %i.wr, %.lr.ph.i154.i.i.preheader ], [ %i.wx, %middle.block ]
  %.01215.i156.i.i.ph = phi i32 [ 2, %.lr.ph.i154.i.i.preheader ], [ %i.wz, %middle.block ]
  %.01314.i157.i.i.ph = phi i32 [ %i.wt, %.lr.ph.i154.i.i.preheader ], [ %i.xn, %middle.block ]
  br label %.lr.ph.i154.i.i

.lr.ph.i154.i.i:                                  ; preds = %.lr.ph.i154.i.i.preheader534, %.lr.ph.i154.i.i
  %.016.i155.i.i = phi ptr [ %i.xo, %.lr.ph.i154.i.i ], [ %.016.i155.i.i.ph, %.lr.ph.i154.i.i.preheader534 ]
  %.01215.i156.i.i = phi i32 [ %i.xv, %.lr.ph.i154.i.i ], [ %.01215.i156.i.i.ph, %.lr.ph.i154.i.i.preheader534 ] ; 2 uses
  %.01314.i157.i.i = phi i32 [ %i.xu, %.lr.ph.i154.i.i ], [ %.01314.i157.i.i.ph, %.lr.ph.i154.i.i.preheader534 ]
  %i.xo = getelementptr i8, ptr %.016.i155.i.i, i64 1 ; 2 uses
  %i.xp = shl i32 %.01215.i156.i.i, 3
  %i.xq = add nsw i32 %i.xp, -8
  %i.xr = load i8, ptr %i.xo, align 1, !tbaa !39
  %i.xs = zext i8 %i.xr to i32
  %i.xt = shl i32 %i.xs, %i.xq
  %i.xu = or i32 %i.xt, %.01314.i157.i.i          ; 2 uses
  %i.xv = add nuw nsw i32 %.01215.i156.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.xv, %i.wn
  br i1 %exitcond.not.i.i.i, label %get_line_delta.exit.i.i, label %.lr.ph.i154.i.i, !llvm.loop !180

get_line_delta.exit.i.i:                          ; preds = %.lr.ph.i154.i.i, %middle.block, %bb.co
  %.013.lcssa.i.i.i = phi i32 [ %i.wt, %bb.co ], [ %i.xn, %middle.block ], [ %i.xu, %.lr.ph.i154.i.i ]
  %.not.i106.i = icmp eq i32 %.013.lcssa.i.i.i, 0
  br i1 %.not.i106.i, label %bb.cy, label %bb.cp

bb.cp:                                            ; preds = %get_line_delta.exit.i.i
  %i.xw = sext i32 %.0106.i.i to i64              ; 2 uses
  %i.xx = getelementptr [2 x i8], ptr %i.lg, i64 %i.xw
  %i.xy = load i16, ptr %i.xx, align 2, !tbaa !11 ; 3 uses
  %.sroa.7.0.extract.shift.i158.i.i = lshr i16 %i.xy, 8
  %i.xz = and i16 %i.xy, 255                      ; 3 uses
  %i.ya = icmp samesign ult i16 %i.xz, 233
  br i1 %i.ya, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.yb = zext nneg i16 %i.xz to i64
  br label %_Py_GetBaseCodeUnit.exit170.sink.split.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.yc = zext nneg i16 %i.xz to i32
  %trunc.i160.i.i = trunc i16 %i.xy to i8
  switch i8 %trunc.i160.i.i, label %bb.cu [
    i8 -2, label %bb.cs
    i8 -3, label %bb.ct
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.yd = load ptr, ptr %i.lh, align 8, !tbaa !13
  %i.ye = getelementptr i8, ptr %i.yd, i64 8
  %i.yf = zext nneg i16 %.sroa.7.0.extract.shift.i158.i.i to i64
  %i.yg = getelementptr [8 x i8], ptr %i.ye, i64 %i.yf
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !22
  %i.yi = getelementptr i8, ptr %i.yh, i64 32
  %i.yj = load i8, ptr %i.yi, align 8, !tbaa !24
  %i.yk = zext i8 %i.yj to i64
  br label %_Py_GetBaseCodeUnit.exit170.sink.split.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.yl = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.ym = getelementptr i8, ptr %i.yl, i64 96
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !33 ; 2 uses
  %i.yo = getelementptr i8, ptr %i.yn, i64 1
  %i.yp = load i8, ptr %i.yn, align 1, !tbaa !37
  %i.yq = zext i8 %i.yp to i32
  %i.yr = mul i32 %.0106.i.i, %i.yq
  %i.ys = sext i32 %i.yr to i64
  %i.yt = getelementptr i8, ptr %i.yo, i64 %i.ys
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !39
  %i.yv = zext i8 %i.yu to i32
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cr
  %.0.i161.i.i = phi i32 [ %i.yv, %bb.ct ], [ %i.yc, %bb.cr ] ; 2 uses
  %i.yw = icmp eq i32 %.0.i161.i.i, 237
  br i1 %i.yw, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.yx = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.yy = getelementptr i8, ptr %i.yx, i64 112
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !40
  %i.za = getelementptr i8, ptr %i.yz, i64 %i.xw
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !39
  %i.zc = zext i8 %i.zb to i32
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.1.i162.i.i = phi i32 [ %i.zc, %bb.cv ], [ %.0.i161.i.i, %bb.cu ]
  %i.zd = zext nneg i32 %.1.i162.i.i to i64       ; 2 uses
  %i.ze = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.zd
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !39  ; 2 uses
  %.not.i163.i.i = icmp eq i8 %i.zf, 0
  br i1 %.not.i163.i.i, label %_Py_GetBaseCodeUnit.exit170.sink.split.i.i, label %_Py_GetBaseCodeUnit.exit170.i.i

_Py_GetBaseCodeUnit.exit170.sink.split.i.i:       ; preds = %bb.cw, %bb.cs, %bb.cq
  %.sink298.i.i = phi i64 [ %i.yb, %bb.cq ], [ %i.yk, %bb.cs ], [ %i.zd, %bb.cw ]
  %i.zg = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %.sink298.i.i
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !39
  br label %_Py_GetBaseCodeUnit.exit170.i.i

_Py_GetBaseCodeUnit.exit170.i.i:                  ; preds = %_Py_GetBaseCodeUnit.exit170.sink.split.i.i, %bb.cw
  %.sroa.0.1.i164.i.i = phi i8 [ %i.zf, %bb.cw ], [ %i.zh, %_Py_GetBaseCodeUnit.exit170.sink.split.i.i ] ; 2 uses
  %.not110.i.i = icmp eq i8 %.sroa.0.1.i164.i.i, 30
  br i1 %.not110.i.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %_Py_GetBaseCodeUnit.exit170.i.i
  %i.zi = sext i32 %i.wo to i64
  %i.zj = getelementptr i8, ptr %i.li, i64 %i.zi
  store i8 %.sroa.0.1.i164.i.i, ptr %i.zj, align 1, !tbaa !39
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %_Py_GetBaseCodeUnit.exit170.i.i, %get_line_delta.exit.i.i, %_PyInstruction_GetLength.exit153.i.i
  %i.zk = icmp slt i32 %i.wh, %i.ky
  br i1 %i.zk, label %bb.bn, label %._crit_edge244.i.i

bb.cz:                                            ; preds = %bb.di, %.lr.ph247.i.i
  %.0101245.i.i = phi ptr [ %i.qw, %.lr.ph247.i.i ], [ %i.aaq, %bb.di ] ; 3 uses
  %i.zl = load i8, ptr %.0101245.i.i, align 1, !tbaa !39
  %i.zm = and i8 %i.zl, 64
  %.not8.i.i.i = icmp eq i8 %i.zm, 0
  br i1 %.not8.i.i.i, label %parse_varint.exit.i.i, label %.lr.ph.i171.i.i

.lr.ph.i171.i.i:                                  ; preds = %bb.cz, %.lr.ph.i171.i.i
  %.079.i.i.i = phi ptr [ %i.zn, %.lr.ph.i171.i.i ], [ %.0101245.i.i, %bb.cz ]
  %i.zn = getelementptr i8, ptr %.079.i.i.i, i64 1 ; 3 uses
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !39
  %i.zp = and i8 %i.zo, 64
  %.not.i172.i.i = icmp eq i8 %i.zp, 0
  br i1 %.not.i172.i.i, label %parse_varint.exit.i.i, label %.lr.ph.i171.i.i, !llvm.loop !181

parse_varint.exit.i.i:                            ; preds = %.lr.ph.i171.i.i, %bb.cz
  %.07.lcssa.i.i.i = phi ptr [ %.0101245.i.i, %bb.cz ], [ %i.zn, %.lr.ph.i171.i.i ] ; 2 uses
  %i.zq = getelementptr i8, ptr %.07.lcssa.i.i.i, i64 1 ; 2 uses
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !39
  %i.zs = and i8 %i.zr, 64
  %.not8.i173.i.i = icmp eq i8 %i.zs, 0
  br i1 %.not8.i173.i.i, label %parse_varint.exit180.i.i, label %.lr.ph.i174.i.i

.lr.ph.i174.i.i:                                  ; preds = %parse_varint.exit.i.i, %.lr.ph.i174.i.i
  %.079.i176.i.i = phi ptr [ %i.zt, %.lr.ph.i174.i.i ], [ %i.zq, %parse_varint.exit.i.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@force_instrument_lock_held:bb.a
  %i.aga = icmp sgt i32 %i.b, 0
  br i1 %i.aga, label %.lr.ph155.preheader.i, label %update_instrumentation_data.exit

.lr.ph155.preheader.i:                            ; preds = %.preheader.i
  %wide.trip.count173.i = and i64 %.val, 2147483647
  %i.agb = add nsw i64 %wide.trip.count173.i, -1
  %xtraiter546 = and i64 %.val, 3                 ; 3 uses
  %i.agc = icmp ult i64 %i.agb, 3
  br i1 %i.agc, label %.lr.ph155.i.epil.preheader, label %.lr.ph155.preheader.i.new

.lr.ph155.preheader.i.new:                        ; preds = %.lr.ph155.preheader.i
  %unroll_iter549 = and i64 %.val, 2147483644
  br label %.lr.ph155.i

bb.du:                                            ; preds = %bb.dt
  %i.agd = call ptr @PyErr_NoMemory() #12         ; 0 uses
  br label %update_instrumentation_data.exit.thread

.lr.ph155.i:                                      ; preds = %.lr.ph155.i, %.lr.ph155.preheader.i.new
  %indvars.iv170.i = phi i64 [ 0, %.lr.ph155.preheader.i.new ], [ %indvars.iv.next171.i.3, %.lr.ph155.i ] ; 5 uses
  %niter550 = phi i64 [ 0, %.lr.ph155.preheader.i.new ], [ %niter550.next.3, %.lr.ph155.i ]
  %i.age = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.agf = getelementptr i8, ptr %i.age, i64 120
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !90
  %i.agh = getelementptr i8, ptr %i.agg, i64 %indvars.iv170.i
  store i8 0, ptr %i.agh, align 1, !tbaa !39
  %i.agi = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.agj = getelementptr i8, ptr %i.agi, i64 120
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !90
  %i.agl = getelementptr i8, ptr %i.agk, i64 %indvars.iv170.i
  %i.agm = getelementptr i8, ptr %i.agl, i64 1
  store i8 0, ptr %i.agm, align 1, !tbaa !39
  %i.agn = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.ago = getelementptr i8, ptr %i.agn, i64 120
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !90
  %i.agq = getelementptr i8, ptr %i.agp, i64 %indvars.iv170.i
  %i.agr = getelementptr i8, ptr %i.agq, i64 2
  store i8 0, ptr %i.agr, align 1, !tbaa !39
  %i.ags = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.agt = getelementptr i8, ptr %i.ags, i64 120
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !90
  %i.agv = getelementptr i8, ptr %i.agu, i64 %indvars.iv170.i
  %i.agw = getelementptr i8, ptr %i.agv, i64 3
  store i8 0, ptr %i.agw, align 1, !tbaa !39
  %indvars.iv.next171.i.3 = add nuw nsw i64 %indvars.iv170.i, 4 ; 2 uses
  %niter550.next.3 = add i64 %niter550, 4         ; 2 uses
  %niter550.ncmp.3 = icmp eq i64 %niter550.next.3, %unroll_iter549
  br i1 %niter550.ncmp.3, label %update_instrumentation_data.exit.loopexit.unr-lcssa, label %.lr.ph155.i, !llvm.loop !186

update_instrumentation_data.exit.loopexit.unr-lcssa: ; preds = %.lr.ph155.i
  %lcmp.mod547.not = icmp eq i64 %xtraiter546, 0
  br i1 %lcmp.mod547.not, label %update_instrumentation_data.exit.loopexit, label %.lr.ph155.i.epil.preheader

.lr.ph155.i.epil.preheader:                       ; preds = %update_instrumentation_data.exit.loopexit.unr-lcssa, %.lr.ph155.preheader.i
  %indvars.iv170.i.epil.init = phi i64 [ 0, %.lr.ph155.preheader.i ], [ %indvars.iv.next171.i.3, %update_instrumentation_data.exit.loopexit.unr-lcssa ]
  %lcmp.mod548 = icmp ne i64 %xtraiter546, 0
  call void @llvm.assume(i1 %lcmp.mod548)
  br label %.lr.ph155.i.epil

.lr.ph155.i.epil:                                 ; preds = %.lr.ph155.i.epil, %.lr.ph155.i.epil.preheader
  %indvars.iv170.i.epil = phi i64 [ %indvars.iv170.i.epil.init, %.lr.ph155.i.epil.preheader ], [ %indvars.iv.next171.i.epil, %.lr.ph155.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph155.i.epil.preheader ], [ %epil.iter.next, %.lr.ph155.i.epil ]
  %i.agx = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.agy = getelementptr i8, ptr %i.agx, i64 120
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !90
  %i.aha = getelementptr i8, ptr %i.agz, i64 %indvars.iv170.i.epil
  store i8 0, ptr %i.aha, align 1, !tbaa !39
  %indvars.iv.next171.i.epil = add nuw nsw i64 %indvars.iv170.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter546
  br i1 %epil.iter.cmp.not, label %update_instrumentation_data.exit.loopexit, label %.lr.ph155.i.epil, !llvm.loop !187

update_instrumentation_data.exit.loopexit:        ; preds = %.lr.ph155.i.epil, %update_instrumentation_data.exit.loopexit.unr-lcssa
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %update_instrumentation_data.exit

update_instrumentation_data.exit:                 ; preds = %update_instrumentation_data.exit.loopexit, %.preheader.i, %bb.ds, %.loopexit134.i, %initialize_line_tools.exit.i
  %i.ahb = phi ptr [ %.pre, %update_instrumentation_data.exit.loopexit ], [ %i.afx, %.preheader.i ], [ %.pre358.a, %bb.ds ], [ %.pre358.a, %.loopexit134.i ], [ %.pre359, %initialize_line_tools.exit.i ] ; 6 uses
  %i.ahc = load i64, ptr %i.fm, align 8
  %i.ahd = load i64, ptr %i.fo, align 8           ; 3 uses
  %.sroa.087.0.copyload = load i64, ptr %i.ahb, align 8
  %.sroa.288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahb, i64 8
  %.sroa.288.0.copyload = load i24, ptr %.sroa.288.0..sroa_idx, align 8 ; 3 uses
  %.sroa.917.8.extract.trunc.i = trunc i64 %i.ahd to i8
  %.sroa.1118.8.extract.shift.i = lshr i64 %i.ahd, 8
  %.sroa.1118.8.extract.trunc.i = trunc i64 %.sroa.1118.8.extract.shift.i to i8
  %.sroa.9.8.extract.trunc.i = trunc i24 %.sroa.288.0.copyload to i8
  %.sroa.11.8.extract.shift.i = lshr i24 %.sroa.288.0.copyload, 8
  %.sroa.11.8.extract.trunc.i = trunc i24 %.sroa.11.8.extract.shift.i to i8
  %i.ahe = or i64 %.sroa.087.0.copyload, %i.ahc   ; 4 uses
  %i.ahf = or i8 %.sroa.9.8.extract.trunc.i, %.sroa.917.8.extract.trunc.i ; 3 uses
  %i.ahg = or i8 %.sroa.11.8.extract.trunc.i, %.sroa.1118.8.extract.trunc.i ; 3 uses
  %i.ahh = trunc i64 %i.ahd to i24
  %.sroa.12.8.extract.shift38.i = or i24 %.sroa.288.0.copyload, %i.ahh
  %.sroa.1230.8.insert.ext.i = and i24 %.sroa.12.8.extract.shift38.i, -65536 ; 3 uses
  %.sroa.1129.8.insert.ext.i = zext i8 %i.ahg to i24
  %.sroa.1129.8.insert.shift.i = shl nuw nsw i24 %.sroa.1129.8.insert.ext.i, 8
  %.sroa.928.8.insert.ext.i = zext i8 %i.ahf to i24
  %i.ahi = or disjoint i24 %.sroa.1129.8.insert.shift.i, %.sroa.928.8.insert.ext.i
  %.sroa.928.8.insert.insert.i = or disjoint i24 %i.ahi, %.sroa.1230.8.insert.ext.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.ahj = getelementptr i8, ptr %1, i64 7320
  %i.ahk = load i64, ptr %i.ahj, align 8, !tbaa !189
  %i.ahl = getelementptr i8, ptr %0, i64 168      ; 2 uses
  %i.ahm = load i64, ptr %i.ahl, align 8, !tbaa !92
  %i.ahn = icmp ugt i64 %i.ahk, %i.ahm
  %i.aho = getelementptr i8, ptr %i.ahb, i64 11   ; 2 uses
  br i1 %i.ahn, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %update_instrumentation_data.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %5, ptr noundef nonnull align 1 dereferenceable(11) %i.aho, i64 11, i1 false), !tbaa.struct !190
  br label %bb.dx

bb.dw:                                            ; preds = %update_instrumentation_data.exit
  %.sroa.078.0.copyload = load i64, ptr %i.aho, align 1 ; 2 uses
  %.sroa.279.0..sroa_idx = getelementptr i8, ptr %i.ahb, i64 19
  %.sroa.279.0.copyload = load i24, ptr %.sroa.279.0..sroa_idx, align 1 ; 4 uses
  %.sroa.919.8.extract.trunc.i = trunc i24 %.sroa.279.0.copyload to i8 ; 2 uses
  %.sroa.1120.8.extract.shift.i = lshr i24 %.sroa.279.0.copyload, 8
  %.sroa.1120.8.extract.trunc.i = trunc i24 %.sroa.1120.8.extract.shift.i to i8 ; 2 uses
  %i.ahp = xor i64 %i.ahe, -1
  %i.ahq = and i64 %.sroa.078.0.copyload, %i.ahp
  %i.ahr = xor i8 %i.ahf, -1
  %i.ahs = and i8 %.sroa.919.8.extract.trunc.i, %i.ahr
  %i.aht = xor i8 %i.ahg, -1
  %i.ahu = and i8 %.sroa.1120.8.extract.trunc.i, %i.aht
  %.sroa.1221.8.extract.shift34.i = xor i24 %.sroa.1230.8.insert.ext.i, -65536
  %.sroa.1232.8.insert.ext.i = and i24 %.sroa.1221.8.extract.shift34.i, %.sroa.279.0.copyload
  %.sroa.1131.8.insert.ext.i = zext i8 %i.ahu to i24
  %.sroa.1131.8.insert.shift.i = shl nuw nsw i24 %.sroa.1131.8.insert.ext.i, 8
  %.sroa.1131.8.insert.insert.i = or disjoint i24 %.sroa.1131.8.insert.shift.i, %.sroa.1232.8.insert.ext.i
  %.sroa.930.8.insert.ext.i = zext i8 %i.ahs to i24
  %.sroa.930.8.insert.insert.i = or disjoint i24 %.sroa.1131.8.insert.insert.i, %.sroa.930.8.insert.ext.i
  store i64 %i.ahq, ptr %5, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i24 %.sroa.930.8.insert.insert.i, ptr %.sroa.481.0..sroa_idx, align 8, !tbaa !39
  %i.ahv = xor i64 %.sroa.078.0.copyload, -1
  %i.ahw = and i64 %i.ahe, %i.ahv
  %i.ahx = xor i8 %.sroa.919.8.extract.trunc.i, -1
  %i.ahy = and i8 %i.ahf, %i.ahx
  %i.ahz = xor i8 %.sroa.1120.8.extract.trunc.i, -1
  %i.aia = and i8 %i.ahg, %i.ahz
  %i.aib = xor i24 %.sroa.279.0.copyload, -1
  %.sroa.1221.8.extract.shift34.i190 = and i24 %.sroa.1230.8.insert.ext.i, %i.aib
  %.sroa.1131.8.insert.ext.i192 = zext i8 %i.aia to i24
  %.sroa.1131.8.insert.shift.i193 = shl nuw nsw i24 %.sroa.1131.8.insert.ext.i192, 8
  %.sroa.1131.8.insert.insert.i194 = or disjoint i24 %.sroa.1131.8.insert.shift.i193, %.sroa.1221.8.extract.shift34.i190
  %.sroa.930.8.insert.ext.i195 = zext i8 %i.ahy to i24
  %.sroa.930.8.insert.insert.i196 = or disjoint i24 %.sroa.1131.8.insert.insert.i194, %.sroa.930.8.insert.ext.i195
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.sink = phi i64 [ %i.ahe, %bb.dv ], [ %i.ahw, %bb.dw ] ; 2 uses
  %.sroa.930.8.insert.insert.i196.sink = phi i24 [ %.sroa.928.8.insert.insert.i, %bb.dv ], [ %.sroa.930.8.insert.insert.i196, %bb.dw ] ; 2 uses
  store i64 %.sink, ptr %4, align 8
  %i.aic = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i24 %.sroa.930.8.insert.insert.i196.sink, ptr %i.aic, align 8, !tbaa !39
  %i.aid = getelementptr i8, ptr %i.ahb, i64 11
  store i64 %i.ahe, ptr %i.aid, align 1
  %.sroa.7.0..sroa_idx91 = getelementptr i8, ptr %i.ahb, i64 19
  store i24 %.sroa.928.8.insert.insert.i, ptr %.sroa.7.0..sroa_idx91, align 1, !tbaa !39
  %.not.7.i = icmp eq i64 %.sink, 0
  %.not.10.i = icmp eq i24 %.sroa.930.8.insert.insert.i196.sink, 0
  %or.cond16.i = select i1 %.not.7.i, i1 %.not.10.i, i1 false
  br i1 %or.cond16.i, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %.sroa.061.0.copyload = load i64, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i24, ptr %.sroa.2.0..sroa_idx, align 8
  %.not.7.i199 = icmp eq i64 %.sroa.061.0.copyload, 0
  %.not.10.i200 = icmp eq i24 %.sroa.2.0.copyload, 0
  %or.cond16.i201 = select i1 %.not.7.i199, i1 %.not.10.i200, i1 false
  br i1 %or.cond16.i201, label %.loopexit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.aie = getelementptr i8, ptr %0, i64 192      ; 5 uses
  %i.aif = load i32, ptr %i.aie, align 8, !tbaa !166 ; 2 uses
  %i.aig = icmp slt i32 %i.aif, %i.b
  br i1 %i.aig, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.dz
  %i.aih = getelementptr i8, ptr %0, i64 208
  %i.aii = getelementptr i8, ptr %0, i64 152      ; 2 uses
  br label %bb.ea

._crit_edge:                                      ; preds = %_PyInstruction_GetLength.exit, %bb.dz
  %i.aij = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.aik = load i8, ptr %i.aij, align 1, !tbaa !39 ; 3 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.aim = load i8, ptr %i.ail, align 2, !tbaa !39 ; 3 uses
  %.not154 = icmp eq i8 %i.aik, 0
  br i1 %.not154, label %.loopexit322, label %bb.fn

bb.ea:                                            ; preds = %.lr.ph, %_PyInstruction_GetLength.exit
  %.0138334 = phi i32 [ %i.aif, %.lr.ph ], [ %i.ape, %_PyInstruction_GetLength.exit ] ; 6 uses
  %i.ain = sext i32 %.0138334 to i64              ; 8 uses
  %i.aio = getelementptr [2 x i8], ptr %i.aih, i64 %i.ain ; 8 uses
  %i.aip = load i16, ptr %i.aio, align 2          ; 3 uses
  %.sroa.7.0.extract.shift.i = lshr i16 %i.aip, 8 ; 2 uses
  %.sroa.7.0.extract.trunc.i = trunc nuw i16 %.sroa.7.0.extract.shift.i to i8 ; 3 uses
  %i.aiq = and i16 %i.aip, 255                    ; 3 uses
  %i.air = icmp samesign ult i16 %i.aiq, 233
  %i.ais = trunc i16 %i.aip to i8                 ; 2 uses
  br i1 %i.air, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.ait = zext nneg i16 %i.aiq to i64
  %i.aiu = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.ait
  %i.aiv = load i8, ptr %i.aiu, align 1, !tbaa !39
  br label %_Py_GetBaseCodeUnit.exit

bb.ec:                                            ; preds = %bb.ea
  %i.aiw = zext nneg i16 %i.aiq to i32
  switch i8 %i.ais, label %bb.ef [
    i8 -2, label %bb.ed
    i8 -3, label %bb.ee
  ]

bb.ed:                                            ; preds = %bb.ec
  %i.aix = load ptr, ptr %i.aii, align 8, !tbaa !13
  %i.aiy = getelementptr i8, ptr %i.aix, i64 8
  %i.aiz = zext nneg i16 %.sroa.7.0.extract.shift.i to i64
  %i.aja = getelementptr [8 x i8], ptr %i.aiy, i64 %i.aiz
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !22 ; 2 uses
  %i.ajc = getelementptr i8, ptr %i.ajb, i64 32
  %i.ajd = load i8, ptr %i.ajc, align 8, !tbaa !24
  %i.aje = zext i8 %i.ajd to i64
  %i.ajf = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.aje
  %i.ajg = load i8, ptr %i.ajf, align 1, !tbaa !39
  %i.ajh = getelementptr i8, ptr %i.ajb, i64 33
  %i.aji = load i8, ptr %i.ajh, align 1, !tbaa !41
  br label %_Py_GetBaseCodeUnit.exit

bb.ee:                                            ; preds = %bb.ec
  %i.ajj = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.ajk = getelementptr i8, ptr %i.ajj, i64 96
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !33 ; 2 uses
  %i.ajm = getelementptr i8, ptr %i.ajl, i64 1
  %i.ajn = load i8, ptr %i.ajl, align 1, !tbaa !37
  %i.ajo = zext i8 %i.ajn to i32
  %i.ajp = mul i32 %.0138334, %i.ajo
  %i.ajq = sext i32 %i.ajp to i64
  %i.ajr = getelementptr i8, ptr %i.ajm, i64 %i.ajq
  %i.ajs = load i8, ptr %i.ajr, align 1, !tbaa !39
  %i.ajt = zext i8 %i.ajs to i32
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ec
  %.0.i = phi i32 [ %i.ajt, %bb.ee ], [ %i.aiw, %bb.ec ] ; 2 uses
  %i.aju = icmp eq i32 %.0.i, 237
  br i1 %i.aju, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.ajv = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.ajw = getelementptr i8, ptr %i.ajv, i64 112
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !40
  %i.ajy = getelementptr i8, ptr %i.ajx, i64 %i.ain
  %i.ajz = load i8, ptr %i.ajy, align 1, !tbaa !39
  %i.aka = zext i8 %i.ajz to i32
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.1.i = phi i32 [ %i.aka, %bb.eg ], [ %.0.i, %bb.ef ]
  %i.akb = zext nneg i32 %.1.i to i64             ; 2 uses
  %i.akc = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.akb
  %i.akd = load i8, ptr %i.akc, align 1, !tbaa !39 ; 2 uses
  %.not.i = icmp eq i8 %i.akd, 0
  br i1 %.not.i, label %bb.ei, label %_Py_GetBaseCodeUnit.exit

bb.ei:                                            ; preds = %bb.eh
  %i.ake = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.akb
  %i.akf = load i8, ptr %i.ake, align 1, !tbaa !39
  br label %_Py_GetBaseCodeUnit.exit

_Py_GetBaseCodeUnit.exit:                         ; preds = %bb.eb, %bb.ed, %bb.eh, %bb.ei
  %.sroa.0.1.i = phi i8 [ %i.aiv, %bb.eb ], [ %i.ajg, %bb.ed ], [ %i.akf, %bb.ei ], [ %i.akd, %bb.eh ] ; 3 uses
  %.sroa.7.0.i = phi i8 [ %.sroa.7.0.extract.trunc.i, %bb.eb ], [ %i.aji, %bb.ed ], [ %.sroa.7.0.extract.trunc.i, %bb.ei ], [ %.sroa.7.0.extract.trunc.i, %bb.eh ]
  %.not.i202 = icmp eq i8 %.sroa.0.1.i, -3
  br i1 %.not.i202, label %add_tools.exit, label %opcode_has_event.exit

opcode_has_event.exit:                            ; preds = %_Py_GetBaseCodeUnit.exit
  %i.akg = zext i8 %.sroa.0.1.i to i64            ; 2 uses
  %i.akh = getelementptr i8, ptr @INSTRUMENTED_OPCODES, i64 %i.akg
  %i.aki = load i8, ptr %i.akh, align 1, !tbaa !39
  %.not319 = icmp eq i8 %i.aki, 0
  br i1 %.not319, label %add_tools.exit, label %bb.ej

bb.ej:                                            ; preds = %opcode_has_event.exit
  %i.akj = icmp eq i8 %.sroa.0.1.i, -128
  br i1 %i.akj, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.akk = icmp ne i8 %.sroa.7.0.i, 0
  %i.akl = zext i1 %i.akk to i8
  br label %bb.em

bb.el:                                            ; preds = %bb.ej
  %i.akm = getelementptr i8, ptr @EVENT_FOR_OPCODE, i64 %i.akg
  %i.akn = load i8, ptr %i.akm, align 1, !tbaa !39
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.0141 = phi i8 [ %i.akl, %bb.ek ], [ %i.akn, %bb.el ]
  %i.ako = sext i8 %.0141 to i64                  ; 3 uses
  %i.akp = getelementptr i8, ptr %5, i64 %i.ako
  %i.akq = load i8, ptr %i.akp, align 1, !tbaa !39 ; 3 uses
  %.not161 = icmp eq i8 %i.akq, 0
  br i1 %.not161, label %remove_tools.exit, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.akr = load ptr, ptr %i.f, align 8, !tbaa !32 ; 4 uses
  %i.aks = getelementptr i8, ptr %i.akr, i64 24   ; 2 uses
  %i.akt = load ptr, ptr %i.aks, align 8, !tbaa !57 ; 2 uses
  %.not.i203 = icmp eq ptr %i.akt, null
  br i1 %.not.i203, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.aku = getelementptr i8, ptr %i.akt, i64 %i.ain ; 2 uses
  %i.akv = load i8, ptr %i.aku, align 1, !tbaa !39
  %i.akw = xor i8 %i.akq, -1
  %i.akx = and i8 %i.akv, %i.akw
  store i8 %i.akx, ptr %i.aku, align 1, !tbaa !39
  %i.aky = load ptr, ptr %i.aks, align 8, !tbaa !57
  %i.akz = getelementptr i8, ptr %i.aky, i64 %i.ain
  %i.ala = load i8, ptr %i.akz, align 1, !tbaa !39
  %i.alb = icmp eq i8 %i.ala, 0
  br i1 %i.alb, label %.._crit_edge.i206_crit_edge, label %remove_tools.exit

.._crit_edge.i206_crit_edge:                      ; preds = %bb.eo
  %.pre360 = load i8, ptr %i.aio, align 2, !tbaa !39
  br label %._crit_edge.i206

bb.ep:                                            ; preds = %bb.en
  %i.alc = getelementptr i8, ptr %i.akr, i64 11
  %i.ald = getelementptr i8, ptr %i.alc, i64 %i.ako
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !39 ; 2 uses
  %i.alf = and i8 %i.ale, %i.akq
  %i.alg = icmp eq i8 %i.alf, %i.ale
  br i1 %i.alg, label %._crit_edge.i206, label %remove_tools.exit

._crit_edge.i206:                                 ; preds = %.._crit_edge.i206_crit_edge, %bb.ep
  %i.alh = phi i8 [ %.pre360, %.._crit_edge.i206_crit_edge ], [ %i.ais, %bb.ep ] ; 2 uses
  %i.ali = icmp eq i8 %i.alh, -3
  br i1 %i.ali, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %._crit_edge.i206
  %i.alj = getelementptr i8, ptr %i.akr, i64 96
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !33 ; 2 uses
  %i.all = getelementptr i8, ptr %i.alk, i64 1
  %i.alm = load i8, ptr %i.alk, align 1, !tbaa !37
  %i.aln = zext i8 %i.alm to i32
  %i.alo = mul i32 %.0138334, %i.aln
  %i.alp = sext i32 %i.alo to i64
  %i.alq = getelementptr i8, ptr %i.all, i64 %i.alp ; 2 uses
  %i.alr = load i8, ptr %i.alq, align 1, !tbaa !39
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %._crit_edge.i206
  %.017.in.i.i = phi i8 [ %i.alr, %bb.eq ], [ %i.alh, %._crit_edge.i206 ] ; 2 uses
  %.0.i.i = phi ptr [ %i.alq, %bb.eq ], [ %i.aio, %._crit_edge.i206 ]
  %i.als = icmp eq i8 %.017.in.i.i, -19
  br i1 %i.als, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.alt = getelementptr i8, ptr %i.akr, i64 112
  %i.alu = load ptr, ptr %i.alt, align 8, !tbaa !40
  %i.alv = getelementptr i8, ptr %i.alu, i64 %i.ain ; 2 uses
  %i.alw = load i8, ptr %i.alv, align 1, !tbaa !39
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.118.in.i.i = phi i8 [ %i.alw, %bb.es ], [ %.017.in.i.i, %bb.er ]
  %.1.i.i204 = phi ptr [ %i.alv, %bb.es ], [ %.0.i.i, %bb.er ]
  %i.alx = zext i8 %.118.in.i.i to i64
  %i.aly = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.alx
  %i.alz = load i8, ptr %i.aly, align 1, !tbaa !39 ; 3 uses
  %i.ama = icmp eq i8 %i.alz, 0
  br i1 %i.ama, label %remove_tools.exit, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  store i8 %i.alz, ptr %.1.i.i204, align 1, !tbaa !39
  %i.amb = zext i8 %i.alz to i64
  %i.amc = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.amb
  %i.amd = load i8, ptr %i.amc, align 1, !tbaa !39
  %.not.i.i205 = icmp eq i8 %i.amd, 0
  br i1 %.not.i.i205, label %remove_tools.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ame = getelementptr i8, ptr %i.aio, i64 2
  store i16 9, ptr %i.ame, align 2, !tbaa !39
  br label %remove_tools.exit

remove_tools.exit:                                ; preds = %bb.ev, %bb.eu, %bb.et, %bb.ep, %bb.eo, %bb.em
  %i.amf = getelementptr i8, ptr %4, i64 %i.ako
  %i.amg = load i8, ptr %i.amf, align 1, !tbaa !39 ; 2 uses
  %.not162 = icmp eq i8 %i.amg, 0
  br i1 %.not162, label %add_tools.exit, label %bb.ew

bb.ew:                                            ; preds = %remove_tools.exit
  %i.amh = load ptr, ptr %i.f, align 8, !tbaa !32 ; 3 uses
  %.not.i208 = icmp eq ptr %i.amh, null
  br i1 %.not.i208, label %bb.ez, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ami = getelementptr i8, ptr %i.amh, i64 24
  %i.amj = load ptr, ptr %i.ami, align 8, !tbaa !57 ; 2 uses
  %.not9.i = icmp eq ptr %i.amj, null
  br i1 %.not9.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.amk = getelementptr i8, ptr %i.amj, i64 %i.ain ; 2 uses
  %i.aml = load i8, ptr %i.amk, align 1, !tbaa !39
  %i.amm = or i8 %i.aml, %i.amg
  store i8 %i.amm, ptr %i.amk, align 1, !tbaa !39
  %.pre.i209 = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex, %bb.ew
  %i.amn = phi ptr [ null, %bb.ew ], [ %i.amh, %bb.ex ], [ %.pre.i209, %bb.ey ] ; 2 uses
  %i.amo = load i8, ptr %i.aio, align 2, !tbaa !39 ; 2 uses
  %i.amp = icmp eq i8 %i.amo, -3
  br i1 %i.amp, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.amq = getelementptr i8, ptr %i.amn, i64 96
  %i.amr = load ptr, ptr %i.amq, align 8, !tbaa !33 ; 2 uses
  %i.ams = getelementptr i8, ptr %i.amr, i64 1
  %i.amt = load i8, ptr %i.amr, align 1, !tbaa !37
  %i.amu = zext i8 %i.amt to i32
  %i.amv = mul i32 %.0138334, %i.amu
  %i.amw = sext i32 %i.amv to i64
  %i.amx = getelementptr i8, ptr %i.ams, i64 %i.amw ; 2 uses
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !39
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.018.in.i.i = phi i8 [ %i.amy, %bb.fa ], [ %i.amo, %bb.ez ] ; 2 uses
  %.0.i.i210 = phi ptr [ %i.amx, %bb.fa ], [ %i.aio, %bb.ez ]
  %i.amz = icmp eq i8 %.018.in.i.i, -19
  br i1 %i.amz, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.ana = getelementptr i8, ptr %i.amn, i64 112
  %i.anb = load ptr, ptr %i.ana, align 8, !tbaa !40
  %i.anc = getelementptr i8, ptr %i.anb, i64 %i.ain ; 2 uses
  %i.and = load i8, ptr %i.anc, align 1, !tbaa !39
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.119.in.i.i = phi i8 [ %i.and, %bb.fc ], [ %.018.in.i.i, %bb.fb ] ; 2 uses
  %.1.i.i211 = phi ptr [ %i.anc, %bb.fc ], [ %.0.i.i210, %bb.fb ]
  %i.ane = add i8 %.119.in.i.i, 23
  %i.anf = icmp ult i8 %i.ane, 21
  br i1 %i.anf, label %add_tools.exit, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ang = zext i8 %.119.in.i.i to i64
  %i.anh = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.ang
  %i.ani = load i8, ptr %i.anh, align 1, !tbaa !39
  %i.anj = zext i8 %i.ani to i64                  ; 2 uses
  %i.ank = getelementptr i8, ptr @INSTRUMENTED_OPCODES, i64 %i.anj
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !39
  store i8 %i.anl, ptr %.1.i.i211, align 1, !tbaa !39
  %i.anm = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.anj
  %i.ann = load i8, ptr %i.anm, align 1, !tbaa !39
  %.not.i.i212 = icmp eq i8 %i.ann, 0
  br i1 %.not.i.i212, label %add_tools.exit, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ano = getelementptr i8, ptr %i.aio, i64 2
  store i16 9, ptr %i.ano, align 2, !tbaa !39
  br label %add_tools.exit

add_tools.exit:                                   ; preds = %_Py_GetBaseCodeUnit.exit, %bb.ff, %bb.fe, %bb.fd, %remove_tools.exit, %opcode_has_event.exit
  %i.anp = load i16, ptr %i.aio, align 2, !tbaa !11 ; 3 uses
  %.sroa.7.0.extract.shift.i.i = lshr i16 %i.anp, 8
  %i.anq = and i16 %i.anp, 255                    ; 3 uses
  %i.anr = icmp samesign ult i16 %i.anq, 233
  br i1 %i.anr, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %add_tools.exit
  %i.ans = zext nneg i16 %i.anq to i64
  br label %_Py_GetBaseCodeUnit.exit.sink.split.i

bb.fh:                                            ; preds = %add_tools.exit
  %i.ant = zext nneg i16 %i.anq to i32
  %trunc.i.i213 = trunc i16 %i.anp to i8
  switch i8 %trunc.i.i213, label %bb.fk [
    i8 -2, label %bb.fi
    i8 -3, label %bb.fj
  ]

bb.fi:                                            ; preds = %bb.fh
end_hunk_2
begin_hunk_3_@monitoring_get_local_events_impl:bb.a
  %.012 = phi i32 [ -1, %bb.b ], [ -1, %check_valid_tool.exit ], [ 0, %bb.d ], [ %op.rdx8, %.preheader ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @monitoring_set_local_events_impl(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !82
  %.not = icmp eq ptr %.val, @PyCode_Type
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !55
  %i.c = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.b, ptr noundef nonnull @.str.34) #12 ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %0, 5
  br i1 %or.cond.i, label %check_valid_tool.exit, label %bb.d

check_valid_tool.exit:                            ; preds = %bb.c
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.27, i32 noundef %0) #12 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %2, 196608
  %.not20 = icmp eq i32 %i.f, 0
  %i.g = and i32 %2, 196624
  %.not21 = icmp eq i32 %i.g, 196624
  %or.cond24 = or i1 %.not20, %.not21
  br i1 %or.cond24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.33) #12 ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.j = and i32 %2, -196609
  %i.k = and i32 %2, 262144
  %.not22 = icmp eq i32 %i.k, 0
  %i.l = and i32 %2, -459521
  %i.m = or disjoint i32 %i.l, 768
  %.018 = select i1 %.not22, i32 %i.j, i32 %i.m   ; 3 uses
  %or.cond = icmp ugt i32 %.018, 2047
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.o = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.35, i32 noundef %.018) #12 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !165  ; 2 uses
  tail call void @_PyEval_StopTheWorld(ptr noundef %i.q) #12
  %i.r = tail call i32 @_PyMonitoring_SetLocalEvents(ptr noundef nonnull %1, i32 noundef %0, i32 noundef %.018)
  tail call void @_PyEval_StartTheWorld(ptr noundef %i.q) #12
  %.not23 = icmp eq i32 %i.r, 0
  %_Py_NoneStruct. = select i1 %.not23, ptr @_Py_NoneStruct, ptr null
  br label %bb.i

bb.i:                                             ; preds = %check_valid_tool.exit, %bb.h, %bb.g, %bb.e, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ], [ %_Py_NoneStruct., %bb.h ], [ null, %check_valid_tool.exit ]
  ret ptr %.1
}

declare ptr @PyDict_New() local_unnamed_addr #5

declare i32 @PyDict_SetItemString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @PyErr_GetRaisedException() local_unnamed_addr #5

declare void @PyErr_SetRaisedException(ptr noundef) local_unnamed_addr #5

declare ptr @_PyObject_New(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal ptr @branch_handler_vectorcall(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !55
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = tail call i64 @PyLong_AsLong(ptr noundef %i.c) #12
  %i.e = tail call ptr @PyErr_Occurred() #12
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i64 %i.d to i32
  %i.g = getelementptr i8, ptr %i.a, i64 208
  %i.h = sdiv i32 %i.f, 2
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [2 x i8], ptr %i.g, i64 %i.i
  %.sroa.0.0.copyload = load i8, ptr %i.j, align 2
  %i.k = add i8 %.sroa.0.0.copyload, 23
  %i.l = icmp ult i8 %i.k, 21
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !199
  %i.o = tail call ptr @PyObject_Vectorcall(ptr noundef %i.n, ptr noundef nonnull %1, i64 noundef %2, ptr noundef %3) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ @_PyInstrumentation_DISABLE, %bb.b ], [ %i.o, %bb.c ]
  ret ptr %.3
}

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #5

declare ptr @PyObject_Vectorcall(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @dealloc_branch_handler(ptr noundef %0) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !55
  %i.c = load i32, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !39
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #12
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @PyObject_Free(ptr noundef nonnull %0) #12
  ret void
}

declare ptr @PyVectorcall_Call(ptr noundef, ptr noundef, ptr noundef) #5

declare void @PyObject_Free(ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal void @branchesiter_dealloc(ptr noundef %0) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !207  ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !39
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #12
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  tail call void @PyObject_Free(ptr noundef nonnull %0) #12
  ret void
}

declare ptr @PyObject_SelfIter(ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal ptr @branchesiter_next(ptr nofree noundef captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !209  ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207  ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val = load i64, ptr %i.e, align 8, !tbaa !167 ; 2 uses
  %i.f = sext i32 %i.b to i64                     ; 2 uses
  %i.g = icmp sgt i64 %.val, %i.f
  br i1 %i.g, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 208
  %i.i = getelementptr i8, ptr %i.d, i64 176      ; 2 uses
  %i.j = getelementptr i8, ptr %i.d, i64 152
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %i.k = phi i64 [ %i.f, %.lr.ph ], [ %i.ci, %bb.o ] ; 2 uses
  %.04062 = phi i32 [ %i.b, %.lr.ph ], [ %i.bh, %bb.o ] ; 4 uses
  %.04261 = phi i32 [ 0, %.lr.ph ], [ %.244, %bb.o ] ; 4 uses
  %i.l = getelementptr [2 x i8], ptr %i.h, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !11   ; 3 uses
  %.sroa.7.0.extract.shift.i = lshr i16 %i.m, 8   ; 2 uses
  %.sroa.7.0.extract.trunc.i = trunc nuw i16 %.sroa.7.0.extract.shift.i to i8 ; 3 uses
  %i.n = and i16 %i.m, 255                        ; 3 uses
  %i.o = icmp samesign ult i16 %i.n, 233
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i16 %i.n to i64
  %i.q = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !39
  br label %_Py_GetBaseCodeUnit.exit

bb.d:                                             ; preds = %bb.b
  %i.s = zext nneg i16 %i.n to i32
  %trunc.i = trunc i16 %i.m to i8
  switch i8 %trunc.i, label %bb.g [
    i8 -2, label %bb.e
    i8 -3, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = zext nneg i16 %.sroa.7.0.extract.shift.i to i64
  %i.w = getelementptr [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22   ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 32
  %i.z = load i8, ptr %i.y, align 8, !tbaa !24
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !39
  %i.ad = getelementptr i8, ptr %i.x, i64 33
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !41
  br label %_Py_GetBaseCodeUnit.exit

bb.f:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.ag = getelementptr i8, ptr %i.af, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !33 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !37
  %i.ak = zext i8 %i.aj to i32
  %i.al = mul i32 %.04062, %i.ak
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr i8, ptr %i.ai, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !39
  %i.ap = zext i8 %i.ao to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.0.i = phi i32 [ %i.ap, %bb.f ], [ %i.s, %bb.d ] ; 2 uses
  %i.aq = icmp eq i32 %.0.i, 237
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.as = getelementptr i8, ptr %i.ar, i64 112
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40
  %i.au = getelementptr i8, ptr %i.at, i64 %i.k
  %i.av = load i8, ptr %i.au, align 1, !tbaa !39
  %i.aw = zext i8 %i.av to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i = phi i32 [ %i.aw, %bb.h ], [ %.0.i, %bb.g ]
  %i.ax = zext nneg i32 %.1.i to i64              ; 2 uses
  %i.ay = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !39  ; 2 uses
  %.not.i = icmp eq i8 %i.az, 0
  br i1 %.not.i, label %bb.j, label %_Py_GetBaseCodeUnit.exit

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.ax
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !39
  br label %_Py_GetBaseCodeUnit.exit

_Py_GetBaseCodeUnit.exit:                         ; preds = %bb.c, %bb.e, %bb.i, %bb.j
  %.sroa.0.1.i = phi i8 [ %i.r, %bb.c ], [ %i.ac, %bb.e ], [ %i.bb, %bb.j ], [ %i.az, %bb.i ] ; 2 uses
  %.sroa.7.0.i = phi i8 [ %.sroa.7.0.extract.trunc.i, %bb.c ], [ %i.ae, %bb.e ], [ %.sroa.7.0.extract.trunc.i, %bb.j ], [ %.sroa.7.0.extract.trunc.i, %bb.i ] ; 4 uses
  %i.bc = add i32 %.04062, 1
  %i.bd = zext i8 %.sroa.0.1.i to i64
  %i.be = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !39
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add i32 %i.bc, %i.bg                    ; 10 uses
  switch i8 %.sroa.0.1.i, label %bb.o [
    i8 69, label %bb.k
    i8 70, label %bb.l
    i8 100, label %bb.m
    i8 103, label %bb.m
    i8 101, label %bb.m
    i8 102, label %bb.m
    i8 68, label %bb.n
  ]

bb.k:                                             ; preds = %_Py_GetBaseCodeUnit.exit
  %.sroa.5.0.extract.trunc = zext i8 %.sroa.7.0.i to i32
  %i.bi = shl i32 %.04261, 8
  %i.bj = or disjoint i32 %i.bi, %.sroa.5.0.extract.trunc
  br label %bb.o

bb.l:                                             ; preds = %_Py_GetBaseCodeUnit.exit
  %i.bk = shl i32 %.04261, 8
  %i.bl = zext i8 %.sroa.7.0.i to i32
  %i.bm = or disjoint i32 %i.bk, %i.bl
  store i32 %i.bh, ptr %i.a, align 8, !tbaa !209
  %i.bn = add i32 %i.bm, %i.bh
  %i.bo = shl i32 %.04062, 1
  %i.bp = shl i32 %i.bh, 1
  %i.bq = shl i32 %i.bn, 1
  %i.br = add i32 %i.bq, 4
  %i.bs = tail call fastcc ptr @int_triple(i32 noundef %i.bo, i32 noundef %i.bp, i32 noundef %i.br)
  br label %.thread

bb.m:                                             ; preds = %_Py_GetBaseCodeUnit.exit, %_Py_GetBaseCodeUnit.exit, %_Py_GetBaseCodeUnit.exit, %_Py_GetBaseCodeUnit.exit
  %i.bt = shl i32 %.04261, 8
  %i.bu = zext i8 %.sroa.7.0.i to i32
  %i.bv = or disjoint i32 %i.bt, %i.bu
  %i.bw = add i32 %i.bh, 1                        ; 2 uses
  store i32 %i.bw, ptr %i.a, align 8, !tbaa !209
  %i.bx = shl i32 %.04062, 1
  %i.by = shl i32 %i.bw, 1
  %i.bz = add i32 %i.bv, %i.bh
  %i.ca = shl i32 %i.bz, 1
  %i.cb = tail call fastcc ptr @int_triple(i32 noundef %i.bx, i32 noundef %i.by, i32 noundef %i.ca)
  br label %.thread

bb.n:                                             ; preds = %_Py_GetBaseCodeUnit.exit
  %.neg63 = mul i32 %.04261, 2147483392
  %i.cc = zext i8 %.sroa.7.0.i to i32
  %.neg50 = sub i32 %.neg63, %i.cc
  %i.cd = add i32 %.neg50, %i.bh
  store i32 %i.bh, ptr %i.a, align 8, !tbaa !209
  %i.ce = shl i32 %i.cd, 1                        ; 2 uses
  %i.cf = add i32 %i.ce, 4
  %i.cg = shl i32 %i.bh, 1
  %i.ch = tail call fastcc ptr @int_triple(i32 noundef %i.ce, i32 noundef %i.cf, i32 noundef %i.cg)
  br label %.thread

bb.o:                                             ; preds = %bb.k, %_Py_GetBaseCodeUnit.exit
  %.244 = phi i32 [ 0, %_Py_GetBaseCodeUnit.exit ], [ %i.bj, %bb.k ]
  %i.ci = sext i32 %i.bh to i64                   ; 2 uses
  %i.cj = icmp sgt i64 %.val, %i.ci
  br i1 %i.cj, label %bb.b, label %.thread, !llvm.loop !211

.thread:                                          ; preds = %bb.o, %bb.a, %bb.m, %bb.l, %bb.n
  %.2 = phi ptr [ %i.ch, %bb.n ], [ %i.cb, %bb.m ], [ %i.bs, %bb.l ], [ null, %bb.a ], [ null, %bb.o ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @int_triple(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 4 uses
  %i.b = sext i32 %0 to i64
  %i.c = tail call ptr @PyLong_FromLong(i64 noundef %i.b) #12 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_XDECREF.exit20, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %1 to i64
  %i.f = tail call ptr @PyLong_FromLong(i64 noundef %i.e) #12 ; 5 uses
  %i.g = icmp eq ptr %i.f, null                   ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sext i32 %2 to i64
  %i.i = tail call ptr @PyLong_FromLong(i64 noundef %i.h) #12 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.c, ptr %i.a, align 16, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.k, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %i.l, align 16, !tbaa !55
  %i.m = call ptr @_PyTuple_FromArraySteal(ptr noundef nonnull %i.a, i64 noundef 3) #12
  br label %Py_XDECREF.exit20

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.n = load i32, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i.i, label %bb.f, label %Py_XDECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.c, align 8, !tbaa !39
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %Py_XDECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #12
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.e, %bb.f, %bb.g
  br i1 %i.g, label %Py_XDECREF.exit20, label %bb.h

bb.h:                                             ; preds = %Py_XDECREF.exit
  %i.q = load i32, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %.not.i.i19 = icmp sgt i32 %i.q, -1
  br i1 %.not.i.i19, label %bb.i, label %Py_XDECREF.exit20

bb.i:                                             ; preds = %bb.h
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.f, align 8, !tbaa !39
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.j, label %Py_XDECREF.exit20

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #12
  br label %Py_XDECREF.exit20

Py_XDECREF.exit20:                                ; preds = %bb.a, %bb.j, %bb.i, %bb.h, %Py_XDECREF.exit, %bb.d
  %.013 = phi ptr [ %i.m, %bb.d ], [ null, %bb.j ], [ null, %Py_XDECREF.exit ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.a ]
  ret ptr %.013
}

declare ptr @_PyTuple_FromArraySteal(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v12i32(<12 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v8i32(<8 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !9, i64 0}
!13 = !{!14, !18, i64 152}
!14 = !{!"PyCodeObject", !15, i64 0, !20, i64 24, !20, i64 32, !20, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !20, i64 96, !20, i64 104, !20, i64 112, !20, i64 120, !20, i64 128, !20, i64 136, !20, i64 144, !18, i64 152, !18, i64 160, !19, i64 168, !21, i64 176, !19, i64 184, !8, i64 192, !18, i64 200, !9, i64 208}
!15 = !{!"PyVarObject", !16, i64 0, !19, i64 16}
!16 = !{!"_object", !9, i64 0, !17, i64 8}
!17 = !{!"p1 _ZTS11_typeobject", !18, i64 0}
!18 = !{!"any pointer", !9, i64 0}
!19 = !{!"long", !9, i64 0}
!20 = !{!"p1 _ZTS7_object", !18, i64 0}
!21 = !{!"p1 _ZTS19_PyCoMonitoringData", !18, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS17_PyExecutorObject", !18, i64 0}
!24 = !{!25, !9, i64 32}
!25 = !{!"_PyExecutorObject", !15, i64 0, !26, i64 24, !27, i64 32, !8, i64 104, !8, i64 108, !19, i64 112, !18, i64 120, !9, i64 128}
!26 = !{!"p1 _ZTS17_PyUOpInstruction", !18, i64 0}
!27 = !{!"", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !28, i64 4, !9, i64 5, !8, i64 8, !29, i64 12, !30, i64 48, !31, i64 64}
!28 = !{!"_Bool", !9, i64 0}
!29 = !{!"", !9, i64 0}
!30 = !{!"_PyExecutorLinkListNode", !23, i64 0, !23, i64 8}
!31 = !{!"p1 _ZTS12PyCodeObject", !18, i64 0}
!32 = !{!14, !21, i64 176}
!33 = !{!34, !18, i64 96}
!34 = !{!"_PyCoMonitoringData", !35, i64 0, !35, i64 11, !36, i64 24, !9, i64 32, !18, i64 96, !36, i64 104, !36, i64 112, !36, i64 120}
!35 = !{!"_Py_LocalMonitors", !9, i64 0}
!36 = !{!"p1 omnipotent char", !18, i64 0}
!37 = !{!38, !9, i64 0}
!38 = !{!"", !9, i64 0, !9, i64 1}
!39 = !{!9, !9, i64 0}
!40 = !{!34, !36, i64 112}
!41 = !{!25, !9, i64 33}
!42 = !{!43, !8, i64 64}
!43 = !{!"_ts", !44, i64 0, !44, i64 8, !45, i64 16, !19, i64 24, !46, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !47, i64 72, !47, i64 80, !47, i64 88, !18, i64 96, !18, i64 104, !20, i64 112, !20, i64 120, !20, i64 128, !48, i64 136, !20, i64 144, !8, i64 152, !20, i64 160, !19, i64 168, !19, i64 176, !20, i64 184, !19, i64 192, !8, i64 200, !20, i64 208, !20, i64 216, !20, i64 224, !19, i64 232, !19, i64 240, !49, i64 248, !50, i64 256, !50, i64 264, !52, i64 272, !20, i64 288, !53, i64 296, !19, i64 304, !20, i64 312, !20, i64 320, !54, i64 328}
!44 = !{!"p1 _ZTS3_ts", !18, i64 0}
!45 = !{!"p1 _ZTS3_is", !18, i64 0}
!46 = !{!"", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!47 = !{!"p1 _ZTS19_PyInterpreterFrame", !18, i64 0}
!48 = !{!"p1 _ZTS14_err_stackitem", !18, i64 0}
!49 = !{!"p1 _ZTS12_stack_chunk", !18, i64 0}
!50 = !{!"p2 _ZTS7_object", !51, i64 0}
!51 = !{!"any p2 pointer", !18, i64 0}
!52 = !{!"_err_stackitem", !20, i64 0, !48, i64 8}
!53 = !{!"p1 _ZTS11_PyExitData", !18, i64 0}
!54 = !{!"", !8, i64 0, !9, i64 4}
!55 = !{!20, !20, i64 0}
!56 = !{!43, !45, i64 16}
!57 = !{!34, !36, i64 24}
!58 = !{!36, !36, i64 0}
!59 = !{!60, !18, i64 56}
!60 = !{!"_PyInterpreterFrame", !9, i64 0, !47, i64 8, !9, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !61, i64 48, !18, i64 56, !62, i64 64, !12, i64 72, !9, i64 74, !9, i64 75, !9, i64 80}
!61 = !{!"p1 _ZTS6_frame", !18, i64 0}
!62 = !{!"p1 _ZTS11_PyStackRef", !18, i64 0}
!63 = distinct !{!63, !64, !65, !66}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = distinct !{!67, !64, !66, !65}
!68 = !{!14, !8, i64 68}
!69 = distinct !{!69, !64, !65, !66}
!70 = distinct !{!70, !64, !66, !65}
!71 = distinct !{!71, !64, !65, !66}
!72 = distinct !{!72, !64, !66, !65}
!73 = !{!34, !36, i64 104}
end_hunk_3
