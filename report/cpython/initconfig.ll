Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/initconfig?download=true
inline.NumInlined: 296
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_PyConfig_AsDict:bb.a

Py_DECREF.exit25:                                 ; preds = %bb.b, %Py_DECREF.exit25.sink.split, %bb.h, %bb.g, %bb.c, %.critedge, %bb.a
  %.4 = phi ptr [ null, %bb.a ], [ null, %bb.h ], [ null, %Py_DECREF.exit25.sink.split ], [ null, %.critedge ], [ null, %bb.c ], [ null, %bb.g ], [ %i.a, %bb.b ]
  ret ptr %.4
}

declare ptr @PyDict_New() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @config_get(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #5 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 2 uses
  %.not25 = icmp eq ptr %i.b, null
  br i1 %.not25, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @PySys_GetAttrString(ptr noundef nonnull %i.b) #28
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !170    ; 2 uses
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(15) @.str.85) #29
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @PySys_GetAttrString(ptr noundef nonnull @.str.285) #28 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @PyObject_IsTrue(ptr noundef nonnull %i.g) #28 ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i, label %bb.g, label %Py_DECREF.exit.i

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.g, align 8, !tbaa !36
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %Py_DECREF.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #28
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.h, %bb.g, %bb.f
  %i.m = icmp slt i32 %i.i, 0
  br i1 %i.m, label %_Py_NewRef.exit, label %bb.i

bb.i:                                             ; preds = %Py_DECREF.exit.i
  %.not.i = icmp eq i32 %i.i, 0
  %i.n = zext i1 %.not.i to i64
  %i.o = tail call ptr @PyBool_FromLong(i64 noundef %i.n) #28
  br label %_Py_NewRef.exit

bb.j:                                             ; preds = %bb.d
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(19) @.str.67) #29
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !172
  %i.t = getelementptr i8, ptr %i.s, i64 11888
  %i.u = load i32, ptr %i.t, align 8, !tbaa !312
  %i.v = sext i32 %i.u to i64
  %i.w = tail call ptr @PyLong_FromLong(i64 noundef %i.v) #28
  br label %_Py_NewRef.exit

bb.l:                                             ; preds = %bb.j, %bb.a
  %i.x = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.x, align 8, !tbaa !168
  %i.y = getelementptr i8, ptr %0, i64 %.val      ; 8 uses
  %i.z = getelementptr i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !169
  switch i32 %i.aa, label %bb.ab [
    i32 0, label %bb.m
    i32 1, label %bb.m
    i32 3, label %bb.n
    i32 2, label %bb.o
    i32 10, label %bb.p
    i32 11, label %bb.p
    i32 12, label %bb.t
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !15
  %i.ac = sext i32 %i.ab to i64
  %i.ad = tail call ptr @PyLong_FromLong(i64 noundef %i.ac) #28
  br label %_Py_NewRef.exit

bb.n:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.y, align 4, !tbaa !15
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i64
  %i.ah = tail call ptr @PyBool_FromLong(i64 noundef %i.ag) #28
  br label %_Py_NewRef.exit

bb.o:                                             ; preds = %bb.l
  %i.ai = load i64, ptr %i.y, align 8, !tbaa !34
  %i.aj = tail call ptr @PyLong_FromUnsignedLong(i64 noundef %i.ai) #28
  br label %_Py_NewRef.exit

bb.p:                                             ; preds = %bb.l, %bb.l
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %.not26 = icmp eq ptr %i.ak, null
  br i1 %.not26, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = tail call ptr @PyUnicode_FromWideChar(ptr noundef nonnull %i.ak, i64 noundef -1) #28
  br label %_Py_NewRef.exit

bb.r:                                             ; preds = %bb.p
  %i.am = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !36 ; 2 uses
  %i.an = icmp ugt i32 %i.am, -1073741825
  br i1 %i.an, label %_Py_NewRef.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = add nuw i32 %i.am, 1
  store i32 %i.ao, ptr @_Py_NoneStruct, align 8, !tbaa !36
  br label %_Py_NewRef.exit

bb.t:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %1, align 8, !tbaa !170
  %i.aq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(9) @.str.8) #29
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.as = tail call ptr @_PyConfig_CreateXOptionsDict(ptr noundef %0)
  br label %_Py_NewRef.exit

bb.v:                                             ; preds = %bb.t
  %i.at = load i64, ptr %i.y, align 8, !tbaa !29
  %i.au = tail call ptr @PyTuple_New(i64 noundef %i.at) #28 ; 7 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_Py_NewRef.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.v
  %i.aw = load i64, ptr %i.y, align 8, !tbaa !29
  %.not2122.i = icmp sgt i64 %i.aw, 0
  br i1 %.not2122.i, label %.lr.ph.i, label %_Py_NewRef.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ax = getelementptr i8, ptr %i.y, i64 8
  %i.ay = getelementptr i8, ptr %i.au, i64 32
  br label %bb.w

bb.w:                                             ; preds = %bb.aa, %.lr.ph.i
  %.023.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bh, %bb.aa ] ; 3 uses
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !30
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %.023.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !32
  %i.bc = tail call ptr @PyUnicode_FromWideChar(ptr noundef %i.bb, i64 noundef -1) #28 ; 2 uses
  %.not.i27 = icmp eq ptr %i.bc, null
  br i1 %.not.i27, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bd = load i32, ptr %i.au, align 8, !tbaa !36 ; 2 uses
  %.not.i.i28 = icmp sgt i32 %i.bd, -1
  br i1 %.not.i.i28, label %bb.y, label %_Py_NewRef.exit

