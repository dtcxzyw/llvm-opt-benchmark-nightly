inline.NumInlined: 237
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
@.str.214 = private unnamed_addr constant [20 x i8] c"XML_ERROR_SUSPENDED\00", align 1
@.str.215 = private unnamed_addr constant [17 x i8] c"parser suspended\00", align 1
@.str.216 = private unnamed_addr constant [24 x i8] c"XML_ERROR_NOT_SUSPENDED\00", align 1
@.str.217 = private unnamed_addr constant [21 x i8] c"parser not suspended\00", align 1
@.str.218 = private unnamed_addr constant [18 x i8] c"XML_ERROR_ABORTED\00", align 1
@.str.219 = private unnamed_addr constant [16 x i8] c"parsing aborted\00", align 1
@.str.220 = private unnamed_addr constant [19 x i8] c"XML_ERROR_FINISHED\00", align 1
@.str.221 = private unnamed_addr constant [17 x i8] c"parsing finished\00", align 1
@.str.222 = private unnamed_addr constant [21 x i8] c"XML_ERROR_SUSPEND_PE\00", align 1
@.str.223 = private unnamed_addr constant [44 x i8] c"cannot suspend in external parameter entity\00", align 1
@.str.224 = private unnamed_addr constant [30 x i8] c"XML_ERROR_RESERVED_PREFIX_XML\00", align 1
@.str.225 = private unnamed_addr constant [80 x i8] c"reserved prefix (xml) must not be undeclared or bound to another namespace name\00", align 1
@.str.226 = private unnamed_addr constant [32 x i8] c"XML_ERROR_RESERVED_PREFIX_XMLNS\00", align 1
@.str.227 = private unnamed_addr constant [59 x i8] c"reserved prefix (xmlns) must not be declared or undeclared\00", align 1
@.str.228 = private unnamed_addr constant [33 x i8] c"XML_ERROR_RESERVED_NAMESPACE_URI\00", align 1
@.str.229 = private unnamed_addr constant [64 x i8] c"prefix must not be bound to one of the reserved namespace names\00", align 1
@.str.230 = private unnamed_addr constant [27 x i8] c"XML_ERROR_INVALID_ARGUMENT\00", align 1
@.str.231 = private unnamed_addr constant [17 x i8] c"invalid argument\00", align 1
@.str.232 = private unnamed_addr constant [20 x i8] c"XML_ERROR_NO_BUFFER\00", align 1
@.str.233 = private unnamed_addr constant [62 x i8] c"a successful prior call to function XML_GetBuffer is required\00", align 1
@.str.234 = private unnamed_addr constant [37 x i8] c"XML_ERROR_AMPLIFICATION_LIMIT_BREACH\00", align 1
@.str.235 = private unnamed_addr constant [69 x i8] c"limit on input amplification factor (from DTD and entities) breached\00", align 1
@.str.236 = private unnamed_addr constant [22 x i8] c"XML_ERROR_NOT_STARTED\00", align 1
@.str.237 = private unnamed_addr constant [19 x i8] c"parser not started\00", align 1
@.str.238 = private unnamed_addr constant [14 x i8] c"pyexpat.model\00", align 1
@.str.239 = private unnamed_addr constant [55 x i8] c"Constants used to interpret content model information.\00", align 1
@.str.240 = private unnamed_addr constant [16 x i8] c"XML_CTYPE_EMPTY\00", align 1
@.str.241 = private unnamed_addr constant [14 x i8] c"XML_CTYPE_ANY\00", align 1
@.str.242 = private unnamed_addr constant [16 x i8] c"XML_CTYPE_MIXED\00", align 1
@.str.243 = private unnamed_addr constant [15 x i8] c"XML_CTYPE_NAME\00", align 1
@.str.244 = private unnamed_addr constant [17 x i8] c"XML_CTYPE_CHOICE\00", align 1
@.str.245 = private unnamed_addr constant [14 x i8] c"XML_CTYPE_SEQ\00", align 1
@.str.246 = private unnamed_addr constant [16 x i8] c"XML_CQUANT_NONE\00", align 1
@.str.247 = private unnamed_addr constant [15 x i8] c"XML_CQUANT_OPT\00", align 1
@.str.248 = private unnamed_addr constant [15 x i8] c"XML_CQUANT_REP\00", align 1
@.str.249 = private unnamed_addr constant [16 x i8] c"XML_CQUANT_PLUS\00", align 1
@.str.250 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@.str.251 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@.str.252 = private unnamed_addr constant [51 x i8] c"Exception ignored while destroying pyexact capsule\00", align 1

