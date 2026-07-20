inline.NumInlined: 669
inline.NumDeleted: 5
begin_hunk_0
@.str.390 = private unnamed_addr constant [5 x i8] c"OOnn\00", align 1
@__PRETTY_FUNCTION__.unicode_count = private unnamed_addr constant [48 x i8] c"PyObject *unicode_count(PyObject *, PyObject *)\00", align 1
@.str.391 = private unnamed_addr constant [6 x i8] c"OOnni\00", align 1
@__PRETTY_FUNCTION__.unicode_tailmatch = private unnamed_addr constant [52 x i8] c"PyObject *unicode_tailmatch(PyObject *, PyObject *)\00", align 1
@__PRETTY_FUNCTION__.unicode_find = private unnamed_addr constant [47 x i8] c"PyObject *unicode_find(PyObject *, PyObject *)\00", align 1
@.str.392 = private unnamed_addr constant [23 x i8] c"OInni:unicode_findchar\00", align 1
@__PRETTY_FUNCTION__.unicode_findchar = private unnamed_addr constant [51 x i8] c"PyObject *unicode_findchar(PyObject *, PyObject *)\00", align 1
@.str.393 = private unnamed_addr constant [6 x i8] c"OOO|n\00", align 1
@__PRETTY_FUNCTION__.unicode_compare = private unnamed_addr constant [50 x i8] c"PyObject *unicode_compare(PyObject *, PyObject *)\00", align 1
@.str.394 = private unnamed_addr constant [5 x i8] c"O|y#\00", align 1
@.str.395 = private unnamed_addr constant [4 x i8] c"Oz#\00", align 1
@__PRETTY_FUNCTION__.unicode_equaltoutf8 = private unnamed_addr constant [54 x i8] c"PyObject *unicode_equaltoutf8(PyObject *, PyObject *)\00", align 1
@.str.396 = private unnamed_addr constant [6 x i8] c"Oz#|n\00", align 1
@__PRETTY_FUNCTION__.unicode_equaltoutf8andsize = private unnamed_addr constant [61 x i8] c"PyObject *unicode_equaltoutf8andsize(PyObject *, PyObject *)\00", align 1
@.str.397 = private unnamed_addr constant [4 x i8] c"OOi\00", align 1
@__PRETTY_FUNCTION__.unicode_contains = private unnamed_addr constant [51 x i8] c"PyObject *unicode_contains(PyObject *, PyObject *)\00", align 1
@__PRETTY_FUNCTION__.unicode_isidentifier = private unnamed_addr constant [55 x i8] c"PyObject *unicode_isidentifier(PyObject *, PyObject *)\00", align 1
@__PRETTY_FUNCTION__.unicode_equal = private unnamed_addr constant [48 x i8] c"PyObject *unicode_equal(PyObject *, PyObject *)\00", align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyTestLimitedCAPI_Init_Unicode(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @PyModule_AddFunctions(ptr noundef %0, ptr noundef nonnull @TestMethods) #4
  %.lobit = ashr i32 %i.a, 31
  ret i32 %.lobit
}

declare i32 @PyModule_AddFunctions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @codec_incrementalencoder(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.80, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.f = call ptr @PyCodec_IncrementalEncoder(ptr noundef %i.d, ptr noundef %i.e) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @codec_incrementaldecoder(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.81, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.f = call ptr @PyCodec_IncrementalDecoder(ptr noundef %i.d, ptr noundef %i.e) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @test_unicode_compare_with_ascii(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyUnicode_FromStringAndSize(ptr noundef nonnull @.str.82, i64 noundef 4) #4 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.83) #4
  tail call void @_Py_DecRef(ptr noundef nonnull %i.a) #4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.84) #4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = tail call ptr @Py_GetConstantBorrowed(i32 noundef 0) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.e, %bb.d ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @test_string_from_format(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.85) #4 ; 18 uses
  %i.b = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.86, i32 noundef 1, i32 noundef 2) #4 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.d = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.c, ptr noundef nonnull @.str.351, ptr noundef nonnull @.str.86) #4 ; 0 uses
  br label %Py_XDECREF.exit3221.thread

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !13
  %i.f = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.e) #4
  %.not2.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i, label %Py_XDECREF.exit4531, label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.c
  tail call void @PyErr_Clear() #4
  %i.g = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.87, i32 noundef 0, i32 noundef 0) #4 ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %Py_XDECREF.exit4533, label %bb.d

bb.d:                                             ; preds = %Py_XDECREF.exit
  %i.i = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.88) #4
  %.not2892 = icmp eq i32 %i.i, 0
  br i1 %.not2892, label %Py_XDECREF.exit3223, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.g) #4 ; 3 uses
  %i.k = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.k, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, ptr noundef %i.j) #4 ; 0 uses
  %.not.i3220 = icmp eq ptr %i.j, null
  br i1 %.not.i3220, label %Py_XDECREF.exit3221.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_DecRef(ptr noundef nonnull %i.j) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit3223:                              ; preds = %bb.d
  tail call void @_Py_DecRef(ptr noundef nonnull %i.g) #4
  %i.m = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.90, i32 noundef 0, i32 noundef 0) #4 ; 2 uses
  %.not.i3224 = icmp eq ptr %i.m, null
  br i1 %.not.i3224, label %bb.h, label %bb.g

bb.g:                                             ; preds = %Py_XDECREF.exit3223
  %i.n = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.o = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.351, ptr noundef nonnull @.str.90) #4 ; 0 uses
  br label %Py_XDECREF.exit3221.thread

bb.h:                                             ; preds = %Py_XDECREF.exit3223
  %i.p = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !13
  %i.q = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.p) #4
  %.not2.i3226 = icmp eq i32 %i.q, 0
  br i1 %.not2.i3226, label %Py_XDECREF.exit4531, label %Py_XDECREF.exit3229

Py_XDECREF.exit3229:                              ; preds = %bb.h
  tail call void @PyErr_Clear() #4
  %i.r = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.91, i32 noundef 0, i32 noundef 0) #4 ; 2 uses
  %.not.i3230 = icmp eq ptr %i.r, null
  br i1 %.not.i3230, label %bb.j, label %bb.i

bb.i:                                             ; preds = %Py_XDECREF.exit3229
  %i.s = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.t = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.s, ptr noundef nonnull @.str.351, ptr noundef nonnull @.str.91) #4 ; 0 uses
  br label %Py_XDECREF.exit3221.thread

bb.j:                                             ; preds = %Py_XDECREF.exit3229
  %i.u = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !13
  %i.v = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.u) #4
  %.not2.i3232 = icmp eq i32 %i.v, 0
  br i1 %.not2.i3232, label %Py_XDECREF.exit4531, label %Py_XDECREF.exit3235

Py_XDECREF.exit3235:                              ; preds = %bb.j
  tail call void @PyErr_Clear() #4
  %i.w = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.92, i32 noundef 0, i32 noundef 0) #4 ; 2 uses
  %.not.i3236 = icmp eq ptr %i.w, null
  br i1 %.not.i3236, label %bb.l, label %bb.k

bb.k:                                             ; preds = %Py_XDECREF.exit3235
  %i.x = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.y = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.x, ptr noundef nonnull @.str.351, ptr noundef nonnull @.str.92) #4 ; 0 uses
  br label %Py_XDECREF.exit3221.thread

bb.l:                                             ; preds = %Py_XDECREF.exit3235
  %i.z = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !13
  %i.aa = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.z) #4
  %.not2.i3238 = icmp eq i32 %i.aa, 0
  br i1 %.not2.i3238, label %Py_XDECREF.exit4531, label %Py_XDECREF.exit3241

Py_XDECREF.exit3241:                              ; preds = %bb.l
  tail call void @PyErr_Clear() #4
  %i.ab = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.93, i32 noundef 0, i32 noundef 0) #4 ; 4 uses
  %2 = tail call fastcc i32 @check_raised_systemerror(ptr noundef %i.ab, ptr noundef nonnull @.str.93)
  %.not2896 = trunc nuw i32 %2 to i1
  br i1 %.not2896, label %bb.m, label %Py_XDECREF.exit3221

bb.m:                                             ; preds = %Py_XDECREF.exit3241
  %.not.i3242 = icmp eq ptr %i.ab, null
  br i1 %.not.i3242, label %Py_XDECREF.exit3247.a, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_DecRef(ptr noundef nonnull %i.ab) #4
  br label %Py_XDECREF.exit3247.a

Py_XDECREF.exit3247.a:                            ; preds = %bb.m, %bb.n
  %3 = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.94, i32 noundef 0, i32 noundef 0) #4 ; 4 uses
  %4 = tail call fastcc i32 @check_raised_systemerror(ptr noundef %3, ptr noundef nonnull @.str.94)
  %.not2897 = trunc nuw i32 %4 to i1
  br i1 %.not2897, label %bb.o, label %Py_XDECREF.exit3221

bb.o:                                             ; preds = %Py_XDECREF.exit3247.a
  %.not.i3244 = icmp eq ptr %3, null
  br i1 %.not.i3244, label %Py_XDECREF.exit3253, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_DecRef(ptr noundef nonnull %3) #4
  br label %Py_XDECREF.exit3253

Py_XDECREF.exit3253:                              ; preds = %bb.o, %bb.p
  %i.ac = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.95, i32 noundef 0, i32 noundef 0) #4 ; 4 uses
  %i.ad = tail call fastcc i32 @check_raised_systemerror(ptr noundef %i.ac, ptr noundef nonnull @.str.95)
  %.not2898 = trunc nuw i32 %i.ad to i1
  br i1 %.not2898, label %bb.q, label %Py_XDECREF.exit3221

bb.q:                                             ; preds = %Py_XDECREF.exit3253
  %.not.i3254 = icmp eq ptr %i.ac, null
  br i1 %.not.i3254, label %Py_XDECREF.exit3255.a, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_DecRef(ptr noundef nonnull %i.ac) #4
  br label %Py_XDECREF.exit3255.a

Py_XDECREF.exit3255.a:                            ; preds = %bb.q, %bb.r
  %i.ae = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.96, i32 noundef 99, i32 noundef 0) #4 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %Py_XDECREF.exit4533, label %bb.s

bb.s:                                             ; preds = %Py_XDECREF.exit3255.a
  %i.ag = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.ae, ptr noundef nonnull @.str.97) #4
  %.not2899 = icmp eq i32 %i.ag, 0
  br i1 %.not2899, label %Py_XDECREF.exit3259.a, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ah = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.ae) #4 ; 3 uses
  %i.ai = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.aj = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ai, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, ptr noundef %i.ah) #4 ; 0 uses
  %.not.i3256.a = icmp eq ptr %i.ah, null
  br i1 %.not.i3256.a, label %Py_XDECREF.exit3221.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_DecRef(ptr noundef nonnull %i.ah) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit3259.a:                            ; preds = %bb.s
  tail call void @_Py_DecRef(ptr noundef nonnull %i.ae) #4
  %i.ak = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.98, i32 noundef 99, i32 noundef 0) #4 ; 6 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %Py_XDECREF.exit4533, label %bb.v

bb.v:                                             ; preds = %Py_XDECREF.exit3259.a
  %i.am = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.ak, ptr noundef nonnull @.str.97) #4
  %.not2900 = icmp eq i32 %i.am, 0
  br i1 %.not2900, label %Py_XDECREF.exit3263.a, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.an = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.ak) #4 ; 3 uses
  %i.ao = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.ap = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ao, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.97, ptr noundef %i.an) #4 ; 0 uses
  %.not.i3260.a = icmp eq ptr %i.an, null
  br i1 %.not.i3260.a, label %Py_XDECREF.exit3221.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_DecRef(ptr noundef nonnull %i.an) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit3263.a:                            ; preds = %bb.v
  tail call void @_Py_DecRef(ptr noundef nonnull %i.ak) #4
  %i.aq = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.99, i32 noundef 99, i32 noundef 0) #4 ; 6 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %Py_XDECREF.exit4533, label %bb.y

bb.y:                                             ; preds = %Py_XDECREF.exit3263.a
  %i.as = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.97) #4
  %.not2901 = icmp eq i32 %i.as, 0
  br i1 %.not2901, label %Py_XDECREF.exit3267.a, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.at = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.aq) #4 ; 3 uses
  %i.au = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.av = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.au, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.97, ptr noundef %i.at) #4 ; 0 uses
  %.not.i3264.a = icmp eq ptr %i.at, null
  br i1 %.not.i3264.a, label %Py_XDECREF.exit3221.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_DecRef(ptr noundef nonnull %i.at) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit3267.a:                            ; preds = %bb.y
  tail call void @_Py_DecRef(ptr noundef nonnull %i.aq) #4
  %i.aw = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.100, i32 noundef 99, i32 noundef 0) #4 ; 4 uses
  %i.ax = tail call fastcc i32 @check_raised_systemerror(ptr noundef %i.aw, ptr noundef nonnull @.str.100)
  %.not2902 = trunc nuw i32 %i.ax to i1
  br i1 %.not2902, label %bb.ab, label %Py_XDECREF.exit3221

bb.ab:                                            ; preds = %Py_XDECREF.exit3267.a
  %.not.i3268.a = icmp eq ptr %i.aw, null
  br i1 %.not.i3268.a, label %Py_XDECREF.exit3269, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_DecRef(ptr noundef nonnull %i.aw) #4
  br label %Py_XDECREF.exit3269

