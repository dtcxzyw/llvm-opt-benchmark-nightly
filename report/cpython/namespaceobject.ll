Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/namespaceobject?download=true
inline.NumInlined: 22
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._typeobject = type { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8, i16 }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { %union.anon, ptr }
%union.anon = type { i64 }

@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [22 x i8] c"types.SimpleNamespace\00", align 1, !guid !11
@namespace_doc = internal constant [93 x i8] c"SimpleNamespace(mapping_or_iterable=(), /, **kwargs)\0A--\0A\0AA simple attribute-based namespace.\00", align 16, !guid !12
@_PyNamespace_Type = hidden global { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, i8, i8, i16, [4 x i8] } { %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyType_Type }, i64 0 }, ptr @.str, i64 24, i64 0, ptr @namespace_dealloc, i64 0, ptr null, ptr null, ptr null, ptr @namespace_repr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @PyObject_GenericGetAttr, ptr @PyObject_GenericSetAttr, ptr null, i64 17408, ptr @namespace_doc, ptr @namespace_traverse, ptr @namespace_clear, ptr @namespace_richcompare, i64 0, ptr null, ptr null, ptr @namespace_methods, ptr @namespace_members, ptr null, ptr null, ptr null, ptr null, ptr null, i64 16, ptr @namespace_init, ptr @PyType_GenericAlloc, ptr @namespace_new, ptr @PyObject_GC_Del, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }, align 8, !guid !13
@.str.1 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1, !guid !14
@.str.2 = private unnamed_addr constant [8 x i8] c"%s(...)\00", align 1, !guid !15
@.str.3 = private unnamed_addr constant [6 x i8] c"%U=%R\00", align 1, !guid !16
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1, !guid !17
@.str.5 = private unnamed_addr constant [7 x i8] c"%s(%S)\00", align 1, !guid !18
@_Py_NotImplementedStruct = external global %struct._object, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1, !guid !19
@namespace_reduce__doc__ = internal constant [38 x i8] c"Return state information for pickling\00", align 16, !guid !20
@.str.7 = private unnamed_addr constant [12 x i8] c"__replace__\00", align 1, !guid !21
@.str.8 = private unnamed_addr constant [121 x i8] c"__replace__($self, /, **changes)\0A--\0A\0AReturn a copy of the namespace object with new values for the specified attributes.\00", align 1, !guid !22
@namespace_methods = internal global [3 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.6, ptr @namespace_reduce, i32 4, [4 x i8] zeroinitializer, ptr @namespace_reduce__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.7, ptr @namespace_replace, i32 3, [4 x i8] zeroinitializer, ptr @.str.8 }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16, !guid !23
@.str.10 = private unnamed_addr constant [9 x i8] c"__dict__\00", align 1, !guid !24
@namespace_members = internal global [2 x { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.10, i32 6, [4 x i8] zeroinitializer, i64 16, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } zeroinitializer], align 16, !guid !25
@PyDict_Type = external global %struct._typeobject, align 8

; Function Attrs: nounwind uwtable
define internal void @namespace_dealloc(ptr noundef %0) #0 !guid !44 {
bb.a:
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #3
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !28
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !29
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #3
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.g = getelementptr i8, ptr %.val, i64 320
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  tail call void %i.h(ptr noundef nonnull %0) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @namespace_repr(ptr noundef %0) #0 !guid !47 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val81 = load ptr, ptr %i.b, align 8, !tbaa !32 ; 2 uses
  %.not = icmp eq ptr %.val81, @_PyNamespace_Type
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.val81, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ @.str.1, %bb.a ] ; 2 uses
  %i.f = tail call i32 @Py_ReprEnter(ptr noundef nonnull %0) #3 ; 2 uses
  %.not55 = icmp eq i32 %i.f, 0
  br i1 %.not55, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.ao

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.2, ptr noundef %i.e) #3
  br label %bb.ao

bb.f:                                             ; preds = %bb.c
  %i.i = tail call ptr @PyList_New(i64 noundef 0) #3 ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Py_XDECREF.exit93, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !29   ; 2 uses
  %i.n = icmp ugt i32 %i.m, -1073741825
  br i1 %i.n, label %_Py_NewRef.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = add nuw i32 %i.m, 1
  store i32 %i.o, ptr %i.l, align 8, !tbaa !29
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.g, %bb.h
  %i.p = tail call ptr @PyDict_Keys(ptr noundef nonnull %i.l) #3 ; 6 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %Py_DECREF.exit65.thread, label %bb.i