bb.y:                                             ; preds = %bb.x
  %i.be = add nsw i32 %i.bd, -1                   ; 2 uses
  store i32 %i.be, ptr %i.au, align 8, !tbaa !36
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.z, label %_Py_NewRef.exit

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.au) #28
  br label %_Py_NewRef.exit

bb.aa:                                            ; preds = %bb.w
  %i.bg = getelementptr [8 x i8], ptr %i.ay, i64 %.023.i
  store ptr %i.bc, ptr %i.bg, align 8, !tbaa !24
  %i.bh = add nuw nsw i64 %.023.i, 1              ; 2 uses
  %i.bi = load i64, ptr %i.y, align 8, !tbaa !29
  %.not21.i = icmp slt i64 %i.bh, %i.bi
  br i1 %.not21.i, label %bb.w, label %_Py_NewRef.exit, !llvm.loop !311

bb.ab:                                            ; preds = %bb.l
  unreachable

_Py_NewRef.exit:                                  ; preds = %bb.aa, %Py_DECREF.exit.i, %bb.e, %bb.z, %bb.y, %bb.x, %.preheader.i, %bb.v, %bb.s, %bb.r, %bb.i, %bb.m, %bb.n, %bb.o, %bb.u, %bb.q, %bb.k, %bb.c
  %.3 = phi ptr [ %i.c, %bb.c ], [ null, %Py_DECREF.exit.i ], [ %i.w, %bb.k ], [ %i.ad, %bb.m ], [ %i.ah, %bb.n ], [ %i.aj, %bb.o ], [ @_Py_NoneStruct, %bb.s ], [ %i.as, %bb.u ], [ %i.al, %bb.q ], [ %i.o, %bb.i ], [ @_Py_NoneStruct, %bb.r ], [ null, %bb.v ], [ null, %bb.x ], [ null, %bb.y ], [ null, %bb.z ], [ %i.au, %.preheader.i ], [ null, %bb.e ], [ %i.au, %bb.aa ]
  ret ptr %.3
}

declare i32 @PyDict_SetItemString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyConfig_FromDict(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.PyWideStringList, align 8   ; 14 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %3 = alloca %struct.PyWideStringList, align 8   ; 12 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.h, align 8, !tbaa !173
  %i.i = getelementptr i8, ptr %.val, i64 168
  %.val60 = load i64, ptr %i.i, align 8, !tbaa !178
  %i.j = and i64 %.val60, 536870912
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.7) #28
  br label %.critedge58

bb.c:                                             ; preds = %.preheader, %.critedge59
  %i.n = phi ptr [ @.str.69, %.preheader ], [ %i.hh, %.critedge59 ] ; 21 uses
  %.048226 = phi ptr [ @PYCONFIG_SPEC, %.preheader ], [ %i.hg, %.critedge59 ] ; 3 uses
  %i.o = getelementptr i8, ptr %.048226, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !168
  %i.q = getelementptr i8, ptr %0, i64 %i.p       ; 7 uses
  %i.r = getelementptr i8, ptr %.048226, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !169  ; 4 uses
  switch i32 %i.s, label %bb.ci [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 3, label %bb.d
    i32 2, label %bb.r
    i32 10, label %bb.ad
    i32 11, label %bb.ag
    i32 12, label %bb.ah
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  %i.t = call i32 @PyDict_GetItemStringRef(ptr noundef %1, ptr noundef nonnull %i.n, ptr noundef nonnull %i.g) #28
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !24   ; 5 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  %i.x = call ptr @PyErr_Occurred() #28
  %.not.i13.i = icmp eq ptr %i.x, null
  br i1 %.not.i13.i, label %bb.g, label %.critedge58

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  %i.z = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.y, ptr noundef nonnull @.str.132, ptr noundef nonnull %i.n) #28 ; 0 uses
  br label %.critedge58

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  %i.aa = call i32 @PyLong_AsInt(ptr noundef nonnull %i.v) #28 ; 4 uses
  %i.ab = load i32, ptr %i.v, align 8, !tbaa !36  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ab, -1
  br i1 %.not.i.i, label %bb.i, label %Py_DECREF.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.v, align 8, !tbaa !36
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %Py_DECREF.exit.i

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %i.v) #28
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.j, %bb.i, %bb.h
  %i.ae = icmp eq i32 %i.aa, -1
  br i1 %i.ae, label %bb.k, label %config_dict_get_int.exit

bb.k:                                             ; preds = %Py_DECREF.exit.i
  %i.af = call ptr @PyErr_Occurred() #28
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %config_dict_get_int.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.ah = call i32 @PyErr_ExceptionMatches(ptr noundef %i.ag) #28
  %.not11.i = icmp eq i32 %i.ah, 0
  br i1 %.not11.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.aj = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ai, ptr noundef nonnull @.str.133, ptr noundef nonnull %i.n) #28 ; 0 uses
  br label %.critedge58

bb.n:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !24
  %i.al = call i32 @PyErr_ExceptionMatches(ptr noundef %i.ak) #28
  %.not12.i = icmp eq i32 %i.al, 0
  br i1 %.not12.i, label %.critedge58, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  %i.an = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.am, ptr noundef nonnull @.str.134, ptr noundef nonnull %i.n) #28 ; 0 uses
  br label %.critedge58

config_dict_get_int.exit:                         ; preds = %Py_DECREF.exit.i
  %i.ao = icmp eq i32 %i.s, 3
  br i1 %i.ao, label %bb.q, label %bb.p

