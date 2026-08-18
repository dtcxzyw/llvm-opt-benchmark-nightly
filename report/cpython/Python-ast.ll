inline.NumInlined: 1007
inline.NumDeleted: 32
begin_hunk_0_@PyAST_obj2mod:bb.a
  br i1 %or.cond.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = call ptr @PyErr_NoMemory() #9           ; 0 uses
  br label %Py_DECREF.exit255.thread334.i

bb.m:                                             ; preds = %bb.k
  %.not.not.i.i = icmp eq i64 %.val285.i, 0       ; 2 uses
  %i.bl = shl i64 %.val285.i, 3
  %i.bm = add i64 %i.bl, -8
  %i.bn = select i1 %.not.not.i.i, i64 0, i64 %i.bm ; 2 uses
  %i.bo = icmp ugt i64 %i.bn, -25
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = call ptr @PyErr_NoMemory() #9           ; 0 uses
  br label %Py_DECREF.exit255.thread334.i

bb.o:                                             ; preds = %bb.m
  %i.bq = add nuw i64 %i.bn, 24                   ; 2 uses
  %i.br = call ptr @_PyArena_Malloc(ptr noundef %1, i64 noundef %i.bq) #9 ; 6 uses
  %.not20.i.i = icmp eq ptr %i.br, null
  br i1 %.not20.i.i, label %bb.p, label %_Py_asdl_stmt_seq_new.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bs = call ptr @PyErr_NoMemory() #9           ; 0 uses
  br label %Py_DECREF.exit255.thread334.i

_Py_asdl_stmt_seq_new.exit.i:                     ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, i8 0, i64 %i.bq, i1 false)
  store i64 %.val285.i, ptr %i.br, align 8, !tbaa !18
  %i.bt = getelementptr i8, ptr %i.br, i64 16     ; 2 uses
  %i.bu = getelementptr i8, ptr %i.br, i64 8
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !22
  %.pre401.i = load ptr, ptr %i.c, align 8, !tbaa !11 ; 3 uses
  br i1 %.not.not.i.i, label %._crit_edge389.i, label %.lr.ph388.i

.lr.ph388.i:                                      ; preds = %_Py_asdl_stmt_seq_new.exit.i
  %i.bv = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.bw = call ptr @llvm.frameaddress.p0(i32 0)
  %i.bx = ptrtoint ptr %i.bw to i64               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.w, %.lr.ph388.i
  %i.by = phi ptr [ %.pre401.i, %.lr.ph388.i ], [ %i.cq, %bb.w ]
  %.0176387.i = phi i64 [ 0, %.lr.ph388.i ], [ %i.cv, %bb.w ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.bz = getelementptr i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !111
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %.0176387.i
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !11 ; 6 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !14 ; 2 uses
  %i.ce = icmp ugt i32 %i.cd, -1073741825
  br i1 %i.ce, label %_Py_NewRef.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = add nuw i32 %i.cd, 1
  store i32 %i.cf, ptr %i.cc, align 8, !tbaa !14
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.r, %bb.q
  %i.cg = load ptr, ptr %i.bv, align 8, !tbaa !136 ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 952
  %.val.i.i.i = load i64, ptr %i.ch, align 8, !tbaa !138 ; 2 uses
  %i.ci = icmp ule i64 %.val.i.i.i, %i.bx
  %i.cj = add i64 %.val.i.i.i, -32768
  %i.ck = icmp ugt i64 %i.cj, %i.bx
  %narrow.i.not.i.i.i = or i1 %i.ci, %i.ck
  br i1 %narrow.i.not.i.i.i, label %_Py_EnterRecursiveCall.exit.thread.i, label %_Py_EnterRecursiveCall.exit.i

_Py_EnterRecursiveCall.exit.i:                    ; preds = %_Py_NewRef.exit.i
  %i.cl = call i32 @_Py_CheckRecursiveCall(ptr noundef nonnull %i.cg, ptr noundef nonnull @.str.417) #9
  %.not381.i = icmp eq i32 %i.cl, 0
  br i1 %.not381.i, label %_Py_EnterRecursiveCall.exit.thread.i, label %.thread.i

_Py_EnterRecursiveCall.exit.thread.i:             ; preds = %_Py_EnterRecursiveCall.exit.i, %_Py_NewRef.exit.i
  %i.cm = call fastcc i32 @obj2ast_stmt(ptr noundef nonnull %i.n, ptr noundef nonnull %i.cc, ptr noundef %i.d, ptr noundef %1)
  %i.cn = load i32, ptr %i.cc, align 8, !tbaa !14 ; 2 uses
  %.not.i256.i = icmp sgt i32 %i.cn, -1
  br i1 %.not.i256.i, label %bb.s, label %Py_DECREF.exit257.i

bb.s:                                             ; preds = %_Py_EnterRecursiveCall.exit.thread.i
  %i.co = add nsw i32 %i.cn, -1                   ; 2 uses
  store i32 %i.co, ptr %i.cc, align 8, !tbaa !14
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.t, label %Py_DECREF.exit257.i

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.cc) #9
  br label %Py_DECREF.exit257.i

Py_DECREF.exit257.i:                              ; preds = %bb.t, %bb.s, %_Py_EnterRecursiveCall.exit.thread.i
  %.not226.i = icmp eq i32 %i.cm, 0
  br i1 %.not226.i, label %bb.u, label %.thread.i

bb.u:                                             ; preds = %Py_DECREF.exit257.i
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 16
  %.val284.i = load i64, ptr %i.cr, align 8, !tbaa !135
  %.not227.i = icmp eq i64 %.val285.i, %.val284.i
  br i1 %.not227.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.cs, ptr noundef nonnull @.str.418) #9
  br label %.thread.i

.thread.i:                                        ; preds = %Py_DECREF.exit257.i, %_Py_EnterRecursiveCall.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %Py_DECREF.exit255.thread334.i

bb.w:                                             ; preds = %bb.u
  %i.ct = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.cu = getelementptr [8 x i8], ptr %i.bt, i64 %.0176387.i
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.cv = add nuw nsw i64 %.0176387.i, 1          ; 2 uses
  %exitcond397.not.i = icmp eq i64 %i.cv, %.val285.i
  br i1 %exitcond397.not.i, label %._crit_edge389.thread.i, label %bb.q, !llvm.loop !156

._crit_edge389.i:                                 ; preds = %_Py_asdl_stmt_seq_new.exit.i
  %.not224.i = icmp eq ptr %.pre401.i, null
  br i1 %.not224.i, label %bb.z, label %._crit_edge389.thread.i

._crit_edge389.thread.i:                          ; preds = %bb.w, %._crit_edge389.i
  %i.cw = phi ptr [ %.pre401.i, %._crit_edge389.i ], [ %i.cq, %bb.w ] ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !11
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !14 ; 2 uses
  %.not.i254.i = icmp sgt i32 %i.cx, -1
  br i1 %.not.i254.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %._crit_edge389.thread.i
  %i.cy = add nsw i32 %i.cx, -1                   ; 2 uses
  store i32 %i.cy, ptr %i.cw, align 8, !tbaa !14
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_Py_Dealloc(ptr noundef nonnull %i.cw) #9
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge389.thread.i, %._crit_edge389.i
  %i.da = getelementptr i8, ptr %i.m, i64 81936
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !120
  %i.dc = call i32 @PyObject_GetOptionalAttr(ptr noundef %0, ptr noundef %i.db, ptr noundef nonnull %i.c) #9
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %obj2ast_mod.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.de = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dg = call ptr @PyList_New(i64 noundef 0) #9  ; 3 uses
  store ptr %i.dg, ptr %i.c, align 8, !tbaa !11
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %obj2ast_mod.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.di = phi ptr [ %i.dg, %bb.ab ], [ %i.de, %bb.aa ] ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %.val271.i = load ptr, ptr %i.dj, align 8, !tbaa !128 ; 2 uses
  %i.dk = getelementptr i8, ptr %.val271.i, i64 168
  %.val276.i = load i64, ptr %i.dk, align 8, !tbaa !129
  %i.dl = and i64 %.val276.i, 33554432
  %.not228.i = icmp eq i64 %i.dl, 0
  br i1 %.not228.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dm = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.dn = call ptr @_PyType_Name(ptr noundef nonnull %.val271.i) #9
  %i.do = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.dm, ptr noundef nonnull @.str.419, ptr noundef %i.dn) #9 ; 0 uses
  br label %Py_DECREF.exit255.thread334.i

bb.ae:                                            ; preds = %bb.ac
  %i.dp = getelementptr i8, ptr %i.di, i64 16
  %.val283.i = load i64, ptr %i.dp, align 8, !tbaa !135 ; 4 uses
  %i.dq = call ptr @_Py_asdl_type_ignore_seq_new(i64 noundef %.val283.i, ptr noundef %1) ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %Py_DECREF.exit255.thread334.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ae
  %i.ds = icmp sgt i64 %.val283.i, 0
  %.pre402.i = load ptr, ptr %i.c, align 8, !tbaa !11 ; 3 uses
  br i1 %i.ds, label %.lr.ph392.i, label %._crit_edge393.i

.lr.ph392.i:                                      ; preds = %.preheader.i
  %i.dt = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate) ; 2 uses
  %i.du = call ptr @llvm.frameaddress.p0(i32 0)
  %i.dv = ptrtoint ptr %i.du to i64               ; 4 uses
  %i.dw = getelementptr i8, ptr %i.m, i64 81048
  %i.dx = getelementptr i8, ptr %i.m, i64 81664
  %i.dy = getelementptr i8, ptr %i.m, i64 81880
  %i.dz = getelementptr i8, ptr %i.dq, i64 16
  br label %bb.af