Py_XDECREF.exit3269:                              ; preds = %bb.ab, %bb.ac
  %i.ay = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.101, i32 noundef 99, i32 noundef 0) #4 ; 4 uses
  %i.az = tail call fastcc i32 @check_raised_systemerror(ptr noundef %i.ay, ptr noundef nonnull @.str.101)
  %.not2903 = trunc nuw i32 %i.az to i1
  br i1 %.not2903, label %bb.ad, label %Py_XDECREF.exit3221

bb.ad:                                            ; preds = %Py_XDECREF.exit3269
  %.not.i3270 = icmp eq ptr %i.ay, null
  br i1 %.not.i3270, label %Py_XDECREF.exit3271.a, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Py_DecRef(ptr noundef nonnull %i.ay) #4
  br label %Py_XDECREF.exit3271.a

Py_XDECREF.exit3271.a:                            ; preds = %bb.ad, %bb.ae
  %i.ba = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.102, i32 noundef 99, i32 noundef 0) #4 ; 4 uses
  %i.bb = tail call fastcc i32 @check_raised_systemerror(ptr noundef %i.ba, ptr noundef nonnull @.str.102)
  %.not2904 = trunc nuw i32 %i.bb to i1
  br i1 %.not2904, label %bb.af, label %Py_XDECREF.exit3221

bb.af:                                            ; preds = %Py_XDECREF.exit3271.a
  %.not.i3272.a = icmp eq ptr %i.ba, null
  br i1 %.not.i3272.a, label %Py_XDECREF.exit3273, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_Py_DecRef(ptr noundef nonnull %i.ba) #4
  br label %Py_XDECREF.exit3273

Py_XDECREF.exit3273:                              ; preds = %bb.af, %bb.ag
  %i.bc = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.103, i32 noundef 99, i32 noundef 0) #4 ; 4 uses
  %i.bd = tail call fastcc i32 @check_raised_systemerror(ptr noundef %i.bc, ptr noundef nonnull @.str.103)
  %.not2905 = trunc nuw i32 %i.bd to i1
  br i1 %.not2905, label %bb.ah, label %Py_XDECREF.exit3221

bb.ah:                                            ; preds = %Py_XDECREF.exit3273
  %.not.i3274 = icmp eq ptr %i.bc, null
  br i1 %.not.i3274, label %Py_XDECREF.exit3275.a, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bc) #4
  br label %Py_XDECREF.exit3275.a

Py_XDECREF.exit3275.a:                            ; preds = %bb.ah, %bb.ai
  %i.be = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.104, i32 noundef 123, i32 noundef 0) #4 ; 6 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %Py_XDECREF.exit4533, label %bb.aj

bb.aj:                                            ; preds = %Py_XDECREF.exit3275.a
  %i.bg = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.be, ptr noundef nonnull @.str.105) #4
  %.not2906 = icmp eq i32 %i.bg, 0
  br i1 %.not2906, label %Py_XDECREF.exit3279.a, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bh = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.be) #4 ; 3 uses
  %i.bi = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.bj = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bi, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105, ptr noundef %i.bh) #4 ; 0 uses
  %.not.i3276.a = icmp eq ptr %i.bh, null
  br i1 %.not.i3276.a, label %Py_XDECREF.exit3221.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bh) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit3279.a:                            ; preds = %bb.aj
  tail call void @_Py_DecRef(ptr noundef nonnull %i.be) #4
  %i.bk = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.106, i32 noundef 123, i32 noundef 0) #4 ; 6 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %Py_XDECREF.exit4533, label %bb.am

bb.am:                                            ; preds = %Py_XDECREF.exit3279.a
  %i.bm = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.bk, ptr noundef nonnull @.str.105) #4
  %.not2907 = icmp eq i32 %i.bm, 0
  br i1 %.not2907, label %Py_XDECREF.exit3283.a, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bn = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.bk) #4 ; 3 uses
  %i.bo = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.bp = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bo, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105, ptr noundef %i.bn) #4 ; 0 uses
  %.not.i3280.a = icmp eq ptr %i.bn, null
  br i1 %.not.i3280.a, label %Py_XDECREF.exit3221.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bn) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit3283.a:                            ; preds = %bb.am
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bk) #4
  %i.bq = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.107, i32 noundef 123, i32 noundef 0) #4 ; 6 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %Py_XDECREF.exit4533, label %bb.ap

bb.ap:                                            ; preds = %Py_XDECREF.exit3283.a
  %i.bs = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.bq, ptr noundef nonnull @.str.105) #4
  %.not2908 = icmp eq i32 %i.bs, 0
  br i1 %.not2908, label %Py_XDECREF.exit3287.a, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bt = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.bq) #4 ; 3 uses
  %i.bu = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.bv = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bu, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.105, ptr noundef %i.bt) #4 ; 0 uses
  %.not.i3284.a = icmp eq ptr %i.bt, null
  br i1 %.not.i3284.a, label %Py_XDECREF.exit3221.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bt) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit3287.a:                            ; preds = %bb.ap
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bq) #4
  %i.bw = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.108, i32 noundef 123, i32 noundef 0) #4 ; 6 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %Py_XDECREF.exit4533, label %bb.as

bb.as:                                            ; preds = %Py_XDECREF.exit3287.a
  %i.by = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.109) #4
  %.not2909 = icmp eq i32 %i.by, 0
  br i1 %.not2909, label %Py_XDECREF.exit3291.a, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bz = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.bw) #4 ; 3 uses
  %i.ca = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.cb = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ca, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, ptr noundef %i.bz) #4 ; 0 uses
  %.not.i3288.a = icmp eq ptr %i.bz, null
  br i1 %.not.i3288.a, label %Py_XDECREF.exit3221.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bz) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit3291.a:                            ; preds = %bb.as
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bw) #4
  %i.cc = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.110, i32 noundef 123, i32 noundef 0) #4 ; 6 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %Py_XDECREF.exit4533, label %bb.av

bb.av:                                            ; preds = %Py_XDECREF.exit3291.a
  %i.ce = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.cc, ptr noundef nonnull @.str.111) #4
  %.not2910 = icmp eq i32 %i.ce, 0
  br i1 %.not2910, label %Py_XDECREF.exit3295.a, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cf = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.cc) #4 ; 3 uses
  %i.cg = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.ch = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cg, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, ptr noundef %i.cf) #4 ; 0 uses
  %.not.i3292.a = icmp eq ptr %i.cf, null
  br i1 %.not.i3292.a, label %Py_XDECREF.exit3221.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @_Py_DecRef(ptr noundef nonnull %i.cf) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit3295.a:                            ; preds = %bb.av
  tail call void @_Py_DecRef(ptr noundef nonnull %i.cc) #4
  %i.ci = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.112, i32 noundef 123, i32 noundef 0) #4 ; 6 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %Py_XDECREF.exit4533, label %bb.ay

bb.ay:                                            ; preds = %Py_XDECREF.exit3295.a
  %i.ck = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.ci, ptr noundef nonnull @.str.113) #4
  %.not2911 = icmp eq i32 %i.ck, 0
  br i1 %.not2911, label %Py_XDECREF.exit3299.a, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cl = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.ci) #4 ; 3 uses
  %i.cm = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.cn = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cm, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, ptr noundef %i.cl) #4 ; 0 uses
  %.not.i3296.a = icmp eq ptr %i.cl, null
  br i1 %.not.i3296.a, label %Py_XDECREF.exit3221.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @_Py_DecRef(ptr noundef nonnull %i.cl) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit3299.a:                            ; preds = %bb.ay
  tail call void @_Py_DecRef(ptr noundef nonnull %i.ci) #4
  %i.co = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.114, i64 noundef 123, i32 noundef 0) #4 ; 6 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %Py_XDECREF.exit4533, label %bb.bb

bb.bb:                                            ; preds = %Py_XDECREF.exit3299.a
  %i.cq = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.co, ptr noundef nonnull @.str.105) #4
  %.not2912 = icmp eq i32 %i.cq, 0
  br i1 %.not2912, label %Py_XDECREF.exit3303.a, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cr = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.co) #4 ; 3 uses
  %i.cs = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.ct = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cs, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.105, ptr noundef %i.cr) #4 ; 0 uses
  %.not.i3300.a = icmp eq ptr %i.cr, null
  br i1 %.not.i3300.a, label %Py_XDECREF.exit3221.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @_Py_DecRef(ptr noundef nonnull %i.cr) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit3303.a:                            ; preds = %bb.bb
  tail call void @_Py_DecRef(ptr noundef nonnull %i.co) #4
  %i.cu = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.115, i64 noundef 123, i32 noundef 0) #4 ; 6 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %Py_XDECREF.exit4533, label %bb.be

bb.be:                                            ; preds = %Py_XDECREF.exit3303.a
  %i.cw = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.cu, ptr noundef nonnull @.str.105) #4
  %.not2913 = icmp eq i32 %i.cw, 0
  br i1 %.not2913, label %Py_XDECREF.exit3307.a, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cx = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.cu) #4 ; 3 uses
  %i.cy = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.cz = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cy, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.105, ptr noundef %i.cx) #4 ; 0 uses
  %.not.i3304.a = icmp eq ptr %i.cx, null
  br i1 %.not.i3304.a, label %Py_XDECREF.exit3221.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @_Py_DecRef(ptr noundef nonnull %i.cx) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit3307.a:                            ; preds = %bb.be
  tail call void @_Py_DecRef(ptr noundef nonnull %i.cu) #4
  %i.da = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.116, i64 noundef 123, i32 noundef 0) #4 ; 6 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %Py_XDECREF.exit4533, label %bb.bh

bb.bh:                                            ; preds = %Py_XDECREF.exit3307.a
  %i.dc = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.da, ptr noundef nonnull @.str.105) #4
  %.not2914 = icmp eq i32 %i.dc, 0
  br i1 %.not2914, label %Py_XDECREF.exit3311.a, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dd = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.da) #4 ; 3 uses
  %i.de = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.df = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.de, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.105, ptr noundef %i.dd) #4 ; 0 uses
  %.not.i3308.a = icmp eq ptr %i.dd, null
end_hunk_0
begin_hunk_1_@test_string_from_format:bb.a
  %i.buf = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bue, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.343, ptr noundef nonnull @.str.85, ptr noundef %i.bud) #4 ; 0 uses
  %.not.i4492.a = icmp eq ptr %i.bud, null
  br i1 %.not.i4492.a, label %Py_XDECREF.exit3221.thread, label %bb.ajn

bb.ajn:                                           ; preds = %bb.ajm
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bud) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit4495.a:                            ; preds = %bb.ajl
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bua) #4
  %i.bug = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.344, ptr noundef nonnull @.str.292, i32 noundef 0) #4 ; 6 uses
  %i.buh = icmp eq ptr %i.bug, null
  br i1 %i.buh, label %Py_XDECREF.exit4533, label %bb.ajo

bb.ajo:                                           ; preds = %Py_XDECREF.exit4495.a
  %i.bui = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.bug, ptr noundef nonnull @.str.85) #4
  %.not3211 = icmp eq i32 %i.bui, 0
  br i1 %.not3211, label %Py_XDECREF.exit4499.a, label %bb.ajp

bb.ajp:                                           ; preds = %bb.ajo
  %i.buj = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.bug) #4 ; 3 uses
  %i.buk = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.bul = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.buk, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.344, ptr noundef nonnull @.str.85, ptr noundef %i.buj) #4 ; 0 uses
  %.not.i4496.a = icmp eq ptr %i.buj, null
  br i1 %.not.i4496.a, label %Py_XDECREF.exit3221.thread, label %bb.ajq

bb.ajq:                                           ; preds = %bb.ajp
  tail call void @_Py_DecRef(ptr noundef nonnull %i.buj) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit4499.a:                            ; preds = %bb.ajo
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bug) #4
  %i.bum = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.345, ptr noundef %i.a, i32 noundef 0) #4 ; 6 uses
  %i.bun = icmp eq ptr %i.bum, null
  br i1 %i.bun, label %Py_XDECREF.exit4533, label %bb.ajr

bb.ajr:                                           ; preds = %Py_XDECREF.exit4499.a
  %i.buo = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.bum, ptr noundef nonnull @.str.85) #4
  %.not3212 = icmp eq i32 %i.buo, 0
  br i1 %.not3212, label %Py_XDECREF.exit4503.a, label %bb.ajs

bb.ajs:                                           ; preds = %bb.ajr
  %i.bup = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.bum) #4 ; 3 uses
  %i.buq = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.bur = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.buq, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.345, ptr noundef nonnull @.str.85, ptr noundef %i.bup) #4 ; 0 uses
  %.not.i4500.a = icmp eq ptr %i.bup, null
  br i1 %.not.i4500.a, label %Py_XDECREF.exit3221.thread, label %bb.ajt

bb.ajt:                                           ; preds = %bb.ajs
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bup) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit4503.a:                            ; preds = %bb.ajr
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bum) #4
  %i.bus = tail call ptr @Py_GetConstantBorrowed(i32 noundef 0) #4
  %i.but = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.346, ptr noundef %i.bus, i32 noundef 0) #4 ; 6 uses
  %i.buu = icmp eq ptr %i.but, null
  br i1 %i.buu, label %Py_XDECREF.exit4533, label %bb.aju