config_dict_get_int.exit.thread:                  ; preds = %bb.k
  %i.ap = icmp eq i32 %i.s, 3
  br i1 %i.ap, label %.thread, label %bb.p

bb.p:                                             ; preds = %config_dict_get_int.exit.thread, %config_dict_get_int.exit
  %i.aq = icmp eq i32 %i.s, 1
  %i.ar = icmp slt i32 %i.aa, 0
  %or.cond = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond, label %.thread, label %.critedge

bb.q:                                             ; preds = %config_dict_get_int.exit
  %.old4 = icmp slt i32 %i.aa, 0
  br i1 %.old4, label %.thread, label %.critedge

.thread:                                          ; preds = %config_dict_get_int.exit.thread, %bb.p, %bb.q
  %i.as = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  %i.at = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.as, ptr noundef nonnull @.str.134, ptr noundef nonnull %i.n) #28 ; 0 uses
  br label %.critedge58

.critedge:                                        ; preds = %bb.q, %bb.p
  store i32 %i.aa, ptr %i.q, align 4, !tbaa !15
  br label %.critedge59

bb.r:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.au = call i32 @PyDict_GetItemStringRef(ptr noundef %1, ptr noundef nonnull %i.n, ptr noundef nonnull %i.f) #28
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !24  ; 5 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  %i.ay = call ptr @PyErr_Occurred() #28
  %.not.i13.i67 = icmp eq ptr %i.ay, null
  br i1 %.not.i13.i67, label %bb.u, label %.critedge58

bb.u:                                             ; preds = %bb.t
  %i.az = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  %i.ba = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.az, ptr noundef nonnull @.str.132, ptr noundef nonnull %i.n) #28 ; 0 uses
  br label %.critedge58

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  %i.bb = call i64 @PyLong_AsUnsignedLong(ptr noundef nonnull %i.aw) #28 ; 2 uses
  %i.bc = load i32, ptr %i.aw, align 8, !tbaa !36 ; 2 uses
  %.not.i.i61 = icmp sgt i32 %i.bc, -1
  br i1 %.not.i.i61, label %bb.w, label %Py_DECREF.exit.i62

bb.w:                                             ; preds = %bb.v
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.aw, align 8, !tbaa !36
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.x, label %Py_DECREF.exit.i62

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.aw) #28
  br label %Py_DECREF.exit.i62

Py_DECREF.exit.i62:                               ; preds = %bb.x, %bb.w, %bb.v
  %i.bf = icmp eq i64 %i.bb, -1
  br i1 %i.bf, label %bb.y, label %config_dict_get_ulong.exit

bb.y:                                             ; preds = %Py_DECREF.exit.i62
  %i.bg = call ptr @PyErr_Occurred() #28
  %.not.i64 = icmp eq ptr %i.bg, null
  br i1 %.not.i64, label %config_dict_get_ulong.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.bi = call i32 @PyErr_ExceptionMatches(ptr noundef %i.bh) #28
  %.not11.i65 = icmp eq i32 %i.bi, 0
  br i1 %.not11.i65, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.bk = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bj, ptr noundef nonnull @.str.133, ptr noundef nonnull %i.n) #28 ; 0 uses
  br label %.critedge58

bb.ab:                                            ; preds = %bb.z
  %i.bl = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !24
  %i.bm = call i32 @PyErr_ExceptionMatches(ptr noundef %i.bl) #28
  %.not12.i66 = icmp eq i32 %i.bm, 0
  br i1 %.not12.i66, label %.critedge58, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bn = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  %i.bo = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bn, ptr noundef nonnull @.str.134, ptr noundef nonnull %i.n) #28 ; 0 uses
  br label %.critedge58

config_dict_get_ulong.exit:                       ; preds = %Py_DECREF.exit.i62, %bb.y
  store i64 %i.bb, ptr %i.q, align 8, !tbaa !34
  br label %.critedge59

bb.ad:                                            ; preds = %bb.c
  %i.bp = call fastcc i32 @config_dict_get_wstr(ptr noundef %1, ptr noundef %i.n, ptr noundef %0, ptr noundef %i.q)
  %i.bq = icmp slt i32 %i.bp, 0
end_hunk_0
begin_hunk_1_@_PyConfig_FromDict:bb.a
  br i1 %.not.i27.i, label %bb.bf, label %config_dict_get_xoptions.exit.thread89

bb.bf:                                            ; preds = %_PyWideStringList_Clear.exit.i
  %i.dv = add nsw i32 %i.du, -1                   ; 2 uses
  store i32 %i.dv, ptr %i.cb, align 8, !tbaa !36
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %config_dict_get_xoptions.exit, label %config_dict_get_xoptions.exit.thread89

.thread.loopexit.i:                               ; preds = %Py_DECREF.exit30.i, %bb.ar
  store ptr %i.cn, ptr %i.l, align 8
  store i64 %i.co, ptr %3, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %bb.bd, %bb.ba
  %i.dx = phi ptr [ %i.cn, %.thread.loopexit.i ], [ %i.cn, %bb.ba ], [ %i.dl, %bb.bd ] ; 2 uses
  %i.dy = phi i64 [ %i.co, %.thread.loopexit.i ], [ %i.co, %bb.ba ], [ %i.dm, %bb.bd ] ; 2 uses
  %i.dz = icmp sgt i64 %i.dy, 0
  br i1 %i.dz, label %.lr.ph.split.i.i38.i, label %_PyWideStringList_Clear.exit40.i

