Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/bufferedio?download=true
inline.NumInlined: 217
inline.NumDeleted: 75
begin_hunk_0_@_io__Buffered_read:bb.a
bb.r:                                             ; preds = %.thread.i
  %i.al = getelementptr i8, ptr %0, i64 80
  %i.am = load i64, ptr %i.al, align 8, !tbaa !222 ; 2 uses
  %.not43.i = icmp eq i64 %i.am, -1
  br i1 %.not43.i, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr i8, ptr %0, i64 64
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !225
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %.critedge.i, label %bb.t

.critedge.i:                                      ; preds = %bb.s, %bb.r, %.thread.i
  %i.aq = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !161
  call void @PyErr_SetString(ptr noundef %i.aq, ptr noundef nonnull @.str.53) #9
  br label %_io__Buffered_read_impl.exit

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.ar = icmp eq i64 %i.t, -1
  br i1 %i.ar, label %bb.u, label %bb.bw

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr i8, ptr %0, i64 104
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !209
  %i.au = call i32 @PyThread_acquire_lock(ptr noundef %i.at, i32 noundef 0) #9
  %.not47.i = icmp eq i32 %i.au, 0
  br i1 %.not47.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.av = call fastcc i32 @_enter_buffered_busy(ptr noundef nonnull %0)
  %.not48.i = icmp eq i32 %i.av, 0
  br i1 %.not48.i, label %_io__Buffered_read_impl.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.aw = call i64 @PyThread_get_thread_ident() #9
  %i.ax = getelementptr i8, ptr %0, i64 112
  store volatile i64 %i.aw, ptr %i.ax, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr null, ptr %i.b, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.ay = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !220
  %.not.i53.i = icmp eq i32 %i.az, 0
  br i1 %.not.i53.i, label %.thread.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = getelementptr i8, ptr %0, i64 80
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !222 ; 2 uses
  %.not60.i.i = icmp eq i64 %i.bb, -1
  br i1 %.not60.i.i, label %.thread.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bc = getelementptr i8, ptr %0, i64 64        ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !225 ; 2 uses
  %i.be = sub i64 %i.bb, %i.bd                    ; 4 uses
  %.not61.i.i = icmp eq i64 %i.be, 0
  br i1 %.not61.i.i, label %.thread.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bf = load ptr, ptr %i.u, align 8, !tbaa !208
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.bd
  %i.bh = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.bg, i64 noundef %i.be) #9 ; 3 uses
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !161
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_bufferedreader_read_all.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = load i64, ptr %i.bc, align 8, !tbaa !225
  %i.bk = add i64 %i.bj, %i.be
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !225
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.aa, %bb.y, %bb.x, %bb.w
  %i.bl = phi ptr [ null, %bb.y ], [ %i.bh, %bb.aa ], [ null, %bb.x ], [ null, %bb.w ] ; 2 uses
  %.not6197.i.i = phi i1 [ true, %bb.y ], [ false, %bb.aa ], [ true, %bb.x ], [ true, %bb.w ] ; 2 uses
  %i.bm = phi i64 [ 0, %bb.y ], [ %i.be, %bb.aa ], [ 0, %bb.x ], [ 0, %bb.w ]
  %i.bn = getelementptr i8, ptr %0, i64 36        ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !221
  %.not62.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not62.i.i, label %Py_DECREF.exit74.i.i, label %bb.ab

bb.ab:                                            ; preds = %.thread.i.i
  %i.bp = call fastcc ptr @_bufferedwriter_flush_unlocked(ptr noundef nonnull %0) ; 4 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %Py_XINCREF.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.br = load i32, ptr %i.bp, align 8, !tbaa !165 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.br, -1
  br i1 %.not.i.i.i.i, label %bb.ad, label %Py_DECREF.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.bs = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bs, ptr %i.bp, align 8, !tbaa !165
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.ae, label %Py_DECREF.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @_Py_Dealloc(ptr noundef nonnull %i.bp) #9
  br label %Py_DECREF.exit.i.i.i

Py_DECREF.exit.i.i.i:                             ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.bu = load i32, ptr %i.ay, align 8, !tbaa !220
  %.not.i83.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i83.i.i, label %buffered_flush_and_rewind_unlocked.exit.i.i, label %bb.af

