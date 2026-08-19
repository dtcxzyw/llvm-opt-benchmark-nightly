inline.NumInlined: 159
inline.NumDeleted: 35
begin_hunk_0_@print_exception_recursive:bb.a
  br i1 %.not30.i, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = tail call ptr @PyLong_FromVoidPtr(ptr noundef nonnull %i.aa) #9 ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @PyErr_Clear() #9
  br label %print_exception_seen_lookup.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.ae = tail call i32 @PySet_Contains(ptr noundef %i.ad, ptr noundef nonnull %i.ab) #9
  %i.af = load i32, ptr %i.ab, align 8, !tbaa !14 ; 2 uses
  %.not.i.i11 = icmp sgt i32 %i.af, -1
  br i1 %.not.i.i11, label %bb.n, label %Py_DECREF.exit.i12

bb.n:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.ab, align 8, !tbaa !14
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.o, label %Py_DECREF.exit.i12

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ab) #9
  br label %Py_DECREF.exit.i12

Py_DECREF.exit.i12:                               ; preds = %bb.o, %bb.n, %bb.m
  switch i32 %i.ae, label %print_exception_seen_lookup.exit [
    i32 -1, label %bb.p
    i32 1, label %print_exception_seen_lookup.exit.thread
  ]

bb.p:                                             ; preds = %Py_DECREF.exit.i12
  tail call void @PyErr_Clear() #9
  br label %print_exception_seen_lookup.exit.thread

print_exception_seen_lookup.exit:                 ; preds = %Py_DECREF.exit.i12
  %i.ai = tail call fastcc i32 @print_chained(ptr noundef nonnull %0, ptr noundef %i.aa, ptr noundef nonnull @cause_message)
  br label %print_exception_seen_lookup.exit.thread

print_exception_seen_lookup.exit.thread:          ; preds = %Py_DECREF.exit.i12, %bb.p, %bb.l, %print_exception_seen_lookup.exit
  %.024.i = phi i32 [ %i.ai, %print_exception_seen_lookup.exit ], [ 0, %bb.l ], [ 0, %bb.p ], [ 0, %Py_DECREF.exit.i12 ] ; 3 uses
  %i.aj = load i32, ptr %i.aa, align 8, !tbaa !14 ; 2 uses
  %.not.i33.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i33.i, label %bb.q, label %print_exception_cause_and_context.exit

bb.q:                                             ; preds = %print_exception_seen_lookup.exit.thread
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.aa, align 8, !tbaa !14
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %print_exception_cause_and_context.exit.sink.split, label %print_exception_cause_and_context.exit

bb.r:                                             ; preds = %bb.j
  %i.am = getelementptr i8, ptr %1, i64 64
  %i.an = load i8, ptr %i.am, align 8, !tbaa !70
  %.not31.i = icmp eq i8 %i.an, 0
  br i1 %.not31.i, label %bb.s, label %print_exception_cause_and_context.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ao = tail call ptr @PyException_GetContext(ptr noundef nonnull %1) #9, !inline_history !69 ; 6 uses
  %.not32.i = icmp eq ptr %i.ao, null
  br i1 %.not32.i, label %print_exception_cause_and_context.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = tail call fastcc zeroext i1 @print_exception_seen_lookup(ptr noundef nonnull %0, ptr noundef %i.ao), !inline_history !69
  br i1 %i.ap, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = tail call fastcc i32 @print_chained(ptr noundef nonnull %0, ptr noundef %i.ao, ptr noundef nonnull @context_message)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i = phi i32 [ 0, %bb.t ], [ %i.aq, %bb.u ]  ; 3 uses
  %i.ar = load i32, ptr %i.ao, align 8, !tbaa !14 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ar, -1
  br i1 %.not.i.i, label %bb.w, label %print_exception_cause_and_context.exit

bb.w:                                             ; preds = %bb.v
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %i.ao, align 8, !tbaa !14
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %print_exception_cause_and_context.exit.sink.split, label %print_exception_cause_and_context.exit