; Function Attrs: nounwind uwtable
define ptr @PyInit_pyexpat() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyModuleDef_Init(ptr noundef nonnull @pyexpatmodule) #8
  ret ptr %i.a
}

declare ptr @PyModuleDef_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @pyexpat_traverse(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #8 ; 2 uses
  %.not31 = icmp eq i32 %i.c, 0
  br i1 %.not31, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %.not32 = icmp eq ptr %i.e, null
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #8 ; 2 uses
  %.not33 = icmp eq i32 %i.f, 0
  br i1 %.not33, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %.not34 = icmp eq ptr %i.h, null
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 %1(ptr noundef nonnull %i.h, ptr noundef %2) #8 ; 2 uses
  %.not35 = icmp eq i32 %i.i, 0
  br i1 %.not35, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.5 = phi i32 [ 0, %bb.g ], [ %i.i, %bb.f ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pyexpat_clear(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit23, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !17
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not.i22 = icmp sgt i32 %i.c, -1
  br i1 %.not.i22, label %bb.c, label %Py_DECREF.exit23

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !18
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit23

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #8
  br label %Py_DECREF.exit23

Py_DECREF.exit23:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 4 uses
  %.not18 = icmp eq ptr %i.g, null
  br i1 %.not18, label %Py_DECREF.exit21, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit23
  store ptr null, ptr %i.f, align 8, !tbaa !19
  %i.h = load i32, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %.not.i20 = icmp sgt i32 %i.h, -1
  br i1 %.not.i20, label %bb.f, label %Py_DECREF.exit21

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !18
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit21

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #8
  br label %Py_DECREF.exit21

Py_DECREF.exit21:                                 ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit23
  %i.k = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 4 uses
  %.not19 = icmp eq ptr %i.l, null
  br i1 %.not19, label %Py_DECREF.exit, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit21
  store ptr null, ptr %i.k, align 8, !tbaa !19
  %i.m = load i32, ptr %i.l, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !18
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit21
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @pyexpat_free(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @pyexpat_clear(ptr noundef %0) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @pyexpat_ParserCreate(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 16
  %.val75 = load i64, ptr %i.d, align 8, !tbaa !20
  %i.e = add i64 %.val75, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %2, 4
  %i.g = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.g, %i.f
  br i1 %or.cond5, label %.thread78, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.h = phi i64 [ %i.e, %.thread ], [ %2, %bb.b ]
  %i.i = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @pyexpat_ParserCreate._parser, i32 noundef 0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not60 = icmp eq ptr %i.i, null
  br i1 %.not60, label %pyexpat_ParserCreate_impl.exit, label %.thread78

.thread78:                                        ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ %1, %bb.b ]   ; 3 uses
  %i.k = phi i64 [ %i.h, %bb.c ], [ %2, %bb.b ]   ; 3 uses
  %.not61 = icmp eq i64 %i.k, 0
  br i1 %.not61, label %.thread103, label %bb.d

bb.d:                                             ; preds = %.thread78
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !19   ; 5 uses
  %.not62 = icmp eq ptr %i.l, null
  br i1 %.not62, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq ptr %i.l, @_Py_NoneStruct
  br i1 %i.m, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %.val72 = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.o = getelementptr i8, ptr %.val72, i64 168
  %.val74 = load i64, ptr %i.o, align 8, !tbaa !25
  %i.p = and i64 %.val74, 268435456
  %.not63 = icmp eq i64 %i.p, 0
  br i1 %.not63, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.q = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.l, ptr noundef nonnull %i.b) #8 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.thread80, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #9
  %i.t = load i64, ptr %i.b, align 8, !tbaa !32
  %.not64 = icmp eq i64 %i.s, %i.t
  br i1 %.not64, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  call void @PyErr_SetString(ptr noundef %i.u, ptr noundef nonnull @.str.7) #8
  br label %.thread80

.thread80:                                        ; preds = %bb.g, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %pyexpat_ParserCreate_impl.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.l) #8
  br label %pyexpat_ParserCreate_impl.exit

bb.l:                                             ; preds = %bb.j, %bb.e
  %.045 = phi ptr [ %i.q, %bb.j ], [ null, %bb.e ] ; 2 uses
  %i.v = add i64 %i.k, -1                         ; 2 uses
  %.not65 = icmp eq i64 %i.v, 0
  br i1 %.not65, label %.thread103, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d
  %.048 = phi i64 [ %i.v, %bb.l ], [ %i.k, %bb.d ]
  %.146 = phi ptr [ %.045, %bb.l ], [ null, %bb.d ] ; 3 uses
  %i.w = getelementptr i8, ptr %i.j, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 5 uses
  %.not66 = icmp eq ptr %i.x, null
  br i1 %.not66, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = icmp eq ptr %i.x, @_Py_NoneStruct
  br i1 %i.y, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = getelementptr i8, ptr %i.x, i64 8
  %.val = load ptr, ptr %i.z, align 8, !tbaa !24
  %i.aa = getelementptr i8, ptr %.val, i64 168
  %.val73 = load i64, ptr %i.aa, align 8, !tbaa !25
  %i.ab = and i64 %.val73, 268435456
  %.not67 = icmp eq i64 %i.ab, 0
  br i1 %.not67, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ac = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.x, ptr noundef nonnull %i.c) #8 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.thread83, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #9
  %i.af = load i64, ptr %i.c, align 8, !tbaa !32
  %.not68 = icmp eq i64 %i.ae, %i.af
  br i1 %.not68, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  call void @PyErr_SetString(ptr noundef %i.ag, ptr noundef nonnull @.str.7) #8
  br label %.thread83

.thread83:                                        ; preds = %bb.p, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %pyexpat_ParserCreate_impl.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.x) #8
  br label %pyexpat_ParserCreate_impl.exit

