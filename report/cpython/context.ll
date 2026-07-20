inline.NumInlined: 106
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
%struct.gc_generation_stats = type { i64, i64, i64, i64, double }
%struct._import_state = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, %struct._PyRecursiveMutex, %struct.anon.1 }
%struct._PyRecursiveMutex = type { %struct.PyMutex, i64, i64 }
%struct.anon.1 = type { i32, i64, i32 }
%struct._gil_runtime_state = type { i64, ptr, i32, i64, %union.pthread_cond_t, %union.pthread_mutex_t, %union.pthread_cond_t, %union.pthread_mutex_t }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.codecs_state = type { ptr, ptr, ptr, i32 }
%struct.PyConfig = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.PyWideStringList, %struct.PyWideStringList, %struct.PyWideStringList, %struct.PyWideStringList, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.PyWideStringList, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct._PyXI_state_t = type { %struct._xid_lookup_state, %struct.xi_exceptions }
%struct.xi_exceptions = type { ptr, ptr, ptr }
%struct._warnings_runtime_state = type { ptr, ptr, ptr, %struct._PyRecursiveMutex, i64, ptr }
%struct.atexit_state = type { ptr, ptr }
%struct._qsbr_shared = type { i64, i64, ptr, ptr, i64, %struct.PyMutex, ptr }
%struct._py_object_state = type { %struct._Py_freelists, i32 }
%struct._Py_freelists = type { %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, [20 x %struct._Py_freelist], %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist }
%struct._Py_freelist = type { ptr, i64 }
%struct._Py_unicode_state = type { %struct._Py_unicode_fs_codec, ptr, %struct._Py_unicode_ids }
%struct._Py_unicode_fs_codec = type { ptr, i32, ptr, i32 }
%struct._Py_unicode_ids = type { i64, ptr }
%struct._Py_long_state = type { i32 }
%struct._dtoa_state = type { [8 x ptr], [8 x ptr], [288 x double], ptr }
%struct._py_func_state = type { i32, [4096 x %struct._func_version_cache_item] }
%struct._func_version_cache_item = type { ptr, ptr }
%struct._py_code_state = type { %struct.PyMutex, ptr }
%struct._Py_dict_state = type { i32, [8 x ptr] }
%struct._Py_exc_state = type { ptr, ptr, i32, ptr }
%struct._Py_mem_interp_free_queue = type { i32, %struct.PyMutex, %struct.llist_node }
%struct.ast_state = type { %struct._PyOnceFlag, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.types_state = type { i32, %struct.type_cache, %struct.anon.3, %struct.anon.4, %struct.PyMutex, [4096 x ptr] }
%struct.type_cache = type { [4096 x %struct.type_cache_entry] }
%struct.type_cache_entry = type { i32, ptr, ptr }
%struct.anon.3 = type { i64, [202 x %struct.managed_static_type_state] }
%struct.managed_static_type_state = type { ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.anon.4 = type { i64, i64, [10 x %struct.managed_static_type_state] }
%struct.callable_cache = type { ptr, ptr, ptr, ptr }
%struct._PyOptimizationConfig = type { i16, i16, i16, i16, i8, i8 }
%struct._rare_events = type { i8, i8, i8, i8, i8 }
%struct._Py_GlobalMonitors = type { [16 x i8] }
%struct._PyOnceFlag = type { i8 }
%struct._Py_interp_cached_objects = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._Py_interp_static_objects = type { %struct.anon.5 }
%struct.anon.5 = type { i32, %struct.PyGC_Head, %struct.PyHamtObject, %struct.PyBaseExceptionObject }
%struct.PyHamtObject = type { %struct._object, ptr, ptr, i64 }
%struct.PyBaseExceptionObject = type { %struct._object, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct._PyThreadStateImpl = type { %struct._ts, %struct._PyInterpreterFrame, i64, i64, i64, i64, i64, i64, ptr, ptr, i32, %struct.llist_node, ptr, %struct.llist_node }
%struct._ts = type { ptr, ptr, ptr, i64, %struct.anon.0, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i64, i64, ptr, i64, i32, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, %struct._err_stackitem, ptr, ptr, i64, ptr, ptr, %struct._PyRemoteDebuggerSupport }
%struct.anon.0 = type { i32 }
%struct._err_stackitem = type { ptr, ptr }
%struct._PyRemoteDebuggerSupport = type { i32, [512 x i8] }
%struct._PyInterpreterFrame = type { %union._PyStackRef, ptr, %union._PyStackRef, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8, i8, [1 x %union._PyStackRef] }
%union._PyStackRef = type { i64 }
%struct.PyStatus = type { i32, ptr, ptr, i32 }

@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [36 x i8] c"an instance of Context was expected\00", align 1
@PyExc_RuntimeError = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"no more context watcher IDs available\00", align 1
@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid context watcher ID %d\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"No context watcher set for ID %d\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"cannot enter context: %R is already entered\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"cannot exit context: %R has not been entered\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"cannot exit context: thread state references a different context object\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"an instance of ContextVar was expected\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"an instance of Token was expected\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"%R has already been used once\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"%R was created by a different ContextVar\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"%R was created in a different Context\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"_contextvars.Context\00", align 1
@PyContext_as_sequence = internal global %struct.PySequenceMethods { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @context_tp_contains, ptr null, ptr null }, align 8
@PyContext_as_mapping = internal global %struct.PyMappingMethods { ptr @context_tp_len, ptr @context_tp_subscript, ptr null }, align 8
@PyContext_Type = dso_local global { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, i8, i8, i16, [4 x i8] } { %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyType_Type }, i64 0 }, ptr @.str.12, i64 48, i64 0, ptr @context_tp_dealloc, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @PyContext_as_sequence, ptr @PyContext_as_mapping, ptr @PyObject_HashNotImplemented, ptr null, ptr null, ptr @PyObject_GenericGetAttr, ptr null, ptr null, i64 16384, ptr null, ptr @context_tp_traverse, ptr @context_tp_clear, ptr @context_tp_richcompare, i64 32, ptr @context_tp_iter, ptr null, ptr @PyContext_methods, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr @context_tp_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }, align 8
@.str.14 = private unnamed_addr constant [24 x i8] c"_contextvars.ContextVar\00", align 1
@PyContextVar_Type = dso_local global { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, i8, i8, i16, [4 x i8] } { %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyType_Type }, i64 0 }, ptr @.str.14, i64 64, i64 0, ptr @contextvar_tp_dealloc, i64 0, ptr null, ptr null, ptr null, ptr @contextvar_tp_repr, ptr null, ptr null, ptr null, ptr @contextvar_tp_hash, ptr null, ptr null, ptr @PyObject_GenericGetAttr, ptr null, ptr null, i64 16384, ptr null, ptr @contextvar_tp_traverse, ptr @contextvar_tp_clear, ptr null, i64 0, ptr null, ptr null, ptr @PyContextVar_methods, ptr @PyContextVar_members, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr @contextvar_tp_new, ptr @PyObject_GC_Del, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"_contextvars.Token\00", align 1
@PyContextTokenType_getsetlist = internal global [3 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.55, ptr @token_get_var, ptr null, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.56, ptr @token_get_old_value, ptr null, ptr null, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyContextToken_Type = dso_local global { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, i8, i8, i16, [4 x i8] } { %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyType_Type }, i64 0 }, ptr @.str.16, i64 48, i64 0, ptr @token_tp_dealloc, i64 0, ptr null, ptr null, ptr null, ptr @token_tp_repr, ptr null, ptr null, ptr null, ptr @PyObject_HashNotImplemented, ptr null, ptr null, ptr @PyObject_GenericGetAttr, ptr null, ptr null, i64 16384, ptr null, ptr @token_tp_traverse, ptr @token_tp_clear, ptr null, i64 0, ptr null, ptr null, ptr @PyContextTokenType_methods, ptr null, ptr @PyContextTokenType_getsetlist, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr @token_tp_new, ptr @PyObject_GC_Del, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"Token.MISSING\00", align 1
@_PyContextTokenMissing_Type = hidden local_unnamed_addr global { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, i8, i8, i16, [4 x i8] } { %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyType_Type }, i64 0 }, ptr @.str.18, i64 16, i64 0, ptr @context_token_missing_tp_dealloc, i64 0, ptr null, ptr null, ptr null, ptr @context_token_missing_tp_repr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @PyObject_GenericGetAttr, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }, align 8
@.str.19 = private unnamed_addr constant [8 x i8] c"MISSING\00", align 1
@__func__._PyContext_Init = private unnamed_addr constant [16 x i8] c"_PyContext_Init\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"can't init context types\00", align 1
@_Py_tss_interp = external thread_local local_unnamed_addr global ptr, align 8
@_Py_NoneStruct = external global %struct._object, align 8
@.str.21 = private unnamed_addr constant [48 x i8] c"Exception ignored in %s watcher callback for %R\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"Py_CONTEXT_SWITCHED\00", align 1
@_Py_tss_tstate = external thread_local local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [38 x i8] c"a ContextVar key was expected, got %R\00", align 1
@PyExc_KeyError = external local_unnamed_addr global ptr, align 8
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.25 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@_contextvars_Context_get__doc__ = internal constant [194 x i8] c"get($self, key, default=None, /)\0A--\0A\0AReturn the value for `key` if `key` has the value in the context object.\0A\0AIf `key` does not exist, return `default`. If `default` is not given,\0Areturn None.\00", align 16
@.str.26 = private unnamed_addr constant [6 x i8] c"items\00", align 1
@_contextvars_Context_items__doc__ = internal constant [146 x i8] c"items($self, /)\0A--\0A\0AReturn all variables and their values in the context object.\0A\0AThe result is returned as a list of 2-tuples (variable, value).\00", align 16
@.str.27 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@_contextvars_Context_keys__doc__ = internal constant [73 x i8] c"keys($self, /)\0A--\0A\0AReturn a list of all variables in the context object.\00", align 16
@.str.28 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@_contextvars_Context_values__doc__ = internal constant [83 x i8] c"values($self, /)\0A--\0A\0AReturn a list of all variables' values in the context object.\00", align 16
@.str.29 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@_contextvars_Context_copy__doc__ = internal constant [64 x i8] c"copy($self, /)\0A--\0A\0AReturn a shallow copy of the context object.\00", align 16
@.str.30 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@PyContext_methods = internal global [7 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.25, ptr @_contextvars_Context_get, i32 128, [4 x i8] zeroinitializer, ptr @_contextvars_Context_get__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.26, ptr @_contextvars_Context_items, i32 4, [4 x i8] zeroinitializer, ptr @_contextvars_Context_items__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.27, ptr @_contextvars_Context_keys, i32 4, [4 x i8] zeroinitializer, ptr @_contextvars_Context_keys__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.28, ptr @_contextvars_Context_values, i32 4, [4 x i8] zeroinitializer, ptr @_contextvars_Context_values__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.29, ptr @_contextvars_Context_copy, i32 4, [4 x i8] zeroinitializer, ptr @_contextvars_Context_copy__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.30, ptr @context_run, i32 130, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.32 = private unnamed_addr constant [45 x i8] c"run() missing 1 required positional argument\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"Context() does not accept any arguments\00", align 1
@PyExc_LookupError = external local_unnamed_addr global ptr, align 8
@.str.34 = private unnamed_addr constant [36 x i8] c"context variable name must be a str\00", align 1
@PyTuple_Type = external global %struct._typeobject, align 8
@.str.35 = private unnamed_addr constant [18 x i8] c"<ContextVar name=\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c" default=\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c" at %p>\00", align 1
@_contextvars_ContextVar_get__doc__ = internal constant [377 x i8] c"get($self, default=<unrepresentable>, /)\0A--\0A\0AReturn a value for the context variable for the current context.\0A\0AIf there is no value for the variable in the current context, the method will:\0A * return the value of the default argument of the method, if provided; or\0A * return the default value for the context variable, if it was created\0A   with one; or\0A * raise a LookupError.\00", align 16
@.str.38 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@_contextvars_ContextVar_set__doc__ = internal constant [294 x i8] c"set($self, value, /)\0A--\0A\0ACall to set a new value for the context variable in the current context.\0A\0AThe required value argument is the new value for the context variable.\0A\0AReturns a Token object that can be used to restore the variable to its previous\0Avalue via the `ContextVar.reset()` method.\00", align 16
@.str.39 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@_contextvars_ContextVar_reset__doc__ = internal constant [161 x i8] c"reset($self, token, /)\0A--\0A\0AReset the context variable.\0A\0AThe variable is reset to the value it had before the `ContextVar.set()` that\0Acreated the token was used.\00", align 16
@.str.40 = private unnamed_addr constant [18 x i8] c"__class_getitem__\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"See PEP 585\00", align 1
@PyContextVar_methods = internal global [5 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.25, ptr @_contextvars_ContextVar_get, i32 128, [4 x i8] zeroinitializer, ptr @_contextvars_ContextVar_get__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.38, ptr @_contextvars_ContextVar_set, i32 8, [4 x i8] zeroinitializer, ptr @_contextvars_ContextVar_set__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.39, ptr @_contextvars_ContextVar_reset, i32 8, [4 x i8] zeroinitializer, ptr @_contextvars_ContextVar_reset__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.40, ptr @Py_GenericAlias, i32 24, [4 x i8] zeroinitializer, ptr @.str.41 }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.43 = private unnamed_addr constant [38 x i8] c"expected an instance of Token, got %R\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@PyContextVar_members = internal global [2 x { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.44, i32 6, [4 x i8] zeroinitializer, i64 16, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } zeroinitializer], align 16
@contextvar_tp_new.kwlist = internal global [3 x ptr] [ptr @.str.46, ptr @.str.47, ptr null], align 16
@.str.46 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"O|$O:ContextVar\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"<Token\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c" used\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c" var=\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"__enter__\00", align 1
@token_enter__doc__ = internal constant [58 x i8] c"__enter__($self, /)\0A--\0A\0AEnter into Token context manager.\00", align 16
@.str.53 = private unnamed_addr constant [9 x i8] c"__exit__\00", align 1
@token_exit__doc__ = internal constant [102 x i8] c"__exit__($self, type, val, tb, /)\0A--\0A\0AExit from Token context manager, restore the linked ContextVar.\00", align 16
@PyContextTokenType_methods = internal global [4 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.40, ptr @Py_GenericAlias, i32 24, [4 x i8] zeroinitializer, ptr @.str.41 }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.52, ptr @token_enter, i32 4, [4 x i8] zeroinitializer, ptr @token_enter__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.53, ptr @token_exit, i32 128, [4 x i8] zeroinitializer, ptr @token_exit__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.55 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"old_value\00", align 1
@.str.57 = private unnamed_addr constant [42 x i8] c"Tokens can only be created by ContextVars\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"<Token.MISSING>\00", align 1
@_PyRuntime = external global %struct.pyruntimestate, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyContext_NewHamtForTests() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_PyHamt_New() #10
  ret ptr %i.a
}

