Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_pickle?download=true
inline.NumInlined: 778
inline.NumDeleted: 166
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 38
begin_hunk_0
%struct.anon.826 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.827 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.828 = type { %struct.PyASCIIObject, [11 x i8] }
%struct.anon.829 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.830 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.831 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.832 = type { %struct.PyASCIIObject, [12 x i8] }
%struct.anon.833 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.834 = type { %struct.PyASCIIObject, [8 x i8] }
%struct.anon.835 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.836 = type { %struct.PyASCIIObject, [28 x i8] }
%struct.anon.837 = type { %struct.PyASCIIObject, [8 x i8] }
%struct.anon.838 = type { %struct.PyASCIIObject, [4 x i8] }
%struct.anon.839 = type { %struct.PyASCIIObject, [11 x i8] }
%struct.anon.840 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.841 = type { %struct.PyASCIIObject, [20 x i8] }
%struct.anon.842 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.843 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.844 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.845 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.846 = type { %struct.PyASCIIObject, [8 x i8] }
%struct.anon.847 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.848 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.849 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.850 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.851 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.852 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.853 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.854 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.855 = type { %struct.PyASCIIObject, [8 x i8] }
%struct.anon.856 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.857 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.858 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.859 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.860 = type { %struct.PyASCIIObject, [13 x i8] }
%struct.anon.861 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.862 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.863 = type { %struct.PyASCIIObject, [4 x i8] }
%struct.anon.864 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.865 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.866 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.867 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.868 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.869 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.870 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.871 = type { %struct.PyASCIIObject, [4 x i8] }
%struct.anon.872 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.873 = type { %struct.PyASCIIObject, [12 x i8] }
%struct.anon.874 = type { %struct.PyASCIIObject, [3 x i8] }
%struct.anon.875 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.876 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.877 = type { %struct.PyASCIIObject, [4 x i8] }
%struct.anon.878 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.879 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.880 = type { %struct.PyASCIIObject, [15 x i8] }
%struct.anon.881 = type { %struct.PyASCIIObject, [8 x i8] }
%struct.anon.882 = type { %struct.PyASCIIObject, [4 x i8] }
%struct.anon.883 = type { %struct.PyASCIIObject, [16 x i8] }
%struct.anon.884 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.885 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.886 = type { %struct.PyASCIIObject, [8 x i8] }
%struct.anon.887 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.888 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.889 = type { %struct.PyASCIIObject, [20 x i8] }
%struct.anon.890 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.891 = type { %struct.PyASCIIObject, [12 x i8] }
%struct.anon.892 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.893 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.894 = type { %struct.PyASCIIObject, [8 x i8] }
%struct.anon.895 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.896 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.897 = type { %struct.PyASCIIObject, [4 x i8] }
%struct.anon.898 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.899 = type { %struct.PyASCIIObject, [8 x i8] }
%struct.anon.900 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.901 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.902 = type { %struct.PyASCIIObject, [14 x i8] }
%struct.anon.903 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.904 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.905 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.906 = type { %struct.PyASCIIObject, [2 x i8] }
%struct.anon.907 = type { %struct.PyCompactUnicodeObject, [2 x i8] }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, ptr }
%struct.PyTupleObject = type { %struct.PyVarObject, i64, [1 x ptr] }
%struct.PyGC_Head = type { i64, i64 }
%struct.PyHamtNode_Bitmap = type { %struct.PyVarObject, i32, [1 x ptr] }
%struct._PyContextTokenMissing = type { %struct._object }
%struct._is = type { %struct._ceval_state, ptr, i64, i64, i32, i64, i32, i32, i32, i64, %struct.pythreads, ptr, ptr, i64, %struct._gc_runtime_state, ptr, ptr, %struct._import_state, %struct._gil_runtime_state, i64, %struct.codecs_state, %struct.PyConfig, i64, ptr, ptr, ptr, ptr, [8 x ptr], i8, i64, [255 x ptr], %struct._PyXI_state_t, ptr, ptr, ptr, %struct._warnings_runtime_state, %struct.atexit_state, %struct._stoptheworld_state, %struct._qsbr_shared, %struct.llist_node, %struct.PyMutex, ptr, ptr, [8 x ptr], [8 x ptr], [8 x ptr], i8, i8, %struct._py_object_state, %struct._Py_unicode_state, %struct._Py_long_state, %struct._dtoa_state, %struct._py_func_state, %struct._py_code_state, %struct._Py_dict_state, %struct._Py_exc_state, %struct._Py_mem_interp_free_queue, %struct.ast_state, %struct.types_state, %struct.callable_cache, [7 x ptr], i8, i8, %struct._PyOptimizationConfig, ptr, ptr, ptr, ptr, i64, %struct._rare_events, ptr, %struct._Py_GlobalMonitors, %struct._PyOnceFlag, %struct._PyOnceFlag, i64, i64, [8 x [19 x ptr]], [8 x ptr], [8 x i64], %struct._Py_interp_cached_objects, %struct._Py_interp_static_objects, i64, %struct._PyThreadStateImpl }
%struct._ceval_state = type { i64, i32, ptr, i32, %struct._pending_calls }
%struct.pythreads = type { i64, ptr, ptr, ptr, i64, i64 }
%struct._gc_runtime_state = type { i32, i32, %struct.gc_generation, [2 x %struct.gc_generation], %struct.gc_generation, [3 x %struct.gc_generation_stats], i32, ptr, ptr, ptr, i64, i64, i32, i32 }
%struct.gc_generation = type { %struct.PyGC_Head, i32, i32 }
%struct.gc_generation_stats = type { i64, i64, i64, i64, double }
%struct._import_state = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, %struct._PyRecursiveMutex, %struct.anon.908 }
%struct._PyRecursiveMutex = type { %struct.PyMutex, i64, i64 }
%struct.anon.908 = type { i32, i64, i32 }
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
%struct.types_state = type { i32, %struct.type_cache, %struct.anon.910, %struct.anon.911, %struct.PyMutex, [4096 x ptr] }
%struct.type_cache = type { [4096 x %struct.type_cache_entry] }
%struct.type_cache_entry = type { i32, ptr, ptr }
%struct.anon.910 = type { i64, [202 x %struct.managed_static_type_state] }
%struct.managed_static_type_state = type { ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.anon.911 = type { i64, i64, [10 x %struct.managed_static_type_state] }
%struct.callable_cache = type { ptr, ptr, ptr, ptr }
%struct._PyOptimizationConfig = type { i16, i16, i16, i16, i8, i8 }
%struct._rare_events = type { i8, i8, i8, i8, i8 }
%struct._Py_GlobalMonitors = type { [16 x i8] }
%struct._Py_interp_cached_objects = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._Py_interp_static_objects = type { %struct.anon.912 }
%struct.anon.912 = type { i32, %struct.PyGC_Head, %struct.PyHamtObject, %struct.PyBaseExceptionObject }
%struct.PyHamtObject = type { %struct._object, ptr, ptr, i64 }
%struct.PyBaseExceptionObject = type { %struct._object, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct._PyThreadStateImpl = type { %struct._ts, %struct._PyInterpreterFrame, i64, i64, i64, i64, i64, i64, ptr, ptr, i32, %struct.llist_node, ptr, %struct.llist_node }
%struct._ts = type { ptr, ptr, ptr, i64, %struct.anon.913, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i64, i64, ptr, i64, i32, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, %struct._err_stackitem, ptr, ptr, i64, ptr, ptr, %struct._PyRemoteDebuggerSupport }
%struct.anon.913 = type { i32 }
%struct._err_stackitem = type { ptr, ptr }
%struct._PyRemoteDebuggerSupport = type { i32, [512 x i8] }
%struct._PyInterpreterFrame = type { %union._PyStackRef, ptr, %union._PyStackRef, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8, i8, [1 x %union._PyStackRef] }
%union._PyStackRef = type { i64 }
%struct._typeobject = type { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8, i16 }
%struct.PyGetSetDef = type { ptr, ptr, ptr, ptr, ptr }
%struct.Py_buffer = type { ptr, ptr, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr }

@_picklemodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { %union.anon { i64 1407378104778752 }, ptr null }, ptr null, i64 0, ptr null }, ptr @.str, ptr @pickle_module_doc, i64 152, ptr @pickle_methods, ptr @pickle_slots, ptr @pickle_traverse, ptr @pickle_clear, ptr @pickle_free }, align 8
@.str = private unnamed_addr constant [8 x i8] c"_pickle\00", align 1
@pickle_module_doc = internal constant [57 x i8] c"Optimized C implementation for the Python pickle module.\00", align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@_pickle_dump__doc__ = internal constant [1302 x i8] c"dump($module, /, obj, file, protocol=None, *, fix_imports=True,\0A     buffer_callback=None)\0A--\0A\0AWrite a pickled representation of obj to the open file object file.\0A\0AThis is equivalent to ``Pickler(file, protocol).dump(obj)``, but may\0Abe more efficient.\0A\0AThe optional *protocol* argument tells the pickler to use the given\0Aprotocol; supported protocols are 0, 1, 2, 3, 4 and 5.  The default\0Aprotocol is 5. It was introduced in Python 3.8, and is incompatible\0Awith previous versions.\0A\0ASpecifying a negative protocol version selects the highest protocol\0Aversion supported.  The higher the protocol used, the more recent the\0Aversion of Python needed to read the pickle produced.\0A\0AThe *file* argument must have a write() method that accepts a single\0Abytes argument.  It can thus be a file object opened for binary\0Awriting, an io.BytesIO instance, or any other custom object that meets\0Athis interface.\0A\0AIf *fix_imports* is True and protocol is less than 3, pickle will try\0Ato map the new Python 3 names to the old module names used in Python\0A2, so that the pickle data stream is readable with Python 2.\0A\0AIf *buffer_callback* is None (the default), buffer views are serialized\0Ainto *file* as part of the pickle stream.  It is an error if\0A*buffer_callback* is not None and *protocol* is None or smaller than 5.\00", align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"dumps\00", align 1
@_pickle_dumps__doc__ = internal constant [989 x i8] c"dumps($module, /, obj, protocol=None, *, fix_imports=True,\0A      buffer_callback=None)\0A--\0A\0AReturn the pickled representation of the object as a bytes object.\0A\0AThe optional *protocol* argument tells the pickler to use the given\0Aprotocol; supported protocols are 0, 1, 2, 3, 4 and 5.  The default\0Aprotocol is 5. It was introduced in Python 3.8, and is incompatible\0Awith previous versions.\0A\0ASpecifying a negative protocol version selects the highest protocol\0Aversion supported.  The higher the protocol used, the more recent the\0Aversion of Python needed to read the pickle produced.\0A\0AIf *fix_imports* is True and *protocol* is less than 3, pickle will\0Atry to map the new Python 3 names to the old module names used in\0APython 2, so that the pickle data stream is readable with Python 2.\0A\0AIf *buffer_callback* is None (the default), buffer views are serialized\0Ainto *file* as part of the pickle stream.  It is an error if\0A*buffer_callback* is not None and *protocol* is None or smaller than 5.\00", align 16
@.str.3 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@_pickle_load__doc__ = internal constant [1225 x i8] c"load($module, /, file, *, fix_imports=True, encoding='ASCII',\0A     errors='strict', buffers=())\0A--\0A\0ARead and return an object from the pickle data stored in a file.\0A\0AThis is equivalent to ``Unpickler(file).load()``, but may be more\0Aefficient.\0A\0AThe protocol version of the pickle is detected automatically, so no\0Aprotocol argument is needed.  Bytes past the pickled object's\0Arepresentation are ignored.\0A\0AThe argument *file* must have two methods, a read() method that takes\0Aan integer argument, and a readline() method that requires no\0Aarguments.  Both methods should return bytes.  Thus *file* can be a\0Abinary file object opened for reading, an io.BytesIO object, or any\0Aother custom object that meets this interface.\0A\0AOptional keyword arguments are *fix_imports*, *encoding* and *errors*,\0Awhich are used to control compatibility support for pickle stream\0Agenerated by Python 2.  If *fix_imports* is True, pickle will try to\0Amap the old Python 2 names to the new names used in Python 3.  The\0A*encoding* and *errors* tell pickle how to decode 8-bit string\0Ainstances pickled by Python 2; these default to 'ASCII' and 'strict',\0Arespectively.  The *encoding* can be 'bytes' to read these 8-bit\0Astring instances as bytes objects.\00", align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"loads\00", align 1
@_pickle_loads__doc__ = internal constant [822 x i8] c"loads($module, data, /, *, fix_imports=True, encoding='ASCII',\0A      errors='strict', buffers=())\0A--\0A\0ARead and return an object from the given pickle data.\0A\0AThe protocol version of the pickle is detected automatically, so no\0Aprotocol argument is needed.  Bytes past the pickled object's\0Arepresentation are ignored.\0A\0AOptional keyword arguments are *fix_imports*, *encoding* and *errors*,\0Awhich are used to control compatibility support for pickle stream\0Agenerated by Python 2.  If *fix_imports* is True, pickle will try to\0Amap the old Python 2 names to the new names used in Python 3.  The\0A*encoding* and *errors* tell pickle how to decode 8-bit string\0Ainstances pickled by Python 2; these default to 'ASCII' and 'strict',\0Arespectively.  The *encoding* can be 'bytes' to read these 8-bit\0Astring instances as bytes objects.\00", align 16
@pickle_methods = internal global [5 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.1, ptr @_pickle_dump, i32 130, [4 x i8] zeroinitializer, ptr @_pickle_dump__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.2, ptr @_pickle_dumps, i32 130, [4 x i8] zeroinitializer, ptr @_pickle_dumps__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.3, ptr @_pickle_load, i32 130, [4 x i8] zeroinitializer, ptr @_pickle_load__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.4, ptr @_pickle_loads, i32 130, [4 x i8] zeroinitializer, ptr @_pickle_loads__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@_pickle_dump._keywords = internal constant [6 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr null], align 16
@.str.6 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"fix_imports\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"buffer_callback\00", align 1
@_pickle_dump._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @_pickle_dump._keywords, ptr @.str.1, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [30 x i8] c"pickle protocol must be <= %d\00", align 1
@_PyRuntime = external global %struct.pyruntimestate, align 8
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [35 x i8] c"file must have a 'write' attribute\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"buffer_callback needs protocol >= 5\00", align 1
@PyCFunction_Type = external global %struct._typeobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@PyLong_Type = external global %struct._typeobject, align 8
@PyFloat_Type = external global %struct._typeobject, align 8
@PyBytes_Type = external global %struct._typeobject, align 8
@PyUnicode_Type = external global %struct._typeobject, align 8
@.str.14 = private unnamed_addr constant [26 x i8] c" while pickling an object\00", align 1
@PyDict_Type = external global %struct._typeobject, align 8
@PySet_Type = external global %struct._typeobject, align 8
@PyFrozenSet_Type = external global %struct._typeobject, align 8
@PyList_Type = external global %struct._typeobject, align 8
@PyTuple_Type = external global %struct._typeobject, align 8
@PyByteArray_Type = external global %struct._typeobject, align 8
@PyPickleBuffer_Type = external global %struct._typeobject, align 8
@_Py_NotImplementedStruct = external global %struct._object, align 8
@PyType_Type = external global %struct._typeobject, align 8
@PyFunction_Type = external global %struct._typeobject, align 8
@.str.15 = private unnamed_addr constant [23 x i8] c"Can't pickle %T object\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"__reduce__ must return a string or tuple, not %T\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"when serializing %T object\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"persistent IDs in protocol 0 must be ASCII strings\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%c%ld\0A\00", align 1
@PyExc_OverflowError = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [24 x i8] c"int too large to pickle\00", align 1
@PyExc_KeyError = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"%zd\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"memo id too large for LONG_BINGET\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"(O())\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"(O(OO))\00", align 1
@.str.30 = private unnamed_addr constant [82 x i8] c"serializing a bytes object larger than 4 GiB requires pickle protocol 4 or higher\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"memo id too large for LONG_BINPUT\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"surrogatepass\00", align 1
@.str.34 = private unnamed_addr constant [76 x i8] c"serializing a string larger than 4 GiB requires pickle protocol 4 or higher\00", align 1
@Py_hexdigits = external local_unnamed_addr global ptr, align 8
@.str.35 = private unnamed_addr constant [74 x i8] c"fast mode: can't pickle cyclic objects including object type %.200s at %p\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"when serializing %T item %R\00", align 1
@PyExc_RuntimeError = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [41 x i8] c"dictionary changed size during iteration\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"dict items iterator must return 2-tuples\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"(O(O))\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"when serializing %T element\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"set changed size during iteration\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"when serializing %T item %zd\00", align 1
@.str.43 = private unnamed_addr constant [52 x i8] c"PickleBuffer can only be pickled with protocol >= 5\00", align 1
@.str.44 = private unnamed_addr constant [73 x i8] c"PickleBuffer can not be pickled when pointing to a non-contiguous buffer\00", align 1
@_PyNone_Type = external global %struct._typeobject, align 8
@PyEllipsis_Type = external global %struct._typeobject, align 8
@_Py_EllipsisObject = external global %struct._object, align 8
@_PyNotImplemented_Type = external global %struct._typeobject, align 8
@.str.45 = private unnamed_addr constant [5 x i8] c"O(O)\00", align 1
@.str.46 = private unnamed_addr constant [35 x i8] c"extension code %ld is out of range\00", align 1
@PyExc_UnicodeEncodeError = external local_unnamed_addr global ptr, align 8
@.str.47 = private unnamed_addr constant [59 x i8] c"can't pickle module identifier %R using pickle protocol %i\00", align 1
@.str.48 = private unnamed_addr constant [59 x i8] c"can't pickle global identifier %R using pickle protocol %i\00", align 1
@PyExc_ImportError = external local_unnamed_addr global ptr, align 8
@.str.49 = private unnamed_addr constant [20 x i8] c"Can't pickle %R: %S\00", align 1
@PyExc_AttributeError = external local_unnamed_addr global ptr, align 8
@.str.50 = private unnamed_addr constant [41 x i8] c"Can't pickle %R: it's not found as %S.%S\00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"Can't pickle %R: it's not the same object as %S.%S\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"<locals>\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"Can't pickle local object %R\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"__main__\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"__mp_main__\00", align 1
@.str.56 = private unnamed_addr constant [74 x i8] c"_compat_pickle.REVERSE_NAME_MAPPING values should be 2-tuples, not %.200s\00", align 1
@.str.57 = private unnamed_addr constant [88 x i8] c"_compat_pickle.REVERSE_NAME_MAPPING values should be pairs of str, not (%.200s, %.200s)\00", align 1
@.str.58 = private unnamed_addr constant [75 x i8] c"_compat_pickle.REVERSE_IMPORT_MAPPING values should be strings, not %.200s\00", align 1
@.str.59 = private unnamed_addr constant [63 x i8] c"tuple returned by __reduce__ must contain 2 through 6 elements\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"save_reduce\00", align 1
@.str.61 = private unnamed_addr constant [72 x i8] c"first item of the tuple returned by __reduce__ must be callable, not %T\00", align 1
@.str.62 = private unnamed_addr constant [72 x i8] c"second item of the tuple returned by __reduce__ must be a tuple, not %T\00", align 1
@.str.63 = private unnamed_addr constant [76 x i8] c"fourth item of the tuple returned by __reduce__ must be an iterator, not %T\00", align 1
@.str.64 = private unnamed_addr constant [75 x i8] c"fifth item of the tuple returned by __reduce__ must be an iterator, not %T\00", align 1
@.str.65 = private unnamed_addr constant [72 x i8] c"sixth item of the tuple returned by __reduce__ must be callable, not %T\00", align 1
@.str.66 = private unnamed_addr constant [44 x i8] c"__newobj_ex__ expected 3 arguments, got %zd\00", align 1
@.str.67 = private unnamed_addr constant [58 x i8] c"first argument to __newobj_ex__() must be a class, not %T\00", align 1
@.str.68 = private unnamed_addr constant [59 x i8] c"second argument to __newobj_ex__() must be a tuple, not %T\00", align 1
@.str.69 = private unnamed_addr constant [57 x i8] c"third argument to __newobj_ex__() must be a dict, not %T\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"when serializing %T class\00", align 1
@.str.71 = private unnamed_addr constant [38 x i8] c"when serializing %T __new__ arguments\00", align 1
@.str.72 = private unnamed_addr constant [34 x i8] c"when serializing %T reconstructor\00", align 1
@.str.73 = private unnamed_addr constant [49 x i8] c"__newobj__ expected at least 1 argument, got %zd\00", align 1
@.str.74 = private unnamed_addr constant [55 x i8] c"first argument to __newobj__() must be a class, not %T\00", align 1
@.str.75 = private unnamed_addr constant [50 x i8] c"first argument to __newobj__() must be %R, not %R\00", align 1
@.str.76 = private unnamed_addr constant [44 x i8] c"when serializing %T reconstructor arguments\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"when serializing %T state\00", align 1
@.str.78 = private unnamed_addr constant [33 x i8] c"when serializing %T state setter\00", align 1
@_pickle_dumps._keywords = internal constant [5 x ptr] [ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr null], align 16
@_pickle_dumps._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @_pickle_dumps._keywords, ptr @.str.2, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@_pickle_load._keywords = internal constant [6 x ptr] [ptr @.str.7, ptr @.str.9, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr null], align 16
@.str.79 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"buffers\00", align 1
@_pickle_load._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @_pickle_load._keywords, ptr @.str.3, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.82 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"argument 'encoding'\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"embedded null character\00", align 1
@.str.86 = private unnamed_addr constant [18 x i8] c"argument 'errors'\00", align 1
@.str.87 = private unnamed_addr constant [48 x i8] c"file must have 'read' and 'readline' attributes\00", align 1
@PyExc_EOFError = external local_unnamed_addr global ptr, align 8
@.str.88 = private unnamed_addr constant [17 x i8] c"Ran out of input\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"invalid load key, '%c'.\00", align 1
@.str.90 = private unnamed_addr constant [28 x i8] c"invalid load key, '\\x%02x'.\00", align 1
@.str.91 = private unnamed_addr constant [39 x i8] c"read would overflow (invalid bytecode)\00", align 1
@.str.92 = private unnamed_addr constant [26 x i8] c"pickle data was truncated\00", align 1
@PyExc_NotImplementedError = external local_unnamed_addr global ptr, align 8
@.str.93 = private unnamed_addr constant [38 x i8] c"read() returned non-bytes object (%R)\00", align 1
@.str.94 = private unnamed_addr constant [34 x i8] c"readinto() returned negative size\00", align 1
@.str.95 = private unnamed_addr constant [32 x i8] c"could not convert string to int\00", align 1
@.str.96 = private unnamed_addr constant [36 x i8] c"LONG pickle has negative byte count\00", align 1
@.str.97 = private unnamed_addr constant [34 x i8] c"could not convert string to float\00", align 1
@.str.98 = private unnamed_addr constant [52 x i8] c"BINBYTES exceeds system's maximum size of %zd bytes\00", align 1
@.str.99 = private unnamed_addr constant [54 x i8] c"BYTEARRAY8 exceeds system's maximum size of %zd bytes\00", align 1
@.str.100 = private unnamed_addr constant [77 x i8] c"pickle stream refers to out-of-band data but no *buffers* argument was given\00", align 1
@.str.101 = private unnamed_addr constant [31 x i8] c"not enough out-of-band buffers\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"unexpected MARK found\00", align 1
@.str.103 = private unnamed_addr constant [27 x i8] c"unpickling stack underflow\00", align 1
@.str.104 = private unnamed_addr constant [41 x i8] c"BINSTRING pickle has negative byte count\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.106 = private unnamed_addr constant [42 x i8] c"the STRING opcode argument must be quoted\00", align 1
@.str.107 = private unnamed_addr constant [54 x i8] c"BINUNICODE exceeds system's maximum size of %zd bytes\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"could not find MARK\00", align 1
@.str.109 = private unnamed_addr constant [29 x i8] c"odd number of items for DICT\00", align 1
@.str.110 = private unnamed_addr constant [45 x i8] c"%s class argument must be a type, not %.200s\00", align 1
@.str.111 = private unnamed_addr constant [48 x i8] c"%s class argument '%.200s' doesn't have __new__\00", align 1
@.str.112 = private unnamed_addr constant [45 x i8] c"%s args argument must be a tuple, not %.200s\00", align 1
@.str.113 = private unnamed_addr constant [46 x i8] c"%s kwargs argument must be a dict, not %.200s\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"NEWOBJ_EX\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"NEWOBJ\00", align 1
@.str.116 = private unnamed_addr constant [26 x i8] c"STACK_GLOBAL requires str\00", align 1
@.str.117 = private unnamed_addr constant [26 x i8] c"state is not a dictionary\00", align 1
@.str.118 = private unnamed_addr constant [31 x i8] c"slot state is not a dictionary\00", align 1
@.str.119 = private unnamed_addr constant [34 x i8] c"Memo value not found at index %zd\00", align 1
@.str.121 = private unnamed_addr constant [22 x i8] c"negative PUT argument\00", align 1
@.str.122 = private unnamed_addr constant [33 x i8] c"odd number of items for SETITEMS\00", align 1
@PyExc_UnicodeDecodeError = external local_unnamed_addr global ptr, align 8
@.str.123 = private unnamed_addr constant [32 x i8] c"unsupported pickle protocol: %d\00", align 1
@.str.124 = private unnamed_addr constant [51 x i8] c"FRAME length exceeds system's maximum of %zd bytes\00", align 1
@.str.125 = private unnamed_addr constant [24 x i8] c"EXT specifies code <= 0\00", align 1
@.str.126 = private unnamed_addr constant [32 x i8] c"unregistered extension code %ld\00", align 1
@.str.127 = private unnamed_addr constant [51 x i8] c"_inverted_registry[%ld] isn't a 2-tuple of strings\00", align 1
@.str.128 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@_pickle_loads._keywords = internal constant [6 x ptr] [ptr @.str.129, ptr @.str.9, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr null], align 16
@.str.129 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_pickle_loads._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @_pickle_loads._keywords, ptr @.str.4, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@pickle_slots = internal global [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @_pickle_exec }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr inttoptr (i64 2 to ptr) }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr inttoptr (i64 1 to ptr) }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.131 = private unnamed_addr constant [20 x i8] c"_pickle.PickleError\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"_pickle.PicklingError\00", align 1
@.str.133 = private unnamed_addr constant [24 x i8] c"_pickle.UnpicklingError\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"PickleError\00", align 1
@.str.135 = private unnamed_addr constant [14 x i8] c"PicklingError\00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"UnpicklingError\00", align 1
@.str.137 = private unnamed_addr constant [14 x i8] c"_pickle.Pdata\00", align 1
@pdata_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.137, i32 56, i32 8, i32 16640, [4 x i8] zeroinitializer, ptr @pdata_slots }, align 8
@pdata_slots = internal global [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @Pdata_dealloc }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @_PyObject_VisitType }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.140 = private unnamed_addr constant [25 x i8] c"_pickle.PicklerMemoProxy\00", align 1
@memoproxy_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.140, i32 24, i32 0, i32 17664, [4 x i8] zeroinitializer, ptr @memoproxy_slots }, align 8
@memoproxy_slots = internal global [6 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @PicklerMemoProxy_dealloc }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @PicklerMemoProxy_traverse }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @PicklerMemoProxy_clear }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @picklerproxy_methods }, { i32, [4 x i8], ptr } { i32 59, [4 x i8] zeroinitializer, ptr @PyObject_HashNotImplemented }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.143 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@_pickle_PicklerMemoProxy_clear__doc__ = internal constant [48 x i8] c"clear($self, /)\0A--\0A\0ARemove all items from memo.\00", align 16
@.str.144 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@_pickle_PicklerMemoProxy_copy__doc__ = internal constant [50 x i8] c"copy($self, /)\0A--\0A\0ACopy the memo to a new object.\00", align 16
@.str.145 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@_pickle_PicklerMemoProxy___reduce____doc__ = internal constant [51 x i8] c"__reduce__($self, /)\0A--\0A\0AImplement pickle support.\00", align 16
@picklerproxy_methods = internal global [4 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.143, ptr @_pickle_PicklerMemoProxy_clear, i32 4, [4 x i8] zeroinitializer, ptr @_pickle_PicklerMemoProxy_clear__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.144, ptr @_pickle_PicklerMemoProxy_copy, i32 4, [4 x i8] zeroinitializer, ptr @_pickle_PicklerMemoProxy_copy__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.145, ptr @_pickle_PicklerMemoProxy___reduce__, i32 4, [4 x i8] zeroinitializer, ptr @_pickle_PicklerMemoProxy___reduce____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.147 = private unnamed_addr constant [3 x i8] c"nO\00", align 1
@.str.148 = private unnamed_addr constant [27 x i8] c"_pickle.UnpicklerMemoProxy\00", align 1
@unpickler_memoproxy_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.148, i32 24, i32 0, i32 17664, [4 x i8] zeroinitializer, ptr @unpickler_memoproxy_slots }, align 8
@unpickler_memoproxy_slots = internal global [6 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @UnpicklerMemoProxy_dealloc }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @UnpicklerMemoProxy_traverse }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @UnpicklerMemoProxy_clear }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @unpicklerproxy_methods }, { i32, [4 x i8], ptr } { i32 59, [4 x i8] zeroinitializer, ptr @PyObject_HashNotImplemented }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@_pickle_UnpicklerMemoProxy_clear__doc__ = internal constant [48 x i8] c"clear($self, /)\0A--\0A\0ARemove all items from memo.\00", align 16
@_pickle_UnpicklerMemoProxy_copy__doc__ = internal constant [50 x i8] c"copy($self, /)\0A--\0A\0ACopy the memo to a new object.\00", align 16
@_pickle_UnpicklerMemoProxy___reduce____doc__ = internal constant [53 x i8] c"__reduce__($self, /)\0A--\0A\0AImplement pickling support.\00", align 16
@unpicklerproxy_methods = internal global [4 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.143, ptr @_pickle_UnpicklerMemoProxy_clear, i32 4, [4 x i8] zeroinitializer, ptr @_pickle_UnpicklerMemoProxy_clear__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.144, ptr @_pickle_UnpicklerMemoProxy_copy, i32 4, [4 x i8] zeroinitializer, ptr @_pickle_UnpicklerMemoProxy_copy__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.145, ptr @_pickle_UnpicklerMemoProxy___reduce__, i32 4, [4 x i8] zeroinitializer, ptr @_pickle_UnpicklerMemoProxy___reduce____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.152 = private unnamed_addr constant [16 x i8] c"_pickle.Pickler\00", align 1
@pickler_type_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.152, i32 152, i32 0, i32 17664, [4 x i8] zeroinitializer, ptr @pickler_type_slots }, align 8
@Pickler_getsets = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.166, ptr @Pickler_get_memo, ptr @Pickler_set_memo, ptr null, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16
@_pickle_Pickler___init____doc__ = internal constant [1441 x i8] c"Pickler(file, protocol=None, fix_imports=True, buffer_callback=None)\0A--\0A\0AThis takes a binary file for writing a pickle data stream.\0A\0AThe optional *protocol* argument tells the pickler to use the given\0Aprotocol; supported protocols are 0, 1, 2, 3, 4 and 5.  The default\0Aprotocol is 5. It was introduced in Python 3.8, and is incompatible\0Awith previous versions.\0A\0ASpecifying a negative protocol version selects the highest protocol\0Aversion supported.  The higher the protocol used, the more recent the\0Aversion of Python needed to read the pickle produced.\0A\0AThe *file* argument must have a write() method that accepts a single\0Abytes argument. It can thus be a file object opened for binary\0Awriting, an io.BytesIO instance, or any other custom object that meets\0Athis interface.\0A\0AIf *fix_imports* is True and protocol is less than 3, pickle will try\0Ato map the new Python 3 names to the old module names used in Python\0A2, so that the pickle data stream is readable with Python 2.\0A\0AIf *buffer_callback* is None (the default), buffer views are\0Aserialized into *file* as part of the pickle stream.\0A\0AIf *buffer_callback* is not None, then it can be called any number\0Aof times with a buffer view.  If the callback returns a false value\0A(such as None), the given buffer is out-of-band; otherwise the\0Abuffer is serialized in-band, i.e. inside the pickle stream.\0A\0AIt is an error if *buffer_callback* is not None and *protocol*\0Ais None or smaller than 5.\00", align 16
@pickler_type_slots = internal global [14 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @Pickler_dealloc }, { i32, [4 x i8], ptr } { i32 58, [4 x i8] zeroinitializer, ptr @Pickler_getattr }, { i32, [4 x i8], ptr } { i32 69, [4 x i8] zeroinitializer, ptr @Pickler_setattr }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @Pickler_methods }, { i32, [4 x i8], ptr } { i32 72, [4 x i8] zeroinitializer, ptr @Pickler_members }, { i32, [4 x i8], ptr } { i32 73, [4 x i8] zeroinitializer, ptr @Pickler_getsets }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @Pickler_clear }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @_pickle_Pickler___init____doc__ }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @Pickler_traverse }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @_pickle_Pickler___init__ }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @PyType_GenericNew }, { i32, [4 x i8], ptr } { i32 47, [4 x i8] zeroinitializer, ptr @PyType_GenericAlloc }, { i32, [4 x i8], ptr } { i32 74, [4 x i8] zeroinitializer, ptr @PyObject_GC_Del }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.155 = private unnamed_addr constant [14 x i8] c"persistent_id\00", align 1
@.str.156 = private unnamed_addr constant [34 x i8] c"persistent_id($self, obj, /)\0A--\0A\0A\00", align 1
@_pickle_Pickler_dump__doc__ = internal constant [93 x i8] c"dump($self, obj, /)\0A--\0A\0AWrite a pickled representation of the given object to the open file.\00", align 16
@.str.157 = private unnamed_addr constant [11 x i8] c"clear_memo\00", align 1
@_pickle_Pickler_clear_memo__doc__ = internal constant [271 x i8] c"clear_memo($self, /)\0A--\0A\0AClears the pickler's \22memo\22.\0A\0AThe memo is the data structure that remembers which objects the\0Apickler has already seen, so that shared or recursive objects are\0Apickled by reference and not by value.  This method is useful when\0Are-using picklers.\00", align 16
@.str.158 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@_pickle_Pickler___sizeof____doc__ = internal constant [59 x i8] c"__sizeof__($self, /)\0A--\0A\0AReturns size in memory, in bytes.\00", align 16
@Pickler_methods = internal global [5 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.155, ptr @persistent_id, i32 8, [4 x i8] zeroinitializer, ptr @.str.156 }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.1, ptr @_pickle_Pickler_dump, i32 642, [4 x i8] zeroinitializer, ptr @_pickle_Pickler_dump__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.157, ptr @_pickle_Pickler_clear_memo, i32 4, [4 x i8] zeroinitializer, ptr @_pickle_Pickler_clear_memo__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.158, ptr @_pickle_Pickler___sizeof__, i32 4, [4 x i8] zeroinitializer, ptr @_pickle_Pickler___sizeof____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@_pickle_Pickler_dump._keywords = internal constant [2 x ptr] [ptr @.str.129, ptr null], align 16
@_pickle_Pickler_dump._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @_pickle_Pickler_dump._keywords, ptr @.str.1, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.160 = private unnamed_addr constant [51 x i8] c"Pickler.__init__() was not called by %s.__init__()\00", align 1
@.str.161 = private unnamed_addr constant [31 x i8] c"Pickler object is already used\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"bin\00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.164 = private unnamed_addr constant [15 x i8] c"dispatch_table\00", align 1
@Pickler_members = internal global [4 x { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.162, i32 1, [4 x i8] zeroinitializer, i64 92, i32 0, [4 x i8] zeroinitializer, ptr null }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.163, i32 1, [4 x i8] zeroinitializer, i64 120, i32 0, [4 x i8] zeroinitializer, ptr null }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.164, i32 16, [4 x i8] zeroinitializer, i64 40, i32 0, [4 x i8] zeroinitializer, ptr null }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.166 = private unnamed_addr constant [5 x i8] c"memo\00", align 1
@.str.167 = private unnamed_addr constant [36 x i8] c"attribute deletion is not supported\00", align 1
@.str.168 = private unnamed_addr constant [36 x i8] c"'memo' values must be 2-item tuples\00", align 1
@.str.169 = private unnamed_addr constant [71 x i8] c"'memo' attribute must be a PicklerMemoProxy object or dict, not %.200s\00", align 1
@_pickle_Pickler___init__._keywords = internal constant [5 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr null], align 16
@_pickle_Pickler___init__._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @_pickle_Pickler___init__._keywords, ptr @.str.170, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.170 = private unnamed_addr constant [8 x i8] c"Pickler\00", align 1
@.str.171 = private unnamed_addr constant [18 x i8] c"_pickle.Unpickler\00", align 1
@unpickler_type_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.171, i32 288, i32 0, i32 17664, [4 x i8] zeroinitializer, ptr @unpickler_type_slots }, align 8
@_pickle_Unpickler___init____doc__ = internal constant [1139 x i8] c"Unpickler(file, *, fix_imports=True, encoding='ASCII', errors='strict',\0A          buffers=())\0A--\0A\0AThis takes a binary file for reading a pickle data stream.\0A\0AThe protocol version of the pickle is detected automatically, so no\0Aprotocol argument is needed.  Bytes past the pickled object's\0Arepresentation are ignored.\0A\0AThe argument *file* must have two methods, a read() method that takes\0Aan integer argument, and a readline() method that requires no\0Aarguments.  Both methods should return bytes.  Thus *file* can be a\0Abinary file object opened for reading, an io.BytesIO object, or any\0Aother custom object that meets this interface.\0A\0AOptional keyword arguments are *fix_imports*, *encoding* and *errors*,\0Awhich are used to control compatibility support for pickle stream\0Agenerated by Python 2.  If *fix_imports* is True, pickle will try to\0Amap the old Python 2 names to the new names used in Python 3.  The\0A*encoding* and *errors* tell pickle how to decode 8-bit string\0Ainstances pickled by Python 2; these default to 'ASCII' and 'strict',\0Arespectively.  The *encoding* can be 'bytes' to read these 8-bit\0Astring instances as bytes objects.\00", align 16
@Unpickler_getsets = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.166, ptr @Unpickler_get_memo, ptr @Unpickler_set_memo, ptr null, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16
@unpickler_type_slots = internal global [13 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @Unpickler_dealloc }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @_pickle_Unpickler___init____doc__ }, { i32, [4 x i8], ptr } { i32 58, [4 x i8] zeroinitializer, ptr @Unpickler_getattr }, { i32, [4 x i8], ptr } { i32 69, [4 x i8] zeroinitializer, ptr @Unpickler_setattr }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @Unpickler_traverse }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @Unpickler_clear }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @Unpickler_methods }, { i32, [4 x i8], ptr } { i32 73, [4 x i8] zeroinitializer, ptr @Unpickler_getsets }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @_pickle_Unpickler___init__ }, { i32, [4 x i8], ptr } { i32 47, [4 x i8] zeroinitializer, ptr @PyType_GenericAlloc }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @PyType_GenericNew }, { i32, [4 x i8], ptr } { i32 74, [4 x i8] zeroinitializer, ptr @PyObject_GC_Del }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.174 = private unnamed_addr constant [16 x i8] c"persistent_load\00", align 1
@_pickle_Unpickler_persistent_load__doc__ = internal constant [36 x i8] c"persistent_load($self, pid, /)\0A--\0A\0A\00", align 16
@_pickle_Unpickler_load__doc__ = internal constant [189 x i8] c"load($self, /)\0A--\0A\0ALoad a pickle.\0A\0ARead a pickled object representation from the open file object given\0Ain the constructor, and return the reconstituted object hierarchy\0Aspecified therein.\00", align 16
@.str.175 = private unnamed_addr constant [11 x i8] c"find_class\00", align 1
@_pickle_Unpickler_find_class__doc__ = internal constant [351 x i8] c"find_class($self, module_name, global_name, /)\0A--\0A\0AReturn an object from a specified module.\0A\0AIf necessary, the module will be imported. Subclasses may override\0Athis method (e.g. to restrict unpickling of arbitrary classes and\0Afunctions).\0A\0AThis method is called whenever a class or a function object is\0Aneeded.  Both arguments passed are str objects.\00", align 16
@_pickle_Unpickler___sizeof____doc__ = internal constant [59 x i8] c"__sizeof__($self, /)\0A--\0A\0AReturns size in memory, in bytes.\00", align 16
@Unpickler_methods = internal global [5 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.174, ptr @_pickle_Unpickler_persistent_load, i32 642, [4 x i8] zeroinitializer, ptr @_pickle_Unpickler_persistent_load__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.3, ptr @_pickle_Unpickler_load, i32 642, [4 x i8] zeroinitializer, ptr @_pickle_Unpickler_load__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.175, ptr @_pickle_Unpickler_find_class, i32 642, [4 x i8] zeroinitializer, ptr @_pickle_Unpickler_find_class__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.158, ptr @_pickle_Unpickler___sizeof__, i32 4, [4 x i8] zeroinitializer, ptr @_pickle_Unpickler___sizeof____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@_pickle_Unpickler_persistent_load._keywords = internal constant [2 x ptr] [ptr @.str.129, ptr null], align 16
@_pickle_Unpickler_persistent_load._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @_pickle_Unpickler_persistent_load._keywords, ptr @.str.174, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.177 = private unnamed_addr constant [97 x i8] c"A load persistent id instruction was encountered, but no persistent_load function was specified.\00", align 1
@.str.178 = private unnamed_addr constant [26 x i8] c"load() takes no arguments\00", align 1
@.str.179 = private unnamed_addr constant [53 x i8] c"Unpickler.__init__() was not called by %s.__init__()\00", align 1
@.str.180 = private unnamed_addr constant [33 x i8] c"Unpickler object is already used\00", align 1
end_hunk_0
begin_hunk_1_@PyBytes_FromStringAndSize
declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @_PyObject_GC_New(ptr noundef) local_unnamed_addr #1

declare void @PyObject_GC_Track(ptr noundef) local_unnamed_addr #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @PyObject_GetOptionalAttr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_GetAttr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @persistent_id(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #5 {
bb.a:
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i64 @_Pickler_Write(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8, !tbaa !55
  %.fr = freeze i64 %i.d
  %i.e = icmp eq i64 %.fr, -1                     ; 2 uses
  %i.f = add i64 %2, 9
  %spec.select = select i1 %i.e, i64 %i.f, i64 %2
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  %i.h = phi i64 [ %2, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 72         ; 14 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !56   ; 2 uses
  %i.k = add i64 %i.j, %i.h                       ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !87
  %i.n = icmp sgt i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.thread
  %i.o = sub i64 4611686018427387903, %i.h
  %.not48 = icmp slt i64 %i.j, %i.o
  br i1 %.not48, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @PyErr_NoMemory() #14      ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.q = sdiv i64 %i.k, 2
  %i.r = mul i64 %i.q, 3                          ; 2 uses
  store i64 %i.r, ptr %i.l, align 8, !tbaa !87
  %i.s = getelementptr i8, ptr %0, i64 64
  %i.t = tail call i32 @_PyBytes_Resize(ptr noundef %i.s, i64 noundef %i.r) #14
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %i.v = getelementptr i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !53
  %i.x = getelementptr i8, ptr %i.w, i64 32       ; 9 uses
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = load i64, ptr %i.i, align 8, !tbaa !56   ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 104
  store i64 %i.y, ptr %i.z, align 8, !tbaa !55
  %i.aa = getelementptr i8, ptr %i.x, i64 %i.y
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.aa, i8 -2, i64 9, i1 false), !tbaa !51
  %i.ab = load i64, ptr %i.i, align 8, !tbaa !56
  %i.ac = add i64 %i.ab, 9
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !56
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = icmp slt i64 %2, 8
  br i1 %i.ad, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.ae = icmp sgt i64 %2, 0
  br i1 %i.ae, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.af = load i8, ptr %1, align 1, !tbaa !51
  %i.ag = load i64, ptr %i.i, align 8, !tbaa !56
  %i.ah = getelementptr i8, ptr %i.x, i64 %i.ag
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !51
  %exitcond.not = icmp eq i64 %2, 1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ai = getelementptr i8, ptr %1, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !51
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !56
  %i.al = getelementptr i8, ptr %i.x, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 1
  store i8 %i.aj, ptr %i.am, align 1, !tbaa !51
  %exitcond.not.1 = icmp eq i64 %2, 2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.an = getelementptr i8, ptr %1, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !51
  %i.ap = load i64, ptr %i.i, align 8, !tbaa !56
  %i.aq = getelementptr i8, ptr %i.x, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 2
  store i8 %i.ao, ptr %i.ar, align 1, !tbaa !51
  %exitcond.not.2 = icmp eq i64 %2, 3
  br i1 %exitcond.not.2, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.as = getelementptr i8, ptr %1, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !51
  %i.au = load i64, ptr %i.i, align 8, !tbaa !56
  %i.av = getelementptr i8, ptr %i.x, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 3
  store i8 %i.at, ptr %i.aw, align 1, !tbaa !51
  %exitcond.not.3 = icmp eq i64 %2, 4
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.ax = getelementptr i8, ptr %1, i64 4
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !51
  %i.az = load i64, ptr %i.i, align 8, !tbaa !56
  %i.ba = getelementptr i8, ptr %i.x, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 4
  store i8 %i.ay, ptr %i.bb, align 1, !tbaa !51
  %exitcond.not.4 = icmp eq i64 %2, 5
  br i1 %exitcond.not.4, label %.loopexit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.bc = getelementptr i8, ptr %1, i64 5
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !51
  %i.be = load i64, ptr %i.i, align 8, !tbaa !56
  %i.bf = getelementptr i8, ptr %i.x, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 5
  store i8 %i.bd, ptr %i.bg, align 1, !tbaa !51
  %exitcond.not.5 = icmp eq i64 %2, 6
  br i1 %exitcond.not.5, label %.loopexit, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.bh = getelementptr i8, ptr %1, i64 6
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !51
  %i.bj = load i64, ptr %i.i, align 8, !tbaa !56
  %i.bk = getelementptr i8, ptr %i.x, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 6
  store i8 %i.bi, ptr %i.bl, align 1, !tbaa !51
  br label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.bm = load i64, ptr %i.i, align 8, !tbaa !56
  %i.bn = getelementptr i8, ptr %i.x, i64 %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %1, i64 %2, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.preheader, %bb.i
  %i.bo = load i64, ptr %i.i, align 8, !tbaa !56
  %i.bp = add i64 %i.bo, %2
  store i64 %i.bp, ptr %i.i, align 8, !tbaa !56
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %.loopexit, %bb.d
  %.044 = phi i64 [ -1, %bb.d ], [ %2, %.loopexit ], [ -1, %bb.e ]
  ret i64 %.044
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @save(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 16 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %i.g = alloca ptr, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store ptr null, ptr %i.g, align 8, !tbaa !45
  %i.h = getelementptr i8, ptr %1, i64 96         ; 15 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !54
  %.not.i150 = icmp eq i32 %i.i, 0
  br i1 %.not.i150, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 104        ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !55   ; 3 uses
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %1, i64 72         ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !56
  %i.o = sub i64 %i.n, %i.k
  %i.p = add i64 %i.o, -9                         ; 2 uses
  %i.q = icmp sgt i64 %i.p, 65535
  br i1 %i.q, label %_Pickler_CommitFrame.exit.i, label %bb.i

_Pickler_CommitFrame.exit.i:                      ; preds = %bb.c
  %i.r = getelementptr i8, ptr %1, i64 64         ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53
  %i.t = getelementptr i8, ptr %i.s, i64 32
  %i.u = getelementptr i8, ptr %i.t, i64 %i.k     ; 2 uses
  store i8 -107, ptr %i.u, align 1, !tbaa !51
  %i.v = getelementptr i8, ptr %i.u, i64 1
  store i64 %i.p, ptr %i.v, align 1
  store i64 -1, ptr %i.j, align 8, !tbaa !55
  %i.w = getelementptr i8, ptr %1, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50
  %.not10.i = icmp eq ptr %i.x, null
  br i1 %.not10.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_Pickler_CommitFrame.exit.i
  %i.y = tail call fastcc i32 @_Pickler_FlushToFile(ptr noundef nonnull %1)
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %_Pickler_OpcodeBoundary.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !45  ; 4 uses
  %i.ab = getelementptr i8, ptr %1, i64 80
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !87
  %i.ad = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.ac) #14 ; 3 uses
  store ptr %i.ad, ptr %i.r, align 8, !tbaa !45
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %Py_XDECREF.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i32, ptr %i.aa, align 8, !tbaa !51 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.ae, -1
  br i1 %.not.i.i.i.i, label %bb.g, label %Py_XDECREF.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.aa, align 8, !tbaa !51
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.h, label %Py_XDECREF.exitthread-pre-split.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aa) #14
  br label %Py_XDECREF.exitthread-pre-split.i.i

Py_XDECREF.exitthread-pre-split.i.i:              ; preds = %bb.h, %bb.g
  %.pr.i.i = load ptr, ptr %i.r, align 8, !tbaa !53
  br label %Py_XDECREF.exit.i.i

Py_XDECREF.exit.i.i:                              ; preds = %Py_XDECREF.exitthread-pre-split.i.i, %bb.f, %bb.e
  %i.ah = phi ptr [ %.pr.i.i, %Py_XDECREF.exitthread-pre-split.i.i ], [ %i.ad, %bb.e ], [ %i.ad, %bb.f ]
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_Pickler_OpcodeBoundary.exit, label %_Pickler_ClearBuffer.exit.i

_Pickler_ClearBuffer.exit.i:                      ; preds = %Py_XDECREF.exit.i.i
  store i64 0, ptr %i.m, align 8, !tbaa !56
  store i64 -1, ptr %i.j, align 8, !tbaa !55
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.a, %bb.b, %_Pickler_ClearBuffer.exit.i, %_Pickler_CommitFrame.exit.i
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.j, label %bb.an

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !88 ; 2 uses
  %.not130 = icmp eq ptr %i.ak, null
  br i1 %.not130, label %bb.an, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i8 80, ptr %i.f, align 1, !tbaa !51
  %i.al = tail call ptr @PyObject_CallOneArg(ptr noundef nonnull %i.ak, ptr noundef %2) #14, !inline_history !179 ; 7 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %save_pers.exit.thread, label %bb.l

save_pers.exit.thread:                            ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %_Pickler_OpcodeBoundary.exit

bb.l:                                             ; preds = %bb.k
  %.not.i151 = icmp eq ptr %i.al, @_Py_NoneStruct ; 2 uses
  br i1 %.not.i151, label %Py_DECREF.exit33.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr i8, ptr %1, i64 92
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !48
  %.not28.i = icmp eq i32 %i.ao, 0
  br i1 %.not28.i, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = tail call fastcc i32 @save(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.al, i32 noundef 1), !inline_history !179
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %Py_DECREF.exit33.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load i32, ptr %i.h, align 8, !tbaa !54
  %.not.i196 = icmp eq i32 %i.ar, 0
  br i1 %.not.i196, label %.thread.i198, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr i8, ptr %1, i64 104
  %i.at = load i64, ptr %i.as, align 8, !tbaa !55
  %.fr.i = freeze i64 %i.at
  %i.au = icmp eq i64 %.fr.i, -1                  ; 2 uses
  %spec.select.i197 = select i1 %i.au, i64 10, i64 1
  br label %.thread.i198

.thread.i198:                                     ; preds = %bb.p, %bb.o
  %i.av = phi i1 [ false, %bb.o ], [ %i.au, %bb.p ]
  %i.aw = phi i64 [ 1, %bb.o ], [ %spec.select.i197, %bb.p ] ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 72        ; 6 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !56 ; 3 uses
  %i.az = add i64 %i.ay, %i.aw                    ; 2 uses
  %i.ba = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !87
  %i.bc = icmp sgt i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.thread.i198
  %i.bd = xor i64 %i.aw, 4611686018427387903
  %.not48.i = icmp slt i64 %i.ay, %i.bd
  br i1 %.not48.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = tail call ptr @PyErr_NoMemory() #14     ; 0 uses
  br label %Py_DECREF.exit33.i

bb.s:                                             ; preds = %bb.q
  %i.bf = sdiv i64 %i.az, 2
  %i.bg = mul i64 %i.bf, 3                        ; 2 uses
  store i64 %i.bg, ptr %i.ba, align 8, !tbaa !87
  %i.bh = getelementptr i8, ptr %1, i64 64
  %i.bi = tail call i32 @_PyBytes_Resize(ptr noundef %i.bh, i64 noundef %i.bg) #14
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %Py_DECREF.exit33.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s
  %.pre.pre = load i64, ptr %i.ax, align 8, !tbaa !56
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %.thread.i198
  %.pre = phi i64 [ %.pre.pre, %._crit_edge ], [ %i.ay, %.thread.i198 ] ; 3 uses
  %i.bk = getelementptr i8, ptr %1, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !53
  %i.bm = getelementptr i8, ptr %i.bl, i64 32     ; 2 uses
  br i1 %i.av, label %bb.u, label %.lr.ph.i

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr i8, ptr %1, i64 104
  store i64 %.pre, ptr %i.bn, align 8, !tbaa !55
  %i.bo = getelementptr i8, ptr %i.bm, i64 %.pre
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.bo, i8 -2, i64 9, i1 false), !tbaa !51
  %i.bp = load i64, ptr %i.ax, align 8, !tbaa !56
  %i.bq = add i64 %i.bp, 9                        ; 2 uses
  store i64 %i.bq, ptr %i.ax, align 8, !tbaa !56
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %bb.t
  %i.br = phi i64 [ %i.bq, %bb.u ], [ %.pre, %bb.t ]
  %i.bs = getelementptr i8, ptr %i.bm, i64 %i.br
  store i8 81, ptr %i.bs, align 1, !tbaa !51
  %i.bt = load i64, ptr %i.ax, align 8, !tbaa !56
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.ax, align 8, !tbaa !56
  br label %Py_DECREF.exit33.i

