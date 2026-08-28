Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/stringio?download=true
inline.NumInlined: 81
inline.NumDeleted: 38
begin_hunk_0_@_io_StringIO___init__:bb.a
    i8 10, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %.079.ph.i, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !43
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %.thread120.i

.thread120.i:                                     ; preds = %bb.l, %bb.k, %bb.j, %.thread50
  %i.aj = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !48
  %i.ak = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aj, ptr noundef nonnull @.str.42, ptr noundef %.04954) #6 ; 0 uses
  br label %_io_StringIO___init___impl.exit

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %.thread50, %bb.e
  %i.al = phi i1 [ false, %.thread50 ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ true, %bb.e ]
  %.148 = phi ptr [ %.14755, %.thread50 ], [ %.14755, %bb.l ], [ %.14755, %bb.k ], [ %.14755, %bb.j ], [ %i.n, %bb.e ] ; 5 uses
  %.079115.i = phi ptr [ %.079.ph.i, %.thread50 ], [ %.079.ph.i, %bb.l ], [ %.079.ph.i, %bb.k ], [ %.079.ph.i, %bb.j ], [ null, %bb.e ] ; 3 uses
  %i.am = icmp ne ptr %.148, null
  %i.an = icmp ne ptr %.148, @_Py_NoneStruct
  %or.cond.i = and i1 %i.am, %i.an                ; 2 uses
  br i1 %or.cond.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr i8, ptr %.148, i64 8
  %.val104.i = load ptr, ptr %i.ao, align 8, !tbaa !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %.val104.i, i64 168
  %.val107.i = load i64, ptr %i.ap, align 8, !tbaa !57
  %i.aq = and i64 %.val107.i, 268435456
  %.not91.i = icmp eq i64 %i.aq, 0
  br i1 %.not91.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !48
  %i.as = getelementptr i8, ptr %.val104.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58
  %i.au = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ar, ptr noundef nonnull @.str.43, ptr noundef %i.at) #6 ; 0 uses
  br label %_io_StringIO___init___impl.exit

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.av = getelementptr i8, ptr %0, i64 64        ; 2 uses
  store i8 0, ptr %i.av, align 8, !tbaa !27
  %i.aw = getelementptr i8, ptr %0, i64 56        ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33
  call void @PyUnicodeWriter_Discard(ptr noundef %i.ax) #6
  store ptr null, ptr %i.aw, align 8, !tbaa !33
  %i.ay = getelementptr i8, ptr %0, i64 80        ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !48 ; 4 uses
  %.not92.i = icmp eq ptr %i.az, null
  br i1 %.not92.i, label %Py_DECREF.exit100.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.ay, align 8, !tbaa !48
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !43 ; 2 uses
  %.not.i99.i = icmp sgt i32 %i.ba, -1
  br i1 %.not.i99.i, label %bb.r, label %Py_DECREF.exit100.i

bb.r:                                             ; preds = %bb.q
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !43
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.s, label %Py_DECREF.exit100.i

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.az) #6
  br label %Py_DECREF.exit100.i

Py_DECREF.exit100.i:                              ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.bd = getelementptr i8, ptr %0, i64 88        ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !48 ; 4 uses
  %.not93.i = icmp eq ptr %i.be, null
  br i1 %.not93.i, label %Py_DECREF.exit98.i, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit100.i
  store ptr null, ptr %i.bd, align 8, !tbaa !48
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !43 ; 2 uses
  %.not.i97.i = icmp sgt i32 %i.bf, -1
  br i1 %.not.i97.i, label %bb.u, label %Py_DECREF.exit98.i

bb.u:                                             ; preds = %bb.t
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !43
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.v, label %Py_DECREF.exit98.i

bb.v:                                             ; preds = %bb.u
  call void @_Py_Dealloc(ptr noundef nonnull %i.be) #6
  br label %Py_DECREF.exit98.i

Py_DECREF.exit98.i:                               ; preds = %bb.v, %bb.u, %bb.t, %Py_DECREF.exit100.i
  %i.bi = getelementptr i8, ptr %0, i64 72        ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !48 ; 4 uses
  %.not94.i = icmp eq ptr %i.bj, null
  br i1 %.not94.i, label %Py_DECREF.exit.i, label %bb.w

bb.w:                                             ; preds = %Py_DECREF.exit98.i
  store ptr null, ptr %i.bi, align 8, !tbaa !48
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !43 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bk, -1
  br i1 %.not.i.i, label %bb.x, label %Py_DECREF.exit.i