declare ptr @_PyHamt_New() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @PyContext_New() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @context_new_empty()
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @context_new_empty() unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 11664    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.b, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  store ptr %i.e, ptr %i.c, align 8, !tbaa !14
  %i.f = getelementptr i8, ptr %i.b, i64 11672    ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !18
  tail call void @_Py_NewReference(ptr noundef nonnull %i.d) #10, !inline_history !19
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @PyContext_Type) #10, !inline_history !19 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %_PyFreeList_Pop.exit.i
  %.0.i = phi ptr [ %i.i, %bb.b ], [ %i.d, %_PyFreeList_Pop.exit.i ] ; 9 uses
  %i.k = getelementptr i8, ptr %.0.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.k, i8 0, i64 28, i1 false)
  %i.l = tail call ptr @_PyHamt_New() #10         ; 2 uses
  %i.m = getelementptr i8, ptr %.0.i, i64 24
  store ptr %i.l, ptr %i.m, align 8, !tbaa !20
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %.0.i, align 8, !tbaa !26  ; 2 uses
  %.not.i = icmp slt i32 %i.o, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %.0.i, align 8, !tbaa !26
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #10
  br label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %.0.i, i64 -16     ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !11   ; 7 uses
  %i.t = getelementptr i8, ptr %i.s, i64 7408
  %i.u = getelementptr i8, ptr %i.s, i64 7416     ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !27   ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !29
  %i.z = and i64 %i.y, 3
  %i.aa = or i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.w, align 8, !tbaa !29
  %i.ab = getelementptr i8, ptr %.0.i, i64 -8     ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !27
  %i.ad = and i64 %i.ac, 3
  %i.ae = or i64 %i.ad, %i.v
  store i64 %i.ae, ptr %i.ab, align 8, !tbaa !27
  %i.af = getelementptr i8, ptr %i.s, i64 7672
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !30
  %i.ah = xor i32 %i.ag, 1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = ptrtoint ptr %i.t to i64
  %i.ak = or i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.r, align 8, !tbaa !29
  store i64 %i.x, ptr %i.u, align 8, !tbaa !27
  %i.al = getelementptr i8, ptr %i.s, i64 7428    ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !34
  %i.an = add i32 %i.am, 1                        ; 2 uses
  store i32 %i.an, ptr %i.al, align 4, !tbaa !34
  %i.ao = getelementptr i8, ptr %i.s, i64 7656    ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !35
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !35
  %i.ar = getelementptr i8, ptr %i.s, i64 7424
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !36
  %i.at = icmp sgt i32 %i.an, %i.as
  br i1 %i.at, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr i8, ptr %i.s, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.au) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.b, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0 = phi ptr [ null, %bb.f ], [ %.0.i, %bb.h ], [ null, %bb.d ], [ null, %bb.e ], [ %.0.i, %bb.g ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyContext_Copy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !37
  %.not = icmp eq ptr %.val, @PyContext_Type
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = tail call fastcc ptr @context_new_from_vars(ptr noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @context_new_from_vars(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 11664    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.b, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  store ptr %i.e, ptr %i.c, align 8, !tbaa !14
  %i.f = getelementptr i8, ptr %i.b, i64 11672    ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !18
  tail call void @_Py_NewReference(ptr noundef nonnull %i.d) #10, !inline_history !19
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @PyContext_Type) #10, !inline_history !19 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_PyObject_GC_TRACK.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %_PyFreeList_Pop.exit.i
  %.0.i = phi ptr [ %i.i, %bb.b ], [ %i.d, %_PyFreeList_Pop.exit.i ] ; 6 uses
  %i.k = getelementptr i8, ptr %.0.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.k, i8 0, i64 28, i1 false)
  %i.l = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.m = icmp ugt i32 %i.l, -1073741825
  br i1 %i.m, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw i32 %i.l, 1
  store i32 %i.n, ptr %0, align 8, !tbaa !26
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.d
  %i.o = getelementptr i8, ptr %.0.i, i64 24
  store ptr %0, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr i8, ptr %.0.i, i64 -16     ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !11   ; 7 uses
  %i.r = getelementptr i8, ptr %i.q, i64 7408
  %i.s = getelementptr i8, ptr %i.q, i64 7416     ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !27   ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !29
  %i.x = and i64 %i.w, 3
  %i.y = or i64 %i.x, %i.v
  store i64 %i.y, ptr %i.u, align 8, !tbaa !29
  %i.z = getelementptr i8, ptr %.0.i, i64 -8      ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !27
  %i.ab = and i64 %i.aa, 3
  %i.ac = or i64 %i.ab, %i.t
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !27
  %i.ad = getelementptr i8, ptr %i.q, i64 7672
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !30
  %i.af = xor i32 %i.ae, 1
  %i.ag = sext i32 %i.af to i64
  %i.ah = ptrtoint ptr %i.r to i64
  %i.ai = or i64 %i.ag, %i.ah
  store i64 %i.ai, ptr %i.p, align 8, !tbaa !29
  store i64 %i.v, ptr %i.s, align 8, !tbaa !27
  %i.aj = getelementptr i8, ptr %i.q, i64 7428    ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !34
  %i.al = add i32 %i.ak, 1                        ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !34
  %i.am = getelementptr i8, ptr %i.q, i64 7656    ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !35
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !35
  %i.ap = getelementptr i8, ptr %i.q, i64 7424
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !36
  %i.ar = icmp sgt i32 %i.al, %i.aq
  br i1 %i.ar, label %bb.e, label %_PyObject_GC_TRACK.exit

bb.e:                                             ; preds = %_Py_NewRef.exit
  %i.as = getelementptr i8, ptr %i.q, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.as) #10
  br label %_PyObject_GC_TRACK.exit

