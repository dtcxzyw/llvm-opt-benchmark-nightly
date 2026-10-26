Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/bufferedio?download=true
inline.NumInlined: 217
inline.NumDeleted: 75
begin_hunk_0_@_io__Buffered_read:bb.a
  %i.ca = getelementptr i8, ptr %0, i64 72
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !79 ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, -1
  br i1 %i.cc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cd = getelementptr i8, ptr %0, i64 64
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !77
  %.neg.i.i.i = sub i64 %i.ce, %i.cb
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.neg21.i.i.i = phi i64 [ %.neg.i.i.i, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.ag ]
  %i.cf = call fastcc i64 @_buffered_raw_seek(ptr noundef nonnull %0, i64 noundef %.neg21.i.i.i, i32 noundef 1)
  store i64 -1, ptr %i.bv, align 8, !tbaa !74
  %.not22.i.i.i = icmp eq i64 %i.cf, -1
  br i1 %.not22.i.i.i, label %Py_XINCREF.exit.i.i, label %buffered_flush_and_rewind_unlocked.exit.i.i

buffered_flush_and_rewind_unlocked.exit.i.i:      ; preds = %bb.ak, %Py_DECREF.exit.i.i.i
  %i.cg = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !17 ; 2 uses
  %.not.i73.i.i = icmp sgt i32 %i.cg, -1
  br i1 %.not.i73.i.i, label %bb.al, label %Py_DECREF.exit74.i.i

bb.al:                                            ; preds = %buffered_flush_and_rewind_unlocked.exit.i.i
  %i.ch = add nsw i32 %i.cg, -1                   ; 2 uses
  store i32 %i.ch, ptr @_Py_NoneStruct, align 8, !tbaa !17
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.am, label %Py_DECREF.exit74.i.i

bb.am:                                            ; preds = %bb.al
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #9
  br label %Py_DECREF.exit74.i.i

Py_DECREF.exit74.i.i:                             ; preds = %bb.am, %bb.al, %buffered_flush_and_rewind_unlocked.exit.i.i, %.thread.i.i
  %i.cj = getelementptr i8, ptr %0, i64 80
  store i64 -1, ptr %i.cj, align 8, !tbaa !74
  %i.ck = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !64
  %i.cm = call i32 @PyObject_GetOptionalAttr(ptr noundef %i.cl, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 96952), ptr noundef nonnull %i.c) #9
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %Py_XINCREF.exit.i.i, label %bb.an

bb.an:                                            ; preds = %Py_DECREF.exit74.i.i
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !13  ; 6 uses
  %.not63.i.i = icmp eq ptr %i.co, null
  br i1 %.not63.i.i, label %bb.ax, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cp = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !101 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.co, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.cr, align 8, !tbaa !44 ; 2 uses
  %i.cs = getelementptr i8, ptr %.val.i.i.i.i.i, i64 168
  %.val6.i.i.i.i.i = load i64, ptr %i.cs, align 8, !tbaa !45
  %i.ct = and i64 %.val6.i.i.i.i.i, 2048
  %.not.i.i.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i.i.i, label %_PyVectorcall_FunctionInline.exit.i.i.i.i

_PyVectorcall_FunctionInline.exit.i.i.i.i:        ; preds = %bb.ao
  %i.cu = getelementptr i8, ptr %.val.i.i.i.i.i, i64 56
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !102
  %i.cw = getelementptr i8, ptr %i.co, i64 %i.cv
  %.0.copyload.i.i.i.i.i = load ptr, ptr %i.cw, align 1 ; 2 uses
  %i.cx = icmp eq ptr %.0.copyload.i.i.i.i.i, null
  br i1 %i.cx, label %_PyVectorcall_FunctionInline.exit.thread.i.i.i.i, label %bb.ap

_PyVectorcall_FunctionInline.exit.thread.i.i.i.i: ; preds = %_PyVectorcall_FunctionInline.exit.i.i.i.i, %bb.ao
  %i.cy = call ptr @_PyObject_MakeTpCall(ptr noundef %i.cq, ptr noundef nonnull %i.co, ptr noundef null, i64 noundef 0, ptr noundef null) #9
  br label %_PyObject_CallNoArgs.exit.i.i

bb.ap:                                            ; preds = %_PyVectorcall_FunctionInline.exit.i.i.i.i
  %i.cz = call ptr %.0.copyload.i.i.i.i.i(ptr noundef nonnull %i.co, ptr noundef null, i64 noundef 0, ptr noundef null) #9, !inline_history !99
  %i.da = call ptr @_Py_CheckFunctionResult(ptr noundef %i.cq, ptr noundef nonnull %i.co, ptr noundef %i.cz, ptr noundef null) #9
  br label %_PyObject_CallNoArgs.exit.i.i