bb.u:                                             ; preds = %bb.s, %bb.n
  %.043 = phi ptr [ %i.ac, %bb.s ], [ null, %bb.n ] ; 2 uses
  %i.ah = icmp ugt i64 %.048, 1
  br i1 %i.ah, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.m
  %.144 = phi ptr [ %.043, %bb.u ], [ null, %bb.m ]
  %i.ai = getelementptr i8, ptr %i.j, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !19
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.2 = phi ptr [ %.144, %bb.v ], [ %.043, %bb.u ] ; 5 uses
  %.042 = phi ptr [ %i.aj, %bb.v ], [ null, %bb.u ] ; 4 uses
  %.not.i = icmp eq ptr %.2, null
  br i1 %.not.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2) #9
  %i.al = icmp ugt i64 %i.ak, 1
  br i1 %i.al, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.am = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  call void @PyErr_SetString(ptr noundef %i.am, ptr noundef nonnull @.str.11) #8
  br label %pyexpat_ParserCreate_impl.exit

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.an = icmp eq ptr %.042, @_Py_NoneStruct
  br i1 %i.an, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ao = icmp eq ptr %.042, null
  br i1 %i.ao, label %.thread103, label %bb.ab

.thread103:                                       ; preds = %.thread78, %bb.l, %bb.aa
  %.29299108 = phi ptr [ %.2, %bb.aa ], [ null, %bb.l ], [ null, %.thread78 ]
  %.24791101107 = phi ptr [ %.146, %bb.aa ], [ %.045, %bb.l ], [ null, %.thread78 ]
  %i.ap = call ptr @PyDict_New() #8               ; 2 uses
  %.not20.i = icmp eq ptr %i.ap, null
  br i1 %.not20.i, label %pyexpat_ParserCreate_impl.exit, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.aq = getelementptr i8, ptr %.042, i64 8
  %.val.i = load ptr, ptr %i.aq, align 8, !tbaa !24
  %i.ar = getelementptr i8, ptr %.val.i, i64 168
  %.val22.i = load i64, ptr %i.ar, align 8, !tbaa !25
  %i.as = and i64 %.val22.i, 536870912
  %.not19.i = icmp eq i64 %i.as, 0
  br i1 %.not19.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.at = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !19
  call void @PyErr_SetString(ptr noundef %i.at, ptr noundef nonnull @.str.12) #8
  br label %pyexpat_ParserCreate_impl.exit