bb.v:                                             ; preds = %bb.m
  %i.bv = tail call ptr @PyObject_Str(ptr noundef nonnull %i.al) #14, !inline_history !179 ; 14 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %Py_DECREF.exit33.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = getelementptr i8, ptr %i.bv, i64 32     ; 2 uses
  %.val.i = load i32, ptr %i.bx, align 8
  %i.by = and i32 %.val.i, 64
  %.not29.i = icmp eq i32 %i.by, 0
  br i1 %.not29.i, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr i8, ptr %0, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.ca, ptr noundef nonnull @.str.18) #14, !inline_history !179
  %i.cb = load i32, ptr %i.bv, align 8, !tbaa !51 ; 2 uses
  %.not.i32.i = icmp sgt i32 %i.cb, -1
  br i1 %.not.i32.i, label %bb.y, label %Py_DECREF.exit33.i

bb.y:                                             ; preds = %bb.x
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.cc, ptr %i.bv, align 8, !tbaa !51
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.z, label %Py_DECREF.exit33.i

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bv) #14, !inline_history !179
  br label %Py_DECREF.exit33.i

bb.aa:                                            ; preds = %bb.w
  %i.ce = call fastcc i64 @_Pickler_Write(ptr noundef nonnull %1, ptr noundef nonnull %i.f, i64 noundef 1), !inline_history !179
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val.i191 = load i32, ptr %i.bx, align 8       ; 2 uses
  %i.cg = and i32 %.val.i191, 32
  %.not.i192 = icmp eq i32 %i.cg, 0
  br i1 %.not.i192, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ch = and i32 %.val.i191, 64
  %.not.i.i193 = icmp eq i32 %i.ch, 0
  %.0.v.i.i = select i1 %.not.i.i193, i64 56, i64 40
  %.0.i.i194 = getelementptr i8, ptr %i.bv, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ci = getelementptr i8, ptr %i.bv, i64 56
  %.val4.i = load ptr, ptr %i.ci, align 8, !tbaa !51
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.ac, %bb.ad
  %.0.i195 = phi ptr [ %.0.i.i194, %bb.ac ], [ %.val4.i, %bb.ad ]
  %i.cj = getelementptr i8, ptr %i.bv, i64 16
  %.val36.i = load i64, ptr %i.cj, align 8, !tbaa !91
  %i.ck = tail call fastcc i64 @_Pickler_Write(ptr noundef nonnull %1, ptr noundef %.0.i195, i64 noundef %.val36.i), !inline_history !179
  %i.cl = icmp slt i64 %i.ck, 0
  br i1 %i.cl, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_PyUnicode_DATA.exit
  %i.cm = tail call fastcc i64 @_Pickler_Write(ptr noundef nonnull %1, ptr noundef nonnull @.str.19, i64 noundef 1), !inline_history !179
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae, %_PyUnicode_DATA.exit, %bb.aa
  %i.co = load i32, ptr %i.bv, align 8, !tbaa !51 ; 2 uses
  %.not.i30.i = icmp sgt i32 %i.co, -1
  br i1 %.not.i30.i, label %bb.ag, label %Py_DECREF.exit33.i

