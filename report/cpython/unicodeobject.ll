Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicodeobject?download=true
inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 53
begin_hunk_0
@unicode_new._kwtuple = internal global %struct.anon.923 { %struct.PyGC_Head zeroinitializer, %struct.PyVarObject { %struct._object { %union.anon.44 { i64 1407378104778752 }, ptr @PyTuple_Type }, i64 3 }, i64 -1, [3 x ptr] [ptr getelementptr (i8, ptr @_PyRuntime, i64 93680), ptr getelementptr (i8, ptr @_PyRuntime, i64 82024), ptr getelementptr (i8, ptr @_PyRuntime, i64 82448)] }, align 8
@unicode_new._keywords = internal constant [4 x ptr] [ptr @.str.300, ptr @.str.252, ptr @.str.253, ptr null], align 16
@.str.300 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@unicode_new._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @unicode_new._keywords, ptr @.str.109, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @unicode_new._kwtuple, i64 16), ptr null }, align 8
@.str.301 = private unnamed_addr constant [40 x i8] c"str() argument '%s' must be str, not %T\00", align 1
@_init_global_state.initialized = internal unnamed_addr global i1 false, align 4
@__const.init_global_interned_strings.hashtable_alloc = private unnamed_addr constant %struct._Py_hashtable_allocator_t { ptr @PyMem_RawMalloc, ptr @PyMem_RawFree }, align 8
@__func__.init_global_interned_strings = private unnamed_addr constant [29 x i8] c"init_global_interned_strings\00", align 1
@.str.302 = private unnamed_addr constant [38 x i8] c"failed to create global interned dict\00", align 1
@.str.303 = private unnamed_addr constant [18 x i8] c"fieldnameiterator\00", align 1
@fieldnameiter_methods = internal global [1 x %struct.PyMethodDef] zeroinitializer, align 16
@PyFieldNameIter_Type = internal global { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, i8, i8, i16, [4 x i8] } { %struct.PyVarObject { %struct._object { %union.anon.44 { i64 1407378104778752 }, ptr @PyType_Type }, i64 0 }, ptr @.str.303, i64 56, i64 0, ptr @fieldnameiter_dealloc, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @PyObject_GenericGetAttr, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @PyObject_SelfIter, ptr @fieldnameiter_next, ptr @fieldnameiter_methods, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }, align 8
@.str.305 = private unnamed_addr constant [18 x i8] c"formatteriterator\00", align 1
@formatteriter_methods = internal global [1 x %struct.PyMethodDef] zeroinitializer, align 16
@PyFormatterIter_Type = internal global { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, i8, i8, i16, [4 x i8] } { %struct.PyVarObject { %struct._object { %union.anon.44 { i64 1407378104778752 }, ptr @PyType_Type }, i64 0 }, ptr @.str.305, i64 48, i64 0, ptr @formatteriter_dealloc, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @PyObject_GenericGetAttr, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @PyObject_SelfIter, ptr @formatteriter_next, ptr @formatteriter_methods, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }, align 8
@__func__.intern_static = private unnamed_addr constant [14 x i8] c"intern_static\00", align 1
@.str.307 = private unnamed_addr constant [31 x i8] c"failed to intern static string\00", align 1
@.str.308 = private unnamed_addr constant [16 x i8] c"__length_hint__\00", align 1
@length_hint_doc = internal constant [55 x i8] c"Private method returning an estimate of len(list(it)).\00", align 16
@.str.309 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@reduce_doc = internal constant [39 x i8] c"Return state information for pickling.\00", align 16
@.str.310 = private unnamed_addr constant [13 x i8] c"__setstate__\00", align 1
@setstate_doc = internal constant [38 x i8] c"Set state information for unpickling.\00", align 16
@unicodeiter_methods = internal global [4 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.308, ptr @unicodeiter_len, i32 4, [4 x i8] zeroinitializer, ptr @length_hint_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.309, ptr @unicodeiter_reduce, i32 4, [4 x i8] zeroinitializer, ptr @reduce_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.310, ptr @unicodeiter_setstate, i32 8, [4 x i8] zeroinitializer, ptr @setstate_doc }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.312 = private unnamed_addr constant [6 x i8] c"N(O)n\00", align 1
@.str.313 = private unnamed_addr constant [5 x i8] c"N(N)\00", align 1
@__func__.init_fs_encoding = private unnamed_addr constant [17 x i8] c"init_fs_encoding\00", align 1
@.str.314 = private unnamed_addr constant [58 x i8] c"failed to get the Python codec of the filesystem encoding\00", align 1
@.str.315 = private unnamed_addr constant [35 x i8] c"cannot initialize filesystem codec\00", align 1
@.str.316 = private unnamed_addr constant [15 x i8] c"stdio_encoding\00", align 1
@.str.317 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.318 = private unnamed_addr constant [17 x i8] c"cannot encode %s\00", align 1
@.str.320 = private unnamed_addr constant [20 x i8] c"filesystem_encoding\00", align 1
@.str.321 = private unnamed_addr constant [18 x i8] c"filesystem_errors\00", align 1
@__func__.init_stdio_encoding = private unnamed_addr constant [20 x i8] c"init_stdio_encoding\00", align 1
@.str.322 = private unnamed_addr constant [58 x i8] c"failed to get the Python codec name of the stdio encoding\00", align 1
@.str.323 = private unnamed_addr constant [8 x i8] c"_string\00", align 1
@.str.324 = private unnamed_addr constant [21 x i8] c"string helper module\00", align 1
@.str.325 = private unnamed_addr constant [27 x i8] c"formatter_field_name_split\00", align 1
@.str.326 = private unnamed_addr constant [35 x i8] c"split the argument as a field name\00", align 1
@.str.327 = private unnamed_addr constant [17 x i8] c"formatter_parser\00", align 1
@.str.328 = private unnamed_addr constant [38 x i8] c"parse the argument as a format string\00", align 1
@_string_methods = internal global [3 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.325, ptr @formatter_field_name_split, i32 8, [4 x i8] zeroinitializer, ptr @.str.326 }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.327, ptr @formatter_parser, i32 8, [4 x i8] zeroinitializer, ptr @.str.328 }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.330 = private unnamed_addr constant [21 x i8] c"expected str, got %s\00", align 1
@module_slots = internal global [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr inttoptr (i64 2 to ptr) }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr inttoptr (i64 1 to ptr) }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@switch.table.PyUnicode_RichCompare = private unnamed_addr constant [6 x ptr] [ptr @_Py_FalseStruct, ptr @_Py_TrueStruct, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @_PyUnicode_GetEmpty() local_unnamed_addr #0 {
bb.a:
  ret ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
}