bb.ad:                                            ; preds = %bb.ab, %.thread103, %bb.z
  %.24791102 = phi ptr [ %.146, %bb.ab ], [ %.146, %bb.z ], [ %.24791101107, %.thread103 ]
  %.292100 = phi ptr [ %.2, %bb.ab ], [ %.2, %bb.z ], [ %.29299108, %.thread103 ]
  %.015.i = phi ptr [ %.042, %bb.ab ], [ null, %bb.z ], [ %i.ap, %.thread103 ] ; 7 uses
  %.not21.i = phi i1 [ true, %bb.ab ], [ true, %bb.z ], [ false, %.thread103 ]
  %i.au = call ptr @PyModule_GetState(ptr noundef %0) #8
  %.val23.i = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.av = call ptr @_PyObject_GC_New(ptr noundef %.val23.i) #8 ; 19 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %newxmlparseobject.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ax = getelementptr i8, ptr %i.av, i64 48
  store ptr null, ptr %i.ax, align 8, !tbaa !33
  %i.ay = getelementptr i8, ptr %i.av, i64 56
  store i32 8192, ptr %i.ay, align 8, !tbaa !39
  %i.az = getelementptr i8, ptr %i.av, i64 60
  store i32 0, ptr %i.az, align 4, !tbaa !40
  %i.ba = getelementptr i8, ptr %i.av, i64 32
  %i.bb = getelementptr i8, ptr %i.av, i64 80     ; 3 uses
  store ptr null, ptr %i.bb, align 8, !tbaa !41
  %.not.i.i.i.i = icmp eq ptr %.015.i, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  br i1 %.not.i.i.i.i, label %_Py_XNewRef.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bc = load i32, ptr %.015.i, align 8, !tbaa !18 ; 2 uses
  %i.bd = icmp ugt i32 %i.bc, -1073741825
  br i1 %i.bd, label %_Py_XNewRef.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.be = add nuw i32 %i.bc, 1
  store i32 %i.be, ptr %.015.i, align 8, !tbaa !18
  br label %_Py_XNewRef.exit.i.i

_Py_XNewRef.exit.i.i:                             ; preds = %bb.ag, %bb.af, %bb.ae
  %i.bf = getelementptr i8, ptr %i.av, i64 72
  store ptr %.015.i, ptr %i.bf, align 8, !tbaa !42
  %i.bg = getelementptr i8, ptr %i.av, i64 64
  store i8 1, ptr %i.bg, align 8, !tbaa !43
  %i.bh = call ptr @PyExpat_XML_ParserCreate_MM(ptr noundef %.24791102, ptr noundef nonnull @ExpatMemoryHandler, ptr noundef %.292100) #8 ; 3 uses
  %i.bi = getelementptr i8, ptr %i.av, i64 16     ; 3 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !44
  %i.bj = getelementptr i8, ptr %i.av, i64 24
  store ptr null, ptr %i.bj, align 8, !tbaa !45
  %i.bk = icmp eq ptr %i.bh, null
  br i1 %i.bk, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %_Py_XNewRef.exit.i.i
  %i.bl = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !19
  call void @PyErr_SetString(ptr noundef %i.bl, ptr noundef nonnull @.str.13) #8
  %i.bm = load i32, ptr %i.av, align 8, !tbaa !18 ; 2 uses
  %.not.i38.i.i = icmp sgt i32 %i.bm, -1
  br i1 %.not.i38.i.i, label %bb.ai, label %newxmlparseobject.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.bn = add nsw i32 %i.bm, -1                   ; 2 uses
  store i32 %i.bn, ptr %i.av, align 8, !tbaa !18
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.aj, label %newxmlparseobject.exit.i

bb.aj:                                            ; preds = %bb.ai
  call void @_Py_Dealloc(ptr noundef nonnull %i.av) #8
  br label %newxmlparseobject.exit.i