bb.ag:                                            ; preds = %bb.af
  %i.cp = add nsw i32 %i.co, -1                   ; 2 uses
  store i32 %i.cp, ptr %i.bv, align 8, !tbaa !51
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.ah, label %Py_DECREF.exit33.i

bb.ah:                                            ; preds = %bb.ag
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bv) #14, !inline_history !179
  br label %Py_DECREF.exit33.i

bb.ai:                                            ; preds = %bb.ae
  %i.cr = load i32, ptr %i.bv, align 8, !tbaa !51 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cr, -1
  br i1 %.not.i.i, label %bb.aj, label %Py_DECREF.exit33.i

bb.aj:                                            ; preds = %bb.ai
  %i.cs = add nsw i32 %i.cr, -1                   ; 2 uses
  store i32 %i.cs, ptr %i.bv, align 8, !tbaa !51
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.ak, label %Py_DECREF.exit33.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bv) #14, !inline_history !179
  br label %Py_DECREF.exit33.i

Py_DECREF.exit33.i:                               ; preds = %bb.ag, %bb.ah, %bb.y, %bb.z, %bb.af, %bb.x, %bb.v, %bb.s, %bb.r, %bb.l, %.lr.ph.i, %bb.ai, %bb.aj, %bb.ak, %bb.n
  %.024.i = phi i32 [ 1, %bb.ak ], [ 0, %bb.l ], [ 1, %.lr.ph.i ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ -1, %bb.s ], [ -1, %bb.n ], [ -1, %bb.r ], [ -1, %bb.v ], [ -1, %bb.x ], [ -1, %bb.af ], [ -1, %bb.z ], [ -1, %bb.y ], [ -1, %bb.ah ], [ -1, %bb.ag ]
  %i.cu = load i32, ptr %i.al, align 8, !tbaa !51 ; 2 uses
  %.not.i.i189 = icmp sgt i32 %i.cu, -1
  br i1 %.not.i.i189, label %bb.al, label %save_pers.exit