_PyObject_CallNoArgs.exit.i.i:                    ; preds = %bb.ap, %_PyVectorcall_FunctionInline.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.cy, %_PyVectorcall_FunctionInline.exit.thread.i.i.i.i ], [ %i.da, %bb.ap ] ; 8 uses
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !17 ; 2 uses
  %.not.i71.i.i = icmp sgt i32 %i.dc, -1
  br i1 %.not.i71.i.i, label %bb.aq, label %Py_DECREF.exit72.i.i

bb.aq:                                            ; preds = %_PyObject_CallNoArgs.exit.i.i
  %i.dd = add nsw i32 %i.dc, -1                   ; 2 uses
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !17
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
  %.val77.i.i = load ptr, ptr %i.dg, align 8, !tbaa !44
  %i.dh = getelementptr i8, ptr %.val77.i.i, i64 168
  %.val79.i.i = load i64, ptr %i.dh, align 8, !tbaa !45
  %i.di = and i64 %.val79.i.i, 134217728
  %.not70.i.i = icmp eq i64 %i.di, 0
  br i1 %.not70.i.i, label %bb.au, label %.thread99.i.i

bb.au:                                            ; preds = %bb.at
  %i.dj = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13
  call void @PyErr_SetString(ptr noundef %i.dj, ptr noundef nonnull @.str.54) #9
  br label %Py_XINCREF.exit.i.i

bb.av:                                            ; preds = %bb.as
  br i1 %.not6197.i.i, label %.thread153.i.i, label %bb.bl

.thread99.i.i:                                    ; preds = %bb.at
  br i1 %.not6197.i.i, label %bb.bl, label %bb.aw

bb.aw:                                            ; preds = %.thread99.i.i
  call void @PyBytes_Concat(ptr noundef nonnull %i.b, ptr noundef nonnull %.0.i.i.i.i) #9
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !13
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
  %i.dq = load ptr, ptr %i.b, align 8, !tbaa !13  ; 4 uses
  %.not65.i.i = icmp eq ptr %i.dq, null
  br i1 %.not65.i.i, label %Py_DECREF.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !17 ; 2 uses
  %.not.i.i55.i = icmp sgt i32 %i.dr, -1
  br i1 %.not.i.i55.i, label %bb.bc, label %Py_DECREF.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.ds = add nsw i32 %i.dr, -1                   ; 2 uses
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !17
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.bd, label %Py_DECREF.exit.i.i

bb.bd:                                            ; preds = %bb.bc
  call void @_Py_Dealloc(ptr noundef nonnull %i.dq) #9
  br label %Py_DECREF.exit.i.i

Py_DECREF.exit.i.i:                               ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ay
  %i.du = load ptr, ptr %i.ck, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.du, ptr %i.a, align 8, !tbaa !13
  %i.dv = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 96800), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #9 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.dv, ptr %i.b, align 8, !tbaa !13
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %Py_XDECREF.exit91.i.i, label %bb.be

bb.be:                                            ; preds = %Py_DECREF.exit.i.i
  %.not66.i.i = icmp eq ptr %i.dv, @_Py_NoneStruct
  br i1 %.not66.i.i, label %.thread101.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dx = getelementptr i8, ptr %i.dv, i64 8
  %.val.i.i = load ptr, ptr %i.dx, align 8, !tbaa !44
  %i.dy = getelementptr i8, ptr %.val.i.i, i64 168
  %.val78.i.i = load i64, ptr %i.dy, align 8, !tbaa !45
  %i.dz = and i64 %.val78.i.i, 134217728
  %.not67.i.i = icmp eq i64 %i.dz, 0
  br i1 %.not67.i.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ea = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13
  call void @PyErr_SetString(ptr noundef %i.ea, ptr noundef nonnull @.str.18) #9
  br label %Py_XINCREF.exit.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.eb = getelementptr i8, ptr %i.dv, i64 16
  %.val82.i.i = load i64, ptr %i.eb, align 8, !tbaa !19 ; 3 uses
  %i.ec = icmp eq i64 %.val82.i.i, 0
  br i1 %i.ec, label %.thread101.i.i, label %bb.bj

