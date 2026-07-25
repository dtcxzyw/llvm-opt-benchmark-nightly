inline.NumInlined: 457
inline.NumDeleted: 100
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@PyList_Clear:bb.a
  %i.h = add i64 %.val.i.i, -1                    ; 2 uses
  %i.i = icmp sgt i64 %i.h, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br i1 %i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %Py_XDECREF.exit.i.i
  %i.j = phi i64 [ %i.p, %Py_XDECREF.exit.i.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.k = getelementptr [8 x i8], ptr %i.e, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %Py_XDECREF.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.m = load i32, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i.i.i.i, label %bb.f, label %Py_XDECREF.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !28
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %Py_XDECREF.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #13
  br label %Py_XDECREF.exit.i.i

Py_XDECREF.exit.i.i:                              ; preds = %bb.g, %bb.f, %bb.e, %.lr.ph.i.i
  %i.p = add nsw i64 %i.j, -1
  %i.q = icmp sgt i64 %i.j, 0
  br i1 %i.q, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !66

._crit_edge.i.i:                                  ; preds = %Py_XDECREF.exit.i.i, %bb.d
  tail call void @PyMem_Free(ptr noundef nonnull %i.e) #13
  br label %list_clear.exit

list_clear.exit:                                  ; preds = %._crit_edge.i.i, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ], [ 0, %._crit_edge.i.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyList_Sort(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val7 = load i64, ptr %i.c, align 8, !tbaa !43
  %i.d = and i64 %.val7, 33554432
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.1, i32 noundef 3214) #13
  br label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.b
  %i.e = tail call fastcc ptr @list_sort_impl(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.e, align 8, !tbaa !28
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #13
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @list_sort_impl(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, -2147483648) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.s_MergeState, align 8       ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = icmp eq ptr %1, @_Py_NoneStruct
  %i.b = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %.val191 = load i64, ptr %i.b, align 8, !tbaa !29 ; 21 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 11 uses
  %i.e = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp eq ptr %1, null
  %i.h = or i1 %i.a, %i.g
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %.val191, 128
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = shl i64 %.val191, 3
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef %i.j) #13 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @PyErr_NoMemory() #13      ; 0 uses
  br label %merge_freemem.exit

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 2112
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %.val191 ; 3 uses
  %i.p = icmp sgt i64 %.val191, 0
  br i1 %i.p, label %.lr.ph.preheader, label %.loopexit.thread

.lr.ph.preheader:                                 ; preds = %bb.c, %bb.e
  %.0155415 = phi ptr [ %i.o, %bb.e ], [ %i.k, %bb.c ] ; 5 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.0157321 = phi i64 [ %i.ac, %bb.i ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.q = getelementptr [8 x i8], ptr %i.d, i64 %.0157321
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.s = tail call ptr @PyObject_CallOneArg(ptr noundef %1, ptr noundef %i.r) #13 ; 2 uses
  %i.t = getelementptr [8 x i8], ptr %.0155415, i64 %.0157321
  store ptr %i.s, ptr %i.t, align 8, !tbaa !50
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %.preheader307, label %bb.i

.preheader307:                                    ; preds = %.lr.ph
  %.not341 = icmp eq i64 %.0157321, 0
  br i1 %.not341, label %._crit_edge, label %.lr.ph324

.lr.ph324:                                        ; preds = %.preheader307, %Py_DECREF.exit187
  %.1158323.in = phi i64 [ %.1158323, %Py_DECREF.exit187 ], [ %.0157321, %.preheader307 ] ; 2 uses
  %.1158323 = add nsw i64 %.1158323.in, -1        ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %.0155415, i64 %.1158323
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50   ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !28   ; 2 uses
  %.not.i186 = icmp sgt i32 %i.x, -1
  br i1 %.not.i186, label %bb.f, label %Py_DECREF.exit187

bb.f:                                             ; preds = %.lr.ph324
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.w, align 8, !tbaa !28
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %Py_DECREF.exit187

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.w) #13
  br label %Py_DECREF.exit187

Py_DECREF.exit187:                                ; preds = %.lr.ph324, %bb.f, %bb.g
  %i.aa = icmp sgt i64 %.1158323.in, 1
  br i1 %i.aa, label %.lr.ph324, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %Py_DECREF.exit187, %.preheader307
  %i.ab = icmp sgt i64 %.val191, 127
  br i1 %i.ab, label %bb.h, label %merge_freemem.exit

bb.h:                                             ; preds = %._crit_edge
  call void @PyMem_Free(ptr noundef nonnull %.0155415) #13
  br label %merge_freemem.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ac = add nuw nsw i64 %.0157321, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %.val191
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !68

.loopexit:                                        ; preds = %bb.i, %bb.a
  %.sroa.23.0 = phi ptr [ null, %bb.a ], [ %i.d, %bb.i ] ; 8 uses
  %.sroa.0.0 = phi ptr [ %i.d, %bb.a ], [ %.0155415, %bb.i ] ; 11 uses
  %.1156 = phi ptr [ null, %bb.a ], [ %.0155415, %bb.i ] ; 8 uses
  %i.ad = icmp sgt i64 %.val191, 1
  br i1 %i.ad, label %bb.j, label %.loopexit.thread

bb.j:                                             ; preds = %.loopexit
  %i.ae = load ptr, ptr %.sroa.0.0, align 8, !tbaa !50 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val196 = load ptr, ptr %i.af, align 8, !tbaa !42 ; 5 uses
  %.not = icmp eq ptr %.val196, @PyTuple_Type
  br i1 %.not, label %bb.k, label %.critedge.preheader

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %i.ae, i64 16
  %.val190 = load i64, ptr %i.ag, align 8, !tbaa !29
  %i.ah = icmp sgt i64 %.val190, 0
  br i1 %i.ah, label %.lr.ph329.split.us.preheader, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.k, %bb.j
  %i.ai = icmp eq ptr %.val196, @PyLong_Type
  %i.aj = icmp eq ptr %.val196, @PyUnicode_Type
  %smax = tail call i64 @llvm.smax.i64(i64 %.val191, i64 1)
  br label %.critedge

.lr.ph329.split.us.preheader:                     ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %i.ae, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val193 = load ptr, ptr %i.am, align 8, !tbaa !42 ; 4 uses
  %i.an = icmp eq ptr %.val193, @PyLong_Type
  %i.ao = icmp eq ptr %.val193, @PyUnicode_Type
  %smax361 = tail call i64 @llvm.smax.i64(i64 %.val191, i64 1)
  br label %.lr.ph329.split.us

.lr.ph329.split.us:                               ; preds = %.lr.ph329.split.us.preheader, %.thread251.us
  %.0140328.us = phi i32 [ %.2142.ph.us, %.thread251.us ], [ 1, %.lr.ph329.split.us.preheader ] ; 4 uses
  %.0143327.us = phi i32 [ %.2145.ph.us, %.thread251.us ], [ 1, %.lr.ph329.split.us.preheader ] ; 4 uses
  %.0147326.us = phi i32 [ %.0147.mux.us, %.thread251.us ], [ 1, %.lr.ph329.split.us.preheader ]
  %.2159325.us = phi i64 [ %i.bd, %.thread251.us ], [ 0, %.lr.ph329.split.us.preheader ] ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %.sroa.0.0, i64 %.2159325.us
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !50 ; 3 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val195.us = load ptr, ptr %i.ar, align 8, !tbaa !42
  %.not295.us = icmp eq ptr %.val195.us, @PyTuple_Type
  br i1 %.not295.us, label %bb.l, label %.loopexit.thread.sink.split

bb.l:                                             ; preds = %.lr.ph329.split.us
  %i.as = getelementptr i8, ptr %i.aq, i64 16
  %.val189.us = load i64, ptr %i.as, align 8, !tbaa !29
  %.not172.us = icmp eq i64 %.val189.us, 0
  br i1 %.not172.us, label %.loopexit.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr i8, ptr %i.aq, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50 ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %.val194.us = load ptr, ptr %i.av, align 8, !tbaa !42
  %.not296.us = icmp eq ptr %.val194.us, %.val193
  %.0147.mux.us = select i1 %.not296.us, i32 %.0147326.us, i32 0 ; 3 uses
  %.not174.us = icmp eq i32 %.0147.mux.us, 0
  br i1 %.not174.us, label %.thread251.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = icmp ne i32 %.0140328.us, 0
  %or.cond.us = select i1 %i.an, i1 %i.aw, i1 false
  br i1 %or.cond.us, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = icmp ne i32 %.0143327.us, 0
  %or.cond3.us = select i1 %i.ao, i1 %i.ax, i1 false
  br i1 %or.cond3.us, label %bb.p, label %.thread251.us

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr i8, ptr %i.au, i64 32
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = and i32 %i.az, 28
  %.not176.us = icmp eq i32 %i.ba, 4
  %spec.select.us = zext i1 %.not176.us to i32
  br label %.thread251.us

bb.q:                                             ; preds = %bb.n
  %i.bb = getelementptr i8, ptr %i.au, i64 16
  %.val197.us = load i64, ptr %i.bb, align 8, !tbaa !69
  %i.bc = icmp ult i64 %.val197.us, 16
  %spec.select289.us = zext i1 %i.bc to i32
  br label %.thread251.us

.thread251.us:                                    ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  %.2145.ph.us = phi i32 [ %.0143327.us, %bb.q ], [ %.0143327.us, %bb.m ], [ %.0143327.us, %bb.o ], [ %spec.select.us, %bb.p ] ; 2 uses
  %.2142.ph.us = phi i32 [ %spec.select289.us, %bb.q ], [ %.0140328.us, %bb.m ], [ %.0140328.us, %bb.o ], [ %.0140328.us, %bb.p ] ; 2 uses
  %i.bd = add nuw nsw i64 %.2159325.us, 1         ; 2 uses
  %exitcond362.not = icmp eq i64 %i.bd, %smax361
  br i1 %exitcond362.not, label %._crit_edge330.loopexit, label %.lr.ph329.split.us, !llvm.loop !72

.critedge:                                        ; preds = %.critedge.preheader, %.thread251
  %.0140328 = phi i32 [ %.2142.ph, %.thread251 ], [ 1, %.critedge.preheader ] ; 3 uses
  %.0143327 = phi i32 [ %.2145.ph, %.thread251 ], [ 1, %.critedge.preheader ] ; 3 uses
  %.2159325 = phi i64 [ %i.bo, %.thread251 ], [ 0, %.critedge.preheader ] ; 2 uses
  %i.be = getelementptr [8 x i8], ptr %.sroa.0.0, i64 %.2159325
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !50 ; 3 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %.val194 = load ptr, ptr %i.bg, align 8, !tbaa !42
  %.not296 = icmp eq ptr %.val194, %.val196
  br i1 %.not296, label %bb.r, label %.loopexit.thread.sink.split

bb.r:                                             ; preds = %.critedge
  %i.bh = icmp ne i32 %.0140328, 0
  %or.cond = select i1 %i.ai, i1 %i.bh, i1 false
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr i8, ptr %i.bf, i64 16
  %.val197 = load i64, ptr %i.bi, align 8, !tbaa !69
  %i.bj = icmp ult i64 %.val197, 16
  %spec.select289 = zext i1 %i.bj to i32
  br label %.thread251

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp ne i32 %.0143327, 0
  %or.cond3 = select i1 %i.aj, i1 %i.bk, i1 false
  br i1 %or.cond3, label %bb.u, label %.thread251

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr i8, ptr %i.bf, i64 32
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = and i32 %i.bm, 28
  %.not176 = icmp eq i32 %i.bn, 4
  %spec.select = zext i1 %.not176 to i32
  br label %.thread251

.thread251:                                       ; preds = %bb.s, %bb.u, %bb.t
  %.2145.ph = phi i32 [ %.0143327, %bb.s ], [ %spec.select, %bb.u ], [ %.0143327, %bb.t ] ; 2 uses
  %.2142.ph = phi i32 [ %spec.select289, %bb.s ], [ %.0140328, %bb.u ], [ %.0140328, %bb.t ] ; 2 uses
  %i.bo = add nuw nsw i64 %.2159325, 1            ; 2 uses
  %exitcond360.not = icmp eq i64 %i.bo, %smax
  br i1 %exitcond360.not, label %._crit_edge330, label %.critedge, !llvm.loop !72

._crit_edge330.loopexit:                          ; preds = %.thread251.us
  %i.bp = icmp eq i32 %.0147.mux.us, 0
  br label %._crit_edge330

._crit_edge330:                                   ; preds = %.thread251, %._crit_edge330.loopexit
  %i.bq = phi ptr [ %.val193, %._crit_edge330.loopexit ], [ %.val196, %.thread251 ] ; 5 uses
  %i.br = phi i1 [ true, %._crit_edge330.loopexit ], [ false, %.thread251 ] ; 6 uses
  %.0147.lcssa = phi i1 [ %i.bp, %._crit_edge330.loopexit ], [ false, %.thread251 ]
  %.0143.lcssa = phi i32 [ %.2145.ph.us, %._crit_edge330.loopexit ], [ %.2145.ph, %.thread251 ]
  %.0140.lcssa = phi i32 [ %.2142.ph.us, %._crit_edge330.loopexit ], [ %.2142.ph, %.thread251 ]
  br i1 %.0147.lcssa, label %.thread262, label %bb.v

bb.v:                                             ; preds = %._crit_edge330
  %i.bs = icmp eq ptr %i.bq, @PyUnicode_Type
  %i.bt = icmp ne i32 %.0143.lcssa, 0
  %or.cond5 = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond5, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr @unsafe_latin_compare, ptr %i.bu, align 8, !tbaa !73
  br i1 %i.br, label %.thread271, label %.loopexit.thread

bb.x:                                             ; preds = %bb.v
  %i.bv = icmp eq ptr %i.bq, @PyLong_Type
  %i.bw = icmp ne i32 %.0140.lcssa, 0
  %or.cond7 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond7, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr @unsafe_long_compare, ptr %i.bx, align 8, !tbaa !73
  br i1 %i.br, label %.thread271, label %.loopexit.thread

bb.z:                                             ; preds = %bb.x
  %i.by = icmp eq ptr %i.bq, @PyFloat_Type
  br i1 %i.by, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = getelementptr i8, ptr %i.bq, i64 200
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !76 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 4160
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !77
  %.not178 = icmp eq ptr %i.ca, null
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 4152 ; 2 uses
  br i1 %.not178, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr @unsafe_object_compare, ptr %i.cc, align 8, !tbaa !73
  br i1 %i.br, label %bb.ae, label %.loopexit.thread

bb.ac:                                            ; preds = %bb.aa
  store ptr @safe_object_compare, ptr %i.cc, align 8, !tbaa !73
  br i1 %i.br, label %bb.ae, label %.loopexit.thread

.thread262:                                       ; preds = %._crit_edge330
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr @safe_object_compare, ptr %i.cd, align 8, !tbaa !73
  br i1 %i.br, label %bb.ae, label %.loopexit.thread

bb.ad:                                            ; preds = %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr @unsafe_float_compare, ptr %i.ce, align 8, !tbaa !73
  br i1 %i.br, label %.thread271, label %.loopexit.thread

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %.thread262
  %i.cf = phi ptr [ @safe_object_compare, %bb.ac ], [ @unsafe_object_compare, %bb.ab ], [ @safe_object_compare, %.thread262 ]
  %i.cg = icmp eq ptr %i.bq, @PyTuple_Type
  %spec.select446 = select i1 %i.cg, ptr @safe_object_compare, ptr %i.cf
  br label %.thread271

.thread271:                                       ; preds = %bb.ae, %bb.y, %bb.w, %bb.ad
  %.sink = phi ptr [ %spec.select446, %bb.ae ], [ @unsafe_float_compare, %bb.ad ], [ @unsafe_latin_compare, %bb.w ], [ @unsafe_long_compare, %bb.y ]
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 4168
  store ptr %.sink, ptr %i.ch, align 8, !tbaa !78
  br label %.loopexit.thread.sink.split

.loopexit.thread.sink.split:                      ; preds = %.critedge, %bb.l, %.lr.ph329.split.us, %.thread271
  %safe_object_compare.sink = phi ptr [ @unsafe_tuple_compare, %.thread271 ], [ @safe_object_compare, %bb.l ], [ @safe_object_compare, %.lr.ph329.split.us ], [ @safe_object_compare, %.critedge ]
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr %safe_object_compare.sink, ptr %i.ci, align 8, !tbaa !73
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit.thread.sink.split, %bb.e, %bb.ac, %bb.ab, %bb.y, %.thread262, %bb.w, %bb.ad, %.loopexit
  %i.cj = phi i1 [ false, %bb.e ], [ false, %.loopexit ], [ true, %bb.ac ], [ true, %bb.ab ], [ true, %bb.y ], [ true, %.thread262 ], [ true, %bb.w ], [ true, %bb.ad ], [ true, %.loopexit.thread.sink.split ]
  %.1156421 = phi ptr [ %i.o, %bb.e ], [ %.1156, %.loopexit ], [ %.1156, %bb.ac ], [ %.1156, %bb.ab ], [ %.1156, %bb.y ], [ %.1156, %.thread262 ], [ %.1156, %bb.w ], [ %.1156, %bb.ad ], [ %.1156, %.loopexit.thread.sink.split ] ; 6 uses
  %.sroa.0.0420 = phi ptr [ %i.o, %bb.e ], [ %.sroa.0.0, %.loopexit ], [ %.sroa.0.0, %bb.ac ], [ %.sroa.0.0, %bb.ab ], [ %.sroa.0.0, %bb.y ], [ %.sroa.0.0, %.thread262 ], [ %.sroa.0.0, %bb.w ], [ %.sroa.0.0, %bb.ad ], [ %.sroa.0.0, %.loopexit.thread.sink.split ] ; 2 uses
  %.sroa.23.0419 = phi ptr [ %i.d, %bb.e ], [ %.sroa.23.0, %.loopexit ], [ %.sroa.23.0, %bb.ac ], [ %.sroa.23.0, %bb.ab ], [ %.sroa.23.0, %bb.y ], [ %.sroa.23.0, %.thread262 ], [ %.sroa.23.0, %bb.w ], [ %.sroa.23.0, %bb.ad ], [ %.sroa.23.0, %.loopexit.thread.sink.split ]
  %i.ck = icmp ne ptr %.1156421, null             ; 3 uses
  br i1 %i.ck, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.loopexit.thread
  %i.cl = add i64 %.val191, 1                     ; 2 uses
  %i.cm = sdiv i64 %i.cl, 2
  %i.cn = icmp sgt i64 %i.cl, 257
  %spec.select.i = select i1 %i.cn, i64 128, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 2104
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %spec.select.i
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.loopexit.thread
  %spec.select.sink.i = phi i64 [ %spec.select.i, %bb.af ], [ 256, %.loopexit.thread ]
  %.sink.i = phi ptr [ %i.cp, %bb.af ], [ null, %.loopexit.thread ]
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %spec.select.sink.i, ptr %i.cq, align 8, !tbaa !79
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %.sink.i, ptr %i.cr, align 8, !tbaa !80
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 2104 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !81
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  store i32 0, ptr %i.cu, align 8, !tbaa !82
  store i64 7, ptr %3, align 8, !tbaa !83
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %.val191, ptr %i.cv, align 8, !tbaa !84
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %.sroa.0.0420, ptr %i.cw, align 8, !tbaa !85
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %storemerge24.i = phi i64 [ 0, %bb.ag ], [ %i.cz, %bb.ah ] ; 4 uses
  %i.cx = ashr i64 %.val191, %storemerge24.i
  %i.cy = icmp sgt i64 %i.cx, 63
  %i.cz = add i64 %storemerge24.i, 1
  br i1 %i.cy, label %bb.ah, label %merge_init.exit, !llvm.loop !86

merge_init.exit:                                  ; preds = %bb.ah
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 4184 ; 2 uses
  store i64 %storemerge24.i, ptr %i.da, align 8, !tbaa !87
  %i.db = trunc i64 %storemerge24.i to i32
  %notmask.i = shl nsw i32 -1, %i.db
  %i.dc = xor i32 %notmask.i, -1
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 4192 ; 2 uses
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !88
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 4176 ; 3 uses
  store i64 0, ptr %i.df, align 8, !tbaa !89
  %i.dg = icmp slt i64 %.val191, 2
  br i1 %i.dg, label %found_new_run.exit.thread282, label %bb.ai

bb.ai:                                            ; preds = %merge_init.exit
  %.not179 = icmp eq i32 %2, 0
  br i1 %.not179, label %reverse_slice.exit206, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dh = getelementptr [8 x i8], ptr %.1156421, i64 %.val191
  %.01011.i = getelementptr i8, ptr %i.dh, i64 -8 ; 2 uses
  %i.di = icmp ult ptr %.1156421, %.01011.i
  %or.cond291 = select i1 %i.ck, i1 %i.di, i1 false
  br i1 %or.cond291, label %.lr.ph.i, label %reverse_slice.exit

.lr.ph.i:                                         ; preds = %bb.aj, %.lr.ph.i
  %.01013.i = phi ptr [ %.010.i, %.lr.ph.i ], [ %.01011.i, %bb.aj ] ; 3 uses
  %.012.i = phi ptr [ %i.dl, %.lr.ph.i ], [ %.1156421, %bb.aj ] ; 3 uses
  %i.dj = load ptr, ptr %.012.i, align 8, !tbaa !50
  %i.dk = load ptr, ptr %.01013.i, align 8, !tbaa !50
  store ptr %i.dk, ptr %.012.i, align 8, !tbaa !50
  store ptr %i.dj, ptr %.01013.i, align 8, !tbaa !50
  %i.dl = getelementptr i8, ptr %.012.i, i64 8    ; 2 uses
  %.010.i = getelementptr i8, ptr %.01013.i, i64 -8 ; 2 uses
  %i.dm = icmp ult ptr %i.dl, %.010.i
  br i1 %i.dm, label %.lr.ph.i, label %reverse_slice.exit, !llvm.loop !90

reverse_slice.exit:                               ; preds = %.lr.ph.i, %bb.aj
  %i.dn = getelementptr [8 x i8], ptr %i.d, i64 %.val191
  %.01011.i201 = getelementptr i8, ptr %i.dn, i64 -8 ; 2 uses
  %i.do = icmp ult ptr %i.d, %.01011.i201
  br i1 %i.do, label %.lr.ph.i202, label %reverse_slice.exit206

.lr.ph.i202:                                      ; preds = %reverse_slice.exit, %.lr.ph.i202
  %.01013.i203 = phi ptr [ %.010.i205, %.lr.ph.i202 ], [ %.01011.i201, %reverse_slice.exit ] ; 3 uses
  %.012.i204 = phi ptr [ %i.dr, %.lr.ph.i202 ], [ %i.d, %reverse_slice.exit ] ; 3 uses
  %i.dp = load ptr, ptr %.012.i204, align 8, !tbaa !50
  %i.dq = load ptr, ptr %.01013.i203, align 8, !tbaa !50
  store ptr %i.dq, ptr %.012.i204, align 8, !tbaa !50
  store ptr %i.dp, ptr %.01013.i203, align 8, !tbaa !50
  %i.dr = getelementptr i8, ptr %.012.i204, i64 8 ; 2 uses
  %.010.i205 = getelementptr i8, ptr %.01013.i203, i64 -8 ; 2 uses
  %i.ds = icmp ult ptr %i.dr, %.010.i205
  br i1 %i.ds, label %.lr.ph.i202, label %reverse_slice.exit206, !llvm.loop !90

reverse_slice.exit206:                            ; preds = %.lr.ph.i202, %reverse_slice.exit, %bb.ai
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4152 ; 7 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  br label %bb.ak

bb.ak:                                            ; preds = %found_new_run.exit, %reverse_slice.exit206
  %.sroa.23.1 = phi ptr [ %.sroa.23.0419, %reverse_slice.exit206 ], [ %spec.select292, %found_new_run.exit ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0420, %reverse_slice.exit206 ], [ %i.mk, %found_new_run.exit ] ; 25 uses
  %.0138 = phi i64 [ %.val191, %reverse_slice.exit206 ], [ %i.mm, %found_new_run.exit ] ; 12 uses
  %.8.val.fr.i = freeze ptr %.sroa.23.1           ; 20 uses
  %i.dv = icmp sgt i64 %.0138, 1
  br i1 %i.dv, label %.lr.ph.i208, label %._crit_edge.thread182.i

.lr.ph.i208:                                      ; preds = %bb.ak, %bb.am
  %.069141.i = phi i64 [ %i.ed, %bb.am ], [ 1, %bb.ak ] ; 8 uses
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !73
  %i.dx = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.069141.i ; 3 uses
end_hunk_0