; Function Attrs: nounwind uwtable
define hidden i64 @_PyUnicode_InternedSize() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr i8, ptr %i.b, i64 224840
  %.val = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14128), align 8, !tbaa !221
  %i.e = tail call i64 @_Py_hashtable_len(ptr noundef %i.d) #33
  %i.f = getelementptr i8, ptr %.val, i64 16
  %.val1 = load i64, ptr %i.f, align 8, !tbaa !225
  %i.g = add i64 %.val1, %i.e
  ret i64 %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i64 @_Py_hashtable_len(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden i64 @_PyUnicode_InternedSize_Immortal() local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr i8, ptr %i.e, i64 224840
  %.val = load ptr, ptr %i.f, align 8, !tbaa !136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i64 0, ptr %i.c, align 8, !tbaa !226
  %i.g = call i32 @PyDict_Next(ptr noundef %.val, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #33
  %.not3 = icmp eq i32 %i.g, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04 = phi i64 [ %spec.select, %.lr.ph ], [ 0, %bb.a ]
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !227
  %i.i = getelementptr i8, ptr %i.h, i64 32
  %.val2 = load i32, ptr %i.i, align 8
  %i.j = and i32 %.val2, 3
  %i.k = icmp eq i32 %i.j, 2
  %i.l = zext i1 %i.k to i64
  %spec.select = add i64 %.04, %i.l               ; 2 uses
  %i.m = call i32 @PyDict_Next(ptr noundef %.val, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #33
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !332

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %spec.select, %.lr.ph ]
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14128), align 8, !tbaa !221
  %i.o = call i64 @_Py_hashtable_len(ptr noundef %i.n) #33
  %i.p = add i64 %i.o, %.0.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i64 %i.p
}

declare i32 @PyDict_Next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 1, 9) i32 @_Py_GetErrorHandler(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str) #34
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(16) @.str.1) #34
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.2) #34
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.3) #34
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(17) @.str.4) #34
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.5) #34
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(18) @.str.6) #34
  %i.o = icmp eq i32 %i.n, 0
  %. = select i1 %i.o, i32 7, i32 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 6, %bb.g ], [ 1, %bb.a ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ %., %bb.h ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @_PyUnicode_CheckConsistency(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !229
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val95 = load i64, ptr %i.b, align 8, !tbaa !234
  %i.c = and i64 %.val95, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 596, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = lshr i32 %i.e, 2
  %i.g = and i32 %i.f, 7                          ; 5 uses
  %i.h = and i32 %i.e, 64
  %.not86 = icmp eq i32 %i.h, 0                   ; 4 uses
  %i.i = and i32 %i.e, 32
  %.not87 = icmp eq i32 %i.i, 0                   ; 2 uses
  %i.j = and i32 %i.e, 96
  %or.cond94.not = icmp eq i32 %i.j, 96
  br i1 %or.cond94.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %i.g, 1
  br i1 %i.k, label %.thread126, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 602, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 56         ; 2 uses
  br i1 %.not87, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i32 %i.g, label %bb.h [
    i32 4, label %bb.i
    i32 2, label %bb.i
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef 612, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.g
  br i1 %.not86, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, i32 noundef 613, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.m = getelementptr i8, ptr %0, i64 48
  %.val99 = load ptr, ptr %i.m, align 8, !tbaa !236 ; 2 uses
  %.not92 = icmp eq ptr %.val99, %i.l
  br i1 %.not92, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, i32 noundef 614, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.m:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !237  ; 2 uses
  switch i32 %i.g, label %bb.n [
    i32 4, label %bb.o
    i32 2, label %bb.o
    i32 1, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef 622, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.m, %bb.m
  %.not89 = icmp eq ptr %i.n, null
  br i1 %.not89, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8, i32 noundef 624, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.o = getelementptr i8, ptr %0, i64 48
  %.val97 = load ptr, ptr %i.o, align 8, !tbaa !236 ; 2 uses
  %.not91 = icmp eq ptr %.val97, %i.n             ; 2 uses
  br i1 %.not86, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.not91, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 626, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.p = getelementptr i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !238
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !239
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8, i32 noundef 627, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.v:                                             ; preds = %bb.q
  br i1 %.not91, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, i32 noundef 630, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.x:                                             ; preds = %bb.v, %bb.k
  %.val96 = phi ptr [ %.val99, %bb.k ], [ %.val97, %bb.v ]
  %i.u = icmp eq ptr %.val96, null
  br i1 %i.u, label %bb.y, label %2

bb.y:                                             ; preds = %bb.x
  %i.v = getelementptr i8, ptr %0, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !238
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %2, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.8, i32 noundef 635, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

2:                                                ; preds = %bb.x, %bb.y
  %.not93 = icmp eq i32 %1, 0
  br i1 %.not93, label %bb.as, label %bb.ab

bb.aa:                                            ; preds = %bb.t
  %.not93.a = icmp eq i32 %1, 0
  br i1 %.not93.a, label %bb.as, label %.thread128

.thread126:                                       ; preds = %bb.d
  %.not93127 = icmp eq i32 %1, 0
  br i1 %.not93127, label %bb.as, label %bb.ac

bb.ab:                                            ; preds = %2
  br i1 %.not87, label %.thread128, label %bb.ac

bb.ac:                                            ; preds = %.thread126, %bb.ab
  %.0.v.i.i = select i1 %.not86, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

.thread128:                                       ; preds = %bb.aa, %bb.ab
  %i.y = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.y, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.ac, %.thread128
  %.0.i = phi ptr [ %.0.i.i, %bb.ac ], [ %.val4.i, %.thread128 ] ; 9 uses
  %i.z = getelementptr i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !239 ; 14 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit
  %min.iters.check153 = icmp ult i64 %i.aa, 8     ; 3 uses
  switch i32 %i.g, label %PyUnicode_READ.exit.preheader [
    i32 1, label %PyUnicode_READ.exit.us.preheader
    i32 2, label %PyUnicode_READ.exit.us111.preheader
  ]

PyUnicode_READ.exit.us111.preheader:              ; preds = %.lr.ph
  br i1 %min.iters.check153, label %PyUnicode_READ.exit.us111.preheader173, label %vector.ph

vector.ph:                                        ; preds = %PyUnicode_READ.exit.us111.preheader
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi134 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %i.ac = getelementptr [2 x i8], ptr %.0.i, i64 %index ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %wide.load = load <4 x i16>, ptr %i.ac, align 2, !tbaa !240
  %wide.load135 = load <4 x i16>, ptr %i.ad, align 2, !tbaa !240
  %i.ae = zext <4 x i16> %wide.load to <4 x i32>
  %i.af = zext <4 x i16> %wide.load135 to <4 x i32>
  %i.ag = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ae, <4 x i32> %vec.phi) ; 2 uses
  %i.ah = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.af, <4 x i32> %vec.phi134) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !333

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ag, <4 x i32> %i.ah)
  %i.aj = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread131, label %PyUnicode_READ.exit.us111.preheader173

PyUnicode_READ.exit.us111.preheader173:           ; preds = %PyUnicode_READ.exit.us111.preheader, %middle.block
  %.0105.us109.ph = phi i32 [ 0, %PyUnicode_READ.exit.us111.preheader ], [ %i.aj, %middle.block ]
  %.081104.us110.ph = phi i64 [ 0, %PyUnicode_READ.exit.us111.preheader ], [ %n.vec, %middle.block ]
  br label %PyUnicode_READ.exit.us111

PyUnicode_READ.exit.us.preheader:                 ; preds = %.lr.ph
  br i1 %min.iters.check153, label %PyUnicode_READ.exit.us.preheader170, label %vector.ph138

vector.ph138:                                     ; preds = %PyUnicode_READ.exit.us.preheader
  %n.vec139 = and i64 %i.aa, 9223372036854775800  ; 3 uses
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next146, %vector.body140 ] ; 2 uses
  %vec.phi142 = phi <4 x i32> [ zeroinitializer, %vector.ph138 ], [ %i.ao, %vector.body140 ]
  %vec.phi143 = phi <4 x i32> [ zeroinitializer, %vector.ph138 ], [ %i.ap, %vector.body140 ]
  %i.ak = getelementptr i8, ptr %.0.i, i64 %index141 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %wide.load144 = load <4 x i8>, ptr %i.ak, align 1, !tbaa !237
  %wide.load145 = load <4 x i8>, ptr %i.al, align 1, !tbaa !237
  %i.am = zext <4 x i8> %wide.load144 to <4 x i32>
  %i.an = zext <4 x i8> %wide.load145 to <4 x i32>
  %i.ao = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.am, <4 x i32> %vec.phi142) ; 2 uses
  %i.ap = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.an, <4 x i32> %vec.phi143) ; 2 uses
  %index.next146 = add nuw i64 %index141, 8       ; 2 uses
  %i.aq = icmp eq i64 %index.next146, %n.vec139
  br i1 %i.aq, label %middle.block147, label %vector.body140, !llvm.loop !334