_PyObject_GC_TRACK.exit:                          ; preds = %bb.b, %bb.e, %_Py_NewRef.exit
  %.0 = phi ptr [ %.0.i, %bb.e ], [ %.0.i, %_Py_NewRef.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @PyContext_CopyCurrent() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr i8, ptr %i.b, i64 224      ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc ptr @context_new_empty(), !inline_history !51 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %context_get.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.f, ptr %i.c, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.07.i.ph = phi ptr [ %i.d, %bb.a ], [ %i.f, %bb.c ]
  %i.h = getelementptr i8, ptr %.07.i.ph, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.j = tail call fastcc ptr @context_new_from_vars(ptr noundef %i.i)
  br label %context_get.exit

context_get.exit:                                 ; preds = %bb.b, %bb.d
  %.0 = phi ptr [ %i.j, %bb.d ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 8) i32 @PyContext_AddWatcher(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 9 uses
  %i.c = getelementptr i8, ptr %i.b, i64 11096    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.01116.lcssa.wide = phi i64 [ 0, %bb.a ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ] ; 2 uses
  %i.e = trunc nuw nsw i64 %.01116.lcssa.wide to i32 ; 2 uses
  %i.f = getelementptr [8 x i8], ptr %i.c, i64 %.01116.lcssa.wide
  store ptr %0, ptr %i.f, align 8, !tbaa !17
  %i.g = shl nuw nsw i32 1, %i.e
  %i.h = getelementptr i8, ptr %i.b, i64 11161    ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !52
  %i.j = trunc nuw i32 %i.g to i8
  %i.k = or i8 %i.i, %i.j
  store i8 %i.k, ptr %i.h, align 1, !tbaa !52
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.b, i64 11104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %.not.1 = icmp eq ptr %i.m, null
  br i1 %.not.1, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.b, i64 11112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17
  %.not.2 = icmp eq ptr %i.o, null
  br i1 %.not.2, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.b, i64 11120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17
  %.not.3 = icmp eq ptr %i.q, null
  br i1 %.not.3, label %bb.b, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.b, i64 11128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17
  %.not.4 = icmp eq ptr %i.s, null
  br i1 %.not.4, label %bb.b, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.b, i64 11136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17
  %.not.5 = icmp eq ptr %i.u, null
  br i1 %.not.5, label %bb.b, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %i.b, i64 11144
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17
  %.not.6 = icmp eq ptr %i.w, null
  br i1 %.not.6, label %bb.b, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %i.b, i64 11152
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !17
  %.not.7 = icmp eq ptr %i.y, null
  br i1 %.not.7, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.i
  %i.z = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.1) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %.critedge
  %.1 = phi i32 [ -1, %.critedge ], [ %i.e, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyContext_ClearWatcher(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %or.cond = icmp ugt i32 %0, 7
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !38
  %i.d = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.c, ptr noundef nonnull @.str.2, i32 noundef %0) #10 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 11096
  %i.f = zext nneg i32 %0 to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !38
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.3, i32 noundef %0) #10 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %i.g, align 8, !tbaa !17
  %i.k = shl nuw nsw i32 1, %0
  %i.l = getelementptr i8, ptr %i.b, i64 11161    ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !52
  %i.n = trunc nuw i32 %i.k to i8
  %i.o = xor i8 %i.n, -1
  %i.p = and i8 %i.m, %i.o
  store i8 %i.p, ptr %i.l, align 1, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.e ], [ -1, %bb.d ]
  ret i32 %.0
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyContext_Enter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !37
  %.not = icmp eq ptr %.val, @PyContext_Type
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str) #10
  br label %context_switched.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !123
  store i32 1, ptr %i.c, align 8, !tbaa !123
  %.not12 = icmp eq i32 %i.d, 0
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !38
  %i.f = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.e, ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #10 ; 0 uses
  br label %context_switched.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 224        ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = getelementptr i8, ptr %1, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !124
  %i.j = load i32, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.k = icmp ugt i32 %i.j, -1073741825
  br i1 %i.k, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw i32 %i.j, 1
  store i32 %i.l, ptr %1, align 8, !tbaa !26
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.e, %bb.f
  store ptr %1, ptr %i.g, align 8, !tbaa !41
  %i.m = getelementptr i8, ptr %0, i64 232        ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !125
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !125
  %i.p = getelementptr i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.p, align 8, !tbaa !126 ; 2 uses
  %i.q = getelementptr i8, ptr %.val.i, i64 11161
  %i.r = load i8, ptr %i.q, align 1, !tbaa !52    ; 2 uses
  %.not1.i.i = icmp eq i8 %i.r, 0
  br i1 %.not1.i.i, label %context_switched.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_Py_NewRef.exit
  %i.s = getelementptr i8, ptr %.val.i, i64 11096
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 2 uses
  %.0132.i.i = phi i8 [ %i.r, %.lr.ph.i.i ], [ %i.x, %bb.j ] ; 2 uses
  %.not14.i.i = trunc i8 %.0132.i.i to i1
  br i1 %.not14.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv.i.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.v = tail call i32 %i.u(i32 noundef 1, ptr noundef nonnull %1) #10, !inline_history !127
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %1) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.x = lshr i8 %.0132.i.i, 1                    ; 2 uses
  %.not.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i, label %context_switched.exit, label %bb.g, !llvm.loop !128

context_switched.exit:                            ; preds = %bb.j, %_Py_NewRef.exit, %bb.d, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ 0, %_Py_NewRef.exit ], [ 0, %bb.j ]
  ret i32 %.1
}

declare ptr @_PyErr_Format(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyContext_Enter(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = tail call i32 @_PyContext_Enter(ptr noundef %i.b, ptr noundef %0)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyContext_Exit(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !37
  %.not = icmp eq ptr %.val, @PyContext_Type
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str) #10
  br label %context_switched.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !123
  %.not17 = icmp eq i32 %i.d, 0
  br i1 %.not17, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !38
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.5, ptr noundef nonnull %1) #10 ; 0 uses
  br label %context_switched.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 224        ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 4 uses
  %.not18 = icmp eq ptr %i.h, %1
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.6) #10
  br label %context_switched.exit

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !124
  store ptr %i.k, ptr %i.g, align 8, !tbaa !38
  %i.l = load i32, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp slt i32 %i.l, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.h, align 8, !tbaa !26
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.h, %bb.i
  store ptr null, ptr %i.j, align 8, !tbaa !124
  store i32 0, ptr %i.c, align 8, !tbaa !123
  %i.o = getelementptr i8, ptr %0, i64 232        ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !125
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !125
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.s, align 8, !tbaa !126 ; 2 uses
  %i.t = icmp eq ptr %i.r, null
  %spec.store.select.i.i = select i1 %i.t, ptr @_Py_NoneStruct, ptr %i.r ; 2 uses
  %i.u = getelementptr i8, ptr %.val.i, i64 11161
  %i.v = load i8, ptr %i.u, align 1, !tbaa !52    ; 2 uses
  %.not1.i.i = icmp eq i8 %i.v, 0
  br i1 %.not1.i.i, label %context_switched.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %Py_DECREF.exit
  %i.w = getelementptr i8, ptr %.val.i, i64 11096
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.m ] ; 2 uses
  %.0132.i.i = phi i8 [ %i.v, %.lr.ph.i.i ], [ %i.ab, %bb.m ] ; 2 uses
  %.not14.i.i = trunc i8 %.0132.i.i to i1
  br i1 %.not14.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %indvars.iv.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.z = tail call i32 %i.y(i32 noundef 1, ptr noundef nonnull %spec.store.select.i.i) #10, !inline_history !127
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %spec.store.select.i.i) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.ab = lshr i8 %.0132.i.i, 1                   ; 2 uses
  %.not.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i, label %context_switched.exit, label %bb.j, !llvm.loop !128

context_switched.exit:                            ; preds = %bb.m, %Py_DECREF.exit, %bb.d, %bb.f, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %bb.f ], [ -1, %bb.d ], [ 0, %Py_DECREF.exit ], [ 0, %bb.m ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyContext_Exit(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = tail call i32 @_PyContext_Exit(ptr noundef %i.b, ptr noundef %0)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyContextVar_New(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyUnicode_FromString(ptr noundef %0) #10 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @contextvar_new(ptr noundef nonnull %i.a, ptr noundef %1) ; 3 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp slt i32 %i.d, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.a, align 8, !tbaa !26
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.c, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ]
  ret ptr %.0
}

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @contextvar_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val25 = load i64, ptr %i.b, align 8, !tbaa !130
  %i.c = and i64 %.val25, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.34) #10
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @PyContextVar_Type) #10 ; 15 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_DECREF.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_Py_NewRef.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %0, align 8, !tbaa !26
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.d, %bb.e
  %i.j = getelementptr i8, ptr %i.e, i64 16
  store ptr %0, ptr %i.j, align 8, !tbaa !136
  %.not.i.i = icmp eq ptr %1, null                ; 2 uses
  br i1 %.not.i.i, label %_Py_XNewRef.exit, label %bb.f