.lr.ph.split.i.i38.i:                             ; preds = %.thread.i, %.lr.ph.split.i.i38.i
  %.012.i.i39.i = phi i64 [ %i.ec, %.lr.ph.split.i.i38.i ], [ 0, %.thread.i ] ; 2 uses
  %i.ea = getelementptr [8 x i8], ptr %i.dx, i64 %.012.i.i39.i
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !32
  call void @PyMem_RawFree(ptr noundef %i.eb) #28
  %i.ec = add nuw nsw i64 %.012.i.i39.i, 1        ; 2 uses
  %exitcond32.not.i = icmp eq i64 %i.ec, %i.dy
  br i1 %exitcond32.not.i, label %_PyWideStringList_Clear.exit40.i, label %.lr.ph.split.i.i38.i, !llvm.loop !0

_PyWideStringList_Clear.exit40.i:                 ; preds = %.lr.ph.split.i.i38.i, %.thread.i
  call void @PyMem_RawFree(ptr noundef %i.dx) #28
  %i.ed = load i32, ptr %i.cb, align 8, !tbaa !36 ; 2 uses
  %.not.i.i69 = icmp sgt i32 %i.ed, -1
  br i1 %.not.i.i69, label %bb.bg, label %config_dict_get_xoptions.exit.thread86

bb.bg:                                            ; preds = %_PyWideStringList_Clear.exit40.i
  %i.ee = add nsw i32 %i.ed, -1                   ; 2 uses
  store i32 %i.ee, ptr %i.cb, align 8, !tbaa !36
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %config_dict_get_xoptions.exit.thread91, label %config_dict_get_xoptions.exit.thread86

config_dict_get_xoptions.exit.thread91:           ; preds = %bb.bg
  call void @_Py_Dealloc(ptr noundef nonnull %i.cb) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.critedge58

config_dict_get_xoptions.exit.thread86:           ; preds = %bb.bg, %_PyWideStringList_Clear.exit40.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.critedge58

config_dict_get_xoptions.exit.thread89:           ; preds = %_PyWideStringList_Clear.exit.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.critedge59

config_dict_get_xoptions.exit:                    ; preds = %bb.bf
  call void @_Py_Dealloc(ptr noundef nonnull %i.cb) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.critedge59

bb.bh:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.eg = call i32 @PyDict_GetItemStringRef(ptr noundef %1, ptr noundef nonnull %i.n, ptr noundef nonnull %i.a) #28
  %i.eh = icmp slt i32 %i.eg, 0
  br i1 %i.eh, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ei = load ptr, ptr %i.a, align 8, !tbaa !24  ; 15 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ek = call ptr @PyErr_Occurred() #28
  %.not.i53.i = icmp eq ptr %i.ek, null
  br i1 %.not.i53.i, label %bb.bk, label %.critedge58

bb.bk:                                            ; preds = %bb.bj
  %i.el = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  %i.em = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.el, ptr noundef nonnull @.str.132, ptr noundef nonnull %i.n) #28 ; 0 uses
  br label %.critedge58

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.en = getelementptr i8, ptr %i.ei, i64 8
  %.val50.i = load ptr, ptr %i.en, align 8, !tbaa !173 ; 2 uses
  %.not.i70 = icmp eq ptr %.val50.i, @PyList_Type
  br i1 %.not.i70, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.not8.i = icmp eq ptr %.val50.i, @PyTuple_Type
  br i1 %.not8.i, label %.thread.i71, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.eo = load i32, ptr %i.ei, align 8, !tbaa !36 ; 2 uses
  %.not.i44.i = icmp sgt i32 %i.eo, -1
  br i1 %.not.i44.i, label %bb.bo, label %Py_DECREF.exit45.i

bb.bo:                                            ; preds = %bb.bn
  %i.ep = add nsw i32 %i.eo, -1                   ; 2 uses
  store i32 %i.ep, ptr %i.ei, align 8, !tbaa !36
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.bp, label %Py_DECREF.exit45.i

bb.bp:                                            ; preds = %bb.bo
  call void @_Py_Dealloc(ptr noundef nonnull %i.ei) #28
  br label %Py_DECREF.exit45.i

Py_DECREF.exit45.i:                               ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.er = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.es = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.er, ptr noundef nonnull @.str.133, ptr noundef nonnull %i.n) #28 ; 0 uses
  br label %.critedge58

bb.bq:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %.in9.i = getelementptr i8, ptr %i.ei, i64 16
  %i.et = load i64, ptr %.in9.i, align 8, !tbaa !179 ; 3 uses
  %i.eu = icmp sgt i64 %i.et, 0
  br i1 %i.eu, label %.lr.ph.split.us.preheader.i, label %bb.cc

.thread.i71:                                      ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %.in9116.i = getelementptr i8, ptr %i.ei, i64 16
  %i.ev = load i64, ptr %.in9116.i, align 8, !tbaa !179 ; 3 uses
  %i.ew = icmp sgt i64 %i.ev, 0
  br i1 %i.ew, label %.lr.ph.split.preheader.i, label %bb.cc