middle.block147:                                  ; preds = %vector.body140
  %rdx.minmax148 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ao, <4 x i32> %i.ap)
  %i.ar = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax148) ; 2 uses
  %cmp.n149 = icmp eq i64 %i.aa, %n.vec139
  br i1 %cmp.n149, label %._crit_edge.thread, label %PyUnicode_READ.exit.us.preheader170

PyUnicode_READ.exit.us.preheader170:              ; preds = %PyUnicode_READ.exit.us.preheader, %middle.block147
  %.0105.us.ph = phi i32 [ 0, %PyUnicode_READ.exit.us.preheader ], [ %i.ar, %middle.block147 ]
  %.081104.us.ph = phi i64 [ 0, %PyUnicode_READ.exit.us.preheader ], [ %n.vec139, %middle.block147 ]
  br label %PyUnicode_READ.exit.us

PyUnicode_READ.exit.preheader:                    ; preds = %.lr.ph
  br i1 %min.iters.check153, label %PyUnicode_READ.exit.preheader168, label %vector.ph154

vector.ph154:                                     ; preds = %PyUnicode_READ.exit.preheader
  %n.vec155 = and i64 %i.aa, 9223372036854775800  ; 3 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next162, %vector.body156 ] ; 2 uses
  %vec.phi158 = phi <4 x i32> [ zeroinitializer, %vector.ph154 ], [ %i.au, %vector.body156 ]
  %vec.phi159 = phi <4 x i32> [ zeroinitializer, %vector.ph154 ], [ %i.av, %vector.body156 ]
  %i.as = getelementptr [4 x i8], ptr %.0.i, i64 %index157 ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 16
  %wide.load160 = load <4 x i32>, ptr %i.as, align 4, !tbaa !43
  %wide.load161 = load <4 x i32>, ptr %i.at, align 4, !tbaa !43
  %i.au = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load160, <4 x i32> %vec.phi158) ; 2 uses
  %i.av = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load161, <4 x i32> %vec.phi159) ; 2 uses
  %index.next162 = add nuw i64 %index157, 8       ; 2 uses
  %i.aw = icmp eq i64 %index.next162, %n.vec155
  br i1 %i.aw, label %middle.block163, label %vector.body156, !llvm.loop !335

middle.block163:                                  ; preds = %vector.body156
  %rdx.minmax164 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.au, <4 x i32> %i.av)
  %i.ax = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax164) ; 2 uses
  %cmp.n165 = icmp eq i64 %i.aa, %n.vec155
  br i1 %cmp.n165, label %._crit_edge, label %PyUnicode_READ.exit.preheader168