bb.af:                                            ; preds = %bb.bi, %.lr.ph392.i
  %i.ea = phi ptr [ %.pre402.i, %.lr.ph392.i ], [ %i.go, %bb.bi ]
  %.0177391.i = phi i64 [ 0, %.lr.ph392.i ], [ %i.gs, %bb.bi ] ; 3 uses
  %.0310390.i = phi ptr [ undef, %.lr.ph392.i ], [ %.4314.i, %bb.bi ] ; 10 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !111
  %i.ed = getelementptr [8 x i8], ptr %i.ec, i64 %.0177391.i
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !11 ; 10 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !14 ; 2 uses
  %i.eg = icmp ugt i32 %i.ef, -1073741825
  br i1 %i.eg, label %_Py_NewRef.exit286.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eh = add nuw i32 %i.ef, 1
  store i32 %i.eh, ptr %i.ee, align 8, !tbaa !14
  br label %_Py_NewRef.exit286.i

_Py_NewRef.exit286.i:                             ; preds = %bb.ag, %bb.af
  %i.ei = load ptr, ptr %i.dt, align 8, !tbaa !136 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 952
  %.val.i.i287.i = load i64, ptr %i.ej, align 8, !tbaa !138 ; 2 uses
  %i.ek = icmp ule i64 %.val.i.i287.i, %i.dv
  %i.el = add i64 %.val.i.i287.i, -32768
  %i.em = icmp ugt i64 %i.el, %i.dv
  %narrow.i.not.i.i288.i = or i1 %i.ek, %i.em
  br i1 %narrow.i.not.i.i288.i, label %_Py_EnterRecursiveCall.exit289.thread.i, label %_Py_EnterRecursiveCall.exit289.i

_Py_EnterRecursiveCall.exit289.i:                 ; preds = %_Py_NewRef.exit286.i
  %i.en = call i32 @_Py_CheckRecursiveCall(ptr noundef nonnull %i.ei, ptr noundef nonnull @.str.417) #9
  %.not380.i = icmp eq i32 %i.en, 0
  br i1 %.not380.i, label %_Py_EnterRecursiveCall.exit289.thread.i, label %Py_DECREF.exit255.thread334.i

_Py_EnterRecursiveCall.exit289.thread.i:          ; preds = %_Py_EnterRecursiveCall.exit289.i, %_Py_NewRef.exit286.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.eo = icmp eq ptr %i.ee, @_Py_NoneStruct
  br i1 %i.eo, label %obj2ast_type_ignore.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_Py_EnterRecursiveCall.exit289.thread.i
  %i.ep = load ptr, ptr %i.dw, align 8, !tbaa !157
  %i.eq = call i32 @PyObject_IsInstance(ptr noundef nonnull %i.ee, ptr noundef %i.ep) #9
  switch i32 %i.eq, label %bb.ai [
    i32 -1, label %obj2ast_type_ignore.exit.i
    i32 0, label %.thread.i.i
  ]

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.er = load ptr, ptr %i.dx, align 8, !tbaa !158
  %i.es = call i32 @PyObject_GetOptionalAttr(ptr noundef nonnull %i.ee, ptr noundef %i.er, ptr noundef nonnull %i.a) #9
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %Py_DECREF.exit48.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %Py_DECREF.exit48.sink.split.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ew = load ptr, ptr %i.dt, align 8, !tbaa !136 ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 952
  %.val.i.i.i.i = load i64, ptr %i.ex, align 8, !tbaa !138 ; 2 uses
  %i.ey = icmp ule i64 %.val.i.i.i.i, %i.dv
  %i.ez = add i64 %.val.i.i.i.i, -32768
  %i.fa = icmp ugt i64 %i.ez, %i.dv
  %narrow.i.not.i.i.i.i = or i1 %i.ey, %i.fa
  br i1 %narrow.i.not.i.i.i.i, label %_Py_EnterRecursiveCall.exit.thread.i.i, label %_Py_EnterRecursiveCall.exit.i.i

_Py_EnterRecursiveCall.exit.i.i:                  ; preds = %bb.ak
  %i.fb = call i32 @_Py_CheckRecursiveCall(ptr noundef nonnull %i.ew, ptr noundef nonnull @.str.645) #9
  %.not.i290.i = icmp eq i32 %i.fb, 0
  br i1 %.not.i290.i, label %_Py_EnterRecursiveCall.exit._Py_EnterRecursiveCall.exit.thread_crit_edge.i.i, label %bb.ba

_Py_EnterRecursiveCall.exit._Py_EnterRecursiveCall.exit.thread_crit_edge.i.i: ; preds = %_Py_EnterRecursiveCall.exit.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !11
  br label %_Py_EnterRecursiveCall.exit.thread.i.i

_Py_EnterRecursiveCall.exit.thread.i.i:           ; preds = %_Py_EnterRecursiveCall.exit._Py_EnterRecursiveCall.exit.thread_crit_edge.i.i, %bb.ak
  %i.fc = phi ptr [ %.pre.i.i, %_Py_EnterRecursiveCall.exit._Py_EnterRecursiveCall.exit.thread_crit_edge.i.i ], [ %i.eu, %bb.ak ] ; 3 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 8
  %.val.i.i291.i = load ptr, ptr %i.fd, align 8, !tbaa !128
  %i.fe = getelementptr i8, ptr %.val.i.i291.i, i64 168
  %.val7.i.i.i = load i64, ptr %i.fe, align 8, !tbaa !129
  %i.ff = and i64 %.val7.i.i.i, 16777216
  %.not.i50.i.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i50.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_Py_EnterRecursiveCall.exit.thread.i.i
  %i.fg = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  %i.fh = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fg, ptr noundef nonnull @.str.561, ptr noundef nonnull %i.fc) #9 ; 0 uses
  br label %bb.ba

bb.am:                                            ; preds = %_Py_EnterRecursiveCall.exit.thread.i.i
  %i.fi = call i32 @PyLong_AsInt(ptr noundef nonnull %i.fc) #9 ; 2 uses
  %i.fj = icmp eq i32 %i.fi, -1
  br i1 %i.fj, label %bb.an, label %obj2ast_int.exit.i.i

bb.an:                                            ; preds = %bb.am
  %i.fk = call ptr @PyErr_Occurred() #9
  %.not6.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not6.i.i.i, label %obj2ast_int.exit.i.i, label %bb.ba

obj2ast_int.exit.i.i:                             ; preds = %bb.an, %bb.am
  %i.fl = load ptr, ptr %i.a, align 8, !tbaa !11  ; 4 uses
  %.not42.i.i = icmp eq ptr %i.fl, null
  br i1 %.not42.i.i, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %obj2ast_int.exit.i.i
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !14 ; 2 uses
  %.not.i47.i.i = icmp sgt i32 %i.fm, -1
  br i1 %.not.i47.i.i, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fn = add nsw i32 %i.fm, -1                   ; 2 uses
  store i32 %i.fn, ptr %i.fl, align 8, !tbaa !14
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @_Py_Dealloc(ptr noundef nonnull %i.fl) #9
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %obj2ast_int.exit.i.i
  %i.fp = load ptr, ptr %i.dy, align 8, !tbaa !159
  %i.fq = call i32 @PyObject_GetOptionalAttr(ptr noundef nonnull %i.ee, ptr noundef %i.fp, ptr noundef nonnull %i.a) #9
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %Py_DECREF.exit48.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fs = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %Py_DECREF.exit48.sink.split.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fu = call fastcc i32 @_Py_EnterRecursiveCall(ptr noundef nonnull @.str.645)
  %.not43.i.i = icmp eq i32 %i.fu, 0
  br i1 %.not43.i.i, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.fv = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.fw = call fastcc i32 @obj2ast_string(ptr noundef %i.fv, ptr noundef %i.b, ptr noundef %1)
  %.not44.i.i = icmp eq i32 %i.fw, 0
  br i1 %.not44.i.i, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.fx = load ptr, ptr %i.a, align 8, !tbaa !11  ; 4 uses
  %.not45.i.i = icmp eq ptr %i.fx, null
  br i1 %.not45.i.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.fy, -1
  br i1 %.not.i.i.i, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.fz = add nsw i32 %i.fy, -1                   ; 2 uses
  store i32 %i.fz, ptr %i.fx, align 8, !tbaa !14
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @_Py_Dealloc(ptr noundef nonnull %i.fx) #9
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av
  %i.gb = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.gc = call ptr @_PyAST_TypeIgnore(i32 noundef %i.fi, ptr noundef %i.gb, ptr noundef %1) ; 2 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %bb.ba, label %Py_DECREF.exit48.i.i

Py_DECREF.exit48.sink.split.i.i:                  ; preds = %bb.as, %bb.aj
  %.str.646.sink.i.i = phi ptr [ @.str.644, %bb.aj ], [ @.str.646, %bb.as ]
  %i.ge = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.ge, ptr noundef nonnull %.str.646.sink.i.i) #9
  br label %Py_DECREF.exit48.i.i

Py_DECREF.exit48.i.i:                             ; preds = %Py_DECREF.exit48.sink.split.i.i, %bb.az, %bb.ar, %bb.ai
  %.3313.i = phi ptr [ %.0310390.i, %bb.ai ], [ %.0310390.i, %Py_DECREF.exit48.sink.split.i.i ], [ %.0310390.i, %bb.ar ], [ %i.gc, %bb.az ]
  %i.gf = phi i1 [ false, %bb.ai ], [ false, %Py_DECREF.exit48.sink.split.i.i ], [ false, %bb.ar ], [ true, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %obj2ast_type_ignore.exit.i

.thread.i.i:                                      ; preds = %bb.ah
  %i.gg = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.gh = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.gg, ptr noundef nonnull @.str.647, ptr noundef nonnull %i.ee) #9 ; 0 uses
  br label %obj2ast_type_ignore.exit.i