print_exception_cause_and_context.exit.sink.split: ; preds = %bb.w, %bb.q
  %.sink = phi ptr [ %i.aa, %bb.q ], [ %i.ao, %bb.w ]
  %.2.i.ph = phi i32 [ %.024.i, %bb.q ], [ %.0.i, %bb.w ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #9
  br label %print_exception_cause_and_context.exit

print_exception_cause_and_context.exit:           ; preds = %print_exception_cause_and_context.exit.sink.split, %bb.v, %bb.w, %print_exception_seen_lookup.exit.thread, %bb.q
  %.2.i = phi i32 [ %.0.i, %bb.w ], [ %.0.i, %bb.v ], [ %.024.i, %print_exception_seen_lookup.exit.thread ], [ %.024.i, %bb.q ], [ %.2.i.ph, %print_exception_cause_and_context.exit.sink.split ]
  %i.au = icmp slt i32 %.2.i, 0
  br i1 %i.au, label %print_exception.exit.thread, label %print_exception_cause_and_context.exit.thread

print_exception_cause_and_context.exit.thread:    ; preds = %bb.e, %bb.d, %bb.r, %bb.f, %bb.s, %Py_DECREF.exit36.i, %.split.i, %print_exception_cause_and_context.exit, %_Py_EnterRecursiveCall.exit.thread
  %i.av = load ptr, ptr %0, align 8, !tbaa !50    ; 4 uses
  %i.aw = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %.val10.i = load ptr, ptr %i.aw, align 8, !tbaa !21
  %i.ax = getelementptr i8, ptr %.val10.i, i64 168
  %.val11.i = load i64, ptr %i.ax, align 8, !tbaa !31
  %i.ay = and i64 %.val11.i, 1073741824
  %.not.i6 = icmp eq i64 %i.ay, 0
  br i1 %.not.i6, label %bb.x, label %bb.z

bb.x:                                             ; preds = %print_exception_cause_and_context.exit.thread
  %i.az = tail call i32 @PyFile_WriteString(ptr noundef nonnull @.str.42, ptr noundef %i.av) #9
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %print_exception.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val.i.i10 = load ptr, ptr %i.aw, align 8, !tbaa !21
  %i.bb = getelementptr i8, ptr %.val.i.i10, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !72
  %i.bd = tail call i32 @PyFile_WriteString(ptr noundef %i.bc, ptr noundef %i.av) #9
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %print_exception.exit.thread, label %print_exception.exit

bb.z:                                             ; preds = %print_exception_cause_and_context.exit.thread
  %i.bf = load i32, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.bg = icmp ugt i32 %i.bf, -1073741825
  br i1 %i.bg, label %Py_INCREF.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = add nuw i32 %i.bf, 1
  store i32 %i.bh, ptr %1, align 8, !tbaa !14
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.aa, %bb.z
  %i.bi = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.bj = tail call i32 @fflush(ptr noundef %i.bi) ; 0 uses
  %.val13.i = load ptr, ptr %0, align 8, !tbaa !50
  %i.bk = tail call ptr @PyException_GetTraceback(ptr noundef nonnull %1) #9 ; 7 uses
  %i.bl = icmp ne ptr %i.bk, null
  %i.bm = icmp ne ptr %i.bk, @_Py_NoneStruct
  %or.cond.i.i = and i1 %i.bl, %i.bm
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.ab

.thread.i.i:                                      ; preds = %Py_INCREF.exit.i
  %i.bn = tail call i32 @_PyTraceBack_Print(ptr noundef nonnull %i.bk, ptr noundef nonnull @.str.44, ptr noundef %.val13.i) #9
  %i.bo = icmp slt i32 %i.bn, 0
  br label %bb.ac

bb.ab:                                            ; preds = %Py_INCREF.exit.i
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %print_exception_traceback.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread.i.i
  %.03.i.i = phi i1 [ %i.bo, %.thread.i.i ], [ false, %bb.ab ]
  %i.bp = load i32, ptr %i.bk, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.bp, -1
  br i1 %.not.i.i.i.i, label %bb.ad, label %print_exception_traceback.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bq, ptr %i.bk, align 8, !tbaa !14
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.ae, label %print_exception_traceback.exit.i

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bk) #9
  br label %print_exception_traceback.exit.i

print_exception_traceback.exit.i:                 ; preds = %bb.ae, %bb.ad, %bb.ac
  br i1 %.03.i.i, label %print_exception_message.exit.thread.i, label %print_exception_traceback.exit.thread.i

print_exception_traceback.exit.thread.i:          ; preds = %print_exception_traceback.exit.i, %bb.ab
  %.val.i7 = load ptr, ptr %i.aw, align 8, !tbaa !21 ; 2 uses
  %.val14.i = load ptr, ptr %0, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.bs = call i32 @PyObject_GetOptionalAttr(ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 95984), ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 1
  br i1 %i.bt, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %print_exception_traceback.exit.thread.i
  %i.bu = icmp slt i32 %i.bs, 0
  br i1 %i.bu, label %bb.ag, label %bb.ax