bb.aju:                                           ; preds = %Py_XDECREF.exit4503.a
  %i.buv = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.but, ptr noundef nonnull @.str.85) #4
  %.not3213 = icmp eq i32 %i.buv, 0
  br i1 %.not3213, label %Py_XDECREF.exit4507.a, label %bb.ajv

bb.ajv:                                           ; preds = %bb.aju
  %i.buw = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.but) #4 ; 3 uses
  %i.bux = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.buy = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bux, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.346, ptr noundef nonnull @.str.85, ptr noundef %i.buw) #4 ; 0 uses
  %.not.i4504.a = icmp eq ptr %i.buw, null
  br i1 %.not.i4504.a, label %Py_XDECREF.exit3221.thread, label %bb.ajw

bb.ajw:                                           ; preds = %bb.ajv
  tail call void @_Py_DecRef(ptr noundef nonnull %i.buw) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit4507.a:                            ; preds = %bb.aju
  tail call void @_Py_DecRef(ptr noundef nonnull %i.but) #4
  %i.buz = tail call ptr @Py_GetConstantBorrowed(i32 noundef 0) #4
  %i.bva = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.347, ptr noundef %i.buz, i32 noundef 0) #4 ; 6 uses
  %i.bvb = icmp eq ptr %i.bva, null
  br i1 %i.bvb, label %Py_XDECREF.exit4533, label %bb.ajx

bb.ajx:                                           ; preds = %Py_XDECREF.exit4507.a
  %i.bvc = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.bva, ptr noundef nonnull @.str.85) #4
  %.not3214 = icmp eq i32 %i.bvc, 0
  br i1 %.not3214, label %Py_XDECREF.exit4511.a, label %bb.ajy

bb.ajy:                                           ; preds = %bb.ajx
  %i.bvd = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.bva) #4 ; 3 uses
  %i.bve = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.bvf = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bve, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.85, ptr noundef %i.bvd) #4 ; 0 uses
  %.not.i4508.a = icmp eq ptr %i.bvd, null
  br i1 %.not.i4508.a, label %Py_XDECREF.exit3221.thread, label %bb.ajz

bb.ajz:                                           ; preds = %bb.ajy
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bvd) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit4511.a:                            ; preds = %bb.ajx
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bva) #4
  %i.bvg = tail call ptr @Py_GetConstantBorrowed(i32 noundef 0) #4
  %i.bvh = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.348, ptr noundef %i.bvg, i32 noundef 0) #4 ; 6 uses
  %i.bvi = icmp eq ptr %i.bvh, null
  br i1 %i.bvi, label %Py_XDECREF.exit4533, label %bb.aka

bb.aka:                                           ; preds = %Py_XDECREF.exit4511.a
  %i.bvj = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.bvh, ptr noundef nonnull @.str.85) #4
  %.not3215 = icmp eq i32 %i.bvj, 0
  br i1 %.not3215, label %Py_XDECREF.exit4515.a, label %bb.akb

bb.akb:                                           ; preds = %bb.aka
  %i.bvk = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.bvh) #4 ; 3 uses
  %i.bvl = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.bvm = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bvl, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.348, ptr noundef nonnull @.str.85, ptr noundef %i.bvk) #4 ; 0 uses
  %.not.i4512.a = icmp eq ptr %i.bvk, null
  br i1 %.not.i4512.a, label %Py_XDECREF.exit3221.thread, label %bb.akc

bb.akc:                                           ; preds = %bb.akb
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bvk) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit4515.a:                            ; preds = %bb.aka
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bvh) #4
  %i.bvn = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.349, ptr noundef %i.a, ptr noundef nonnull @.str.298) #4 ; 6 uses
  %i.bvo = icmp eq ptr %i.bvn, null
  br i1 %i.bvo, label %Py_XDECREF.exit4533, label %bb.akd

bb.akd:                                           ; preds = %Py_XDECREF.exit4515.a
  %i.bvp = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.bvn, ptr noundef nonnull @.str.85) #4
  %.not3216 = icmp eq i32 %i.bvp, 0
  br i1 %.not3216, label %Py_XDECREF.exit4519.a, label %bb.ake

bb.ake:                                           ; preds = %bb.akd
  %i.bvq = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.bvn) #4 ; 3 uses
  %i.bvr = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.bvs = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bvr, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.349, ptr noundef nonnull @.str.85, ptr noundef %i.bvq) #4 ; 0 uses
  %.not.i4516.a = icmp eq ptr %i.bvq, null
  br i1 %.not.i4516.a, label %Py_XDECREF.exit3221.thread, label %bb.akf

bb.akf:                                           ; preds = %bb.ake
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bvq) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit4519.a:                            ; preds = %bb.akd
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bvn) #4
  %i.bvt = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.349, ptr noundef null, ptr noundef nonnull @.str.85) #4 ; 6 uses
  %i.bvu = icmp eq ptr %i.bvt, null
  br i1 %i.bvu, label %Py_XDECREF.exit4533, label %bb.akg

bb.akg:                                           ; preds = %Py_XDECREF.exit4519.a
  %i.bvv = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.bvt, ptr noundef nonnull @.str.85) #4
  %.not3217 = icmp eq i32 %i.bvv, 0
  br i1 %.not3217, label %Py_XDECREF.exit4523.a, label %bb.akh

bb.akh:                                           ; preds = %bb.akg
  %i.bvw = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.bvt) #4 ; 3 uses
  %i.bvx = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.bvy = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bvx, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.349, ptr noundef nonnull @.str.85, ptr noundef %i.bvw) #4 ; 0 uses
  %.not.i4520.a = icmp eq ptr %i.bvw, null
  br i1 %.not.i4520.a, label %Py_XDECREF.exit3221.thread, label %bb.aki

bb.aki:                                           ; preds = %bb.akh
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bvw) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit4523.a:                            ; preds = %bb.akg
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bvt) #4
  %i.bvz = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.350, ptr noundef null, ptr noundef nonnull @.str.292) #4 ; 6 uses
  %i.bwa = icmp eq ptr %i.bvz, null
  br i1 %i.bwa, label %Py_XDECREF.exit4533, label %bb.akj

bb.akj:                                           ; preds = %Py_XDECREF.exit4523.a
  %i.bwb = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef nonnull %i.bvz, ptr noundef nonnull @.str.85) #4
  %.not3218 = icmp eq i32 %i.bwb, 0
  br i1 %.not3218, label %Py_XDECREF.exit4527, label %bb.akk

bb.akk:                                           ; preds = %bb.akj
  %i.bwc = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.bvz) #4 ; 3 uses
  %i.bwd = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.bwe = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bwd, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.350, ptr noundef nonnull @.str.85, ptr noundef %i.bwc) #4 ; 0 uses
  %.not.i4524.a = icmp eq ptr %i.bwc, null
  br i1 %.not.i4524.a, label %Py_XDECREF.exit3221.thread, label %bb.akl

bb.akl:                                           ; preds = %bb.akk
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bwc) #4
  br label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit4527:                              ; preds = %bb.akj
  tail call void @_Py_DecRef(ptr noundef nonnull %i.bvz) #4
  %.not.i4528 = icmp eq ptr %i.a, null
  br i1 %.not.i4528, label %Py_XDECREF.exit4529, label %bb.akm

bb.akm:                                           ; preds = %Py_XDECREF.exit4527
  tail call void @_Py_DecRef(ptr noundef nonnull %i.a) #4
  br label %Py_XDECREF.exit4529

Py_XDECREF.exit4529:                              ; preds = %Py_XDECREF.exit4527, %bb.akm
  %i.bwf = tail call ptr @Py_GetConstantBorrowed(i32 noundef 0) #4
  br label %Py_XDECREF.exit4533

Py_XDECREF.exit3221:                              ; preds = %Py_XDECREF.exit3273, %Py_XDECREF.exit3271.a, %Py_XDECREF.exit3269, %Py_XDECREF.exit3267.a, %Py_XDECREF.exit3253, %Py_XDECREF.exit3247.a, %Py_XDECREF.exit3241
  %.02574 = phi ptr [ %i.aw, %Py_XDECREF.exit3267.a ], [ %i.ac, %Py_XDECREF.exit3253 ], [ %3, %Py_XDECREF.exit3247.a ], [ %i.ab, %Py_XDECREF.exit3241 ], [ %i.bc, %Py_XDECREF.exit3273 ], [ %i.ba, %Py_XDECREF.exit3271.a ], [ %i.ay, %Py_XDECREF.exit3269 ] ; 2 uses
  %.not.i4530 = icmp eq ptr %.02574, null
  br i1 %.not.i4530, label %Py_XDECREF.exit4531, label %Py_XDECREF.exit3221.thread