bb.i:                                             ; preds = %_Py_NewRef.exit
  %i.r = tail call ptr @PyObject_GetIter(ptr noundef nonnull %i.p) #3 ; 12 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %Py_DECREF.exit65.thread, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.t = tail call ptr @PyIter_Next(ptr noundef nonnull %i.r) #3 ; 2 uses
  %.not56131 = icmp eq ptr %i.t, null
  br i1 %.not56131, label %._crit_edge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %bb.l
  %i.u = load i32, ptr %i.x, align 8, !tbaa !29   ; 2 uses
  %.not.i62 = icmp sgt i32 %i.u, -1
  br i1 %.not.i62, label %bb.j, label %.backedge

bb.j:                                             ; preds = %.critedge
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.x, align 8, !tbaa !29
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %.backedge

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.x) #3
  br label %.backedge

.lr.ph:                                           ; preds = %.preheader, %.backedge
  %i.x = phi ptr [ %i.av, %.backedge ], [ %i.t, %.preheader ] ; 13 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val = load ptr, ptr %i.y, align 8, !tbaa !32
  %i.z = getelementptr i8, ptr %.val, i64 168
  %.val82 = load i64, ptr %i.z, align 8, !tbaa !49
  %i.aa = and i64 %.val82, 268435456
  %.not58 = icmp eq i64 %i.aa, 0
  br i1 %.not58, label %.critedge, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ab = getelementptr i8, ptr %i.x, i64 16
  %.val83 = load i64, ptr %i.ab, align 8, !tbaa !52
  %i.ac = icmp sgt i64 %.val83, 0
  br i1 %i.ac, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.ad = call i32 @PyDict_GetItemRef(ptr noundef nonnull %i.l, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #3 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.ag = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.x, ptr noundef %i.af) #3 ; 5 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !28  ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !29 ; 2 uses
  %.not.i72 = icmp sgt i32 %i.ai, -1
  br i1 %.not.i72, label %bb.o, label %Py_DECREF.exit73

bb.o:                                             ; preds = %bb.n
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !29
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.p, label %Py_DECREF.exit73

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #3
  br label %Py_DECREF.exit73

Py_DECREF.exit73:                                 ; preds = %bb.n, %bb.o, %bb.p
  %i.al = icmp eq ptr %i.ag, null
  br i1 %i.al, label %.critedge61, label %bb.q

bb.q:                                             ; preds = %Py_DECREF.exit73
  %i.am = call i32 @PyList_Append(ptr noundef nonnull %i.i, ptr noundef nonnull %i.ag) #3
  %i.an = load i32, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %.not.i70 = icmp sgt i32 %i.an, -1
  br i1 %.not.i70, label %bb.r, label %Py_DECREF.exit71

bb.r:                                             ; preds = %bb.q
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.ag, align 8, !tbaa !29
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.s, label %Py_DECREF.exit71

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #3
  br label %Py_DECREF.exit71

Py_DECREF.exit71:                                 ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = icmp eq i32 %i.am, 0
  br label %bb.u

bb.t:                                             ; preds = %bb.m
  %i.ar = icmp sgt i32 %i.ad, -1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %Py_DECREF.exit71
  %.1 = phi i1 [ %i.ar, %bb.t ], [ %i.aq, %Py_DECREF.exit71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %i.as = load i32, ptr %i.x, align 8, !tbaa !29  ; 2 uses
  %.not.i68 = icmp sgt i32 %i.as, -1
  br i1 %.not.i68, label %bb.v, label %Py_DECREF.exit69

bb.v:                                             ; preds = %bb.u
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.x, align 8, !tbaa !29
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.w, label %Py_DECREF.exit69

bb.w:                                             ; preds = %bb.v
  call void @_Py_Dealloc(ptr noundef nonnull %i.x) #3
  br label %Py_DECREF.exit69

Py_DECREF.exit69:                                 ; preds = %bb.u, %bb.v, %bb.w
  br i1 %.1, label %.backedge, label %Py_DECREF.exit65.thread

.backedge:                                        ; preds = %bb.k, %bb.j, %.critedge, %Py_DECREF.exit69
  %i.av = call ptr @PyIter_Next(ptr noundef nonnull %i.r) #3 ; 2 uses
  %.not56 = icmp eq ptr %i.av, null
  br i1 %.not56, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %i.aw = call ptr @PyErr_Occurred() #3
  %.not57 = icmp eq ptr %i.aw, null
  br i1 %.not57, label %bb.x, label %Py_DECREF.exit65.thread

bb.x:                                             ; preds = %._crit_edge
  %i.ax = call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.4) #3 ; 5 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %Py_DECREF.exit65.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.az = call ptr @PyUnicode_Join(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.i) #3 ; 5 uses
  %i.ba = load i32, ptr %i.ax, align 8, !tbaa !29 ; 2 uses
  %.not.i66 = icmp sgt i32 %i.ba, -1
  br i1 %.not.i66, label %bb.z, label %Py_DECREF.exit67

bb.z:                                             ; preds = %bb.y
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %i.ax, align 8, !tbaa !29
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.aa, label %Py_DECREF.exit67

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %i.ax) #3
  br label %Py_DECREF.exit67