bb.ag:                                            ; preds = %bb.af
  call void @PyErr_Clear() #9
  br label %bb.ax

bb.ah:                                            ; preds = %print_exception_traceback.exit.thread.i
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !14 ; 2 uses
  %.not.i29.i.i = icmp sgt i32 %i.bw, -1
  br i1 %.not.i29.i.i, label %bb.ai, label %Py_DECREF.exit30.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.bx = add nsw i32 %i.bw, -1                   ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !14
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.aj, label %Py_DECREF.exit30.i.i

bb.aj:                                            ; preds = %bb.ai
  call void @_Py_Dealloc(ptr noundef nonnull %i.bv) #9
  br label %Py_DECREF.exit30.i.i

Py_DECREF.exit30.i.i:                             ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = call ptr @PyObject_GetAttr(ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 83936)) #9 ; 6 uses
  %.not.i18.i = icmp eq ptr %i.bz, null
  br i1 %.not.i18.i, label %print_exception_file_and_line.exit.thread.i, label %bb.ak

bb.ak:                                            ; preds = %Py_DECREF.exit30.i.i
  %i.ca = icmp eq ptr %i.bz, @_Py_NoneStruct
  br i1 %i.ca, label %bb.al, label %_Py_NewRef.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.cb = load i32, ptr %i.bz, align 8, !tbaa !14 ; 2 uses
  %.not.i27.i.i = icmp sgt i32 %i.cb, -1
  br i1 %.not.i27.i.i, label %bb.am, label %Py_DECREF.exit28.i.i

bb.am:                                            ; preds = %bb.al
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.cc, ptr %i.bz, align 8, !tbaa !14
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.an, label %Py_DECREF.exit28.i.i

bb.an:                                            ; preds = %bb.am
  call void @_Py_Dealloc(ptr noundef nonnull %i.bz) #9
  br label %Py_DECREF.exit28.i.i

Py_DECREF.exit28.i.i:                             ; preds = %bb.an, %bb.am, %bb.al
  %i.ce = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 59808), align 8, !tbaa !14 ; 2 uses
  %i.cf = icmp ugt i32 %i.ce, -1073741825
  br i1 %i.cf, label %_Py_NewRef.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %Py_DECREF.exit28.i.i
  %i.cg = add nuw i32 %i.ce, 1
  store i32 %i.cg, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 59808), align 8, !tbaa !14
  br label %_Py_NewRef.exit.i.i

_Py_NewRef.exit.i.i:                              ; preds = %bb.ao, %Py_DECREF.exit28.i.i, %bb.ak
  %.0.i19.i = phi ptr [ %i.bz, %bb.ak ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 59808), %Py_DECREF.exit28.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 59808), %bb.ao ] ; 4 uses
  %i.ch = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.45, ptr noundef nonnull %.0.i19.i, i64 noundef 0) #9 ; 7 uses
  %i.ci = load i32, ptr %.0.i19.i, align 8, !tbaa !14 ; 2 uses
  %.not.i25.i.i = icmp sgt i32 %i.ci, -1
  br i1 %.not.i25.i.i, label %bb.ap, label %Py_DECREF.exit26.i.i

bb.ap:                                            ; preds = %_Py_NewRef.exit.i.i
  %i.cj = add nsw i32 %i.ci, -1                   ; 2 uses
  store i32 %i.cj, ptr %.0.i19.i, align 8, !tbaa !14
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.aq, label %Py_DECREF.exit26.i.i

bb.aq:                                            ; preds = %bb.ap
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i19.i) #9
  br label %Py_DECREF.exit26.i.i

Py_DECREF.exit26.i.i:                             ; preds = %bb.aq, %bb.ap, %_Py_NewRef.exit.i.i
  %i.cl = icmp eq ptr %i.ch, null
  br i1 %i.cl, label %print_exception_file_and_line.exit.thread.i, label %bb.ar

bb.ar:                                            ; preds = %Py_DECREF.exit26.i.i
  %i.cm = call i32 @PyFile_WriteObject(ptr noundef nonnull %i.ch, ptr noundef %.val14.i, i32 noundef 1) #9
  %i.cn = icmp slt i32 %i.cm, 0
  %i.co = load i32, ptr %i.ch, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.i20.i = icmp sgt i32 %i.co, -1        ; 2 uses
  br i1 %i.cn, label %.split21.i.i, label %bb.au