bb.x:                                             ; preds = %bb.w
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !43
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.y, label %Py_DECREF.exit.i

bb.y:                                             ; preds = %bb.x
  call void @_Py_Dealloc(ptr noundef nonnull %i.bj) #6
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.y, %bb.x, %bb.w, %Py_DECREF.exit98.i
  br i1 %i.al, label %.thread122.i, label %bb.z

.thread122.i:                                     ; preds = %Py_DECREF.exit.i
  %i.bn = getelementptr i8, ptr %0, i64 66        ; 2 uses
  store i8 1, ptr %i.bn, align 2, !tbaa !56
  %i.bo = getelementptr i8, ptr %0, i64 67        ; 2 uses
  store i8 1, ptr %i.bo, align 1, !tbaa !55
  br label %bb.ad

bb.z:                                             ; preds = %Py_DECREF.exit.i
  %i.bp = call ptr @PyUnicode_FromString(ptr noundef nonnull %.079115.i) #6 ; 5 uses
  store ptr %i.bp, ptr %i.ay, align 8, !tbaa !44
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_io_StringIO___init___impl.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = load i8, ptr %.079115.i, align 1, !tbaa !43
  %i.bs = icmp eq i8 %i.br, 0
  %i.bt = zext i1 %i.bs to i8
  %i.bu = getelementptr i8, ptr %0, i64 66        ; 3 uses
  store i8 %i.bt, ptr %i.bu, align 2, !tbaa !56
  %i.bv = getelementptr i8, ptr %0, i64 67        ; 3 uses
  store i8 0, ptr %i.bv, align 1, !tbaa !55
  %i.bw = load i8, ptr %.079115.i, align 1, !tbaa !43
  %i.bx = icmp eq i8 %i.bw, 13
  br i1 %i.bx, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.by = load i32, ptr %i.bp, align 8, !tbaa !43 ; 2 uses
  %i.bz = icmp ugt i32 %i.by, -1073741825
  br i1 %i.bz, label %_Py_NewRef.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ca = add nuw i32 %i.by, 1
  store i32 %i.ca, ptr %i.bp, align 8, !tbaa !43
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.ac, %bb.ab
  store ptr %i.bp, ptr %i.bd, align 8, !tbaa !45
  br label %bb.ad

bb.ad:                                            ; preds = %_Py_NewRef.exit.i, %bb.aa, %.thread122.i
  %i.cb = phi ptr [ %i.bo, %.thread122.i ], [ %i.bv, %_Py_NewRef.exit.i ], [ %i.bv, %bb.aa ]
  %i.cc = phi ptr [ %i.bn, %.thread122.i ], [ %i.bu, %_Py_NewRef.exit.i ], [ %i.bu, %bb.aa ]
  %i.cd = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.cd, align 8, !tbaa !11
  %i.ce = call ptr @PyType_GetModuleByDef(ptr noundef %.val.i, ptr noundef nonnull @_PyIO_Module) #6
  %i.cf = getelementptr i8, ptr %i.ce, i64 24
  %.val.i.i = load ptr, ptr %i.cf, align 8, !tbaa !67 ; 2 uses
  %i.cg = load i8, ptr %i.cc, align 2, !tbaa !56
  %.not95.i = icmp eq i8 %i.cg, 0
  br i1 %.not95.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ch = getelementptr i8, ptr %.val.i.i, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !70
  %i.cj = load i8, ptr %i.cb, align 1, !tbaa !55
  %.not96.i = icmp eq i8 %i.cj, 0
  %i.ck = select i1 %.not96.i, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  %i.cl = call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr noundef %i.ci, ptr noundef nonnull @_Py_NoneStruct, ptr noundef nonnull %i.ck, ptr noundef null) #6 ; 2 uses
  store ptr %i.cl, ptr %i.bi, align 8, !tbaa !46
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_io_StringIO___init___impl.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cn = getelementptr i8, ptr %0, i64 32
  store i64 0, ptr %i.cn, align 8, !tbaa !54
  br i1 %or.cond.i, label %bb.ag, label %.critedge.i

bb.ag:                                            ; preds = %bb.af
  %i.co = call i64 @PyUnicode_GetLength(ptr noundef nonnull %.148) #6
  %i.cp = icmp sgt i64 %i.co, 0
  br i1 %i.cp, label %bb.ah, label %.critedge.i