.thread101.i.i:                                   ; preds = %bb.bh, %bb.be
  %.lcssa60 = phi ptr [ %i.dv, %bb.bh ], [ @_Py_NoneStruct, %bb.be ]
  %i.ed = icmp eq i64 %.036.i.i, 0
  br i1 %i.ed, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %.thread101.i.i
  %i.ee = call ptr @PyBytes_Join(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 47096), ptr noundef nonnull %i.dk) #9 ; 2 uses
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %i.ef = add i64 %.val82.i.i, %.036.i.i
  %i.eg = load i64, ptr %i.dm, align 8, !tbaa !83 ; 2 uses
  %.not68.i.i = icmp eq i64 %i.eg, -1
  br i1 %.not68.i.i, label %.backedge, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eh = add i64 %i.eg, %.val82.i.i
  store i64 %i.eh, ptr %i.dm, align 8, !tbaa !83
  br label %.backedge

.backedge:                                        ; preds = %bb.bk, %bb.bj
  br label %bb.ay

bb.bl:                                            ; preds = %bb.bi, %.thread101.i.i, %bb.aw, %.thread99.i.i, %bb.av
  %.2.i.i = phi ptr [ %.0.i.i.i.i, %.thread99.i.i ], [ %i.ee, %bb.bi ], [ %.0.i.i.i.i, %bb.aw ], [ null, %.thread101.i.i ], [ @_Py_NoneStruct, %bb.av ] ; 2 uses
  %.035.i.i = phi ptr [ %.0.i.i.i.i, %.thread99.i.i ], [ %i.ee, %bb.bi ], [ %.pre.i.i, %bb.aw ], [ %.lcssa60, %.thread101.i.i ], [ %i.bl, %bb.av ] ; 2 uses
  %.0.i54.i = phi ptr [ null, %.thread99.i.i ], [ %i.dk, %bb.bi ], [ null, %bb.aw ], [ %i.dk, %.thread101.i.i ], [ null, %bb.av ] ; 2 uses
  %.not.i84.i.i = icmp eq ptr %.035.i.i, null
  br i1 %.not.i84.i.i, label %Py_XINCREF.exit.i.i, label %.thread153.i.i

.thread153.i.i:                                   ; preds = %bb.bl, %bb.av
  %.0160.i.i = phi ptr [ %.0.i54.i, %bb.bl ], [ null, %bb.av ] ; 2 uses
  %.035159.i.i = phi ptr [ %.035.i.i, %bb.bl ], [ @_Py_NoneStruct, %bb.av ] ; 4 uses
  %.2158.i.i = phi ptr [ %.2.i.i, %bb.bl ], [ @_Py_NoneStruct, %bb.av ] ; 2 uses
  %i.ei = load i32, ptr %.035159.i.i, align 8, !tbaa !17 ; 2 uses
  %i.ej = icmp ugt i32 %i.ei, -1073741825
  br i1 %i.ej, label %Py_XINCREF.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %.thread153.i.i
  %i.ek = add nuw i32 %i.ei, 1
  store i32 %i.ek, ptr %.035159.i.i, align 8, !tbaa !17
  br label %Py_XINCREF.exit.i.i

Py_XINCREF.exit.i.i:                              ; preds = %bb.az, %bb.bm, %.thread153.i.i, %bb.bl, %bb.bg, %bb.ax, %bb.au, %Py_DECREF.exit72.i.i, %Py_DECREF.exit74.i.i, %bb.ak, %bb.ab
  %.0110.ph.i.i = phi ptr [ null, %bb.ab ], [ null, %bb.ak ], [ null, %Py_DECREF.exit74.i.i ], [ null, %Py_DECREF.exit72.i.i ], [ %i.dk, %bb.bg ], [ null, %bb.au ], [ null, %bb.ax ], [ %.0160.i.i, %bb.bm ], [ %.0160.i.i, %.thread153.i.i ], [ %.0.i54.i, %bb.bl ], [ %i.dk, %bb.az ] ; 4 uses
  %.035109.ph.i.i = phi ptr [ null, %bb.ab ], [ null, %bb.ak ], [ null, %Py_DECREF.exit74.i.i ], [ null, %Py_DECREF.exit72.i.i ], [ null, %bb.bg ], [ null, %bb.au ], [ null, %bb.ax ], [ %.035159.i.i, %bb.bm ], [ %.035159.i.i, %.thread153.i.i ], [ null, %bb.bl ], [ null, %bb.az ] ; 4 uses
  %.2108.ph.i.i = phi ptr [ null, %bb.ab ], [ null, %bb.ak ], [ null, %Py_DECREF.exit74.i.i ], [ null, %Py_DECREF.exit72.i.i ], [ null, %bb.bg ], [ %.0.i.i.i.i, %bb.au ], [ null, %bb.ax ], [ %.2158.i.i, %bb.bm ], [ %.2158.i.i, %.thread153.i.i ], [ %.2.i.i, %bb.bl ], [ null, %bb.az ] ; 4 uses
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !13 ; 4 uses
  %.not.i85.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i85.i.i, label %Py_XDECREF.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %Py_XINCREF.exit.i.i
  %i.el = load i32, ptr %.pr.i.i, align 8, !tbaa !17 ; 2 uses
  %.not.i.i86.i.i = icmp sgt i32 %i.el, -1
  br i1 %.not.i.i86.i.i, label %bb.bo, label %Py_XDECREF.exit.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.em = add nsw i32 %i.el, -1                   ; 2 uses
  store i32 %i.em, ptr %.pr.i.i, align 8, !tbaa !17
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.bp, label %Py_XDECREF.exit.i.i

