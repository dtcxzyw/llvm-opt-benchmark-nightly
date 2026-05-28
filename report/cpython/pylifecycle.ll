inline.NumInlined: 169
inline.NumDeleted: 61
begin_hunk_0
@.str.145 = private unnamed_addr constant [59 x i8] c"%s: bug likely caused by a refcount error in a C extension\00", align 1
@.str.146 = private unnamed_addr constant [55 x i8] c"Py_ExitStatusException() must not be called on success\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.149 = private unnamed_addr constant [8 x i8] c"C.UTF-8\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"C.utf8\00", align 1
@.str.151 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str.153 = private unnamed_addr constant [52 x i8] c"Error setting LC_CTYPE, skipping C locale coercion\0A\00", align 1
@C_LOCALE_COERCION_WARNING = internal constant [143 x i8] c"Python detected LC_CTYPE=C: LC_CTYPE coerced to %.20s (set another locale or PYTHONCOERCECLOCALE=0 to disable this locale coercion behavior).\0A\00", align 16
@__func__.pycore_init_runtime = private unnamed_addr constant [20 x i8] c"pycore_init_runtime\00", align 1
@.str.154 = private unnamed_addr constant [37 x i8] c"main interpreter already initialized\00", align 1
@__func__.pycore_create_interpreter = private unnamed_addr constant [26 x i8] c"pycore_create_interpreter\00", align 1
@.str.155 = private unnamed_addr constant [41 x i8] c"failed to initialize module dict watcher\00", align 1
@__const.pycore_create_interpreter.config = private unnamed_addr constant %struct.PyInterpreterConfig { i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1 }, align 4
@.str.156 = private unnamed_addr constant [25 x i8] c"memory allocation failed\00", align 1
@.str.157 = private unnamed_addr constant [24 x i8] c"can't make first thread\00", align 1
@__func__.init_interp_settings = private unnamed_addr constant [21 x i8] c"init_interp_settings\00", align 1
@.str.158 = private unnamed_addr constant [78 x i8] c"per-interpreter obmalloc does not support single-phase init extension modules\00", align 1
@.str.159 = private unnamed_addr constant [39 x i8] c"invalid interpreter config 'gil' value\00", align 1
@__func__.pycore_interp_init = private unnamed_addr constant [19 x i8] c"pycore_interp_init\00", align 1
@.str.160 = private unnamed_addr constant [26 x i8] c"can't initialize warnings\00", align 1
@__func__.pycore_init_types = private unnamed_addr constant [18 x i8] c"pycore_init_types\00", align 1
@.str.161 = private unnamed_addr constant [39 x i8] c"failed to initialize an exception type\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"builtins\00", align 1
@PyExc_AssertionError = external local_unnamed_addr global ptr, align 8
@PyExc_NotImplementedError = external local_unnamed_addr global ptr, align 8
@PyList_Type = external global %struct._typeobject, align 8
@PySet_Type = external global %struct._typeobject, align 8
@PyBaseObject_Type = external global %struct._typeobject, align 8
@__func__.pycore_init_builtins = private unnamed_addr constant [21 x i8] c"pycore_init_builtins\00", align 1
@.str.163 = private unnamed_addr constant [24 x i8] c"failed to init slotdefs\00", align 1
@.str.164 = private unnamed_addr constant [37 x i8] c"failed to add exceptions to builtins\00", align 1
@.str.165 = private unnamed_addr constant [33 x i8] c"can't initialize builtins module\00", align 1
@__func__.pyinit_core_reconfigure = private unnamed_addr constant [24 x i8] c"pyinit_core_reconfigure\00", align 1
@.str.166 = private unnamed_addr constant [28 x i8] c"failed to read thread state\00", align 1
@.str.167 = private unnamed_addr constant [28 x i8] c"can't make main interpreter\00", align 1
@__func__.pyinit_main = private unnamed_addr constant [12 x i8] c"pyinit_main\00", align 1
@.str.168 = private unnamed_addr constant [29 x i8] c"runtime core not initialized\00", align 1
@__func__.pyinit_main_reconfigure = private unnamed_addr constant [24 x i8] c"pyinit_main_reconfigure\00", align 1
@.str.169 = private unnamed_addr constant [27 x i8] c"fail to reconfigure Python\00", align 1
@__func__.init_interp_main = private unnamed_addr constant [17 x i8] c"init_interp_main\00", align 1
@.str.170 = private unnamed_addr constant [35 x i8] c"failed to update the Python config\00", align 1
@.str.171 = private unnamed_addr constant [25 x i8] c"can't initialize signals\00", align 1
@.str.172 = private unnamed_addr constant [24 x i8] c"can't start tracemalloc\00", align 1
@_Py_perfmap_callbacks = external global %struct._PyPerf_Callbacks, align 8
@_Py_perfmap_jit_callbacks = external global %struct._PyPerf_Callbacks, align 8
@.str.173 = private unnamed_addr constant [37 x i8] c"can't initialize the perf trampoline\00", align 1
@.str.174 = private unnamed_addr constant [12 x i8] c"warnoptions\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"warnings\00", align 1
@.str.176 = private unnamed_addr constant [38 x i8] c"'import warnings' failed; traceback:\0A\00", align 1
@.str.177 = private unnamed_addr constant [32 x i8] c"failed to set lazy imports mode\00", align 1
@.str.178 = private unnamed_addr constant [29 x i8] c"can't initialize sys.path[0]\00", align 1
@.str.179 = private unnamed_addr constant [35 x i8] c"failed to set builtin dict watcher\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@__func__.init_sys_streams = private unnamed_addr constant [17 x i8] c"init_sys_streams\00", align 1
@.str.180 = private unnamed_addr constant [40 x i8] c"<stdin> is a directory, cannot continue\00", align 1
@.str.181 = private unnamed_addr constant [4 x i8] c"_io\00", align 1
@.str.182 = private unnamed_addr constant [10 x i8] c"__stdin__\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.183 = private unnamed_addr constant [9 x i8] c"<stdout>\00", align 1
@.str.184 = private unnamed_addr constant [11 x i8] c"__stdout__\00", align 1
@.str.185 = private unnamed_addr constant [9 x i8] c"<stderr>\00", align 1
@.str.186 = private unnamed_addr constant [17 x i32] [i32 98, i32 97, i32 99, i32 107, i32 115, i32 108, i32 97, i32 115, i32 104, i32 114, i32 101, i32 112, i32 108, i32 97, i32 99, i32 101, i32 0], align 4
@.str.187 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.188 = private unnamed_addr constant [11 x i8] c"__stderr__\00", align 1
@.str.189 = private unnamed_addr constant [38 x i8] c"can't initialize sys standard streams\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.190 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.191 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.192 = private unnamed_addr constant [8 x i8] c"isiOOOO\00", align 1
@_Py_FalseStruct = external global %struct._longobject, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@.str.193 = private unnamed_addr constant [7 x i8] c"OOOsOO\00", align 1
@.str.194 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.195 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@PyExc_OSError = external local_unnamed_addr global ptr, align 8
@.str.196 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@__func__.init_set_builtins_open = private unnamed_addr constant [23 x i8] c"init_set_builtins_open\00", align 1
@.str.197 = private unnamed_addr constant [25 x i8] c"can't initialize io.open\00", align 1
@__func__.add_main_module = private unnamed_addr constant [16 x i8] c"add_main_module\00", align 1
@.str.198 = private unnamed_addr constant [29 x i8] c"can't create __main__ module\00", align 1
@.str.199 = private unnamed_addr constant [13 x i8] c"__builtins__\00", align 1
@.str.200 = private unnamed_addr constant [37 x i8] c"Failed to test __main__.__builtins__\00", align 1
@.str.201 = private unnamed_addr constant [35 x i8] c"Failed to retrieve builtins module\00", align 1
@.str.202 = private unnamed_addr constant [43 x i8] c"Failed to initialize __main__.__builtins__\00", align 1
@.str.203 = private unnamed_addr constant [11 x i8] c"__loader__\00", align 1
@.str.204 = private unnamed_addr constant [35 x i8] c"Failed to test __main__.__loader__\00", align 1
@.str.205 = private unnamed_addr constant [16 x i8] c"BuiltinImporter\00", align 1
@.str.206 = private unnamed_addr constant [35 x i8] c"Failed to retrieve BuiltinImporter\00", align 1
@.str.207 = private unnamed_addr constant [41 x i8] c"Failed to initialize __main__.__loader__\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"site\00", align 1
@__func__.init_import_site = private unnamed_addr constant [17 x i8] c"init_import_site\00", align 1
@.str.209 = private unnamed_addr constant [33 x i8] c"Failed to import the site module\00", align 1
@.str.210 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.211 = private unnamed_addr constant [237 x i8] c"Python runtime initialized with LC_CTYPE=C (a locale with default ASCII encoding), which may cause Unicode compatibility problems. Using C.UTF-8, C.utf8, or UTF-8 (if available) as alternative Unicode-compatible locales is recommended.\0A\00", align 1
@_Py_tss_interp = external thread_local local_unnamed_addr global ptr, align 8
@_Py_tss_tstate = external thread_local local_unnamed_addr global ptr, align 8
@.str.212 = private unnamed_addr constant [44 x i8] c"Exception ignored while flushing sys.stdout\00", align 1
@.str.213 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@__func__.new_interpreter = private unnamed_addr constant [16 x i8] c"new_interpreter\00", align 1
@.str.214 = private unnamed_addr constant [35 x i8] c"Py_Initialize must be called first\00", align 1
@.str.215 = private unnamed_addr constant [40 x i8] c"Exception ignored on threading shutdown\00", align 1
@PyExc_RuntimeWarning = external local_unnamed_addr global ptr, align 8
@.str.216 = private unnamed_addr constant [63 x i8] c"remaining subinterpreters; close them with Interpreter.close()\00", align 1
@__func__.finalize_subinterpreters = private unnamed_addr constant [25 x i8] c"finalize_subinterpreters\00", align 1
@.str.217 = private unnamed_addr constant [31 x i8] c"thread state allocation failed\00", align 1
@.str.218 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@.str.220 = private unnamed_addr constant [4 x i8] c"ps1\00", align 1
@.str.221 = private unnamed_addr constant [4 x i8] c"ps2\00", align 1
@.str.222 = private unnamed_addr constant [9 x i8] c"last_exc\00", align 1
@.str.223 = private unnamed_addr constant [10 x i8] c"last_type\00", align 1
@.str.224 = private unnamed_addr constant [11 x i8] c"last_value\00", align 1
@.str.225 = private unnamed_addr constant [15 x i8] c"last_traceback\00", align 1
@.str.226 = private unnamed_addr constant [20 x i8] c"__interactivehook__\00", align 1
@.str.227 = private unnamed_addr constant [10 x i8] c"meta_path\00", align 1
@.str.228 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.229 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.230 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.231 = private unnamed_addr constant [20 x i8] c"# clear builtins._\0A\00", align 1
@.str.232 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.233 = private unnamed_addr constant [51 x i8] c"Exception ignored while setting builtin variable _\00", align 1
@.str.234 = private unnamed_addr constant [40 x i8] c"Exception ignored while clearing sys.%s\00", align 1
@.str.235 = private unnamed_addr constant [18 x i8] c"# restore sys.%s\0A\00", align 1
@.str.236 = private unnamed_addr constant [41 x i8] c"Exception ignored while restoring sys.%s\00", align 1
@.str.237 = private unnamed_addr constant [41 x i8] c"Exception ignored while removing modules\00", align 1
@PyDict_Type = external global %struct._typeobject, align 8
@PyModule_Type = external global %struct._typeobject, align 8
@.str.238 = private unnamed_addr constant [26 x i8] c"# cleanup[2] removing %U\0A\00", align 1
@.str.239 = private unnamed_addr constant [45 x i8] c"Exception ignored while clearing sys.modules\00", align 1
@.str.240 = private unnamed_addr constant [43 x i8] c"Exception ignored while restoring builtins\00", align 1
@.str.241 = private unnamed_addr constant [24 x i8] c"# cleanup[3] wiping %U\0A\00", align 1
@.str.242 = private unnamed_addr constant [25 x i8] c"# cleanup[3] wiping sys\0A\00", align 1
@.str.243 = private unnamed_addr constant [30 x i8] c"# cleanup[3] wiping builtins\0A\00", align 1
@fatal_error.reentrant = internal unnamed_addr global i1 false, align 4
@.str.244 = private unnamed_addr constant [18 x i8] c"<message not set>\00", align 1
@.str.245 = private unnamed_addr constant [23 x i8] c"Python runtime state: \00", align 1
@.str.246 = private unnamed_addr constant [22 x i8] c"finalizing (tstate=0x\00", align 1
@.str.247 = private unnamed_addr constant [12 x i8] c"initialized\00", align 1
@.str.248 = private unnamed_addr constant [17 x i8] c"core initialized\00", align 1
@.str.249 = private unnamed_addr constant [15 x i8] c"preinitialized\00", align 1
@.str.250 = private unnamed_addr constant [16 x i8] c"preinitializing\00", align 1
@.str.251 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @_PyRuntime], section "llvm.metadata"