bb.ah:                                            ; preds = %bb.ag
  %i.cq = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !71 ; 3 uses
  %i.cs = icmp ugt i64 %i.cr, 3
  br i1 %i.cs, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ct = icmp samesign ugt i64 %i.cr, 1
  br i1 %i.ct, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cu = uitofp nneg i64 %i.cr to double
  %i.cv = fmul nnan double %i.cu, 1.125000e+00
  %i.cw = fcmp ult double %i.cv, 1.000000e+00
  %spec.select.i = select i1 %i.cw, i64 2, i64 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %.0.i.i = phi i64 [ %spec.select.i, %bb.aj ], [ 2, %bb.ah ] ; 2 uses
  %i.cx = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !32
  %i.cz = shl nuw nsw i64 %.0.i.i, 2
  %i.da = call ptr @PyMem_Realloc(ptr noundef %i.cy, i64 noundef %i.cz) #6 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %resize_buffer.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i64 %.0.i.i, ptr %i.cq, align 8, !tbaa !71
  store ptr %i.da, ptr %i.cx, align 8, !tbaa !32
  br label %bb.am

resize_buffer.exit.i:                             ; preds = %bb.ak
  %i.dc = call ptr @PyErr_NoMemory() #6           ; 0 uses
  br label %_io_StringIO___init___impl.exit

bb.am:                                            ; preds = %bb.al, %bb.ai
  %i.dd = getelementptr i8, ptr %0, i64 48
  store i32 1, ptr %i.dd, align 8, !tbaa !72
  %i.de = getelementptr i8, ptr %0, i64 24
  store i64 0, ptr %i.de, align 8, !tbaa !53
  %i.df = call fastcc i64 @write_str(ptr noundef nonnull %0, ptr noundef nonnull %.148)
  %i.dg = icmp slt i64 %i.df, 0
  br i1 %i.dg, label %_io_StringIO___init___impl.exit, label %bb.at

.critedge.i:                                      ; preds = %bb.ag, %bb.af
  %i.dh = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !71 ; 3 uses
  %i.dj = icmp ugt i64 %i.di, 3
  br i1 %i.dj, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.critedge.i
  %i.dk = icmp samesign ugt i64 %i.di, 1
  br i1 %i.dk, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dl = uitofp nneg i64 %i.di to double
  %i.dm = fmul nnan double %i.dl, 1.125000e+00
  %i.dn = fcmp ult double %i.dm, 1.000000e+00
  %spec.select125.i = select i1 %i.dn, i64 2, i64 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.critedge.i
  %.0.i109.i = phi i64 [ %spec.select125.i, %bb.ao ], [ 2, %.critedge.i ] ; 2 uses
  %i.do = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !32
  %i.dq = shl nuw nsw i64 %.0.i109.i, 2
  %i.dr = call ptr @PyMem_Realloc(ptr noundef %i.dp, i64 noundef %i.dq) #6 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %resize_buffer.exit111.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i64 %.0.i109.i, ptr %i.dh, align 8, !tbaa !71
  store ptr %i.dr, ptr %i.do, align 8, !tbaa !32
  br label %bb.ar

resize_buffer.exit111.i:                          ; preds = %bb.ap
  %i.dt = call ptr @PyErr_NoMemory() #6           ; 0 uses
  br label %_io_StringIO___init___impl.exit

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %i.du = call ptr @PyUnicodeWriter_Create(i64 noundef 0) #6 ; 2 uses
  store ptr %i.du, ptr %i.aw, align 8, !tbaa !33
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_io_StringIO___init___impl.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dw = getelementptr i8, ptr %0, i64 48
  store i32 2, ptr %i.dw, align 8, !tbaa !72
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.am
  %i.dx = getelementptr i8, ptr %0, i64 24
  store i64 0, ptr %i.dx, align 8, !tbaa !53
  %i.dy = getelementptr i8, ptr %0, i64 112
  store ptr %.val.i.i, ptr %i.dy, align 8, !tbaa !50
  %i.dz = getelementptr i8, ptr %0, i64 65
  store i8 0, ptr %i.dz, align 1, !tbaa !49
  store i8 1, ptr %i.av, align 8, !tbaa !27
  br label %_io_StringIO___init___impl.exit