.lr.ph.split.preheader.i:                         ; preds = %.thread.i71
  %i.ex = getelementptr i8, ptr %i.ei, i64 32
  br label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.bq
  %i.ey = getelementptr i8, ptr %i.ei, i64 24
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.bv, %.lr.ph.split.us.preheader.i
  %i.ez = phi ptr [ %i.fm, %bb.bv ], [ null, %.lr.ph.split.us.preheader.i ] ; 6 uses
  %.019.us.i = phi i64 [ %i.fp, %bb.bv ], [ 0, %.lr.ph.split.us.preheader.i ] ; 9 uses
  %i.fa = load ptr, ptr %i.ey, align 8, !tbaa !42
  %.in.us.i = getelementptr [8 x i8], ptr %i.fa, i64 %.019.us.i
  %i.fb = load ptr, ptr %.in.us.i, align 8, !tbaa !24 ; 3 uses
  %i.fc = icmp eq ptr %i.fb, @_Py_NoneStruct
  br i1 %i.fc, label %.split.us.i, label %bb.br

bb.br:                                            ; preds = %.lr.ph.split.us.i
  %i.fd = getelementptr i8, ptr %i.fb, i64 8
  %.val.us.i = load ptr, ptr %i.fd, align 8, !tbaa !173
  %i.fe = getelementptr i8, ptr %.val.us.i, i64 168
  %.val48.us.i = load i64, ptr %i.fe, align 8, !tbaa !178
  %i.ff = and i64 %.val48.us.i, 268435456
  %.not40.us.i = icmp eq i64 %i.ff, 0
  br i1 %.not40.us.i, label %.split29.us.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fg = call ptr @PyUnicode_AsWideCharString(ptr noundef %i.fb, ptr noundef null) #28 ; 5 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %.loopexit.i78, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fi = call ptr @_PyMem_RawWcsdup(ptr noundef nonnull %i.fg) #28, !noalias !320 ; 3 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %.loopexit10.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fk = shl i64 %.019.us.i, 3
  %i.fl = add i64 %i.fk, 8
  %i.fm = call ptr @PyMem_RawRealloc(ptr noundef %i.ez, i64 noundef %i.fl) #28, !noalias !320 ; 4 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %.split38.us.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fo = getelementptr [8 x i8], ptr %i.fm, i64 %.019.us.i
  store ptr %i.fi, ptr %i.fo, align 8, !tbaa !32, !noalias !320
  %i.fp = add nuw nsw i64 %.019.us.i, 1           ; 2 uses
  call void @PyMem_Free(ptr noundef nonnull %i.fg) #28
  %exitcond96.not.i = icmp eq i64 %i.fp, %i.et
  br i1 %exitcond96.not.i, label %._crit_edge.i77, label %.lr.ph.split.us.i, !llvm.loop !317

.lr.ph.split.i:                                   ; preds = %bb.cb, %.lr.ph.split.preheader.i
  %i.fq = phi ptr [ %i.gg, %bb.cb ], [ null, %.lr.ph.split.preheader.i ] ; 6 uses
  %.019.i = phi i64 [ %i.gk, %bb.cb ], [ 0, %.lr.ph.split.preheader.i ] ; 9 uses
  %.in.i = getelementptr [8 x i8], ptr %i.ex, i64 %.019.i
  %i.fr = load ptr, ptr %.in.i, align 8, !tbaa !24 ; 3 uses
  %i.fs = icmp eq ptr %i.fr, @_Py_NoneStruct
  br i1 %i.fs, label %.split.us.i, label %bb.bw

.split.us.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i
  %.us-phi.i = phi ptr [ %i.ez, %.lr.ph.split.us.i ], [ %i.fq, %.lr.ph.split.i ] ; 2 uses
  %.us-phi27.i = phi i64 [ %.019.us.i, %.lr.ph.split.us.i ], [ %.019.i, %.lr.ph.split.i ]
  store ptr %.us-phi.i, ptr %i.k, align 8
  %i.ft = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  %i.fu = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ft, ptr noundef nonnull @.str.134, ptr noundef nonnull %i.n) #28 ; 0 uses
  br label %bb.cg

bb.bw:                                            ; preds = %.lr.ph.split.i
  %i.fv = getelementptr i8, ptr %i.fr, i64 8
  %.val.i76 = load ptr, ptr %i.fv, align 8, !tbaa !173
  %i.fw = getelementptr i8, ptr %.val.i76, i64 168
  %.val48.i = load i64, ptr %i.fw, align 8, !tbaa !178
  %i.fx = and i64 %.val48.i, 268435456
  %.not40.i = icmp eq i64 %i.fx, 0
  br i1 %.not40.i, label %.split29.us.i, label %bb.bx

.split29.us.i:                                    ; preds = %bb.bw, %bb.br
  %.us-phi30.i = phi ptr [ %i.ez, %bb.br ], [ %i.fq, %bb.bw ] ; 2 uses
  %.us-phi31.i = phi i64 [ %.019.us.i, %bb.br ], [ %.019.i, %bb.bw ]
  store ptr %.us-phi30.i, ptr %i.k, align 8
  %i.fy = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.fz = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fy, ptr noundef nonnull @.str.133, ptr noundef nonnull %i.n) #28 ; 0 uses
  br label %bb.cg

bb.bx:                                            ; preds = %bb.bw
  %i.ga = call ptr @PyUnicode_AsWideCharString(ptr noundef %i.fr, ptr noundef null) #28 ; 5 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %.loopexit.i78, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gc = call ptr @_PyMem_RawWcsdup(ptr noundef nonnull %i.ga) #28, !noalias !320 ; 3 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %.loopexit10.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ge = shl i64 %.019.i, 3
  %i.gf = add i64 %i.ge, 8
  %i.gg = call ptr @PyMem_RawRealloc(ptr noundef %i.fq, i64 noundef %i.gf) #28, !noalias !320 ; 4 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %.split38.us.i, label %bb.cb