bb.af:                                            ; preds = %Py_DECREF.exit.i.i.i
  %i.bv = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !222
  %.not18.i.i.i = icmp eq i64 %i.bw, -1
  br i1 %.not18.i.i.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.bx = load i32, ptr %i.bn, align 4, !tbaa !221
  %.not19.i.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not19.i.i.i, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.by = getelementptr i8, ptr %0, i64 96
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !229
  %.not20.i.i.i = icmp eq i64 %i.bz, -1
  br i1 %.not20.i.i.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %i.ca = getelementptr i8, ptr %0, i64 72
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !227 ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, -1
  br i1 %i.cc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cd = getelementptr i8, ptr %0, i64 64
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !225
  %.neg.i.i.i = sub i64 %i.ce, %i.cb
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.neg21.i.i.i = phi i64 [ %.neg.i.i.i, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.ag ]
  %i.cf = call fastcc i64 @_buffered_raw_seek(ptr noundef nonnull %0, i64 noundef %.neg21.i.i.i, i32 noundef 1)
  store i64 -1, ptr %i.bv, align 8, !tbaa !222
  %.not22.i.i.i = icmp eq i64 %i.cf, -1
  br i1 %.not22.i.i.i, label %Py_XINCREF.exit.i.i, label %buffered_flush_and_rewind_unlocked.exit.i.i

buffered_flush_and_rewind_unlocked.exit.i.i:      ; preds = %bb.ak, %Py_DECREF.exit.i.i.i
  %i.cg = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !165 ; 2 uses
  %.not.i73.i.i = icmp sgt i32 %i.cg, -1
  br i1 %.not.i73.i.i, label %bb.al, label %Py_DECREF.exit74.i.i

bb.al:                                            ; preds = %buffered_flush_and_rewind_unlocked.exit.i.i
  %i.ch = add nsw i32 %i.cg, -1                   ; 2 uses
  store i32 %i.ch, ptr @_Py_NoneStruct, align 8, !tbaa !165
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.am, label %Py_DECREF.exit74.i.i

bb.am:                                            ; preds = %bb.al
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #9
  br label %Py_DECREF.exit74.i.i

Py_DECREF.exit74.i.i:                             ; preds = %bb.am, %bb.al, %buffered_flush_and_rewind_unlocked.exit.i.i, %.thread.i.i
  %i.cj = getelementptr i8, ptr %0, i64 80
  store i64 -1, ptr %i.cj, align 8, !tbaa !222
  %i.ck = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !212
  %i.cm = call i32 @PyObject_GetOptionalAttr(ptr noundef %i.cl, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 96952), ptr noundef nonnull %i.c) #9
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %Py_XINCREF.exit.i.i, label %bb.an

bb.an:                                            ; preds = %Py_DECREF.exit74.i.i
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !161 ; 6 uses
  %.not63.i.i = icmp eq ptr %i.co, null
  br i1 %.not63.i.i, label %bb.ax, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cp = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !280 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.co, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.cr, align 8, !tbaa !192 ; 2 uses
  %i.cs = getelementptr i8, ptr %.val.i.i.i.i.i, i64 168
  %.val6.i.i.i.i.i = load i64, ptr %i.cs, align 8, !tbaa !193
  %i.ct = and i64 %.val6.i.i.i.i.i, 2048
  %.not.i.i.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i.i.i, label %_PyVectorcall_FunctionInline.exit.i.i.i.i

_PyVectorcall_FunctionInline.exit.i.i.i.i:        ; preds = %bb.ao
  %i.cu = getelementptr i8, ptr %.val.i.i.i.i.i, i64 56
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !281
  %i.cw = getelementptr i8, ptr %i.co, i64 %i.cv
  %.0.copyload.i.i.i.i.i = load ptr, ptr %i.cw, align 1 ; 2 uses
  %i.cx = icmp eq ptr %.0.copyload.i.i.i.i.i, null
  br i1 %i.cx, label %_PyVectorcall_FunctionInline.exit.thread.i.i.i.i, label %bb.ap

_PyVectorcall_FunctionInline.exit.thread.i.i.i.i: ; preds = %_PyVectorcall_FunctionInline.exit.i.i.i.i, %bb.ao
  %i.cy = call ptr @_PyObject_MakeTpCall(ptr noundef %i.cq, ptr noundef nonnull %i.co, ptr noundef null, i64 noundef 0, ptr noundef null) #9
  br label %_PyObject_CallNoArgs.exit.i.i