bb.ba:                                            ; preds = %bb.az, %bb.au, %bb.at, %bb.an, %bb.al, %_Py_EnterRecursiveCall.exit.i.i
  %.2312.i = phi ptr [ %.0310390.i, %bb.al ], [ null, %bb.az ], [ %.0310390.i, %bb.au ], [ %.0310390.i, %bb.at ], [ %.0310390.i, %bb.an ], [ %.0310390.i, %_Py_EnterRecursiveCall.exit.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %.pre69.i.i = load ptr, ptr %i.a, align 8, !tbaa !11 ; 4 uses
  %.not.i51.i.i = icmp eq ptr %.pre69.i.i, null
  br i1 %.not.i51.i.i, label %obj2ast_type_ignore.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gi = load i32, ptr %.pre69.i.i, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.gi, -1
  br i1 %.not.i.i.i.i, label %bb.bc, label %obj2ast_type_ignore.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.gj = add nsw i32 %i.gi, -1                   ; 2 uses
  store i32 %i.gj, ptr %.pre69.i.i, align 8, !tbaa !14
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.bd, label %obj2ast_type_ignore.exit.i

bb.bd:                                            ; preds = %bb.bc
  call void @_Py_Dealloc(ptr noundef nonnull %.pre69.i.i) #9
  br label %obj2ast_type_ignore.exit.i

obj2ast_type_ignore.exit.i:                       ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %.thread.i.i, %Py_DECREF.exit48.i.i, %bb.ah, %_Py_EnterRecursiveCall.exit289.thread.i
  %.4314.i = phi ptr [ %.0310390.i, %.thread.i.i ], [ %.3313.i, %Py_DECREF.exit48.i.i ], [ %.2312.i, %bb.ba ], [ %.2312.i, %bb.bd ], [ %.2312.i, %bb.bc ], [ %.2312.i, %bb.bb ], [ %.0310390.i, %bb.ah ], [ null, %_Py_EnterRecursiveCall.exit289.thread.i ] ; 2 uses
  %.1.i.i = phi i1 [ false, %.thread.i.i ], [ %i.gf, %Py_DECREF.exit48.i.i ], [ false, %bb.ba ], [ false, %bb.bd ], [ false, %bb.bc ], [ false, %bb.bb ], [ false, %bb.ah ], [ true, %_Py_EnterRecursiveCall.exit289.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.gl = load i32, ptr %i.ee, align 8, !tbaa !14 ; 2 uses
  %.not.i252.i = icmp sgt i32 %i.gl, -1
  br i1 %.not.i252.i, label %bb.be, label %Py_DECREF.exit253.i

bb.be:                                            ; preds = %obj2ast_type_ignore.exit.i
  %i.gm = add nsw i32 %i.gl, -1                   ; 2 uses
  store i32 %i.gm, ptr %i.ee, align 8, !tbaa !14
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.bf, label %Py_DECREF.exit253.i

bb.bf:                                            ; preds = %bb.be
  call void @_Py_Dealloc(ptr noundef nonnull %i.ee) #9
  br label %Py_DECREF.exit253.i

Py_DECREF.exit253.i:                              ; preds = %bb.bf, %bb.be, %obj2ast_type_ignore.exit.i
  br i1 %.1.i.i, label %bb.bg, label %Py_DECREF.exit255.thread334.i

bb.bg:                                            ; preds = %Py_DECREF.exit253.i
  %i.go = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.gp = getelementptr i8, ptr %i.go, i64 16
  %.val282.i = load i64, ptr %i.gp, align 8, !tbaa !135
  %.not232.i = icmp eq i64 %.val283.i, %.val282.i
  br i1 %.not232.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gq = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.gq, ptr noundef nonnull @.str.420) #9
  br label %Py_DECREF.exit255.thread334.i

bb.bi:                                            ; preds = %bb.bg
  %i.gr = getelementptr [8 x i8], ptr %i.dz, i64 %.0177391.i
  store ptr %.4314.i, ptr %i.gr, align 8, !tbaa !160
  %i.gs = add nuw nsw i64 %.0177391.i, 1          ; 2 uses
  %exitcond398.not.i = icmp eq i64 %i.gs, %.val283.i
  br i1 %exitcond398.not.i, label %._crit_edge393.thread.i, label %bb.af, !llvm.loop !162

._crit_edge393.i:                                 ; preds = %.preheader.i
  %.not229.i = icmp eq ptr %.pre402.i, null
  br i1 %.not229.i, label %bb.bl, label %._crit_edge393.thread.i

._crit_edge393.thread.i:                          ; preds = %bb.bi, %._crit_edge393.i
  %i.gt = phi ptr [ %.pre402.i, %._crit_edge393.i ], [ %i.go, %bb.bi ] ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !11
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !14 ; 2 uses
  %.not.i250.i = icmp sgt i32 %i.gu, -1
  br i1 %.not.i250.i, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %._crit_edge393.thread.i
  %i.gv = add nsw i32 %i.gu, -1                   ; 2 uses
  store i32 %i.gv, ptr %i.gt, align 8, !tbaa !14
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @_Py_Dealloc(ptr noundef nonnull %i.gt) #9
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %._crit_edge393.thread.i, %._crit_edge393.i
  %i.gx = call ptr @_PyArena_Malloc(ptr noundef %1, i64 noundef 24) #9 ; 5 uses
  %.not.i293.i = icmp eq ptr %i.gx, null
  br i1 %.not.i293.i, label %Py_DECREF.exit255.thread334.i, label %_PyAST_Module.exit.i

_PyAST_Module.exit.i:                             ; preds = %bb.bl
  store i32 1, ptr %i.gx, align 8, !tbaa !23
  %i.gy = getelementptr i8, ptr %i.gx, i64 8
  store ptr %i.br, ptr %i.gy, align 8, !tbaa !14
  %i.gz = getelementptr i8, ptr %i.gx, i64 16
  store ptr %i.dq, ptr %i.gz, align 8, !tbaa !14
  br label %obj2ast_mod.exit.thread18

bb.bm:                                            ; preds = %bb.e
  %i.ha = getelementptr i8, ptr %i.m, i64 80496
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !121
  %i.hc = tail call i32 @PyObject_IsInstance(ptr noundef %0, ptr noundef %i.hb) #9
  switch i32 %i.hc, label %bb.bn [
    i32 -1, label %obj2ast_mod.exit.thread
    i32 0, label %bb.ci
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.hd = getelementptr i8, ptr %i.m, i64 81280
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !119
  %i.hf = call i32 @PyObject_GetOptionalAttr(ptr noundef %0, ptr noundef %i.he, ptr noundef nonnull %i.c) #9
  %i.hg = icmp slt i32 %i.hf, 0
  br i1 %i.hg, label %obj2ast_mod.exit.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hh = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.hj = call ptr @PyList_New(i64 noundef 0) #9  ; 3 uses
  store ptr %i.hj, ptr %i.c, align 8, !tbaa !11
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %obj2ast_mod.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.hl = phi ptr [ %i.hj, %bb.bp ], [ %i.hh, %bb.bo ] ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 8
  %.val269.i = load ptr, ptr %i.hm, align 8, !tbaa !128 ; 2 uses
  %i.hn = getelementptr i8, ptr %.val269.i, i64 168
  %.val275.i = load i64, ptr %i.hn, align 8, !tbaa !129
  %i.ho = and i64 %.val275.i, 33554432
  %.not218.i = icmp eq i64 %i.ho, 0
  br i1 %.not218.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.hp = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.hq = call ptr @_PyType_Name(ptr noundef nonnull %.val269.i) #9
  %i.hr = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.hp, ptr noundef nonnull @.str.421, ptr noundef %i.hq) #9 ; 0 uses
  br label %Py_DECREF.exit255.thread334.i

bb.bs:                                            ; preds = %bb.bq
  %i.hs = getelementptr i8, ptr %i.hl, i64 16
  %.val281.i = load i64, ptr %i.hs, align 8, !tbaa !135 ; 6 uses
  %or.cond.i294.i = icmp ugt i64 %.val281.i, 2305843009213693952
  br i1 %or.cond.i294.i, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ht = call ptr @PyErr_NoMemory() #9           ; 0 uses
  br label %Py_DECREF.exit255.thread334.i

bb.bu:                                            ; preds = %bb.bs
  %.not.not.i295.i = icmp eq i64 %.val281.i, 0    ; 2 uses
  %i.hu = shl i64 %.val281.i, 3
  %i.hv = add i64 %i.hu, -8
  %i.hw = select i1 %.not.not.i295.i, i64 0, i64 %i.hv ; 2 uses
  %i.hx = icmp ugt i64 %i.hw, -25
  br i1 %i.hx, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.hy = call ptr @PyErr_NoMemory() #9           ; 0 uses
  br label %Py_DECREF.exit255.thread334.i

bb.bw:                                            ; preds = %bb.bu
  %i.hz = add nuw i64 %i.hw, 24                   ; 2 uses
  %i.ia = call ptr @_PyArena_Malloc(ptr noundef %1, i64 noundef %i.hz) #9 ; 6 uses
  %.not20.i296.i = icmp eq ptr %i.ia, null
  br i1 %.not20.i296.i, label %bb.bx, label %_Py_asdl_stmt_seq_new.exit298.i

bb.bx:                                            ; preds = %bb.bw
  %i.ib = call ptr @PyErr_NoMemory() #9           ; 0 uses
  br label %Py_DECREF.exit255.thread334.i

_Py_asdl_stmt_seq_new.exit298.i:                  ; preds = %bb.bw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ia, i8 0, i64 %i.hz, i1 false)
  store i64 %.val281.i, ptr %i.ia, align 8, !tbaa !18
  %i.ic = getelementptr i8, ptr %i.ia, i64 16     ; 2 uses
  %i.id = getelementptr i8, ptr %i.ia, i64 8
  store ptr %i.ic, ptr %i.id, align 8, !tbaa !22
  %.pre400.i = load ptr, ptr %i.c, align 8, !tbaa !11 ; 3 uses
  br i1 %.not.not.i295.i, label %._crit_edge386.i, label %.lr.ph385.i