bb.f:                                             ; preds = %_Py_NewRef.exit
  %i.k = load i32, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.l = icmp ugt i32 %i.k, -1073741825
  br i1 %i.l, label %_Py_XNewRef.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = add nuw i32 %i.k, 1
  store i32 %i.m, ptr %1, align 8, !tbaa !26
  br label %_Py_XNewRef.exit

_Py_XNewRef.exit:                                 ; preds = %_Py_NewRef.exit, %bb.f, %bb.g
  %i.n = getelementptr i8, ptr %i.e, i64 24
  store ptr %1, ptr %i.n, align 8, !tbaa !138
  %i.o = getelementptr i8, ptr %i.e, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.p = tail call i64 @PyObject_Hash(ptr noundef nonnull %0) #10 ; 2 uses
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %contextvar_generate_hash.exit.thread, label %contextvar_generate_hash.exit

contextvar_generate_hash.exit.thread:             ; preds = %_Py_XNewRef.exit
  %i.r = getelementptr i8, ptr %i.e, i64 56
  store i64 -1, ptr %i.r, align 8, !tbaa !139
  %i.s = load i32, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp slt i32 %i.s, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.h

contextvar_generate_hash.exit:                    ; preds = %_Py_XNewRef.exit
  %i.t = tail call i64 @Py_HashPointer(ptr noundef nonnull %i.e) #10
  %i.u = xor i64 %i.t, %i.p
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 -2)
  %i.w = getelementptr i8, ptr %i.e, i64 56
  store i64 %i.v, ptr %i.w, align 8, !tbaa !139
  %i.x = tail call i32 @PyObject_IS_GC(ptr noundef nonnull %0) #10
  %.not.i26 = icmp eq i32 %i.x, 0
  br i1 %.not.i26, label %_PyObject_GC_MAY_BE_TRACKED.exit.thread.a, label %bb.j

bb.h:                                             ; preds = %contextvar_generate_hash.exit.thread
  %i.y = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.y, ptr %i.e, align 8, !tbaa !26
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #10
  br label %Py_DECREF.exit

bb.j:                                             ; preds = %contextvar_generate_hash.exit
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !37
  %.not5.i = icmp eq ptr %.val.i, @PyTuple_Type
  br i1 %.not5.i, label %_PyObject_GC_MAY_BE_TRACKED.exit, label %_PyObject_GC_MAY_BE_TRACKED.exit.thread37

_PyObject_GC_MAY_BE_TRACKED.exit:                 ; preds = %bb.j
  %i.aa = getelementptr i8, ptr %0, i64 -16
  %.val4.i = load i64, ptr %i.aa, align 8, !tbaa !29
  %.not45.a = icmp eq i64 %.val4.i, 0
  br i1 %.not45.a, label %_PyObject_GC_MAY_BE_TRACKED.exit.thread.a, label %_PyObject_GC_MAY_BE_TRACKED.exit.thread37

_PyObject_GC_MAY_BE_TRACKED.exit.thread.a:        ; preds = %contextvar_generate_hash.exit, %_PyObject_GC_MAY_BE_TRACKED.exit
  br i1 %.not.i.i, label %Py_DECREF.exit, label %bb.k

bb.k:                                             ; preds = %_PyObject_GC_MAY_BE_TRACKED.exit.thread.a
  %i.ab = tail call i32 @PyObject_IS_GC(ptr noundef nonnull %1) #10
  %.not.i28 = icmp eq i32 %i.ab, 0
  br i1 %.not.i28, label %Py_DECREF.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr i8, ptr %1, i64 8
  %.val.i29 = load ptr, ptr %i.ac, align 8, !tbaa !37
  %.not5.i30 = icmp eq ptr %.val.i29, @PyTuple_Type
  br i1 %.not5.i30, label %_PyObject_GC_MAY_BE_TRACKED.exit33, label %_PyObject_GC_MAY_BE_TRACKED.exit.thread37

_PyObject_GC_MAY_BE_TRACKED.exit33:               ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %1, i64 -16
  %.val4.i32 = load i64, ptr %i.ad, align 8, !tbaa !29
  %.not46 = icmp eq i64 %.val4.i32, 0
  br i1 %.not46, label %Py_DECREF.exit, label %_PyObject_GC_MAY_BE_TRACKED.exit.thread37

_PyObject_GC_MAY_BE_TRACKED.exit.thread37:        ; preds = %bb.l, %bb.j, %_PyObject_GC_MAY_BE_TRACKED.exit33, %_PyObject_GC_MAY_BE_TRACKED.exit
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.e) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.k, %bb.i, %bb.h, %contextvar_generate_hash.exit.thread, %bb.c, %_PyObject_GC_MAY_BE_TRACKED.exit.thread37, %_PyObject_GC_MAY_BE_TRACKED.exit33, %_PyObject_GC_MAY_BE_TRACKED.exit.thread.a, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %_PyObject_GC_MAY_BE_TRACKED.exit.thread.a ], [ %i.e, %_PyObject_GC_MAY_BE_TRACKED.exit.thread37 ], [ %i.e, %_PyObject_GC_MAY_BE_TRACKED.exit33 ], [ null, %contextvar_generate_hash.exit.thread ], [ null, %bb.h ], [ null, %bb.i ], [ %i.e, %bb.k ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyContextVar_Get(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !37
  %.not = icmp eq ptr %.val, @PyContextVar_Type
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.7) #10
  br label %Py_XINCREF.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 224
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !140  ; 2 uses
  %.not34 = icmp eq ptr %i.j, null
  br i1 %.not34, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !141
  %i.m = getelementptr i8, ptr %i.e, i64 240
  %i.n = load i64, ptr %i.m, align 8, !tbaa !142
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %0, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !143
  %i.r = getelementptr i8, ptr %i.e, i64 232
  %i.s = load i64, ptr %i.r, align 8, !tbaa !125
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.u = getelementptr i8, ptr %i.g, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20
  store ptr null, ptr %i.a, align 8, !tbaa !38
  %i.w = call i32 @_PyHamt_Find(ptr noundef %i.v, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #10 ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = icmp eq i32 %i.w, 1
  br i1 %i.y, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %i.z = icmp eq ptr %1, null
  br i1 %i.z, label %bb.j, label %.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !138 ; 2 uses
  %.not35 = icmp eq ptr %i.ab, null
  br i1 %.not35, label %.thread37, label %.thread.sink.split

.thread37:                                        ; preds = %bb.j
  store ptr null, ptr %2, align 8, !tbaa !38
  br label %Py_XINCREF.exit

bb.k:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !38  ; 4 uses
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !140
  %i.ad = getelementptr i8, ptr %0, i64 40
  %i.ae = getelementptr i8, ptr %i.e, i64 232
  %i.af = load <2 x i64>, ptr %i.ae, align 8, !tbaa !144
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ag, ptr %i.ad, align 8, !tbaa !144
  store ptr %i.ac, ptr %2, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %Py_XINCREF.exit, label %.thread

.thread.sink.split:                               ; preds = %bb.i, %bb.j, %bb.f
  %.sink = phi ptr [ %i.ab, %bb.j ], [ %i.j, %bb.f ], [ %1, %bb.i ] ; 2 uses
  store ptr %.sink, ptr %2, align 8, !tbaa !38
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.ah = phi ptr [ %i.ac, %bb.k ], [ %.sink, %.thread.sink.split ] ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %i.aj = icmp ugt i32 %i.ai, -1073741825
  br i1 %i.aj, label %Py_XINCREF.exit, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.ak = add nuw i32 %i.ai, 1
  store i32 %i.ak, ptr %i.ah, align 8, !tbaa !26
  br label %Py_XINCREF.exit

bb.m:                                             ; preds = %bb.g
  store ptr null, ptr %2, align 8, !tbaa !38
  br label %Py_XINCREF.exit

Py_XINCREF.exit:                                  ; preds = %bb.l, %.thread, %bb.k, %.thread37, %bb.m, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %bb.m ], [ 0, %.thread37 ], [ 0, %bb.k ], [ 0, %.thread ], [ 0, %bb.l ]
  ret i32 %.1
}