bb.ap:                                            ; preds = %_PyVectorcall_FunctionInline.exit.i.i.i.i
  %i.cz = call ptr %.0.copyload.i.i.i.i.i(ptr noundef nonnull %i.co, ptr noundef null, i64 noundef 0, ptr noundef null) #9, !inline_history !277
  %i.da = call ptr @_Py_CheckFunctionResult(ptr noundef %i.cq, ptr noundef nonnull %i.co, ptr noundef %i.cz, ptr noundef null) #9
  br label %_PyObject_CallNoArgs.exit.i.i

_PyObject_CallNoArgs.exit.i.i:                    ; preds = %bb.ap, %_PyVectorcall_FunctionInline.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.cy, %_PyVectorcall_FunctionInline.exit.thread.i.i.i.i ], [ %i.da, %bb.ap ] ; 8 uses
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !161 ; 3 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !165 ; 2 uses
  %.not.i71.i.i = icmp sgt i32 %i.dc, -1
  br i1 %.not.i71.i.i, label %bb.aq, label %Py_DECREF.exit72.i.i

bb.aq:                                            ; preds = %_PyObject_CallNoArgs.exit.i.i
  %i.dd = add nsw i32 %i.dc, -1                   ; 2 uses
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !165
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.ar, label %Py_DECREF.exit72.i.i

bb.ar:                                            ; preds = %bb.aq
  call void @_Py_Dealloc(ptr noundef nonnull %i.db) #9
  br label %Py_DECREF.exit72.i.i

Py_DECREF.exit72.i.i:                             ; preds = %bb.ar, %bb.aq, %_PyObject_CallNoArgs.exit.i.i
  %i.df = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.df, label %Py_XINCREF.exit.i.i, label %bb.as

bb.as:                                            ; preds = %Py_DECREF.exit72.i.i
  %.not69.i.i = icmp eq ptr %.0.i.i.i.i, @_Py_NoneStruct
  br i1 %.not69.i.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dg = getelementptr i8, ptr %.0.i.i.i.i, i64 8
  %.val77.i.i = load ptr, ptr %i.dg, align 8, !tbaa !192
  %i.dh = getelementptr i8, ptr %.val77.i.i, i64 168
  %.val79.i.i = load i64, ptr %i.dh, align 8, !tbaa !193
  %i.di = and i64 %.val79.i.i, 134217728
  %.not70.i.i = icmp eq i64 %i.di, 0
  br i1 %.not70.i.i, label %bb.au, label %.thread99.i.i

bb.au:                                            ; preds = %bb.at
  %i.dj = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !161
  call void @PyErr_SetString(ptr noundef %i.dj, ptr noundef nonnull @.str.54) #9
  br label %Py_XINCREF.exit.i.i

bb.av:                                            ; preds = %bb.as
  br i1 %.not6197.i.i, label %.thread153.i.i, label %bb.bl

.thread99.i.i:                                    ; preds = %bb.at
  br i1 %.not6197.i.i, label %bb.bl, label %bb.aw

bb.aw:                                            ; preds = %.thread99.i.i
  call void @PyBytes_Concat(ptr noundef nonnull %i.b, ptr noundef nonnull %.0.i.i.i.i) #9
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !161
  br label %bb.bl

bb.ax:                                            ; preds = %bb.an
  %i.dk = call ptr @PyList_New(i64 noundef 0) #9  ; 8 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %Py_XINCREF.exit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ax
  %i.dm = getelementptr i8, ptr %0, i64 48        ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %.backedge, %.preheader.i.i
  %i.dn = phi ptr [ %i.bl, %.preheader.i.i ], [ %i.dv, %.backedge ] ; 2 uses
  %.036.i.i = phi i64 [ %i.bm, %.preheader.i.i ], [ %i.ef, %.backedge ] ; 2 uses
  %.not64.i.i = icmp eq ptr %i.dn, null
  br i1 %.not64.i.i, label %Py_DECREF.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.do = call i32 @PyList_Append(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.dn) #9
  %i.dp = icmp slt i32 %i.do, 0
  br i1 %i.dp, label %Py_XINCREF.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dq = load ptr, ptr %i.b, align 8, !tbaa !161 ; 4 uses
  %.not65.i.i = icmp eq ptr %i.dq, null
  br i1 %.not65.i.i, label %Py_DECREF.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !165 ; 2 uses
  %.not.i.i55.i = icmp sgt i32 %i.dr, -1
  br i1 %.not.i.i55.i, label %bb.bc, label %Py_DECREF.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.ds = add nsw i32 %i.dr, -1                   ; 2 uses
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !165
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.bd, label %Py_DECREF.exit.i.i