.lr.ph385.i:                                      ; preds = %_Py_asdl_stmt_seq_new.exit298.i
  %i.ie = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.if = call ptr @llvm.frameaddress.p0(i32 0)
  %i.ig = ptrtoint ptr %i.if to i64               ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.ce, %.lr.ph385.i
  %i.ih = phi ptr [ %.pre400.i, %.lr.ph385.i ], [ %i.iz, %bb.ce ]
  %.0180384.i = phi i64 [ 0, %.lr.ph385.i ], [ %i.je, %bb.ce ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.ii = getelementptr i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !111
  %i.ik = getelementptr [8 x i8], ptr %i.ij, i64 %.0180384.i
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !11 ; 6 uses
  %i.im = load i32, ptr %i.il, align 8, !tbaa !14 ; 2 uses
  %i.in = icmp ugt i32 %i.im, -1073741825
  br i1 %i.in, label %_Py_NewRef.exit299.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.io = add nuw i32 %i.im, 1
  store i32 %i.io, ptr %i.il, align 8, !tbaa !14
  br label %_Py_NewRef.exit299.i

_Py_NewRef.exit299.i:                             ; preds = %bb.bz, %bb.by
  %i.ip = load ptr, ptr %i.ie, align 8, !tbaa !136 ; 2 uses
  %i.iq = getelementptr i8, ptr %i.ip, i64 952
  %.val.i.i300.i = load i64, ptr %i.iq, align 8, !tbaa !138 ; 2 uses
  %i.ir = icmp ule i64 %.val.i.i300.i, %i.ig
  %i.is = add i64 %.val.i.i300.i, -32768
  %i.it = icmp ugt i64 %i.is, %i.ig
  %narrow.i.not.i.i301.i = or i1 %i.ir, %i.it
  br i1 %narrow.i.not.i.i301.i, label %_Py_EnterRecursiveCall.exit302.thread.i, label %_Py_EnterRecursiveCall.exit302.i

_Py_EnterRecursiveCall.exit302.i:                 ; preds = %_Py_NewRef.exit299.i
  %i.iu = call i32 @_Py_CheckRecursiveCall(ptr noundef nonnull %i.ip, ptr noundef nonnull @.str.422) #9
  %.not379.i = icmp eq i32 %i.iu, 0
  br i1 %.not379.i, label %_Py_EnterRecursiveCall.exit302.thread.i, label %.thread341.i

_Py_EnterRecursiveCall.exit302.thread.i:          ; preds = %_Py_EnterRecursiveCall.exit302.i, %_Py_NewRef.exit299.i
  %i.iv = call fastcc i32 @obj2ast_stmt(ptr noundef nonnull %i.n, ptr noundef nonnull %i.il, ptr noundef %i.e, ptr noundef %1)
  %i.iw = load i32, ptr %i.il, align 8, !tbaa !14 ; 2 uses
  %.not.i248.i = icmp sgt i32 %i.iw, -1
  br i1 %.not.i248.i, label %bb.ca, label %Py_DECREF.exit249.i

end_hunk_0
begin_hunk_1_@ast_type_init:bb.a
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102  ; 5 uses
  %i.g = getelementptr i8, ptr %i.f, i64 80024    ; 3 uses
  %i.h = load atomic i8, ptr %i.g seq_cst, align 1
  %i.i = icmp eq i8 %i.h, 4
  br i1 %i.i, label %get_ast_state.exit.thread176, label %_PyOnceFlag_CallOnce.exit.i

_PyOnceFlag_CallOnce.exit.i:                      ; preds = %bb.a
  %i.j = tail call i32 @_PyOnceFlag_CallOnceSlow(ptr noundef nonnull %i.g, ptr noundef nonnull @init_types, ptr noundef nonnull %i.g) #9, !inline_history !104
  %.fr.i = freeze i32 %i.j
  %i.k = icmp slt i32 %.fr.i, 0
  br i1 %i.k, label %get_ast_state.exit.thread, label %get_ast_state.exit.thread176

get_ast_state.exit.thread176:                     ; preds = %bb.a, %_PyOnceFlag_CallOnce.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.l = getelementptr i8, ptr %0, i64 8          ; 8 uses
  %.val161 = load ptr, ptr %i.l, align 8, !tbaa !128
  %i.m = getelementptr i8, ptr %i.f, i64 81184
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !292
  %i.o = tail call ptr @PyObject_GetAttr(ptr noundef %.val161, ptr noundef %i.n) #9 ; 8 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %Py_XDECREF.exit175, label %bb.b

bb.b:                                             ; preds = %get_ast_state.exit.thread176
  %i.q = tail call i64 @PySequence_Size(ptr noundef nonnull %i.o) #9 ; 4 uses
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %Py_XDECREF.exit169.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = tail call ptr @PySet_New(ptr noundef nonnull %i.o) #9 ; 16 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %Py_XDECREF.exit169.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val163 = load i64, ptr %i.u, align 8, !tbaa !135 ; 2 uses
  %i.v = icmp slt i64 %i.q, %.val163
  br i1 %i.v, label %bb.e, label %.preheader249

.preheader249:                                    ; preds = %bb.d
  store i64 0, ptr %i.a, align 8, !tbaa !406
  %i.w = icmp sgt i64 %.val163, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader249
  %i.x = getelementptr i8, ptr %1, i64 32
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %.val160 = load ptr, ptr %i.l, align 8, !tbaa !128
  %i.z = tail call ptr @_PyType_Name(ptr noundef %.val160) #9
  %i.aa = icmp eq i64 %i.q, 1
  %i.ab = select i1 %i.aa, ptr @.str.405, ptr @.str.406
  %i.ac = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.y, ptr noundef nonnull @.str.407, ptr noundef %i.z, i64 noundef %i.q, ptr noundef nonnull %i.ab) #9 ; 0 uses
  br label %Py_XDECREF.exit169.thread

bb.f:                                             ; preds = %.lr.ph, %Py_DECREF.exit150
  %i.ad = phi i64 [ 0, %.lr.ph ], [ %i.ar, %Py_DECREF.exit150 ] ; 2 uses
  %i.ae = tail call ptr @PySequence_GetItem(ptr noundef nonnull %i.o, i64 noundef %i.ad) #9 ; 8 uses
  %.not138 = icmp eq ptr %i.ae, null
  br i1 %.not138, label %Py_XDECREF.exit169.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr [8 x i8], ptr %i.x, i64 %i.ad
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !11
  %i.ah = tail call i32 @PyObject_SetAttr(ptr noundef %0, ptr noundef nonnull %i.ae, ptr noundef %i.ag) #9 ; 3 uses
  %i.ai = tail call i32 @PySet_Discard(ptr noundef nonnull %i.s, ptr noundef nonnull %i.ae) #9
  %i.aj = icmp slt i32 %i.ai, 0
  %i.ak = load i32, ptr %i.ae, align 8, !tbaa !14 ; 3 uses
  %.not.i149 = icmp sgt i32 %i.ak, -1             ; 2 uses
  br i1 %i.aj, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i149, label %bb.i, label %Py_XDECREF.exit169.thread

bb.i:                                             ; preds = %bb.h
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.ae, align 8, !tbaa !14
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %Py_XDECREF.exit169.thread

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #9
  br label %Py_XDECREF.exit169.thread

bb.k:                                             ; preds = %bb.g
  br i1 %.not.i149, label %bb.l, label %Py_DECREF.exit148

bb.l:                                             ; preds = %bb.k
  %i.an = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.an, ptr %i.ae, align 8, !tbaa !14
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.m, label %Py_DECREF.exit148

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #9
  br label %Py_DECREF.exit148

Py_DECREF.exit148:                                ; preds = %bb.k, %bb.l, %bb.m
  %i.ap = icmp slt i32 %i.ah, 0
  br i1 %i.ap, label %Py_XDECREF.exit169.thread, label %Py_DECREF.exit150

Py_DECREF.exit150:                                ; preds = %Py_DECREF.exit148
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !406
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !406
  %.val162 = load i64, ptr %i.u, align 8, !tbaa !135
  %i.as = icmp slt i64 %i.ar, %.val162
  br i1 %i.as, label %bb.f, label %._crit_edge, !llvm.loop !407