bb.bp:                                            ; preds = %bb.bo
  call void @_Py_Dealloc(ptr noundef nonnull %.pr.i.i) #9
  br label %Py_XDECREF.exit.i.i

Py_XDECREF.exit.i.i:                              ; preds = %bb.bp, %bb.bo, %bb.bn, %Py_XINCREF.exit.i.i
  %.not.i88.i.i = icmp eq ptr %.2108.ph.i.i, null
  br i1 %.not.i88.i.i, label %Py_XDECREF.exit91.i.i, label %bb.bq

bb.bq:                                            ; preds = %Py_XDECREF.exit.i.i
  %i.eo = load i32, ptr %.2108.ph.i.i, align 8, !tbaa !17 ; 2 uses
  %.not.i.i89.i.i = icmp sgt i32 %i.eo, -1
  br i1 %.not.i.i89.i.i, label %bb.br, label %Py_XDECREF.exit91.i.i

bb.br:                                            ; preds = %bb.bq
  %i.ep = add nsw i32 %i.eo, -1                   ; 2 uses
  store i32 %i.ep, ptr %.2108.ph.i.i, align 8, !tbaa !17
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
  %i.er = load i32, ptr %.0110115123.i.i, align 8, !tbaa !17 ; 2 uses
  %.not.i.i93.i.i = icmp sgt i32 %i.er, -1
  br i1 %.not.i.i93.i.i, label %bb.bu, label %_bufferedreader_read_all.exit.i

bb.bu:                                            ; preds = %bb.bt
  %i.es = add nsw i32 %i.er, -1                   ; 2 uses
  store i32 %i.es, ptr %.0110115123.i.i, align 8, !tbaa !17
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
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !72
  %.not.i56.i = icmp eq i32 %i.ev, 0
  br i1 %.not.i56.i, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ew = getelementptr i8, ptr %0, i64 80
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !74 ; 2 uses
  %.not16.i.i = icmp eq i64 %i.ex, -1
  br i1 %.not16.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ey = getelementptr i8, ptr %0, i64 64
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !77
  %i.fa = sub i64 %i.ex, %i.ez
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %i.fb = phi i64 [ %i.fa, %bb.by ], [ 0, %bb.bx ], [ 0, %bb.bw ]
  %.not17.i.i = icmp sgt i64 %i.t, %i.fb
  br i1 %.not17.i.i, label %_bufferedreader_read_fast.exit.thread.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fc = load ptr, ptr %i.u, align 8, !tbaa !60
  %i.fd = getelementptr i8, ptr %0, i64 64        ; 3 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !77
  %i.ff = getelementptr i8, ptr %i.fc, i64 %i.fe
  %i.fg = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.ff, i64 noundef %i.t) #9 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.fg, null
  br i1 %.not18.i.i, label %_io__Buffered_read_impl.exit, label %_bufferedreader_read_fast.exit.i

_bufferedreader_read_fast.exit.i:                 ; preds = %bb.ca
  %i.fh = load i64, ptr %i.fd, align 8, !tbaa !77
  %i.fi = add i64 %i.fh, %i.t
  store i64 %i.fi, ptr %i.fd, align 8, !tbaa !77
  %.not44.i = icmp eq ptr %i.fg, @_Py_NoneStruct
  br i1 %.not44.i, label %_bufferedreader_read_fast.exit.thread.i, label %_io__Buffered_read_impl.exit

_bufferedreader_read_fast.exit.thread.i:          ; preds = %_bufferedreader_read_fast.exit.i, %bb.bz
  %i.fj = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !17 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.fj, -1
  br i1 %.not.i.i, label %bb.cb, label %Py_DECREF.exit.i