PyUnicode_READ.exit.preheader168:                 ; preds = %PyUnicode_READ.exit.preheader, %middle.block163
  %.0105.ph = phi i32 [ 0, %PyUnicode_READ.exit.preheader ], [ %i.ax, %middle.block163 ]
  %.081104.ph = phi i64 [ 0, %PyUnicode_READ.exit.preheader ], [ %n.vec155, %middle.block163 ]
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit.us:                           ; preds = %PyUnicode_READ.exit.us.preheader170, %PyUnicode_READ.exit.us
  %.0105.us = phi i32 [ %spec.select.us, %PyUnicode_READ.exit.us ], [ %.0105.us.ph, %PyUnicode_READ.exit.us.preheader170 ]
  %.081104.us = phi i64 [ %i.bb, %PyUnicode_READ.exit.us ], [ %.081104.us.ph, %PyUnicode_READ.exit.us.preheader170 ] ; 2 uses
  %i.ay = getelementptr i8, ptr %.0.i, i64 %.081104.us
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !237
  %i.ba = zext i8 %i.az to i32
  %spec.select.us = tail call i32 @llvm.umax.i32(i32 %i.ba, i32 %.0105.us) ; 2 uses
  %i.bb = add nuw nsw i64 %.081104.us, 1          ; 2 uses
  %exitcond120.not = icmp eq i64 %i.bb, %i.aa
  br i1 %exitcond120.not, label %._crit_edge.thread, label %PyUnicode_READ.exit.us, !llvm.loop !336

PyUnicode_READ.exit.us111:                        ; preds = %PyUnicode_READ.exit.us111.preheader173, %PyUnicode_READ.exit.us111
  %.0105.us109 = phi i32 [ %spec.select.us113, %PyUnicode_READ.exit.us111 ], [ %.0105.us109.ph, %PyUnicode_READ.exit.us111.preheader173 ]
  %.081104.us110 = phi i64 [ %i.bf, %PyUnicode_READ.exit.us111 ], [ %.081104.us110.ph, %PyUnicode_READ.exit.us111.preheader173 ] ; 2 uses
  %i.bc = getelementptr [2 x i8], ptr %.0.i, i64 %.081104.us110
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !240
  %i.be = zext i16 %i.bd to i32
  %spec.select.us113 = tail call i32 @llvm.umax.i32(i32 %i.be, i32 %.0105.us109) ; 2 uses
  %i.bf = add nuw nsw i64 %.081104.us110, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %i.aa
  br i1 %exitcond.not, label %._crit_edge.thread131, label %PyUnicode_READ.exit.us111, !llvm.loop !337

PyUnicode_READ.exit:                              ; preds = %PyUnicode_READ.exit.preheader168, %PyUnicode_READ.exit
  %.0105 = phi i32 [ %spec.select, %PyUnicode_READ.exit ], [ %.0105.ph, %PyUnicode_READ.exit.preheader168 ]
  %.081104 = phi i64 [ %i.bi, %PyUnicode_READ.exit ], [ %.081104.ph, %PyUnicode_READ.exit.preheader168 ] ; 2 uses
  %i.bg = getelementptr [4 x i8], ptr %.0.i, i64 %.081104
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !43
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.bh, i32 %.0105) ; 2 uses
  %i.bi = add nuw nsw i64 %.081104, 1             ; 2 uses
  %exitcond121.not = icmp eq i64 %i.bi, %i.aa
  br i1 %exitcond121.not, label %._crit_edge, label %PyUnicode_READ.exit, !llvm.loop !338

._crit_edge:                                      ; preds = %PyUnicode_READ.exit, %middle.block163, %_PyUnicode_DATA.exit
  %.0.lcssa = phi i32 [ 0, %_PyUnicode_DATA.exit ], [ %i.ax, %middle.block163 ], [ %spec.select, %PyUnicode_READ.exit ] ; 4 uses
  switch i32 %i.g, label %bb.am [
    i32 1, label %._crit_edge.thread
    i32 2, label %._crit_edge.thread131
  ]

._crit_edge.thread:                               ; preds = %PyUnicode_READ.exit.us, %middle.block147, %._crit_edge
  %.0.lcssa130 = phi i32 [ %.0.lcssa, %._crit_edge ], [ %i.ar, %middle.block147 ], [ %spec.select.us, %PyUnicode_READ.exit.us ] ; 3 uses
  br i1 %.not86, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %._crit_edge.thread
  %i.bj = icmp ugt i32 %.0.lcssa130, 127
  br i1 %i.bj, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.8, i32 noundef 655, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.bk = icmp ult i32 %.0.lcssa130, 256
  br i1 %i.bk, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.8, i32 noundef 656, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.ah:                                            ; preds = %._crit_edge.thread
  %i.bl = icmp ult i32 %.0.lcssa130, 128
  br i1 %i.bl, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8, i32 noundef 659, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

._crit_edge.thread131:                            ; preds = %PyUnicode_READ.exit.us111, %middle.block, %._crit_edge
  %.0.lcssa133 = phi i32 [ %.0.lcssa, %._crit_edge ], [ %i.aj, %middle.block ], [ %spec.select.us113, %PyUnicode_READ.exit.us111 ] ; 2 uses
  %i.bm = icmp ugt i32 %.0.lcssa133, 255
  br i1 %i.bm, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.thread131
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.8, i32 noundef 662, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.ak:                                            ; preds = %._crit_edge.thread131
  %i.bn = icmp ult i32 %.0.lcssa133, 65536
  br i1 %i.bn, label %.thread103, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.8, i32 noundef 663, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.am:                                            ; preds = %._crit_edge
  %i.bo = icmp ugt i32 %.0.lcssa, 65535
  br i1 %i.bo, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.8, i32 noundef 666, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.bp = icmp ult i32 %.0.lcssa, 1114112
  br i1 %i.bp, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.8, i32 noundef 667, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

.thread:                                          ; preds = %bb.af, %bb.ah
  %i.bq = getelementptr i8, ptr %.0.i, i64 %i.aa
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !237
  %i.bs = zext i8 %i.br to i32
  br label %PyUnicode_READ.exit102

.thread103:                                       ; preds = %bb.ak
  %i.bt = getelementptr [2 x i8], ptr %.0.i, i64 %i.aa
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !240
  %i.bv = zext i16 %i.bu to i32
  br label %PyUnicode_READ.exit102

bb.aq:                                            ; preds = %bb.ao
  %i.bw = getelementptr [4 x i8], ptr %.0.i, i64 %i.aa
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !43
  br label %PyUnicode_READ.exit102