.split38.us.i:                                    ; preds = %bb.bz, %bb.bu
  %.us-phi39.i = phi ptr [ %i.ez, %bb.bu ], [ %i.fq, %bb.bz ]
  %.us-phi40.i = phi i64 [ %.019.us.i, %bb.bu ], [ %.019.i, %bb.bz ]
  %.us-phi41.i = phi ptr [ %i.fi, %bb.bu ], [ %i.gc, %bb.bz ]
  %.us-phi42.i = phi ptr [ %i.fg, %bb.bu ], [ %i.ga, %bb.bz ]
  store ptr %.us-phi39.i, ptr %i.k, align 8
  store i64 %.us-phi40.i, ptr %2, align 8
  call void @PyMem_RawFree(ptr noundef nonnull %.us-phi41.i) #28, !noalias !320
  br label %bb.ca

.loopexit10.i:                                    ; preds = %bb.by, %bb.bt
  %.us-phi34.i = phi ptr [ %i.ez, %bb.bt ], [ %i.fq, %bb.by ]
  %.us-phi35.i = phi i64 [ %.019.us.i, %bb.bt ], [ %.019.i, %bb.by ]
  %.us-phi36.i = phi ptr [ %i.fg, %bb.bt ], [ %i.ga, %bb.by ]
  store ptr %.us-phi34.i, ptr %i.k, align 8
  store i64 %.us-phi35.i, ptr %2, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %.loopexit10.i, %.split38.us.i
  %i.gi = phi ptr [ %.us-phi36.i, %.loopexit10.i ], [ %.us-phi42.i, %.split38.us.i ]
  call void @PyMem_Free(ptr noundef nonnull %i.gi) #28
  %4 = call ptr @PyErr_NoMemory() #28             ; 0 uses
  %.pre.i = load i64, ptr %2, align 8, !tbaa !29
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !30
  br label %bb.cg

bb.cb:                                            ; preds = %bb.bz
  %i.gj = getelementptr [8 x i8], ptr %i.gg, i64 %.019.i
  store ptr %i.gc, ptr %i.gj, align 8, !tbaa !32, !noalias !320
  %i.gk = add nuw nsw i64 %.019.i, 1              ; 2 uses
  call void @PyMem_Free(ptr noundef nonnull %i.ga) #28
  %exitcond93.not.i = icmp eq i64 %i.gk, %i.ev
  br i1 %exitcond93.not.i, label %._crit_edge.i77, label %.lr.ph.split.i, !llvm.loop !317

._crit_edge.i77:                                  ; preds = %bb.cb, %bb.bv
  %.us-phi43.i = phi ptr [ %i.fm, %bb.bv ], [ %i.gg, %bb.cb ] ; 2 uses
  %.us-phi44.i = phi i64 [ %i.et, %bb.bv ], [ %i.ev, %bb.cb ]
  store ptr %.us-phi43.i, ptr %i.k, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge.i77, %.thread.i71, %bb.bq
  %i.gl = phi ptr [ %.us-phi43.i, %._crit_edge.i77 ], [ null, %bb.bq ], [ null, %.thread.i71 ] ; 3 uses
  %i.gm = phi i64 [ %.us-phi44.i, %._crit_edge.i77 ], [ 0, %bb.bq ], [ 0, %.thread.i71 ] ; 4 uses
  store i64 %i.gm, ptr %2, align 8
  %i.gn = call fastcc range(i32 -1, 1) i32 @_PyWideStringList_CopyEx(ptr noundef %i.q, ptr noundef nonnull readonly %2, i1 noundef zeroext false)
  %i.go = icmp slt i32 %i.gn, 0
  br i1 %i.go, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.gp = call ptr @PyErr_NoMemory() #28          ; 0 uses
  br label %bb.cg

bb.ce:                                            ; preds = %bb.cc
  %i.gq = icmp sgt i64 %i.gm, 0
  br i1 %i.gq, label %.lr.ph.split.i.i.i73, label %_PyWideStringList_Clear.exit.i72

.lr.ph.split.i.i.i73:                             ; preds = %bb.ce, %.lr.ph.split.i.i.i73
  %.012.i.i.i74 = phi i64 [ %i.gt, %.lr.ph.split.i.i.i73 ], [ 0, %bb.ce ] ; 2 uses
  %i.gr = getelementptr [8 x i8], ptr %i.gl, i64 %.012.i.i.i74
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !32
  call void @PyMem_RawFree(ptr noundef %i.gs) #28
  %i.gt = add nuw nsw i64 %.012.i.i.i74, 1        ; 2 uses
  %exitcond97.not.i = icmp eq i64 %i.gt, %i.gm
  br i1 %exitcond97.not.i, label %_PyWideStringList_Clear.exit.i72, label %.lr.ph.split.i.i.i73, !llvm.loop !0

_PyWideStringList_Clear.exit.i72:                 ; preds = %.lr.ph.split.i.i.i73, %bb.ce
  call void @PyMem_RawFree(ptr noundef %i.gl) #28
  %i.gu = load i32, ptr %i.ei, align 8, !tbaa !36 ; 2 uses
  %.not.i42.i = icmp sgt i32 %i.gu, -1
  br i1 %.not.i42.i, label %bb.cf, label %config_dict_get_wstrlist.exit.thread98