bb.al:                                            ; preds = %Py_DECREF.exit33.i
  %i.cv = add nsw i32 %i.cu, -1                   ; 2 uses
  store i32 %i.cv, ptr %i.al, align 8, !tbaa !51
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.am, label %save_pers.exit

bb.am:                                            ; preds = %bb.al
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.al) #14
  br label %save_pers.exit

save_pers.exit:                                   ; preds = %bb.am, %bb.al, %Py_DECREF.exit33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br i1 %.not.i151, label %bb.an, label %_Pickler_OpcodeBoundary.exit

bb.an:                                            ; preds = %save_pers.exit, %bb.j, %bb.i
  %i.cx = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.cx, align 8, !tbaa !57 ; 16 uses
  %i.cy = icmp eq ptr %2, @_Py_NoneStruct
  br i1 %i.cy, label %bb.ao, label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.cz = load i32, ptr %i.h, align 8, !tbaa !54
  %.not.i.i153 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i153, label %.thread.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.da = getelementptr i8, ptr %1, i64 104
  %i.db = load i64, ptr %i.da, align 8, !tbaa !55
  %.fr.i.i = freeze i64 %i.db
  %i.dc = icmp eq i64 %.fr.i.i, -1                ; 2 uses
  %spec.select.i.i = select i1 %i.dc, i64 10, i64 1
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ap, %bb.ao
  %i.dd = phi i1 [ false, %bb.ao ], [ %i.dc, %bb.ap ]
  %i.de = phi i64 [ 1, %bb.ao ], [ %spec.select.i.i, %bb.ap ] ; 2 uses
  %i.df = getelementptr i8, ptr %1, i64 72        ; 6 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !56 ; 3 uses
  %i.dh = add i64 %i.dg, %i.de                    ; 2 uses
  %i.di = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !87
  %i.dk = icmp sgt i64 %i.dh, %i.dj
  br i1 %i.dk, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %.thread.i.i
  %i.dl = xor i64 %i.de, 4611686018427387903
  %.not48.i.i = icmp slt i64 %i.dg, %i.dl
  br i1 %.not48.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dm = tail call ptr @PyErr_NoMemory() #14     ; 0 uses
  br label %_Pickler_OpcodeBoundary.exit