PyUnicode_READ.exit102:                           ; preds = %.thread, %.thread103, %bb.aq
  %.0.i101 = phi i32 [ %i.bs, %.thread ], [ %i.bv, %.thread103 ], [ %i.bx, %bb.aq ]
  %i.by = icmp eq i32 %.0.i101, 0
  br i1 %i.by, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %PyUnicode_READ.exit102
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.8, i32 noundef 669, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.as:                                            ; preds = %bb.aa, %.thread126, %PyUnicode_READ.exit102, %2
  ret i32 1
}

; Function Attrs: noreturn
declare void @_PyObject_AssertFailed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden ptr @_PyUnicode_Result(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !239
  switch i64 %.val, label %Py_DECREF.exit28 [
    i64 0, label %bb.b
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not26 = icmp eq ptr %0, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %.not26, label %Py_DECREF.exit28, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %0, align 8, !tbaa !237    ; 2 uses
  %.not.i27 = icmp sgt i32 %i.b, -1
  br i1 %.not.i27, label %bb.d, label %Py_DECREF.exit28

bb.d:                                             ; preds = %bb.c
  %i.c = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.c, ptr %0, align 8, !tbaa !237
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %Py_DECREF.exit28.sink.split, label %Py_DECREF.exit28

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = and i32 %i.f, 28
  %.not25 = icmp eq i32 %i.g, 4
  br i1 %.not25, label %bb.f, label %Py_DECREF.exit28

bb.f:                                             ; preds = %bb.e
  %i.h = and i32 %i.f, 32
  %.not.i30 = icmp eq i32 %i.h, 0
  br i1 %.not.i30, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = and i32 %i.f, 64
  %.not.i.i = icmp eq i32 %i.i, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.h:                                             ; preds = %bb.f
  %i.j = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.j, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %.0.i.i, %bb.g ], [ %.val4.i, %bb.h ]
  %i.k = load i8, ptr %.0.i, align 1, !tbaa !237  ; 2 uses
  %i.l = zext i8 %i.k to i64                      ; 2 uses
  %i.m = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.l
  %i.n = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 -8192
  %i.p = icmp slt i8 %i.k, 0
  %i.q = select i1 %i.p, ptr %i.o, ptr %i.m       ; 5 uses
  %.not = icmp eq ptr %0, %i.q
  br i1 %.not, label %Py_DECREF.exit28, label %bb.i

bb.i:                                             ; preds = %_PyUnicode_DATA.exit
  %i.r = load i32, ptr %0, align 8, !tbaa !237    ; 2 uses
  %.not.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit28

bb.j:                                             ; preds = %bb.i
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %0, align 8, !tbaa !237
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %Py_DECREF.exit28.sink.split, label %Py_DECREF.exit28

Py_DECREF.exit28.sink.split:                      ; preds = %bb.j, %bb.d
  %.1.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.d ], [ %i.q, %bb.j ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %0) #33
  br label %Py_DECREF.exit28

Py_DECREF.exit28:                                 ; preds = %Py_DECREF.exit28.sink.split, %_PyUnicode_DATA.exit, %bb.i, %bb.j, %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi ptr [ %0, %bb.a ], [ %i.q, %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.d ], [ %0, %bb.e ], [ %i.q, %_PyUnicode_DATA.exit ], [ %i.q, %bb.j ], [ %.1.ph, %Py_DECREF.exit28.sink.split ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyUnicode_ResizeCompact(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.val7.i = load i32, ptr %0, align 8, !tbaa !237
  %.not.i45 = icmp eq i32 %.val7.i, 1
  br i1 %.not.i45, label %bb.b, label %_PyUnicode_IsModifiable.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val8.i = load i64, ptr %i.a, align 8, !tbaa !243
  %.not4.i = icmp eq i64 %.val8.i, -1
  br i1 %.not4.i, label %bb.c, label %_PyUnicode_IsModifiable.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val.i = load i32, ptr %i.b, align 8           ; 5 uses
  %i.c = and i32 %.val.i, 3
  %.not5.i = icmp eq i32 %i.c, 0
  br i1 %.not5.i, label %_PyUnicode_IsModifiable.exit, label %_PyUnicode_IsModifiable.exit.thread

_PyUnicode_IsModifiable.exit:                     ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val9.i = load ptr, ptr %i.d, align 8, !tbaa !229
  %.not10.i.not = icmp eq ptr %.val9.i, @PyUnicode_Type
  br i1 %.not10.i.not, label %bb.h, label %_PyUnicode_IsModifiable.exit.thread

_PyUnicode_IsModifiable.exit.thread:              ; preds = %bb.c, %bb.b, %bb.a, %_PyUnicode_IsModifiable.exit
  %i.e = getelementptr i8, ptr %0, i64 32
  %.val14.i = load i32, ptr %i.e, align 8         ; 2 uses
  %i.f = and i32 %.val14.i, 64
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %PyUnicode_MAX_CHAR_VALUE.exit.i

bb.d:                                             ; preds = %_PyUnicode_IsModifiable.exit.thread
  %i.g = lshr i32 %.val14.i, 2
  %i.h = and i32 %i.g, 7                          ; 2 uses
  %switch.selectcmp.i.i = icmp eq i32 %i.h, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 65535, i32 1114111
  %switch.selectcmp5.i.i = icmp eq i32 %i.h, 1
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, i32 255, i32 %switch.select.i.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit.i

PyUnicode_MAX_CHAR_VALUE.exit.i:                  ; preds = %bb.d, %_PyUnicode_IsModifiable.exit.thread
  %.0.i.i = phi i32 [ %switch.select6.i.i, %bb.d ], [ 127, %_PyUnicode_IsModifiable.exit.thread ]
  %i.i = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef %.0.i.i) ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i
  %i.k = getelementptr i8, ptr %0, i64 16
  %.val13.i = load i64, ptr %i.k, align 8, !tbaa !239
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %1, i64 %.val13.i)
  %i.l = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.i, i64 noundef 0, ptr noundef nonnull %0, i64 noundef 0, i64 noundef %spec.select.i, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !237    ; 2 uses
  %.not.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %0, align 8, !tbaa !237
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %0) #33
  br label %Py_DECREF.exit