Py_DECREF.exit67:                                 ; preds = %bb.y, %bb.z, %bb.aa
  %i.bd = icmp eq ptr %i.az, null
  br i1 %i.bd, label %Py_DECREF.exit65.thread, label %bb.ab

bb.ab:                                            ; preds = %Py_DECREF.exit67
  %i.be = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.5, ptr noundef %i.e, ptr noundef nonnull %i.az) #3 ; 3 uses
  %i.bf = load i32, ptr %i.az, align 8, !tbaa !29 ; 2 uses
  %.not.i64 = icmp sgt i32 %i.bf, -1
  br i1 %.not.i64, label %bb.ac, label %Py_DECREF.exit65.thread

bb.ac:                                            ; preds = %bb.ab
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.az, align 8, !tbaa !29
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %Py_DECREF.exit65.thread.sink.split, label %Py_DECREF.exit65.thread

.critedge61:                                      ; preds = %Py_DECREF.exit73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %i.bi = load i32, ptr %i.x, align 8, !tbaa !29  ; 2 uses
  %.not.i = icmp sgt i32 %i.bi, -1
  br i1 %.not.i, label %bb.ad, label %Py_DECREF.exit65.thread

bb.ad:                                            ; preds = %.critedge61
  %i.bj = add nsw i32 %i.bi, -1                   ; 2 uses
  store i32 %i.bj, ptr %i.x, align 8, !tbaa !29
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %Py_DECREF.exit65.thread.sink.split, label %Py_DECREF.exit65.thread

Py_DECREF.exit65.thread.sink.split:               ; preds = %bb.ad, %bb.ac
  %.lcssa.sink = phi ptr [ %i.az, %bb.ac ], [ %i.x, %bb.ad ]
  %.0104.ph = phi ptr [ %i.be, %bb.ac ], [ null, %bb.ad ]
  call void @_Py_Dealloc(ptr noundef nonnull %.lcssa.sink) #3
  br label %Py_DECREF.exit65.thread

Py_DECREF.exit65.thread:                          ; preds = %Py_DECREF.exit69, %Py_DECREF.exit65.thread.sink.split, %._crit_edge, %bb.x, %.critedge61, %bb.ad, %_Py_NewRef.exit, %bb.i, %Py_DECREF.exit67, %bb.ab, %bb.ac
  %.0104 = phi ptr [ null, %_Py_NewRef.exit ], [ %i.be, %bb.ac ], [ %i.be, %bb.ab ], [ null, %._crit_edge ], [ null, %Py_DECREF.exit67 ], [ null, %bb.i ], [ %.0104.ph, %Py_DECREF.exit65.thread.sink.split ], [ null, %bb.ad ], [ null, %.critedge61 ], [ null, %bb.x ], [ null, %Py_DECREF.exit69 ] ; 4 uses
  %.040102 = phi ptr [ null, %_Py_NewRef.exit ], [ %i.r, %bb.ac ], [ %i.r, %bb.ab ], [ %i.r, %._crit_edge ], [ %i.r, %Py_DECREF.exit67 ], [ null, %bb.i ], [ %i.r, %Py_DECREF.exit65.thread.sink.split ], [ %i.r, %bb.ad ], [ %i.r, %.critedge61 ], [ %i.r, %bb.x ], [ %i.r, %Py_DECREF.exit69 ] ; 4 uses
  %i.bl = load i32, ptr %i.i, align 8, !tbaa !29  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bl, -1
  br i1 %.not.i.i, label %bb.ae, label %Py_XDECREF.exit