bb.cb:                                            ; preds = %_bufferedreader_read_fast.exit.thread.i
  %i.fk = add nsw i32 %i.fj, -1                   ; 2 uses
  store i32 %i.fk, ptr @_Py_NoneStruct, align 8, !tbaa !17
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.cc, label %Py_DECREF.exit.i

bb.cc:                                            ; preds = %bb.cb
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #9
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.cc, %bb.cb, %_bufferedreader_read_fast.exit.thread.i
  %i.fm = getelementptr i8, ptr %0, i64 104
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !61
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
  store volatile i64 %i.fq, ptr %i.fr, align 8, !tbaa !78
  %i.fs = call fastcc ptr @_bufferedreader_read_generic(ptr noundef nonnull %0, i64 noundef %i.t)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %_bufferedreader_read_all.exit.i
  %.033.i = phi ptr [ %.037.i.i, %_bufferedreader_read_all.exit.i ], [ %i.fs, %bb.ce ]
  %i.ft = getelementptr i8, ptr %0, i64 112
  store volatile i64 0, ptr %i.ft, align 8, !tbaa !78
  %i.fu = getelementptr i8, ptr %0, i64 104
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !61
  call void @PyThread_release_lock(ptr noundef %i.fv) #9
  br label %_io__Buffered_read_impl.exit

_io__Buffered_read_impl.exit:                     ; preds = %bb.cf, %bb.cd, %_bufferedreader_read_fast.exit.i, %bb.ca, %bb.v, %.critedge.i, %buffered_closed.exit.i, %bb.m, %bb.j, %bb.h, %bb.g, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.cd ], [ null, %bb.j ], [ %.033.i, %bb.cf ], [ null, %bb.g ], [ null, %bb.v ], [ %i.fg, %_bufferedreader_read_fast.exit.i ], [ null, %bb.h ], [ null, %.critedge.i ], [ null, %buffered_closed.exit.i ], [ null, %bb.m ], [ null, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_io__Buffered_peek(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
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
  %i.c = load ptr, ptr %1, align 8, !tbaa !13
  %i.d = tail call ptr @_PyNumber_Index(ptr noundef %i.c) #9 ; 5 uses
  %.not20 = icmp eq ptr %i.d, null
  br i1 %.not20, label %Py_DECREF.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.d) #9
  %i.f = load i32, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit
end_hunk_0
begin_hunk_1_@_bufferedreader_read_generic:bb.a
  %i.e = getelementptr i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !77
  %i.g = sub i64 %i.d, %i.f                       ; 2 uses
  %.not132242 = icmp sgt i64 %1, %i.g
  br i1 %.not132242, label %bb.f, label %bb.d

.thread:                                          ; preds = %bb.a
  %.not132140.not = icmp eq i64 %1, 0
  br i1 %.not132140.not, label %.thread142, label %bb.f

bb.d:                                             ; preds = %.thread241
  %i.h = getelementptr i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !77
  %i.j = sub i64 %i.d, %i.i
  %.not17.i = icmp sgt i64 %1, %i.j
  br i1 %.not17.i, label %_bufferedreader_read_fast.exit, label %.thread142

.thread142:                                       ; preds = %bb.c, %.thread, %bb.d
  %i.k = getelementptr i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !77
  %i.o = getelementptr i8, ptr %i.l, i64 %i.n
  %i.p = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %i.o, i64 noundef %1) #9 ; 2 uses
  %.not18.i = icmp eq ptr %i.p, null
  br i1 %.not18.i, label %_bufferedreader_read_fast.exit, label %bb.e

bb.e:                                             ; preds = %.thread142
  %i.q = load i64, ptr %i.m, align 8, !tbaa !77
  %i.r = add i64 %i.q, %1
  store i64 %i.r, ptr %i.m, align 8, !tbaa !77
  br label %_bufferedreader_read_fast.exit