declare ptr @_PyMem_RawMalloc(ptr noundef, i64 noundef) #0

declare ptr @_PyMem_RawCalloc(ptr noundef, i64 noundef, i64 noundef) #0

declare ptr @_PyMem_RawRealloc(ptr noundef, ptr noundef, i64 noundef) #0

declare void @_PyMem_RawFree(ptr noundef, ptr noundef) #0

declare ptr @_PyObject_Malloc(ptr noundef, i64 noundef) #0

declare ptr @_PyObject_Calloc(ptr noundef, i64 noundef, i64 noundef) #0

declare ptr @_PyObject_Realloc(ptr noundef, ptr noundef, i64 noundef) #0

declare void @_PyObject_Free(ptr noundef, ptr noundef) #0

declare ptr @_PyMem_ArenaAlloc(ptr noundef, i64 noundef) #0

declare void @_PyMem_ArenaFree(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @_PyRuntime_Initialize(ptr dead_on_unwind noalias writable sret(%struct.PyStatus) align 8 %0) local_unnamed_addr #1 {
bb.a:
  %.b = load i1, ptr @runtime_initialized, align 4
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i1 true, ptr @runtime_initialized, align 4
  tail call void @_PyRuntimeState_Init(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8 %0, ptr noundef nonnull @_PyRuntime) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @_PyRuntimeState_Init(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define hidden void @_PyRuntime_Finalize() local_unnamed_addr #1 {
bb.a:
  tail call void @_PyRuntimeState_Fini(ptr noundef nonnull @_PyRuntime) #23
  store i1 false, ptr @runtime_initialized, align 4
  ret void
}

declare void @_PyRuntimeState_Fini(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @Py_IsFinalizing() local_unnamed_addr #3 {
bb.a:
  %i.a = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 848) monotonic, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

declare i32 @PyOS_mystrnicmp(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @_Py_IsCoreInitialized() local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 836), align 4, !tbaa !11
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @Py_IsInitialized() local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 840), align 8, !tbaa !187
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_Py_LegacyLocaleDetected(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.129) #23 ; 2 uses
  %.not9 = icmp eq ptr %i.a, null
  br i1 %.not9, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i8, ptr %i.a, align 1, !tbaa !188
  %.not10 = icmp eq i8 %i.b, 0
  br i1 %.not10, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  %i.c = tail call ptr @setlocale(i32 noundef 0, ptr noundef null) #23 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %sub_0

sub_0:                                            ; preds = %.thread
  %i.e = load i8, ptr %i.c, align 1
  %.not12 = icmp eq i8 %i.e, 67
  br i1 %.not12, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(6) @.str.131) #24
  %i.j = icmp eq i32 %i.i, 0
  %i.k = zext i1 %i.j to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread, %.tail.thread, %.tail
  %.2 = phi i32 [ %i.k, %.tail.thread ], [ 0, %.thread ], [ 1, %.tail ], [ 0, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @_Py_IsLocaleCoercionTarget(ptr noundef readonly captures(none) %0) local_unnamed_addr #9 {
.lr.ph.preheader:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.149) #24
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.150) #24
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.151) #24
  %i.f = icmp eq i32 %i.e, 0
  %spec.select = select i1 %i.f, i32 1, i32 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %.04.ph = phi i32 [ 1, %.lr.ph.preheader ], [ %spec.select, %.lr.ph.2 ], [ 1, %.lr.ph.1 ]
  ret i32 %.04.ph
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_Py_CoerceLegacyLocale(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @setlocale(i32 noundef 0, ptr noundef null) #23
  %i.b = tail call ptr @_PyMem_RawStrdup(ptr noundef %i.a) #23 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.129) #23 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.lr.ph, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !188
  %.not44 = icmp eq i8 %i.f, 0
  br i1 %.not44, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.c, %bb.b
  %i.g = tail call ptr @setlocale(i32 noundef 0, ptr noundef nonnull @.str.149) #23
  %.not27 = icmp eq ptr %i.g, null
  br i1 %.not27, label %_coerce_default_locale_settings.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.h = tail call ptr @nl_langinfo(i32 noundef 14) #23 ; 2 uses
  %.not28 = icmp eq ptr %i.h, null
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %i.h, align 1, !tbaa !188
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = tail call ptr @setlocale(i32 noundef 0, ptr noundef nonnull @.str.132) #23 ; 0 uses
  tail call void @_Py_ResetForceASCII() #23
  br label %_coerce_default_locale_settings.exit

bb.g:                                             ; preds = %bb.p, %bb.m, %bb.e
  %.01735.lcssa = phi ptr [ @_TARGET_LOCALES, %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_TARGET_LOCALES, i64 8), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @_TARGET_LOCALES, i64 16), %bb.p ]
  %.017.val = load ptr, ptr %.01735.lcssa, align 8, !tbaa !189 ; 2 uses
  %i.l = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.132) #23 ; 0 uses
  tail call void @_Py_ResetForceASCII() #23
  %i.m = tail call i32 @setenv(ptr noundef nonnull @.str.152, ptr noundef %.017.val, i32 noundef 1) #23
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !191
  %i.o = tail call i64 @fwrite(ptr nonnull @.str.153, i64 51, i64 1, ptr %i.n) #25 ; 0 uses
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %.not4.i = icmp eq i32 %0, 0
  br i1 %.not4.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !191
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @C_LOCALE_COERCION_WARNING, ptr noundef %.017.val) #26 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.132) #23 ; 0 uses
  tail call void @_Py_ResetForceASCII() #23
  br label %bb.r

_coerce_default_locale_settings.exit:             ; preds = %bb.f, %.lr.ph
  %i.s = tail call ptr @setlocale(i32 noundef 0, ptr noundef nonnull @.str.150) #23
  %.not27.1 = icmp eq ptr %i.s, null
  br i1 %.not27.1, label %_coerce_default_locale_settings.exit.1, label %bb.l

bb.l:                                             ; preds = %_coerce_default_locale_settings.exit
  %i.t = tail call ptr @nl_langinfo(i32 noundef 14) #23 ; 2 uses
  %.not28.1 = icmp eq ptr %i.t, null
  br i1 %.not28.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = load i8, ptr %i.t, align 1, !tbaa !188
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.n, label %bb.g

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.w = tail call ptr @setlocale(i32 noundef 0, ptr noundef nonnull @.str.132) #23 ; 0 uses
  tail call void @_Py_ResetForceASCII() #23
  br label %_coerce_default_locale_settings.exit.1

_coerce_default_locale_settings.exit.1:           ; preds = %bb.n, %_coerce_default_locale_settings.exit
  %i.x = tail call ptr @setlocale(i32 noundef 0, ptr noundef nonnull @.str.151) #23
  %.not27.2 = icmp eq ptr %i.x, null
  br i1 %.not27.2, label %.thread, label %bb.o

bb.o:                                             ; preds = %_coerce_default_locale_settings.exit.1
  %i.y = tail call ptr @nl_langinfo(i32 noundef 14) #23 ; 2 uses
  %.not28.2 = icmp eq ptr %i.y, null
  br i1 %.not28.2, label %bb.q, label %bb.p
end_hunk_0
begin_hunk_1_@finalize_modules:bb.a

bb.et:                                            ; preds = %bb.ep, %_PyWeakref_GET_REF.exit.us.i
  %.not.i21.us.i = icmp sgt i32 %i.iu, -1
  br i1 %.not.i21.us.i, label %bb.eu, label %Py_DECREF.exit22.us.i

bb.eu:                                            ; preds = %bb.et
  %i.jd = add nsw i32 %i.iu, -1
  store i32 %i.jd, ptr %.val26.us.i, align 8, !tbaa !188
  br label %Py_DECREF.exit22.us.i

Py_DECREF.exit22.us.i:                            ; preds = %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.em, %.lr.ph.split.us.i
  %.0.us.i = add nsw i64 %.030.us.i, -1
  %i.je = icmp sgt i64 %.030.us.i, 0
  br i1 %i.je, label %.lr.ph.split.us.i, label %finalize_modules_clear_weaklist.exit, !llvm.loop !319

.lr.ph.split.i:                                   ; preds = %.lr.ph.i38, %Py_DECREF.exit22.i
  %.030.i = phi i64 [ %.0.i, %Py_DECREF.exit22.i ], [ %.029.i, %.lr.ph.i38 ] ; 3 uses
  %i.jf = load ptr, ptr %i.ij, align 8, !tbaa !312
  %i.jg = getelementptr [8 x i8], ptr %i.jf, i64 %.030.i
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !287 ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 32
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !287 ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jh, i64 40
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !287
  %i.jm = getelementptr i8, ptr %i.jl, i64 16
  %.val26.i = load ptr, ptr %i.jm, align 8, !tbaa !314 ; 9 uses
  %i.jn = icmp eq ptr %.val26.i, @_Py_NoneStruct
  br i1 %i.jn, label %Py_DECREF.exit22.i, label %bb.ev

bb.ev:                                            ; preds = %.lr.ph.split.i
  %.val.i.i.i = load i32, ptr %.val26.i, align 8, !tbaa !188 ; 4 uses
  %.not.i.i.i40 = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i40, label %Py_DECREF.exit22.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.jo = icmp ugt i32 %.val.i.i.i, -1073741825
  br i1 %i.jo, label %_PyWeakref_GET_REF.exit.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.jp = add nuw i32 %.val.i.i.i, 1              ; 2 uses
  store i32 %i.jp, ptr %.val26.i, align 8, !tbaa !188
  br label %_PyWeakref_GET_REF.exit.i