bb.ae:                                            ; preds = %Py_DECREF.exit65.thread
  %i.bm = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.bm, ptr %i.i, align 8, !tbaa !29
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.af, label %Py_XDECREF.exit

bb.af:                                            ; preds = %bb.ae
  call void @_Py_Dealloc(ptr noundef nonnull %i.i) #3
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.af, %bb.ae, %Py_DECREF.exit65.thread
  %i.bo = load i32, ptr %i.l, align 8, !tbaa !29  ; 2 uses
  %.not.i.i86 = icmp sgt i32 %i.bo, -1
  br i1 %.not.i.i86, label %bb.ag, label %Py_XDECREF.exit87

bb.ag:                                            ; preds = %Py_XDECREF.exit
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  store i32 %i.bp, ptr %i.l, align 8, !tbaa !29
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.ah, label %Py_XDECREF.exit87

bb.ah:                                            ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #3
  br label %Py_XDECREF.exit87

Py_XDECREF.exit87:                                ; preds = %Py_XDECREF.exit, %bb.ag, %bb.ah
  %.not.i88 = icmp eq ptr %i.p, null
  br i1 %.not.i88, label %Py_XDECREF.exit90, label %bb.ai

bb.ai:                                            ; preds = %Py_XDECREF.exit87
  %i.br = load i32, ptr %i.p, align 8, !tbaa !29  ; 2 uses
  %.not.i.i89 = icmp sgt i32 %i.br, -1
  br i1 %.not.i.i89, label %bb.aj, label %Py_XDECREF.exit90

bb.aj:                                            ; preds = %bb.ai
  %i.bs = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bs, ptr %i.p, align 8, !tbaa !29
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.ak, label %Py_XDECREF.exit90

bb.ak:                                            ; preds = %bb.aj
  call void @_Py_Dealloc(ptr noundef nonnull %i.p) #3
  br label %Py_XDECREF.exit90

Py_XDECREF.exit90:                                ; preds = %Py_XDECREF.exit87, %bb.ai, %bb.aj, %bb.ak
  %.not.i91 = icmp eq ptr %.040102, null
  br i1 %.not.i91, label %Py_XDECREF.exit93, label %bb.al

bb.al:                                            ; preds = %Py_XDECREF.exit90
  %i.bu = load i32, ptr %.040102, align 8, !tbaa !29 ; 2 uses
  %.not.i.i92 = icmp sgt i32 %i.bu, -1
  br i1 %.not.i.i92, label %bb.am, label %Py_XDECREF.exit93

bb.am:                                            ; preds = %bb.al
  %i.bv = add nsw i32 %i.bu, -1                   ; 2 uses
  store i32 %i.bv, ptr %.040102, align 8, !tbaa !29
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.an, label %Py_XDECREF.exit93

bb.an:                                            ; preds = %bb.am
  call void @_Py_Dealloc(ptr noundef nonnull %.040102) #3
  br label %Py_XDECREF.exit93

Py_XDECREF.exit93:                                ; preds = %bb.f, %Py_XDECREF.exit90, %bb.al, %bb.am, %bb.an
  %.0105116124128 = phi ptr [ %.0104, %bb.an ], [ %.0104, %Py_XDECREF.exit90 ], [ %.0104, %bb.al ], [ %.0104, %bb.am ], [ null, %bb.f ]
  call void @Py_ReprLeave(ptr noundef nonnull %0) #3
  br label %bb.ao

bb.ao:                                            ; preds = %bb.e, %bb.d, %Py_XDECREF.exit93
  %.044 = phi ptr [ %.0105116124128, %Py_XDECREF.exit93 ], [ %i.h, %bb.e ], [ null, %bb.d ]
  ret ptr %.044
}

declare ptr @PyObject_GenericGetAttr(ptr noundef, ptr noundef) #1