bb.h:                                             ; preds = %_PyUnicode_IsModifiable.exit
  %i.p = lshr exact i32 %.val.i, 2
  %i.q = and i32 %i.p, 7
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = and i32 %.val.i, 64
  %.not40 = icmp eq i32 %i.s, 0
  %. = select i1 %.not40, i64 56, i64 40          ; 3 uses
  %i.t = xor i64 %., 9223372036854775807
  %i.u = udiv i64 %i.t, %i.r
  %.not41 = icmp slt i64 %1, %i.u
  br i1 %.not41, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call ptr @PyErr_NoMemory() #33      ; 0 uses
  br label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.h
  %i.w = add nsw i64 %1, 1
  %i.x = mul i64 %i.w, %i.r
  %i.y = add i64 %i.x, %.
  %i.z = and i32 %.val.i, 96
  %.not.not.i = icmp eq i32 %i.z, 96
  br i1 %.not.not.i, label %_PyUnicode_HAS_UTF8_MEMORY.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr i8, ptr %0, i64 48
  %.val5.i = load ptr, ptr %i.aa, align 8, !tbaa !236 ; 3 uses
  %.not4.i47 = icmp eq ptr %.val5.i, null
  br i1 %.not4.i47, label %_PyUnicode_HAS_UTF8_MEMORY.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = and i32 %.val.i, 32
  %.not.i7.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i7.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.0.i.i.i = getelementptr i8, ptr %0, i64 %.
  br label %_PyUnicode_HAS_UTF8_MEMORY.exit

bb.n:                                             ; preds = %bb.l
  %i.ac = getelementptr i8, ptr %0, i64 56
  %.val4.i.i = load ptr, ptr %i.ac, align 8, !tbaa !237
  br label %_PyUnicode_HAS_UTF8_MEMORY.exit

_PyUnicode_HAS_UTF8_MEMORY.exit:                  ; preds = %bb.m, %bb.n
end_hunk_0
begin_hunk_1_@MarkupIterator_next:bb.a
bb.cq:                                            ; preds = %bb.co
  %.val4.i24.i142.i = load ptr, ptr %i.fd, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit25.i140.i

_PyUnicode_DATA.exit25.i140.i:                    ; preds = %bb.cq, %bb.cp
  %.0.i23.i141.i = phi ptr [ %.0.i.i22.i139.i, %bb.cp ], [ %.val4.i24.i142.i, %bb.cq ]
  %i.ft = getelementptr [4 x i8], ptr %.0.i23.i141.i, i64 %i.fe
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !43
  br label %PyUnicode_READ_CHAR.exit143.i

PyUnicode_READ_CHAR.exit143.i:                    ; preds = %_PyUnicode_DATA.exit25.i140.i, %_PyUnicode_DATA.exit17.i127.i, %_PyUnicode_DATA.exit.i134.i
  %.0.i129.i = phi i32 [ %i.fn, %_PyUnicode_DATA.exit.i134.i ], [ %i.fr, %_PyUnicode_DATA.exit17.i127.i ], [ %i.fu, %_PyUnicode_DATA.exit25.i140.i ]
  switch i32 %.0.i129.i, label %bb.cu [
    i32 123, label %bb.cr
    i32 125, label %bb.cs
  ]

bb.cr:                                            ; preds = %PyUnicode_READ_CHAR.exit143.i
  store i32 1, ptr %6, align 4, !tbaa !43
  %i.fv = add i64 %.0156.i, 1
  br label %bb.cu

bb.cs:                                            ; preds = %PyUnicode_READ_CHAR.exit143.i
  %i.fw = add i64 %.0156.i, -1                    ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i64 %i.fe, ptr %i.f, align 8, !tbaa !321
  br label %parse_field.exit

bb.cu:                                            ; preds = %bb.cs, %bb.cr, %PyUnicode_READ_CHAR.exit143.i
  %.1.i = phi i64 [ %.0156.i, %PyUnicode_READ_CHAR.exit143.i ], [ %i.fv, %bb.cr ], [ %i.fw, %bb.cs ]
  %exitcond136.not = icmp eq i64 %i.ff, %i.ex
  br i1 %exitcond136.not, label %._crit_edge159.i, label %bb.ch, !llvm.loop !1007

._crit_edge159.i:                                 ; preds = %bb.cu, %bb.cg
  %i.fy = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.fy, ptr noundef nonnull @.str.281) #33
  br label %parse_field.exit

.sink.split:                                      ; preds = %bb.bi, %bb.an
  %.sink186 = phi i64 [ %i.bt, %bb.an ], [ %i.bu, %bb.bi ]
  %i.fz = add i64 %.sink186, -1
  store i64 %i.fz, ptr %i.d, align 8, !tbaa !321
  br label %bb.cv

bb.cv:                                            ; preds = %.sink.split, %PyUnicode_READ_CHAR.exit._crit_edge.i
  %i.ga = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.ga, ptr noundef nonnull @.str.282) #33
  br label %parse_field.exit

parse_field.exit:                                 ; preds = %bb.am, %PyUnicode_READ_CHAR.exit._crit_edge.i, %PyUnicode_READ_CHAR.exit122.i, %bb.ct, %bb.ay, %bb.cv, %bb.bk, %._crit_edge159.i, %bb.cf, %.thread114, %bb.a, %bb.aa, %bb.y
  %.048 = phi i32 [ 1, %bb.a ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 2, %bb.am ], [ 2, %.thread114 ], [ 2, %bb.ct ], [ 2, %PyUnicode_READ_CHAR.exit._crit_edge.i ], [ 2, %PyUnicode_READ_CHAR.exit122.i ], [ 0, %bb.ay ], [ 0, %bb.cv ], [ 0, %bb.bk ], [ 0, %._crit_edge159.i ], [ 0, %bb.cf ]
  ret i32 %.048
}