bb.bd:                                            ; preds = %bb.bc
  call void @_Py_Dealloc(ptr noundef nonnull %i.dq) #9
  br label %Py_DECREF.exit.i.i

Py_DECREF.exit.i.i:                               ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ay
  %i.du = load ptr, ptr %i.ck, align 8, !tbaa !212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.du, ptr %i.a, align 8, !tbaa !161
  %i.dv = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 96800), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #9 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.dv, ptr %i.b, align 8, !tbaa !161
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %Py_XDECREF.exit91.i.i, label %bb.be

bb.be:                                            ; preds = %Py_DECREF.exit.i.i
  %.not66.i.i = icmp eq ptr %i.dv, @_Py_NoneStruct
  br i1 %.not66.i.i, label %.thread101.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dx = getelementptr i8, ptr %i.dv, i64 8
  %.val.i.i = load ptr, ptr %i.dx, align 8, !tbaa !192
  %i.dy = getelementptr i8, ptr %.val.i.i, i64 168
  %.val78.i.i = load i64, ptr %i.dy, align 8, !tbaa !193
  %i.dz = and i64 %.val78.i.i, 134217728
  %.not67.i.i = icmp eq i64 %i.dz, 0
  br i1 %.not67.i.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ea = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !161
  call void @PyErr_SetString(ptr noundef %i.ea, ptr noundef nonnull @.str.18) #9
  br label %Py_XINCREF.exit.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.eb = getelementptr i8, ptr %i.dv, i64 16
  %.val82.i.i = load i64, ptr %i.eb, align 8, !tbaa !167 ; 3 uses
  %i.ec = icmp eq i64 %.val82.i.i, 0
  br i1 %i.ec, label %.thread101.i.i, label %bb.bj

.thread101.i.i:                                   ; preds = %bb.bh, %bb.be
  %i.ed = icmp eq i64 %.036.i.i, 0
  br i1 %i.ed, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %.thread101.i.i
  %i.ee = call ptr @PyBytes_Join(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 47096), ptr noundef nonnull %i.dk) #9 ; 2 uses
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %i.ef = add i64 %.val82.i.i, %.036.i.i
  %i.eg = load i64, ptr %i.dm, align 8, !tbaa !231 ; 2 uses
  %.not68.i.i = icmp eq i64 %i.eg, -1
  br i1 %.not68.i.i, label %.backedge, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eh = add i64 %i.eg, %.val82.i.i
  store i64 %i.eh, ptr %i.dm, align 8, !tbaa !231
  br label %.backedge

.backedge:                                        ; preds = %bb.bk, %bb.bj
  br label %bb.ay

bb.bl:                                            ; preds = %bb.bi, %.thread101.i.i, %bb.aw, %.thread99.i.i, %bb.av
  %.2.i.i = phi ptr [ %.0.i.i.i.i, %.thread99.i.i ], [ %i.ee, %bb.bi ], [ %.0.i.i.i.i, %bb.aw ], [ null, %.thread101.i.i ], [ @_Py_NoneStruct, %bb.av ] ; 2 uses
  %.035.i.i = phi ptr [ %.0.i.i.i.i, %.thread99.i.i ], [ %i.ee, %bb.bi ], [ %.pre.i.i, %bb.aw ], [ %i.dv, %.thread101.i.i ], [ %i.bl, %bb.av ] ; 2 uses
  %.0.i54.i = phi ptr [ null, %.thread99.i.i ], [ %i.dk, %bb.bi ], [ null, %bb.aw ], [ %i.dk, %.thread101.i.i ], [ null, %bb.av ] ; 2 uses
  %.not.i84.i.i = icmp eq ptr %.035.i.i, null
  br i1 %.not.i84.i.i, label %Py_XINCREF.exit.i.i, label %.thread153.i.i