declare i32 @PyObject_GenericSetAttr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @namespace_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 !guid !54 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #3 ; 2 uses
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %i.c, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @namespace_clear(ptr nofree noundef captures(none) %0) #0 !guid !55 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !28
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !29
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #3
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @namespace_richcompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 !guid !57 {
bb.a:
  %i.a = and i32 %2, -2
  %or.cond = icmp eq i32 %i.a, 2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.b, align 8, !tbaa !32 ; 2 uses
  %.not.i = icmp eq ptr %.val9, @_PyNamespace_Type
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.b
  %i.c = tail call i32 @PyType_IsSubtype(ptr noundef %.val9, ptr noundef nonnull @_PyNamespace_Type) #3, !inline_history !56
  %.not14 = icmp eq i32 %i.c, 0
  br i1 %.not14, label %bb.c, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.b, %PyObject_TypeCheck.exit
  %i.d = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %.not.i10 = icmp eq ptr %.val, @_PyNamespace_Type
  br i1 %.not.i10, label %PyObject_TypeCheck.exit11.thread, label %PyObject_TypeCheck.exit11

PyObject_TypeCheck.exit11:                        ; preds = %PyObject_TypeCheck.exit.thread
  %i.e = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @_PyNamespace_Type) #3, !inline_history !56
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %PyObject_TypeCheck.exit11.thread

PyObject_TypeCheck.exit11.thread:                 ; preds = %PyObject_TypeCheck.exit.thread, %PyObject_TypeCheck.exit11
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = tail call ptr @PyObject_RichCompare(ptr noundef %i.g, ptr noundef %i.i, i32 noundef %2) #3
  br label %bb.c