bb.ak:                                            ; preds = %_Py_XNewRef.exit.i.i
  %i.bp = load i64, ptr getelementptr inbounds nuw (i8, ptr @_Py_HashSecret, i64 16), align 8, !tbaa !18
  %i.bq = call i32 @PyExpat_XML_SetHashSalt(ptr noundef nonnull %i.bh, i64 noundef %i.bp) #8 ; 0 uses
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !44
  call void @PyExpat_XML_SetUserData(ptr noundef %i.br, ptr noundef nonnull %i.av) #8
  %i.bs = load ptr, ptr %i.bi, align 8, !tbaa !44
  call void @PyExpat_XML_SetUnknownEncodingHandler(ptr noundef %i.bs, ptr noundef nonnull @PyUnknownEncodingHandler, ptr noundef null) #8
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.033.i.i = phi i32 [ 0, %bb.ak ], [ %i.bw, %bb.al ] ; 3 uses
  %i.bt = sext i32 %.033.i.i to i64               ; 2 uses
  %i.bu = getelementptr [64 x i8], ptr @handler_info, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 16, !tbaa !46
  %.not.i24.i = icmp eq ptr %i.bv, null
  %i.bw = add i32 %.033.i.i, 1
  br i1 %.not.i24.i, label %bb.am, label %bb.al, !llvm.loop !49

bb.am:                                            ; preds = %bb.al
  %i.bx = icmp slt i32 %.033.i.i, 0
  br i1 %i.bx, label %.thread.i.i, label %bb.an

.thread.i.i:                                      ; preds = %bb.am
  store ptr null, ptr %i.bb, align 8, !tbaa !41
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.by = shl nuw nsw i64 %i.bt, 3
  %i.bz = call ptr @PyMem_Malloc(i64 noundef %i.by) #8 ; 3 uses
  store ptr %i.bz, ptr %i.bb, align 8, !tbaa !41
  %.not37.i.i = icmp eq ptr %i.bz, null
  br i1 %.not37.i.i, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an, %.thread.i.i
  %i.ca = load i32, ptr %i.av, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ca, -1
  br i1 %.not.i.i.i, label %bb.ap, label %Py_DECREF.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.cb = add nsw i32 %i.ca, -1                   ; 2 uses
  store i32 %i.cb, ptr %i.av, align 8, !tbaa !18
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.aq, label %Py_DECREF.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  call void @_Py_Dealloc(ptr noundef nonnull %i.av) #8
  br label %Py_DECREF.exit.i.i

Py_DECREF.exit.i.i:                               ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.cd = call ptr @PyErr_NoMemory() #8
  br label %newxmlparseobject.exit.i

bb.ar:                                            ; preds = %bb.an
end_hunk_0
begin_hunk_1_@pyexpat_xmlparser_ParseFile:bb.a
  call void @_Py_Dealloc(ptr noundef nonnull %i.bc) #8
  br label %pyexpat_xmlparser_ParseFile_impl.exit

bb.y:                                             ; preds = %readinst.exit.i
  %i.bg = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.bh = icmp eq i32 %i.ba, 0                    ; 2 uses
  %i.bi = zext i1 %i.bh to i32
  %i.bj = call i32 @PyExpat_XML_ParseBuffer(ptr noundef %i.bg, i32 noundef %i.ba, i32 noundef %i.bi) #8 ; 2 uses
  %i.bk = call ptr @PyErr_Occurred() #8
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !19  ; 4 uses
  %.not.i30.i = icmp eq ptr %i.bl, null
  br i1 %.not.i30.i, label %pyexpat_xmlparser_ParseFile_impl.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !18 ; 2 uses
  %.not.i.i31.i = icmp sgt i32 %i.bm, -1
  br i1 %.not.i.i31.i, label %bb.ab, label %pyexpat_xmlparser_ParseFile_impl.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bn = add nsw i32 %i.bm, -1                   ; 2 uses
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !18
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.ac, label %pyexpat_xmlparser_ParseFile_impl.exit

bb.ac:                                            ; preds = %bb.ab
  call void @_Py_Dealloc(ptr noundef nonnull %i.bl) #8
  br label %pyexpat_xmlparser_ParseFile_impl.exit

bb.ad:                                            ; preds = %bb.y
  %i.bp = icmp eq i32 %i.bj, 0
  %or.cond.i = or i1 %i.bh, %i.bp
  br i1 %or.cond.i, label %bb.ae, label %get_parse_result.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !19  ; 4 uses
  %.not.i34.i = icmp eq ptr %i.bq, null
  br i1 %.not.i34.i, label %Py_XDECREF.exit37.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !18 ; 2 uses
  %.not.i.i35.i = icmp sgt i32 %i.br, -1
  br i1 %.not.i.i35.i, label %bb.ag, label %Py_XDECREF.exit37.i