.split21.i.i:                                     ; preds = %bb.ar
  br i1 %.not.i.i.i20.i, label %bb.as, label %print_exception_file_and_line.exit.thread.i

bb.as:                                            ; preds = %.split21.i.i
  %i.cp = add nsw i32 %i.co, -1                   ; 2 uses
  store i32 %i.cp, ptr %i.ch, align 8, !tbaa !14
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.at, label %print_exception_file_and_line.exit.thread.i

bb.at:                                            ; preds = %bb.as
  call void @_Py_Dealloc(ptr noundef nonnull %i.ch) #9
  br label %print_exception_file_and_line.exit.thread.i

bb.au:                                            ; preds = %bb.ar
  br i1 %.not.i.i.i20.i, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.cr = add nsw i32 %i.co, -1                   ; 2 uses
  store i32 %i.cr, ptr %i.ch, align 8, !tbaa !14
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @_Py_Dealloc(ptr noundef nonnull %i.ch) #9
  br label %bb.ax

print_exception_file_and_line.exit.thread.i:      ; preds = %bb.at, %bb.as, %.split21.i.i, %Py_DECREF.exit26.i.i, %Py_DECREF.exit30.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %print_exception_message.exit.thread.i

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.val16.i = load ptr, ptr %0, align 8, !tbaa !50 ; 8 uses
  %i.ct = load ptr, ptr @PyExc_MemoryError, align 8, !tbaa !15
  %i.cu = call i32 @PyErr_GivenExceptionMatches(ptr noundef nonnull %1, ptr noundef %i.ct) #9
  %.not.i21.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i21.i, label %bb.ay, label %print_exception_message.exit.thread.i

bb.ay:                                            ; preds = %bb.ax
  %i.cv = call ptr @PyObject_GetAttr(ptr noundef %.val.i7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67704)) #9 ; 14 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %.split.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cx = getelementptr i8, ptr %i.cv, i64 8
  %.val70.i.i = load ptr, ptr %i.cx, align 8, !tbaa !21
  %i.cy = getelementptr i8, ptr %.val70.i.i, i64 168
  %.val73.i.i = load i64, ptr %i.cy, align 8, !tbaa !31
  %i.cz = and i64 %.val73.i.i, 268435456
  %.not51.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not51.i.i, label %.split44.i.i, label %bb.bc

.split44.i.i:                                     ; preds = %bb.az
  %i.da = load i32, ptr %i.cv, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i24.i = icmp sgt i32 %i.da, -1
  br i1 %.not.i.i.i24.i, label %bb.ba, label %.split.i.i

bb.ba:                                            ; preds = %.split44.i.i
  %i.db = add nsw i32 %i.da, -1                   ; 2 uses
  store i32 %i.db, ptr %i.cv, align 8, !tbaa !14
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.bb, label %.split.i.i

bb.bb:                                            ; preds = %bb.ba
  call void @_Py_Dealloc(ptr noundef nonnull %i.cv) #9
  br label %.split.i.i

.split.i.i:                                       ; preds = %bb.bb, %bb.ba, %.split44.i.i, %bb.ay
  call void @PyErr_Clear() #9
  %i.dd = call i32 @PyFile_WriteString(ptr noundef nonnull @.str.46, ptr noundef %.val16.i) #9
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %print_exception_message.exit.thread.i, label %Py_DECREF.exit62.i.i

bb.bc:                                            ; preds = %bb.az
  %i.df = call i32 @_PyUnicode_Equal(ptr noundef nonnull %i.cv, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 76184)) #9
  %.not52.i.i = icmp eq i32 %i.df, 0
  br i1 %.not52.i.i, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.dg = call i32 @_PyUnicode_Equal(ptr noundef nonnull %i.cv, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67432)) #9
  %.not53.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not53.i.i, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.dh = call i32 @PyFile_WriteObject(ptr noundef nonnull %i.cv, ptr noundef %.val16.i, i32 noundef 1) #9
  %i.di = load i32, ptr %i.cv, align 8, !tbaa !14 ; 2 uses
  %.not.i63.i.i = icmp sgt i32 %i.di, -1
  br i1 %.not.i63.i.i, label %bb.bf, label %Py_DECREF.exit64.i.i