._crit_edge:                                      ; preds = %Py_DECREF.exit150, %.preheader249
  %.092.lcssa = phi i32 [ 0, %.preheader249 ], [ %i.ah, %Py_DECREF.exit150 ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  store i64 0, ptr %i.a, align 8, !tbaa !406
  %i.at = call i32 @PyDict_Next(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #9
  %.not131265 = icmp eq i32 %i.at, 0
  br i1 %.not131265, label %.loopexit, label %.lr.ph268

.lr.ph268:                                        ; preds = %bb.n
  %i.au = getelementptr i8, ptr %i.f, i64 81176
  br label %bb.p

bb.o:                                             ; preds = %bb.w
  %i.av = call i32 @PyDict_Next(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #9
  %.not131 = icmp eq i32 %i.av, 0
  br i1 %.not131, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.lr.ph268, %bb.o
  %.099266 = phi ptr [ null, %.lr.ph268 ], [ %.2101, %bb.o ] ; 6 uses
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.ax = call i32 @PySequence_Contains(ptr noundef nonnull %i.o, ptr noundef %i.aw) #9 ; 2 uses
  switch i32 %i.ax, label %bb.s [
    i32 -1, label %Py_DECREF.exit
    i32 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.az = call i32 @PySet_Discard(ptr noundef nonnull %i.s, ptr noundef %i.ay) #9 ; 2 uses
  switch i32 %i.az, label %bb.w [
    i32 -1, label %Py_DECREF.exit
    i32 0, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.ba = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %.val159 = load ptr, ptr %i.l, align 8, !tbaa !128
  %i.bb = getelementptr i8, ptr %.val159, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !408
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.be = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ba, ptr noundef nonnull @.str.408, ptr noundef %i.bc, ptr noundef %i.bd) #9 ; 0 uses
  br label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.p
  %i.bf = icmp eq ptr %.099266, null
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.val158 = load ptr, ptr %i.l, align 8, !tbaa !128
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !291
  %i.bh = call ptr @PyObject_GetAttr(ptr noundef %.val158, ptr noundef %i.bg) #9 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %Py_XDECREF.exit169.thread, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1100 = phi ptr [ %i.bh, %bb.t ], [ %.099266, %bb.s ] ; 5 uses
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.bk = call i32 @PySequence_Contains(ptr noundef nonnull %.1100, ptr noundef %i.bj) #9 ; 2 uses
  switch i32 %i.bk, label %bb.w [
    i32 -1, label %Py_DECREF.exit.thread222
    i32 0, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !11
  %.val157 = load ptr, ptr %i.l, align 8, !tbaa !128
  %i.bm = getelementptr i8, ptr %.val157, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !408
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.bp = call i32 (ptr, i64, ptr, ...) @PyErr_WarnFormat(ptr noundef %i.bl, i64 noundef 1, ptr noundef nonnull @.str.409, ptr noundef %i.bn, ptr noundef %i.bo) #9
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %Py_DECREF.exit.thread222, label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.q
  %.2101 = phi ptr [ %.099266, %bb.q ], [ %.1100, %bb.v ], [ %.1100, %bb.u ] ; 3 uses
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.bt = call i32 @PyObject_SetAttr(ptr noundef %0, ptr noundef %i.br, ptr noundef %i.bs) #9 ; 3 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %Py_DECREF.exit, label %bb.o

.loopexit:                                        ; preds = %bb.o, %bb.n, %._crit_edge
  %.4103 = phi ptr [ null, %._crit_edge ], [ null, %bb.n ], [ %.2101, %bb.o ] ; 7 uses
  %.698 = phi i32 [ %.092.lcssa, %._crit_edge ], [ %.092.lcssa, %bb.n ], [ %i.bt, %bb.o ] ; 3 uses
  %i.bv = call i64 @PySet_Size(ptr noundef nonnull %i.s) #9 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !11
  %i.bw = icmp sgt i64 %i.bv, 0
  br i1 %i.bw, label %bb.x, label %Py_DECREF.exit

bb.x:                                             ; preds = %.loopexit
  %.val156 = load ptr, ptr %i.l, align 8, !tbaa !128
  %i.bx = call i32 @PyObject_GetOptionalAttr(ptr noundef %.val156, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 72160), ptr noundef nonnull %i.d) #9
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %Py_DECREF.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %Py_DECREF.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = call ptr @PySequence_List(ptr noundef nonnull %i.s) #9 ; 8 uses
  %.not132 = icmp eq ptr %i.cb, null
  br i1 %.not132, label %.split106, label %.lr.ph273

.lr.ph273:                                        ; preds = %bb.z
  %i.cc = getelementptr i8, ptr %i.cb, i64 24
  %i.cd = getelementptr i8, ptr %i.f, i64 81456
  %i.ce = getelementptr i8, ptr %i.f, i64 80608
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph273, %.thread203
  %.091272 = phi i64 [ 0, %.lr.ph273 ], [ %i.dh, %.thread203 ] ; 2 uses
  %.7271 = phi i32 [ %.698, %.lr.ph273 ], [ %.10207, %.thread203 ] ; 3 uses
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !111
  %i.cg = getelementptr [8 x i8], ptr %i.cf, i64 %.091272
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !11 ; 5 uses
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.cj = call ptr @PyDict_GetItemWithError(ptr noundef %i.ci, ptr noundef %i.ch) #9 ; 3 uses
  %.not133 = icmp eq ptr %i.cj, null
  br i1 %.not133, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ck = call ptr @PyErr_Occurred() #9
  %.not134 = icmp eq ptr %i.ck, null
  br i1 %.not134, label %bb.ac, label %.split

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !11
  %.val155 = load ptr, ptr %i.l, align 8, !tbaa !128
  %i.cm = getelementptr i8, ptr %.val155, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !408
  %i.co = call i32 (ptr, i64, ptr, ...) @PyErr_WarnFormat(ptr noundef %i.cl, i64 noundef 1, ptr noundef nonnull @.str.410, ptr noundef %i.ch, ptr noundef %i.cn) #9
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %.split, label %.thread203

bb.ad:                                            ; preds = %bb.aa
  %i.cq = getelementptr i8, ptr %i.cj, i64 8
  %.val165 = load ptr, ptr %i.cq, align 8, !tbaa !128 ; 2 uses
  %.not247 = icmp eq ptr %.val165, @_PyUnion_Type
  br i1 %.not247, label %.thread203, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not248 = icmp eq ptr %.val165, @Py_GenericAliasType
  br i1 %.not248, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.cr = call ptr @PyList_New(i64 noundef 0) #9  ; 5 uses
  %.not137 = icmp eq ptr %i.cr, null
  br i1 %.not137, label %.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cs = call i32 @PyObject_SetAttr(ptr noundef %0, ptr noundef %i.ch, ptr noundef nonnull %i.cr) #9 ; 2 uses
  %i.ct = load i32, ptr %i.cr, align 8, !tbaa !14 ; 2 uses
  %.not.i145 = icmp sgt i32 %i.ct, -1
  br i1 %.not.i145, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cu = add nsw i32 %i.ct, -1                   ; 2 uses
  store i32 %i.cu, ptr %i.cr, align 8, !tbaa !14
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @_Py_Dealloc(ptr noundef nonnull %i.cr) #9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.cw = icmp sgt i32 %i.cs, -1
  br i1 %i.cw, label %.thread203, label %.split

bb.ak:                                            ; preds = %bb.ae
  %i.cx = load ptr, ptr %i.cd, align 8, !tbaa !227
  %i.cy = icmp eq ptr %i.cj, %i.cx
  br i1 %i.cy, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cz = load ptr, ptr %i.ce, align 8, !tbaa !370
  %i.da = call i32 @PyObject_SetAttr(ptr noundef %0, ptr noundef %i.ch, ptr noundef %i.cz) #9 ; 2 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %.split, label %.thread203

bb.am:                                            ; preds = %bb.ak
  %i.dc = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !11
  %.val = load ptr, ptr %i.l, align 8, !tbaa !128
  %i.dd = getelementptr i8, ptr %.val, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !408
  %i.df = call i32 (ptr, i64, ptr, ...) @PyErr_WarnFormat(ptr noundef %i.dc, i64 noundef 1, ptr noundef nonnull @.str.411, ptr noundef %i.de, ptr noundef %i.ch) #9
  %i.dg = icmp slt i32 %i.df, 0
  br i1 %i.dg, label %.split, label %.thread203

.thread203:                                       ; preds = %bb.ad, %bb.al, %bb.am, %bb.aj, %bb.ac
  %.10207 = phi i32 [ %.7271, %bb.ac ], [ %.7271, %bb.ad ], [ %i.cs, %bb.aj ], [ %i.da, %bb.al ], [ %.7271, %bb.am ] ; 4 uses
  %i.dh = add nuw nsw i64 %.091272, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.dh, %i.bv
  br i1 %exitcond.not, label %.thread208, label %bb.aa, !llvm.loop !409

.split:                                           ; preds = %bb.aj, %bb.ac, %bb.al, %bb.ab, %bb.am, %bb.af
  %i.di = load i32, ptr %i.cb, align 8, !tbaa !14 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.di, -1
  br i1 %.not.i.i, label %bb.an, label %.split106

bb.an:                                            ; preds = %.split
  %i.dj = add nsw i32 %i.di, -1                   ; 2 uses
  store i32 %i.dj, ptr %i.cb, align 8, !tbaa !14
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.ao, label %.split106

bb.ao:                                            ; preds = %bb.an
  call void @_Py_Dealloc(ptr noundef nonnull %i.cb) #9
  br label %.split106

.thread208:                                       ; preds = %.thread203
  %i.dl = load i32, ptr %i.cb, align 8, !tbaa !14 ; 2 uses
  %.not.i143 = icmp sgt i32 %i.dl, -1
  br i1 %.not.i143, label %bb.ap, label %Py_DECREF.exit144

bb.ap:                                            ; preds = %.thread208
  %i.dm = add nsw i32 %i.dl, -1                   ; 2 uses
  store i32 %i.dm, ptr %i.cb, align 8, !tbaa !14
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.aq, label %Py_DECREF.exit144

bb.aq:                                            ; preds = %bb.ap
  call void @_Py_Dealloc(ptr noundef nonnull %i.cb) #9
  br label %Py_DECREF.exit144

Py_DECREF.exit144:                                ; preds = %.thread208, %bb.ap, %bb.aq
  %i.do = load ptr, ptr %i.d, align 8, !tbaa !11  ; 3 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !14 ; 2 uses
  %.not.i = icmp sgt i32 %i.dp, -1
  br i1 %.not.i, label %bb.ar, label %Py_DECREF.exit

bb.ar:                                            ; preds = %Py_DECREF.exit144
  %i.dq = add nsw i32 %i.dp, -1                   ; 2 uses
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !14
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.as, label %Py_DECREF.exit

bb.as:                                            ; preds = %bb.ar
  call void @_Py_Dealloc(ptr noundef nonnull %i.do) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.w, %bb.q, %bb.p, %bb.r, %bb.as, %bb.ar, %Py_DECREF.exit144, %bb.x, %.loopexit, %bb.y, %.split106
  %.5104 = phi ptr [ %.4103, %bb.x ], [ %.4103, %.split106 ], [ %.4103, %Py_DECREF.exit144 ], [ %.4103, %bb.ar ], [ %.4103, %bb.as ], [ %.4103, %bb.y ], [ %.4103, %.loopexit ], [ %.099266, %bb.r ], [ %.099266, %bb.q ], [ %.099266, %bb.p ], [ %.2101, %bb.w ] ; 2 uses
  %.12 = phi i32 [ -1, %bb.x ], [ -1, %.split106 ], [ %.10207, %Py_DECREF.exit144 ], [ %.10207, %bb.ar ], [ %.10207, %bb.as ], [ %.698, %bb.y ], [ %.698, %.loopexit ], [ -1, %bb.r ], [ %i.az, %bb.q ], [ %i.ax, %bb.p ], [ %i.bt, %bb.w ] ; 2 uses
  %.not.i167 = icmp eq ptr %.5104, null
  br i1 %.not.i167, label %Py_XDECREF.exit169.thread, label %Py_DECREF.exit.thread222

Py_DECREF.exit.thread222:                         ; preds = %bb.u, %bb.v, %Py_DECREF.exit
  %.12229 = phi i32 [ %.12, %Py_DECREF.exit ], [ %i.bk, %bb.u ], [ -1, %bb.v ] ; 3 uses
  %.5104228 = phi ptr [ %.5104, %Py_DECREF.exit ], [ %.1100, %bb.v ], [ %.1100, %bb.u ] ; 3 uses
  %i.ds = load i32, ptr %.5104228, align 8, !tbaa !14 ; 2 uses
  %.not.i.i168 = icmp sgt i32 %i.ds, -1
  br i1 %.not.i.i168, label %bb.at, label %Py_XDECREF.exit169.thread

bb.at:                                            ; preds = %Py_DECREF.exit.thread222
  %i.dt = add nsw i32 %i.ds, -1                   ; 2 uses
  store i32 %i.dt, ptr %.5104228, align 8, !tbaa !14
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.au, label %Py_XDECREF.exit169.thread

bb.au:                                            ; preds = %bb.at
  call void @_Py_Dealloc(ptr noundef nonnull %.5104228) #9
  br label %Py_XDECREF.exit169.thread

Py_XDECREF.exit169.thread:                        ; preds = %bb.f, %Py_DECREF.exit148, %bb.t, %bb.au, %bb.at, %Py_DECREF.exit.thread222, %Py_DECREF.exit, %bb.b, %bb.c, %bb.e, %bb.h, %bb.i, %bb.j
  %.0105219239 = phi ptr [ %i.s, %bb.au ], [ %i.s, %bb.e ], [ %i.s, %bb.at ], [ %i.s, %bb.j ], [ %i.s, %bb.i ], [ %i.s, %bb.h ], [ %i.s, %bb.t ], [ null, %bb.b ], [ null, %bb.c ], [ %i.s, %Py_DECREF.exit ], [ %i.s, %Py_DECREF.exit.thread222 ], [ %i.s, %Py_DECREF.exit148 ], [ %i.s, %bb.f ] ; 4 uses
  %.12220237 = phi i32 [ %.12229, %bb.au ], [ -1, %bb.e ], [ %.12229, %bb.at ], [ -1, %bb.j ], [ -1, %bb.i ], [ -1, %bb.h ], [ -1, %bb.t ], [ -1, %bb.b ], [ -1, %bb.c ], [ %.12, %Py_DECREF.exit ], [ %.12229, %Py_DECREF.exit.thread222 ], [ %i.ah, %Py_DECREF.exit148 ], [ -1, %bb.f ] ; 4 uses
  %i.dv = load i32, ptr %i.o, align 8, !tbaa !14  ; 2 uses
  %.not.i.i171 = icmp sgt i32 %i.dv, -1
  br i1 %.not.i.i171, label %bb.av, label %Py_XDECREF.exit172

bb.av:                                            ; preds = %Py_XDECREF.exit169.thread
  %i.dw = add nsw i32 %i.dv, -1                   ; 2 uses
  store i32 %i.dw, ptr %i.o, align 8, !tbaa !14
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.aw, label %Py_XDECREF.exit172

bb.aw:                                            ; preds = %bb.av
  call void @_Py_Dealloc(ptr noundef nonnull %i.o) #9
  br label %Py_XDECREF.exit172

Py_XDECREF.exit172:                               ; preds = %Py_XDECREF.exit169.thread, %bb.av, %bb.aw
  %.not.i173 = icmp eq ptr %.0105219239, null
  br i1 %.not.i173, label %Py_XDECREF.exit175, label %bb.ax

bb.ax:                                            ; preds = %Py_XDECREF.exit172
  %i.dy = load i32, ptr %.0105219239, align 8, !tbaa !14 ; 2 uses
  %.not.i.i174 = icmp sgt i32 %i.dy, -1
  br i1 %.not.i.i174, label %bb.ay, label %Py_XDECREF.exit175

bb.ay:                                            ; preds = %bb.ax
  %i.dz = add nsw i32 %i.dy, -1                   ; 2 uses
  store i32 %i.dz, ptr %.0105219239, align 8, !tbaa !14
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.az, label %Py_XDECREF.exit175

bb.az:                                            ; preds = %bb.ay
  call void @_Py_Dealloc(ptr noundef nonnull %.0105219239) #9
  br label %Py_XDECREF.exit175

.split106:                                        ; preds = %bb.ao, %bb.an, %.split, %bb.z
  %i.eb = load ptr, ptr %i.d, align 8, !tbaa !11
  call fastcc void @Py_XDECREF(ptr noundef %i.eb)
  br label %Py_DECREF.exit

Py_XDECREF.exit175:                               ; preds = %get_ast_state.exit.thread176, %bb.az, %bb.ay, %bb.ax, %Py_XDECREF.exit172
  %.0 = phi i32 [ -1, %get_ast_state.exit.thread176 ], [ %.12220237, %Py_XDECREF.exit172 ], [ %.12220237, %bb.ax ], [ %.12220237, %bb.ay ], [ %.12220237, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %get_ast_state.exit.thread

get_ast_state.exit.thread:                        ; preds = %_PyOnceFlag_CallOnce.exit.i, %Py_XDECREF.exit175
  %.1 = phi i32 [ %.0, %Py_XDECREF.exit175 ], [ -1, %_PyOnceFlag_CallOnce.exit.i ]
  ret i32 %.1
}

declare ptr @PyType_GenericAlloc(ptr noundef, i64 noundef) #2

declare void @PyObject_GC_Del(ptr noundef) #2

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #2

declare ptr @PyType_GetSlot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ast_repr_max_depth(ptr noundef %0, i32 noundef range(i32 0, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 7 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 80024    ; 3 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1
  %i.g = icmp eq i8 %i.f, 4
  br i1 %i.g, label %get_ast_state.exit.thread136, label %_PyOnceFlag_CallOnce.exit.i

_PyOnceFlag_CallOnce.exit.i:                      ; preds = %bb.a
  %i.h = tail call i32 @_PyOnceFlag_CallOnceSlow(ptr noundef nonnull %i.e, ptr noundef nonnull @init_types, ptr noundef nonnull %i.e) #9, !inline_history !104
  %.fr.i = freeze i32 %i.h
  %i.i = icmp slt i32 %.fr.i, 0
  br i1 %i.i, label %get_ast_state.exit.thread, label %get_ast_state.exit.thread136

get_ast_state.exit.thread136:                     ; preds = %bb.a, %_PyOnceFlag_CallOnce.exit.i
  %i.j = icmp eq i32 %1, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %get_ast_state.exit.thread136
  %i.k = getelementptr i8, ptr %0, i64 8
  %.val128 = load ptr, ptr %i.k, align 8, !tbaa !128
  %i.l = getelementptr i8, ptr %.val128, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !408
  %i.n = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.390, ptr noundef %i.m) #9
  br label %get_ast_state.exit.thread

bb.c:                                             ; preds = %get_ast_state.exit.thread136
  %i.o = tail call i32 @Py_ReprEnter(ptr noundef %0) #9 ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %get_ast_state.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 8
  %.val127 = load ptr, ptr %i.q, align 8, !tbaa !128
  %i.r = getelementptr i8, ptr %.val127, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !408
  %i.t = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.390, ptr noundef %i.s) #9
  br label %get_ast_state.exit.thread

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.u = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val126 = load ptr, ptr %i.u, align 8, !tbaa !128
  %i.v = getelementptr i8, ptr %i.d, i64 81184
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !292
  %i.x = call i32 @PyObject_GetOptionalAttr(ptr noundef %.val126, ptr noundef %i.w, ptr noundef nonnull %i.b) #9
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @Py_ReprLeave(ptr noundef nonnull %0) #9
  br label %Py_DECREF.exit108

bb.h:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.aa = call i64 @PySequence_Size(ptr noundef %i.z) #9 ; 3 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @Py_ReprLeave(ptr noundef nonnull %0) #9
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !11  ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !14 ; 2 uses
  %.not.i107 = icmp sgt i32 %i.ad, -1
  br i1 %.not.i107, label %bb.j, label %Py_DECREF.exit108

bb.j:                                             ; preds = %bb.i
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !14
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.k, label %Py_DECREF.exit108

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.ac) #9
  br label %Py_DECREF.exit108

bb.l:                                             ; preds = %bb.h
  %i.ag = icmp eq i64 %i.aa, 0
  br i1 %i.ag, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @Py_ReprLeave(ptr noundef nonnull %0) #9
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !11  ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !14 ; 2 uses
  %.not.i105 = icmp sgt i32 %i.ai, -1
  br i1 %.not.i105, label %bb.n, label %Py_DECREF.exit106

bb.n:                                             ; preds = %bb.m
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !14
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.o, label %Py_DECREF.exit106

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #9
  br label %Py_DECREF.exit106

Py_DECREF.exit106:                                ; preds = %bb.m, %bb.n, %bb.o
  %.val125 = load ptr, ptr %i.u, align 8, !tbaa !128
  %i.al = getelementptr i8, ptr %.val125, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !408
  %i.an = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.391, ptr noundef %i.am) #9
  br label %Py_DECREF.exit108

bb.p:                                             ; preds = %bb.l
  %.val124 = load ptr, ptr %i.u, align 8, !tbaa !128
  %i.ao = getelementptr i8, ptr %.val124, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !408
  %i.aq = call ptr @PyUnicodeWriter_Create(i64 noundef 0) #9 ; 10 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %select.unfold152, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %i.aq, ptr noundef %i.ap, i64 noundef -1) #9
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %select.unfold152, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %i.aq, i32 noundef 40) #9
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %select.unfold152, label %.lr.ph169

.lr.ph169:                                        ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ax = add nsw i32 %1, -1                      ; 4 uses
  %i.ay = getelementptr i8, ptr %i.d, i64 80032
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.t

bb.s:                                             ; preds = %Py_DECREF.exit86
  %i.ba = add nuw nsw i64 %.068168, 1             ; 2 uses
  %exitcond184.not = icmp eq i64 %i.ba, %i.aa
  br i1 %exitcond184.not, label %._crit_edge, label %bb.t, !llvm.loop !410

bb.t:                                             ; preds = %.lr.ph169, %bb.s
  %.068168 = phi i64 [ 0, %.lr.ph169 ], [ %i.ba, %bb.s ] ; 3 uses
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.bc = call ptr @PySequence_GetItem(ptr noundef %i.bb, i64 noundef %.068168) #9 ; 17 uses
  %.not76 = icmp eq ptr %i.bc, null
  br i1 %.not76, label %select.unfold152, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = call ptr @PyObject_GetAttr(ptr noundef %0, ptr noundef nonnull %i.bc) #9 ; 11 uses
  %.not77 = icmp eq ptr %i.bd, null
  br i1 %.not77, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.be = load i32, ptr %i.bc, align 8, !tbaa !14 ; 2 uses
  %.not.i103 = icmp sgt i32 %i.be, -1
  br i1 %.not.i103, label %bb.w, label %select.unfold152

bb.w:                                             ; preds = %bb.v
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bf, ptr %i.bc, align 8, !tbaa !14
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %select.unfold152.sink.split, label %select.unfold152

bb.x:                                             ; preds = %bb.u
  %i.bh = getelementptr i8, ptr %i.bd, i64 8      ; 2 uses
  %.val123 = load ptr, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bi = getelementptr i8, ptr %.val123, i64 168
  %.val130 = load i64, ptr %i.bi, align 8, !tbaa !129
  %i.bj = and i64 %.val130, 100663296
  %or.cond = icmp eq i64 %i.bj, 0
  br i1 %or.cond, label %bb.bg, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !102 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 80024  ; 3 uses
  %i.bm = load atomic i8, ptr %i.bl seq_cst, align 1
  %i.bn = icmp eq i8 %i.bm, 4
  br i1 %i.bn, label %get_ast_state.exit135.thread138, label %_PyOnceFlag_CallOnce.exit.i132

_PyOnceFlag_CallOnce.exit.i132:                   ; preds = %bb.y
end_hunk_1
begin_hunk_2_@PyUnicodeWriter_Finish

declare void @PyUnicodeWriter_Discard(ptr noundef) local_unnamed_addr #2

declare i32 @PyUnicodeWriter_WriteRepr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Py_XDECREF(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !14     ; 2 uses
  %.not.i = icmp sgt i32 %i.a, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.b = add nsw i32 %i.a, -1                     ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !14
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %0) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @ast_type_reduce(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102  ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 80024    ; 3 uses
  %i.g = load atomic i8, ptr %i.f seq_cst, align 1
  %i.h = icmp eq i8 %i.g, 4
  br i1 %i.h, label %get_ast_state.exit.thread63, label %_PyOnceFlag_CallOnce.exit.i

_PyOnceFlag_CallOnce.exit.i:                      ; preds = %bb.a
  %i.i = tail call i32 @_PyOnceFlag_CallOnceSlow(ptr noundef nonnull %i.f, ptr noundef nonnull @init_types, ptr noundef nonnull %i.f) #9, !inline_history !104
  %.fr.i = freeze i32 %i.i
  %i.j = icmp slt i32 %.fr.i, 0
  br i1 %i.j, label %get_ast_state.exit.thread, label %get_ast_state.exit.thread63

get_ast_state.exit.thread63:                      ; preds = %bb.a, %_PyOnceFlag_CallOnce.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.k = getelementptr i8, ptr %i.e, i64 81144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !287
  %i.m = call i32 @PyObject_GetOptionalAttr(ptr noundef %0, ptr noundef %i.l, ptr noundef nonnull %i.a) #9
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %Py_XDECREF.exit62, label %bb.b

bb.b:                                             ; preds = %get_ast_state.exit.thread63
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !11
  %.not = icmp eq ptr %i.o, null
  %i.p = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val = load ptr, ptr %i.p, align 8, !tbaa !128 ; 2 uses
  br i1 %.not, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.e, i64 81184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !292
  %i.s = call i32 @PyObject_GetOptionalAttr(ptr noundef %.val, ptr noundef %i.r, ptr noundef nonnull %i.b) #9
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %Py_DECREF.exit53, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %.not45 = icmp eq ptr %i.u, null
  br i1 %.not45, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = call i64 @PySequence_Size(ptr noundef nonnull %i.u) #9 ; 3 uses
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !14   ; 2 uses
  %.not.i52 = icmp sgt i32 %i.y, -1
  br i1 %.not.i52, label %bb.g, label %Py_DECREF.exit53

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.x, align 8, !tbaa !14
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %Py_DECREF.exit53

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.x) #9
  br label %Py_DECREF.exit53

bb.i:                                             ; preds = %bb.e
  %i.ab = call ptr @PyList_New(i64 noundef 0) #9  ; 7 uses
  %.not46 = icmp eq ptr %i.ab, null
  br i1 %.not46, label %Py_DECREF.exit53, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.v, 0
  br i1 %i.ac, label %.lr.ph, label %.thread70

.lr.ph:                                           ; preds = %.preheader, %bb.q
  %.03280 = phi i64 [ %i.as, %bb.q ], [ 0, %.preheader ] ; 2 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.ae = call ptr @PySequence_GetItem(ptr noundef %i.ad, i64 noundef %.03280) #9 ; 5 uses
  %.not47 = icmp eq ptr %i.ae, null
  br i1 %.not47, label %Py_DECREF.exit53, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.ag = call i32 @PyDict_GetItemRef(ptr noundef %i.af, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.c) #9
  %i.ah = load i32, ptr %i.ae, align 8, !tbaa !14 ; 2 uses
  %.not.i50 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i50, label %bb.k, label %Py_DECREF.exit51

bb.k:                                             ; preds = %bb.j
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ae, align 8, !tbaa !14
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %Py_DECREF.exit51

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #9
  br label %Py_DECREF.exit51

Py_DECREF.exit51:                                 ; preds = %bb.j, %bb.k, %bb.l
  %i.ak = icmp slt i32 %i.ag, 0
  br i1 %i.ak, label %.thread77, label %bb.m

bb.m:                                             ; preds = %Py_DECREF.exit51
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !11
  %.not48 = icmp eq ptr %i.al, null
  br i1 %.not48, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = call i32 @PyList_Append(ptr noundef nonnull %i.ab, ptr noundef nonnull @_Py_NoneStruct) #9
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !14 ; 2 uses
  %.not.i = icmp sgt i32 %i.ao, -1
  br i1 %.not.i, label %bb.o, label %Py_DECREF.exit

bb.o:                                             ; preds = %bb.n
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !14
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.p, label %Py_DECREF.exit

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.an) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.n, %bb.o, %bb.p
  %i.ar = icmp slt i32 %i.am, 0
  br i1 %i.ar, label %.thread77, label %bb.q