bb.as:                                            ; preds = %bb.aq
  %i.dn = sdiv i64 %i.dh, 2
  %i.do = mul i64 %i.dn, 3                        ; 2 uses
  store i64 %i.do, ptr %i.di, align 8, !tbaa !87
  %i.dp = getelementptr i8, ptr %1, i64 64
  %i.dq = tail call i32 @_PyBytes_Resize(ptr noundef %i.dp, i64 noundef %i.do) #14
  %i.dr = icmp slt i32 %i.dq, 0
  br i1 %i.dr, label %_Pickler_OpcodeBoundary.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.as
  %.pre.pre.i = load i64, ptr %i.df, align 8, !tbaa !56
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge.i, %.thread.i.i
  %.pre.i = phi i64 [ %.pre.pre.i, %._crit_edge.i ], [ %i.dg, %.thread.i.i ] ; 3 uses
  %i.ds = getelementptr i8, ptr %1, i64 64
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !53
  %i.du = getelementptr i8, ptr %i.dt, i64 32     ; 2 uses
  br i1 %i.dd, label %bb.au, label %.lr.ph.i.i

bb.au:                                            ; preds = %bb.at
  %i.dv = getelementptr i8, ptr %1, i64 104
  store i64 %.pre.i, ptr %i.dv, align 8, !tbaa !55
  %i.dw = getelementptr i8, ptr %i.du, i64 %.pre.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.dw, i8 -2, i64 9, i1 false), !tbaa !51
  %i.dx = load i64, ptr %i.df, align 8, !tbaa !56
  %i.dy = add i64 %i.dx, 9                        ; 2 uses
  store i64 %i.dy, ptr %i.df, align 8, !tbaa !56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.au, %bb.at
  %i.dz = phi i64 [ %i.dy, %bb.au ], [ %.pre.i, %bb.at ]
  %i.ea = getelementptr i8, ptr %i.du, i64 %i.dz
  store i8 78, ptr %i.ea, align 1, !tbaa !51
  %i.eb = load i64, ptr %i.df, align 8, !tbaa !56
  %i.ec = add i64 %i.eb, 1
  store i64 %i.ec, ptr %i.df, align 8, !tbaa !56
  br label %_Pickler_OpcodeBoundary.exit