bb.bf:                                            ; preds = %bb.be
  %i.dj = add nsw i32 %i.di, -1                   ; 2 uses
  store i32 %i.dj, ptr %i.cv, align 8, !tbaa !14
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.bg, label %Py_DECREF.exit64.i.i

bb.bg:                                            ; preds = %bb.bf
  call void @_Py_Dealloc(ptr noundef nonnull %i.cv) #9
  br label %Py_DECREF.exit64.i.i

Py_DECREF.exit64.i.i:                             ; preds = %bb.bg, %bb.bf, %bb.be
  %i.dl = icmp slt i32 %i.dh, 0
  br i1 %i.dl, label %print_exception_message.exit.thread.i, label %bb.bh

bb.bh:                                            ; preds = %Py_DECREF.exit64.i.i
  %i.dm = call i32 @PyFile_WriteString(ptr noundef nonnull @.str.47, ptr noundef %.val16.i) #9
  %i.dn = icmp sgt i32 %i.dm, -1
  br i1 %i.dn, label %Py_DECREF.exit62.i.i, label %print_exception_message.exit.thread.i

bb.bi:                                            ; preds = %bb.bd, %bb.bc
  %i.do = load i32, ptr %i.cv, align 8, !tbaa !14 ; 2 uses
  %.not.i61.i.i = icmp sgt i32 %i.do, -1
  br i1 %.not.i61.i.i, label %bb.bj, label %Py_DECREF.exit62.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.dp = add nsw i32 %i.do, -1                   ; 2 uses
  store i32 %i.dp, ptr %i.cv, align 8, !tbaa !14
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.bk, label %Py_DECREF.exit62.i.i

bb.bk:                                            ; preds = %bb.bj
  call void @_Py_Dealloc(ptr noundef nonnull %i.cv) #9
  br label %Py_DECREF.exit62.i.i

Py_DECREF.exit62.i.i:                             ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %.split.i.i
  %i.dr = call ptr @PyType_GetQualName(ptr noundef %.val.i7) #9 ; 9 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %.split45.i.i, label %bb.bl

bb.bl:                                            ; preds = %Py_DECREF.exit62.i.i
  %i.dt = getelementptr i8, ptr %i.dr, i64 8
  %.val69.i.i = load ptr, ptr %i.dt, align 8, !tbaa !21
  %i.du = getelementptr i8, ptr %.val69.i.i, i64 168
  %.val72.i.i = load i64, ptr %i.du, align 8, !tbaa !31
  %i.dv = and i64 %.val72.i.i, 268435456
  %.not54.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not54.i.i, label %.split46.i.i, label %bb.bo

.split46.i.i:                                     ; preds = %bb.bl
  %i.dw = load i32, ptr %i.dr, align 8, !tbaa !14 ; 2 uses
  %.not.i.i76.i.i = icmp sgt i32 %i.dw, -1
  br i1 %.not.i.i76.i.i, label %bb.bm, label %.split45.i.i

bb.bm:                                            ; preds = %.split46.i.i
  %i.dx = add nsw i32 %i.dw, -1                   ; 2 uses
  store i32 %i.dx, ptr %i.dr, align 8, !tbaa !14
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.bn, label %.split45.i.i

bb.bn:                                            ; preds = %bb.bm
  call void @_Py_Dealloc(ptr noundef nonnull %i.dr) #9
  br label %.split45.i.i

.split45.i.i:                                     ; preds = %bb.bn, %bb.bm, %.split46.i.i, %Py_DECREF.exit62.i.i
  call void @PyErr_Clear() #9
  %i.dz = call i32 @PyFile_WriteString(ptr noundef nonnull @.str.48, ptr noundef %.val16.i) #9
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %print_exception_message.exit.thread.i, label %bb.br

bb.bo:                                            ; preds = %bb.bl
  %i.eb = call i32 @PyFile_WriteObject(ptr noundef nonnull %i.dr, ptr noundef %.val16.i, i32 noundef 1) #9
  %i.ec = load i32, ptr %i.dr, align 8, !tbaa !14 ; 2 uses
  %.not.i59.i.i = icmp sgt i32 %i.ec, -1
  br i1 %.not.i59.i.i, label %bb.bp, label %Py_DECREF.exit60.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %i.dr, align 8, !tbaa !14
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.bq, label %Py_DECREF.exit60.i.i