bb.ag:                                            ; preds = %bb.af
  %i.bs = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !18
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.ah, label %Py_XDECREF.exit37.i

bb.ah:                                            ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull %i.bq) #8
  br label %Py_XDECREF.exit37.i

Py_XDECREF.exit37.i:                              ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.bu = call fastcc ptr @get_parse_result(ptr noundef %i.i, ptr noundef nonnull %0, i32 noundef %i.bj)
  br label %pyexpat_xmlparser_ParseFile_impl.exit

pyexpat_xmlparser_ParseFile_impl.exit:            ; preds = %.thread, %bb.d, %Py_XDECREF.exit.i, %bb.i, %readinst.exit.thread.i, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.ab, %bb.ac, %Py_XDECREF.exit37.i
  %.2.i = phi ptr [ %i.bu, %Py_XDECREF.exit37.i ], [ null, %bb.d ], [ null, %.thread ], [ null, %bb.i ], [ null, %bb.x ], [ null, %Py_XDECREF.exit.i ], [ null, %readinst.exit.thread.i ], [ null, %bb.w ], [ null, %bb.z ], [ null, %bb.aa ], [ null, %bb.ab ], [ null, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.b, %pyexpat_xmlparser_ParseFile_impl.exit
  %.0 = phi ptr [ %.2.i, %pyexpat_xmlparser_ParseFile_impl.exit ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @pyexpat_xmlparser_SetBase(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val10 = load i64, ptr %i.c, align 8, !tbaa !25
  %i.d = and i64 %.val10, 268435456
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, ptr noundef nonnull %1) #8
  br label %pyexpat_xmlparser_SetBase_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #8 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %pyexpat_xmlparser_SetBase_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #9
  %i.h = load i64, ptr %i.a, align 8, !tbaa !32
  %.not9 = icmp eq i64 %i.g, %i.h
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.7) #8
  br label %pyexpat_xmlparser_SetBase_impl.exit

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val11 = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.k = call i32 @PyExpat_XML_SetBase(ptr noundef %.val11, ptr noundef nonnull %i.e) #8
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.g, label %pyexpat_xmlparser_SetBase_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.l = call ptr @PyErr_NoMemory() #8
  br label %pyexpat_xmlparser_SetBase_impl.exit

pyexpat_xmlparser_SetBase_impl.exit:              ; preds = %bb.g, %bb.f, %bb.c, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.b ], [ %i.l, %bb.g ], [ @_Py_NoneStruct, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @pyexpat_xmlparser_GetBase(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.b = tail call ptr @PyExpat_XML_GetBase(ptr noundef %.val) #8 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %pyexpat_xmlparser_GetBase_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #9
  %i.e = tail call ptr @PyUnicode_DecodeUTF8(ptr noundef nonnull %i.b, i64 noundef %i.d, ptr noundef nonnull @.str.42) #8
  br label %pyexpat_xmlparser_GetBase_impl.exit

pyexpat_xmlparser_GetBase_impl.exit:              ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.e, %bb.b ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define internal ptr @pyexpat_xmlparser_GetInputContext(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !79
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %pyexpat_xmlparser_GetInputContext_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.g = call ptr @PyExpat_XML_GetInputContext(ptr noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8 ; 2 uses
  %.not6.i = icmp eq ptr %i.g, null
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.a, align 4, !tbaa !6    ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr i8, ptr %i.g, i64 %i.i
  %i.k = load i32, ptr %i.b, align 4, !tbaa !6
  %i.l = sub i32 %i.k, %i.h
  %i.m = sext i32 %i.l to i64
  %i.n = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.j, i64 noundef %i.m) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.c ], [ @_Py_NoneStruct, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %pyexpat_xmlparser_GetInputContext_impl.exit

pyexpat_xmlparser_GetInputContext_impl.exit:      ; preds = %bb.a, %bb.d
  %.1.i = phi ptr [ %.0.i, %bb.d ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @pyexpat_xmlparser_ExternalEntityParserCreate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.d = icmp eq ptr %4, null
  %i.e = add i64 %3, -1
  %i.f = icmp ult i64 %i.e, 2
  %or.cond3 = and i1 %i.d, %i.f
  %i.g = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.g, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @pyexpat_xmlparser_ExternalEntityParserCreate._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %pyexpat_xmlparser_ExternalEntityParserCreate_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ %2, %bb.a ]   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 4 uses
  %i.k = icmp eq ptr %i.j, @_Py_NoneStruct
  br i1 %i.k, label %bb.i, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val46 = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.m = getelementptr i8, ptr %.val46, i64 168
  %.val48 = load i64, ptr %i.m, align 8, !tbaa !25
  %i.n = and i64 %.val48, 268435456
  %.not41 = icmp eq i64 %i.n, 0
  br i1 %.not41, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.o = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %i.j, ptr noundef nonnull %i.b) #8 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #9
  %i.r = load i64, ptr %i.b, align 8, !tbaa !32
  %.not42 = icmp eq i64 %i.q, %i.r
  br i1 %.not42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  call void @PyErr_SetString(ptr noundef %i.s, ptr noundef nonnull @.str.7) #8
  br label %.thread50

.thread50:                                        ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %pyexpat_xmlparser_ExternalEntityParserCreate_impl.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.9, ptr noundef %i.j) #8
  br label %pyexpat_xmlparser_ExternalEntityParserCreate_impl.exit

bb.i:                                             ; preds = %bb.g, %.thread
  %.033 = phi ptr [ %i.o, %bb.g ], [ null, %.thread ]
  %i.t = icmp slt i64 %3, 2
  br i1 %i.t, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr i8, ptr %i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19   ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.x = getelementptr i8, ptr %.val, i64 168
  %.val47 = load i64, ptr %i.x, align 8, !tbaa !25
  %i.y = and i64 %.val47, 268435456
  %.not43 = icmp eq i64 %i.y, 0
  br i1 %.not43, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.122, ptr noundef nonnull %i.v) #8
  br label %pyexpat_xmlparser_ExternalEntityParserCreate_impl.exit