bb.av:                                            ; preds = %bb.an
  %i.ed = icmp eq ptr %2, @_Py_FalseStruct
  %i.ee = icmp eq ptr %2, @_Py_TrueStruct         ; 3 uses
  %or.cond = or i1 %i.ed, %i.ee
  br i1 %or.cond, label %bb.aw, label %bb.bl

bb.aw:                                            ; preds = %bb.av
  %i.ef = getelementptr i8, ptr %1, i64 88
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !47
  %i.eh = icmp sgt i32 %i.eg, 1
  br i1 %i.eh, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %bb.aw
  %i.ei = select i1 %i.ee, i8 -120, i8 -119
  %4 = load i32, ptr %i.h, align 8, !tbaa !54
  %.not.i.i157 = icmp eq i32 %4, 0
  br i1 %.not.i.i157, label %.thread.i.i160, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ej = getelementptr i8, ptr %1, i64 104
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !55
  %.fr.i.i158 = freeze i64 %i.ek
  %i.el = icmp eq i64 %.fr.i.i158, -1             ; 2 uses
  %spec.select.i.i159 = select i1 %i.el, i64 10, i64 1
  br label %.thread.i.i160

.thread.i.i160:                                   ; preds = %bb.ay, %bb.ax
  %i.em = phi i1 [ false, %bb.ax ], [ %i.el, %bb.ay ]
  %i.en = phi i64 [ 1, %bb.ax ], [ %spec.select.i.i159, %bb.ay ] ; 2 uses
  %i.eo = getelementptr i8, ptr %1, i64 72        ; 6 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !56 ; 3 uses
  %i.eq = add i64 %i.ep, %i.en                    ; 2 uses
  %i.er = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !87
  %i.et = icmp sgt i64 %i.eq, %i.es
  br i1 %i.et, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %.thread.i.i160
  %i.eu = xor i64 %i.en, 4611686018427387903
  %.not48.i.i162 = icmp slt i64 %i.ep, %i.eu
  br i1 %.not48.i.i162, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ev = tail call ptr @PyErr_NoMemory() #14     ; 0 uses
  br label %_Pickler_OpcodeBoundary.exit