bb.bq:                                            ; preds = %bb.bp
  call void @_Py_Dealloc(ptr noundef nonnull %i.dr) #9
  br label %Py_DECREF.exit60.i.i

Py_DECREF.exit60.i.i:                             ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.ef = icmp sgt i32 %i.eb, -1
  br i1 %i.ef, label %bb.br, label %print_exception_message.exit.thread.i

bb.br:                                            ; preds = %Py_DECREF.exit60.i.i, %.split45.i.i
  %i.eg = icmp eq ptr %1, @_Py_NoneStruct
  br i1 %i.eg, label %print_exception_message.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.eh = call ptr @PyObject_Str(ptr noundef nonnull %1) #9 ; 10 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void @PyErr_Clear() #9
  %i.ej = call i32 @PyFile_WriteString(ptr noundef nonnull @.str.49, ptr noundef %.val16.i) #9
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %print_exception_message.exit.thread.i, label %print_exception_message.exit.i

bb.bu:                                            ; preds = %bb.bs
  %i.el = getelementptr i8, ptr %i.eh, i64 8
  %.val.i22.i = load ptr, ptr %i.el, align 8, !tbaa !21
  %i.em = getelementptr i8, ptr %.val.i22.i, i64 168
  %.val71.i.i = load i64, ptr %i.em, align 8, !tbaa !31
  %i.en = and i64 %.val71.i.i, 268435456
  %.not55.i.i = icmp eq i64 %i.en, 0
  br i1 %.not55.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.eo = call i64 @PyUnicode_GetLength(ptr noundef nonnull %i.eh) #9
  %.not56.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not56.i.i, label %bb.ca, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ep = call i32 @PyFile_WriteString(ptr noundef nonnull @.str.50, ptr noundef %.val16.i) #9
  %i.eq = icmp slt i32 %i.ep, 0
  br i1 %i.eq, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.er = load i32, ptr %i.eh, align 8, !tbaa !14 ; 2 uses
  %.not.i57.i.i = icmp sgt i32 %i.er, -1
  br i1 %.not.i57.i.i, label %bb.by, label %print_exception_message.exit.thread.i

bb.by:                                            ; preds = %bb.bx
  %i.es = add nsw i32 %i.er, -1                   ; 2 uses
  store i32 %i.es, ptr %i.eh, align 8, !tbaa !14
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.bz, label %print_exception_message.exit.thread.i

bb.bz:                                            ; preds = %bb.by
  call void @_Py_Dealloc(ptr noundef nonnull %i.eh) #9
  br label %print_exception_message.exit.thread.i

bb.ca:                                            ; preds = %bb.bw, %bb.bv
  %i.eu = call i32 @PyFile_WriteObject(ptr noundef nonnull %i.eh, ptr noundef %.val16.i, i32 noundef 1) #9
  %i.ev = load i32, ptr %i.eh, align 8, !tbaa !14 ; 2 uses
  %.not.i.i23.i = icmp sgt i32 %i.ev, -1
  br i1 %.not.i.i23.i, label %bb.cb, label %Py_DECREF.exit.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.ew = add nsw i32 %i.ev, -1                   ; 2 uses
  store i32 %i.ew, ptr %i.eh, align 8, !tbaa !14
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.cc, label %Py_DECREF.exit.i.i

bb.cc:                                            ; preds = %bb.cb
  call void @_Py_Dealloc(ptr noundef nonnull %i.eh) #9
  br label %Py_DECREF.exit.i.i

Py_DECREF.exit.i.i:                               ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.ey = icmp sgt i32 %i.eu, -1
  br i1 %i.ey, label %print_exception_message.exit.i, label %print_exception_message.exit.thread.i

print_exception_message.exit.i:                   ; preds = %Py_DECREF.exit.i.i, %bb.bt, %bb.br
  %i.ez = call i32 @PyFile_WriteString(ptr noundef nonnull @.str.11, ptr noundef %i.av) #9
  %i.fa = icmp slt i32 %i.ez, 0
  br i1 %i.fa, label %print_exception_message.exit.thread.i, label %bb.cd

bb.cd:                                            ; preds = %print_exception_message.exit.i
  %i.fb = load i32, ptr %1, align 8, !tbaa !14    ; 2 uses
  %.not.i7.i = icmp sgt i32 %i.fb, -1
  br i1 %.not.i7.i, label %bb.ce, label %print_exception.exit.thread22