bb.f:                                             ; preds = %.thread241, %.thread, %bb.c
  %i.s = phi i64 [ 0, %.thread ], [ 0, %bb.c ], [ %i.g, %.thread241 ]
  %.fr = freeze i64 %i.s                          ; 5 uses
  %i.t = tail call ptr @PyBytesWriter_Create(i64 noundef %1) #9 ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %Py_DECREF.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.t) #9 ; 3 uses
  %i.w = icmp sgt i64 %.fr, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.z = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !77
  %i.ab = getelementptr i8, ptr %i.y, i64 %i.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.ab, i64 %.fr, i1 false)
  %i.ac = sub nsw i64 %1, %.fr
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !77
  %i.ae = add i64 %i.ad, %.fr
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0114 = phi i64 [ %i.ac, %bb.h ], [ %1, %bb.g ] ; 3 uses
  %.0107 = phi i64 [ %.fr, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 36        ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !73
  %.not133 = icmp eq i32 %i.ag, 0
  br i1 %.not133, label %Py_DECREF.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = tail call fastcc ptr @_bufferedwriter_flush_unlocked(ptr noundef nonnull %0) ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %Py_DECREF.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load i32, ptr %i.ah, align 8, !tbaa !17 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i.i, label %bb.l, label %Py_DECREF.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ah, align 8, !tbaa !17
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.m, label %Py_DECREF.exit.i

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #9
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.m, %bb.l, %bb.k
  %i.am = load i32, ptr %i.a, align 8, !tbaa !72
  %.not.i136 = icmp eq i32 %i.am, 0
  br i1 %.not.i136, label %buffered_flush_and_rewind_unlocked.exit, label %bb.n

bb.n:                                             ; preds = %Py_DECREF.exit.i
  %i.an = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !74
  %.not18.i137 = icmp eq i64 %i.ao, -1
  br i1 %.not18.i137, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.af, align 4, !tbaa !73
  %.not19.i = icmp eq i32 %i.ap, 0
  br i1 %.not19.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr i8, ptr %0, i64 96
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !81
  %.not20.i = icmp eq i64 %i.ar, -1
  br i1 %.not20.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.as = getelementptr i8, ptr %0, i64 72
  %i.at = load i64, ptr %i.as, align 8, !tbaa !79 ; 2 uses
  %i.au = icmp sgt i64 %i.at, -1
  br i1 %i.au, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr i8, ptr %0, i64 64
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !77
  %.neg.i = sub i64 %i.aw, %i.at
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.neg21.i = phi i64 [ %.neg.i, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ]
  %i.ax = tail call fastcc i64 @_buffered_raw_seek(ptr noundef nonnull %0, i64 noundef %.neg21.i, i32 noundef 1)
  store i64 -1, ptr %i.an, align 8, !tbaa !74
  %.not22.i = icmp eq i64 %i.ax, -1
  br i1 %.not22.i, label %Py_DECREF.exit, label %buffered_flush_and_rewind_unlocked.exit

buffered_flush_and_rewind_unlocked.exit:          ; preds = %bb.s, %Py_DECREF.exit.i
  %i.ay = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !17 ; 2 uses
  %.not.i = icmp sgt i32 %i.ay, -1
  br i1 %.not.i, label %bb.t, label %Py_DECREF.exit.thread

bb.t:                                             ; preds = %buffered_flush_and_rewind_unlocked.exit
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr @_Py_NoneStruct, align 8, !tbaa !17
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.u, label %Py_DECREF.exit.thread

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #9
  br label %Py_DECREF.exit.thread

Py_DECREF.exit.thread:                            ; preds = %bb.u, %bb.t, %buffered_flush_and_rewind_unlocked.exit, %bb.i
  %i.bb = getelementptr i8, ptr %0, i64 80        ; 3 uses
  store i64 -1, ptr %i.bb, align 8, !tbaa !74
  %i.bc = icmp sgt i64 %.0114, 0
  br i1 %i.bc, label %.lr.ph, label %.thread151

.lr.ph:                                           ; preds = %Py_DECREF.exit.thread
  %i.bd = getelementptr i8, ptr %0, i64 128
  %i.be = getelementptr i8, ptr %0, i64 120
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.ad
  %.1108207 = phi i64 [ %.0107, %.lr.ph ], [ %i.bt, %bb.ad ] ; 5 uses
  %.1115206 = phi i64 [ %.0114, %.lr.ph ], [ %i.bs, %bb.ad ] ; 5 uses
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !85 ; 2 uses
  %.not134 = icmp eq i64 %i.bf, 0
  br i1 %.not134, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = xor i64 %i.bf, -1
  %i.bh = and i64 %.1115206, %i.bg
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !71
  %i.bj = srem i64 %.1115206, %i.bi
  %i.bk = sub nuw nsw i64 %.1115206, %i.bj
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bl = phi i64 [ %i.bh, %bb.w ], [ %i.bk, %bb.x ] ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.thread151, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr i8, ptr %i.v, i64 %.1108207
  %i.bo = tail call fastcc i64 @_bufferedreader_raw_read(ptr noundef nonnull %0, ptr noundef %i.bn, i64 noundef %i.bl) ; 4 uses
  switch i64 %i.bo, label %bb.ad [
    i64 -1, label %Py_DECREF.exit
    i64 -2, label %bb.aa
    i64 0, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  %i.bp = icmp eq i64 %i.bo, 0
  %i.bq = icmp sgt i64 %.1108207, 0
  %or.cond3 = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %or.cond3, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.br = tail call ptr @PyBytesWriter_FinishWithSize(ptr noundef nonnull %i.t, i64 noundef %.1108207) #9
  br label %_bufferedreader_read_fast.exit

bb.ac:                                            ; preds = %bb.aa
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.t) #9
  br label %_bufferedreader_read_fast.exit

bb.ad:                                            ; preds = %bb.z
  %i.bs = sub nsw i64 %.1115206, %i.bo            ; 3 uses
  %i.bt = add i64 %i.bo, %.1108207                ; 2 uses
  %i.bu = icmp sgt i64 %i.bs, 0
  br i1 %i.bu, label %bb.v, label %.thread151

.thread151:                                       ; preds = %bb.ad, %bb.y, %Py_DECREF.exit.thread
  %.1115.lcssa = phi i64 [ %.0114, %Py_DECREF.exit.thread ], [ %.1115206, %bb.y ], [ %i.bs, %bb.ad ]
  %.1108.lcssa = phi i64 [ %.0107, %Py_DECREF.exit.thread ], [ %.1108207, %bb.y ], [ %i.bt, %bb.ad ]
  %i.bv = getelementptr i8, ptr %0, i64 64        ; 6 uses
  %i.bw = getelementptr i8, ptr %0, i64 72
  %i.bx = getelementptr i8, ptr %0, i64 120
  %i.by = getelementptr i8, ptr %0, i64 56        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread151
  %.4118 = phi i64 [ %.1115.lcssa, %.thread151 ], [ %.fr187, %bb.al ] ; 5 uses
  %.4111 = phi i64 [ %.1108.lcssa, %.thread151 ], [ %.5112, %bb.al ] ; 4 uses
  %i.bz = icmp sgt i64 %.4118, 0
  br i1 %i.bz, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.ca = load i64, ptr %i.bb, align 8, !tbaa !74 ; 3 uses
  %i.cb = load i64, ptr %i.bx, align 8, !tbaa !71 ; 2 uses
  %i.cc = icmp slt i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.cd = load i32, ptr %i.a, align 8, !tbaa !72
  %.not.i138 = icmp eq i32 %i.cd, 0
  %.not21.i = icmp eq i64 %i.ca, -1
  %or.cond = or i1 %.not21.i, %.not.i138
  %.0.i139 = select i1 %or.cond, i64 0, i64 %i.ca ; 3 uses
  %i.ce = sub i64 %i.cb, %.0.i139
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !60
  %i.cg = getelementptr i8, ptr %i.cf, i64 %.0.i139
  %i.ch = tail call fastcc i64 @_bufferedreader_raw_read(ptr noundef nonnull %0, ptr noundef %i.cg, i64 noundef %i.ce) ; 9 uses
  %i.ci = icmp slt i64 %i.ch, 1
  br i1 %i.ci, label %_bufferedreader_fill_buffer.exit, label %bb.ak

_bufferedreader_fill_buffer.exit:                 ; preds = %bb.ag
  %i.cj = icmp eq i64 %i.ch, -1
  br i1 %i.cj, label %Py_DECREF.exit, label %bb.ah

bb.ah:                                            ; preds = %_bufferedreader_fill_buffer.exit
  %i.ck = icmp eq i64 %i.ch, 0
  %i.cl = icmp sgt i64 %.4111, 0
  %or.cond7 = select i1 %i.ck, i1 true, i1 %i.cl
  br i1 %or.cond7, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cm = tail call ptr @PyBytesWriter_FinishWithSize(ptr noundef nonnull %i.t, i64 noundef %.4111) #9
  br label %_bufferedreader_read_fast.exit

bb.aj:                                            ; preds = %bb.ah
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.t) #9
  br label %_bufferedreader_read_fast.exit