.thread153.i.i:                                   ; preds = %bb.bl, %bb.av
  %.0160.i.i = phi ptr [ %.0.i54.i, %bb.bl ], [ null, %bb.av ] ; 2 uses
  %.035159.i.i = phi ptr [ %.035.i.i, %bb.bl ], [ @_Py_NoneStruct, %bb.av ] ; 4 uses
  %.2158.i.i = phi ptr [ %.2.i.i, %bb.bl ], [ @_Py_NoneStruct, %bb.av ] ; 2 uses
  %i.ei = load i32, ptr %.035159.i.i, align 8, !tbaa !165 ; 2 uses
  %i.ej = icmp ugt i32 %i.ei, -1073741825
  br i1 %i.ej, label %Py_XINCREF.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %.thread153.i.i
  %i.ek = add nuw i32 %i.ei, 1
  store i32 %i.ek, ptr %.035159.i.i, align 8, !tbaa !165
  br label %Py_XINCREF.exit.i.i

Py_XINCREF.exit.i.i:                              ; preds = %bb.az, %bb.bm, %.thread153.i.i, %bb.bl, %bb.bg, %bb.ax, %bb.au, %Py_DECREF.exit72.i.i, %Py_DECREF.exit74.i.i, %bb.ak, %bb.ab
  %.0110.ph.i.i = phi ptr [ null, %bb.ab ], [ null, %bb.ak ], [ null, %Py_DECREF.exit74.i.i ], [ null, %Py_DECREF.exit72.i.i ], [ %i.dk, %bb.bg ], [ null, %bb.au ], [ null, %bb.ax ], [ %.0160.i.i, %bb.bm ], [ %.0160.i.i, %.thread153.i.i ], [ %.0.i54.i, %bb.bl ], [ %i.dk, %bb.az ] ; 4 uses
  %.035109.ph.i.i = phi ptr [ null, %bb.ab ], [ null, %bb.ak ], [ null, %Py_DECREF.exit74.i.i ], [ null, %Py_DECREF.exit72.i.i ], [ null, %bb.bg ], [ null, %bb.au ], [ null, %bb.ax ], [ %.035159.i.i, %bb.bm ], [ %.035159.i.i, %.thread153.i.i ], [ null, %bb.bl ], [ null, %bb.az ] ; 4 uses
  %.2108.ph.i.i = phi ptr [ null, %bb.ab ], [ null, %bb.ak ], [ null, %Py_DECREF.exit74.i.i ], [ null, %Py_DECREF.exit72.i.i ], [ null, %bb.bg ], [ %.0.i.i.i.i, %bb.au ], [ null, %bb.ax ], [ %.2158.i.i, %bb.bm ], [ %.2158.i.i, %.thread153.i.i ], [ %.2.i.i, %bb.bl ], [ null, %bb.az ] ; 4 uses
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !161 ; 4 uses
  %.not.i85.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i85.i.i, label %Py_XDECREF.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %Py_XINCREF.exit.i.i
  %i.el = load i32, ptr %.pr.i.i, align 8, !tbaa !165 ; 2 uses
  %.not.i.i86.i.i = icmp sgt i32 %i.el, -1
  br i1 %.not.i.i86.i.i, label %bb.bo, label %Py_XDECREF.exit.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.em = add nsw i32 %i.el, -1                   ; 2 uses
  store i32 %i.em, ptr %.pr.i.i, align 8, !tbaa !165
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.bp, label %Py_XDECREF.exit.i.i

bb.bp:                                            ; preds = %bb.bo
  call void @_Py_Dealloc(ptr noundef nonnull %.pr.i.i) #9
  br label %Py_XDECREF.exit.i.i

Py_XDECREF.exit.i.i:                              ; preds = %bb.bp, %bb.bo, %bb.bn, %Py_XINCREF.exit.i.i
  %.not.i88.i.i = icmp eq ptr %.2108.ph.i.i, null
  br i1 %.not.i88.i.i, label %Py_XDECREF.exit91.i.i, label %bb.bq

bb.bq:                                            ; preds = %Py_XDECREF.exit.i.i
  %i.eo = load i32, ptr %.2108.ph.i.i, align 8, !tbaa !165 ; 2 uses
  %.not.i.i89.i.i = icmp sgt i32 %i.eo, -1
  br i1 %.not.i.i89.i.i, label %bb.br, label %Py_XDECREF.exit91.i.i