bb.ce:                                            ; preds = %bb.cd
  %i.fc = add nsw i32 %i.fb, -1                   ; 2 uses
  store i32 %i.fc, ptr %1, align 8, !tbaa !14
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.cf, label %print_exception.exit.thread22

bb.cf:                                            ; preds = %bb.ce
  call void @_Py_Dealloc(ptr noundef nonnull %1) #9
  br label %print_exception.exit.thread22

print_exception_message.exit.thread.i:            ; preds = %print_exception_message.exit.i, %Py_DECREF.exit.i.i, %bb.bz, %bb.by, %bb.bx, %bb.bt, %Py_DECREF.exit60.i.i, %.split45.i.i, %bb.bh, %Py_DECREF.exit64.i.i, %.split.i.i, %bb.ax, %print_exception_file_and_line.exit.thread.i, %print_exception_traceback.exit.i
  %i.fe = load i32, ptr %1, align 8, !tbaa !14    ; 2 uses
  %.not.i.i8 = icmp sgt i32 %i.fe, -1
  br i1 %.not.i.i8, label %bb.cg, label %print_exception.exit.thread

bb.cg:                                            ; preds = %print_exception_message.exit.thread.i
  %i.ff = add nsw i32 %i.fe, -1                   ; 2 uses
  store i32 %i.ff, ptr %1, align 8, !tbaa !14
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.ch, label %print_exception.exit.thread

bb.ch:                                            ; preds = %bb.cg
  call void @_Py_Dealloc(ptr noundef nonnull %1) #9
  br label %print_exception.exit.thread

print_exception.exit:                             ; preds = %bb.y
  %i.fh = tail call i32 @PyFile_WriteString(ptr noundef nonnull @.str.43, ptr noundef %i.av) #9
  %i.fi = icmp slt i32 %i.fh, 0
  br i1 %i.fi, label %print_exception.exit.thread, label %print_exception.exit.thread22

print_exception.exit.thread:                      ; preds = %bb.ch, %bb.cg, %print_exception_message.exit.thread.i, %bb.x, %bb.y, %print_exception.exit, %print_exception_cause_and_context.exit
  br label %print_exception.exit.thread22

print_exception.exit.thread22:                    ; preds = %bb.ce, %bb.cd, %bb.cf, %print_exception.exit, %_Py_EnterRecursiveCall.exit, %print_exception.exit.thread
  %.0 = phi i32 [ -1, %_Py_EnterRecursiveCall.exit ], [ -1, %print_exception.exit.thread ], [ 0, %print_exception.exit ], [ 0, %bb.cf ], [ 0, %bb.cd ], [ 0, %bb.ce ]
  ret i32 %.0
}

declare void @PyObject_Dump(ptr noundef) local_unnamed_addr #2

declare i32 @_PyFile_Flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PyErr_Display(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call i32 @PySys_GetOptionalAttr(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 100800), ptr noundef nonnull %i.a) #9
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @PyErr_GetRaisedException() #9  ; 4 uses
  call void @PyObject_Dump(ptr noundef %1) #9
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.f = call i64 @fwrite(ptr nonnull @.str.14, i64 16, i64 1, ptr %i.e) #10 ; 0 uses
  call void @PyObject_Dump(ptr noundef %i.d) #9
  %i.g = load i32, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %.not.i8 = icmp sgt i32 %i.g, -1
  br i1 %.not.i8, label %bb.c, label %Py_DECREF.exit9

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.d, align 8, !tbaa !14
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %Py_DECREF.exit9

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.d) #9
  br label %Py_DECREF.exit9

bb.e:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !15   ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @PyObject_Dump(ptr noundef %1) #9
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.m = call i64 @fwrite(ptr nonnull @.str.14, i64 16, i64 1, ptr %i.l) #10 ; 0 uses
  br label %Py_DECREF.exit9

bb.g:                                             ; preds = %bb.e
  %i.n = icmp eq ptr %i.j, @_Py_NoneStruct
  br i1 %i.n, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.o = load i32, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %.not.i6 = icmp sgt i32 %i.o, -1
  br i1 %.not.i6, label %bb.i, label %Py_DECREF.exit9

bb.i:                                             ; preds = %bb.h
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.j, align 8, !tbaa !14
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %Py_DECREF.exit9

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %i.j) #9
  br label %Py_DECREF.exit9