bb.bb:                                            ; preds = %bb.az
  %i.ew = sdiv i64 %i.eq, 2
  %i.ex = mul i64 %i.ew, 3                        ; 2 uses
  store i64 %i.ex, ptr %i.er, align 8, !tbaa !87
  %i.ey = getelementptr i8, ptr %1, i64 64
  %i.ez = tail call i32 @_PyBytes_Resize(ptr noundef %i.ey, i64 noundef %i.ex) #14
  %i.fa = icmp slt i32 %i.ez, 0
  br i1 %i.fa, label %_Pickler_OpcodeBoundary.exit, label %._crit_edge26.i

._crit_edge26.i:                                  ; preds = %bb.bb
  %.pre24.pre.i = load i64, ptr %i.eo, align 8, !tbaa !56
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge26.i, %.thread.i.i160
  %.pre24.i = phi i64 [ %.pre24.pre.i, %._crit_edge26.i ], [ %i.ep, %.thread.i.i160 ] ; 3 uses
  %i.fb = getelementptr i8, ptr %1, i64 64
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !53
  %i.fd = getelementptr i8, ptr %i.fc, i64 32     ; 2 uses
  br i1 %i.em, label %bb.bd, label %.lr.ph.i.i161

bb.bd:                                            ; preds = %bb.bc
  %i.fe = getelementptr i8, ptr %1, i64 104
  store i64 %.pre24.i, ptr %i.fe, align 8, !tbaa !55
  %i.ff = getelementptr i8, ptr %i.fd, i64 %.pre24.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ff, i8 -2, i64 9, i1 false), !tbaa !51
  %i.fg = load i64, ptr %i.eo, align 8, !tbaa !56
  %i.fh = add i64 %i.fg, 9                        ; 2 uses
  store i64 %i.fh, ptr %i.eo, align 8, !tbaa !56
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %bb.bd, %bb.bc
  %i.fi = phi i64 [ %i.fh, %bb.bd ], [ %.pre24.i, %bb.bc ]
  %i.fj = getelementptr i8, ptr %i.fd, i64 %i.fi
  store i8 %i.ei, ptr %i.fj, align 1, !tbaa !51
  %i.fk = load i64, ptr %i.eo, align 8, !tbaa !56
  %i.fl = add i64 %i.fk, 1
  store i64 %i.fl, ptr %i.eo, align 8, !tbaa !56
  br label %_Pickler_OpcodeBoundary.exit

bb.be:                                            ; preds = %bb.aw
  %5 = load i32, ptr %i.h, align 8, !tbaa !54
  %.not.i11.i = icmp eq i32 %5, 0
  br i1 %.not.i11.i, label %.thread.i14.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fm = getelementptr i8, ptr %1, i64 104
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !55
  %.fr.i12.i = freeze i64 %i.fn
  %i.fo = icmp eq i64 %.fr.i12.i, -1              ; 2 uses
  %spec.select.i13.i = select i1 %i.fo, i64 13, i64 4
  br label %.thread.i14.i

.thread.i14.i:                                    ; preds = %bb.bf, %bb.be
  %i.fp = phi i1 [ false, %bb.be ], [ %i.fo, %bb.bf ]
  %i.fq = phi i64 [ 4, %bb.be ], [ %spec.select.i13.i, %bb.bf ] ; 2 uses
  %i.fr = getelementptr i8, ptr %1, i64 72        ; 9 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !56 ; 3 uses
  %i.ft = add i64 %i.fs, %i.fq                    ; 2 uses
  %i.fu = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !87
  %i.fw = icmp sgt i64 %i.ft, %i.fv
  br i1 %i.fw, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %.thread.i14.i
  %i.fx = xor i64 %i.fq, 4611686018427387903
  %.not48.i20.i = icmp slt i64 %i.fs, %i.fx
  br i1 %.not48.i20.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fy = tail call ptr @PyErr_NoMemory() #14     ; 0 uses
  br label %_Pickler_OpcodeBoundary.exit

bb.bi:                                            ; preds = %bb.bg
  %i.fz = sdiv i64 %i.ft, 2
  %i.ga = mul i64 %i.fz, 3                        ; 2 uses
  store i64 %i.ga, ptr %i.fu, align 8, !tbaa !87
  %i.gb = getelementptr i8, ptr %1, i64 64
  %i.gc = tail call i32 @_PyBytes_Resize(ptr noundef %i.gb, i64 noundef %i.ga) #14
  %i.gd = icmp slt i32 %i.gc, 0
  br i1 %i.gd, label %_Pickler_OpcodeBoundary.exit, label %._crit_edge.i155

._crit_edge.i155:                                 ; preds = %bb.bi
  %.pre.pre.i156 = load i64, ptr %i.fr, align 8, !tbaa !56
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.i155, %.thread.i14.i
  %.pre.i154 = phi i64 [ %.pre.pre.i156, %._crit_edge.i155 ], [ %i.fs, %.thread.i14.i ] ; 3 uses
  %i.ge = getelementptr i8, ptr %1, i64 64
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !53
  %i.gg = getelementptr i8, ptr %i.gf, i64 32     ; 5 uses
  br i1 %i.fp, label %bb.bk, label %.lr.ph.i15.i

bb.bk:                                            ; preds = %bb.bj
  %i.gh = getelementptr i8, ptr %1, i64 104
  store i64 %.pre.i154, ptr %i.gh, align 8, !tbaa !55
  %i.gi = getelementptr i8, ptr %i.gg, i64 %.pre.i154
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.gi, i8 -2, i64 9, i1 false), !tbaa !51
  %i.gj = load i64, ptr %i.fr, align 8, !tbaa !56
  %i.gk = add i64 %i.gj, 9                        ; 2 uses
  store i64 %i.gk, ptr %i.fr, align 8, !tbaa !56
  br label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %bb.bk, %bb.bj
  %i.gl = phi i64 [ %i.gk, %bb.bk ], [ %.pre.i154, %bb.bj ]
  %i.gm = getelementptr i8, ptr %i.gg, i64 %i.gl
  store i8 73, ptr %i.gm, align 1, !tbaa !51
  %i.gn = load i64, ptr %i.fr, align 8, !tbaa !56
  %i.go = getelementptr i8, ptr %i.gg, i64 %i.gn
  %i.gp = getelementptr i8, ptr %i.go, i64 1
  store i8 48, ptr %i.gp, align 1, !tbaa !51
  %6 = select i1 %i.ee, i8 49, i8 48
  %i.gq = load i64, ptr %i.fr, align 8, !tbaa !56
  %i.gr = getelementptr i8, ptr %i.gg, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 2
  store i8 %6, ptr %i.gs, align 1, !tbaa !51
  %i.gt = load i64, ptr %i.fr, align 8, !tbaa !56
  %i.gu = getelementptr i8, ptr %i.gg, i64 %i.gt
  %i.gv = getelementptr i8, ptr %i.gu, i64 3
  store i8 10, ptr %i.gv, align 1, !tbaa !51
  %i.gw = load i64, ptr %i.fr, align 8, !tbaa !56
  %i.gx = add i64 %i.gw, 4
  store i64 %i.gx, ptr %i.fr, align 8, !tbaa !56
  br label %_Pickler_OpcodeBoundary.exit