bb.cf:                                            ; preds = %_PyWideStringList_Clear.exit.i72
  %i.gv = add nsw i32 %i.gu, -1                   ; 2 uses
  store i32 %i.gv, ptr %i.ei, align 8, !tbaa !36
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %config_dict_get_wstrlist.exit, label %config_dict_get_wstrlist.exit.thread98

.loopexit.i78:                                    ; preds = %bb.bx, %bb.bs
  %.us-phi32.i = phi ptr [ %i.ez, %bb.bs ], [ %i.fq, %bb.bx ] ; 2 uses
  %.us-phi33.i = phi i64 [ %.019.us.i, %bb.bs ], [ %.019.i, %bb.bx ]
  store ptr %.us-phi32.i, ptr %i.k, align 8
  br label %bb.cg

bb.cg:                                            ; preds = %.loopexit.i78, %bb.cd, %bb.ca, %.split29.us.i, %.split.us.i
  %i.gx = phi ptr [ %.us-phi32.i, %.loopexit.i78 ], [ %.pre, %bb.ca ], [ %.us-phi30.i, %.split29.us.i ], [ %.us-phi.i, %.split.us.i ], [ %i.gl, %bb.cd ] ; 2 uses
  %i.gy = phi i64 [ %.us-phi33.i, %.loopexit.i78 ], [ %.pre.i, %bb.ca ], [ %.us-phi31.i, %.split29.us.i ], [ %.us-phi27.i, %.split.us.i ], [ %i.gm, %bb.cd ] ; 2 uses
  %i.gz = icmp sgt i64 %i.gy, 0
  br i1 %i.gz, label %.lr.ph.split.i.i55.i, label %_PyWideStringList_Clear.exit57.i

.lr.ph.split.i.i55.i:                             ; preds = %bb.cg, %.lr.ph.split.i.i55.i
  %.012.i.i56.i = phi i64 [ %i.hc, %.lr.ph.split.i.i55.i ], [ 0, %bb.cg ] ; 2 uses
  %i.ha = getelementptr [8 x i8], ptr %i.gx, i64 %.012.i.i56.i
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !32
  call void @PyMem_RawFree(ptr noundef %i.hb) #28
  %i.hc = add nuw nsw i64 %.012.i.i56.i, 1        ; 2 uses
  %exitcond98.not.i = icmp eq i64 %i.hc, %i.gy
  br i1 %exitcond98.not.i, label %_PyWideStringList_Clear.exit57.i, label %.lr.ph.split.i.i55.i, !llvm.loop !0

_PyWideStringList_Clear.exit57.i:                 ; preds = %.lr.ph.split.i.i55.i, %bb.cg
  call void @PyMem_RawFree(ptr noundef %i.gx) #28
  %i.hd = load i32, ptr %i.ei, align 8, !tbaa !36 ; 2 uses
  %.not.i.i75 = icmp sgt i32 %i.hd, -1
  br i1 %.not.i.i75, label %bb.ch, label %config_dict_get_wstrlist.exit.thread95

bb.ch:                                            ; preds = %_PyWideStringList_Clear.exit57.i
  %i.he = add nsw i32 %i.hd, -1                   ; 2 uses
  store i32 %i.he, ptr %i.ei, align 8, !tbaa !36
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %config_dict_get_wstrlist.exit.thread100, label %config_dict_get_wstrlist.exit.thread95

config_dict_get_wstrlist.exit.thread100:          ; preds = %bb.ch
  call void @_Py_Dealloc(ptr noundef nonnull %i.ei) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.critedge58

config_dict_get_wstrlist.exit.thread95:           ; preds = %bb.ch, %_PyWideStringList_Clear.exit57.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.critedge58

config_dict_get_wstrlist.exit.thread98:           ; preds = %_PyWideStringList_Clear.exit.i72, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.critedge59

config_dict_get_wstrlist.exit:                    ; preds = %bb.cf
  call void @_Py_Dealloc(ptr noundef nonnull %i.ei) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.critedge59

bb.ci:                                            ; preds = %bb.c
  unreachable

.critedge59:                                      ; preds = %config_dict_get_wstrlist.exit, %config_dict_get_wstrlist.exit.thread98, %config_dict_get_xoptions.exit, %config_dict_get_xoptions.exit.thread89, %config_dict_get_ulong.exit, %bb.ae, %.critedge, %bb.ag
  %i.hg = getelementptr i8, ptr %.048226, i64 48  ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !170 ; 2 uses
  %.not56 = icmp eq ptr %i.hh, null
  br i1 %.not56, label %bb.cj, label %bb.c, !llvm.loop !318

bb.cj:                                            ; preds = %.critedge59
  %i.hi = load i32, ptr %0, align 8, !tbaa !158
  %.off = add i32 %i.hi, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.hj = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  %i.hk = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.hj, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.9) #28 ; 0 uses
  br label %.critedge58

bb.cl:                                            ; preds = %bb.cj
  %i.hl = getelementptr i8, ptr %0, i64 24
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !180
  %i.hn = icmp ugt i64 %i.hm, 4294967295
  br i1 %i.hn, label %bb.cm, label %.critedge58

bb.cm:                                            ; preds = %bb.cl
  %i.ho = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  %i.hp = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ho, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.10) #28 ; 0 uses
  br label %.critedge58