bb.ak:                                            ; preds = %bb.ag
  %i.cn = add i64 %.0.i139, %i.ch                 ; 2 uses
  store i64 %i.cn, ptr %i.bb, align 8, !tbaa !74
  store i64 %i.cn, ptr %i.bw, align 8, !tbaa !79
  %i.co = icmp samesign ugt i64 %.4118, %i.ch
  %i.cp = getelementptr i8, ptr %i.v, i64 %.4111  ; 2 uses
  %i.cq = load ptr, ptr %i.by, align 8, !tbaa !60
  %i.cr = load i64, ptr %i.bv, align 8, !tbaa !77
  %i.cs = getelementptr i8, ptr %i.cq, i64 %i.cr  ; 2 uses
  br i1 %i.co, label %bb.al, label %.thread161

.thread161:                                       ; preds = %bb.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.cs, i64 %.4118, i1 false)
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !77
  %i.cu = add i64 %i.ct, %.4118
  store i64 %i.cu, ptr %i.bv, align 8, !tbaa !77
  br label %.critedge

bb.al:                                            ; preds = %bb.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.cs, i64 %i.ch, i1 false)
  %i.cv = load i64, ptr %i.bv, align 8, !tbaa !77
  %i.cw = add i64 %i.cv, %i.ch
  store i64 %i.cw, ptr %i.bv, align 8, !tbaa !77
  %i.cx = sub nuw nsw i64 %.4118, %i.ch
  %.fr187 = freeze i64 %i.cx                      ; 2 uses
  %.5112 = add i64 %i.ch, %.4111
  %i.cy = icmp eq i64 %.fr187, 0
  br i1 %i.cy, label %.critedge, label %bb.ae