bb.l:                                             ; preds = %bb.j
  %i.z = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.v, ptr noundef nonnull %i.c) #8 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %pyexpat_xmlparser_ExternalEntityParserCreate_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #9
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !32
  %.not44 = icmp eq i64 %i.ab, %i.ac
  br i1 %.not44, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  call void @PyErr_SetString(ptr noundef %i.ad, ptr noundef nonnull @.str.7) #8
  br label %pyexpat_xmlparser_ExternalEntityParserCreate_impl.exit

bb.o:                                             ; preds = %bb.m, %bb.i
  %.032 = phi ptr [ null, %bb.i ], [ %i.z, %bb.m ]
  %i.ae = call ptr @PyType_GetModuleState(ptr noundef %1) #8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ag = call ptr @_PyObject_GC_New(ptr noundef %i.af) #8 ; 23 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %pyexpat_xmlparser_ExternalEntityParserCreate_impl.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = load i32, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.aj = icmp ugt i32 %i.ai, -1073741825
  br i1 %i.aj, label %Py_INCREF.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = add nuw i32 %i.ai, 1
  store i32 %i.ak, ptr %0, align 8, !tbaa !18
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.q, %bb.p
  %i.al = getelementptr i8, ptr %0, i64 56
  %i.am = load i32, ptr %i.al, align 8, !tbaa !39
  %i.an = getelementptr i8, ptr %i.ag, i64 56     ; 2 uses
  store i32 %i.am, ptr %i.an, align 8, !tbaa !39
  %i.ao = getelementptr i8, ptr %i.ag, i64 60
  store i32 0, ptr %i.ao, align 4, !tbaa !40
  %i.ap = getelementptr i8, ptr %i.ag, i64 48     ; 2 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !33
  %i.aq = getelementptr i8, ptr %0, i64 32
  %i.ar = getelementptr i8, ptr %i.ag, i64 32
  %i.as = load <2 x i32>, ptr %i.aq, align 8, !tbaa !6
  store <2 x i32> %i.as, ptr %i.ar, align 8, !tbaa !6
  %i.at = getelementptr i8, ptr %i.ag, i64 40
  store i32 0, ptr %i.at, align 8, !tbaa !79
  %i.au = getelementptr i8, ptr %0, i64 44
  %i.av = load i32, ptr %i.au, align 4, !tbaa !143
  %i.aw = getelementptr i8, ptr %i.ag, i64 44
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !143
  %i.ax = getelementptr i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !44
  %i.az = call ptr @PyExpat_XML_ExternalEntityParserCreate(ptr noundef %i.ay, ptr noundef %.033, ptr noundef %.032) #8
  %i.ba = getelementptr i8, ptr %i.ag, i64 16     ; 3 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !44
  %i.bb = getelementptr i8, ptr %i.ag, i64 24
  store ptr %0, ptr %i.bb, align 8, !tbaa !45
  %i.bc = getelementptr i8, ptr %i.ag, i64 80     ; 4 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !41
  %i.bd = getelementptr i8, ptr %0, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !42 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %_Py_XNewRef.exit.i, label %bb.r