_PyWeakref_GET_REF.exit.i:                        ; preds = %bb.ex, %bb.ew
  %i.jq = phi i32 [ %i.jp, %bb.ex ], [ %.val.i.i.i, %bb.ew ] ; 2 uses
  %i.jr = getelementptr i8, ptr %.val26.i, i64 16
  %.val27.i = load ptr, ptr %i.jr, align 8, !tbaa !317 ; 2 uses
  %i.js = load ptr, ptr %i.j, align 8, !tbaa !300
  %i.jt = icmp eq ptr %.val27.i, %i.js
  br i1 %i.jt, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %_PyWeakref_GET_REF.exit.i
  %i.ju = load ptr, ptr %i.ik, align 8, !tbaa !302
  %i.jv = icmp eq ptr %.val27.i, %i.ju
  br i1 %i.jv, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %bb.ey, %_PyWeakref_GET_REF.exit.i
  %.not.i21.i = icmp sgt i32 %i.jq, -1
  br i1 %.not.i21.i, label %bb.fa, label %Py_DECREF.exit22.i

bb.fa:                                            ; preds = %bb.ez
  %i.jw = add nsw i32 %i.jq, -1
  store i32 %i.jw, ptr %.val26.i, align 8, !tbaa !188
  br label %Py_DECREF.exit22.i

bb.fb:                                            ; preds = %bb.ey
  %i.jx = getelementptr i8, ptr %i.jj, i64 8
  %.val.i41 = load ptr, ptr %i.jx, align 8, !tbaa !284
  %i.jy = getelementptr i8, ptr %.val.i41, i64 168
  %.val24.i = load i64, ptr %i.jy, align 8, !tbaa !305
  %i.jz = and i64 %.val24.i, 268435456
  %.not20.i = icmp eq i64 %i.jz, 0
  br i1 %.not20.i, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void (ptr, ...) @PySys_FormatStderr(ptr noundef nonnull @.str.241, ptr noundef nonnull %i.jj) #23
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  call void @_PyModule_Clear(ptr noundef nonnull %.val26.i) #23
  %i.ka = load i32, ptr %.val26.i, align 8, !tbaa !188 ; 2 uses
  %.not.i.i42 = icmp sgt i32 %i.ka, -1
  br i1 %.not.i.i42, label %bb.fe, label %Py_DECREF.exit22.i

bb.fe:                                            ; preds = %bb.fd
  %i.kb = add nsw i32 %i.ka, -1                   ; 2 uses
  store i32 %i.kb, ptr %.val26.i, align 8, !tbaa !188
  %i.kc = icmp eq i32 %i.kb, 0
  br i1 %i.kc, label %bb.ff, label %Py_DECREF.exit22.i

bb.ff:                                            ; preds = %bb.fe
  call void @_Py_Dealloc(ptr noundef nonnull %.val26.i) #23
  br label %Py_DECREF.exit22.i

Py_DECREF.exit22.i:                               ; preds = %bb.ff, %bb.fe, %bb.fd, %bb.fa, %bb.ez, %bb.ev, %.lr.ph.split.i
  %.0.i = add nsw i64 %.030.i, -1
  %i.kd = icmp sgt i64 %.030.i, 0
  br i1 %i.kd, label %.lr.ph.split.i, label %finalize_modules_clear_weaklist.exit, !llvm.loop !319

finalize_modules_clear_weaklist.exit:             ; preds = %Py_DECREF.exit22.i, %Py_DECREF.exit22.us.i, %bb.el
  %i.ke = load i32, ptr %i.ej, align 8, !tbaa !188 ; 2 uses
  %.not.i = icmp sgt i32 %i.ke, -1
  br i1 %.not.i, label %bb.fg, label %Py_DECREF.exit

bb.fg:                                            ; preds = %finalize_modules_clear_weaklist.exit
  %i.kf = add nsw i32 %i.ke, -1                   ; 2 uses
  store i32 %i.kf, ptr %i.ej, align 8, !tbaa !188
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %bb.fh, label %Py_DECREF.exit

bb.fh:                                            ; preds = %bb.fg
  call void @_Py_Dealloc(ptr noundef nonnull %i.ej) #23
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.fh, %bb.fg, %finalize_modules_clear_weaklist.exit, %finalize_restore_builtins.exit
  br i1 %.not.i27, label %.critedge.i, label %bb.fi

bb.fi:                                            ; preds = %Py_DECREF.exit
  call void (ptr, ...) @PySys_FormatStderr(ptr noundef nonnull @.str.242) #23
  %i.kh = getelementptr i8, ptr %i.g, i64 7680
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !302
  call void @_PyModule_ClearDict(ptr noundef %i.ki) #23
  call void (ptr, ...) @PySys_FormatStderr(ptr noundef nonnull @.str.243) #23
  br label %finalize_clear_sys_builtins_dict.exit

.critedge.i:                                      ; preds = %Py_DECREF.exit
  %i.kj = getelementptr i8, ptr %i.g, i64 7680
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !302
  call void @_PyModule_ClearDict(ptr noundef %i.kk) #23
  br label %finalize_clear_sys_builtins_dict.exit

finalize_clear_sys_builtins_dict.exit:            ; preds = %bb.fi, %.critedge.i
  %i.kl = load ptr, ptr %i.j, align 8, !tbaa !300
  call void @_PyModule_ClearDict(ptr noundef %i.kl) #23
  call void @_PyImport_ClearModulesByIndex(ptr noundef nonnull %i.g) #23
  call void @_PyImport_ClearLazyModules(ptr noundef nonnull %i.g) #23
  call void @_PyImport_ClearModules(ptr noundef nonnull %i.g) #23
  call void @_PyGC_CollectNoFail(ptr noundef nonnull %0) #23
  br label %bb.fj

bb.fj:                                            ; preds = %bb.c, %finalize_clear_sys_builtins_dict.exit
  ret void
}