Py_XDECREF.exit3221.thread:                       ; preds = %bb.b, %bb.k, %bb.i, %bb.g, %bb.akl, %bb.akk, %bb.akh, %bb.ake, %bb.akb, %bb.ajy, %bb.ajv, %bb.ajs, %bb.ajp, %bb.ajm, %bb.ajj, %bb.ajg, %bb.ajd, %bb.aja, %bb.aix, %bb.aiu, %bb.air, %bb.aio, %bb.ail, %bb.aii, %bb.aif, %bb.aic, %bb.ahz, %bb.ahw, %bb.aht, %bb.ahq, %bb.ahn, %bb.ahk, %bb.ahh, %bb.ahe, %bb.ahb, %bb.agy, %bb.agv, %bb.ags, %bb.agp, %bb.agm, %bb.agj, %bb.agg, %bb.agd, %bb.aga, %bb.afx, %bb.afu, %bb.afr, %bb.afo, %bb.afl, %bb.afi, %bb.aff, %bb.afc, %bb.aez, %bb.aew, %bb.aet, %bb.aeq, %bb.aen, %bb.aek, %bb.aeh, %bb.aee, %bb.aeb, %bb.ady, %bb.adv, %bb.ads, %bb.adp, %bb.adm, %bb.adj, %bb.adg, %bb.add, %bb.ada, %bb.acx, %bb.acu, %bb.acr, %bb.aco, %bb.acl, %bb.aci, %bb.acf, %bb.acc, %bb.abz, %bb.abw, %bb.abt, %bb.abq, %bb.abn, %bb.abk, %bb.abh, %bb.abe, %bb.abb, %bb.aay, %bb.aav, %bb.aas, %bb.aap, %bb.aam, %bb.aaj, %bb.aag, %bb.aad, %bb.aaa, %bb.zx, %bb.zu, %bb.zr, %bb.zo, %bb.zl, %bb.zi, %bb.zf, %bb.zc, %bb.yz, %bb.yw, %bb.yt, %bb.yq, %bb.yn, %bb.yk, %bb.yh, %bb.ye, %bb.yb, %bb.xy, %bb.xv, %bb.xs, %bb.xp, %bb.xm, %bb.xj, %bb.xg, %bb.xd, %bb.xa, %bb.wx, %bb.wu, %bb.wr, %bb.wo, %bb.wl, %bb.wi, %bb.wf, %bb.wc, %bb.vz, %bb.vw, %bb.vt, %bb.vq, %bb.vn, %bb.vk, %bb.vh, %bb.ve, %bb.vb, %bb.uy, %bb.uv, %bb.us, %bb.up, %bb.um, %bb.uj, %bb.ug, %bb.ud, %bb.ua, %bb.tx, %bb.tu, %bb.tr, %bb.to, %bb.tl, %bb.ti, %bb.tf, %bb.tc, %bb.sz, %bb.sw, %bb.st, %bb.sq, %bb.sn, %bb.sk, %bb.sh, %bb.se, %bb.sb, %bb.ry, %bb.rv, %bb.rs, %bb.rp, %bb.rm, %bb.rj, %bb.rg, %bb.rd, %bb.ra, %bb.qx, %bb.qu, %bb.qr, %bb.qo, %bb.ql, %bb.qi, %bb.qf, %bb.qc, %bb.pz, %bb.pw, %bb.pt, %bb.pq, %bb.pn, %bb.pk, %bb.ph, %bb.pe, %bb.pb, %bb.oy, %bb.ov, %bb.os, %bb.op, %bb.om, %bb.oj, %bb.og, %bb.od, %bb.oa, %bb.nx, %bb.nu, %bb.nr, %bb.no, %bb.nl, %bb.ni, %bb.nf, %bb.nc, %bb.mz, %bb.mw, %bb.mt, %bb.mq, %bb.mn, %bb.mk, %bb.mh, %bb.me, %bb.mb, %bb.ly, %bb.lv, %bb.ls, %bb.lp, %bb.lm, %bb.lj, %bb.lg, %bb.ld, %bb.la, %bb.kx, %bb.ku, %bb.kr, %bb.ko, %bb.kl, %bb.ki, %bb.kf, %bb.kc, %bb.jz, %bb.jw, %bb.jt, %bb.jq, %bb.jn, %bb.jk, %bb.jh, %bb.je, %bb.jb, %bb.iy, %bb.iv, %bb.is, %bb.ip, %bb.im, %bb.ij, %bb.ig, %bb.id, %bb.ia, %bb.hx, %bb.hu, %bb.hr, %bb.ho, %bb.hl, %bb.hi, %bb.hf, %bb.hc, %bb.gz, %bb.gw, %bb.gt, %bb.gq, %bb.gn, %bb.gk, %bb.gh, %bb.ge, %bb.gb, %bb.fy, %bb.fv, %bb.fs, %bb.fp, %bb.fm, %bb.fj, %bb.fg, %bb.fd, %bb.fa, %bb.ex, %bb.eu, %bb.er, %bb.eo, %bb.el, %bb.ei, %bb.ef, %bb.ec, %bb.dz, %bb.dw, %bb.dt, %bb.dq, %bb.dn, %bb.dk, %bb.dh, %bb.de, %bb.db, %bb.cy, %bb.cv, %bb.cs, %bb.cp, %bb.cm, %bb.cj, %bb.cg, %bb.cd, %bb.ca, %bb.bx, %bb.bu, %bb.br, %bb.bo, %bb.bl, %bb.bi, %bb.bf, %bb.bc, %bb.az, %bb.aw, %bb.at, %bb.aq, %bb.an, %bb.ak, %bb.z, %bb.w, %bb.t, %bb.e, %bb.aki, %bb.akf, %bb.akc, %bb.ajz, %bb.ajw, %bb.ajt, %bb.ajq, %bb.ajn, %bb.ajk, %bb.ajh, %bb.aje, %bb.ajb, %bb.aiy, %bb.aiv, %bb.ais, %bb.aip, %bb.aim, %bb.aij, %bb.aig, %bb.aid, %bb.aia, %bb.ahx, %bb.ahu, %bb.ahr, %bb.aho, %bb.ahl, %bb.ahi, %bb.ahf, %bb.ahc, %bb.agz, %bb.agw, %bb.agt, %bb.agq, %bb.agn, %bb.agk, %bb.agh, %bb.age, %bb.agb, %bb.afy, %bb.afv, %bb.afs, %bb.afp, %bb.afm, %bb.afj, %bb.afg, %bb.afd, %bb.afa, %bb.aex, %bb.aeu, %bb.aer, %bb.aeo, %bb.ael, %bb.aei, %bb.aef, %bb.aec, %bb.adz, %bb.adw, %bb.adt, %bb.adq, %bb.adn, %bb.adk, %bb.adh, %bb.ade, %bb.adb, %bb.acy, %bb.acv, %bb.acs, %bb.acp, %bb.acm, %bb.acj, %bb.acg, %bb.acd, %bb.aca, %bb.abx, %bb.abu, %bb.abr, %bb.abo, %bb.abl, %bb.abi, %bb.abf, %bb.abc, %bb.aaz, %bb.aaw, %bb.aat, %bb.aaq, %bb.aan, %bb.aak, %bb.aah, %bb.aae, %bb.aab, %bb.zy, %bb.zv, %bb.zs, %bb.zp, %bb.zm, %bb.zj, %bb.zg, %bb.zd, %bb.za, %bb.yx, %bb.yu, %bb.yr, %bb.yo, %bb.yl, %bb.yi, %bb.yf, %bb.yc, %bb.xz, %bb.xw, %bb.xt, %bb.xq, %bb.xn, %bb.xk, %bb.xh, %bb.xe, %bb.xb, %bb.wy, %bb.wv, %bb.ws, %bb.wp, %bb.wm, %bb.wj, %bb.wg, %bb.wd, %bb.wa, %bb.vx, %bb.vu, %bb.vr, %bb.vo, %bb.vl, %bb.vi, %bb.vf, %bb.vc, %bb.uz, %bb.uw, %bb.ut, %bb.uq, %bb.un, %bb.uk, %bb.uh, %bb.ue, %bb.ub, %bb.ty, %bb.tv, %bb.ts, %bb.tp, %bb.tm, %bb.tj, %bb.tg, %bb.td, %bb.ta, %bb.sx, %bb.su, %bb.sr, %bb.so, %bb.sl, %bb.si, %bb.sf, %bb.sc, %bb.rz, %bb.rw, %bb.rt, %bb.rq, %bb.rn, %bb.rk, %bb.rh, %bb.re, %bb.rb, %bb.qy, %bb.qv, %bb.qs, %bb.qp, %bb.qm, %bb.qj, %bb.qg, %bb.qd, %bb.qa, %bb.px, %bb.pu, %bb.pr, %bb.po, %bb.pl, %bb.pi, %bb.pf, %bb.pc, %bb.oz, %bb.ow, %bb.ot, %bb.oq, %bb.on, %bb.ok, %bb.oh, %bb.oe, %bb.ob, %bb.ny, %bb.nv, %bb.ns, %bb.np, %bb.nm, %bb.nj, %bb.ng, %bb.nd, %bb.na, %bb.mx, %bb.mu, %bb.mr, %bb.mo, %bb.ml, %bb.mi, %bb.mf, %bb.mc, %bb.lz, %bb.lw, %bb.lt, %bb.lq, %bb.ln, %bb.lk, %bb.lh, %bb.le, %bb.lb, %bb.ky, %bb.kv, %bb.ks, %bb.kp, %bb.km, %bb.kj, %bb.kg, %bb.kd, %bb.ka, %bb.jx, %bb.ju, %bb.jr, %bb.jo, %bb.jl, %bb.ji, %bb.jf, %bb.jc, %bb.iz, %bb.iw, %bb.it, %bb.iq, %bb.in, %bb.ik, %bb.ih, %bb.ie, %bb.ib, %bb.hy, %bb.hv, %bb.hs, %bb.hp, %bb.hm, %bb.hj, %bb.hg, %bb.hd, %bb.ha, %bb.gx, %bb.gu, %bb.gr, %bb.go, %bb.gl, %bb.gi, %bb.gf, %bb.gc, %bb.fz, %bb.fw, %bb.ft, %bb.fq, %bb.fn, %bb.fk, %bb.fh, %bb.fe, %bb.fb, %bb.ey, %bb.ev, %bb.es, %bb.ep, %bb.em, %bb.ej, %bb.eg, %bb.ed, %bb.ea, %bb.dx, %bb.du, %bb.dr, %bb.do, %bb.dl, %bb.di, %bb.df, %bb.dc, %bb.cz, %bb.cw, %bb.ct, %bb.cq, %bb.cn, %bb.ck, %bb.ch, %bb.ce, %bb.cb, %bb.by, %bb.bv, %bb.bs, %bb.bp, %bb.bm, %bb.bj, %bb.bg, %bb.bd, %bb.ba, %bb.ax, %bb.au, %bb.ar, %bb.ao, %bb.al, %bb.aa, %bb.x, %bb.u, %bb.f, %Py_XDECREF.exit3221
  %.025744536 = phi ptr [ %.02574, %Py_XDECREF.exit3221 ], [ %i.bvz, %bb.akl ], [ %i.bvz, %bb.akk ], [ %i.bvt, %bb.akh ], [ %i.bvn, %bb.ake ], [ %i.bvh, %bb.akb ], [ %i.bva, %bb.ajy ], [ %i.but, %bb.ajv ], [ %i.bum, %bb.ajs ], [ %i.bug, %bb.ajp ], [ %i.bua, %bb.ajm ], [ %i.btu, %bb.ajj ], [ %i.bto, %bb.ajg ], [ %i.bti, %bb.ajd ], [ %i.btc, %bb.aja ], [ %i.bsv, %bb.aix ], [ %i.bso, %bb.aiu ], [ %i.bsh, %bb.air ], [ %i.bsb, %bb.aio ], [ %i.brv, %bb.ail ], [ %i.brp, %bb.aii ], [ %i.brj, %bb.aif ], [ %i.brd, %bb.aic ], [ %i.bqx, %bb.ahz ], [ %i.bqq, %bb.ahw ], [ %i.bqj, %bb.aht ], [ %i.bqc, %bb.ahq ], [ %i.bpw, %bb.ahn ], [ %i.bpq, %bb.ahk ], [ %i.bpk, %bb.ahh ], [ %i.bpe, %bb.ahe ], [ %i.boy, %bb.ahb ], [ %i.bos, %bb.agy ], [ %i.bol, %bb.agv ], [ %i.boe, %bb.ags ], [ %i.bnx, %bb.agp ], [ %i.bnr, %bb.agm ], [ %i.bnl, %bb.agj ], [ %i.bnf, %bb.agg ], [ %i.bmz, %bb.agd ], [ %i.bmt, %bb.aga ], [ %i.bmn, %bb.afx ], [ %i.bmg, %bb.afu ], [ %i.blz, %bb.afr ], [ %i.bls, %bb.afo ], [ %i.blm, %bb.afl ], [ %i.blg, %bb.afi ], [ %i.bla, %bb.aff ], [ %i.bku, %bb.afc ], [ %i.bko, %bb.aez ], [ %i.bki, %bb.aew ], [ %i.bkb, %bb.aet ], [ %i.bju, %bb.aeq ], [ %i.bjn, %bb.aen ], [ %i.bjh, %bb.aek ], [ %i.bjb, %bb.aeh ], [ %i.biv, %bb.aee ], [ %i.bip, %bb.aeb ], [ %i.bij, %bb.ady ], [ %i.bid, %bb.adv ], [ %i.bhw, %bb.ads ], [ %i.bhp, %bb.adp ], [ %i.bhi, %bb.adm ], [ %i.bhc, %bb.adj ], [ %i.bgw, %bb.adg ], [ %i.bgq, %bb.add ], [ %i.bgk, %bb.ada ], [ %i.bge, %bb.acx ], [ %i.bfy, %bb.acu ], [ %i.bfs, %bb.acr ], [ %i.bfm, %bb.aco ], [ %i.bfg, %bb.acl ], [ %i.bfa, %bb.aci ], [ %i.beu, %bb.acf ], [ %i.beo, %bb.acc ], [ %i.bei, %bb.abz ], [ %i.bec, %bb.abw ], [ %i.bdw, %bb.abt ], [ %i.bdq, %bb.abq ], [ %i.bdk, %bb.abn ], [ %i.bde, %bb.abk ], [ %i.bcy, %bb.abh ], [ %i.bcs, %bb.abe ], [ %i.bcm, %bb.abb ], [ %i.bcg, %bb.aay ], [ %i.bca, %bb.aav ], [ %i.bbu, %bb.aas ], [ %i.bbo, %bb.aap ], [ %i.bbi, %bb.aam ], [ %i.bbc, %bb.aaj ], [ %i.baw, %bb.aag ], [ %i.baq, %bb.aad ], [ %i.bak, %bb.aaa ], [ %i.bae, %bb.zx ], [ %i.azy, %bb.zu ], [ %i.azs, %bb.zr ], [ %i.azm, %bb.zo ], [ %i.azg, %bb.zl ], [ %i.aza, %bb.zi ], [ %i.ayu, %bb.zf ], [ %i.ayo, %bb.zc ], [ %i.ayi, %bb.yz ], [ %i.ayc, %bb.yw ], [ %i.axw, %bb.yt ], [ %i.axq, %bb.yq ], [ %i.axk, %bb.yn ], [ %i.axe, %bb.yk ], [ %i.awy, %bb.yh ], [ %i.aws, %bb.ye ], [ %i.awm, %bb.yb ], [ %i.awg, %bb.xy ], [ %i.awa, %bb.xv ], [ %i.avu, %bb.xs ], [ %i.avo, %bb.xp ], [ %i.avi, %bb.xm ], [ %i.avc, %bb.xj ], [ %i.auw, %bb.xg ], [ %i.auq, %bb.xd ], [ %i.auk, %bb.xa ], [ %i.aue, %bb.wx ], [ %i.aty, %bb.wu ], [ %i.ats, %bb.wr ], [ %i.atm, %bb.wo ], [ %i.atg, %bb.wl ], [ %i.ata, %bb.wi ], [ %i.asu, %bb.wf ], [ %i.aso, %bb.wc ], [ %i.asi, %bb.vz ], [ %i.asc, %bb.vw ], [ %i.arw, %bb.vt ], [ %i.arq, %bb.vq ], [ %i.ark, %bb.vn ], [ %i.are, %bb.vk ], [ %i.aqy, %bb.vh ], [ %i.aqs, %bb.ve ], [ %i.aqm, %bb.vb ], [ %i.aqg, %bb.uy ], [ %i.aqa, %bb.uv ], [ %i.apu, %bb.us ], [ %i.apo, %bb.up ], [ %i.api, %bb.um ], [ %i.apc, %bb.uj ], [ %i.aow, %bb.ug ], [ %i.aoq, %bb.ud ], [ %i.aok, %bb.ua ], [ %i.aoe, %bb.tx ], [ %i.any, %bb.tu ], [ %i.ans, %bb.tr ], [ %i.anm, %bb.to ], [ %i.ang, %bb.tl ], [ %i.ana, %bb.ti ], [ %i.amu, %bb.tf ], [ %i.amo, %bb.tc ], [ %i.ami, %bb.sz ], [ %i.amc, %bb.sw ], [ %i.alw, %bb.st ], [ %i.alq, %bb.sq ], [ %i.alk, %bb.sn ], [ %i.ale, %bb.sk ], [ %i.aky, %bb.sh ], [ %i.aks, %bb.se ], [ %i.akm, %bb.sb ], [ %i.akg, %bb.ry ], [ %i.aka, %bb.rv ], [ %i.aju, %bb.rs ], [ %i.ajo, %bb.rp ], [ %i.aji, %bb.rm ], [ %i.ajc, %bb.rj ], [ %i.aiw, %bb.rg ], [ %i.aiq, %bb.rd ], [ %i.aik, %bb.ra ], [ %i.aie, %bb.qx ], [ %i.ahy, %bb.qu ], [ %i.ahs, %bb.qr ], [ %i.ahm, %bb.qo ], [ %i.ahg, %bb.ql ], [ %i.aha, %bb.qi ], [ %i.agu, %bb.qf ], [ %i.ago, %bb.qc ], [ %i.agi, %bb.pz ], [ %i.agc, %bb.pw ], [ %i.afw, %bb.pt ], [ %i.afq, %bb.pq ], [ %i.afk, %bb.pn ], [ %i.afe, %bb.pk ], [ %i.aey, %bb.ph ], [ %i.aes, %bb.pe ], [ %i.aem, %bb.pb ], [ %i.aeg, %bb.oy ], [ %i.aea, %bb.ov ], [ %i.adu, %bb.os ], [ %i.ado, %bb.op ], [ %i.adi, %bb.om ], [ %i.adc, %bb.oj ], [ %i.acw, %bb.og ], [ %i.acq, %bb.od ], [ %i.ack, %bb.oa ], [ %i.ace, %bb.nx ], [ %i.aby, %bb.nu ], [ %i.abs, %bb.nr ], [ %i.abm, %bb.no ], [ %i.abg, %bb.nl ], [ %i.aba, %bb.ni ], [ %i.aau, %bb.nf ], [ %i.aao, %bb.nc ], [ %i.aai, %bb.mz ], [ %i.aac, %bb.mw ], [ %i.zw, %bb.mt ], [ %i.zq, %bb.mq ], [ %i.zk, %bb.mn ], [ %i.ze, %bb.mk ], [ %i.yy, %bb.mh ], [ %i.ys, %bb.me ], [ %i.ym, %bb.mb ], [ %i.yg, %bb.ly ], [ %i.ya, %bb.lv ], [ %i.xu, %bb.ls ], [ %i.xo, %bb.lp ], [ %i.xi, %bb.lm ], [ %i.xc, %bb.lj ], [ %i.ww, %bb.lg ], [ %i.wq, %bb.ld ], [ %i.wk, %bb.la ], [ %i.we, %bb.kx ], [ %i.vy, %bb.ku ], [ %i.vs, %bb.kr ], [ %i.vm, %bb.ko ], [ %i.vg, %bb.kl ], [ %i.va, %bb.ki ], [ %i.uu, %bb.kf ], [ %i.uo, %bb.kc ], [ %i.ui, %bb.jz ], [ %i.uc, %bb.jw ], [ %i.tw, %bb.jt ], [ %i.tq, %bb.jq ], [ %i.tk, %bb.jn ], [ %i.te, %bb.jk ], [ %i.sy, %bb.jh ], [ %i.ss, %bb.je ], [ %i.sm, %bb.jb ], [ %i.sg, %bb.iy ], [ %i.sa, %bb.iv ], [ %i.ru, %bb.is ], [ %i.ro, %bb.ip ], [ %i.ri, %bb.im ], [ %i.rc, %bb.ij ], [ %i.qw, %bb.ig ], [ %i.qq, %bb.id ], [ %i.qk, %bb.ia ], [ %i.qe, %bb.hx ], [ %i.py, %bb.hu ], [ %i.ps, %bb.hr ], [ %i.pm, %bb.ho ], [ %i.pg, %bb.hl ], [ %i.pa, %bb.hi ], [ %i.ou, %bb.hf ], [ %i.oo, %bb.hc ], [ %i.oi, %bb.gz ], [ %i.oc, %bb.gw ], [ %i.nw, %bb.gt ], [ %i.nq, %bb.gq ], [ %i.nk, %bb.gn ], [ %i.ne, %bb.gk ], [ %i.my, %bb.gh ], [ %i.ms, %bb.ge ], [ %i.mm, %bb.gb ], [ %i.mg, %bb.fy ], [ %i.ma, %bb.fv ], [ %i.lu, %bb.fs ], [ %i.lo, %bb.fp ], [ %i.li, %bb.fm ], [ %i.lc, %bb.fj ], [ %i.kw, %bb.fg ], [ %i.kq, %bb.fd ], [ %i.kk, %bb.fa ], [ %i.ke, %bb.ex ], [ %i.jy, %bb.eu ], [ %i.js, %bb.er ], [ %i.jm, %bb.eo ], [ %i.jg, %bb.el ], [ %i.ja, %bb.ei ], [ %i.iu, %bb.ef ], [ %i.io, %bb.ec ], [ %i.ii, %bb.dz ], [ %i.ic, %bb.dw ], [ %i.hw, %bb.dt ], [ %i.hq, %bb.dq ], [ %i.hk, %bb.dn ], [ %i.he, %bb.dk ], [ %i.gy, %bb.dh ], [ %i.gs, %bb.de ], [ %i.gm, %bb.db ], [ %i.gg, %bb.cy ], [ %i.ga, %bb.cv ], [ %i.fu, %bb.cs ], [ %i.fo, %bb.cp ], [ %i.fi, %bb.cm ], [ %i.fc, %bb.cj ], [ %i.ew, %bb.cg ], [ %i.eq, %bb.cd ], [ %i.ek, %bb.ca ], [ %i.ee, %bb.bx ], [ %i.dy, %bb.bu ], [ %i.ds, %bb.br ], [ %i.dm, %bb.bo ], [ %i.dg, %bb.bl ], [ %i.da, %bb.bi ], [ %i.cu, %bb.bf ], [ %i.co, %bb.bc ], [ %i.ci, %bb.az ], [ %i.cc, %bb.aw ], [ %i.bw, %bb.at ], [ %i.bq, %bb.aq ], [ %i.bk, %bb.an ], [ %i.be, %bb.ak ], [ %i.aq, %bb.z ], [ %i.ak, %bb.w ], [ %i.ae, %bb.t ], [ %i.g, %bb.e ], [ %i.bvt, %bb.aki ], [ %i.bvn, %bb.akf ], [ %i.bvh, %bb.akc ], [ %i.bva, %bb.ajz ], [ %i.but, %bb.ajw ], [ %i.bum, %bb.ajt ], [ %i.bug, %bb.ajq ], [ %i.bua, %bb.ajn ], [ %i.btu, %bb.ajk ], [ %i.bto, %bb.ajh ], [ %i.bti, %bb.aje ], [ %i.btc, %bb.ajb ], [ %i.bsv, %bb.aiy ], [ %i.bso, %bb.aiv ], [ %i.bsh, %bb.ais ], [ %i.bsb, %bb.aip ], [ %i.brv, %bb.aim ], [ %i.brp, %bb.aij ], [ %i.brj, %bb.aig ], [ %i.brd, %bb.aid ], [ %i.bqx, %bb.aia ], [ %i.bqq, %bb.ahx ], [ %i.bqj, %bb.ahu ], [ %i.bqc, %bb.ahr ], [ %i.bpw, %bb.aho ], [ %i.bpq, %bb.ahl ], [ %i.bpk, %bb.ahi ], [ %i.bpe, %bb.ahf ], [ %i.boy, %bb.ahc ], [ %i.bos, %bb.agz ], [ %i.bol, %bb.agw ], [ %i.boe, %bb.agt ], [ %i.bnx, %bb.agq ], [ %i.bnr, %bb.agn ], [ %i.bnl, %bb.agk ], [ %i.bnf, %bb.agh ], [ %i.bmz, %bb.age ], [ %i.bmt, %bb.agb ], [ %i.bmn, %bb.afy ], [ %i.bmg, %bb.afv ], [ %i.blz, %bb.afs ], [ %i.bls, %bb.afp ], [ %i.blm, %bb.afm ], [ %i.blg, %bb.afj ], [ %i.bla, %bb.afg ], [ %i.bku, %bb.afd ], [ %i.bko, %bb.afa ], [ %i.bki, %bb.aex ], [ %i.bkb, %bb.aeu ], [ %i.bju, %bb.aer ], [ %i.bjn, %bb.aeo ], [ %i.bjh, %bb.ael ], [ %i.bjb, %bb.aei ], [ %i.biv, %bb.aef ], [ %i.bip, %bb.aec ], [ %i.bij, %bb.adz ], [ %i.bid, %bb.adw ], [ %i.bhw, %bb.adt ], [ %i.bhp, %bb.adq ], [ %i.bhi, %bb.adn ], [ %i.bhc, %bb.adk ], [ %i.bgw, %bb.adh ], [ %i.bgq, %bb.ade ], [ %i.bgk, %bb.adb ], [ %i.bge, %bb.acy ], [ %i.bfy, %bb.acv ], [ %i.bfs, %bb.acs ], [ %i.bfm, %bb.acp ], [ %i.bfg, %bb.acm ], [ %i.bfa, %bb.acj ], [ %i.beu, %bb.acg ], [ %i.beo, %bb.acd ], [ %i.bei, %bb.aca ], [ %i.bec, %bb.abx ], [ %i.bdw, %bb.abu ], [ %i.bdq, %bb.abr ], [ %i.bdk, %bb.abo ], [ %i.bde, %bb.abl ], [ %i.bcy, %bb.abi ], [ %i.bcs, %bb.abf ], [ %i.bcm, %bb.abc ], [ %i.bcg, %bb.aaz ], [ %i.bca, %bb.aaw ], [ %i.bbu, %bb.aat ], [ %i.bbo, %bb.aaq ], [ %i.bbi, %bb.aan ], [ %i.bbc, %bb.aak ], [ %i.baw, %bb.aah ], [ %i.baq, %bb.aae ], [ %i.bak, %bb.aab ], [ %i.bae, %bb.zy ], [ %i.azy, %bb.zv ], [ %i.azs, %bb.zs ], [ %i.azm, %bb.zp ], [ %i.azg, %bb.zm ], [ %i.aza, %bb.zj ], [ %i.ayu, %bb.zg ], [ %i.ayo, %bb.zd ], [ %i.ayi, %bb.za ], [ %i.ayc, %bb.yx ], [ %i.axw, %bb.yu ], [ %i.axq, %bb.yr ], [ %i.axk, %bb.yo ], [ %i.axe, %bb.yl ], [ %i.awy, %bb.yi ], [ %i.aws, %bb.yf ], [ %i.awm, %bb.yc ], [ %i.awg, %bb.xz ], [ %i.awa, %bb.xw ], [ %i.avu, %bb.xt ], [ %i.avo, %bb.xq ], [ %i.avi, %bb.xn ], [ %i.avc, %bb.xk ], [ %i.auw, %bb.xh ], [ %i.auq, %bb.xe ], [ %i.auk, %bb.xb ], [ %i.aue, %bb.wy ], [ %i.aty, %bb.wv ], [ %i.ats, %bb.ws ], [ %i.atm, %bb.wp ], [ %i.atg, %bb.wm ], [ %i.ata, %bb.wj ], [ %i.asu, %bb.wg ], [ %i.aso, %bb.wd ], [ %i.asi, %bb.wa ], [ %i.asc, %bb.vx ], [ %i.arw, %bb.vu ], [ %i.arq, %bb.vr ], [ %i.ark, %bb.vo ], [ %i.are, %bb.vl ], [ %i.aqy, %bb.vi ], [ %i.aqs, %bb.vf ], [ %i.aqm, %bb.vc ], [ %i.aqg, %bb.uz ], [ %i.aqa, %bb.uw ], [ %i.apu, %bb.ut ], [ %i.apo, %bb.uq ], [ %i.api, %bb.un ], [ %i.apc, %bb.uk ], [ %i.aow, %bb.uh ], [ %i.aoq, %bb.ue ], [ %i.aok, %bb.ub ], [ %i.aoe, %bb.ty ], [ %i.any, %bb.tv ], [ %i.ans, %bb.ts ], [ %i.anm, %bb.tp ], [ %i.ang, %bb.tm ], [ %i.ana, %bb.tj ], [ %i.amu, %bb.tg ], [ %i.amo, %bb.td ], [ %i.ami, %bb.ta ], [ %i.amc, %bb.sx ], [ %i.alw, %bb.su ], [ %i.alq, %bb.sr ], [ %i.alk, %bb.so ], [ %i.ale, %bb.sl ], [ %i.aky, %bb.si ], [ %i.aks, %bb.sf ], [ %i.akm, %bb.sc ], [ %i.akg, %bb.rz ], [ %i.aka, %bb.rw ], [ %i.aju, %bb.rt ], [ %i.ajo, %bb.rq ], [ %i.aji, %bb.rn ], [ %i.ajc, %bb.rk ], [ %i.aiw, %bb.rh ], [ %i.aiq, %bb.re ], [ %i.aik, %bb.rb ], [ %i.aie, %bb.qy ], [ %i.ahy, %bb.qv ], [ %i.ahs, %bb.qs ], [ %i.ahm, %bb.qp ], [ %i.ahg, %bb.qm ], [ %i.aha, %bb.qj ], [ %i.agu, %bb.qg ], [ %i.ago, %bb.qd ], [ %i.agi, %bb.qa ], [ %i.agc, %bb.px ], [ %i.afw, %bb.pu ], [ %i.afq, %bb.pr ], [ %i.afk, %bb.po ], [ %i.afe, %bb.pl ], [ %i.aey, %bb.pi ], [ %i.aes, %bb.pf ], [ %i.aem, %bb.pc ], [ %i.aeg, %bb.oz ], [ %i.aea, %bb.ow ], [ %i.adu, %bb.ot ], [ %i.ado, %bb.oq ], [ %i.adi, %bb.on ], [ %i.adc, %bb.ok ], [ %i.acw, %bb.oh ], [ %i.acq, %bb.oe ], [ %i.ack, %bb.ob ], [ %i.ace, %bb.ny ], [ %i.aby, %bb.nv ], [ %i.abs, %bb.ns ], [ %i.abm, %bb.np ], [ %i.abg, %bb.nm ], [ %i.aba, %bb.nj ], [ %i.aau, %bb.ng ], [ %i.aao, %bb.nd ], [ %i.aai, %bb.na ], [ %i.aac, %bb.mx ], [ %i.zw, %bb.mu ], [ %i.zq, %bb.mr ], [ %i.zk, %bb.mo ], [ %i.ze, %bb.ml ], [ %i.yy, %bb.mi ], [ %i.ys, %bb.mf ], [ %i.ym, %bb.mc ], [ %i.yg, %bb.lz ], [ %i.ya, %bb.lw ], [ %i.xu, %bb.lt ], [ %i.xo, %bb.lq ], [ %i.xi, %bb.ln ], [ %i.xc, %bb.lk ], [ %i.ww, %bb.lh ], [ %i.wq, %bb.le ], [ %i.wk, %bb.lb ], [ %i.we, %bb.ky ], [ %i.vy, %bb.kv ], [ %i.vs, %bb.ks ], [ %i.vm, %bb.kp ], [ %i.vg, %bb.km ], [ %i.va, %bb.kj ], [ %i.uu, %bb.kg ], [ %i.uo, %bb.kd ], [ %i.ui, %bb.ka ], [ %i.uc, %bb.jx ], [ %i.tw, %bb.ju ], [ %i.tq, %bb.jr ], [ %i.tk, %bb.jo ], [ %i.te, %bb.jl ], [ %i.sy, %bb.ji ], [ %i.ss, %bb.jf ], [ %i.sm, %bb.jc ], [ %i.sg, %bb.iz ], [ %i.sa, %bb.iw ], [ %i.ru, %bb.it ], [ %i.ro, %bb.iq ], [ %i.ri, %bb.in ], [ %i.rc, %bb.ik ], [ %i.qw, %bb.ih ], [ %i.qq, %bb.ie ], [ %i.qk, %bb.ib ], [ %i.qe, %bb.hy ], [ %i.py, %bb.hv ], [ %i.ps, %bb.hs ], [ %i.pm, %bb.hp ], [ %i.pg, %bb.hm ], [ %i.pa, %bb.hj ], [ %i.ou, %bb.hg ], [ %i.oo, %bb.hd ], [ %i.oi, %bb.ha ], [ %i.oc, %bb.gx ], [ %i.nw, %bb.gu ], [ %i.nq, %bb.gr ], [ %i.nk, %bb.go ], [ %i.ne, %bb.gl ], [ %i.my, %bb.gi ], [ %i.ms, %bb.gf ], [ %i.mm, %bb.gc ], [ %i.mg, %bb.fz ], [ %i.ma, %bb.fw ], [ %i.lu, %bb.ft ], [ %i.lo, %bb.fq ], [ %i.li, %bb.fn ], [ %i.lc, %bb.fk ], [ %i.kw, %bb.fh ], [ %i.kq, %bb.fe ], [ %i.kk, %bb.fb ], [ %i.ke, %bb.ey ], [ %i.jy, %bb.ev ], [ %i.js, %bb.es ], [ %i.jm, %bb.ep ], [ %i.jg, %bb.em ], [ %i.ja, %bb.ej ], [ %i.iu, %bb.eg ], [ %i.io, %bb.ed ], [ %i.ii, %bb.ea ], [ %i.ic, %bb.dx ], [ %i.hw, %bb.du ], [ %i.hq, %bb.dr ], [ %i.hk, %bb.do ], [ %i.he, %bb.dl ], [ %i.gy, %bb.di ], [ %i.gs, %bb.df ], [ %i.gm, %bb.dc ], [ %i.gg, %bb.cz ], [ %i.ga, %bb.cw ], [ %i.fu, %bb.ct ], [ %i.fo, %bb.cq ], [ %i.fi, %bb.cn ], [ %i.fc, %bb.ck ], [ %i.ew, %bb.ch ], [ %i.eq, %bb.ce ], [ %i.ek, %bb.cb ], [ %i.ee, %bb.by ], [ %i.dy, %bb.bv ], [ %i.ds, %bb.bs ], [ %i.dm, %bb.bp ], [ %i.dg, %bb.bm ], [ %i.da, %bb.bj ], [ %i.cu, %bb.bg ], [ %i.co, %bb.bd ], [ %i.ci, %bb.ba ], [ %i.cc, %bb.ax ], [ %i.bw, %bb.au ], [ %i.bq, %bb.ar ], [ %i.bk, %bb.ao ], [ %i.be, %bb.al ], [ %i.aq, %bb.aa ], [ %i.ak, %bb.x ], [ %i.ae, %bb.u ], [ %i.g, %bb.f ], [ %i.b, %bb.b ], [ %i.w, %bb.k ], [ %i.r, %bb.i ], [ %i.m, %bb.g ]
  tail call void @_Py_DecRef(ptr noundef nonnull %.025744536) #4
  br label %Py_XDECREF.exit4531