declare i32 @_PyHamt_Find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @PyContextVar_Set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !37
  %.not = icmp eq ptr %.val, @PyContextVar_Type
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.7) #10
  br label %context_get.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate) ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.f = getelementptr i8, ptr %i.e, i64 224      ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc ptr @context_new_empty(), !inline_history !51 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %context_get.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.i, ptr %i.f, align 8, !tbaa !41
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.07.i.ph = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !38
  %i.k = getelementptr i8, ptr %.07.i.ph, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = call i32 @_PyHamt_Find(ptr noundef %i.l, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #10
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %Py_DECREF.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !38   ; 4 uses
  %.not.i14 = icmp eq ptr %i.o, null
  br i1 %.not.i14, label %Py_XINCREF.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load i32, ptr %i.o, align 8, !tbaa !26   ; 2 uses
  %i.q = icmp ugt i32 %i.p, -1073741825
  br i1 %i.q, label %Py_XINCREF.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = add nuw i32 %i.p, 1
  store i32 %i.r, ptr %i.o, align 8, !tbaa !26
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %Py_XINCREF.exit

Py_XINCREF.exit:                                  ; preds = %bb.g, %bb.h, %bb.i
  %i.s = phi ptr [ null, %bb.g ], [ %i.o, %bb.h ], [ %.pr, %bb.i ] ; 4 uses
  %i.t = call ptr @_PyObject_GC_New(ptr noundef nonnull @PyContextToken_Type) #10, !inline_history !145 ; 10 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %token_new.exit, label %bb.j

bb.j:                                             ; preds = %Py_XINCREF.exit
  %i.v = load i32, ptr %.07.i.ph, align 8, !tbaa !26 ; 2 uses
  %i.w = icmp ugt i32 %i.v, -1073741825
  br i1 %i.w, label %_Py_NewRef.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = add nuw i32 %i.v, 1
  store i32 %i.x, ptr %.07.i.ph, align 8, !tbaa !26
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.k, %bb.j
  %i.y = getelementptr i8, ptr %i.t, i64 16
  store ptr %.07.i.ph, ptr %i.y, align 8, !tbaa !146
  %i.z = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.aa = icmp ugt i32 %i.z, -1073741825
  br i1 %i.aa, label %_Py_NewRef.exit12.i, label %bb.l

bb.l:                                             ; preds = %_Py_NewRef.exit.i
  %i.ab = add nuw i32 %i.z, 1
  store i32 %i.ab, ptr %0, align 8, !tbaa !26
  br label %_Py_NewRef.exit12.i

_Py_NewRef.exit12.i:                              ; preds = %bb.l, %_Py_NewRef.exit.i
  %i.ac = getelementptr i8, ptr %i.t, i64 24
  store ptr %0, ptr %i.ac, align 8, !tbaa !149
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_Py_XNewRef.exit.i, label %bb.m

bb.m:                                             ; preds = %_Py_NewRef.exit12.i
  %i.ad = load i32, ptr %i.s, align 8, !tbaa !26  ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, -1073741825
  br i1 %i.ae, label %_Py_XNewRef.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = add nuw i32 %i.ad, 1
  store i32 %i.af, ptr %i.s, align 8, !tbaa !26
  br label %_Py_XNewRef.exit.i

_Py_XNewRef.exit.i:                               ; preds = %bb.n, %bb.m, %_Py_NewRef.exit12.i
  %i.ag = getelementptr i8, ptr %i.t, i64 32
  store ptr %i.s, ptr %i.ag, align 8, !tbaa !150
  %i.ah = getelementptr i8, ptr %i.t, i64 40
  store i32 0, ptr %i.ah, align 8, !tbaa !151
  call void @PyObject_GC_Track(ptr noundef nonnull %i.t) #10, !inline_history !145
  br label %token_new.exit

token_new.exit:                                   ; preds = %Py_XINCREF.exit, %_Py_XNewRef.exit.i
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !38  ; 4 uses
  %.not.i15 = icmp eq ptr %i.ai, null
  br i1 %.not.i15, label %Py_XDECREF.exit, label %bb.o

bb.o:                                             ; preds = %token_new.exit
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp slt i32 %i.aj, 0
  br i1 %.not.i.i, label %Py_XDECREF.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !26
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.q, label %Py_XDECREF.exit

bb.q:                                             ; preds = %bb.p
  call void @_Py_Dealloc(ptr noundef nonnull %i.ai) #10
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %token_new.exit, %bb.o, %bb.p, %bb.q
  %i.am = getelementptr i8, ptr %0, i64 32        ; 2 uses
  store ptr null, ptr %i.am, align 8, !tbaa !140
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !39  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 224    ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !41 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.r, label %bb.t

bb.r:                                             ; preds = %Py_XDECREF.exit
  %i.ar = call fastcc ptr @context_new_empty(), !inline_history !152 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !41
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %Py_XDECREF.exit
  %.07.i.ph.i = phi ptr [ %i.ap, %Py_XDECREF.exit ], [ %i.ar, %bb.s ]
  %i.at = getelementptr i8, ptr %.07.i.ph.i, i64 24 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !20
  %i.av = call ptr @_PyHamt_Assoc(ptr noundef %i.au, ptr noundef nonnull %0, ptr noundef %1) #10, !inline_history !153 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !17 ; 3 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !17
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !26 ; 2 uses
  %.not.i.i16 = icmp slt i32 %i.ay, 0
  br i1 %.not.i.i16, label %contextvar_set.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !26
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.w, label %contextvar_set.exit

bb.w:                                             ; preds = %bb.v
  call void @_Py_Dealloc(ptr noundef nonnull %i.ax) #10, !inline_history !153
  br label %contextvar_set.exit

contextvar_set.exit:                              ; preds = %bb.u, %bb.v, %bb.w
  store ptr %1, ptr %i.am, align 8, !tbaa !140
  %i.bb = getelementptr i8, ptr %0, i64 40
  %i.bc = getelementptr i8, ptr %i.an, i64 232
  %i.bd = load <2 x i64>, ptr %i.bc, align 8, !tbaa !144
  %i.be = shufflevector <2 x i64> %i.bd, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.be, ptr %i.bb, align 8, !tbaa !144
  br label %Py_DECREF.exit

bb.x:                                             ; preds = %bb.t, %bb.r
  %i.bf = load i32, ptr %i.t, align 8, !tbaa !26  ; 2 uses
  %.not.i = icmp slt i32 %i.bf, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.t, align 8, !tbaa !26
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.z, label %Py_DECREF.exit

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %i.t) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.z, %bb.y, %bb.x, %contextvar_set.exit, %bb.f
  %.1 = phi ptr [ null, %bb.f ], [ %i.t, %contextvar_set.exit ], [ null, %bb.x ], [ null, %bb.y ], [ null, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %context_get.exit

context_get.exit:                                 ; preds = %bb.d, %Py_DECREF.exit, %bb.b
  %.3 = phi ptr [ null, %bb.b ], [ %.1, %Py_DECREF.exit ], [ null, %bb.d ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @contextvar_set(ptr noundef initializes((32, 40)) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !140
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 224      ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc ptr @context_new_empty(), !inline_history !51 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %context_get.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr %i.d, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.07.i.ph = phi ptr [ %i.e, %bb.a ], [ %i.g, %bb.c ]
  %i.i = getelementptr i8, ptr %.07.i.ph, i64 24  ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = tail call ptr @_PyHamt_Assoc(ptr noundef %i.j, ptr noundef nonnull %0, ptr noundef %1) #10 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %context_get.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !17   ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !17
  %i.n = load i32, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp slt i32 %i.n, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.m, align 8, !tbaa !26
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.m) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.f, %bb.g
  store ptr %1, ptr %i.a, align 8, !tbaa !140
  %i.q = getelementptr i8, ptr %0, i64 40
  %i.r = getelementptr i8, ptr %i.c, i64 232
  %i.s = load <2 x i64>, ptr %i.r, align 8, !tbaa !144
  %i.t = shufflevector <2 x i64> %i.s, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.t, ptr %i.q, align 8, !tbaa !144
  br label %context_get.exit

context_get.exit:                                 ; preds = %bb.b, %Py_DECREF.exit, %bb.d
  %.1 = phi i32 [ -1, %bb.d ], [ 0, %Py_DECREF.exit ], [ -1, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyContextVar_Reset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val23 = load ptr, ptr %i.a, align 8, !tbaa !37
  %.not = icmp eq ptr %.val23, @PyContextVar_Type
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.7) #10
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !37
  %.not24 = icmp eq ptr %.val, @PyContextToken_Type
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.8) #10
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !151
  %.not20 = icmp eq i32 %i.f, 0
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !38
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.9, ptr noundef nonnull %1) #10 ; 0 uses
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !149
  %.not21 = icmp eq ptr %0, %i.j
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !38
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.k, ptr noundef nonnull @.str.10, ptr noundef nonnull %1) #10 ; 0 uses
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.o = getelementptr i8, ptr %i.n, i64 224      ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.j, label %context_get.exit

bb.j:                                             ; preds = %bb.i
  %i.r = tail call fastcc ptr @context_new_empty(), !inline_history !51 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %context_get.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.r, ptr %i.o, align 8, !tbaa !41
  br label %context_get.exit

context_get.exit:                                 ; preds = %bb.i, %bb.j, %bb.k
  %.07.i = phi ptr [ null, %bb.j ], [ %i.r, %bb.k ], [ %i.p, %bb.i ]
  %i.t = getelementptr i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !146
  %.not22 = icmp eq ptr %.07.i, %i.u
  br i1 %.not22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %context_get.exit
  %i.v = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !38
  %i.w = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.v, ptr noundef nonnull @.str.11, ptr noundef nonnull %1) #10 ; 0 uses
  br label %bb.p