bb.k:                                             ; preds = %bb.g
  call void @_PyErr_Display(ptr noundef nonnull %i.j, ptr poison, ptr noundef %1, ptr noundef %2)
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i, label %bb.l, label %Py_DECREF.exit9

bb.l:                                             ; preds = %bb.k
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.r, align 8, !tbaa !14
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.m, label %Py_DECREF.exit9

bb.m:                                             ; preds = %bb.l
  call void @_Py_Dealloc(ptr noundef nonnull %i.r) #9
  br label %Py_DECREF.exit9

Py_DECREF.exit9:                                  ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.d, %bb.c, %bb.b, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_PyErr_DisplayException(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_PyErr_Display(ptr noundef %0, ptr poison, ptr noundef %1, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PyErr_DisplayException(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @PyErr_Display(ptr poison, ptr noundef %0, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyRun_FileExFlags(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyUnicode_DecodeFSDefault(ptr noundef %1) #9 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_PyArena_New() #9         ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %pyrun_file.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @_PyParser_ASTFromFile(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef %2, ptr noundef null, ptr noundef null, ptr noundef %6, ptr noundef null, ptr noundef nonnull %i.c) #9 ; 2 uses
  %.not.i12 = icmp eq i32 %5, 0
  br i1 %.not.i12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @fclose(ptr noundef %0)    ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not20.i = icmp eq ptr %i.e, null
  br i1 %.not20.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call fastcc ptr @run_mod(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef %4, ptr noundef %6, ptr noundef %i.c, ptr noundef null, i32 noundef 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi ptr [ %i.g, %bb.f ], [ null, %bb.e ]
  tail call void @_PyArena_Free(ptr noundef nonnull %i.c) #9
  br label %pyrun_file.exit

pyrun_file.exit:                                  ; preds = %bb.b, %bb.g
  %.017.i = phi ptr [ %.0.i, %bb.g ], [ null, %bb.b ] ; 3 uses
  %i.h = load i32, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %pyrun_file.exit
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.a, align 8, !tbaa !14
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %pyrun_file.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.017.i, %pyrun_file.exit ], [ %.017.i, %bb.h ], [ %.017.i, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Py_CompileStringObject(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_Py_CompileStringObjectWithModule(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_CompileStringObjectWithModule(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_PyArena_New() #9         ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_PyParser_ASTFromString(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef %5) #9 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %3, align 4, !tbaa !29     ; 2 uses
  %i.f = and i32 %i.e, 1024
  %.not34 = icmp eq i32 %i.f, 0
  br i1 %.not34, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = and i32 %i.e, 33792
  %i.h = icmp eq i32 %i.g, 1024
  %i.i = zext i1 %i.h to i32
  %i.j = tail call i32 @_PyCompile_AstPreprocess(ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef nonnull %3, i32 noundef %4, ptr noundef nonnull %i.a, i32 noundef %i.i, ptr noundef %5) #9
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @PyAST_mod2obj(ptr noundef nonnull %i.c) #9
  br label %.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.m = tail call ptr @_PyAST_Compile(ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %i.a, ptr noundef %5) #9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.b, %bb.g, %bb.f
  %.1.ph = phi ptr [ %i.l, %bb.f ], [ null, %bb.b ], [ %i.m, %bb.g ], [ null, %bb.e ]
  tail call void @_PyArena_Free(ptr noundef nonnull %i.a) #9
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.1.ph, %.sink.split ]
  ret ptr %.1
}

declare ptr @_PyArena_New() local_unnamed_addr #2

declare ptr @_PyParser_ASTFromString(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_PyArena_Free(ptr noundef) local_unnamed_addr #2

declare i32 @_PyCompile_AstPreprocess(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyAST_mod2obj(ptr noundef) local_unnamed_addr #2

declare ptr @_PyAST_Compile(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Py_CompileStringExFlags(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyUnicode_DecodeFSDefault(ptr noundef %1) #9 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_Py_CompileStringObjectWithModule(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef null) ; 3 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp sgt i32 %i.d, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.a, align 8, !tbaa !14
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.c, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_PyObject_SupportedAsScript(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val7 = load ptr, ptr %i.a, align 8, !tbaa !21 ; 3 uses
  %i.b = getelementptr i8, ptr %.val7, i64 168
  %.val9 = load i64, ptr %i.b, align 8, !tbaa !31 ; 2 uses
  %i.c = and i64 %.val9, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %PyObject_TypeCheck.exit.thread

bb.b:                                             ; preds = %bb.a
end_hunk_0