Py_XDECREF.exit4531:                              ; preds = %bb.l, %bb.c, %bb.h, %bb.j, %Py_XDECREF.exit3221, %Py_XDECREF.exit3221.thread
  %.not.i4532 = icmp eq ptr %i.a, null
  br i1 %.not.i4532, label %Py_XDECREF.exit4533, label %bb.akn

bb.akn:                                           ; preds = %Py_XDECREF.exit4531
  tail call void @_Py_DecRef(ptr noundef nonnull %i.a) #4
  br label %Py_XDECREF.exit4533

Py_XDECREF.exit4533:                              ; preds = %bb.akn, %Py_XDECREF.exit4531, %Py_XDECREF.exit4523.a, %Py_XDECREF.exit4519.a, %Py_XDECREF.exit4515.a, %Py_XDECREF.exit4511.a, %Py_XDECREF.exit4507.a, %Py_XDECREF.exit4503.a, %Py_XDECREF.exit4499.a, %Py_XDECREF.exit4495.a, %Py_XDECREF.exit4491.a, %Py_XDECREF.exit4487.a, %Py_XDECREF.exit4483.a, %Py_XDECREF.exit4479.a, %Py_XDECREF.exit4475.a, %Py_XDECREF.exit4471.a, %Py_XDECREF.exit4467.a, %Py_XDECREF.exit4463.a, %Py_XDECREF.exit4459.a, %Py_XDECREF.exit4455.a, %Py_XDECREF.exit4451.a, %Py_XDECREF.exit4447.a, %Py_XDECREF.exit4443.a, %Py_XDECREF.exit4439.a, %Py_XDECREF.exit4435.a, %Py_XDECREF.exit4431.a, %Py_XDECREF.exit4427.a, %Py_XDECREF.exit4423.a, %Py_XDECREF.exit4419.a, %Py_XDECREF.exit4415.a, %Py_XDECREF.exit4411.a, %Py_XDECREF.exit4407.a, %Py_XDECREF.exit4403.a, %Py_XDECREF.exit4399.a, %Py_XDECREF.exit4395.a, %Py_XDECREF.exit4391.a, %Py_XDECREF.exit4387.a, %Py_XDECREF.exit4383.a, %Py_XDECREF.exit4379.a, %Py_XDECREF.exit4375.a, %Py_XDECREF.exit4371.a, %Py_XDECREF.exit4367.a, %Py_XDECREF.exit4363.a, %Py_XDECREF.exit4359.a, %Py_XDECREF.exit4355.a, %Py_XDECREF.exit4351.a, %Py_XDECREF.exit4347.a, %Py_XDECREF.exit4343.a, %Py_XDECREF.exit4339.a, %Py_XDECREF.exit4335.a, %Py_XDECREF.exit4331.a, %Py_XDECREF.exit4327.a, %Py_XDECREF.exit4323.a, %Py_XDECREF.exit4319.a, %Py_XDECREF.exit4315.a, %Py_XDECREF.exit4311.a, %Py_XDECREF.exit4307.a, %Py_XDECREF.exit4303.a, %Py_XDECREF.exit4299.a, %Py_XDECREF.exit4295.a, %Py_XDECREF.exit4291.a, %Py_XDECREF.exit4287.a, %Py_XDECREF.exit4283.a, %Py_XDECREF.exit4279.a, %Py_XDECREF.exit4275.a, %Py_XDECREF.exit4271.a, %Py_XDECREF.exit4267.a, %Py_XDECREF.exit4263.a, %Py_XDECREF.exit4259.a, %Py_XDECREF.exit4255.a, %Py_XDECREF.exit4251.a, %Py_XDECREF.exit4247.a, %Py_XDECREF.exit4243.a, %Py_XDECREF.exit4239.a, %Py_XDECREF.exit4235.a, %Py_XDECREF.exit4231.a, %Py_XDECREF.exit4227.a, %Py_XDECREF.exit4223.a, %Py_XDECREF.exit4219.a, %Py_XDECREF.exit4215.a, %Py_XDECREF.exit4211.a, %Py_XDECREF.exit4207.a, %Py_XDECREF.exit4203.a, %Py_XDECREF.exit4199.a, %Py_XDECREF.exit4195.a, %Py_XDECREF.exit4191.a, %Py_XDECREF.exit4187.a, %Py_XDECREF.exit4183.a, %Py_XDECREF.exit4179.a, %Py_XDECREF.exit4175.a, %Py_XDECREF.exit4171.a, %Py_XDECREF.exit4167.a, %Py_XDECREF.exit4163.a, %Py_XDECREF.exit4159.a, %Py_XDECREF.exit4155.a, %Py_XDECREF.exit4151.a, %Py_XDECREF.exit4147.a, %Py_XDECREF.exit4143.a, %Py_XDECREF.exit4139.a, %Py_XDECREF.exit4135.a, %Py_XDECREF.exit4131.a, %Py_XDECREF.exit4127.a, %Py_XDECREF.exit4123.a, %Py_XDECREF.exit4119.a, %Py_XDECREF.exit4115.a, %Py_XDECREF.exit4111.a, %Py_XDECREF.exit4107.a, %Py_XDECREF.exit4103.a, %Py_XDECREF.exit4099.a, %Py_XDECREF.exit4095.a, %Py_XDECREF.exit4091.a, %Py_XDECREF.exit4087.a, %Py_XDECREF.exit4083.a, %Py_XDECREF.exit4079.a, %Py_XDECREF.exit4075.a, %Py_XDECREF.exit4071.a, %Py_XDECREF.exit4067.a, %Py_XDECREF.exit4063.a, %Py_XDECREF.exit4059.a, %Py_XDECREF.exit4055.a, %Py_XDECREF.exit4051.a, %Py_XDECREF.exit4047.a, %Py_XDECREF.exit4043.a, %Py_XDECREF.exit4039.a, %Py_XDECREF.exit4035.a, %Py_XDECREF.exit4031.a, %Py_XDECREF.exit4027.a, %Py_XDECREF.exit4023.a, %Py_XDECREF.exit4019.a, %Py_XDECREF.exit4015.a, %Py_XDECREF.exit4011.a, %Py_XDECREF.exit4007.a, %Py_XDECREF.exit4003.a, %Py_XDECREF.exit3999.a, %Py_XDECREF.exit3995.a, %Py_XDECREF.exit3991.a, %Py_XDECREF.exit3987.a, %Py_XDECREF.exit3983.a, %Py_XDECREF.exit3979.a, %Py_XDECREF.exit3975.a, %Py_XDECREF.exit3971.a, %Py_XDECREF.exit3967.a, %Py_XDECREF.exit3963.a, %Py_XDECREF.exit3959.a, %Py_XDECREF.exit3955.a, %Py_XDECREF.exit3951.a, %Py_XDECREF.exit3947.a, %Py_XDECREF.exit3943.a, %Py_XDECREF.exit3939.a, %Py_XDECREF.exit3935.a, %Py_XDECREF.exit3931.a, %Py_XDECREF.exit3927.a, %Py_XDECREF.exit3923.a, %Py_XDECREF.exit3919.a, %Py_XDECREF.exit3915.a, %Py_XDECREF.exit3911.a, %Py_XDECREF.exit3907.a, %Py_XDECREF.exit3903.a, %Py_XDECREF.exit3899.a, %Py_XDECREF.exit3895.a, %Py_XDECREF.exit3891.a, %Py_XDECREF.exit3887.a, %Py_XDECREF.exit3883.a, %Py_XDECREF.exit3879.a, %Py_XDECREF.exit3875.a, %Py_XDECREF.exit3871.a, %Py_XDECREF.exit3867.a, %Py_XDECREF.exit3863.a, %Py_XDECREF.exit3859.a, %Py_XDECREF.exit3855.a, %Py_XDECREF.exit3851.a, %Py_XDECREF.exit3847.a, %Py_XDECREF.exit3843.a, %Py_XDECREF.exit3839.a, %Py_XDECREF.exit3835.a, %Py_XDECREF.exit3831.a, %Py_XDECREF.exit3827.a, %Py_XDECREF.exit3823.a, %Py_XDECREF.exit3819.a, %Py_XDECREF.exit3815.a, %Py_XDECREF.exit3811.a, %Py_XDECREF.exit3807.a, %Py_XDECREF.exit3803.a, %Py_XDECREF.exit3799.a, %Py_XDECREF.exit3795.a, %Py_XDECREF.exit3791.a, %Py_XDECREF.exit3787.a, %Py_XDECREF.exit3783.a, %Py_XDECREF.exit3779.a, %Py_XDECREF.exit3775.a, %Py_XDECREF.exit3771.a, %Py_XDECREF.exit3767.a, %Py_XDECREF.exit3763.a, %Py_XDECREF.exit3759.a, %Py_XDECREF.exit3755.a, %Py_XDECREF.exit3751.a, %Py_XDECREF.exit3747.a, %Py_XDECREF.exit3743.a, %Py_XDECREF.exit3739.a, %Py_XDECREF.exit3735.a, %Py_XDECREF.exit3731.a, %Py_XDECREF.exit3727.a, %Py_XDECREF.exit3723.a, %Py_XDECREF.exit3719.a, %Py_XDECREF.exit3715.a, %Py_XDECREF.exit3711.a, %Py_XDECREF.exit3707.a, %Py_XDECREF.exit3703.a, %Py_XDECREF.exit3699.a, %Py_XDECREF.exit3695.a, %Py_XDECREF.exit3691.a, %Py_XDECREF.exit3687.a, %Py_XDECREF.exit3683.a, %Py_XDECREF.exit3679.a, %Py_XDECREF.exit3675.a, %Py_XDECREF.exit3671.a, %Py_XDECREF.exit3667.a, %Py_XDECREF.exit3663.a, %Py_XDECREF.exit3659.a, %Py_XDECREF.exit3655.a, %Py_XDECREF.exit3651.a, %Py_XDECREF.exit3647.a, %Py_XDECREF.exit3643.a, %Py_XDECREF.exit3639.a, %Py_XDECREF.exit3635.a, %Py_XDECREF.exit3631.a, %Py_XDECREF.exit3627.a, %Py_XDECREF.exit3623.a, %Py_XDECREF.exit3619.a, %Py_XDECREF.exit3615.a, %Py_XDECREF.exit3611.a, %Py_XDECREF.exit3607.a, %Py_XDECREF.exit3603.a, %Py_XDECREF.exit3599.a, %Py_XDECREF.exit3595.a, %Py_XDECREF.exit3591.a, %Py_XDECREF.exit3587.a, %Py_XDECREF.exit3583.a, %Py_XDECREF.exit3579.a, %Py_XDECREF.exit3575.a, %Py_XDECREF.exit3571.a, %Py_XDECREF.exit3567.a, %Py_XDECREF.exit3563.a, %Py_XDECREF.exit3559.a, %Py_XDECREF.exit3555.a, %Py_XDECREF.exit3551.a, %Py_XDECREF.exit3547.a, %Py_XDECREF.exit3543.a, %Py_XDECREF.exit3539.a, %Py_XDECREF.exit3535.a, %Py_XDECREF.exit3531.a, %Py_XDECREF.exit3527.a, %Py_XDECREF.exit3523.a, %Py_XDECREF.exit3519.a, %Py_XDECREF.exit3515.a, %Py_XDECREF.exit3511.a, %Py_XDECREF.exit3507.a, %Py_XDECREF.exit3503.a, %Py_XDECREF.exit3499.a, %Py_XDECREF.exit3495.a, %Py_XDECREF.exit3491.a, %Py_XDECREF.exit3487.a, %Py_XDECREF.exit3483.a, %Py_XDECREF.exit3479.a, %Py_XDECREF.exit3475.a, %Py_XDECREF.exit3471.a, %Py_XDECREF.exit3467.a, %Py_XDECREF.exit3463.a, %Py_XDECREF.exit3459.a, %Py_XDECREF.exit3455.a, %Py_XDECREF.exit3451.a, %Py_XDECREF.exit3447.a, %Py_XDECREF.exit3443.a, %Py_XDECREF.exit3439.a, %Py_XDECREF.exit3435.a, %Py_XDECREF.exit3431.a, %Py_XDECREF.exit3427.a, %Py_XDECREF.exit3423.a, %Py_XDECREF.exit3419.a, %Py_XDECREF.exit3415.a, %Py_XDECREF.exit3411.a, %Py_XDECREF.exit3407.a, %Py_XDECREF.exit3403.a, %Py_XDECREF.exit3399.a, %Py_XDECREF.exit3395.a, %Py_XDECREF.exit3391.a, %Py_XDECREF.exit3387.a, %Py_XDECREF.exit3383.a, %Py_XDECREF.exit3379.a, %Py_XDECREF.exit3375.a, %Py_XDECREF.exit3371.a, %Py_XDECREF.exit3367.a, %Py_XDECREF.exit3363.a, %Py_XDECREF.exit3359.a, %Py_XDECREF.exit3355.a, %Py_XDECREF.exit3351.a, %Py_XDECREF.exit3347.a, %Py_XDECREF.exit3343.a, %Py_XDECREF.exit3339.a, %Py_XDECREF.exit3335.a, %Py_XDECREF.exit3331.a, %Py_XDECREF.exit3327.a, %Py_XDECREF.exit3323.a, %Py_XDECREF.exit3319.a, %Py_XDECREF.exit3315.a, %Py_XDECREF.exit3311.a, %Py_XDECREF.exit3307.a, %Py_XDECREF.exit3303.a, %Py_XDECREF.exit3299.a, %Py_XDECREF.exit3295.a, %Py_XDECREF.exit3291.a, %Py_XDECREF.exit3287.a, %Py_XDECREF.exit3283.a, %Py_XDECREF.exit3279.a, %Py_XDECREF.exit3275.a, %Py_XDECREF.exit3263.a, %Py_XDECREF.exit3259.a, %Py_XDECREF.exit3255.a, %Py_XDECREF.exit, %Py_XDECREF.exit4529
  %.0 = phi ptr [ null, %Py_XDECREF.exit4207.a ], [ null, %Py_XDECREF.exit4523.a ], [ %i.bwf, %Py_XDECREF.exit4529 ], [ null, %Py_XDECREF.exit ], [ null, %Py_XDECREF.exit3891.a ], [ null, %Py_XDECREF.exit3255.a ], [ null, %Py_XDECREF.exit4519.a ], [ null, %Py_XDECREF.exit3259.a ], [ null, %Py_XDECREF.exit4127.a ], [ null, %Py_XDECREF.exit3263.a ], [ null, %Py_XDECREF.exit4515.a ], [ null, %Py_XDECREF.exit3275.a ], [ null, %Py_XDECREF.exit3895.a ], [ null, %Py_XDECREF.exit3279.a ], [ null, %Py_XDECREF.exit4511.a ], [ null, %Py_XDECREF.exit3283.a ], [ null, %Py_XDECREF.exit4203.a ], [ null, %Py_XDECREF.exit3287.a ], [ null, %Py_XDECREF.exit4507.a ], [ null, %Py_XDECREF.exit3291.a ], [ null, %Py_XDECREF.exit3899.a ], [ null, %Py_XDECREF.exit3295.a ], [ null, %Py_XDECREF.exit4503.a ], [ null, %Py_XDECREF.exit3299.a ], [ null, %Py_XDECREF.exit4051.a ], [ null, %Py_XDECREF.exit3303.a ], [ null, %Py_XDECREF.exit4499.a ], [ null, %Py_XDECREF.exit3307.a ], [ null, %Py_XDECREF.exit3903.a ], [ null, %Py_XDECREF.exit3311.a ], [ null, %Py_XDECREF.exit4495.a ], [ null, %Py_XDECREF.exit3315.a ], [ null, %Py_XDECREF.exit4199.a ], [ null, %Py_XDECREF.exit3319.a ], [ null, %Py_XDECREF.exit4491.a ], [ null, %Py_XDECREF.exit3323.a ], [ null, %Py_XDECREF.exit3907.a ], [ null, %Py_XDECREF.exit3327.a ], [ null, %Py_XDECREF.exit4487.a ], [ null, %Py_XDECREF.exit3331.a ], [ null, %Py_XDECREF.exit4107.a ], [ null, %Py_XDECREF.exit3335.a ], [ null, %Py_XDECREF.exit4483.a ], [ null, %Py_XDECREF.exit3339.a ], [ null, %Py_XDECREF.exit3911.a ], [ null, %Py_XDECREF.exit3343.a ], [ null, %Py_XDECREF.exit4479.a ], [ null, %Py_XDECREF.exit3347.a ], [ null, %Py_XDECREF.exit4195.a ], [ null, %Py_XDECREF.exit3351.a ], [ null, %Py_XDECREF.exit4475.a ], [ null, %Py_XDECREF.exit3355.a ], [ null, %Py_XDECREF.exit3915.a ], [ null, %Py_XDECREF.exit3359.a ], [ null, %Py_XDECREF.exit4471.a ], [ null, %Py_XDECREF.exit3363.a ], [ null, %Py_XDECREF.exit4055.a ], [ null, %Py_XDECREF.exit3367.a ], [ null, %Py_XDECREF.exit4467.a ], [ null, %Py_XDECREF.exit3371.a ], [ null, %Py_XDECREF.exit3919.a ], [ null, %Py_XDECREF.exit3375.a ], [ null, %Py_XDECREF.exit4463.a ], [ null, %Py_XDECREF.exit3379.a ], [ null, %Py_XDECREF.exit4191.a ], [ null, %Py_XDECREF.exit3383.a ], [ null, %Py_XDECREF.exit4459.a ], [ null, %Py_XDECREF.exit3387.a ], [ null, %Py_XDECREF.exit3923.a ], [ null, %Py_XDECREF.exit3391.a ], [ null, %Py_XDECREF.exit4455.a ], [ null, %Py_XDECREF.exit3395.a ], [ null, %Py_XDECREF.exit4123.a ], [ null, %Py_XDECREF.exit3399.a ], [ null, %Py_XDECREF.exit4451.a ], [ null, %Py_XDECREF.exit3403.a ], [ null, %Py_XDECREF.exit3927.a ], [ null, %Py_XDECREF.exit3407.a ], [ null, %Py_XDECREF.exit4447.a ], [ null, %Py_XDECREF.exit3411.a ], [ null, %Py_XDECREF.exit4187.a ], [ null, %Py_XDECREF.exit3415.a ], [ null, %Py_XDECREF.exit4443.a ], [ null, %Py_XDECREF.exit3419.a ], [ null, %Py_XDECREF.exit3931.a ], [ null, %Py_XDECREF.exit3423.a ], [ null, %Py_XDECREF.exit4439.a ], [ null, %Py_XDECREF.exit3427.a ], [ null, %Py_XDECREF.exit4059.a ], [ null, %Py_XDECREF.exit3431.a ], [ null, %Py_XDECREF.exit4435.a ], [ null, %Py_XDECREF.exit3435.a ], [ null, %Py_XDECREF.exit3935.a ], [ null, %Py_XDECREF.exit3439.a ], [ null, %Py_XDECREF.exit4431.a ], [ null, %Py_XDECREF.exit3443.a ], [ null, %Py_XDECREF.exit4183.a ], [ null, %Py_XDECREF.exit3447.a ], [ null, %Py_XDECREF.exit4427.a ], [ null, %Py_XDECREF.exit3451.a ], [ null, %Py_XDECREF.exit3939.a ], [ null, %Py_XDECREF.exit3455.a ], [ null, %Py_XDECREF.exit4423.a ], [ null, %Py_XDECREF.exit3459.a ], [ null, %Py_XDECREF.exit4091.a ], [ null, %Py_XDECREF.exit3463.a ], [ null, %Py_XDECREF.exit4419.a ], [ null, %Py_XDECREF.exit3467.a ], [ null, %Py_XDECREF.exit3943.a ], [ null, %Py_XDECREF.exit3471.a ], [ null, %Py_XDECREF.exit4415.a ], [ null, %Py_XDECREF.exit3475.a ], [ null, %Py_XDECREF.exit4179.a ], [ null, %Py_XDECREF.exit3479.a ], [ null, %Py_XDECREF.exit4411.a ], [ null, %Py_XDECREF.exit3483.a ], [ null, %Py_XDECREF.exit3947.a ], [ null, %Py_XDECREF.exit3487.a ], [ null, %Py_XDECREF.exit4407.a ], [ null, %Py_XDECREF.exit3491.a ], [ null, %Py_XDECREF.exit4063.a ], [ null, %Py_XDECREF.exit3495.a ], [ null, %Py_XDECREF.exit4403.a ], [ null, %Py_XDECREF.exit3499.a ], [ null, %Py_XDECREF.exit3951.a ], [ null, %Py_XDECREF.exit3503.a ], [ null, %Py_XDECREF.exit4399.a ], [ null, %Py_XDECREF.exit3507.a ], [ null, %Py_XDECREF.exit4175.a ], [ null, %Py_XDECREF.exit3511.a ], [ null, %Py_XDECREF.exit4395.a ], [ null, %Py_XDECREF.exit3515.a ], [ null, %Py_XDECREF.exit3955.a ], [ null, %Py_XDECREF.exit3519.a ], [ null, %Py_XDECREF.exit4391.a ], [ null, %Py_XDECREF.exit3523.a ], [ null, %Py_XDECREF.exit4119.a ], [ null, %Py_XDECREF.exit3527.a ], [ null, %Py_XDECREF.exit4387.a ], [ null, %Py_XDECREF.exit3531.a ], [ null, %Py_XDECREF.exit3959.a ], [ null, %Py_XDECREF.exit3535.a ], [ null, %Py_XDECREF.exit4383.a ], [ null, %Py_XDECREF.exit3539.a ], [ null, %Py_XDECREF.exit4171.a ], [ null, %Py_XDECREF.exit3543.a ], [ null, %Py_XDECREF.exit4379.a ], [ null, %Py_XDECREF.exit3547.a ], [ null, %Py_XDECREF.exit3963.a ], [ null, %Py_XDECREF.exit3551.a ], [ null, %Py_XDECREF.exit4375.a ], [ null, %Py_XDECREF.exit3555.a ], [ null, %Py_XDECREF.exit4067.a ], [ null, %Py_XDECREF.exit3559.a ], [ null, %Py_XDECREF.exit4371.a ], [ null, %Py_XDECREF.exit3563.a ], [ null, %Py_XDECREF.exit3967.a ], [ null, %Py_XDECREF.exit3567.a ], [ null, %Py_XDECREF.exit4367.a ], [ null, %Py_XDECREF.exit3571.a ], [ null, %Py_XDECREF.exit4167.a ], [ null, %Py_XDECREF.exit3575.a ], [ null, %Py_XDECREF.exit4363.a ], [ null, %Py_XDECREF.exit3579.a ], [ null, %Py_XDECREF.exit3971.a ], [ null, %Py_XDECREF.exit3583.a ], [ null, %Py_XDECREF.exit4359.a ], [ null, %Py_XDECREF.exit3587.a ], [ null, %Py_XDECREF.exit4099.a ], [ null, %Py_XDECREF.exit3591.a ], [ null, %Py_XDECREF.exit4355.a ], [ null, %Py_XDECREF.exit3595.a ], [ null, %Py_XDECREF.exit3975.a ], [ null, %Py_XDECREF.exit3599.a ], [ null, %Py_XDECREF.exit4351.a ], [ null, %Py_XDECREF.exit3603.a ], [ null, %Py_XDECREF.exit4163.a ], [ null, %Py_XDECREF.exit3607.a ], [ null, %Py_XDECREF.exit4347.a ], [ null, %Py_XDECREF.exit3611.a ], [ null, %Py_XDECREF.exit3979.a ], [ null, %Py_XDECREF.exit3615.a ], [ null, %Py_XDECREF.exit4343.a ], [ null, %Py_XDECREF.exit3619.a ], [ null, %Py_XDECREF.exit4071.a ], [ null, %Py_XDECREF.exit3623.a ], [ null, %Py_XDECREF.exit4339.a ], [ null, %Py_XDECREF.exit3627.a ], [ null, %Py_XDECREF.exit3983.a ], [ null, %Py_XDECREF.exit3631.a ], [ null, %Py_XDECREF.exit4335.a ], [ null, %Py_XDECREF.exit3635.a ], [ null, %Py_XDECREF.exit4159.a ], [ null, %Py_XDECREF.exit3639.a ], [ null, %Py_XDECREF.exit4331.a ], [ null, %Py_XDECREF.exit3643.a ], [ null, %Py_XDECREF.exit3987.a ], [ null, %Py_XDECREF.exit3647.a ], [ null, %Py_XDECREF.exit4327.a ], [ null, %Py_XDECREF.exit3651.a ], [ null, %Py_XDECREF.exit4115.a ], [ null, %Py_XDECREF.exit3655.a ], [ null, %Py_XDECREF.exit4323.a ], [ null, %Py_XDECREF.exit3659.a ], [ null, %Py_XDECREF.exit3991.a ], [ null, %Py_XDECREF.exit3663.a ], [ null, %Py_XDECREF.exit4319.a ], [ null, %Py_XDECREF.exit3667.a ], [ null, %Py_XDECREF.exit4155.a ], [ null, %Py_XDECREF.exit3671.a ], [ null, %Py_XDECREF.exit4315.a ], [ null, %Py_XDECREF.exit3675.a ], [ null, %Py_XDECREF.exit3995.a ], [ null, %Py_XDECREF.exit3679.a ], [ null, %Py_XDECREF.exit4311.a ], [ null, %Py_XDECREF.exit3683.a ], [ null, %Py_XDECREF.exit4075.a ], [ null, %Py_XDECREF.exit3687.a ], [ null, %Py_XDECREF.exit4307.a ], [ null, %Py_XDECREF.exit3691.a ], [ null, %Py_XDECREF.exit3999.a ], [ null, %Py_XDECREF.exit3695.a ], [ null, %Py_XDECREF.exit4303.a ], [ null, %Py_XDECREF.exit3699.a ], [ null, %Py_XDECREF.exit4151.a ], [ null, %Py_XDECREF.exit3703.a ], [ null, %Py_XDECREF.exit4299.a ], [ null, %Py_XDECREF.exit3707.a ], [ null, %Py_XDECREF.exit4003.a ], [ null, %Py_XDECREF.exit3711.a ], [ null, %Py_XDECREF.exit4295.a ], [ null, %Py_XDECREF.exit3715.a ], [ null, %Py_XDECREF.exit4095.a ], [ null, %Py_XDECREF.exit3719.a ], [ null, %Py_XDECREF.exit4291.a ], [ null, %Py_XDECREF.exit3723.a ], [ null, %Py_XDECREF.exit4007.a ], [ null, %Py_XDECREF.exit3727.a ], [ null, %Py_XDECREF.exit4287.a ], [ null, %Py_XDECREF.exit3731.a ], [ null, %Py_XDECREF.exit4147.a ], [ null, %Py_XDECREF.exit3735.a ], [ null, %Py_XDECREF.exit4283.a ], [ null, %Py_XDECREF.exit3739.a ], [ null, %Py_XDECREF.exit4011.a ], [ null, %Py_XDECREF.exit3743.a ], [ null, %Py_XDECREF.exit4279.a ], [ null, %Py_XDECREF.exit3747.a ], [ null, %Py_XDECREF.exit4079.a ], [ null, %Py_XDECREF.exit3751.a ], [ null, %Py_XDECREF.exit4275.a ], [ null, %Py_XDECREF.exit3755.a ], [ null, %Py_XDECREF.exit4015.a ], [ null, %Py_XDECREF.exit3759.a ], [ null, %Py_XDECREF.exit4271.a ], [ null, %Py_XDECREF.exit3763.a ], [ null, %Py_XDECREF.exit4143.a ], [ null, %Py_XDECREF.exit3767.a ], [ null, %Py_XDECREF.exit4267.a ], [ null, %Py_XDECREF.exit3771.a ], [ null, %Py_XDECREF.exit4019.a ], [ null, %Py_XDECREF.exit3775.a ], [ null, %Py_XDECREF.exit4263.a ], [ null, %Py_XDECREF.exit3779.a ], [ null, %Py_XDECREF.exit4111.a ], [ null, %Py_XDECREF.exit3783.a ], [ null, %Py_XDECREF.exit4259.a ], [ null, %Py_XDECREF.exit3787.a ], [ null, %Py_XDECREF.exit4023.a ], [ null, %Py_XDECREF.exit3791.a ], [ null, %Py_XDECREF.exit4255.a ], [ null, %Py_XDECREF.exit3795.a ], [ null, %Py_XDECREF.exit4139.a ], [ null, %Py_XDECREF.exit3799.a ], [ null, %Py_XDECREF.exit4251.a ], [ null, %Py_XDECREF.exit3803.a ], [ null, %Py_XDECREF.exit4027.a ], [ null, %Py_XDECREF.exit3807.a ], [ null, %Py_XDECREF.exit4247.a ], [ null, %Py_XDECREF.exit3811.a ], [ null, %Py_XDECREF.exit4083.a ], [ null, %Py_XDECREF.exit3815.a ], [ null, %Py_XDECREF.exit4243.a ], [ null, %Py_XDECREF.exit3819.a ], [ null, %Py_XDECREF.exit4031.a ], [ null, %Py_XDECREF.exit3823.a ], [ null, %Py_XDECREF.exit4239.a ], [ null, %Py_XDECREF.exit3827.a ], [ null, %Py_XDECREF.exit4135.a ], [ null, %Py_XDECREF.exit3831.a ], [ null, %Py_XDECREF.exit4235.a ], [ null, %Py_XDECREF.exit3835.a ], [ null, %Py_XDECREF.exit4035.a ], [ null, %Py_XDECREF.exit3839.a ], [ null, %Py_XDECREF.exit4231.a ], [ null, %Py_XDECREF.exit3843.a ], [ null, %Py_XDECREF.exit4103.a ], [ null, %Py_XDECREF.exit3847.a ], [ null, %Py_XDECREF.exit4227.a ], [ null, %Py_XDECREF.exit3851.a ], [ null, %Py_XDECREF.exit4039.a ], [ null, %Py_XDECREF.exit3855.a ], [ null, %Py_XDECREF.exit4223.a ], [ null, %Py_XDECREF.exit3859.a ], [ null, %Py_XDECREF.exit4131.a ], [ null, %Py_XDECREF.exit3863.a ], [ null, %Py_XDECREF.exit4219.a ], [ null, %Py_XDECREF.exit3867.a ], [ null, %Py_XDECREF.exit4043.a ], [ null, %Py_XDECREF.exit3871.a ], [ null, %Py_XDECREF.exit4215.a ], [ null, %Py_XDECREF.exit3875.a ], [ null, %Py_XDECREF.exit4087.a ], [ null, %Py_XDECREF.exit3879.a ], [ null, %Py_XDECREF.exit4211.a ], [ null, %Py_XDECREF.exit3883.a ], [ null, %Py_XDECREF.exit4047.a ], [ null, %Py_XDECREF.exit3887.a ], [ null, %Py_XDECREF.exit4531 ], [ null, %bb.akn ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @test_widechar(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  %i.b = alloca [1 x i32], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i64 1092557, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 1114112, ptr %i.b, align 4
  %i.c = call ptr @PyUnicode_FromWideChar(ptr noundef nonnull %i.a, i64 noundef 1) #4 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.352) #4 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_Py_DecRef(ptr noundef nonnull %i.c) #4
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.g = call i64 @PyUnicode_GetLength(ptr noundef nonnull %i.c) #4
  %i.h = call i64 @PyUnicode_GetLength(ptr noundef nonnull %i.e) #4
  %.not = icmp eq i64 %i.g, %i.h
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_Py_DecRef(ptr noundef nonnull %i.c) #4
  call void @_Py_DecRef(ptr noundef nonnull %i.e) #4
  %i.i = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.353) #4
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.j = call i32 @PyUnicode_Compare(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #4
  %.not17 = icmp eq i32 %i.j, 0
  call void @_Py_DecRef(ptr noundef nonnull %i.c) #4
  call void @_Py_DecRef(ptr noundef nonnull %i.e) #4
  br i1 %.not17, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = call ptr @PyErr_Occurred() #4
  %.not18 = icmp eq ptr %i.k, null
  br i1 %.not18, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.l = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.354) #4
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.m = call ptr @PyUnicode_FromWideChar(ptr noundef nonnull %i.b, i64 noundef 1) #4
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @PyErr_Clear() #4
  %i.o = call ptr @Py_GetConstantBorrowed(i32 noundef 0) #4
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.p = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.355) #4
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.a, %bb.j, %bb.k, %bb.h, %bb.e, %bb.c
  %.0 = phi ptr [ null, %bb.k ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.a ], [ null, %bb.h ], [ %i.o, %bb.j ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @unicode_writechar(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.d = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.356, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.f = call ptr @Py_GetConstantBorrowed(i32 noundef 0) #4
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !13
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.h = phi ptr [ %.pre, %._crit_edge ], [ null, %bb.c ]
  %i.i = call fastcc ptr @unicode_copy(ptr noundef %i.h) ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = icmp ne ptr %i.k, null
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.b, align 8, !tbaa !15
  %i.n = load i32, ptr %i.c, align 4, !tbaa !6
  %i.o = call i32 @PyUnicode_WriteChar(ptr noundef %i.i, i64 noundef %i.m, i32 noundef %i.n) #4 ; 2 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = call ptr @PyErr_Occurred() #4
  %.not7 = icmp eq ptr %i.q, null
  br i1 %.not7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_Py_DecRef(ptr noundef %i.i) #4
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.r = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.357, ptr noundef %i.i, i32 noundef %i.o) #4
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.a, %bb.h, %bb.g
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.g ], [ %i.r, %bb.h ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @unicode_resize(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.d = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.358, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %Py_XDECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.f = call ptr @Py_GetConstantBorrowed(i32 noundef 0) #4
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !13
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.h = phi ptr [ %.pre, %._crit_edge ], [ null, %bb.c ]
  %i.i = call fastcc ptr @unicode_copy(ptr noundef %i.h) ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !13
  %i.j = icmp eq ptr %i.i, null
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = icmp ne ptr %i.k, null
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %Py_XDECREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.c, align 8, !tbaa !15
  %i.n = call i32 @PyUnicode_Resize(ptr noundef nonnull %i.b, i64 noundef %i.m) #4 ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.p = call ptr @PyErr_Occurred() #4
  %.not5 = icmp eq ptr %i.p, null
  br i1 %.not5, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
end_hunk_1