bb.c:                                             ; preds = %PyObject_TypeCheck.exit, %PyObject_TypeCheck.exit11, %bb.a, %PyObject_TypeCheck.exit11.thread
  %.0 = phi ptr [ %i.j, %PyObject_TypeCheck.exit11.thread ], [ @_Py_NotImplementedStruct, %bb.a ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit11 ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @namespace_init(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 !guid !58 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store ptr null, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.c = tail call ptr @_PyType_Name(ptr noundef %.val) #3
  %i.d = call i32 (ptr, ptr, i64, i64, ...) @PyArg_UnpackTuple(ptr noundef %1, ptr noundef %i.c, i64 noundef 0, i64 noundef 1, ptr noundef nonnull %i.a) #3
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !28   ; 7 uses
  %.not20 = icmp eq ptr %i.e, null
  br i1 %.not20, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val24 = load ptr, ptr %i.f, align 8, !tbaa !32
  %.not25 = icmp eq ptr %.val24, @PyDict_Type
  br i1 %.not25, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_Py_NewRef.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %i.e, align 8, !tbaa !29
  br label %_Py_NewRef.exit

bb.f:                                             ; preds = %bb.c
  %i.j = call ptr @PyObject_CallOneArg(ptr noundef nonnull @PyDict_Type, ptr noundef nonnull %i.e) #3 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.critedge, label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.e, %bb.d, %bb.f
  %.0 = phi ptr [ %i.j, %bb.f ], [ %i.e, %bb.d ], [ %i.e, %bb.e ] ; 5 uses
  %i.l = call i32 @PyArg_ValidateKeywordArguments(ptr noundef nonnull %.0) #3
  %.not22 = icmp eq i32 %i.l, 0
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_Py_NewRef.exit
  %i.m = getelementptr i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.o = call i32 @PyDict_Update(ptr noundef %i.n, ptr noundef nonnull %.0) #3
  %i.p = icmp sgt i32 %i.o, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_Py_NewRef.exit
  %i.q = phi i1 [ false, %_Py_NewRef.exit ], [ %i.p, %bb.g ]
  %i.r = load i32, ptr %.0, align 8, !tbaa !29    ; 2 uses
  %.not.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %.0, align 8, !tbaa !29
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %.0) #3
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %.critedge

bb.k:                                             ; preds = %Py_DECREF.exit, %bb.b
  %i.u = icmp eq ptr %2, null
  br i1 %i.u, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = call i32 @PyArg_ValidateKeywordArguments(ptr noundef nonnull %2) #3
  %.not23 = icmp eq i32 %i.v, 0
  br i1 %.not23, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42
  %i.y = call i32 @PyDict_Update(ptr noundef %i.x, ptr noundef nonnull %2) #3
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.l, %bb.k, %bb.a, %Py_DECREF.exit, %bb.m
  %.2 = phi i32 [ -1, %bb.l ], [ %i.y, %bb.m ], [ 0, %bb.k ], [ -1, %Py_DECREF.exit ], [ -1, %bb.a ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.2
}

declare ptr @PyType_GenericAlloc(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @namespace_new(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 !guid !59 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = tail call ptr %i.b(ptr noundef %0, i64 noundef 0) #3 ; 6 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyDict_New() #3           ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !42
  %.not11 = icmp eq ptr %i.d, null
  br i1 %.not11, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.c, align 8, !tbaa !29
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #3
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.1 = phi ptr [ null, %bb.a ], [ %i.c, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ]
  ret ptr %.1
}

declare void @PyObject_GC_Del(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyNamespace_New(ptr noundef %0) local_unnamed_addr #0 !guid !60 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyNamespace_Type, i64 304), align 8, !tbaa !43
  %i.b = tail call ptr %i.a(ptr noundef nonnull @_PyNamespace_Type, i64 noundef 0) #3, !inline_history !61 ; 9 uses
  %.not.i10 = icmp eq ptr %i.b, null
  br i1 %.not.i10, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyDict_New() #3           ; 3 uses
  %i.d = getelementptr i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !42
  %.not11.i = icmp eq ptr %i.c, null
  br i1 %.not11.i, label %bb.c, label %namespace_new.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.b, align 8, !tbaa !29
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %Py_DECREF.exit.sink.split, label %Py_DECREF.exit

namespace_new.exit:                               ; preds = %bb.b
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %namespace_new.exit
  %i.i = tail call i32 @PyDict_Update(ptr noundef nonnull %i.c, ptr noundef nonnull %0) #3
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i32, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.b, align 8, !tbaa !29
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %Py_DECREF.exit.sink.split, label %Py_DECREF.exit

Py_DECREF.exit.sink.split:                        ; preds = %bb.g, %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #3
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit.sink.split, %bb.d, %bb.c, %bb.a, %bb.g, %bb.f, %bb.e, %namespace_new.exit
  %.0 = phi ptr [ %i.b, %namespace_new.exit ], [ null, %bb.d ], [ %i.b, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.a ], [ null, %bb.c ], [ null, %Py_DECREF.exit.sink.split ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @PyDict_Update(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #1

declare i32 @Py_ReprEnter(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

declare ptr @PyDict_Keys(ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_GetIter(ptr noundef) local_unnamed_addr #1

declare ptr @PyIter_Next(ptr noundef) local_unnamed_addr #1

declare i32 @PyDict_GetItemRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_Join(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Py_ReprLeave(ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_RichCompare(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @namespace_reduce(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 !guid !62 {
bb.a:
  %i.a = tail call ptr @PyTuple_New(i64 noundef 0) #3 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 3, ptr noundef %.val, ptr noundef nonnull %i.a, ptr noundef %i.d) #3 ; 3 uses
  %i.f = load i32, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.a, align 8, !tbaa !29
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #3
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @namespace_replace(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 !guid !63 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_NoPositional(ptr noundef nonnull @.str.7, ptr noundef nonnull %1) #3
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %Py_DECREF.exit19, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.d = tail call ptr @PyObject_CallNoArgs(ptr noundef %.val) #3 ; 9 uses
  %.not16 = icmp eq ptr %i.d, null
  br i1 %.not16, label %Py_DECREF.exit19, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %i.d, i64 16       ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.i = tail call i32 @PyDict_Update(ptr noundef %i.f, ptr noundef %i.h) #3
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %.not.i18 = icmp sgt i32 %i.k, -1
  br i1 %.not.i18, label %bb.f, label %Py_DECREF.exit19

bb.f:                                             ; preds = %bb.e
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.d, align 8, !tbaa !29
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %Py_DECREF.exit19.sink.split, label %Py_DECREF.exit19

bb.g:                                             ; preds = %bb.d
  %.not17 = icmp eq ptr %2, null
  br i1 %.not17, label %Py_DECREF.exit19, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.o = tail call i32 @PyDict_Update(ptr noundef %i.n, ptr noundef nonnull %2) #3
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %Py_DECREF.exit19

bb.i:                                             ; preds = %bb.h
  %i.q = load i32, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit19

bb.j:                                             ; preds = %bb.i
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.d, align 8, !tbaa !29
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %Py_DECREF.exit19.sink.split, label %Py_DECREF.exit19

Py_DECREF.exit19.sink.split:                      ; preds = %bb.j, %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #3
  br label %Py_DECREF.exit19

Py_DECREF.exit19:                                 ; preds = %Py_DECREF.exit19.sink.split, %bb.j, %bb.i, %bb.f, %bb.e, %bb.c, %bb.h, %bb.g, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %i.d, %bb.g ], [ null, %bb.j ], [ null, %bb.c ], [ %i.d, %bb.h ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.i ], [ null, %Py_DECREF.exit19.sink.split ]
  ret ptr %.1
}

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #1

declare ptr @PyTuple_Pack(i64 noundef, ...) local_unnamed_addr #1

declare i32 @_PyArg_NoPositional(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_CallNoArgs(ptr noundef) local_unnamed_addr #1

declare i32 @PyArg_UnpackTuple(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ...) local_unnamed_addr #1

declare ptr @_PyType_Name(ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyArg_ValidateKeywordArguments(ptr noundef) local_unnamed_addr #1

declare ptr @PyDict_New() local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!11 = !{i64 -4770878140977369089}
!12 = !{i64 7863129374383495158}
!13 = !{i64 -2017469390097535154}
!14 = !{i64 7383687855890977057}
!15 = !{i64 -9213642004079450470}
!16 = !{i64 -2689860790099479815}
!17 = !{i64 -3698055158997453904}
!18 = !{i64 -2188089541227641832}
!19 = !{i64 4168785225865879235}
!20 = !{i64 9046825142409350496}
!21 = !{i64 -6115388737718590713}
!22 = !{i64 2090459469366383254}
!23 = !{i64 -4933734189528129190}
!24 = !{i64 -5517099599472248928}
!25 = !{i64 655799537141768640}
!26 = !{!"any pointer", !8, i64 0}
!27 = !{!"p1 _ZTS7_object", !26, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!8, !8, i64 0}
!30 = !{!"p1 _ZTS11_typeobject", !26, i64 0}
!31 = !{!"_object", !8, i64 0, !30, i64 8}
!32 = !{!31, !30, i64 8}
!33 = !{!"long", !8, i64 0}
!34 = !{!"PyVarObject", !31, i64 0, !33, i64 16}
!35 = !{!"p1 omnipotent char", !26, i64 0}
!36 = !{!"p1 _ZTS11PyMethodDef", !26, i64 0}
!37 = !{!"p1 _ZTS11PyMemberDef", !26, i64 0}
!38 = !{!"p1 _ZTS11PyGetSetDef", !26, i64 0}
!39 = !{!"short", !8, i64 0}
!40 = !{!"_typeobject", !34, i64 0, !35, i64 24, !33, i64 32, !33, i64 40, !26, i64 48, !33, i64 56, !26, i64 64, !26, i64 72, !26, i64 80, !26, i64 88, !26, i64 96, !26, i64 104, !26, i64 112, !26, i64 120, !26, i64 128, !26, i64 136, !26, i64 144, !26, i64 152, !26, i64 160, !33, i64 168, !35, i64 176, !26, i64 184, !26, i64 192, !26, i64 200, !33, i64 208, !26, i64 216, !26, i64 224, !36, i64 232, !37, i64 240, !38, i64 248, !30, i64 256, !27, i64 264, !26, i64 272, !26, i64 280, !33, i64 288, !26, i64 296, !26, i64 304, !26, i64 312, !26, i64 320, !26, i64 328, !27, i64 336, !27, i64 344, !27, i64 352, !26, i64 360, !27, i64 368, !26, i64 376, !9, i64 384, !26, i64 392, !26, i64 400, !8, i64 408, !39, i64 410}
!41 = !{!"", !31, i64 0, !27, i64 16}
!42 = !{!41, !27, i64 16}
!43 = !{!40, !26, i64 304}
!44 = !{i64 8924525360046774965}
!45 = !{!40, !26, i64 320}
!46 = distinct !{!46, !53}
!47 = !{i64 3035548956044010042}
!48 = !{!40, !35, i64 24}
!49 = !{!40, !33, i64 168}
!50 = !{!"_PyUnicodeObject_state", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0}
!51 = !{!"", !31, i64 0, !33, i64 16, !33, i64 24, !50, i64 32}
!52 = !{!51, !33, i64 16}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{i64 -4133181949232426694}
!55 = !{i64 -7755100723586625694}
!56 = distinct !{null}
!57 = !{i64 -3508290031417143918}
!58 = !{i64 4781203599709666759}
!59 = !{i64 -1179754543936234569}
!60 = !{i64 659760833811344075}
!61 = !{ptr @namespace_new}
!62 = !{i64 7493618953702151271}
!63 = !{i64 1296167793650469665}
end_hunk_0