bb.m:                                             ; preds = %context_get.exit
  store i32 1, ptr %i.e, align 8, !tbaa !151
  %i.x = getelementptr i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !150  ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aa = tail call fastcc i32 @contextvar_del(ptr noundef nonnull %0)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ab = tail call fastcc i32 @contextvar_set(ptr noundef nonnull %0, ptr noundef nonnull %i.y)
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.h, %bb.o, %bb.n, %bb.l, %bb.d, %bb.b
  %.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.l ], [ %i.aa, %bb.n ], [ %i.ab, %bb.o ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @contextvar_del(ptr noundef initializes((32, 40)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  store ptr null, ptr %i.a, align 8, !tbaa !140
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = getelementptr i8, ptr %i.c, i64 224      ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc ptr @context_new_empty(), !inline_history !51 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %context_get.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr %i.d, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.07.i.ph = phi ptr [ %i.e, %bb.a ], [ %i.g, %bb.c ]
  %i.i = getelementptr i8, ptr %.07.i.ph, i64 24  ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.k = tail call ptr @_PyHamt_Without(ptr noundef %i.j, ptr noundef nonnull %0) #10 ; 6 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %context_get.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq ptr %i.j, %i.k
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.k, align 8, !tbaa !26   ; 2 uses
  %.not.i17 = icmp slt i32 %i.n, 0
  br i1 %.not.i17, label %Py_DECREF.exit18, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.k, align 8, !tbaa !26
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %Py_DECREF.exit18

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #10
  br label %Py_DECREF.exit18

Py_DECREF.exit18:                                 ; preds = %bb.f, %bb.g, %bb.h
  %i.q = load ptr, ptr @PyExc_LookupError, align 8, !tbaa !38
  tail call void @PyErr_SetObject(ptr noundef %i.q, ptr noundef nonnull %0) #10
  br label %context_get.exit

bb.i:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !17   ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !17
  %i.s = load i32, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp slt i32 %i.s, 0
  br i1 %.not.i, label %context_get.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.r, align 8, !tbaa !26
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.k, label %context_get.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #10
  br label %context_get.exit

context_get.exit:                                 ; preds = %bb.k, %bb.j, %bb.i, %bb.b, %Py_DECREF.exit18, %bb.d
  %.1 = phi i32 [ -1, %bb.d ], [ -1, %bb.b ], [ -1, %Py_DECREF.exit18 ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal void @context_tp_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -16        ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 -8         ; 3 uses
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !27
  %i.c = and i64 %.val.i, -4                      ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.val12.i = load i64, ptr %i.a, align 8, !tbaa !29
  %i.e = and i64 %.val12.i, -4                    ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.d, align 8, !tbaa !29
  %i.h = and i64 %i.g, 3
  %i.i = or disjoint i64 %i.h, %i.e
  store i64 %i.i, ptr %i.d, align 8, !tbaa !29
  %i.j = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !27
  %i.l = and i64 %i.k, 3
  %i.m = or disjoint i64 %i.l, %i.c
  store i64 %i.m, ptr %i.j, align 8, !tbaa !27
  store i64 0, ptr %i.a, align 8, !tbaa !29
  %i.n = load i64, ptr %i.b, align 8, !tbaa !27
  %i.o = and i64 %i.n, 1
  store i64 %i.o, ptr %i.b, align 8, !tbaa !27
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11   ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 7428     ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !34   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.b, label %_PyObject_GC_UNTRACK.exit

bb.b:                                             ; preds = %bb.a
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !34
  br label %_PyObject_GC_UNTRACK.exit

_PyObject_GC_UNTRACK.exit:                        ; preds = %bb.a, %bb.b
  %i.v = getelementptr i8, ptr %i.q, i64 7656     ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !35
  %i.x = add i64 %i.w, -1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !35
  %i.y = getelementptr i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !154
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_PyObject_GC_UNTRACK.exit
  tail call void @PyObject_ClearWeakRefs(ptr noundef nonnull %0) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_PyObject_GC_UNTRACK.exit
  %i.aa = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !155 ; 4 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %Py_DECREF.exit14.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.aa, align 8, !tbaa !155
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  %.not.i13.i = icmp slt i32 %i.ac, 0
  br i1 %.not.i13.i, label %Py_DECREF.exit14.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !26
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %Py_DECREF.exit14.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ab) #10
  br label %Py_DECREF.exit14.i

Py_DECREF.exit14.i:                               ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.af = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17 ; 4 uses
  %.not12.i = icmp eq ptr %i.ag, null
  br i1 %.not12.i, label %context_tp_clear.exit, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit14.i
  store ptr null, ptr %i.af, align 8, !tbaa !17
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp slt i32 %i.ah, 0
  br i1 %.not.i.i, label %context_tp_clear.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !26
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %context_tp_clear.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #10
  br label %context_tp_clear.exit

context_tp_clear.exit:                            ; preds = %Py_DECREF.exit14.i, %bb.h, %bb.i, %bb.j
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !11  ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 11672  ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !18 ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.am, 255
  br i1 %or.cond.i.i, label %_PyFreeList_Push.exit.i.a, label %bb.k

_PyFreeList_Push.exit.i.a:                        ; preds = %context_tp_clear.exit
  %i.an = getelementptr i8, ptr %i.ak, i64 11664  ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !14
  store ptr %i.ao, ptr %0, align 8, !tbaa !17
  store ptr %0, ptr %i.an, align 8, !tbaa !14
  %i.ap = add nuw nsw i64 %i.am, 1
  store i64 %i.ap, ptr %i.al, align 8, !tbaa !18
  br label %_PyFreeList_Free.exit

bb.k:                                             ; preds = %context_tp_clear.exit
  %i.aq = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.aq, align 8, !tbaa !37
  %i.ar = getelementptr i8, ptr %.val, i64 320
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !156
  tail call void %i.as(ptr noundef nonnull %0) #10, !inline_history !157
  br label %_PyFreeList_Free.exit

_PyFreeList_Free.exit:                            ; preds = %_PyFreeList_Push.exit.i.a, %bb.k
  ret void
}

declare i64 @PyObject_HashNotImplemented(ptr noundef) #1

declare ptr @PyObject_GenericGetAttr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @context_tp_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #10 ; 2 uses
  %.not20 = icmp eq i32 %i.c, 0
  br i1 %.not20, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #10 ; 2 uses
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.3 = phi i32 [ 0, %bb.e ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @context_tp_clear(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit14, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !155
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %.not.i13 = icmp slt i32 %i.c, 0
  br i1 %.not.i13, label %Py_DECREF.exit14, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !26
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit14

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #10
  br label %Py_DECREF.exit14

Py_DECREF.exit14:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 4 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit14
  store ptr null, ptr %i.f, align 8, !tbaa !17
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp slt i32 %i.h, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !26
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit14
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @context_tp_richcompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val17 = load ptr, ptr %i.a, align 8, !tbaa !37
  %.not = icmp eq ptr %.val17, @PyContext_Type
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.c = icmp ne ptr %.val, @PyContext_Type
  %i.d = add i32 %2, -4
  %or.cond = icmp ult i32 %i.d, -2
  %or.cond16 = or i1 %or.cond, %i.c
  br i1 %or.cond16, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = tail call i32 @_PyHamt_Eq(ptr noundef %i.f, ptr noundef %i.h) #10 ; 3 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %2, 3
  %.not14 = icmp eq i32 %i.i, 0
  %i.l = zext i1 %.not14 to i32
  %.0 = select i1 %i.k, i32 %i.l, i32 %i.i
  %.not15 = icmp eq i32 %.0, 0
  %spec.select = select i1 %.not15, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.b
  %.1 = phi ptr [ @_Py_NotImplementedStruct, %bb.a ], [ @_Py_NotImplementedStruct, %bb.b ], [ %spec.select, %bb.d ], [ null, %bb.c ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @context_tp_iter(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = tail call ptr @_PyHamt_NewIterKeys(ptr noundef %i.b) #10
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @context_tp_new(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @PyTuple_Size(ptr noundef %1) #10
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not5 = icmp eq ptr %2, null
  br i1 %.not5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @PyDict_Size(ptr noundef nonnull %2) #10
  %.not6 = icmp eq i64 %i.b, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.c = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.33) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.d = tail call fastcc ptr @context_new_empty(), !inline_history !158
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.d, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal void @contextvar_tp_dealloc(ptr noundef %0) #0 {
bb.a:
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #10
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %Py_DECREF.exit17.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !38
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %.not.i16.i = icmp slt i32 %i.c, 0
  br i1 %.not.i16.i, label %Py_DECREF.exit17.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !26
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit17.i

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #10
  br label %Py_DECREF.exit17.i

Py_DECREF.exit17.i:                               ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38   ; 4 uses
  %.not15.i = icmp eq ptr %i.g, null
  br i1 %.not15.i, label %contextvar_tp_clear.exit, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit17.i
  store ptr null, ptr %i.f, align 8, !tbaa !38
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i.i = icmp slt i32 %i.h, 0
  br i1 %.not.i.i, label %contextvar_tp_clear.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !26
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %contextvar_tp_clear.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #10
  br label %contextvar_tp_clear.exit

contextvar_tp_clear.exit:                         ; preds = %Py_DECREF.exit17.i, %bb.e, %bb.f, %bb.g
  %i.k = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.l = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.m = getelementptr i8, ptr %.val, i64 320
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !156
  tail call void %i.n(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @contextvar_tp_repr(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138
  %.not = icmp eq ptr %i.b, null
  %i.c = select i1 %.not, i64 43, i64 53
  %i.d = tail call ptr @PyUnicodeWriter_Create(i64 noundef %i.c) #10 ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @PyUnicodeWriter_WriteASCII(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.35, i64 noundef 17) #10
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136
  %i.j = tail call i32 @PyUnicodeWriter_WriteRepr(ptr noundef nonnull %i.d, ptr noundef %i.i) #10
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !138
  %.not16 = icmp eq ptr %i.l, null
  br i1 %.not16, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @PyUnicodeWriter_WriteASCII(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.36, i64 noundef 9) #10
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.p = tail call i32 @PyUnicodeWriter_WriteRepr(ptr noundef nonnull %i.d, ptr noundef %i.o) #10
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.r = tail call i32 (ptr, ptr, ...) @PyUnicodeWriter_Format(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.37, ptr noundef nonnull %0) #10
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call ptr @PyUnicodeWriter_Finish(ptr noundef nonnull %i.d) #10
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  tail call void @PyUnicodeWriter_Discard(ptr noundef nonnull %i.d) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h
  %.0 = phi ptr [ %i.t, %bb.h ], [ null, %bb.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @contextvar_tp_hash(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !139
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define internal i32 @contextvar_tp_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #10 ; 2 uses
  %.not20 = icmp eq i32 %i.c, 0
  br i1 %.not20, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138  ; 2 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #10 ; 2 uses
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.3 = phi i32 [ 0, %bb.e ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @contextvar_tp_clear(ptr nofree noundef captures(none) initializes((32, 56)) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit17, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !38
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %.not.i16 = icmp slt i32 %i.c, 0
  br i1 %.not.i16, label %Py_DECREF.exit17, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !26
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit17

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #10
  br label %Py_DECREF.exit17

Py_DECREF.exit17:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38   ; 4 uses
  %.not15 = icmp eq ptr %i.g, null
  br i1 %.not15, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit17
  store ptr null, ptr %i.f, align 8, !tbaa !38
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp slt i32 %i.h, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !26
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit17
  %i.k = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @contextvar_tp_new(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !tbaa !38
  %i.c = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.48, ptr noundef nonnull @contextvar_tp_new.kwlist, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.f = call fastcc ptr @contextvar_new(ptr noundef %i.d, ptr noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.0
}

declare void @PyObject_GC_Del(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @token_tp_dealloc(ptr noundef %0) #0 {
bb.a:
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #10
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %Py_DECREF.exit23.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !155
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %.not.i22.i = icmp slt i32 %i.c, 0
  br i1 %.not.i22.i, label %Py_DECREF.exit23.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !26
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit23.i

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #10
  br label %Py_DECREF.exit23.i

Py_DECREF.exit23.i:                               ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !159  ; 4 uses
  %.not18.i = icmp eq ptr %i.g, null
  br i1 %.not18.i, label %Py_DECREF.exit21.i, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit23.i
  store ptr null, ptr %i.f, align 8, !tbaa !159
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i20.i = icmp slt i32 %i.h, 0
  br i1 %.not.i20.i, label %Py_DECREF.exit21.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !26
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit21.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #10
  br label %Py_DECREF.exit21.i

Py_DECREF.exit21.i:                               ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit23.i
  %i.k = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38   ; 4 uses
  %.not19.i = icmp eq ptr %i.l, null
  br i1 %.not19.i, label %token_tp_clear.exit, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit21.i
  store ptr null, ptr %i.k, align 8, !tbaa !38
  %i.m = load i32, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %.not.i.i = icmp slt i32 %i.m, 0
  br i1 %.not.i.i, label %token_tp_clear.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !26
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %token_tp_clear.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #10
  br label %token_tp_clear.exit

token_tp_clear.exit:                              ; preds = %Py_DECREF.exit21.i, %bb.h, %bb.i, %bb.j
  %i.p = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.q = getelementptr i8, ptr %.val, i64 320
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !156
  tail call void %i.r(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @token_tp_repr(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyUnicodeWriter_Create(i64 noundef 0) #10 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @PyUnicodeWriter_WriteASCII(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.49, i64 noundef 6) #10
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !151
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @PyUnicodeWriter_WriteASCII(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.50, i64 noundef 5) #10
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = tail call i32 @PyUnicodeWriter_WriteASCII(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.51, i64 noundef 5) #10
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !149
  %i.m = tail call i32 @PyUnicodeWriter_WriteRepr(ptr noundef nonnull %i.a, ptr noundef %i.l) #10
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call i32 (ptr, ptr, ...) @PyUnicodeWriter_Format(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.37, ptr noundef nonnull %0) #10
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @PyUnicodeWriter_Finish(ptr noundef nonnull %i.a) #10
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  tail call void @PyUnicodeWriter_Discard(ptr noundef nonnull %i.a) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h
  %.0 = phi ptr [ %i.q, %bb.h ], [ null, %bb.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @token_tp_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #10 ; 2 uses
  %.not31 = icmp eq i32 %i.c, 0
  br i1 %.not31, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149  ; 2 uses
  %.not32 = icmp eq ptr %i.e, null
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #10 ; 2 uses
  %.not33 = icmp eq i32 %i.f, 0
  br i1 %.not33, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !150  ; 2 uses
  %.not34 = icmp eq ptr %i.h, null
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 %1(ptr noundef nonnull %i.h, ptr noundef %2) #10 ; 2 uses
  %.not35 = icmp eq i32 %i.i, 0
  br i1 %.not35, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.5 = phi i32 [ 0, %bb.g ], [ %i.i, %bb.f ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @token_tp_clear(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit23, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !155
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %.not.i22 = icmp slt i32 %i.c, 0
  br i1 %.not.i22, label %Py_DECREF.exit23, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !26
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit23

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #10
  br label %Py_DECREF.exit23

Py_DECREF.exit23:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !159  ; 4 uses
  %.not18 = icmp eq ptr %i.g, null
  br i1 %.not18, label %Py_DECREF.exit21, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit23
  store ptr null, ptr %i.f, align 8, !tbaa !159
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i20 = icmp slt i32 %i.h, 0
  br i1 %.not.i20, label %Py_DECREF.exit21, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !26
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit21

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #10
  br label %Py_DECREF.exit21

Py_DECREF.exit21:                                 ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit23
  %i.k = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38   ; 4 uses
  %.not19 = icmp eq ptr %i.l, null
  br i1 %.not19, label %Py_DECREF.exit, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit21
  store ptr null, ptr %i.k, align 8, !tbaa !38
  %i.m = load i32, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp slt i32 %i.m, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !26
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit21
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @token_tp_new(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.a, ptr noundef nonnull @.str.57) #10
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @context_token_missing_tp_dealloc(ptr nofree readnone captures(none) %0) #4 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @context_token_missing_tp_repr(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.58) #10
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden void @_PyContext_Init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PyStatus) align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_PyType_GetDict(ptr noundef nonnull @PyContextToken_Type) #10
  %i.b = tail call i32 @PyDict_SetItemString(ptr noundef %i.a, ptr noundef nonnull @.str.19, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119536)) #10
  %.not = icmp eq i32 %i.b, 0
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119536), align 8, !tbaa !26 ; 3 uses
  %.not.i = icmp slt i32 %i.c, 0                  ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %Py_DECREF.exit4, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119536), align 8, !tbaa !26
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit4

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119536)) #10
  br label %Py_DECREF.exit4

Py_DECREF.exit4:                                  ; preds = %bb.b, %bb.c, %bb.d
  store i32 1, ptr %0, align 8, !tbaa !160
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @__func__._PyContext_Init, ptr %i.g, align 8, !tbaa !162
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.20, ptr %i.h, align 8, !tbaa !163
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.i, align 8, !tbaa !164
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.j, align 4
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.k, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119536), align 8, !tbaa !26
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119536)) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.f, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit, %Py_DECREF.exit4
  ret void
}

declare i32 @PyDict_SetItemString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyType_GetDict(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

declare void @PyErr_FormatUnraisable(ptr noundef, ...) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

declare ptr @_PyObject_GC_New(ptr noundef) local_unnamed_addr #1

declare void @_Py_NewReference(ptr noundef) local_unnamed_addr #1

declare void @_Py_TriggerGC(ptr noundef) local_unnamed_addr #1

declare void @PyObject_ClearWeakRefs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @context_tp_contains(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !37
  %.not.i = icmp eq ptr %.val.i, @PyContextVar_Type
  br i1 %.not.i, label %bb.b, label %context_check_key_type.exit

context_check_key_type.exit:                      ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  %i.d = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.c, ptr noundef nonnull @.str.24, ptr noundef nonnull %1) #10, !inline_history !165 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !38
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = call i32 @_PyHamt_Find(ptr noundef %i.f, ptr noundef nonnull %1, ptr noundef nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %context_check_key_type.exit, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ -1, %context_check_key_type.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @context_tp_len(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = tail call i64 @_PyHamt_Len(ptr noundef %i.b) #10
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @context_tp_subscript(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !37
  %.not.i = icmp eq ptr %.val.i, @PyContextVar_Type
  br i1 %.not.i, label %bb.b, label %context_check_key_type.exit

context_check_key_type.exit:                      ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  %i.d = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.c, ptr noundef nonnull @.str.24, ptr noundef nonnull %1) #10, !inline_history !165 ; 0 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !38
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = call i32 @_PyHamt_Find(ptr noundef %i.f, ptr noundef nonnull %1, ptr noundef nonnull %i.a) #10 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.g, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @PyExc_KeyError, align 8, !tbaa !38
  call void @PyErr_SetObject(ptr noundef %i.j, ptr noundef nonnull %1) #10
  br label %_Py_NewRef.exit

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !38   ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !26   ; 2 uses
  %i.m = icmp ugt i32 %i.l, -1073741825
  br i1 %i.m, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = add nuw i32 %i.l, 1
  store i32 %i.n, ptr %i.k, align 8, !tbaa !26
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.f, %bb.e, %bb.b, %bb.d
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.k, %bb.e ], [ %i.k, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %context_check_key_type.exit, %_Py_NewRef.exit
  %.1 = phi ptr [ %.0, %_Py_NewRef.exit ], [ null, %context_check_key_type.exit ]
  ret ptr %.1
}

declare i64 @_PyHamt_Len(ptr noundef) local_unnamed_addr #1

declare void @PyErr_SetObject(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyHamt_Eq(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyHamt_NewIterKeys(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @_contextvars_Context_get(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = add i64 %2, -1
  %or.cond = icmp ult i64 %i.b, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.25, i64 noundef %2, i64 noundef 1, i64 noundef 2) #10
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_contextvars_Context_get_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !38     ; 3 uses
  %i.e = icmp slt i64 %2, 2
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.c ], [ %i.g, %bb.d ] ; 3 uses
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %.val.i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  %.not.i.i = icmp eq ptr %.val.i.i, @PyContextVar_Type
  br i1 %.not.i.i, label %bb.f, label %context_check_key_type.exit.i

context_check_key_type.exit.i:                    ; preds = %bb.e
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.d) #10, !inline_history !166 ; 0 uses
  br label %_contextvars_Context_get_impl.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !38
  %i.k = getelementptr i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = call i32 @_PyHamt_Find(ptr noundef %i.l, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #10, !inline_history !167 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %_Py_NewRef.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = icmp eq i32 %i.m, 0
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = load i32, ptr %.0, align 8, !tbaa !26    ; 2 uses
  %i.q = icmp ugt i32 %i.p, -1073741825
  br i1 %i.q, label %_Py_NewRef.exit.i, label %_Py_NewRef.exit.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %i.t = icmp ugt i32 %i.s, -1073741825
  br i1 %i.t, label %_Py_NewRef.exit.i, label %_Py_NewRef.exit.sink.split.i

_Py_NewRef.exit.sink.split.i:                     ; preds = %bb.i, %bb.h
  %.sink14.i = phi i32 [ %i.p, %bb.h ], [ %i.s, %bb.i ]
  %.sink13.i = phi ptr [ %.0, %bb.h ], [ %i.r, %bb.i ] ; 2 uses
  %i.u = add nuw i32 %.sink14.i, 1
  store i32 %i.u, ptr %.sink13.i, align 8, !tbaa !26
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %_Py_NewRef.exit.sink.split.i, %bb.i, %bb.h, %bb.f
  %.0.i = phi ptr [ %i.r, %bb.i ], [ null, %bb.f ], [ %.0, %bb.h ], [ %.sink13.i, %_Py_NewRef.exit.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_contextvars_Context_get_impl.exit

_contextvars_Context_get_impl.exit:               ; preds = %_Py_NewRef.exit.i, %context_check_key_type.exit.i, %bb.b
  %.010 = phi ptr [ null, %bb.b ], [ %.0.i, %_Py_NewRef.exit.i ], [ null, %context_check_key_type.exit.i ]
  ret ptr %.010
}

; Function Attrs: nounwind uwtable
define internal ptr @_contextvars_Context_items(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.b = tail call ptr @_PyHamt_NewIterItems(ptr noundef %.val) #10
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @_contextvars_Context_keys(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.b = tail call ptr @_PyHamt_NewIterKeys(ptr noundef %.val) #10
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @_contextvars_Context_values(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.b = tail call ptr @_PyHamt_NewIterValues(ptr noundef %.val) #10
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @_contextvars_Context_copy(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.b = tail call fastcc ptr @context_new_from_vars(ptr noundef %.val), !inline_history !168
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @context_run(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 5 uses
  %i.c = icmp slt i64 %2, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  tail call void @_PyErr_SetString(ptr noundef %i.b, ptr noundef %i.d, ptr noundef nonnull @.str.32) #10
  br label %Py_XDECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @_PyContext_Enter(ptr noundef %i.b, ptr noundef %0)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %1, align 8, !tbaa !38     ; 5 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = add nsw i64 %2, -1                       ; 2 uses
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !37 ; 2 uses
  %i.j = getelementptr i8, ptr %.val.i.i, i64 168
  %.val6.i.i = load i64, ptr %i.j, align 8, !tbaa !130
  %i.k = and i64 %.val6.i.i, 2048
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i, label %_PyVectorcall_FunctionInline.exit.i

_PyVectorcall_FunctionInline.exit.i:              ; preds = %bb.d
  %i.l = getelementptr i8, ptr %.val.i.i, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !169
  %i.n = getelementptr i8, ptr %i.f, i64 %i.m
  %.0.copyload.i.i = load ptr, ptr %i.n, align 1  ; 2 uses
  %i.o = icmp eq ptr %.0.copyload.i.i, null
  br i1 %i.o, label %_PyVectorcall_FunctionInline.exit.thread.i, label %bb.e

_PyVectorcall_FunctionInline.exit.thread.i:       ; preds = %_PyVectorcall_FunctionInline.exit.i, %bb.d
  %i.p = tail call ptr @_PyObject_MakeTpCall(ptr noundef %i.b, ptr noundef nonnull %i.f, ptr noundef %i.g, i64 noundef range(i64 0, 9223372036854775807) %i.h, ptr noundef %3) #10
  br label %_PyObject_VectorcallTstate.exit

bb.e:                                             ; preds = %_PyVectorcall_FunctionInline.exit.i
  %i.q = tail call ptr %.0.copyload.i.i(ptr noundef nonnull %i.f, ptr noundef %i.g, i64 noundef range(i64 0, 9223372036854775807) %i.h, ptr noundef %3) #10, !inline_history !170
  %i.r = tail call ptr @_Py_CheckFunctionResult(ptr noundef %i.b, ptr noundef nonnull %i.f, ptr noundef %i.q, ptr noundef null) #10
  br label %_PyObject_VectorcallTstate.exit

_PyObject_VectorcallTstate.exit:                  ; preds = %_PyVectorcall_FunctionInline.exit.thread.i, %bb.e
  %.0.i = phi ptr [ %i.p, %_PyVectorcall_FunctionInline.exit.thread.i ], [ %i.r, %bb.e ] ; 5 uses
  %i.s = tail call i32 @_PyContext_Exit(ptr noundef %i.b, ptr noundef %0)
  %.not14 = icmp eq i32 %i.s, 0
  br i1 %.not14, label %Py_XDECREF.exit, label %bb.f

bb.f:                                             ; preds = %_PyObject_VectorcallTstate.exit
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %Py_XDECREF.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %.0.i, align 8, !tbaa !26  ; 2 uses
  %.not.i.i15 = icmp slt i32 %i.t, 0
  br i1 %.not.i.i15, label %Py_XDECREF.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %.0.i, align 8, !tbaa !26
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.i, label %Py_XDECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #10
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %_PyObject_VectorcallTstate.exit, %bb.c, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %.0.i, %_PyObject_VectorcallTstate.exit ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.i ]
  ret ptr %.1
}

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @_PyHamt_NewIterItems(ptr noundef) local_unnamed_addr #1

declare ptr @_PyHamt_NewIterValues(ptr noundef) local_unnamed_addr #1

declare void @_PyErr_SetString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyObject_MakeTpCall(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_Py_CheckFunctionResult(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @PyTuple_Size(ptr noundef) local_unnamed_addr #1

declare i64 @PyDict_Size(ptr noundef) local_unnamed_addr #1

declare ptr @_PyHamt_Assoc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyHamt_Without(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PyObject_GC_Track(ptr noundef) local_unnamed_addr #1

declare i64 @PyObject_Hash(ptr noundef) local_unnamed_addr #1

declare i64 @Py_HashPointer(ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_IS_GC(ptr noundef) local_unnamed_addr #1

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicodeWriter_Create(i64 noundef) local_unnamed_addr #1

declare i32 @PyUnicodeWriter_WriteASCII(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @PyUnicodeWriter_WriteRepr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyUnicodeWriter_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyUnicodeWriter_Finish(ptr noundef) local_unnamed_addr #1

declare void @PyUnicodeWriter_Discard(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @_contextvars_ContextVar_get(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.25, i64 noundef %2, i64 noundef 0, i64 noundef 1) #10
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = icmp slt i64 %2, 1
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %1, align 8, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ null, %bb.c ], [ %i.d, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.e = call i32 @PyContextVar_Get(ptr noundef %0, ptr noundef %.0, ptr noundef nonnull %i.a), !inline_history !171
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %_contextvars_ContextVar_get_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %_contextvars_ContextVar_get_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.i = load ptr, ptr @PyExc_LookupError, align 8, !tbaa !38
  tail call void @PyErr_SetObject(ptr noundef %i.i, ptr noundef %0) #10, !inline_history !171
  br label %_contextvars_ContextVar_get_impl.exit

_contextvars_ContextVar_get_impl.exit:            ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ null, %bb.e ], [ null, %bb.g ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %_contextvars_ContextVar_get_impl.exit
  %.08 = phi ptr [ %.0.i, %_contextvars_ContextVar_get_impl.exit ], [ null, %bb.b ]
  ret ptr %.08
}

; Function Attrs: nounwind uwtable
define internal ptr @_contextvars_ContextVar_set(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @PyContextVar_Set(ptr noundef %0, ptr noundef %1), !inline_history !172
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @_contextvars_ContextVar_reset(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !37
  %.not.i = icmp eq ptr %.val.i, @PyContextToken_Type
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  %i.c = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.b, ptr noundef nonnull @.str.43, ptr noundef nonnull %1) #10, !inline_history !173 ; 0 uses
  br label %_contextvars_ContextVar_reset_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @PyContextVar_Reset(ptr noundef %0, ptr noundef nonnull %1), !inline_history !173
  %.not5.i = icmp eq i32 %i.d, 0
  %_Py_NoneStruct..i = select i1 %.not5.i, ptr @_Py_NoneStruct, ptr null
  br label %_contextvars_ContextVar_reset_impl.exit

_contextvars_ContextVar_reset_impl.exit:          ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %_Py_NoneStruct..i, %bb.c ], [ null, %bb.b ]
  ret ptr %.0.i
}

declare ptr @Py_GenericAlias(ptr noundef, ptr noundef) #1

declare i32 @PyArg_ParseTupleAndKeywords(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @token_enter(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree readnone captures(none) %1) #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.b = icmp ugt i32 %i.a, -1073741825
  br i1 %i.b, label %token_enter_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i32 %i.a, 1
  store i32 %i.c, ptr %0, align 8, !tbaa !26
  br label %token_enter_impl.exit

token_enter_impl.exit:                            ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define internal ptr @token_exit(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.53, i64 noundef %2, i64 noundef 3, i64 noundef 3) #10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.d = tail call i32 @PyContextVar_Reset(ptr noundef %i.c, ptr noundef %0), !inline_history !174
  %i.e = icmp slt i32 %i.d, 0
  %._Py_NoneStruct.i = select i1 %i.e, ptr null, ptr @_Py_NoneStruct
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %._Py_NoneStruct.i, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @token_get_var(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.b, align 8, !tbaa !26
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.a, %bb.b
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal ptr @token_get_old_value(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #8 {
end_hunk_0