declare void @_PyImport_FiniCore(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc void @finalize_interp_clear(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !236
  %i.c = tail call ptr @_PyInterpreterState_Main() #23
  %.not = icmp eq ptr %i.b, %i.c
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !236
  tail call void @_PyXI_Fini(ptr noundef %i.d) #23
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !236
  tail call void @_PyExc_ClearExceptionGroupType(ptr noundef %i.e) #23
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !236
  tail call void @_Py_clear_generic_types(ptr noundef %i.f) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !236
  tail call void @_PyTypes_FiniCachedDescriptors(ptr noundef %i.g) #23
  tail call void @_PyInterpreterState_Clear(ptr noundef %0) #23
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  tail call void @_PySys_ClearAuditHooks(ptr noundef nonnull %0) #23
  tail call void @_Py_HashRandomization_Fini() #23
  tail call void @_PyArg_Fini() #23
  tail call void @_Py_ClearFileSystemEncoding() #23
  %i.h = tail call i32 @_PyPerfTrampoline_Fini() #23 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !236  ; 14 uses
  tail call void @_PyTypes_FiniExtTypes(ptr noundef %i.i) #23
  tail call void @_PyUnicode_FiniTypes(ptr noundef %i.i) #23
  tail call void @_PySys_FiniTypes(ptr noundef %i.i) #23
  tail call void @_PyXI_FiniTypes(ptr noundef %i.i) #23
  tail call void @_PyExc_Fini(ptr noundef %i.i) #23
  tail call void @_PyFloat_FiniType(ptr noundef %i.i) #23
  tail call void @_PyLong_FiniTypes(ptr noundef %i.i) #23
  tail call void @_PyThread_FiniType(ptr noundef %i.i) #23
  tail call void @_PyErr_FiniTypes(ptr noundef %i.i) #23
  tail call void @_PyTypes_FiniTypes(ptr noundef %i.i) #23
  tail call void @_PyTypes_Fini(ptr noundef %i.i) #23
  tail call void @_PyCode_Fini(ptr noundef %i.i) #23
  tail call void @_PyUnicode_ClearInterned(ptr noundef %i.i) #23
  tail call void @_PyUnicode_Fini(ptr noundef %i.i) #23
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !266
  %i.l = getelementptr i8, ptr %i.k, i64 11168
  tail call void @_PyObject_ClearFreeLists(ptr noundef %i.l, i32 noundef 1) #23
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !236
  tail call void @_PyDtoa_Fini(ptr noundef %i.m) #23
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !236
  tail call void @_PyMem_FiniDelayed(ptr noundef %i.n) #23
  tail call void @_PyThreadState_ClearMimallocHeaps(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @_Py_IsInterpreterFinalizing(ptr noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 848) monotonic, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 7384
  %i.d = load atomic ptr, ptr %i.c monotonic, align 8
  %i.e = icmp ne ptr %i.d, null
  %i.f = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.f, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_DumpExtensionModules(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 16 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = icmp eq ptr %1, null
  br i1 %i.g, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @_PyImport_GetModules(ptr noundef nonnull %1) #23 ; 7 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val67 = load ptr, ptr %i.j, align 8, !tbaa !284
  %i.k = getelementptr i8, ptr %.val67, i64 168
  %.val71 = load i64, ptr %i.k, align 8, !tbaa !305
  %i.l = and i64 %.val71, 536870912
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.y, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.m = getelementptr i8, ptr %1, i64 7680       ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !302  ; 2 uses
  %.not48 = icmp eq ptr %i.n, null
  br i1 %.not48, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.a, align 8, !tbaa !303
  %i.o = call i32 @_PyDict_Next(ptr noundef nonnull %i.n, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null) #23
  %.not4981 = icmp eq i32 %i.o, 0
  br i1 %.not4981, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !287  ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val66 = load ptr, ptr %i.q, align 8, !tbaa !284
  %i.r = getelementptr i8, ptr %.val66, i64 168
  %.val70 = load i64, ptr %i.r, align 8, !tbaa !305
  %i.s = and i64 %.val70, 268435456
  %.not50 = icmp eq i64 %i.s, 0
  br i1 %.not50, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.t = call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.137) #23
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !302
  %i.w = call i32 @_PyDict_Next(ptr noundef %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null) #23
  %.not49 = icmp eq i32 %i.w, 0
  br i1 %.not49, label %.thread, label %.lr.ph, !llvm.loop !320

bb.h:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !287  ; 4 uses
  %.not51 = icmp eq ptr %i.x, null
  br i1 %.not51, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.136.val72 = load ptr, ptr %i.y, align 8, !tbaa !284 ; 2 uses
  %.not77 = icmp eq ptr %.136.val72, @PyFrozenSet_Type
  br i1 %.not77, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = call i32 @PyType_IsSubtype(ptr noundef %.136.val72, ptr noundef nonnull @PyFrozenSet_Type) #23
  %.not53 = icmp eq i32 %i.z, 0
  %spec.select = select i1 %.not53, ptr null, ptr %i.x
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.e, %bb.d, %bb.j, %bb.i, %bb.h
  %.237 = phi ptr [ %i.x, %bb.i ], [ %spec.select, %bb.j ], [ null, %bb.h ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.g ]
  %.237.fr = freeze ptr %.237                     ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !303
  %i.aa = call i32 @_PyDict_Next(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null) #23
  %.not548285 = icmp eq i32 %i.aa, 0
  br i1 %.not548285, label %.outer79._crit_edge.thread, label %.lr.ph83.lr.ph

.lr.ph83.lr.ph:                                   ; preds = %.thread
  %.not58 = icmp eq ptr %.237.fr, null
  br i1 %.not58, label %.lr.ph83.us, label %.lr.ph83

.lr.ph83.us:                                      ; preds = %.lr.ph83.lr.ph, %.outer79.us
  %.not62.us = phi i1 [ true, %.outer79.us ], [ false, %.lr.ph83.lr.ph ]
  %.044.ph86.us = phi i64 [ %i.ae, %.outer79.us ], [ 0, %.lr.ph83.lr.ph ] ; 2 uses
  br label %bb.m

bb.k:                                             ; preds = %.split.us.us
  %i.ab = call i64 @_Py_write_noraise(i32 noundef %0, ptr noundef nonnull @.str.138, i64 noundef 20) #23 ; 0 uses
  br label %.outer79.us

bb.l:                                             ; preds = %.split.us.us
  %i.ac = call i64 @_Py_write_noraise(i32 noundef %0, ptr noundef nonnull @.str.139, i64 noundef 2) #23 ; 0 uses
  br label %.outer79.us

.outer79.us:                                      ; preds = %bb.l, %bb.k
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !287
  call void @_Py_DumpASCII(i32 noundef %0, ptr noundef %i.ad) #23
  %i.ae = add i64 %.044.ph86.us, 1                ; 2 uses
  %i.af = call i32 @_PyDict_Next(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null) #23
  %.not5482.us = icmp eq i32 %i.af, 0
  br i1 %.not5482.us, label %.outer79._crit_edge, label %.lr.ph83.us, !llvm.loop !321

bb.m:                                             ; preds = %.backedge.us.us, %.lr.ph83.us
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !287
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val65.us.us = load ptr, ptr %i.ah, align 8, !tbaa !284
  %i.ai = getelementptr i8, ptr %.val65.us.us, i64 168
  %.val69.us.us = load i64, ptr %i.ai, align 8, !tbaa !305
  %i.aj = and i64 %.val69.us.us, 268435456
  %.not56.us.us = icmp eq i64 %i.aj, 0
  br i1 %.not56.us.us, label %.backedge.us.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !287
  %i.al = call i32 @_PyModule_IsExtension(ptr noundef %i.ak) #23
  %.not57.us.us = icmp eq i32 %i.al, 0
  br i1 %.not57.us.us, label %.backedge.us.us, label %.split.us.us

.backedge.us.us:                                  ; preds = %bb.n, %bb.m
  %i.am = call i32 @_PyDict_Next(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null) #23
  %.not54.us.us = icmp eq i32 %i.am, 0
  br i1 %.not54.us.us, label %.outer79._crit_edge, label %bb.m, !llvm.loop !321

.split.us.us:                                     ; preds = %bb.n
  br i1 %.not62.us, label %bb.l, label %bb.k

.lr.ph83:                                         ; preds = %.lr.ph83.lr.ph, %.outer79
  %.not62 = phi i1 [ true, %.outer79 ], [ false, %.lr.ph83.lr.ph ]
  %.044.ph86 = phi i64 [ %i.bk, %.outer79 ], [ 0, %.lr.ph83.lr.ph ] ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph83, %.backedge
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !287
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %.val65 = load ptr, ptr %i.ao, align 8, !tbaa !284
  %i.ap = getelementptr i8, ptr %.val65, i64 168
  %.val69 = load i64, ptr %i.ap, align 8, !tbaa !305
  %i.aq = and i64 %.val69, 268435456
  %.not56 = icmp eq i64 %i.aq, 0
  br i1 %.not56, label %.backedge, label %bb.p

.backedge:                                        ; preds = %.loopexit, %.loopexit.thread, %bb.o, %bb.p
  %i.ar = call i32 @_PyDict_Next(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null) #23
  %.not54 = icmp eq i32 %i.ar, 0
  br i1 %.not54, label %.outer79._crit_edge, label %bb.o, !llvm.loop !321

bb.p:                                             ; preds = %bb.o
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !287
  %i.at = call i32 @_PyModule_IsExtension(ptr noundef %i.as) #23
  %.not57 = icmp eq i32 %i.at, 0
  br i1 %.not57, label %.backedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 0, ptr %i.d, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.q
  %i.au = call i32 @_PySet_NextEntry(ptr noundef nonnull %.237.fr, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #23
  %.not59 = icmp eq i32 %i.au, 0
  br i1 %.not59, label %.split.critedge, label %bb.r

bb.r:                                             ; preds = %.outer
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !287 ; 3 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val = load ptr, ptr %i.aw, align 8, !tbaa !284
  %i.ax = getelementptr i8, ptr %.val, i64 168
  %.val68 = load i64, ptr %i.ax, align 8, !tbaa !305
  %i.ay = and i64 %.val68, 268435456
  %.not60 = icmp eq i64 %i.ay, 0
  br i1 %.not60, label %.outer.backedge, label %bb.s
end_hunk_1
begin_hunk_2_@flush_std_files:bb.a
bb.s:                                             ; preds = %bb.r
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !188
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.t, label %Py_XDECREF.exit18

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.aj) #23
  br label %Py_XDECREF.exit18

Py_XDECREF.exit18:                                ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.1
}

declare void @_PySignal_Fini() local_unnamed_addr #0

declare i64 @PyGC_Collect() local_unnamed_addr #0

declare void @_PyEval_Fini() local_unnamed_addr #0

declare void @_PyTraceMalloc_Fini() local_unnamed_addr #0

declare void @_PyImport_Fini() local_unnamed_addr #0

declare void @_PyFaulthandler_Fini() local_unnamed_addr #0

declare void @_PyHash_Fini() local_unnamed_addr #0

declare i32 @_PyObject_DebugMallocStats(ptr noundef) local_unnamed_addr #0

declare void @_Py_FinalizeAllocatedBlocks(ptr noundef) local_unnamed_addr #0

declare i32 @_Py_IsMainThread() local_unnamed_addr #0

declare ptr @PyThreadState_Swap(ptr noundef) local_unnamed_addr #0

declare i32 @PySys_GetOptionalAttr(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @_PyFile_Flush(ptr noundef) local_unnamed_addr #0

declare void @PyErr_FormatUnraisable(ptr noundef, ...) local_unnamed_addr #0

declare void @_PyThreadState_Detach(ptr noundef) local_unnamed_addr #0

declare void @PyInterpreterState_Delete(ptr noundef) local_unnamed_addr #0

declare void @_PyThreadState_Attach(ptr noundef) local_unnamed_addr #0

declare void @_Py_FinishPendingCalls(ptr noundef) local_unnamed_addr #0

declare void @_PyAtExit_Call(ptr noundef) local_unnamed_addr #0

declare void @_PyEval_StopTheWorldAll(ptr noundef) local_unnamed_addr #0

declare ptr @PyImport_GetModule(ptr noundef) local_unnamed_addr #0

declare void @_PyEval_StopTheWorld(ptr noundef) local_unnamed_addr #0

declare void @_PyEval_StartTheWorld(ptr noundef) local_unnamed_addr #0

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare ptr @_PyThreadState_NewBound(ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @_PyMutex_LockTimed(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

declare void @PyMutex_Unlock(ptr noundef) local_unnamed_addr #0

declare i32 @PyDict_Unwatch(i32 noundef, ptr noundef) local_unnamed_addr #0

declare void @_PyGC_CollectNoFail(ptr noundef) local_unnamed_addr #0

declare void @_PyGC_DumpShutdownStats(ptr noundef) local_unnamed_addr #0

declare void @_PyImport_ClearModulesByIndex(ptr noundef) local_unnamed_addr #0

declare void @_PyImport_ClearLazyModules(ptr noundef) local_unnamed_addr #0

declare void @_PyImport_ClearModules(ptr noundef) local_unnamed_addr #0

declare void @PySys_WriteStderr(ptr noundef, ...) local_unnamed_addr #0

declare i32 @_PySys_ClearAttrString(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #0

declare i32 @PyDict_Next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @PyWeakref_NewRef(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @PyTuple_Pack(i64 noundef, ...) local_unnamed_addr #0

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @PyObject_SetItem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @PyObject_GetIter(ptr noundef) local_unnamed_addr #0

declare ptr @PyIter_Next(ptr noundef) local_unnamed_addr #0

declare ptr @PyObject_GetItem(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @PyErr_Occurred() local_unnamed_addr #0

declare void @PyDict_Clear(ptr noundef) local_unnamed_addr #0

declare i32 @PyDict_Update(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_PyModule_Clear(ptr noundef) local_unnamed_addr #0

declare void @_PyModule_ClearDict(ptr noundef) local_unnamed_addr #0

declare void @_PyXI_Fini(ptr noundef) local_unnamed_addr #0

declare void @_PyExc_ClearExceptionGroupType(ptr noundef) local_unnamed_addr #0

declare void @_Py_clear_generic_types(ptr noundef) local_unnamed_addr #0

declare void @_PyTypes_FiniCachedDescriptors(ptr noundef) local_unnamed_addr #0

declare void @_PyInterpreterState_Clear(ptr noundef) local_unnamed_addr #0

declare void @_PySys_ClearAuditHooks(ptr noundef) local_unnamed_addr #0

declare void @_Py_HashRandomization_Fini() local_unnamed_addr #0

declare void @_PyArg_Fini() local_unnamed_addr #0

declare void @_Py_ClearFileSystemEncoding() local_unnamed_addr #0

declare i32 @_PyPerfTrampoline_Fini() local_unnamed_addr #0

declare void @_PyDtoa_Fini(ptr noundef) local_unnamed_addr #0

declare void @_PyMem_FiniDelayed(ptr noundef) local_unnamed_addr #0

declare void @_PyThreadState_ClearMimallocHeaps(ptr noundef) local_unnamed_addr #0

declare void @_PyTypes_FiniExtTypes(ptr noundef) local_unnamed_addr #0

declare void @_PyUnicode_FiniTypes(ptr noundef) local_unnamed_addr #0

declare void @_PySys_FiniTypes(ptr noundef) local_unnamed_addr #0

declare void @_PyXI_FiniTypes(ptr noundef) local_unnamed_addr #0

declare void @_PyExc_Fini(ptr noundef) local_unnamed_addr #0

declare void @_PyFloat_FiniType(ptr noundef) local_unnamed_addr #0

declare void @_PyLong_FiniTypes(ptr noundef) local_unnamed_addr #0

declare void @_PyThread_FiniType(ptr noundef) local_unnamed_addr #0

declare void @_PyErr_FiniTypes(ptr noundef) local_unnamed_addr #0

declare void @_PyTypes_FiniTypes(ptr noundef) local_unnamed_addr #0

declare void @_PyTypes_Fini(ptr noundef) local_unnamed_addr #0

declare void @_PyCode_Fini(ptr noundef) local_unnamed_addr #0

declare void @_PyUnicode_ClearInterned(ptr noundef) local_unnamed_addr #0

declare void @_PyUnicode_Fini(ptr noundef) local_unnamed_addr #0

declare void @_PyObject_ClearFreeLists(ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @_PyGILState_Fini(ptr noundef) local_unnamed_addr #0

declare ptr @PyGILState_GetThisThreadState() local_unnamed_addr #0

declare void @_Py_DumpHexadecimal(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

declare ptr @_PyErr_GetRaisedException(ptr noundef) local_unnamed_addr #0

declare void @PyErr_DisplayException(ptr noundef) local_unnamed_addr #0

declare ptr @PyException_GetTraceback(ptr noundef) local_unnamed_addr #0

declare ptr @_Py_DumpTracebackThreads(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #20

declare void @PyMutex_Lock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn }
attributes #15 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { cold }
attributes #26 = { cold nounwind }
attributes #27 = { noreturn }
attributes #28 = { noreturn nounwind }

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
!11 = !{!12, !8, i64 836}
!12 = !{!"pyruntimestate", !13, i64 0, !8, i64 824, !8, i64 828, !8, i64 832, !8, i64 836, !8, i64 840, !35, i64 848, !14, i64 856, !37, i64 864, !14, i64 896, !35, i64 904, !40, i64 912, !44, i64 936, !50, i64 1240, !51, i64 1256, !53, i64 1280, !57, i64 1320, !60, i64 2400, !61, i64 2408, !64, i64 2424, !66, i64 2488, !67, i64 2760, !72, i64 2800, !78, i64 10144, !79, i64 10160, !81, i64 10168, !82, i64 10176, !88, i64 10352, !91, i64 10568, !18, i64 10584, !92, i64 10592, !95, i64 10616, !36, i64 10656, !36, i64 10664, !96, i64 10672, !98, i64 10688, !99, i64 10692, !100, i64 10704, !102, i64 10720, !103, i64 14120, !104, i64 14128, !105, i64 14136, !120, i64 119552}
!13 = !{!"_Py_DebugOffsets", !9, i64 0, !14, i64 8, !14, i64 16, !15, i64 24, !16, i64 48, !17, i64 176, !18, i64 296, !19, i64 304, !20, i64 368, !21, i64 456, !22, i64 472, !23, i64 504, !24, i64 528, !25, i64 552, !26, i64 584, !27, i64 608, !28, i64 624, !29, i64 648, !30, i64 672, !31, i64 704, !32, i64 728, !33, i64 760, !34, i64 776}
!14 = !{!"long", !9, i64 0}
!15 = !{!"_runtime_state", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!"_interpreter_state", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120}
!17 = !{!"_thread_state", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112}
!18 = !{!"", !14, i64 0}
!19 = !{!"_interpreter_frame", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56}
!20 = !{!"_code_object", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80}
!21 = !{!"_pyobject", !14, i64 0, !14, i64 8}
!22 = !{!"_type_object", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!23 = !{!"_tuple_object", !14, i64 0, !14, i64 8, !14, i64 16}
!24 = !{!"_list_object", !14, i64 0, !14, i64 8, !14, i64 16}
!25 = !{!"_set_object", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!26 = !{!"_dict_object", !14, i64 0, !14, i64 8, !14, i64 16}
!27 = !{!"_float_object", !14, i64 0, !14, i64 8}
!28 = !{!"_long_object", !14, i64 0, !14, i64 8, !14, i64 16}
!29 = !{!"_bytes_object", !14, i64 0, !14, i64 8, !14, i64 16}
!30 = !{!"_unicode_object", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!31 = !{!"_gc", !14, i64 0, !14, i64 8, !14, i64 16}
!32 = !{!"_gen_object", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!33 = !{!"_llist_node", !14, i64 0, !14, i64 8}
!34 = !{!"_debugger_support", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!35 = !{!"p1 _ZTS3_ts", !36, i64 0}
!36 = !{!"any pointer", !9, i64 0}
!37 = !{!"pyinterpreters", !38, i64 0, !39, i64 8, !39, i64 16, !14, i64 24}
!38 = !{!"PyMutex", !9, i64 0}
!39 = !{!"p1 _ZTS3_is", !36, i64 0}
!40 = !{!"", !41, i64 0}
!41 = !{!"_xid_lookup_state", !42, i64 0}
!42 = !{!"", !8, i64 0, !8, i64 4, !38, i64 8, !43, i64 16}
!43 = !{!"p1 _ZTS12_xid_regitem", !36, i64 0}
!44 = !{!"_pymem_allocators", !38, i64 0, !45, i64 8, !47, i64 128, !8, i64 272, !8, i64 276, !49, i64 280}
!45 = !{!"", !46, i64 0, !46, i64 40, !46, i64 80}
!46 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!47 = !{!"", !48, i64 0, !48, i64 48, !48, i64 96}
!48 = !{!"", !9, i64 0, !46, i64 8}
!49 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!50 = !{!"_obmalloc_global_state", !8, i64 0, !14, i64 8}
!51 = !{!"pyhash_runtime_state", !52, i64 0}
!52 = !{!"", !8, i64 0, !14, i64 8, !14, i64 16}
!53 = !{!"_pythread_runtime_state", !8, i64 0, !54, i64 8, !55, i64 24}
!54 = !{!"", !36, i64 0, !9, i64 8}
!55 = !{!"llist_node", !56, i64 0, !56, i64 8}
!56 = !{!"p1 _ZTS10llist_node", !36, i64 0}
!57 = !{!"_signals_runtime_state", !9, i64 0, !58, i64 1040, !8, i64 1048, !59, i64 1056, !59, i64 1064, !8, i64 1072}
!58 = !{!"", !8, i64 0, !8, i64 4}
!59 = !{!"p1 _ZTS7_object", !36, i64 0}
!60 = !{!"_Py_tss_t", !8, i64 0, !8, i64 4}
!61 = !{!"", !14, i64 0, !62, i64 8}
!62 = !{!"p2 int", !63, i64 0}
!63 = !{!"any p2 pointer", !36, i64 0}
!64 = !{!"_parser_runtime_state", !8, i64 0, !65, i64 8}
!65 = !{!"_expr", !8, i64 0, !9, i64 8, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52}
!66 = !{!"_atexit_runtime_state", !38, i64 0, !9, i64 8, !8, i64 264}
!67 = !{!"_import_runtime_state", !68, i64 0, !14, i64 8, !69, i64 16, !71, i64 32}
!68 = !{!"p1 _ZTS8_inittab", !36, i64 0}
!69 = !{!"", !38, i64 0, !70, i64 8}
!70 = !{!"p1 _ZTS15_Py_hashtable_t", !36, i64 0}
!71 = !{!"p1 omnipotent char", !36, i64 0}
!72 = !{!"_ceval_runtime_state", !73, i64 0, !77, i64 112}
!73 = !{!"", !8, i64 0, !8, i64 4, !14, i64 8, !74, i64 16, !75, i64 24, !76, i64 72, !14, i64 80, !36, i64 88, !14, i64 96, !8, i64 104}
!74 = !{!"p1 _ZTS13code_arena_st", !36, i64 0}
!75 = !{!"trampoline_api_st", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !14, i64 32, !14, i64 40}
!76 = !{!"p1 _ZTS8_IO_FILE", !36, i64 0}
!77 = !{!"_pending_calls", !35, i64 0, !38, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24, !8, i64 7224, !8, i64 7228}
!78 = !{!"_gilstate_runtime_state", !8, i64 0, !39, i64 8}
!79 = !{!"_getargs_runtime_state", !80, i64 0}
!80 = !{!"p1 _ZTS13_PyArg_Parser", !36, i64 0}
!81 = !{!"_fileutils_state", !8, i64 0}
!82 = !{!"_faulthandler_runtime_state", !83, i64 0, !84, i64 40, !86, i64 120, !87, i64 128, !87, i64 152}
!83 = !{!"", !8, i64 0, !59, i64 8, !8, i64 16, !8, i64 20, !39, i64 24, !8, i64 32}
!84 = !{!"", !59, i64 0, !8, i64 8, !85, i64 16, !8, i64 24, !39, i64 32, !8, i64 40, !71, i64 48, !14, i64 56, !36, i64 64, !36, i64 72}
!85 = !{!"long long", !9, i64 0}
!86 = !{!"p1 _ZTS24faulthandler_user_signal", !36, i64 0}
!87 = !{!"", !36, i64 0, !8, i64 8, !14, i64 16}
!88 = !{!"_tracemalloc_runtime_state", !89, i64 0, !45, i64 16, !38, i64 136, !14, i64 144, !14, i64 152, !70, i64 160, !90, i64 168, !70, i64 176, !70, i64 184, !70, i64 192, !90, i64 200, !60, i64 208}
!89 = !{!"_PyTraceMalloc_Config", !8, i64 0, !8, i64 4, !8, i64 8}
!90 = !{!"p1 _ZTS21tracemalloc_traceback", !36, i64 0}
!91 = !{!"_reftracer_runtime_state", !36, i64 0, !36, i64 8}
!92 = !{!"_stoptheworld_state", !38, i64 0, !93, i64 1, !93, i64 2, !93, i64 3, !94, i64 4, !14, i64 8, !35, i64 16}
!93 = !{!"_Bool", !9, i64 0}
!94 = !{!"", !9, i64 0}
!95 = !{!"PyPreConfig", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36}
!96 = !{!"", !38, i64 0, !97, i64 8}
!97 = !{!"p1 _ZTS18_Py_AuditHookEntry", !36, i64 0}
!98 = !{!"_py_object_runtime_state", !8, i64 0}
!99 = !{!"_Py_float_runtime_state", !8, i64 0, !8, i64 4}
!100 = !{!"_Py_unicode_runtime_state", !101, i64 0}
!101 = !{!"_Py_unicode_runtime_ids", !38, i64 0, !14, i64 8}
!102 = !{!"_types_runtime_state", !8, i64 0, !94, i64 8}
!103 = !{!"_Py_time_runtime_state", !9, i64 0}
!104 = !{!"_Py_cached_objects", !70, i64 0}
!105 = !{!"_Py_static_objects", !106, i64 0}
!106 = !{!"", !9, i64 0, !107, i64 32960, !9, i64 33000, !111, i64 45288, !117, i64 105288, !107, i64 105304, !117, i64 105344, !118, i64 105360, !119, i64 105400}
!107 = !{!"", !108, i64 0, !14, i64 24, !9, i64 32}
!108 = !{!"PyVarObject", !109, i64 0, !14, i64 16}
!109 = !{!"_object", !9, i64 0, !110, i64 8}
!110 = !{!"p1 _ZTS11_typeobject", !36, i64 0}
!111 = !{!"_Py_global_strings", !112, i64 0, !116, i64 1336, !9, i64 45664, !9, i64 51808}
!112 = !{!"", !113, i64 0, !113, i64 56, !113, i64 112, !113, i64 168, !113, i64 224, !113, i64 280, !113, i64 328, !113, i64 384, !113, i64 440, !113, i64 496, !113, i64 544, !113, i64 592, !113, i64 640, !113, i64 696, !113, i64 752, !113, i64 800, !113, i64 848, !113, i64 896, !113, i64 952, !113, i64 1008, !113, i64 1064, !113, i64 1128, !113, i64 1184, !113, i64 1232, !113, i64 1288}
!113 = !{!"", !114, i64 0, !9, i64 40}
!114 = !{!"", !109, i64 0, !14, i64 16, !14, i64 24, !115, i64 32}
!115 = !{!"_PyUnicodeObject_state", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!116 = !{!"", !113, i64 0, !113, i64 56, !113, i64 112, !113, i64 168, !113, i64 224, !113, i64 280, !113, i64 336, !113, i64 392, !113, i64 448, !113, i64 504, !113, i64 552, !113, i64 600, !113, i64 656, !113, i64 704, !113, i64 760, !113, i64 816, !113, i64 872, !113, i64 928, !113, i64 984, !113, i64 1032, !113, i64 1080, !113, i64 1136, !113, i64 1184, !113, i64 1240, !113, i64 1304, !113, i64 1360, !113, i64 1416, !113, i64 1464, !113, i64 1528, !113, i64 1576, !113, i64 1632, !113, i64 1688, !113, i64 1744, !113, i64 1792, !113, i64 1840, !113, i64 1896, !113, i64 1952, !113, i64 2016, !113, i64 2072, !113, i64 2136, !113, i64 2192, !113, i64 2248, !113, i64 2304, !113, i64 2360, !113, i64 2416, !113, i64 2472, !113, i64 2528, !113, i64 2584, !113, i64 2640, !113, i64 2696, !113, i64 2752, !113, i64 2808, !113, i64 2872, !113, i64 2928, !113, i64 2984, !113, i64 3048, !113, i64 3104, !113, i64 3176, !113, i64 3232, !113, i64 3304, !113, i64 3352, !113, i64 3408, !113, i64 3464, !113, i64 3520, !113, i64 3576, !113, i64 3632, !113, i64 3680, !113, i64 3736, !113, i64 3784, !113, i64 3840, !113, i64 3888, !113, i64 3944, !113, i64 4000, !113, i64 4056, !113, i64 4112, !113, i64 4168, !113, i64 4224, !113, i64 4280, !113, i64 4336, !113, i64 4384, !113, i64 4432, !113, i64 4488, !113, i64 4552, !113, i64 4608, !113, i64 4664, !113, i64 4720, !113, i64 4784, !113, i64 4840, !113, i64 4888, !113, i64 4944, !113, i64 5000, !113, i64 5056, !113, i64 5112, !113, i64 5168, !113, i64 5224, !113, i64 5280, !113, i64 5336, !113, i64 5392, !113, i64 5448, !113, i64 5504, !113, i64 5568, !113, i64 5632, !113, i64 5680, !113, i64 5736, !113, i64 5784, !113, i64 5840, !113, i64 5896, !113, i64 5960, !113, i64 6016, !113, i64 6072, !113, i64 6128, !113, i64 6184, !113, i64 6240, !113, i64 6304, !113, i64 6352, !113, i64 6400, !113, i64 6456, !113, i64 6512, !113, i64 6568, !113, i64 6624, !113, i64 6672, !113, i64 6728, !113, i64 6784, !113, i64 6840, !113, i64 6896, !113, i64 6944, !113, i64 7000, !113, i64 7056, !113, i64 7104, !113, i64 7160, !113, i64 7208, !113, i64 7256, !113, i64 7304, !113, i64 7360, !113, i64 7416, !113, i64 7472, !113, i64 7528, !113, i64 7576, !113, i64 7632, !113, i64 7688, !113, i64 7744, !113, i64 7800, !113, i64 7856, !113, i64 7904, !113, i64 7952, !113, i64 8008, !113, i64 8064, !113, i64 8120, !113, i64 8176, !113, i64 8232, !113, i64 8288, !113, i64 8344, !113, i64 8408, !113, i64 8464, !113, i64 8520, !113, i64 8576, !113, i64 8632, !113, i64 8688, !113, i64 8744, !113, i64 8800, !113, i64 8848, !113, i64 8904, !113, i64 8960, !113, i64 9016, !113, i64 9072, !113, i64 9128, !113, i64 9184, !113, i64 9240, !113, i64 9288, !113, i64 9344, !113, i64 9400, !113, i64 9456, !113, i64 9512, !113, i64 9568, !113, i64 9624, !113, i64 9680, !113, i64 9736, !113, i64 9800, !113, i64 9848, !113, i64 9896, !113, i64 9960, !113, i64 10024, !113, i64 10080, !113, i64 10136, !113, i64 10192, !113, i64 10272, !113, i64 10344, !113, i64 10408, !113, i64 10480, !113, i64 10544, !113, i64 10608, !113, i64 10664, !113, i64 10712, !113, i64 10768, !113, i64 10824, !113, i64 10872, !113, i64 10928, !113, i64 10984, !113, i64 11040, !113, i64 11112, !113, i64 11168, !113, i64 11224, !113, i64 11280, !113, i64 11336, !113, i64 11400, !113, i64 11456, !113, i64 11512, !113, i64 11568, !113, i64 11624, !113, i64 11680, !113, i64 11736, !113, i64 11784, !113, i64 11840, !113, i64 11904, !113, i64 11960, !113, i64 12016, !113, i64 12064, !113, i64 12128, !113, i64 12192, !113, i64 12248, !113, i64 12296, !113, i64 12360, !113, i64 12408, !113, i64 12472, !113, i64 12528, !113, i64 12584, !113, i64 12640, !113, i64 12696, !113, i64 12752, !113, i64 12808, !113, i64 12872, !113, i64 12944, !113, i64 13008, !113, i64 13056, !113, i64 13128, !113, i64 13200, !113, i64 13256, !113, i64 13304, !113, i64 13352, !113, i64 13400, !113, i64 13448, !113, i64 13512, !113, i64 13560, !113, i64 13616, !113, i64 13672, !113, i64 13720, !113, i64 13768, !113, i64 13816, !113, i64 13872, !113, i64 13928, !113, i64 13976, !113, i64 14024, !113, i64 14072, !113, i64 14120, !113, i64 14168, !113, i64 14224, !113, i64 14272, !113, i64 14336, !113, i64 14384, !113, i64 14432, !113, i64 14480, !113, i64 14536, !113, i64 14592, !113, i64 14648, !113, i64 14696, !113, i64 14744, !113, i64 14792, !113, i64 14848, !113, i64 14904, !113, i64 14960, !113, i64 15008, !113, i64 15064, !113, i64 15112, !113, i64 15160, !113, i64 15216, !113, i64 15272, !113, i64 15328, !113, i64 15376, !113, i64 15424, !113, i64 15480, !113, i64 15536, !113, i64 15592, !113, i64 15648, !113, i64 15696, !113, i64 15752, !113, i64 15800, !113, i64 15856, !113, i64 15920, !113, i64 15976, !113, i64 16024, !113, i64 16080, !113, i64 16144, !113, i64 16208, !113, i64 16256, !113, i64 16304, !113, i64 16352, !113, i64 16416, !113, i64 16472, !113, i64 16528, !113, i64 16584, !113, i64 16632, !113, i64 16680, !113, i64 16736, !113, i64 16792, !113, i64 16840, !113, i64 16896, !113, i64 16944, !113, i64 17008, !113, i64 17056, !113, i64 17104, !113, i64 17152, !113, i64 17200, !113, i64 17248, !113, i64 17296, !113, i64 17352, !113, i64 17408, !113, i64 17456, !113, i64 17512, !113, i64 17576, !113, i64 17632, !113, i64 17688, !113, i64 17744, !113, i64 17800, !113, i64 17864, !113, i64 17920, !113, i64 17968, !113, i64 18024, !113, i64 18080, !113, i64 18144, !113, i64 18200, !113, i64 18256, !113, i64 18312, !113, i64 18360, !113, i64 18416, !113, i64 18472, !113, i64 18520, !113, i64 18576, !113, i64 18632, !113, i64 18688, !113, i64 18736, !113, i64 18784, !113, i64 18832, !113, i64 18888, !113, i64 18944, !113, i64 18992, !113, i64 19040, !113, i64 19088, !113, i64 19136, !113, i64 19184, !113, i64 19240, !113, i64 19288, !113, i64 19336, !113, i64 19400, !113, i64 19448, !113, i64 19504, !113, i64 19552, !113, i64 19600, !113, i64 19648, !113, i64 19696, !113, i64 19744, !113, i64 19792, !113, i64 19840, !113, i64 19896, !113, i64 19944, !113, i64 19992, !113, i64 20048, !113, i64 20104, !113, i64 20160, !113, i64 20208, !113, i64 20256, !113, i64 20320, !113, i64 20368, !113, i64 20424, !113, i64 20480, !113, i64 20528, !113, i64 20576, !113, i64 20632, !113, i64 20688, !113, i64 20736, !113, i64 20784, !113, i64 20832, !113, i64 20888, !113, i64 20936, !113, i64 20992, !113, i64 21048, !113, i64 21104, !113, i64 21160, !113, i64 21216, !113, i64 21264, !113, i64 21320, !113, i64 21368, !113, i64 21424, !113, i64 21480, !113, i64 21536, !113, i64 21584, !113, i64 21640, !113, i64 21688, !113, i64 21736, !113, i64 21784, !113, i64 21840, !113, i64 21888, !113, i64 21936, !113, i64 21992, !113, i64 22040, !113, i64 22096, !113, i64 22152, !113, i64 22208, !113, i64 22272, !113, i64 22320, !113, i64 22368, !113, i64 22424, !113, i64 22472, !113, i64 22528, !113, i64 22584, !113, i64 22632, !113, i64 22688, !113, i64 22736, !113, i64 22784, !113, i64 22832, !113, i64 22880, !113, i64 22928, !113, i64 22976, !113, i64 23024, !113, i64 23072, !113, i64 23120, !113, i64 23176, !113, i64 23232, !113, i64 23280, !113, i64 23336, !113, i64 23392, !113, i64 23440, !113, i64 23488, !113, i64 23536, !113, i64 23592, !113, i64 23648, !113, i64 23696, !113, i64 23744, !113, i64 23792, !113, i64 23848, !113, i64 23904, !113, i64 23952, !113, i64 24008, !113, i64 24064, !113, i64 24120, !113, i64 24176, !113, i64 24232, !113, i64 24288, !113, i64 24336, !113, i64 24384, !113, i64 24440, !113, i64 24488, !113, i64 24536, !113, i64 24584, !113, i64 24640, !113, i64 24688, !113, i64 24744, !113, i64 24800, !113, i64 24856, !113, i64 24912, !113, i64 24960, !113, i64 25016, !113, i64 25064, !113, i64 25112, !113, i64 25168, !113, i64 25216, !113, i64 25264, !113, i64 25320, !113, i64 25376, !113, i64 25432, !113, i64 25480, !113, i64 25528, !113, i64 25576, !113, i64 25624, !113, i64 25672, !113, i64 25720, !113, i64 25768, !113, i64 25816, !113, i64 25872, !113, i64 25920, !113, i64 25976, !113, i64 26024, !113, i64 26080, !113, i64 26136, !113, i64 26184, !113, i64 26240, !113, i64 26296, !113, i64 26344, !113, i64 26400, !113, i64 26448, !113, i64 26504, !113, i64 26560, !113, i64 26616, !113, i64 26664, !113, i64 26720, !113, i64 26776, !113, i64 26832, !113, i64 26888, !113, i64 26936, !113, i64 26992, !113, i64 27040, !113, i64 27096, !113, i64 27152, !113, i64 27208, !113, i64 27256, !113, i64 27312, !113, i64 27368, !113, i64 27416, !113, i64 27472, !113, i64 27520, !113, i64 27576, !113, i64 27632, !113, i64 27680, !113, i64 27736, !113, i64 27792, !113, i64 27848, !113, i64 27896, !113, i64 27944, !113, i64 27992, !113, i64 28040, !113, i64 28096, !113, i64 28152, !113, i64 28200, !113, i64 28248, !113, i64 28304, !113, i64 28352, !113, i64 28400, !113, i64 28448, !113, i64 28496, !113, i64 28544, !113, i64 28592, !113, i64 28640, !113, i64 28688, !113, i64 28744, !113, i64 28792, !113, i64 28840, !113, i64 28896, !113, i64 28952, !113, i64 29008, !113, i64 29064, !113, i64 29120, !113, i64 29168, !113, i64 29224, !113, i64 29272, !113, i64 29320, !113, i64 29368, !113, i64 29416, !113, i64 29464, !113, i64 29512, !113, i64 29568, !113, i64 29616, !113, i64 29664, !113, i64 29712, !113, i64 29760, !113, i64 29808, !113, i64 29864, !113, i64 29912, !113, i64 29968, !113, i64 30016, !113, i64 30064, !113, i64 30112, !113, i64 30168, !113, i64 30224, !113, i64 30280, !113, i64 30328, !113, i64 30376, !113, i64 30424, !113, i64 30480, !113, i64 30536, !113, i64 30592, !113, i64 30648, !113, i64 30696, !113, i64 30752, !113, i64 30808, !113, i64 30856, !113, i64 30912, !113, i64 30968, !113, i64 31024, !113, i64 31072, !113, i64 31120, !113, i64 31168, !113, i64 31216, !113, i64 31264, !113, i64 31320, !113, i64 31368, !113, i64 31416, !113, i64 31464, !113, i64 31512, !113, i64 31560, !113, i64 31608, !113, i64 31656, !113, i64 31712, !113, i64 31776, !113, i64 31840, !113, i64 31888, !113, i64 31944, !113, i64 32008, !113, i64 32064, !113, i64 32112, !113, i64 32160, !113, i64 32208, !113, i64 32264, !113, i64 32320, !113, i64 32368, !113, i64 32424, !113, i64 32472, !113, i64 32520, !113, i64 32576, !113, i64 32632, !113, i64 32680, !113, i64 32728, !113, i64 32776, !113, i64 32824, !113, i64 32872, !113, i64 32920, !113, i64 32968, !113, i64 33016, !113, i64 33072, !113, i64 33128, !113, i64 33184, !113, i64 33240, !113, i64 33304, !113, i64 33360, !113, i64 33408, !113, i64 33456, !113, i64 33504, !113, i64 33552, !113, i64 33600, !113, i64 33656, !113, i64 33712, !113, i64 33760, !113, i64 33808, !113, i64 33856, !113, i64 33904, !113, i64 33952, !113, i64 34008, !113, i64 34056, !113, i64 34112, !113, i64 34160, !113, i64 34208, !113, i64 34256, !113, i64 34312, !113, i64 34360, !113, i64 34416, !113, i64 34464, !113, i64 34512, !113, i64 34560, !113, i64 34616, !113, i64 34672, !113, i64 34720, !113, i64 34776, !113, i64 34824, !113, i64 34880, !113, i64 34928, !113, i64 34976, !113, i64 35024, !113, i64 35072, !113, i64 35120, !113, i64 35168, !113, i64 35224, !113, i64 35288, !113, i64 35344, !113, i64 35400, !113, i64 35464, !113, i64 35528, !113, i64 35576, !113, i64 35632, !113, i64 35680, !113, i64 35728, !113, i64 35776, !113, i64 35832, !113, i64 35880, !113, i64 35936, !113, i64 35992, !113, i64 36040, !113, i64 36088, !113, i64 36136, !113, i64 36192, !113, i64 36240, !113, i64 36296, !113, i64 36352, !113, i64 36408, !113, i64 36464, !113, i64 36512, !113, i64 36568, !113, i64 36632, !113, i64 36688, !113, i64 36736, !113, i64 36784, !113, i64 36832, !113, i64 36880, !113, i64 36928, !113, i64 36976, !113, i64 37024, !113, i64 37080, !113, i64 37136, !113, i64 37184, !113, i64 37240, !113, i64 37296, !113, i64 37344, !113, i64 37392, !113, i64 37448, !113, i64 37504, !113, i64 37552, !113, i64 37616, !113, i64 37672, !113, i64 37728, !113, i64 37776, !113, i64 37824, !113, i64 37872, !113, i64 37936, !113, i64 37984, !113, i64 38040, !113, i64 38096, !113, i64 38144, !113, i64 38192, !113, i64 38240, !113, i64 38296, !113, i64 38352, !113, i64 38408, !113, i64 38456, !113, i64 38512, !113, i64 38560, !113, i64 38616, !113, i64 38672, !113, i64 38728, !113, i64 38776, !113, i64 38824, !113, i64 38872, !113, i64 38928, !113, i64 38976, !113, i64 39024, !113, i64 39072, !113, i64 39128, !113, i64 39192, !113, i64 39264, !113, i64 39312, !113, i64 39360, !113, i64 39408, !113, i64 39456, !113, i64 39520, !113, i64 39568, !113, i64 39616, !113, i64 39672, !113, i64 39728, !113, i64 39784, !113, i64 39832, !113, i64 39888, !113, i64 39944, !113, i64 39992, !113, i64 40040, !113, i64 40088, !113, i64 40136, !113, i64 40184, !113, i64 40232, !113, i64 40280, !113, i64 40336, !113, i64 40392, !113, i64 40448, !113, i64 40496, !113, i64 40552, !113, i64 40600, !113, i64 40648, !113, i64 40704, !113, i64 40776, !113, i64 40824, !113, i64 40872, !113, i64 40928, !113, i64 40976, !113, i64 41040, !113, i64 41088, !113, i64 41144, !113, i64 41200, !113, i64 41256, !113, i64 41304, !113, i64 41352, !113, i64 41408, !113, i64 41456, !113, i64 41504, !113, i64 41552, !113, i64 41608, !113, i64 41656, !113, i64 41704, !113, i64 41752, !113, i64 41800, !113, i64 41848, !113, i64 41904, !113, i64 41960, !113, i64 42016, !113, i64 42072, !113, i64 42128, !113, i64 42176, !113, i64 42232, !113, i64 42288, !113, i64 42344, !113, i64 42392, !113, i64 42440, !113, i64 42496, !113, i64 42544, !113, i64 42592, !113, i64 42640, !113, i64 42696, !113, i64 42744, !113, i64 42792, !113, i64 42840, !113, i64 42888, !113, i64 42944, !113, i64 42992, !113, i64 43048, !113, i64 43096, !113, i64 43144, !113, i64 43200, !113, i64 43248, !113, i64 43296, !113, i64 43344, !113, i64 43392, !113, i64 43448, !113, i64 43512, !113, i64 43568, !113, i64 43624, !113, i64 43672, !113, i64 43720, !113, i64 43768, !113, i64 43816, !113, i64 43864, !113, i64 43912, !113, i64 43968, !113, i64 44016, !113, i64 44072, !113, i64 44120, !113, i64 44176, !113, i64 44224, !113, i64 44272}
!117 = !{!"", !14, i64 0, !14, i64 8}
!118 = !{!"", !108, i64 0, !8, i64 24, !9, i64 32}
!119 = !{!"", !109, i64 0}
!120 = !{!"_is", !121, i64 0, !39, i64 7264, !14, i64 7272, !14, i64 7280, !8, i64 7288, !14, i64 7296, !8, i64 7304, !8, i64 7308, !8, i64 7312, !14, i64 7320, !123, i64 7328, !125, i64 7376, !35, i64 7384, !14, i64 7392, !126, i64 7400, !59, i64 7680, !59, i64 7688, !129, i64 7696, !132, i64 7832, !14, i64 8040, !133, i64 8048, !134, i64 8080, !14, i64 8536, !59, i64 8544, !59, i64 8552, !59, i64 8560, !36, i64 8568, !9, i64 8576, !9, i64 8640, !14, i64 8648, !9, i64 8656, !136, i64 10696, !59, i64 10744, !59, i64 10752, !59, i64 10760, !138, i64 10768, !139, i64 10832, !92, i64 10848, !141, i64 10872, !55, i64 10928, !38, i64 10944, !144, i64 10952, !59, i64 10960, !9, i64 10968, !9, i64 11032, !9, i64 11096, !9, i64 11160, !9, i64 11161, !145, i64 11168, !148, i64 11832, !152, i64 11888, !153, i64 11896, !155, i64 14336, !156, i64 79880, !157, i64 79896, !158, i64 79968, !159, i64 80000, !160, i64 80024, !161, i64 82008, !165, i64 223296, !9, i64 223328, !93, i64 223384, !93, i64 223385, !166, i64 223386, !168, i64 223400, !168, i64 223408, !168, i64 223416, !168, i64 223424, !14, i64 223432, !169, i64 223440, !36, i64 223448, !170, i64 223456, !94, i64 223472, !94, i64 223473, !14, i64 223480, !14, i64 223488, !9, i64 223496, !9, i64 224712, !9, i64 224776, !171, i64 224840, !172, i64 224928, !14, i64 225064, !176, i64 225072}
!121 = !{!"_ceval_state", !14, i64 0, !8, i64 8, !122, i64 16, !8, i64 24, !77, i64 32}
!122 = !{!"p1 _ZTS18_gil_runtime_state", !36, i64 0}
!123 = !{!"pythreads", !14, i64 0, !35, i64 8, !124, i64 16, !35, i64 24, !14, i64 32, !14, i64 40}
!124 = !{!"p1 _ZTS18_PyThreadStateImpl", !36, i64 0}
!125 = !{!"p1 _ZTS14pyruntimestate", !36, i64 0}
!126 = !{!"_gc_runtime_state", !8, i64 0, !8, i64 4, !127, i64 8, !9, i64 32, !127, i64 80, !9, i64 104, !8, i64 224, !128, i64 232, !59, i64 240, !59, i64 248, !14, i64 256, !14, i64 264, !8, i64 272, !8, i64 276}
!127 = !{!"gc_generation", !117, i64 0, !8, i64 16, !8, i64 20}
!128 = !{!"p1 _ZTS19_PyInterpreterFrame", !36, i64 0}
!129 = !{!"_import_state", !59, i64 0, !59, i64 8, !59, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !59, i64 40, !59, i64 48, !8, i64 56, !59, i64 64, !59, i64 72, !59, i64 80, !130, i64 88, !131, i64 112}
!130 = !{!"", !38, i64 0, !85, i64 8, !14, i64 16}
!131 = !{!"", !8, i64 0, !14, i64 8, !8, i64 16}
!132 = !{!"_gil_runtime_state", !14, i64 0, !35, i64 8, !8, i64 16, !14, i64 24, !9, i64 32, !9, i64 80, !9, i64 120, !9, i64 168}
!133 = !{!"codecs_state", !59, i64 0, !59, i64 8, !59, i64 16, !8, i64 24}
!134 = !{!"PyConfig", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !14, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !135, i64 64, !8, i64 72, !8, i64 76, !135, i64 80, !135, i64 88, !135, i64 96, !8, i64 104, !61, i64 112, !61, i64 128, !61, i64 144, !61, i64 160, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !135, i64 232, !135, i64 240, !135, i64 248, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !135, i64 288, !135, i64 296, !135, i64 304, !135, i64 312, !8, i64 320, !61, i64 328, !135, i64 344, !135, i64 352, !135, i64 360, !135, i64 368, !135, i64 376, !135, i64 384, !135, i64 392, !8, i64 400, !135, i64 408, !135, i64 416, !135, i64 424, !135, i64 432, !8, i64 440, !8, i64 444, !8, i64 448}
!135 = !{!"p1 int", !36, i64 0}
!136 = !{!"", !41, i64 0, !137, i64 24}
!137 = !{!"xi_exceptions", !59, i64 0, !59, i64 8, !59, i64 16}
!138 = !{!"_warnings_runtime_state", !59, i64 0, !59, i64 8, !59, i64 16, !130, i64 24, !14, i64 48, !59, i64 56}
!139 = !{!"atexit_state", !140, i64 0, !59, i64 8}
!140 = !{!"p1 _ZTS15atexit_callback", !36, i64 0}
!141 = !{!"_qsbr_shared", !14, i64 0, !14, i64 8, !142, i64 16, !36, i64 24, !14, i64 32, !38, i64 40, !143, i64 48}
!142 = !{!"p1 _ZTS9_qsbr_pad", !36, i64 0}
!143 = !{!"p1 _ZTS18_qsbr_thread_state", !36, i64 0}
!144 = !{!"p1 _ZTS15_obmalloc_state", !36, i64 0}
!145 = !{!"_py_object_state", !146, i64 0, !8, i64 656}
!146 = !{!"_Py_freelists", !147, i64 0, !147, i64 16, !147, i64 32, !9, i64 48, !147, i64 368, !147, i64 384, !147, i64 400, !147, i64 416, !147, i64 432, !147, i64 448, !147, i64 464, !147, i64 480, !147, i64 496, !147, i64 512, !147, i64 528, !147, i64 544, !147, i64 560, !147, i64 576, !147, i64 592, !147, i64 608, !147, i64 624, !147, i64 640}
!147 = !{!"_Py_freelist", !36, i64 0, !14, i64 8}
!148 = !{!"_Py_unicode_state", !149, i64 0, !36, i64 32, !150, i64 40}
!149 = !{!"_Py_unicode_fs_codec", !71, i64 0, !8, i64 8, !71, i64 16, !8, i64 24}
!150 = !{!"_Py_unicode_ids", !14, i64 0, !151, i64 8}
!151 = !{!"p2 _ZTS7_object", !63, i64 0}
!152 = !{!"_Py_long_state", !8, i64 0}
!153 = !{!"_dtoa_state", !9, i64 0, !9, i64 64, !9, i64 128, !154, i64 2432}
!154 = !{!"p1 double", !36, i64 0}
!155 = !{!"_py_func_state", !8, i64 0, !9, i64 8}
!156 = !{!"_py_code_state", !38, i64 0, !70, i64 8}
!157 = !{!"_Py_dict_state", !8, i64 0, !9, i64 8}
!158 = !{!"_Py_exc_state", !59, i64 0, !36, i64 8, !8, i64 16, !59, i64 24}
!159 = !{!"_Py_mem_interp_free_queue", !8, i64 0, !38, i64 4, !55, i64 8}
!160 = !{!"ast_state", !94, i64 0, !8, i64 4, !59, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !59, i64 64, !59, i64 72, !59, i64 80, !59, i64 88, !59, i64 96, !59, i64 104, !59, i64 112, !59, i64 120, !59, i64 128, !59, i64 136, !59, i64 144, !59, i64 152, !59, i64 160, !59, i64 168, !59, i64 176, !59, i64 184, !59, i64 192, !59, i64 200, !59, i64 208, !59, i64 216, !59, i64 224, !59, i64 232, !59, i64 240, !59, i64 248, !59, i64 256, !59, i64 264, !59, i64 272, !59, i64 280, !59, i64 288, !59, i64 296, !59, i64 304, !59, i64 312, !59, i64 320, !59, i64 328, !59, i64 336, !59, i64 344, !59, i64 352, !59, i64 360, !59, i64 368, !59, i64 376, !59, i64 384, !59, i64 392, !59, i64 400, !59, i64 408, !59, i64 416, !59, i64 424, !59, i64 432, !59, i64 440, !59, i64 448, !59, i64 456, !59, i64 464, !59, i64 472, !59, i64 480, !59, i64 488, !59, i64 496, !59, i64 504, !59, i64 512, !59, i64 520, !59, i64 528, !59, i64 536, !59, i64 544, !59, i64 552, !59, i64 560, !59, i64 568, !59, i64 576, !59, i64 584, !59, i64 592, !59, i64 600, !59, i64 608, !59, i64 616, !59, i64 624, !59, i64 632, !59, i64 640, !59, i64 648, !59, i64 656, !59, i64 664, !59, i64 672, !59, i64 680, !59, i64 688, !59, i64 696, !59, i64 704, !59, i64 712, !59, i64 720, !59, i64 728, !59, i64 736, !59, i64 744, !59, i64 752, !59, i64 760, !59, i64 768, !59, i64 776, !59, i64 784, !59, i64 792, !59, i64 800, !59, i64 808, !59, i64 816, !59, i64 824, !59, i64 832, !59, i64 840, !59, i64 848, !59, i64 856, !59, i64 864, !59, i64 872, !59, i64 880, !59, i64 888, !59, i64 896, !59, i64 904, !59, i64 912, !59, i64 920, !59, i64 928, !59, i64 936, !59, i64 944, !59, i64 952, !59, i64 960, !59, i64 968, !59, i64 976, !59, i64 984, !59, i64 992, !59, i64 1000, !59, i64 1008, !59, i64 1016, !59, i64 1024, !59, i64 1032, !59, i64 1040, !59, i64 1048, !59, i64 1056, !59, i64 1064, !59, i64 1072, !59, i64 1080, !59, i64 1088, !59, i64 1096, !59, i64 1104, !59, i64 1112, !59, i64 1120, !59, i64 1128, !59, i64 1136, !59, i64 1144, !59, i64 1152, !59, i64 1160, !59, i64 1168, !59, i64 1176, !59, i64 1184, !59, i64 1192, !59, i64 1200, !59, i64 1208, !59, i64 1216, !59, i64 1224, !59, i64 1232, !59, i64 1240, !59, i64 1248, !59, i64 1256, !59, i64 1264, !59, i64 1272, !59, i64 1280, !59, i64 1288, !59, i64 1296, !59, i64 1304, !59, i64 1312, !59, i64 1320, !59, i64 1328, !59, i64 1336, !59, i64 1344, !59, i64 1352, !59, i64 1360, !59, i64 1368, !59, i64 1376, !59, i64 1384, !59, i64 1392, !59, i64 1400, !59, i64 1408, !59, i64 1416, !59, i64 1424, !59, i64 1432, !59, i64 1440, !59, i64 1448, !59, i64 1456, !59, i64 1464, !59, i64 1472, !59, i64 1480, !59, i64 1488, !59, i64 1496, !59, i64 1504, !59, i64 1512, !59, i64 1520, !59, i64 1528, !59, i64 1536, !59, i64 1544, !59, i64 1552, !59, i64 1560, !59, i64 1568, !59, i64 1576, !59, i64 1584, !59, i64 1592, !59, i64 1600, !59, i64 1608, !59, i64 1616, !59, i64 1624, !59, i64 1632, !59, i64 1640, !59, i64 1648, !59, i64 1656, !59, i64 1664, !59, i64 1672, !59, i64 1680, !59, i64 1688, !59, i64 1696, !59, i64 1704, !59, i64 1712, !59, i64 1720, !59, i64 1728, !59, i64 1736, !59, i64 1744, !59, i64 1752, !59, i64 1760, !59, i64 1768, !59, i64 1776, !59, i64 1784, !59, i64 1792, !59, i64 1800, !59, i64 1808, !59, i64 1816, !59, i64 1824, !59, i64 1832, !59, i64 1840, !59, i64 1848, !59, i64 1856, !59, i64 1864, !59, i64 1872, !59, i64 1880, !59, i64 1888, !59, i64 1896, !59, i64 1904, !59, i64 1912, !59, i64 1920, !59, i64 1928, !59, i64 1936, !59, i64 1944, !59, i64 1952, !59, i64 1960, !59, i64 1968, !59, i64 1976}
!161 = !{!"types_state", !8, i64 0, !162, i64 8, !163, i64 98312, !164, i64 108016, !38, i64 108512, !9, i64 108520}
!162 = !{!"type_cache", !9, i64 0}
!163 = !{!"", !14, i64 0, !9, i64 8}
!164 = !{!"", !14, i64 0, !14, i64 8, !9, i64 16}
!165 = !{!"callable_cache", !59, i64 0, !59, i64 8, !59, i64 16, !59, i64 24}
!166 = !{!"_PyOptimizationConfig", !167, i64 0, !167, i64 2, !167, i64 4, !167, i64 6, !93, i64 8, !93, i64 9}
!167 = !{!"short", !9, i64 0}
!168 = !{!"p1 _ZTS17_PyExecutorObject", !36, i64 0}
!169 = !{!"_rare_events", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4}
!170 = !{!"_Py_GlobalMonitors", !9, i64 0}
!171 = !{!"_Py_interp_cached_objects", !59, i64 0, !59, i64 8, !110, i64 16, !110, i64 24, !110, i64 32, !110, i64 40, !110, i64 48, !110, i64 56, !110, i64 64, !59, i64 72, !59, i64 80}
!172 = !{!"_Py_interp_static_objects", !173, i64 0}
!173 = !{!"", !8, i64 0, !117, i64 8, !174, i64 24, !175, i64 64}
!174 = !{!"", !109, i64 0, !36, i64 16, !59, i64 24, !14, i64 32}
!175 = !{!"", !109, i64 0, !59, i64 16, !59, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !9, i64 64}
!176 = !{!"_PyThreadStateImpl", !177, i64 0, !184, i64 848, !14, i64 936, !14, i64 944, !14, i64 952, !14, i64 960, !14, i64 968, !14, i64 976, !59, i64 984, !59, i64 992, !8, i64 1000, !55, i64 1008, !143, i64 1024, !55, i64 1032}
!177 = !{!"_ts", !35, i64 0, !35, i64 8, !39, i64 16, !14, i64 24, !178, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !128, i64 72, !128, i64 80, !128, i64 88, !36, i64 96, !36, i64 104, !59, i64 112, !59, i64 120, !59, i64 128, !179, i64 136, !59, i64 144, !8, i64 152, !59, i64 160, !14, i64 168, !14, i64 176, !59, i64 184, !14, i64 192, !8, i64 200, !59, i64 208, !59, i64 216, !59, i64 224, !14, i64 232, !14, i64 240, !180, i64 248, !151, i64 256, !151, i64 264, !181, i64 272, !59, i64 288, !182, i64 296, !14, i64 304, !59, i64 312, !59, i64 320, !183, i64 328}
end_hunk_2