bb.q:                                             ; preds = %Py_DECREF.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.as = add nuw nsw i64 %.03280, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %i.v
  br i1 %exitcond.not, label %.thread70, label %.lr.ph, !llvm.loop !414

.thread77:                                        ; preds = %Py_DECREF.exit51, %Py_DECREF.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %.thread70

.thread70:                                        ; preds = %bb.q, %.preheader, %bb.r
  %i.at = call ptr @PyList_AsTuple(ptr noundef nonnull %i.ab) #9 ; 2 uses
  %.not49 = icmp eq ptr %i.at, null
  br i1 %.not49, label %Py_DECREF.exit53, label %bb.s

bb.s:                                             ; preds = %.thread70
  %.val57 = load ptr, ptr %i.p, align 8, !tbaa !128
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.av = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.400, ptr noundef %.val57, ptr noundef nonnull %i.at, ptr noundef %i.au) #9
  br label %Py_DECREF.exit53

bb.t:                                             ; preds = %bb.d
  %.val56 = load ptr, ptr %i.p, align 8, !tbaa !128
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.ax = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.401, ptr noundef %.val56, ptr noundef %i.aw) #9
  br label %Py_DECREF.exit53

bb.u:                                             ; preds = %bb.b
  %i.ay = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.402, ptr noundef %.val) #9
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %.lr.ph, %bb.i, %.thread70, %bb.s, %bb.f, %bb.g, %bb.h, %.thread77, %bb.u, %bb.t, %bb.c
  %.237.a = phi ptr [ null, %bb.c ], [ %i.ay, %bb.u ], [ %i.ax, %bb.t ], [ null, %.thread70 ], [ null, %bb.i ], [ null, %.thread77 ], [ %i.av, %bb.s ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ null, %.lr.ph ] ; 4 uses
  %.134 = phi ptr [ null, %bb.c ], [ null, %bb.u ], [ null, %bb.t ], [ %i.ab, %.thread70 ], [ null, %bb.i ], [ %i.ab, %.thread77 ], [ %i.ab, %bb.s ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ %i.ab, %.lr.ph ] ; 4 uses
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !11  ; 4 uses
  %.not.i59 = icmp eq ptr %i.az, null
  br i1 %.not.i59, label %Py_XDECREF.exit, label %bb.v