.critedge:                                        ; preds = %bb.al, %bb.ae, %bb.af, %.thread161
  %i.cz = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.t) #9
  br label %_bufferedreader_read_fast.exit

Py_DECREF.exit:                                   ; preds = %bb.z, %_bufferedreader_fill_buffer.exit, %bb.j, %bb.s, %bb.f
  tail call void @PyBytesWriter_Discard(ptr noundef %i.t) #9
  br label %_bufferedreader_read_fast.exit

_bufferedreader_read_fast.exit:                   ; preds = %bb.aj, %bb.ai, %bb.ac, %bb.ab, %bb.e, %.thread142, %bb.d, %.critedge, %Py_DECREF.exit
  %.6 = phi ptr [ %i.br, %bb.ab ], [ null, %Py_DECREF.exit ], [ %i.cz, %.critedge ], [ @_Py_NoneStruct, %bb.d ], [ null, %.thread142 ], [ %i.p, %bb.e ], [ @_Py_NoneStruct, %bb.ac ], [ @_Py_NoneStruct, %bb.aj ], [ %i.cm, %bb.ai ]
  ret ptr %.6
}

declare void @PyBytes_Concat(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyObject_MakeTpCall(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_Py_CheckFunctionResult(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_FinishWithSize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @PyBytesWriter_Discard(ptr noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_Finish(ptr noundef) local_unnamed_addr #1

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #1

declare ptr @Py_GetConstant(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_buffered_readinto_generic(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i8 noundef signext range(i8 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !59
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !65
  %.not120 = icmp eq i32 %i.e, 0
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !13 ; 2 uses
  br i1 %.not120, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.24) #9
  br label %.critedge122

bb.d:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.25) #9
  br label %.critedge122

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56         ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !76
  %.not109 = icmp eq i32 %i.j, 0
  %i.k = getelementptr i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64   ; 2 uses
  br i1 %.not109, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @_PyFileIO_closed(ptr noundef %i.l) #9
  br label %buffered_closed.exit

bb.h:                                             ; preds = %bb.f
  %i.n = tail call ptr @PyObject_GetAttr(ptr noundef %i.l, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77912)) #9 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.critedge122, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i32 @PyObject_IsTrue(ptr noundef nonnull %i.n) #9 ; 3 uses
  %i.q = load i32, ptr %i.n, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i.i, label %bb.j, label %buffered_closed.exit

bb.j:                                             ; preds = %bb.i
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.n, align 8, !tbaa !17
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.k, label %buffered_closed.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.n) #9
  br label %buffered_closed.exit

buffered_closed.exit:                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  %i.t = phi i32 [ %i.p, %bb.j ], [ %i.m, %bb.g ], [ %i.p, %bb.i ], [ %i.p, %bb.k ] ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.critedge122, label %bb.l

bb.l:                                             ; preds = %buffered_closed.exit
  %.not110 = icmp eq i32 %i.t, 0
  br i1 %.not110, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.e, %bb.l
  %i.v = getelementptr i8, ptr %0, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !72
  %.not111 = icmp eq i32 %i.w, 0
  br i1 %.not111, label %.critedge, label %bb.m

bb.m:                                             ; preds = %.thread
  %i.x = getelementptr i8, ptr %0, i64 80
end_hunk_1