_io_StringIO___init___impl.exit:                  ; preds = %bb.at, %bb.ar, %resize_buffer.exit111.i, %bb.am, %resize_buffer.exit.i, %bb.ae, %bb.z, %bb.o, %.thread120.i, %bb.i, %bb.h, %bb.c
  %.029 = phi i32 [ -1, %bb.c ], [ -1, %bb.i ], [ -1, %bb.z ], [ -1, %bb.o ], [ -1, %.thread120.i ], [ -1, %bb.h ], [ -1, %resize_buffer.exit111.i ], [ -1, %bb.ae ], [ -1, %resize_buffer.exit.i ], [ 0, %bb.at ], [ -1, %bb.am ], [ -1, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.029
}

; Function Attrs: nounwind uwtable
define internal ptr @stringio_new(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.c = tail call ptr %i.b(ptr noundef %0, i64 noundef 0) #6 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyMem_Malloc(i64 noundef 0) #6 ; 2 uses
  %i.f = getelementptr i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !32
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %.not.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.c, align 8, !tbaa !43
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.c, %bb.d, %bb.e
  %i.k = tail call ptr @PyErr_NoMemory() #6
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %Py_DECREF.exit
  %.0 = phi ptr [ null, %bb.a ], [ %i.k, %Py_DECREF.exit ], [ %i.c, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #2

declare void @PyUnicodeWriter_Discard(ptr noundef) local_unnamed_addr #2

declare void @PyObject_ClearWeakRefs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #3

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #2

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @realize(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !72
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %Py_DECREF.exit16, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 8, !tbaa !72
  %i.d = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = tail call ptr @PyUnicodeWriter_Finish(ptr noundef %i.e) #6 ; 9 uses
  store ptr null, ptr %i.d, align 8, !tbaa !33
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %Py_DECREF.exit16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %.val = load i64, ptr %i.h, align 8, !tbaa !59  ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !71   ; 3 uses
  %i.k = add i64 %.val, 1                         ; 7 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i64 %i.j, 1
  %i.n = icmp samesign ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i64 %.val, 2
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.p = icmp ult i64 %i.k, %i.j
  br i1 %i.p, label %.resize_buffer.exit_crit_edge, label %bb.g

.resize_buffer.exit_crit_edge:                    ; preds = %bb.f
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %resize_buffer.exit

bb.g:                                             ; preds = %bb.f
  %i.q = uitofp nneg i64 %i.k to double
  %i.r = uitofp nneg i64 %i.j to double
  %i.s = fmul nnan double %i.r, 1.125000e+00
  %i.t = fcmp ult double %i.s, %i.q
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = lshr i64 %i.k, 3
  %i.v = add nuw i64 %i.u, %i.k
  %i.w = icmp samesign ult i64 %i.k, 9
  %i.x = select i1 %i.w, i64 3, i64 6
  %i.y = add nuw i64 %i.v, %i.x
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.z = add i64 %.val, 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e
  %.0.i = phi i64 [ %i.o, %bb.e ], [ %i.y, %bb.h ], [ %i.z, %bb.i ] ; 3 uses
  %i.aa = icmp ugt i64 %.0.i, 4611686018427387903
  br i1 %i.aa, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32
  %i.ad = shl nuw i64 %.0.i, 2
  %i.ae = tail call ptr @PyMem_Realloc(ptr noundef %i.ac, i64 noundef %i.ad) #6 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  store i64 %.0.i, ptr %i.i, align 8, !tbaa !71
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !32
  br label %resize_buffer.exit

bb.n:                                             ; preds = %bb.j, %bb.c
  %i.ah = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !48
  tail call void @PyErr_SetString(ptr noundef %i.ah, ptr noundef nonnull @.str.5) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.ai = load i32, ptr %i.f, align 8, !tbaa !43  ; 2 uses
  %.not.i15 = icmp sgt i32 %i.ai, -1
  br i1 %.not.i15, label %bb.p, label %Py_DECREF.exit16

bb.p:                                             ; preds = %bb.o
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.f, align 8, !tbaa !43
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.q, label %Py_DECREF.exit16

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #6
  br label %Py_DECREF.exit16

resize_buffer.exit:                               ; preds = %.resize_buffer.exit_crit_edge, %bb.m
  %i.al = phi ptr [ %.pre, %.resize_buffer.exit_crit_edge ], [ %i.ae, %bb.m ]
  %i.am = tail call ptr @PyUnicode_AsUCS4(ptr noundef nonnull %i.f, ptr noundef %i.al, i64 noundef %.val, i32 noundef 0) #6
  %.not = icmp eq ptr %i.am, null
  %i.an = load i32, ptr %i.f, align 8, !tbaa !43  ; 2 uses
  %.not.i = icmp sgt i32 %i.an, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %resize_buffer.exit
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.f, align 8, !tbaa !43
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %resize_buffer.exit, %bb.r, %bb.s
  %. = sext i1 %.not to i32
  br label %Py_DECREF.exit16

Py_DECREF.exit16:                                 ; preds = %bb.q, %bb.p, %bb.o, %Py_DECREF.exit, %bb.b, %bb.a
  %.0 = phi i32 [ %., %Py_DECREF.exit ], [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %bb.o ], [ -1, %bb.p ], [ -1, %bb.q ]
  ret i32 %.0
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyUnicodeWriter_Finish(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @resize_buffer(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !71   ; 3 uses
  %i.c = add i64 %1, 1                            ; 7 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.b, 1
  %i.f = icmp samesign ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i64 %1, 2
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.h = icmp ult i64 %i.c, %i.b
  br i1 %i.h, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = uitofp nneg i64 %i.c to double
  %i.j = uitofp nneg i64 %i.b to double
  %i.k = fmul nnan double %i.j, 1.125000e+00
  %i.l = fcmp ult double %i.k, %i.i
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = lshr i64 %i.c, 3
  %i.n = add nuw i64 %i.m, %i.c
  %i.o = icmp samesign ult i64 %i.c, 9
  %i.p = select i1 %i.o, i64 3, i64 6
  %i.q = add nuw i64 %i.n, %i.p
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = add i64 %1, 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c
  %.0 = phi i64 [ %i.g, %bb.c ], [ %i.q, %bb.f ], [ %i.r, %bb.g ] ; 3 uses
  %i.s = icmp ugt i64 %.0, 4611686018427387903
  br i1 %i.s, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !32
  %i.v = shl nuw i64 %.0, 2
  %i.w = tail call ptr @PyMem_Realloc(ptr noundef %i.u, i64 noundef %i.v) #6 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  store i64 %.0, ptr %i.a, align 8, !tbaa !71
  store ptr %i.w, ptr %i.t, align 8, !tbaa !32
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.a
  %i.z = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !48
  tail call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.5) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.l, %bb.k, %bb.j
  %.022 = phi i32 [ -1, %bb.l ], [ -1, %bb.j ], [ 0, %bb.k ], [ 0, %bb.d ]
  ret i32 %.022
}

declare ptr @PyUnicode_AsUCS4(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyErr_NoMemory() local_unnamed_addr #2

declare ptr @Py_GetConstant(i32 noundef) local_unnamed_addr #2

declare i64 @_PyIO_find_line_ending(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_FromKindAndData(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyObject_VectorcallMethod(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef ptr @_io_StringIO_close(ptr nofree noundef captures(none) initializes((65, 66)) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 65
  store i8 1, ptr %i.a, align 1, !tbaa !49
  %i.b = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !71   ; 3 uses
  %i.d = icmp ugt i64 %i.c, 3
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i64 %i.c, 1
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = uitofp nneg i64 %i.c to double
  %i.g = fmul nnan double %i.f, 1.125000e+00
  %i.h = fcmp ult double %i.g, 1.000000e+00
  %spec.select.i = select i1 %i.h, i64 2, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0.i.i = phi i64 [ %spec.select.i, %bb.c ], [ 2, %bb.a ] ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.k = shl nuw nsw i64 %.0.i.i, 2
  %i.l = tail call ptr @PyMem_Realloc(ptr noundef %i.j, i64 noundef %i.k) #6 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %resize_buffer.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.0.i.i, ptr %i.b, align 8, !tbaa !71
  store ptr %i.l, ptr %i.i, align 8, !tbaa !32
  br label %bb.f

resize_buffer.exit.i:                             ; preds = %bb.d
  %i.n = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %_io_StringIO_close_impl.exit

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.o = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33
  tail call void @PyUnicodeWriter_Discard(ptr noundef %i.p) #6
  store ptr null, ptr %i.o, align 8, !tbaa !33
  %i.q = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48   ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %Py_DECREF.exit28.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.q, align 8, !tbaa !48
  %i.s = load i32, ptr %i.r, align 8, !tbaa !43   ; 2 uses
  %.not.i27.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i27.i, label %bb.h, label %Py_DECREF.exit28.i

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.r, align 8, !tbaa !43
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.i, label %Py_DECREF.exit28.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #6
  br label %Py_DECREF.exit28.i

Py_DECREF.exit28.i:                               ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.v = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48   ; 4 uses
  %.not23.i = icmp eq ptr %i.w, null
  br i1 %.not23.i, label %Py_DECREF.exit26.i, label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit28.i
  store ptr null, ptr %i.v, align 8, !tbaa !48
  %i.x = load i32, ptr %i.w, align 8, !tbaa !43   ; 2 uses
  %.not.i25.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i25.i, label %bb.k, label %Py_DECREF.exit26.i

bb.k:                                             ; preds = %bb.j
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.w, align 8, !tbaa !43
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.l, label %Py_DECREF.exit26.i

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.w) #6
  br label %Py_DECREF.exit26.i

Py_DECREF.exit26.i:                               ; preds = %bb.l, %bb.k, %bb.j, %Py_DECREF.exit28.i
  %i.aa = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48 ; 4 uses
  %.not24.i = icmp eq ptr %i.ab, null
  br i1 %.not24.i, label %_io_StringIO_close_impl.exit, label %bb.m

bb.m:                                             ; preds = %Py_DECREF.exit26.i
  store ptr null, ptr %i.aa, align 8, !tbaa !48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !43 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i, label %bb.n, label %_io_StringIO_close_impl.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !43
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.o, label %_io_StringIO_close_impl.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ab) #6
  br label %_io_StringIO_close_impl.exit

_io_StringIO_close_impl.exit:                     ; preds = %resize_buffer.exit.i, %Py_DECREF.exit26.i, %bb.m, %bb.n, %bb.o
  %.0.i = phi ptr [ null, %resize_buffer.exit.i ], [ @_Py_NoneStruct, %Py_DECREF.exit26.i ], [ @_Py_NoneStruct, %bb.m ], [ @_Py_NoneStruct, %bb.n ], [ @_Py_NoneStruct, %bb.o ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_StringIO_getvalue(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !27
  %i.c = icmp slt i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !48
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.2) #6
  br label %_io_StringIO_getvalue_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 65
  %i.f = load i8, ptr %i.e, align 1, !tbaa !49
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !48
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.3) #6
  br label %_io_StringIO_getvalue_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !72
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = tail call fastcc ptr @make_intermediate(ptr noundef nonnull %0)
  br label %_io_StringIO_getvalue_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32
  %i.n = getelementptr i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !54
  %i.p = tail call ptr @PyUnicode_FromKindAndData(i32 noundef 4, ptr noundef %i.m, i64 noundef %i.o) #6
  br label %_io_StringIO_getvalue_impl.exit

_io_StringIO_getvalue_impl.exit:                  ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.k, %bb.f ], [ %i.p, %bb.g ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_StringIO_read(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i64 -1, ptr %i.a, align 8, !tbaa !74
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.8, i64 noundef %2, i64 noundef 0, i64 noundef 1) #6
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_io_StringIO_read_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = icmp slt i64 %2, 1
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %1, align 8, !tbaa !48
  %i.e = call i32 @_Py_convert_optional_to_ssize_t(ptr noundef %i.d, ptr noundef nonnull %i.a) #6
  %.not7 = icmp eq i32 %i.e, 0
  br i1 %.not7, label %_io_StringIO_read_impl.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i64, ptr %i.a, align 8, !tbaa !74
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.f = phi i64 [ %.pre, %._crit_edge ], [ -1, %bb.c ] ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 64
  %i.h = load i8, ptr %i.g, align 8, !tbaa !27
  %i.i = icmp slt i8 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !48
  call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.2) #6
  br label %_io_StringIO_read_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %0, i64 65
  %i.l = load i8, ptr %i.k, align 1, !tbaa !49
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !48
  call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.3) #6
  br label %_io_StringIO_read_impl.exit

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !54
  %i.p = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !53   ; 2 uses
  %i.r = sub i64 %i.o, %i.q                       ; 3 uses
  %i.s = icmp slt i64 %i.f, 0
  %i.t = icmp sgt i64 %i.f, %i.r
  %or.cond.i = select i1 %i.s, i1 true, i1 %i.t
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.r, i64 0)
  %.024.i = select i1 %or.cond.i, i64 %spec.store.select.i, i64 %i.f ; 3 uses
end_hunk_0