bb.br:                                            ; preds = %bb.bq
  %i.ep = add nsw i32 %i.eo, -1                   ; 2 uses
  store i32 %i.ep, ptr %.2108.ph.i.i, align 8, !tbaa !165
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.bs, label %Py_XDECREF.exit91.i.i

bb.bs:                                            ; preds = %bb.br
  call void @_Py_Dealloc(ptr noundef nonnull %.2108.ph.i.i) #9
  br label %Py_XDECREF.exit91.i.i

Py_XDECREF.exit91.i.i:                            ; preds = %Py_DECREF.exit.i.i, %bb.bs, %bb.br, %bb.bq, %Py_XDECREF.exit.i.i
  %.0110115123.i.i = phi ptr [ %.0110.ph.i.i, %bb.bs ], [ %.0110.ph.i.i, %Py_XDECREF.exit.i.i ], [ %.0110.ph.i.i, %bb.bq ], [ %.0110.ph.i.i, %bb.br ], [ %i.dk, %Py_DECREF.exit.i.i ] ; 4 uses
  %.035109116122.i.i = phi ptr [ %.035109.ph.i.i, %bb.bs ], [ %.035109.ph.i.i, %Py_XDECREF.exit.i.i ], [ %.035109.ph.i.i, %bb.bq ], [ %.035109.ph.i.i, %bb.br ], [ null, %Py_DECREF.exit.i.i ] ; 4 uses
  %.not.i92.i.i = icmp eq ptr %.0110115123.i.i, null
  br i1 %.not.i92.i.i, label %_bufferedreader_read_all.exit.i, label %bb.bt

bb.bt:                                            ; preds = %Py_XDECREF.exit91.i.i
  %i.er = load i32, ptr %.0110115123.i.i, align 8, !tbaa !165 ; 2 uses
  %.not.i.i93.i.i = icmp sgt i32 %i.er, -1
  br i1 %.not.i.i93.i.i, label %bb.bu, label %_bufferedreader_read_all.exit.i

bb.bu:                                            ; preds = %bb.bt
  %i.es = add nsw i32 %i.er, -1                   ; 2 uses
  store i32 %i.es, ptr %.0110115123.i.i, align 8, !tbaa !165
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.bv, label %_bufferedreader_read_all.exit.i

bb.bv:                                            ; preds = %bb.bu
  call void @_Py_Dealloc(ptr noundef nonnull %.0110115123.i.i) #9
  br label %_bufferedreader_read_all.exit.i

_bufferedreader_read_all.exit.i:                  ; preds = %bb.bv, %bb.bu, %bb.bt, %Py_XDECREF.exit91.i.i, %bb.z
  %.037.i.i = phi ptr [ null, %bb.z ], [ %.035109116122.i.i, %Py_XDECREF.exit91.i.i ], [ %.035109116122.i.i, %bb.bt ], [ %.035109116122.i.i, %bb.bu ], [ %.035109116122.i.i, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.cf

bb.bw:                                            ; preds = %bb.t
  %i.eu = getelementptr i8, ptr %0, i64 32
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !220
  %.not.i56.i = icmp eq i32 %i.ev, 0
  br i1 %.not.i56.i, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ew = getelementptr i8, ptr %0, i64 80
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !222 ; 2 uses
  %.not16.i.i = icmp eq i64 %i.ex, -1
  br i1 %.not16.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ey = getelementptr i8, ptr %0, i64 64
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !225
  %i.fa = sub i64 %i.ex, %i.ez
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %i.fb = phi i64 [ %i.fa, %bb.by ], [ 0, %bb.bx ], [ 0, %bb.bw ]
  %.not17.i.i = icmp sgt i64 %i.t, %i.fb
  br i1 %.not17.i.i, label %_bufferedreader_read_fast.exit.thread.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fc = load ptr, ptr %i.u, align 8, !tbaa !208
  %i.fd = getelementptr i8, ptr %0, i64 64        ; 3 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !225
  %i.ff = getelementptr i8, ptr %i.fc, i64 %i.fe
  %i.fg = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.ff, i64 noundef %i.t) #9 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.fg, null
  br i1 %.not18.i.i, label %_io__Buffered_read_impl.exit, label %_bufferedreader_read_fast.exit.i