bb.v:                                             ; preds = %Py_DECREF.exit53
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !14 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ba, -1
  br i1 %.not.i.i, label %bb.w, label %Py_XDECREF.exit

bb.w:                                             ; preds = %bb.v
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !14
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.x, label %Py_XDECREF.exit

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.az) #9
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %Py_DECREF.exit53, %bb.v, %bb.w, %bb.x
  %.not.i60 = icmp eq ptr %.134, null
  br i1 %.not.i60, label %Py_XDECREF.exit62, label %bb.y

bb.y:                                             ; preds = %Py_XDECREF.exit
  %i.bd = load i32, ptr %.134, align 8, !tbaa !14 ; 2 uses
  %.not.i.i61 = icmp sgt i32 %i.bd, -1
  br i1 %.not.i.i61, label %bb.z, label %Py_XDECREF.exit62

bb.z:                                             ; preds = %bb.y
  %i.be = add nsw i32 %i.bd, -1                   ; 2 uses
  store i32 %i.be, ptr %.134, align 8, !tbaa !14
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.aa, label %Py_XDECREF.exit62

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %.134) #9
  br label %Py_XDECREF.exit62

Py_XDECREF.exit62:                                ; preds = %bb.aa, %bb.z, %bb.y, %Py_XDECREF.exit, %get_ast_state.exit.thread63
  %.1 = phi ptr [ null, %get_ast_state.exit.thread63 ], [ %.237.a, %Py_XDECREF.exit ], [ %.237.a, %bb.y ], [ %.237.a, %bb.z ], [ %.237.a, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %get_ast_state.exit.thread

get_ast_state.exit.thread:                        ; preds = %_PyOnceFlag_CallOnce.exit.i, %Py_XDECREF.exit62
  %.2 = phi ptr [ %.1, %Py_XDECREF.exit62 ], [ null, %_PyOnceFlag_CallOnce.exit.i ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @ast_type_replace(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 9 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %i.k = alloca ptr, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %i.o = alloca ptr, align 8                      ; 7 uses
  %i.p = alloca ptr, align 8                      ; 7 uses
  %i.q = alloca ptr, align 8                      ; 8 uses
  %i.r = icmp eq ptr %1, null
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call i32 @_PyArg_NoPositional(ptr noundef nonnull @.str.397, ptr noundef nonnull %1) #9
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %get_ast_state.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !102  ; 4 uses
  %i.v = getelementptr i8, ptr %i.u, i64 80024    ; 3 uses
  %i.w = load atomic i8, ptr %i.v seq_cst, align 1
  %i.x = icmp eq i8 %i.w, 4
  br i1 %i.x, label %get_ast_state.exit.thread53, label %_PyOnceFlag_CallOnce.exit.i

_PyOnceFlag_CallOnce.exit.i:                      ; preds = %bb.c
  %i.y = tail call i32 @_PyOnceFlag_CallOnceSlow(ptr noundef nonnull %i.v, ptr noundef nonnull @init_types, ptr noundef nonnull %i.v) #9, !inline_history !104
  %.fr.i = freeze i32 %i.y
  %i.z = icmp slt i32 %.fr.i, 0
  br i1 %i.z, label %get_ast_state.exit.thread, label %get_ast_state.exit.thread53

get_ast_state.exit.thread53:                      ; preds = %bb.c, %_PyOnceFlag_CallOnce.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #9
  store ptr null, ptr %i.o, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #9
  store ptr null, ptr %i.p, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #9
  store ptr null, ptr %i.q, align 8, !tbaa !11
  %i.aa = getelementptr i8, ptr %0, i64 8         ; 4 uses
  %.val = load ptr, ptr %i.aa, align 8, !tbaa !128 ; 3 uses
  %i.ab = getelementptr i8, ptr %i.u, i64 81184
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !292
  %i.ad = call i32 @PyObject_GetOptionalAttr(ptr noundef %.val, ptr noundef %i.ac, ptr noundef nonnull %i.o) #9
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_XDECREF.exit43, label %bb.d

bb.d:                                             ; preds = %get_ast_state.exit.thread53
  %i.af = getelementptr i8, ptr %i.u, i64 81176
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !291
  %i.ah = call i32 @PyObject_GetOptionalAttr(ptr noundef %.val, ptr noundef %i.ag, ptr noundef nonnull %i.p) #9
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %Py_XDECREF.exit43, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr i8, ptr %i.u, i64 81144
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !287
  %i.al = call i32 @PyObject_GetOptionalAttr(ptr noundef nonnull %0, ptr noundef %i.ak, ptr noundef nonnull %i.q) #9
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %Py_XDECREF.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !11  ; 2 uses
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !11
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !11  ; 3 uses
  %i.aq = call ptr @PySet_New(ptr noundef %i.ao) #9 ; 40 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %Py_XDECREF.exit43, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %i.ap, null               ; 2 uses
  br i1 %.not.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = call i32 @_PySet_Update(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ap) #9
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.au = load i32, ptr %i.aq, align 8, !tbaa !14 ; 2 uses
  %.not.i136.i = icmp sgt i32 %i.au, -1
  br i1 %.not.i136.i, label %bb.j, label %Py_XDECREF.exit43

bb.j:                                             ; preds = %bb.i
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.aq, align 8, !tbaa !14
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.k, label %Py_XDECREF.exit43

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.aq) #9
  br label %Py_XDECREF.exit43

bb.l:                                             ; preds = %bb.h, %bb.g
  %.not87.i = icmp eq ptr %2, null                ; 2 uses
  br i1 %.not87.i, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i64 0, ptr %i.b, align 8, !tbaa !406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %bb.m
  %i.ax = call i32 @PyDict_Next(ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #9
  %.not88.i = icmp eq i32 %i.ax, 0
  br i1 %.not88.i, label %.critedge97.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.az = call i32 @PySet_Discard(ptr noundef nonnull %i.aq, ptr noundef %i.ay) #9 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bb = load i32, ptr %i.aq, align 8, !tbaa !14 ; 2 uses
  %.not.i134.i = icmp sgt i32 %i.bb, -1
  br i1 %.not.i134.i, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %bb.p
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !14
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.critedge.sink.split.i, label %.critedge.i

bb.r:                                             ; preds = %bb.o
  %i.be = icmp eq i32 %i.az, 0
  br i1 %i.be, label %bb.s, label %bb.n, !llvm.loop !415

bb.s:                                             ; preds = %bb.r
  %i.bf = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %.val158.i = load ptr, ptr %i.aa, align 8, !tbaa !128
  %i.bg = getelementptr i8, ptr %.val158.i, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !408
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.bj = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bf, ptr noundef nonnull @.str.403, ptr noundef %i.bh, ptr noundef %i.bi) #9 ; 0 uses
  %i.bk = load i32, ptr %i.aq, align 8, !tbaa !14 ; 2 uses
  %.not.i132.i = icmp sgt i32 %i.bk, -1
  br i1 %.not.i132.i, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %bb.s
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %i.aq, align 8, !tbaa !14
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.critedge.sink.split.i, label %.critedge.i

.critedge.sink.split.i:                           ; preds = %bb.t, %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.aq) #9
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.sink.split.i, %bb.t, %bb.s, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %Py_XDECREF.exit43

.critedge97.i:                                    ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.u

bb.u:                                             ; preds = %.critedge97.i, %bb.l
  %.not89.i = icmp eq ptr %i.an, null
  br i1 %.not89.i, label %bb.ah, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store i64 0, ptr %i.e, align 8, !tbaa !406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %i.bn = call i32 @PyDict_Next(ptr noundef nonnull %i.an, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #9
  %.not90.i = icmp eq i32 %i.bn, 0
  br i1 %.not90.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !11
end_hunk_2