declare i32 @_PyUnicodeWriter_WriteSubstring(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @field_name_split(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef captures(address_is_null) %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %2, i64 %1) ; 3 uses
  %exitcond.not48.not = icmp slt i64 %1, %2
  br i1 %exitcond.not48.not, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8              ; 5 uses
  %i.d = lshr i32 %i.c, 2
  %i.e = and i32 %i.d, 7
  %i.f = and i32 %i.c, 32
  %.not.i19.i = icmp eq i32 %i.f, 0               ; 3 uses
  %i.g = and i32 %i.c, 64
  %.not.i.i12.i = icmp eq i32 %i.g, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %0, i64 %.0.v.i.i13.i
  %i.h = and i32 %i.c, 64
  %.not.i.i.i = icmp eq i32 %i.h, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i.i
  %i.i = and i32 %i.c, 64
  %.not.i.i20.i = icmp eq i32 %i.i, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %0, i64 %.0.v.i.i21.i
  br label %.lr.ph

bb.b:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %exitcond.not = icmp eq i64 %i.j, %smax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1009

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.049 = phi i64 [ %i.j, %bb.b ], [ %1, %.lr.ph.preheader ] ; 5 uses
  %i.j = add i64 %.049, 1                         ; 2 uses
  switch i32 %i.e, label %bb.g [
    i32 1, label %bb.c
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %.lr.ph
  br i1 %.not.i19.i, label %bb.d, label %_PyUnicode_DATA.exit.i

bb.d:                                             ; preds = %bb.c
  %.val4.i.i = load ptr, ptr %i.b, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %.val4.i.i, %bb.d ], [ %.0.i.i.i, %bb.c ]
  %i.k = getelementptr i8, ptr %.0.i.i, i64 %.049
  %i.l = load i8, ptr %i.k, align 1, !tbaa !237
  %i.m = zext i8 %i.l to i32
  br label %PyUnicode_READ_CHAR.exit

bb.e:                                             ; preds = %.lr.ph
  br i1 %.not.i19.i, label %bb.f, label %_PyUnicode_DATA.exit17.i

bb.f:                                             ; preds = %bb.e
  %.val4.i16.i = load ptr, ptr %i.b, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.e, %bb.f
  %.0.i15.i = phi ptr [ %.val4.i16.i, %bb.f ], [ %.0.i.i14.i, %bb.e ]
  %i.n = getelementptr [2 x i8], ptr %.0.i15.i, i64 %.049
  %i.o = load i16, ptr %i.n, align 2, !tbaa !240
  %i.p = zext i16 %i.o to i32
  br label %PyUnicode_READ_CHAR.exit

bb.g:                                             ; preds = %.lr.ph
  br i1 %.not.i19.i, label %bb.h, label %_PyUnicode_DATA.exit25.i

bb.h:                                             ; preds = %bb.g
  %.val4.i24.i = load ptr, ptr %i.b, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.g, %bb.h
  %.0.i23.i = phi ptr [ %.val4.i24.i, %bb.h ], [ %.0.i.i22.i, %bb.g ]
  %i.q = getelementptr [4 x i8], ptr %.0.i23.i, i64 %.049
  %i.r = load i32, ptr %i.q, align 4, !tbaa !43
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.m, %_PyUnicode_DATA.exit.i ], [ %i.p, %_PyUnicode_DATA.exit17.i ], [ %i.r, %_PyUnicode_DATA.exit25.i ]
  switch i32 %.0.i, label %bb.b [
    i32 91, label %PyUnicode_READ_CHAR.exit._crit_edge
    i32 46, label %PyUnicode_READ_CHAR.exit._crit_edge
  ], !llvm.loop !1009

PyUnicode_READ_CHAR.exit._crit_edge:              ; preds = %PyUnicode_READ_CHAR.exit, %PyUnicode_READ_CHAR.exit
  br label %._crit_edge, !llvm.loop !1009

._crit_edge:                                      ; preds = %bb.b, %PyUnicode_READ_CHAR.exit._crit_edge, %bb.a
  %.0.lcssa = phi i64 [ %.049, %PyUnicode_READ_CHAR.exit._crit_edge ], [ %smax, %bb.a ], [ %smax, %bb.b ] ; 3 uses
  store ptr %0, ptr %3, align 8, !tbaa !319
  %i.s = getelementptr i8, ptr %3, i64 8          ; 2 uses
  store i64 %1, ptr %i.s, align 8, !tbaa !320
  %i.t = getelementptr i8, ptr %3, i64 16         ; 2 uses
  store i64 %.0.lcssa, ptr %i.t, align 8, !tbaa !321
  store ptr %0, ptr %5, align 8, !tbaa !319
  %i.u = getelementptr i8, ptr %5, i64 8
  store i64 %.0.lcssa, ptr %i.u, align 8, !tbaa !320
  %i.v = getelementptr i8, ptr %5, i64 16
  store i64 %2, ptr %i.v, align 8, !tbaa !321
  %i.w = getelementptr i8, ptr %5, i64 24
  store i64 %.0.lcssa, ptr %i.w, align 8, !tbaa !326
  %i.x = tail call fastcc i64 @get_integer(ptr noundef %3) ; 2 uses
  store i64 %i.x, ptr %4, align 8, !tbaa !226
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.z = tail call ptr @PyErr_Occurred() #33
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !320
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !321
  %.not45 = icmp slt i64 %i.aa, %i.ab             ; 5 uses
  br i1 %.not45, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %4, align 8, !tbaa !226
  %i.ad = icmp ne i64 %i.ac, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ae = phi i1 [ true, %bb.j ], [ %i.ad, %bb.k ] ; 2 uses
  %.not35 = icmp eq ptr %6, null
  br i1 %.not35, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load i32, ptr %6, align 4, !tbaa !316   ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  %or.cond = select i1 %i.ag, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = select i1 %.not45, i32 2, i32 1         ; 2 uses
  store i32 %i.ah, ptr %6, align 4, !tbaa !316
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  br i1 %i.ae, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.n, %bb.o
  %7 = phi i32 [ %i.ah, %bb.n ], [ %i.af, %bb.o ]
  %i.ai = icmp eq i32 %7, 2
  br i1 %i.ai, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %.not45, label %.critedge, label %autonumber_state_error.exit.thread

bb.r:                                             ; preds = %bb.p
  br i1 %.not45, label %autonumber_state_error.exit.thread, label %.critedge46