_bufferedreader_read_fast.exit.i:                 ; preds = %bb.ca
  %i.fh = load i64, ptr %i.fd, align 8, !tbaa !225
  %i.fi = add i64 %i.fh, %i.t
  store i64 %i.fi, ptr %i.fd, align 8, !tbaa !225
  %.not44.i = icmp eq ptr %i.fg, @_Py_NoneStruct
  br i1 %.not44.i, label %_bufferedreader_read_fast.exit.thread.i, label %_io__Buffered_read_impl.exit

_bufferedreader_read_fast.exit.thread.i:          ; preds = %_bufferedreader_read_fast.exit.i, %bb.bz
  %i.fj = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !165 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.fj, -1
  br i1 %.not.i.i, label %bb.cb, label %Py_DECREF.exit.i

bb.cb:                                            ; preds = %_bufferedreader_read_fast.exit.thread.i
  %i.fk = add nsw i32 %i.fj, -1                   ; 2 uses
  store i32 %i.fk, ptr @_Py_NoneStruct, align 8, !tbaa !165
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.cc, label %Py_DECREF.exit.i

bb.cc:                                            ; preds = %bb.cb
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #9
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.cc, %bb.cb, %_bufferedreader_read_fast.exit.thread.i
  %i.fm = getelementptr i8, ptr %0, i64 104
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !209
  %i.fo = call i32 @PyThread_acquire_lock(ptr noundef %i.fn, i32 noundef 0) #9
  %.not45.i = icmp eq i32 %i.fo, 0
  br i1 %.not45.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %Py_DECREF.exit.i
  %i.fp = call fastcc i32 @_enter_buffered_busy(ptr noundef nonnull %0)
  %.not46.i = icmp eq i32 %i.fp, 0
  br i1 %.not46.i, label %_io__Buffered_read_impl.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %Py_DECREF.exit.i
  %i.fq = call i64 @PyThread_get_thread_ident() #9
  %i.fr = getelementptr i8, ptr %0, i64 112
  store volatile i64 %i.fq, ptr %i.fr, align 8, !tbaa !226
  %i.fs = call fastcc ptr @_bufferedreader_read_generic(ptr noundef nonnull %0, i64 noundef %i.t)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %_bufferedreader_read_all.exit.i
  %.033.i = phi ptr [ %.037.i.i, %_bufferedreader_read_all.exit.i ], [ %i.fs, %bb.ce ]
  %i.ft = getelementptr i8, ptr %0, i64 112
  store volatile i64 0, ptr %i.ft, align 8, !tbaa !226
  %i.fu = getelementptr i8, ptr %0, i64 104
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !209
  call void @PyThread_release_lock(ptr noundef %i.fv) #9
  br label %_io__Buffered_read_impl.exit

_io__Buffered_read_impl.exit:                     ; preds = %bb.cf, %bb.cd, %_bufferedreader_read_fast.exit.i, %bb.ca, %bb.v, %.critedge.i, %buffered_closed.exit.i, %bb.m, %bb.j, %bb.h, %bb.g, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.cd ], [ null, %bb.j ], [ %.033.i, %bb.cf ], [ null, %bb.g ], [ null, %bb.v ], [ %i.fg, %_bufferedreader_read_fast.exit.i ], [ null, %bb.h ], [ null, %.critedge.i ], [ null, %buffered_closed.exit.i ], [ null, %bb.m ], [ null, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_io__Buffered_peek(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 !guid !282 {
bb.a:
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.44, i64 noundef %2, i64 noundef 0, i64 noundef 1) #9
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_io__Buffered_peek_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !161
  %i.d = tail call ptr @_PyNumber_Index(ptr noundef %i.c) #9 ; 5 uses
  %.not20 = icmp eq ptr %i.d, null
  br i1 %.not20, label %Py_DECREF.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.d) #9
  %i.f = load i32, ptr %i.d, align 8, !tbaa !165  ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.d, align 8, !tbaa !165
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e
  %i.i = icmp eq i64 %i.e, -1
  br i1 %i.i, label %Py_DECREF.exit.thread, label %.thread

Py_DECREF.exit.thread:                            ; preds = %bb.d, %Py_DECREF.exit
  %i.j = tail call ptr @PyErr_Occurred() #9
  %.not21 = icmp eq ptr %i.j, null
  br i1 %.not21, label %.thread, label %_io__Buffered_peek_impl.exit

.thread:                                          ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit, %bb.c
  %i.k = getelementptr i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !207
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.thread
  %i.n = getelementptr i8, ptr %0, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !213
  %.not41.i = icmp eq i32 %i.o, 0
  %i.p = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !161 ; 2 uses
  br i1 %.not41.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.24) #9
  br label %_io__Buffered_peek_impl.exit