bb.bl:                                            ; preds = %bb.av
  %i.gy = icmp eq ptr %.val, @PyLong_Type
  br i1 %i.gy, label %bb.bm, label %bb.ed

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.gz = call i64 @PyLong_AsLongAndOverflow(ptr noundef %2, ptr noundef nonnull %i.c) #14 ; 5 uses
  %i.ha = load i32, ptr %i.c, align 4, !tbaa !14
  %i.hb = icmp eq i32 %i.ha, 0
  %i.hc = add i64 %i.gz, 2147483648
  %i.hd = icmp ult i64 %i.hc, 4294967296
  %or.cond3.i = select i1 %i.hb, i1 %i.hd, i1 false
  br i1 %or.cond3.i, label %bb.bn, label %bb.ce

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.he = getelementptr i8, ptr %1, i64 92
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !48
  %.not76.i = icmp eq i32 %i.hf, 0
  br i1 %.not76.i, label %bb.bt, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hg = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.hh = trunc nsw i64 %i.gz to i32
  store i32 %i.hh, ptr %i.hg, align 1
  %i.hi = and i64 %i.gz, 4294901760
  %or.cond7.not.i = icmp eq i64 %i.hi, 0
  br i1 %or.cond7.not.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store i8 74, ptr %i.d, align 16, !tbaa !51
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bo
  %i.hj = and i64 %i.gz, 65280
  %.not77.i = icmp eq i64 %i.hj, 0
  br i1 %.not77.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store i8 77, ptr %i.d, align 16, !tbaa !51
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  store i8 75, ptr %i.d, align 16, !tbaa !51
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bn
  %i.hk = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef 73, i64 noundef %i.gz) #14 ; 0 uses
  %i.hl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #15
  %i.hm = freeze i64 %i.hl
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bp
  %.063.i = phi i64 [ 5, %bb.bp ], [ 3, %bb.br ], [ 2, %bb.bs ], [ %i.hm, %bb.bt ] ; 15 uses
  %i.hn = load i32, ptr %i.h, align 8, !tbaa !54
  %.not.i.i167 = icmp eq i32 %i.hn, 0
  br i1 %.not.i.i167, label %.thread.i.i170, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ho = getelementptr i8, ptr %1, i64 104
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !55
  %.fr.i.i168 = freeze i64 %i.hp
  %i.hq = icmp eq i64 %.fr.i.i168, -1             ; 2 uses
  %i.hr = add i64 %.063.i, 9
  %spec.select.i.i169 = select i1 %i.hq, i64 %i.hr, i64 %.063.i
  br label %.thread.i.i170

.thread.i.i170:                                   ; preds = %bb.bv, %bb.bu
  %i.hs = phi i1 [ false, %bb.bu ], [ %i.hq, %bb.bv ]
  %i.ht = phi i64 [ %.063.i, %bb.bu ], [ %spec.select.i.i169, %bb.bv ] ; 2 uses
  %i.hu = getelementptr i8, ptr %1, i64 72        ; 16 uses
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !56 ; 2 uses
  %i.hw = add i64 %i.hv, %i.ht                    ; 2 uses
  %i.hx = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !87
  %i.hz = icmp sgt i64 %i.hw, %i.hy
  br i1 %i.hz, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %.thread.i.i170
  %i.ia = sub i64 4611686018427387903, %i.ht
  %.not48.i.i173 = icmp slt i64 %i.hv, %i.ia
  br i1 %.not48.i.i173, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ib = call ptr @PyErr_NoMemory() #14          ; 0 uses
  br label %_Pickler_Write.exit.thread.i

bb.by:                                            ; preds = %bb.bw
  %i.ic = sdiv i64 %i.hw, 2
  %i.id = mul i64 %i.ic, 3                        ; 2 uses
  store i64 %i.id, ptr %i.hx, align 8, !tbaa !87
  %i.ie = getelementptr i8, ptr %1, i64 64
  %i.if = call i32 @_PyBytes_Resize(ptr noundef %i.ie, i64 noundef %i.id) #14
  %i.ig = icmp slt i32 %i.if, 0
  br i1 %i.ig, label %_Pickler_Write.exit.thread.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.thread.i.i170
  %i.ih = getelementptr i8, ptr %1, i64 64
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !53
  %i.ij = getelementptr i8, ptr %i.ii, i64 32     ; 9 uses
  br i1 %i.hs, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ik = load i64, ptr %i.hu, align 8, !tbaa !56 ; 2 uses
  %i.il = getelementptr i8, ptr %1, i64 104
  store i64 %i.ik, ptr %i.il, align 8, !tbaa !55
  %i.im = getelementptr i8, ptr %i.ij, i64 %i.ik
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.im, i8 -2, i64 9, i1 false), !tbaa !51
  %i.in = load i64, ptr %i.hu, align 8, !tbaa !56
  %i.io = add i64 %i.in, 9
  store i64 %i.io, ptr %i.hu, align 8, !tbaa !56
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.ip = icmp slt i64 %.063.i, 8
  br i1 %i.ip, label %.preheader.i.i, label %bb.cc

.preheader.i.i:                                   ; preds = %bb.cb
  %i.iq = icmp sgt i64 %.063.i, 0
  br i1 %i.iq, label %.lr.ph.i.i172, label %_Pickler_Write.exit.i

.lr.ph.i.i172:                                    ; preds = %.preheader.i.i
  %i.ir = load i8, ptr %i.d, align 16, !tbaa !51
  %i.is = load i64, ptr %i.hu, align 8, !tbaa !56
  %i.it = getelementptr i8, ptr %i.ij, i64 %i.is
  store i8 %i.ir, ptr %i.it, align 1, !tbaa !51
  %exitcond.not.i.i = icmp eq i64 %.063.i, 1
  br i1 %exitcond.not.i.i, label %_Pickler_Write.exit.thread145.i, label %.lr.ph.i.i172.1

.lr.ph.i.i172.1:                                  ; preds = %.lr.ph.i.i172
  %i.iu = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !51
  %i.iw = load i64, ptr %i.hu, align 8, !tbaa !56
  %i.ix = getelementptr i8, ptr %i.ij, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.ix, i64 1
  store i8 %i.iv, ptr %i.iy, align 1, !tbaa !51
  %exitcond.not.i.i.1 = icmp eq i64 %.063.i, 2
  br i1 %exitcond.not.i.i.1, label %_Pickler_Write.exit.thread145.i, label %.lr.ph.i.i172.2

.lr.ph.i.i172.2:                                  ; preds = %.lr.ph.i.i172.1
  %i.iz = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.ja = load i8, ptr %i.iz, align 2, !tbaa !51
  %i.jb = load i64, ptr %i.hu, align 8, !tbaa !56
  %i.jc = getelementptr i8, ptr %i.ij, i64 %i.jb
  %i.jd = getelementptr i8, ptr %i.jc, i64 2
  store i8 %i.ja, ptr %i.jd, align 1, !tbaa !51
  %exitcond.not.i.i.2 = icmp eq i64 %.063.i, 3
  br i1 %exitcond.not.i.i.2, label %_Pickler_Write.exit.thread145.i, label %.lr.ph.i.i172.3

.lr.ph.i.i172.3:                                  ; preds = %.lr.ph.i.i172.2
  %i.je = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !51
  %i.jg = load i64, ptr %i.hu, align 8, !tbaa !56
  %i.jh = getelementptr i8, ptr %i.ij, i64 %i.jg
  %i.ji = getelementptr i8, ptr %i.jh, i64 3
  store i8 %i.jf, ptr %i.ji, align 1, !tbaa !51
  %exitcond.not.i.i.3 = icmp eq i64 %.063.i, 4
  br i1 %exitcond.not.i.i.3, label %_Pickler_Write.exit.thread145.i, label %.lr.ph.i.i172.4

.lr.ph.i.i172.4:                                  ; preds = %.lr.ph.i.i172.3
  %i.jj = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.jk = load i8, ptr %i.jj, align 4, !tbaa !51
  %i.jl = load i64, ptr %i.hu, align 8, !tbaa !56
  %i.jm = getelementptr i8, ptr %i.ij, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.jm, i64 4
  store i8 %i.jk, ptr %i.jn, align 1, !tbaa !51
  %exitcond.not.i.i.4 = icmp eq i64 %.063.i, 5
  br i1 %exitcond.not.i.i.4, label %_Pickler_Write.exit.thread145.i, label %.lr.ph.i.i172.5

.lr.ph.i.i172.5:                                  ; preds = %.lr.ph.i.i172.4
  %i.jo = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !51
  %i.jq = load i64, ptr %i.hu, align 8, !tbaa !56
  %i.jr = getelementptr i8, ptr %i.ij, i64 %i.jq
  %i.js = getelementptr i8, ptr %i.jr, i64 5
  store i8 %i.jp, ptr %i.js, align 1, !tbaa !51
  %exitcond.not.i.i.5 = icmp eq i64 %.063.i, 6
  br i1 %exitcond.not.i.i.5, label %_Pickler_Write.exit.thread145.i, label %.lr.ph.i.i172.6

.lr.ph.i.i172.6:                                  ; preds = %.lr.ph.i.i172.5
  %i.jt = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.ju = load i8, ptr %i.jt, align 2, !tbaa !51
  %i.jv = load i64, ptr %i.hu, align 8, !tbaa !56
  %i.jw = getelementptr i8, ptr %i.ij, i64 %i.jv
  %i.jx = getelementptr i8, ptr %i.jw, i64 6
  store i8 %i.ju, ptr %i.jx, align 1, !tbaa !51
  br label %_Pickler_Write.exit.thread145.i

bb.cc:                                            ; preds = %bb.cb
  %i.jy = load i64, ptr %i.hu, align 8, !tbaa !56
  %i.jz = getelementptr i8, ptr %i.ij, i64 %i.jy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jz, ptr nonnull readonly align 16 %i.d, i64 %.063.i, i1 false)
  br label %_Pickler_Write.exit.thread145.i

end_hunk_1