.critedge58:                                      ; preds = %bb.ad, %bb.ag, %bb.bj, %bb.bk, %Py_DECREF.exit45.i, %bb.ak, %bb.al, %Py_DECREF.exit32.i, %bb.t, %bb.u, %bb.ac, %bb.ab, %bb.aa, %bb.g, %bb.o, %bb.n, %bb.f, %bb.m, %config_dict_get_wstrlist.exit.thread100, %config_dict_get_wstrlist.exit.thread95, %config_dict_get_xoptions.exit.thread91, %config_dict_get_xoptions.exit.thread86, %.thread, %bb.ck, %bb.cm, %bb.af, %bb.cl, %bb.b
  %.7 = phi i32 [ -1, %bb.b ], [ -1, %bb.ck ], [ -1, %bb.cm ], [ -1, %bb.bk ], [ -1, %bb.bj ], [ -1, %bb.af ], [ -1, %config_dict_get_wstrlist.exit.thread100 ], [ -1, %config_dict_get_xoptions.exit.thread91 ], [ -1, %bb.g ], [ 0, %bb.cl ], [ -1, %config_dict_get_wstrlist.exit.thread95 ], [ -1, %.thread ], [ -1, %bb.t ], [ -1, %config_dict_get_xoptions.exit.thread86 ], [ -1, %bb.ak ], [ -1, %bb.m ], [ -1, %bb.f ], [ -1, %bb.n ], [ -1, %bb.o ], [ -1, %bb.aa ], [ -1, %bb.ab ], [ -1, %bb.ac ], [ -1, %bb.u ], [ -1, %Py_DECREF.exit32.i ], [ -1, %bb.al ], [ -1, %Py_DECREF.exit45.i ], [ -1, %bb.ag ], [ -1, %bb.ad ]
  ret i32 %.7
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @config_dict_get_wstr(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.PyStatus, align 8           ; 4 uses
  %5 = alloca %struct.PyStatus, align 8           ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = call i32 @PyDict_GetItemStringRef(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.a) #28
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !24   ; 10 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.f = call ptr @PyErr_Occurred() #28
  %.not.i27 = icmp eq ptr %i.f, null
  br i1 %.not.i27, label %bb.d, label %Py_DECREF.exit24

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  %i.h = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.132, ptr noundef nonnull %1) #28 ; 0 uses
  br label %Py_DECREF.exit24

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.i = icmp eq ptr %i.d, @_Py_NoneStruct
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !325
  call void @_Py_PreInitializeFromConfig(ptr dead_on_unwind nonnull writable sret(%struct.PyStatus) align 8 %5, ptr noundef %2, ptr noundef null) #28, !noalias !325
  %i.j = load i32, ptr %5, align 8, !tbaa !19, !noalias !325 ; 2 uses
  %.not.i28 = icmp eq i32 %i.j, 0
  br i1 %.not.i28, label %bb.g, label %PyConfig_SetString.exit

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %3, align 8, !tbaa !32, !noalias !325
  call void @PyMem_RawFree(ptr noundef %i.k) #28, !noalias !325
  store ptr null, ptr %3, align 8, !tbaa !32, !noalias !325
  br label %PyConfig_SetString.exit

PyConfig_SetString.exit:                          ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !325
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.d, i64 8
  %.val = load ptr, ptr %i.l, align 8, !tbaa !173
  %i.m = getelementptr i8, ptr %.val, i64 168
  %.val26 = load i64, ptr %i.m, align 8, !tbaa !178
  %i.n = and i64 %.val26, 268435456
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.p = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.o, ptr noundef nonnull @.str.133, ptr noundef nonnull %1) #28 ; 0 uses
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.q = call ptr @PyUnicode_AsWideCharString(ptr noundef nonnull %i.d, ptr noundef null) #28 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !326
  call void @_Py_PreInitializeFromConfig(ptr dead_on_unwind nonnull writable sret(%struct.PyStatus) align 8 %4, ptr noundef %2, ptr noundef null) #28, !noalias !326
  %i.s = load i32, ptr %4, align 8, !tbaa !19, !noalias !326 ; 2 uses
  %.not.i30 = icmp eq i32 %i.s, 0
  br i1 %.not.i30, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.t = call ptr @_PyMem_RawWcsdup(ptr noundef nonnull %i.q) #28, !noalias !326 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = load ptr, ptr %3, align 8, !tbaa !32, !noalias !326
  call void @PyMem_RawFree(ptr noundef %i.v) #28, !noalias !326
  store ptr %i.t, ptr %3, align 8, !tbaa !32, !noalias !326
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.m, %bb.l
  %.sroa.0.035 = phi i32 [ 0, %bb.m ], [ 1, %bb.l ], [ %i.s, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !326
  call void @PyMem_Free(ptr noundef nonnull %i.q) #28
  br label %bb.n

bb.n:                                             ; preds = %.thread, %PyConfig_SetString.exit
  %.sroa.0.1 = phi i32 [ %i.j, %PyConfig_SetString.exit ], [ %.sroa.0.035, %.thread ]
  %.not22 = icmp eq i32 %.sroa.0.1, 0
  br i1 %.not22, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = call ptr @PyErr_NoMemory() #28           ; 0 uses
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.x = load i32, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %.not.i23 = icmp sgt i32 %i.x, -1
  br i1 %.not.i23, label %bb.q, label %Py_DECREF.exit24

bb.q:                                             ; preds = %bb.p
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.d, align 8, !tbaa !36
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.r, label %Py_DECREF.exit24

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.d) #28
  br label %Py_DECREF.exit24

bb.s:                                             ; preds = %bb.j, %bb.o, %bb.i
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !36  ; 2 uses
  %.not.i = icmp sgt i32 %i.aa, -1
  br i1 %.not.i, label %bb.t, label %Py_DECREF.exit24
end_hunk_1