bb.r:                                             ; preds = %Py_INCREF.exit.i
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !18 ; 2 uses
  %i.bg = icmp ugt i32 %i.bf, -1073741825
  br i1 %i.bg, label %_Py_XNewRef.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = add nuw i32 %i.bf, 1
  store i32 %i.bh, ptr %i.be, align 8, !tbaa !18
  br label %_Py_XNewRef.exit.i

_Py_XNewRef.exit.i:                               ; preds = %bb.s, %bb.r, %Py_INCREF.exit.i
  %i.bi = getelementptr i8, ptr %i.ag, i64 72
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !42
  %i.bj = getelementptr i8, ptr %0, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !33
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %bb.z, label %bb.t

bb.t:                                             ; preds = %_Py_XNewRef.exit.i
  %i.bl = load i32, ptr %i.an, align 8, !tbaa !39
  %i.bm = sext i32 %i.bl to i64
  %i.bn = call ptr @PyMem_Malloc(i64 noundef %i.bm) #8 ; 2 uses
  store ptr %i.bn, ptr %i.ap, align 8, !tbaa !33
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.bp = load i32, ptr %i.ag, align 8, !tbaa !18 ; 2 uses
  %.not.i74.i = icmp sgt i32 %i.bp, -1
  br i1 %.not.i74.i, label %bb.v, label %Py_DECREF.exit75.i

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bq, ptr %i.ag, align 8, !tbaa !18
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.w, label %Py_DECREF.exit75.i

bb.w:                                             ; preds = %bb.v
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #8
  br label %Py_DECREF.exit75.i

Py_DECREF.exit75.i:                               ; preds = %bb.w, %bb.v, %bb.u
  %i.bs = load i32, ptr %0, align 8, !tbaa !18    ; 2 uses
  %.not.i72.i = icmp sgt i32 %i.bs, -1
  br i1 %.not.i72.i, label %bb.x, label %Py_DECREF.exit73.i

bb.x:                                             ; preds = %Py_DECREF.exit75.i
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bt, ptr %0, align 8, !tbaa !18
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.y, label %Py_DECREF.exit73.i

bb.y:                                             ; preds = %bb.x
  call void @_Py_Dealloc(ptr noundef nonnull %0) #8
  br label %Py_DECREF.exit73.i

Py_DECREF.exit73.i:                               ; preds = %bb.y, %bb.x, %Py_DECREF.exit75.i
  %i.bv = call ptr @PyErr_NoMemory() #8
  br label %pyexpat_xmlparser_ExternalEntityParserCreate_impl.exit

bb.z:                                             ; preds = %bb.t, %_Py_XNewRef.exit.i
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !44 ; 2 uses
  %.not61.i = icmp eq ptr %i.bw, null
  br i1 %.not61.i, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.bx = load i32, ptr %i.ag, align 8, !tbaa !18 ; 2 uses
  %.not.i70.i = icmp sgt i32 %i.bx, -1
  br i1 %.not.i70.i, label %bb.ab, label %Py_DECREF.exit71.i

bb.ab:                                            ; preds = %bb.aa
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  store i32 %i.by, ptr %i.ag, align 8, !tbaa !18
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.ac, label %Py_DECREF.exit71.i

bb.ac:                                            ; preds = %bb.ab
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #8
  br label %Py_DECREF.exit71.i

Py_DECREF.exit71.i:                               ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ca = load i32, ptr %0, align 8, !tbaa !18    ; 2 uses
  %.not.i68.i = icmp sgt i32 %i.ca, -1
  br i1 %.not.i68.i, label %bb.ad, label %Py_DECREF.exit69.i

bb.ad:                                            ; preds = %Py_DECREF.exit71.i
  %i.cb = add nsw i32 %i.ca, -1                   ; 2 uses
end_hunk_1