autonumber_state_error.exit.thread:               ; preds = %bb.q, %bb.r
  %.str.287.sink.i = phi ptr [ @.str.286, %bb.q ], [ @.str.287, %bb.r ]
  %i.aj = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.aj, ptr noundef nonnull %.str.287.sink.i) #33
  br label %.critedge

bb.s:                                             ; preds = %bb.o
  br i1 %.not45, label %.critedge, label %.critedge46

.critedge46:                                      ; preds = %bb.r, %bb.s
  %i.ak = getelementptr i8, ptr %6, i64 4         ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !317 ; 2 uses
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !317
  %i.an = sext i32 %i.al to i64
  store i64 %i.an, ptr %4, align 8, !tbaa !226
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %autonumber_state_error.exit.thread, %bb.l, %.critedge46, %bb.s, %bb.i
  %.033 = phi i32 [ 0, %autonumber_state_error.exit.thread ], [ 0, %bb.i ], [ 1, %bb.s ], [ 1, %.critedge46 ], [ 1, %bb.l ], [ 1, %bb.q ]
  ret i32 %.033
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @SubString_new_object(ptr nofree noundef readonly captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !319    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !320
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !321
  %i.g = tail call ptr @PyUnicode_Substring(ptr noundef nonnull %i.a, i64 noundef %i.d, i64 noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0
}

declare void @PyErr_SetObject(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_GetItem(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PySequence_GetItem(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @FieldNameIterator_next(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !326  ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1012 ; 7 uses
  %.not = icmp slt i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.al

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !1013   ; 17 uses
  %i.f = add nsw i64 %i.b, 1                      ; 7 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !326
  %i.g = getelementptr i8, ptr %i.e, i64 32       ; 3 uses
  %i.h = load i32, ptr %i.g, align 8              ; 5 uses
  %i.i = lshr i32 %i.h, 2
  %i.j = and i32 %i.i, 7
  %i.k = and i32 %i.h, 32
  %.not.i19.i = icmp eq i32 %i.k, 0               ; 3 uses
  switch i32 %i.j, label %bb.i [
    i32 1, label %bb.c
    i32 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i19.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = and i32 %i.h, 64
  %.not.i.i.i = icmp eq i32 %i.l, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.e, i64 56
  %.val4.i.i = load ptr, ptr %i.m, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.d ], [ %.val4.i.i, %bb.e ]
  %i.n = getelementptr i8, ptr %.0.i.i, i64 %i.b
  %i.o = load i8, ptr %i.n, align 1, !tbaa !237
  %i.p = zext i8 %i.o to i32
  br label %PyUnicode_READ_CHAR.exit

bb.f:                                             ; preds = %bb.b
  br i1 %.not.i19.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = and i32 %i.h, 64
  %.not.i.i12.i = icmp eq i32 %i.q, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %i.e, i64 56
  %.val4.i16.i = load ptr, ptr %i.r, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.h, %bb.g
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.g ], [ %.val4.i16.i, %bb.h ]
  %i.s = getelementptr [2 x i8], ptr %.0.i15.i, i64 %i.b
  %i.t = load i16, ptr %i.s, align 2, !tbaa !240
  %i.u = zext i16 %i.t to i32
  br label %PyUnicode_READ_CHAR.exit

bb.i:                                             ; preds = %bb.b
  br i1 %.not.i19.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = and i32 %i.h, 64
  %.not.i.i20.i = icmp eq i32 %i.v, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.k:                                             ; preds = %bb.i
  %i.w = getelementptr i8, ptr %i.e, i64 56
  %.val4.i24.i = load ptr, ptr %i.w, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.k, %bb.j
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.j ], [ %.val4.i24.i, %bb.k ]
  %i.x = getelementptr [4 x i8], ptr %.0.i23.i, i64 %i.b
  %i.y = load i32, ptr %i.x, align 4, !tbaa !43
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.p, %_PyUnicode_DATA.exit.i ], [ %i.u, %_PyUnicode_DATA.exit17.i ], [ %i.y, %_PyUnicode_DATA.exit25.i ]
  switch i32 %.0.i, label %.sink.split [
    i32 46, label %bb.l
    i32 91, label %bb.x
  ]

bb.l:                                             ; preds = %PyUnicode_READ_CHAR.exit
  store i32 1, ptr %1, align 4, !tbaa !43
  store ptr %i.e, ptr %3, align 8, !tbaa !319
  %i.z = getelementptr i8, ptr %3, i64 8
  store i64 %i.f, ptr %i.z, align 8, !tbaa !320
  %i.aa = getelementptr i8, ptr %i.e, i64 56      ; 3 uses
  %exitcond.not.i57 = icmp eq i64 %i.f, %i.d
  br i1 %exitcond.not.i57, label %_FieldNameIterator_attr.exit, label %.lr.ph58

bb.m:                                             ; preds = %PyUnicode_READ_CHAR.exit.i
  %exitcond.not.i = icmp eq i64 %i.ac, %i.d
  br i1 %exitcond.not.i, label %_FieldNameIterator_attr.exit, label %.lr.ph58, !llvm.loop !1010

.lr.ph58:                                         ; preds = %bb.l, %bb.m
  %i.ab = phi i64 [ %i.ac, %bb.m ], [ %i.f, %bb.l ] ; 6 uses
  %i.ac = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !326
  %i.ad = load i32, ptr %i.g, align 8             ; 5 uses
  %i.ae = lshr i32 %i.ad, 2
  %i.af = and i32 %i.ae, 7
  %i.ag = and i32 %i.ad, 32
  %.not.i19.i.i = icmp eq i32 %i.ag, 0            ; 3 uses
  switch i32 %i.af, label %bb.t [
    i32 1, label %bb.n
    i32 2, label %bb.q
  ]

bb.n:                                             ; preds = %.lr.ph58
  br i1 %.not.i19.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = and i32 %i.ad, 64
  %.not.i.i.i.i = icmp eq i32 %i.ah, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.p:                                             ; preds = %bb.n
  %.val4.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.p, %bb.o
  %.0.i.i.i19 = phi ptr [ %.0.i.i.i.i, %bb.o ], [ %.val4.i.i.i, %bb.p ]
  %i.ai = getelementptr i8, ptr %.0.i.i.i19, i64 %i.ab
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !237
end_hunk_1