bb.j:                                             ; preds = %bb.h
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.25) #9
  br label %_io__Buffered_peek_impl.exit

bb.k:                                             ; preds = %.thread
  %i.q = getelementptr i8, ptr %0, i64 56         ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !208
  %.not.i22 = icmp eq ptr %i.r, null
  br i1 %.not.i22, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = getelementptr i8, ptr %0, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !224
  %.not34.i = icmp eq i32 %i.t, 0
  %i.u = getelementptr i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !212  ; 2 uses
  br i1 %.not34.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = tail call i32 @_PyFileIO_closed(ptr noundef %i.v) #9
  br label %buffered_closed.exit.i

bb.n:                                             ; preds = %bb.l
  %i.x = tail call ptr @PyObject_GetAttr(ptr noundef %i.v, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77912)) #9 ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_io__Buffered_peek_impl.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = tail call i32 @PyObject_IsTrue(ptr noundef nonnull %i.x) #9 ; 3 uses
  %i.aa = load i32, ptr %i.x, align 8, !tbaa !165 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.aa, -1
  br i1 %.not.i.i.i, label %bb.p, label %buffered_closed.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %i.x, align 8, !tbaa !165
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.q, label %buffered_closed.exit.i

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.x) #9
  br label %buffered_closed.exit.i

buffered_closed.exit.i:                           ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  %i.ad = phi i32 [ %i.z, %bb.p ], [ %i.w, %bb.m ], [ %i.z, %bb.o ], [ %i.z, %bb.q ] ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %_io__Buffered_peek_impl.exit, label %bb.r

bb.r:                                             ; preds = %buffered_closed.exit.i
  %.not35.i = icmp eq i32 %i.ad, 0
  br i1 %.not35.i, label %bb.u, label %.thread.i

.thread.i:                                        ; preds = %bb.r, %bb.k
  %i.af = getelementptr i8, ptr %0, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !220
  %.not36.i = icmp eq i32 %i.ag, 0
  br i1 %.not36.i, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %.thread.i
  %i.ah = getelementptr i8, ptr %0, i64 80
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !222 ; 2 uses
  %.not37.i = icmp eq i64 %i.ai, -1
  br i1 %.not37.i, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = getelementptr i8, ptr %0, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !225
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %.critedge.i, label %bb.u

.critedge.i:                                      ; preds = %bb.t, %bb.s, %.thread.i
  %i.am = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !161
  tail call void @PyErr_SetString(ptr noundef %i.am, ptr noundef nonnull @.str.55) #9
  br label %_io__Buffered_peek_impl.exit

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.an = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !209
  %i.ap = tail call i32 @PyThread_acquire_lock(ptr noundef %i.ao, i32 noundef 0) #9
  %.not38.i = icmp eq i32 %i.ap, 0
  br i1 %.not38.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aq = tail call fastcc i32 @_enter_buffered_busy(ptr noundef nonnull %0)
  %.not39.i = icmp eq i32 %i.aq, 0
  br i1 %.not39.i, label %_io__Buffered_peek_impl.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ar = tail call i64 @PyThread_get_thread_ident() #9
  %i.as = getelementptr i8, ptr %0, i64 112       ; 2 uses
  store volatile i64 %i.ar, ptr %i.as, align 8, !tbaa !226
  %i.at = getelementptr i8, ptr %0, i64 36        ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !221
  %.not40.i = icmp eq i32 %i.au, 0
  br i1 %.not40.i, label %Py_DECREF.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = tail call fastcc ptr @_bufferedwriter_flush_unlocked(ptr noundef nonnull %0) ; 4 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_bufferedreader_peek_unlocked.exit.i, label %bb.y

end_hunk_0
